"""Opt-in P800 special-value lowering for native Inductor kernels.

Nothing imports this module on the default compilation path. Enter
``experimental_scope()`` around explicit compilation/calibration to opt in.
The existing compile lock serializes temporary compiler hooks. Source and mode
identity separate native Inductor caches; exceptions restore every hook.
BF16 promotion, finite tolerances, native scheduling, and output ownership are
not changed. Unrecognized graphs retain the existing legalization.
"""
from contextlib import contextmanager
from pathlib import Path
import json
import math
import re
import os
import tempfile
import hashlib


def _policy_identity(name):
    return hashlib.sha256(Path(__file__).read_bytes()+name.encode()).hexdigest()[:16]


def _annotate_experimental(source,resource,original,name,identity):
    """Bind policy to deferred native compilation and to the JIT body key."""
    import ast
    from triton.experimental.graph_fusion._resource_codegen import _inspection_tree
    changed=original(source,resource)
    old_import='from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics\n'
    assert changed.count(old_import)==1
    changed=changed.replace(old_import,old_import+'from triton.experimental.graph_fusion._p800_special_values import SpecialValueHeuristics\n',1)
    old_ctor='_flagtree_resource_heuristics = ResourceHeuristics('+repr(resource)+')'
    new_ctor='_flagtree_resource_heuristics = SpecialValueHeuristics(ResourceHeuristics('+repr(resource)+'), '+', '.join(map(repr,(name,identity)))+')'
    assert changed.count(old_ctor)==1
    changed=changed.replace(old_ctor,new_ctor,1)
    tree=_inspection_tree(changed);lines=changed.splitlines(keepends=True);insertions=[]
    for node in tree.body:
        if isinstance(node,ast.FunctionDef) and any(ast.unparse(d).startswith('triton.jit') for d in node.decorator_list):
            insertions.append((node.body[0].lineno-1,node.body[0].col_offset))
    assert insertions,'missing native JIT body'
    for line,indent in sorted(insertions,reverse=True):
        lines.insert(line,' '*indent+'# P800 experimental special-value policy: '+identity+' '+name+'\n')
    result=''.join(lines)
    assert ast.dump(_inspection_tree(result))==ast.dump(tree),'cache identity changed arithmetic'
    return result


class SpecialValueHeuristics:
    """Remember compile policy for lazy/coordinate-descent native tuning.

    The only wrapped method is compilation. Warm ordinary calls and graph
    replay have no additional context manager or Python launch wrapper.
    """
    def __init__(self,base,name,identity):
        from triton.experimental.graph_fusion._resource_codegen import ResourceHeuristics
        if not isinstance(base,ResourceHeuristics):
            raise TypeError('explicit native resource heuristic required')
        if identity!=_policy_identity(name):
            raise RuntimeError('experimental compiler source identity changed')
        self.base=base
        self.name=name

    def __getattr__(self,factory_name):
        native_factory=getattr(self.base,factory_name)
        name=self.name
        def factory(*args,**kwargs):
            native_decorate=native_factory(*args,**kwargs)
            def decorate(fn):
                tuner=native_decorate(fn)
                native_compile=tuner._precompile_config
                def compile_with_policy(*a,**kw):
                    active=_SCOPED.get()
                    if active is not None:
                        if active!=name:
                            raise RuntimeError('experimental compile policy mismatch')
                        return native_compile(*a,**kw)
                    with experimental_scope(name):
                        return native_compile(*a,**kw)
                tuner._precompile_config=compile_with_policy
                return tuner
            return decorate
        return factory


