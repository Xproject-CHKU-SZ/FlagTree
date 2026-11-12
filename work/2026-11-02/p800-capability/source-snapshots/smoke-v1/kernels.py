"""Standalone resource microkernels. No FX graphs, Inductor or fusion passes."""
import triton
import triton.language as tl


@triton.jit
def vector_kernel(X, Y, O, SIZE: tl.constexpr, BLOCK: tl.constexpr,
                  OP: tl.constexpr, iterations):
    idx = tl.program_id(0) * BLOCK + tl.arange(0, BLOCK)
    x = tl.load(X + idx)
    if OP == 'copy':
        out = x
    elif OP == 'add':
        out = x + tl.load(Y + idx)
    elif OP == 'exp':
        out = tl.exp(x)
    else:
        out = x
        for _ in range(iterations):
            out = tl.fma(out, 0.99, 0.001)
    tl.store(O + idx, out)


@triton.jit
def reduce_kernel(X, O, M: tl.constexpr, N: tl.constexpr,
                  ROWS: tl.constexpr, COLS: tl.constexpr, OP: tl.constexpr):
    r = tl.program_id(0) * ROWS + tl.arange(0, ROWS)
    c = tl.arange(0, COLS)
    x = tl.load(X + r[:, None] * N + c[None, :])
    if OP == 'sum':
        y = tl.sum(x, 1)
    else:
        y = tl.max(x, 1)
    tl.store(O + r, y)


@triton.jit
def sdnn_matmul(A, B, O, M: tl.constexpr, N: tl.constexpr, K: tl.constexpr,
                BM: tl.constexpr, BN: tl.constexpr, BK: tl.constexpr,
                TRANSPOSE_B: tl.constexpr, GROUP: tl.constexpr):
    p = tl.program_id(0)
    gm, gn = tl.cdiv(M, BM), tl.cdiv(N, BN)
    first = p // (GROUP * gn) * GROUP
    group_m = tl.minimum(gm - first, GROUP)
    mi = first + p % group_m
    ni = (p % (GROUP * gn)) // group_m
    r = mi * BM + tl.arange(0, BM)
    c = ni * BN + tl.arange(0, BN)
    ks = tl.arange(0, BK)
    acc = tl.zeros((BM, BN), tl.float32)
    for start in range(tl.cdiv(K, BK)):
        k = start * BK + ks
        if M % BM == 0 and K % BK == 0:
            av = tl.load(A + r[:, None] * K + k[None, :])
        else:
            av = tl.load(A + r[:, None] * K + k[None, :],
                         (r[:, None] < M) & (k[None, :] < K), other=0)
        if TRANSPOSE_B:
            if N % BN == 0 and K % BK == 0:
                bv = tl.trans(tl.load(B + c[:, None] * K + k[None, :]))
            else:
                bv = tl.trans(tl.load(B + c[:, None] * K + k[None, :],
                                     (c[:, None] < N) & (k[None, :] < K), other=0))
        else:
            if N % BN == 0 and K % BK == 0:
                bv = tl.load(B + k[:, None] * N + c[None, :])
            else:
                bv = tl.load(B + k[:, None] * N + c[None, :],
                             (k[:, None] < K) & (c[None, :] < N), other=0)
        acc = tl.dot(av, bv, acc, input_precision='ieee')
    if M % BM == 0 and N % BN == 0:
        tl.store(O + r[:, None] * N + c[None, :], acc)
    else:
        tl.store(O + r[:, None] * N + c[None, :], acc,
                 (r[:, None] < M) & (c[None, :] < N))


@triton.jit
def cluster_outer(A, B, O, M: tl.constexpr, N: tl.constexpr, K: tl.constexpr,
                  BM: tl.constexpr, BN: tl.constexpr):
    r = tl.program_id(0) // tl.cdiv(N, BN) * BM + tl.arange(0, BM)
    c = tl.program_id(0) % tl.cdiv(N, BN) * BN + tl.arange(0, BN)
    acc = tl.zeros((BM, BN), tl.float32)
    for k in range(K):
        if M % BM == 0:
            a = tl.load(A + r * K + k).to(tl.float32)
        else:
            a = tl.load(A + r * K + k, r < M, other=0).to(tl.float32)
        if N % BN == 0:
            b = tl.load(B + k * N + c).to(tl.float32)
        else:
            b = tl.load(B + k * N + c, c < N, other=0).to(tl.float32)
        acc = tl.fma(a[:, None], b[None, :], acc)
    tl.store(O + r[:, None] * N + c[None, :], acc,
             (r[:, None] < M) & (c[None, :] < N))


@triton.jit
def cluster_dot_rows(A, BT, O, M: tl.constexpr, N: tl.constexpr, K: tl.constexpr,
                     BN: tl.constexpr, BK: tl.constexpr):
    r = tl.program_id(0) // tl.cdiv(N, BN)
    c = tl.program_id(0) % tl.cdiv(N, BN) * BN + tl.arange(0, BN)
    ks = tl.arange(0, BK)
    acc = tl.full((BN,), 0, tl.float32)
    for start in range(tl.cdiv(K, BK)):
        k = start * BK + ks
        if K % BK == 0:
            av = tl.load(A + r * K + k).to(tl.float32)
        else:
            av = tl.load(A + r * K + k, k < K, other=0).to(tl.float32)
        if N % BN == 0 and K % BK == 0:
            bv = tl.load(BT + c[:, None] * K + k[None, :]).to(tl.float32)
        else:
            bv = tl.load(BT + c[:, None] * K + k[None, :],
                         (c[:, None] < N) & (k[None, :] < K), other=0).to(tl.float32)
        acc += tl.sum(av[None, :] * bv, 1)
    tl.store(O + r * N + c, acc, c < N)
