"""Unchanged finite tolerances and structural checks; specials reported separately."""
import math

def install(bench):
    import torch
    def finite_validate(fn,reference,inputs,tolerance):
        assert set(tolerance)=={'atol','rtol'} and all(math.isfinite(v) and v>=0 for v in tolerance.values())
        tensors=[x for x in inputs if isinstance(x,torch.Tensor)]+list(reference.parameters())+list(reference.buffers())
        originals=[x.detach().cpu().clone() for x in tensors]
        assert all(torch.isfinite(x).all() for x in tensors if x.is_floating_point())
        try:
            expected=bench._cpu(reference(*inputs))
            actual=fn(*inputs);bench.assert_close(actual,expected,tolerance)
            held=[actual,fn(*inputs),fn(*inputs)]
            for i in range(len(bench._leaves(actual)[0])):
                assert len({bench._leaves(v)[0][i].data_ptr() for v in held})==3,'output storage reused'
            changed=bench._changed(inputs)
            bench.assert_close(fn(*changed),bench._cpu(reference(*changed)),tolerance)
            for v in held:bench.assert_close(v,expected,tolerance)
            for x,y in zip(tensors,originals):
                assert torch.equal(bench._tensor_bytes(x),bench._tensor_bytes(y)),'input/parameter mutation'
            return dict(ordinary=True,changed=True,repeat=True,immutable=True,
                        validation_scope='finite inputs; special cases reported separately')
        finally:
            with torch.no_grad():
                for x,y in zip(tensors,originals):x.copy_(y)
    bench.validate=finite_validate
    return finite_validate


def special_report(fn,reference,inputs,tolerance,bench,*,spec,cpu_reference):
    import torch
    reports=[]
    # Each special value is tested alone as well as with the historical mix.
    patterns={'nan':[float('nan')], 'positive_inf':[float('inf')],
              'negative_inf':[-float('inf')],
              'historical_mix':[float('nan'),float('inf'),-float('inf'),0.,-0.]}
    probes=[]
    for name,values in patterns.items():
        xs=tuple(x.detach().clone() if isinstance(x,torch.Tensor) else x for x in inputs)
        first=next(x for x in xs if isinstance(x,torch.Tensor) and x.is_floating_point())
        marked=first.cpu();marked.reshape(-1)[:len(values)]=torch.tensor(values,dtype=marked.dtype);first.copy_(marked)
        want=bench._cpu(reference(*xs))
        cpu_want=cpu_reference(*(x.cpu() if isinstance(x,torch.Tensor) else x for x in xs)) if not spec['K'] else None
        probes.append((name,xs,want,cpu_want,'historical first-input injection'))
    if spec['K']:
        # Zero x zero GEMM is analytically exact. Inject directly into Bias so
        # non-finite values are guaranteed to reach the epilogue, independently
        # of the vendor GEMM's own NaN handling. CPU oracle needs no CPU GEMM.
        for name,values in patterns.items():
            cpu_xs=[torch.zeros_like(x,device='cpu') for x in inputs]
            bias=cpu_xs[2];bias.reshape(-1)[:len(values)]=torch.tensor(values,dtype=bias.dtype)
            kind=spec['kind'];z=bias
            if kind.endswith('_relu'):z=torch.nn.functional.relu(z)
            elif kind.endswith('_gelu_exact'):z=torch.nn.functional.gelu(z,approximate='none')
            elif kind.endswith('_gelu_tanh'):z=torch.nn.functional.gelu(z,approximate='tanh')
            elif kind.endswith('_silu'):z=torch.nn.functional.silu(z)
            elif kind!='matmul_bias':raise AssertionError(kind)
            cpu_want=z.expand(spec['M'],spec['N']).clone()
            xs=tuple(x.to(inputs[i].device) for i,x in enumerate(cpu_xs))
            probes.append(('bias_'+name,xs,bench._cpu(reference(*xs)),cpu_want,'zero GEMM, CPU epilogue oracle'))
    elif spec['kind'] in ('mul_sum','mul_sum_keepdim'):
        for name,first,second in (('inf_times_zero',float('inf'),0.),('zero_times_inf',0.,float('inf')),
                                  ('nan_times_zero',float('nan'),0.),('zero_times_nan',0.,float('nan'))):
            cpu_xs=[torch.zeros_like(x,device='cpu') for x in inputs]
            cpu_xs[0].reshape(-1)[0]=first;cpu_xs[1].reshape(-1)[0]=second
            cpu_want=cpu_reference(*cpu_xs)
            xs=tuple(x.to(inputs[i].device) for i,x in enumerate(cpu_xs))
            probes.append((name,xs,bench._cpu(reference(*xs)),cpu_want,'explicit invalid multiply, CPU oracle'))
    for name,xs,gpu_want,cpu_want,description in probes:
        want=cpu_want if cpu_want is not None else gpu_want
        got=bench._cpu(fn(*xs));torch.cuda.synchronize()
        rec=dict(pattern=name,passed=True,outputs=[],description=description,
                 oracle='cpu' if cpu_want is not None else 'device_eager')
        for a,b in zip(bench._leaves(got)[0],bench._leaves(want)[0]):
            an,bn=torch.isnan(a),torch.isnan(b);ai,bi=torch.isinf(a),torch.isinf(b)
            finite=torch.isfinite(a)&torch.isfinite(b)
            delta=(a.float()-b.float()).abs();limit=tolerance['atol']+tolerance['rtol']*b.float().abs()
            rec['outputs'].append(dict(elements=a.numel(),expected_nan=int(bn.sum()),actual_nan=int(an.sum()),
                nan_mask_mismatch=int((an!=bn).sum()),expected_inf=int(bi.sum()),actual_inf=int(ai.sum()),
                inf_mask_mismatch=int((ai!=bi).sum()),inf_sign_mismatch=int((ai&bi&(torch.signbit(a)!=torch.signbit(b))).sum()),
                finite_tolerance_failures=int((finite&(delta>limit)).sum()),
                finite_max_abs_error=float(delta[finite].max()) if finite.any() else None))
        try:bench.assert_close(got,want,tolerance)
        except AssertionError as e:rec.update(passed=False,error=str(e))
        rec['classification_passed']=all(not any(x[k] for k in ('nan_mask_mismatch','inf_mask_mismatch','inf_sign_mismatch')) for x in rec['outputs'])
        rec['finite_positions_passed']=all(x['finite_tolerance_failures']==0 for x in rec['outputs'])
        try:bench.assert_close(got,gpu_want,tolerance);rec['matches_device_eager']=True
        except AssertionError as e:rec.update(matches_device_eager=False,device_eager_difference=str(e))
        if cpu_want is not None:
            try:bench.assert_close(gpu_want,cpu_want,tolerance);rec['device_eager_matches_cpu']=True
            except AssertionError as e:rec.update(device_eager_matches_cpu=False,device_eager_cpu_difference=str(e))
        reports.append(rec)
    return reports