def activation_text(source):
    """Recognize complete SiLU / tanh-GELU graphs and preserve finite math."""
    # Other activation outputs may still require their original legalization.
    if 'arith.cmpf ' in source or 'math.erf ' in source:
        return source,None
    external_symbols=re.findall(r'symbol = "([^"]+)"',source)
    if any(s!='_ZN3xpu5tanhfEf' for s in external_symbols):
        return source,None
    def single_use(n):
        return len(re.findall(re.escape(n)+r'\b',source))==2
    constants = {}
    for n, v in re.findall(r'(%\w+) = arith.constant dense<([-+0-9.e]+)> : tensor<[^>]+>', source):
        constants[n] = float(v)
    binary = {}
    for n, op, a, b, ty in re.findall(
            r'(%\w+) = arith\.(mulf|addf|divf) (%\w+), (%\w+) : (tensor<(?:\d+x)+f32>)', source):
        binary[n] = (op, a, b, ty)
    muls = {n: (a, b, ty) for n, (op, a, b, ty) in binary.items() if op == 'mulf'}

    def other(n, op, value):
        if n not in binary or binary[n][0] != op:
            return None
        _, a, b, _ = binary[n]
        if constants.get(a) == value:
            return b
        if constants.get(b) == value:
            return a

    def harmless(a, b):
        return a == b or any(math.isfinite(constants.get(x, float('nan'))) and
                            2**-126 <= abs(constants[x]) <= (2-2**-23)*2**127 for x in (a,b))

    tanhs = re.findall(
        r'(?P<line>(?P<dst>%\w+) = tt.extern_elementwise (?P<x>%\w+)(?P<attrs> \{[^\n]*symbol = "_ZN3xpu5tanhfEf"\}) : \((?P<ty>tensor<(?:\d+x)+f32>)\) -> (?P=ty))', source)
    if len(tanhs) == 1:
        line, tanh, scaled, attrs, ty = tanhs[0]
        for result, (a,b,t) in muls.items():
            for half, plus in ((a,b),(b,a)):
                x = other(half, 'mulf', .5)
                if x is None or other(plus,'addf',1.) != tanh or t != ty:
                    continue
                if not single_use(tanh) or not single_use(plus):continue
                used = set()

                def polynomial(n, depth=0):
                    if depth > 12:
                        raise ValueError('deep expression')
                    if n == x:
                        return {1:1.}
                    if n in constants and constants[n] > 0 and math.isfinite(constants[n]):
                        return {0:constants[n]}
                    if n not in binary or binary[n][0] not in ('mulf','addf'):
                        raise ValueError('not a positive polynomial of the original input')
                    op,left,right,_ = binary[n];used.add(n)
                    l=polynomial(left,depth+1);r=polynomial(right,depth+1);out={}
                    if op=='addf':
                        for power,value in list(l.items())+list(r.items()):out[power]=out.get(power,0.)+value
                    else:
                        for i,vi in l.items():
                            for j,vj in r.items():out[i+j]=out.get(i+j,0.)+vi*vj
                    return out

                try:
                    p=polynomial(scaled)
                except ValueError:
                    continue
                c=math.sqrt(2/math.pi)
                if set(p)!={1,3} or abs(p[1]-c)>1e-6 or abs(p[3]-.044715*c)>1e-7:
                    continue
                safe=used|{half,result}
                if any(n not in safe and not harmless(u,v) for n,(u,v,_) in muls.items()):
                    continue
                prefix='%f06_fast_tanh_'
                replacement='\n    '.join([
                    f'{prefix}lo = arith.constant dense<-1.600000e+01> : {ty}',
                    f'{prefix}hi = arith.constant dense<1.600000e+01> : {ty}',
                    f'{prefix}max = arith.maxnumf {scaled}, {prefix}lo : {ty}',
                    f'{prefix}clip = arith.minnumf {prefix}max, {prefix}hi : {ty}',
                    f'{tanh} = tt.extern_elementwise {prefix}clip{attrs} : ({ty}) -> {ty}',
                ])
                return source.replace(line,replacement),dict(kind='gelu_tanh',input=x,result=result,
                    proof='positive cubic of original x; final bounded factor times original x',
                    finite_arithmetic='unchanged; same tanh bounds; native operand order enforced')

    negs=dict(re.findall(r'(%\w+) = arith.negf (%\w+) : tensor<(?:\d+x)+f32>',source))
    subtract_neg={n:(zero,x,ty) for n,zero,x,ty in re.findall(
        r'(%\w+) = arith.subf (%\w+), (%\w+) : (tensor<(?:\d+x)+f32>)',source) if constants.get(zero)==0.}
    negs.update({n:x for n,(zero,x,ty) in subtract_neg.items()})
    exps=dict(re.findall(r'(%\w+) = math.exp (%\w+) : tensor<(?:\d+x)+f32>',source))
    if len(exps)==1 and not tanhs:
        exp,negative=next(iter(exps.items()));x=negs.get(negative)
        if x is not None:
            for result,(a,b,ty) in muls.items():
                sigmoid=b if a==x else a if b==x else None
                if sigmoid not in binary:continue
                op,one,denom,_=binary[sigmoid]
                if op!='divf' or constants.get(one)!=1. or other(denom,'addf',1.)!=exp:continue
                if not all(single_use(n) for n in (negative,exp,denom,sigmoid)):continue
                if any(n!=result and not harmless(u,v) for n,(u,v,_) in muls.items()):continue
                # The only use of the negated input must be this exponential.
                if len(re.findall(re.escape(negative)+r'\b',source))!=2:continue
                old=f'{negative} = arith.negf {x} : {ty}'
                if negative in subtract_neg:old=f'{negative} = arith.subf {subtract_neg[negative][0]}, {x} : {ty}'
                prefix='%f06_fast_sigmoid_'
                replacement='\n    '.join([
                    f'{prefix}lo = arith.constant dense<-3.40282347e+38> : {ty}',
                    f'{prefix}hi = arith.constant dense<3.40282347e+38> : {ty}',
                    f'{prefix}max = arith.maxnumf {x}, {prefix}lo : {ty}',
                    f'{prefix}clip = arith.minnumf {prefix}max, {prefix}hi : {ty}',
                    old.replace(f'{x} :',f'{prefix}clip :'),
                ])
                assert old in source
                return source.replace(old,replacement),dict(kind='silu',input=x,result=result,
                    proof='bounded sigmoid input; sigmoid finite; original x retained in product',
                    finite_arithmetic='unchanged; native operand order enforced')
    return source,None


