"""Run the historical 15x15 class grid and 4096 exponent-spread finite pairs on the timed callable."""
def run(fn,inputs,spec):
    import torch
    m,n=spec['M'],spec['N'];dt=inputs[0].dtype;info=torch.finfo(dt);tol=spec['tolerance'];keep=spec['kind'].endswith('keepdim')
    vals=torch.tensor([0.,-0.,1.,-1.,.5,-.5,info.tiny,-info.tiny,info.tiny*info.eps,-info.tiny*info.eps,info.max,-info.max,float('inf'),-float('inf'),float('nan')],dtype=dt)
    bad=[];target_bad=[];total={'classes':0,'finite_pairs':0,'invalid_zero':0};errors={'classes':0,'finite_pairs':0,'invalid_zero':0}; zero_sign=0
    def check(a,b,k,offset,count,j=None):
        nonlocal zero_sign
        want=(a*b).sum(-1,keepdim=keep);got=fn(a.to(inputs[0].device),b.to(inputs[1].device)).detach().cpu()
        assert (want.dtype,want.shape)==(got.dtype,got.shape);got=got.reshape(-1);want=want.reshape(-1)
        # This includes untouched rows: no erroneous stores outside the active sample.
        ok=torch.isclose(got,want,equal_nan=True,**tol)&(torch.isnan(got)==torch.isnan(want))&(torch.isinf(got)==torch.isinf(want));idx=(~ok).nonzero().flatten().tolist();total[k]+=count;errors[k]+=len(idx)
        zero_sign+=int(((got==0)&(want==0)&(torch.signbit(got)!=torch.signbit(want))).sum())
        for i in idx:
            if len(bad)<40:bad.append(dict(suite=k,row=i+offset,other=j,want=str(float(want[i])),got=str(float(got[i]))))
        if j is not None:
            for i in range(count):
                if ((j in (0,1) and i+offset in (12,13,14)) or (i+offset in (0,1) and j in (12,13,14))):
                    total['invalid_zero']+=1
                    if not torch.isnan(got[i]):target_bad.append([i+offset,j]);errors['invalid_zero']+=1
    for j,y in enumerate(vals):
        a=torch.zeros((m,n),dtype=dt);b=torch.ones(n,dtype=dt);a[:len(vals),0]=vals;b[0]=y;check(a,b,'classes',0,len(vals),j)
    gen=torch.Generator().manual_seed(61038);count=4096;lim=12 if dt==torch.float16 else 100
    def genvals():return (torch.randn(count,generator=gen)*torch.pow(2.,torch.randint(-lim,lim,(count,),generator=gen))).to(dt)
    av,bv=genvals(),genvals()
    for start in range(0,count,min(m,n)):
        l=min(m,n,count-start);idx=torch.arange(l);a=torch.zeros((m,n),dtype=dt);b=torch.ones(n,dtype=dt);a[idx,idx]=av[start:start+l];b[:l]=bv[start:start+l];check(a,b,'finite_pairs',start,l)
    assert total==dict(classes=225,finite_pairs=4096,invalid_zero=12)
    return dict(passed=not any(errors.values()),total=total,errors=errors,examples=bad,signed_zero_differences=zero_sign,invalid_zero_failures=target_bad)
