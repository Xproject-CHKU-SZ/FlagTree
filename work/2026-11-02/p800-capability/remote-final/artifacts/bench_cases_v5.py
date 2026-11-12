"""The frozen standalone workload dimensions and kernel-search space."""
def cases():
    out = []
    for n in [16, 32, 64, 128, 512, 1024, 2048, 4096]:
        for dtype in ['float32', 'float16', 'bfloat16']:
            out.append(dict(op='matmul', m=n, n=n, k=n, dtype=dtype,
                            output_dtype='float32', scale='small' if n <= 128 else 'large'))
    for n in [16, 32, 64, 128, 1024, 2048, 4096, 8192]:
        for op in ['copy', 'add', 'exp', 'fma128', 'sum', 'max']:
            for dtype in (['float32', 'float16', 'bfloat16'] if op == 'copy' else ['float32']):
                out.append(dict(op=op, m=n, n=n, k=0, dtype=dtype, output_dtype=dtype,
                                scale='small' if n <= 128 else 'large'))
    return [dict(c, ordinal=i) for i, c in enumerate(out)]


def configurations(case, resource):
    op, n = case['op'], case['n']
    out = []
    if op == 'matmul' and resource == 'sdnn':
        tiles = [(16,16,16),(16,32,16),(16,32,32),(16,64,32),(32,32,32),(32,64,32),(32,64,64),
                 (64,64,32),(64,64,64),(64,128,32),(64,128,64),
                 (128,64,32),(128,64,64),(128,128,64),(128,256,64),(256,128,64)]
        if n >= 128:
            tiles += [(32,128,64),(64,64,128),(64,128,128),(64,256,64),
                      (128,128,128),(128,256,128),(256,128,128)]
        if n <= 64:
            tiles = [t for t in tiles if t[0] <= n and t[1] <= max(n,32)]
        for bm,bn,bk in tiles:
            for trans in [False,True]:
                out.append(dict(algorithm='sdnn_dot',BM=bm,BN=bn,BK=bk,
                                TRANSPOSE_B=trans,GROUP=1 if n<=128 else 8))
    elif op == 'matmul':
        out.append(dict(algorithm='cluster_dot_full'))
        for bm,bn in [(1,16),(4,16),(4,32),(8,32),(16,32),
                      (1,32),(2,64),(4,64),(8,64),(16,64),(16,128)]:
            out.append(dict(algorithm='cluster_outer',BM=bm,BN=bn))
        for bn,bk in [(1,32),(1,128),(1,512),(2,64),(2,256),
                      (4,64),(4,256),(8,64),(8,256),(16,64),(16,256)]:
            if bk <= max(n,32):
                out.append(dict(algorithm='cluster_dot_rows',BN=bn,BK=bk))
    elif op in ('sum','max'):
        for rows in [1,2,4,8,16,32,64]:
            if rows <= case['m']:
                out.append(dict(algorithm='reduce',ROWS=rows,COLS=n))
    else:
        for block in [128,256,512,1024,2048,4096,8192,16384,32768,65536,131072]:
            if block <= max(case['m']*n,128):
                out.append(dict(algorithm='vector',BLOCK=block))
    return out


def timing_shape(case):
    if case['scale'] == 'small':
        return 64,20
    if case['op'] == 'matmul':
        return (8,4) if case['n'] <= 1024 else (1,2)
    if case['op'] == 'fma128':
        return 1,2
    return 8,4


def counts(case):
    m,n,k=case['m'],case['n'],case['k']
    size=m*n
    b=4 if case['dtype']=='float32' else 2
    op=case['op']
    if op=='matmul':
        return dict(flops=2*m*n*k, bytes=(m*k+k*n)*b+m*n*4)
    if op=='copy':
        return dict(flops=0,bytes=2*size*b)
    if op=='add':
        return dict(flops=size,bytes=3*size*b)
    if op=='fma128':
        return dict(flops=256*size,bytes=4*size*b)
    if op in ('sum','max'):
        return dict(flops=m*(n-1) if op=='sum' else 0,bytes=(size+m)*b)
    return dict(flops=0,bytes=2*size*b)