def order_output_multiply(source,kind,*,before_bufferization=False):
    """Keep the bounded LUT factor first in the final native EW multiply.

    Rewrite tensor operations before allocation/scheduling. Reuse the dead
    first-operand temporary, never the second-operand original activation input.
    """
    lut='tanh' if kind=='gelu_tanh' else 'sigmoid'
    lines=source.splitlines();deps={};matches=[];lut_count=0
    for i,line in enumerate(lines):
        m=re.match(r'\s*(?:(%\w+) = )?sdnn\.ew (\w+) (%\w+) (.*)',line)
        if not m:continue
        result,op,init,rest=m.groups();dst=result or init;srcs=re.findall(r'\bsrc[01] (%\w+)',rest)
        if f'lut_func {lut} ' in rest:
            lut_count+=1
            if op=='mul':
                assert kind=='silu' and 'act_src = true' in rest and len(srcs)==2,('unknown fused activation multiply',line)
                matches.append((i,srcs,rest,False,result,init))
            deps[dst]=True
        elif op=='mul' and len(srcs)==2 and deps.get(srcs[0],False)!=deps.get(srcs[1],False):
            matches.append((i,srcs,rest,not deps.get(srcs[0],False),result,init));deps[dst]=True
        else:
            deps[dst]=any(deps.get(x,False) for x in srcs)
    assert lut_count==1 and len(matches)==1,('cannot certify native activation operands',kind,lut_count,len(matches))
    i,(a,b),rest,swapped,result,init=matches[0]
    types=re.findall(r'(?:memref|tensor)<[^>]+>',rest.split(' -> ')[0])
    assert len(types)==3 and types[0]==types[1]==types[2],('unequal native operand layouts',types)
    if before_bufferization:
        assert result and types[0].startswith('tensor<') and 'signal =' not in rest and 'wait =' not in rest
        if swapped:lines[i]=lines[i].replace(f'src0 {a} src1 {b}',f'src0 {b} src1 {a}',1)
        first=b if swapped else a
        lines[i]=lines[i].replace(f'sdnn.ew mul {init} ',f'sdnn.ew mul {first} ',1)
    else:
        assert not swapped,'native pipeline changed certified operand order'
        assert init!=b,'native destination aliases second multiply input'
    return '\n'.join(lines)+'\n',dict(kind=kind,swapped=swapped,before=source.splitlines()[i],after=lines[i],stage='before_bufferization' if before_bufferization else 'verification')


