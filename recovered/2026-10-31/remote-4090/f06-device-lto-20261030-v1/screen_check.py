"""Full-fusion range-admission audit, including rounding boundaries and specials."""
import math


def inverse_tanh_argument(target):
    lo,hi=0.0,12.0
    for _ in range(80):
        z=(lo+hi)/2
        if math.sqrt(2/math.pi)*(z+0.044715*z*z*z)<target:lo=z
        else:hi=z
    return (lo+hi)/2


def validate_screening(prototype,plans,capture,inputs):
    import torch
    dtype=inputs[0].dtype
    integer=torch.int32 if dtype==torch.float32 else torch.int16
    values=[]
    for target in (0.6,9.010913848876953):
        center=torch.tensor(inverse_tanh_argument(target),dtype=dtype).view(integer).item()
        nearby=torch.arange(center-64,center+65,dtype=integer).view(dtype)
        values.extend(nearby.tolist());values.extend((-nearby).tolist())
    info=torch.finfo(dtype)
    subnormal=info.tiny*info.eps
    values.extend([0.0,-0.0,subnormal,-subnormal,info.tiny,-info.tiny,
                   1e-7,-1e-7,0.4,-0.4,1.0,-1.0,3.0,-3.0,10.0,-10.0,
                   info.max,-info.max,float('inf'),float('-inf'),float('nan')])
    for value in inputs:value.zero_()
    rows=[]
    for index,value in enumerate(values+[None,None,None]):
        if value is not None:inputs[-1].fill_(value)
        else:
            inputs[-1].fill_(0.2)
            inputs[-1][0]=[2.0,float('inf'),float('nan')][index-len(values)]
        output,t=capture(inputs)
        native=plans['native'](*inputs)
        assert torch.equal(output.view(torch.uint8),native.view(torch.uint8)),('capture',index,value)
        a=t.abs()
        expected='small' if bool((a<0.6).all()) else 'large' if bool(((a>=0.6)&torch.isfinite(a)).all()) else 'general'
        mode,flags=prototype.screen(inputs)
        assert mode==expected,(prototype.spec,index,value,mode,expected)
        linked,event=prototype.get_linked(mode)
        assert event['cache_hit'],'All modes must already be available before the boundary audit'
        for name,out in [('linked',linked(*inputs)),('precise',plans['precise'](*inputs))]:
            assert torch.equal(out.view(torch.uint8),native.view(torch.uint8)),(prototype.spec,index,value,name)
        rows.append(dict(input_value=repr(value),mode=mode,flags=flags,bit_differences=0,
                         nonfinite_tanh_arguments=int((~torch.isfinite(t)).sum())))
    return dict(spec=prototype.spec,status='passed',elements_per_case=native.numel(),
                case_count=len(rows),mode_counts={m:sum(r['mode']==m for r in rows) for m in ('small','large','general')},
                reference='pre-tanh capture from the selected full native kernel',cases=rows)