def compact_multiply_text(source,only=None):
    """Repair only SDNN's second-operand zero suppression.

    This relies on the measured native first-zero path propagating NaN and
    zero-times-infinity. Keep a separate hardware gate for both orientations.
    Finite multiplication, rounding, and reduction order are unchanged.
    """
    constants = {}
    for name, value in re.findall(r'(%\w+) = arith.constant dense<([^>]+)> : tensor<(?:\d+x)+f32>', source):
        try:
            number = float(value)
        except ValueError:
            continue
        if math.isfinite(number) and 2**-126 <= abs(number) <= (2 - 2**-23) * 2**127:
            constants[name] = number
    records = []
    pattern = re.compile(
        r'^(?P<indent>[ \t]*)(?P<dst>%\w+) = arith\.mulf (?P<a>%\w+), (?P<b>%\w+) : (?P<ty>tensor<(?:\d+x)+f32>)$', re.M)

    def replace(m):
        if only is not None and m['dst'] not in only:return m[0]
        if m['a'] == m['b'] or m['a'] in constants or m['b'] in constants:
            return m[0]
        p = '%compact_ieee_' + str(len(records)) + '_'
        ty = m['ty']; it = ty.replace('f32>', 'i32>'); bt = ty.replace('f32>', 'i1>')
        lines = [
            f'{p}raw = arith.mulf {m["a"]}, {m["b"]} : {ty}',
            f'{p}mask = arith.constant dense<2147483647> : {it}',
            f'{p}inf = arith.constant dense<2139095040> : {it}',
            f'{p}zero = arith.constant dense<0> : {it}',
            f'{p}nan = arith.constant dense<2143289344> : {it}',
            f'{p}abits = arith.bitcast {m["a"]} : {ty} to {it}',
            f'{p}bbits = arith.bitcast {m["b"]} : {ty} to {it}',
            f'{p}amag = arith.andi {p}abits, {p}mask : {it}',
            f'{p}bmag = arith.andi {p}bbits, {p}mask : {it}',
            f'{p}special = arith.cmpi uge, {p}amag, {p}inf : {it}',
            f'{p}bzero = arith.cmpi eq, {p}bmag, {p}zero : {it}',
            f'{p}bad = arith.andi {p}special, {p}bzero : {bt}',
            f'{p}bits = arith.bitcast {p}raw : {ty} to {it}',
            f'{p}fixed = arith.select {p}bad, {p}nan, {p}bits : {bt}, {it}',
            f'{m["dst"]} = arith.bitcast {p}fixed : {it} to {ty}',
        ]
        records.append(dict(result=m['dst'],type=ty,repair='second-zero and first-nonfinite',finite_arithmetic='unchanged'))
        return '\n'.join(m['indent'] + line for line in lines)

    return pattern.sub(replace, source), records


def gelu_final_specials(source,record):
    """Only NaN and -Inf inputs need NaN after a bounded tanh-GELU."""
    dst=record['result'];x=record['input']
    m=re.search(r'(?P<dst>'+re.escape(dst)+r') = arith.mulf (?P<a>%\w+), (?P<b>%\w+) : (?P<ty>tensor<(?:\d+x)+f32>)',source)
    assert m is not None
    ty=m['ty'];it=ty.replace('f32>','i32>');bt=ty.replace('f32>','i1>');p='%f06_gelu_special_'
    body='\n    '.join([
        f'{p}raw = arith.mulf {m["a"]}, {m["b"]} : {ty}',
        f'{p}inf = arith.constant dense<2139095040> : {it}',
        f'{p}nan = arith.constant dense<2143289344> : {it}',
        f'{p}bits = arith.bitcast {x} : {ty} to {it}',
        f'{p}exponent = arith.andi {p}bits, {p}inf : {it}',
        f'{p}nonfinite = arith.cmpi eq, {p}exponent, {p}inf : {it}',
        f'{p}not_positive_inf = arith.cmpi ne, {p}bits, {p}inf : {it}',
        f'{p}bad = arith.andi {p}nonfinite, {p}not_positive_inf : {bt}',
        f'{p}rawbits = arith.bitcast {p}raw : {ty} to {it}',
        f'{p}fixed = arith.select {p}bad, {p}nan, {p}rawbits : {bt}, {it}',
        f'{dst} = arith.bitcast {p}fixed : {it} to {ty}',
    ])
    return source[:m.start()]+body+source[m.end():],[dict(result=dst,input=x,repair='GELU NaN or negative infinity',finite_arithmetic='unchanged')]


def symmetric_multiply_text(source):
    """Duplicate both native operand orders before bufferization/scheduling.

    A native linear operation with 1/2 coefficients combines equal finite
    products without overflowing via an intermediate doubled product.
    """
    pattern=re.compile(r'^(?P<i>[ \t]*)(?P<out>%\w+) = sdnn\.ew mul (?P<init>%\w+) src0 (?P<a>%\w+) src1 (?P<b>%\w+) (?P<attrs>\{[^\n]+\}) : \((?P<dst>tensor<[^>]+xf32>), (?P<at>tensor<[^>]+xf32>), (?P<bt>tensor<[^>]+xf32>)\) -> (?P=dst)$',re.M)
    matches=list(pattern.finditer(source));assert len(matches)==1,('ambiguous reduction multiply',len(matches))
    m=matches[0];p='%f06_symmetric_'+m['out'][1:]+'_';ty=m['dst'];a=m['a'];b=m['b'];attrs=m['attrs']
    assert 'signal' not in attrs and 'wait' not in attrs and 'sdnn.layout = "CR_RowMajor"' in attrs
    lines=[
        f'{p}half = arith.constant 5.000000e-01 : f32',
        f'{p}empty0 = tensor.empty() {{sdnn.layout = "CR_RowMajor"}} : {ty}',
        f'{p}empty1 = tensor.empty() {{sdnn.layout = "CR_RowMajor"}} : {ty}',
        f'{p}forward = sdnn.ew mul {p}empty0 src0 {a} src1 {b} {attrs} : ({ty}, {m["at"]}, {m["bt"]}) -> {ty}',
        f'{p}reverse = sdnn.ew mul {p}empty1 src0 {b} src1 {a} {attrs} : ({ty}, {m["bt"]}, {m["at"]}) -> {ty}',
        f'{m["out"]} = sdnn.ew linear {m["init"]} src0 {p}forward src1 {p}reverse a {p}half b {p}half {attrs} : ({ty}, {ty}, {ty}, f32, f32) -> {ty}',
    ]
    changed=source[:m.start()]+'\n'.join(m['i']+x for x in lines)+source[m.end():]
    return changed,dict(kind='symmetric_multiply',before=m[0],native_ops=3,synchronization='native scheduling after rewrite')


@contextmanager
def _mode(name):
    assert name in ('on', 'compact', 'activation', 'symmetric', 'optimized')
    if name == 'on':
        yield dict(mode=name, changed=[])
        return
    from triton.experimental.graph_fusion import _p800_native_activation as act
    from triton.experimental.graph_fusion import _p800_compiler as compiler
    from triton.experimental.graph_fusion import _resource_codegen as codegen
    old = act.preserve_multiply_specials
    old_prepare,old_stage=act.prepare,act.install_stage
    old_policy=compiler.policy_key
    old_annotate=codegen.annotate_source
    identity=_policy_identity(name)

    def repair(mod, directory):
        text = act.serialize(mod, directory, 'before_compact_multiply')
        changed, records = compact_multiply_text(text)
        return (act.parse(mod, changed, Path(directory)/'compact-multiply.mlir') if records else mod), records

    def prepare(mod,metadata):
        if not act._ENABLED.get():return old_prepare(mod,metadata)
        metadata['f06_experimental_policy']=identity
        metadata['f06_experimental_mode']=name
        with tempfile.TemporaryDirectory(prefix='special-opt-',dir=os.environ['TRITON_CACHE_DIR']) as directory:
            source=act.serialize(mod,directory,'before_activation_opt')
            changed,record=activation_text(source) if name in ('activation','optimized') else (source,None)
            if record is None:
                if (name in ('symmetric','optimized') and '"tt.reduce"' in source and 'tt.dot ' not in source and
                    'tt.extern_elementwise ' not in source and 'math.' not in source and
                    len(re.findall(r' = arith.mulf %\w+, %\w+ : tensor<(?:\d+x)+f32>',source))==1):
                    metadata.update(native_exact_gelu='[]',native_relu='[]',native_ieee_multiply='[]',native_tanh_bounds='[]',
                                    f06_symmetric_multiply=True)
                    return mod
                return old_prepare(mod,metadata)
            repairs=[]
            if record['kind']=='gelu_tanh':
                changed,repairs=gelu_final_specials(changed,record)
                assert len(repairs)==1
                record['strategy']='native bounds; one input classification; original operand order'
            mod=act.parse(mod,changed,Path(directory)/'activation-opt.mlir')
        metadata.update(native_exact_gelu='[]',native_relu='[]',native_ieee_multiply='[]',native_tanh_bounds='[]',
                        f06_special_optimization=json.dumps(record))
        metadata['native_ieee_multiply']=json.dumps(repairs)
        return mod

    def stage(native):
        if name in ('activation','symmetric','optimized'):
            def symmetric(mod,metadata,options):
                activation=json.loads(metadata.get('f06_special_optimization','null'))
                if activation and activation['kind']=='gelu_tanh':return mod
                if not metadata.get('f06_symmetric_multiply') and activation is None:return mod
                with tempfile.TemporaryDirectory(prefix='symmetric-mul-',dir=os.environ['TRITON_CACHE_DIR']) as directory:
                    source=act.serialize(mod,directory,'before_symmetric')
                    if activation is not None:
                        changed,record=order_output_multiply(source,activation['kind'],before_bufferization=True)
                    else:changed,record=symmetric_multiply_text(source)
                    mod=act.parse(mod,changed,Path(directory)/'symmetric.mlir')
                    check=act.serialize(mod,directory,'after_symmetric')
                    if activation is None:assert check.count(' = sdnn.ew mul ')==2,'native ordered products merged'
                metadata['f06_native_special_rewrite']=json.dumps(record)
                return mod
            with tempfile.TemporaryDirectory(prefix='symmetric-stage-',dir=os.environ['TRITON_CACHE_DIR']) as directory:
                native=_install_stage(native,symmetric,Path(directory)/'pipeline.py',after='add_tritonsdnn_optimize_rc_layout_pass')
                installed=old_stage(native)
        else:
            installed=old_stage(native)
        def wrapped(mod,metadata,options):
            mod=installed(mod,metadata,options)
            record=json.loads(metadata.get('f06_special_optimization','null'))
            if record is None:return mod
            if record['kind']=='gelu_tanh':return mod
            with tempfile.TemporaryDirectory(prefix='special-order-',dir=os.environ['TRITON_CACHE_DIR']) as directory:
                source=act.serialize(mod,directory,'before_native_order')
                audit=Path(os.environ.get('F06_OPT_AUDIT_DIR',os.environ['TRITON_CACHE_DIR']))/'special-ir'
                audit.mkdir(parents=True,exist_ok=True)
                (audit/(hashlib.sha256(source.encode()).hexdigest()+'.mlir')).write_text(source)
                changed,ordering=order_output_multiply(source,record['kind'])
            metadata['f06_special_operand_order']=json.dumps(ordering)
            return mod
        return wrapped

    try:
        act.preserve_multiply_specials = repair if name=='compact' else old
        compiler.policy_key=lambda:old_policy()+'-special-opt-'+identity
        codegen.annotate_source=lambda source,resource:_annotate_experimental(source,resource,old_annotate,name,identity)
        if name in ('activation','symmetric','optimized'):act.prepare,act.install_stage=prepare,stage
        yield dict(mode=name, changed=(['preserve_multiply_specials'] if name=='compact' else ['prepare','native SDNN stage','compiler policy key']), bf16_fp32='unchanged', default_changed=False)
    finally:
        act.preserve_multiply_specials = old
        act.prepare,act.install_stage=old_prepare,old_stage
        compiler.policy_key=old_policy
        codegen.annotate_source=old_annotate


def _install_stage(native, callback, path, *, after='add_linalg_to_tritonsdnn_pass'):
    import ast
    import inspect
    import textwrap
    tree = ast.parse(textwrap.dedent(inspect.getsource(native)))
    tree.body[0].decorator_list = []

    class Hook(ast.NodeTransformer):
        count = 0

        def visit_Expr(self, node):
            if (isinstance(node.value, ast.Call) and isinstance(node.value.func, ast.Attribute)
                    and node.value.func.attr == after):
                self.count += 1
                return [node] + ast.parse(
                    "pm.run(mod, 'f06_native_probe_boundary')\n"
                    "mod = _f06_probe_hook(mod, metadata, opt)\n"
                    "pm = ir.pass_manager(mod.context)\n"
                    "pm.enable_debug()"
                ).body
            return node

    hook = Hook()
    tree = hook.visit(tree)
    assert hook.count == 1, ('unknown SDNN pipeline', after, hook.count)
    ast.fix_missing_locations(tree)
    source = ast.unparse(tree)
    path.write_text(source)
    namespace = dict(native.__globals__, _f06_probe_hook=callback)
    exec(compile(source, str(path), 'exec'), namespace)
    return namespace['make_ttxir']


from contextvars import ContextVar
_SCOPED = ContextVar("p800_experimental_special_values", default=None)


@contextmanager
def experimental_scope(name="optimized"):
    """Compile explicitly with experimental repairs; the default stays off.

    Keep this scope active through compilation and calibration, outside graph
    capture. It changes no math-mode flag, precision tolerance, or runtime hot
    path. ``on`` is an unchanged control; the other names are diagnostic modes.
    """
    from torch._dynamo.convert_frame import compile_lock
    with compile_lock:
        if _SCOPED.get() is not None:
            raise RuntimeError("nested experimental special-value scope")
        token = _SCOPED.set(name)
        try:
            with _mode(name) as evidence:
                yield evidence
        finally:
            _SCOPED.reset(token)
