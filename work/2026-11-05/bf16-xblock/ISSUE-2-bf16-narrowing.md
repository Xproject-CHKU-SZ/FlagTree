# [XPU] explicit f32 -> bfloat16 -> f32 cast roundtrip is folded to identity (store conversion is correct)

## Summary

In the Triton XPU backend, an explicit register-level roundtrip
`v.to(tl.bfloat16).to(tl.float32)` is a no-op: the value comes out exactly as it went in,
without round-to-nearest-even. Two controls show the defect is in the cast folding, not in
the conversion itself:

* the same roundtrip with `tl.float16` rounds correctly;
* storing the f32 value into a `*bf16` output pointer rounds correctly (so the hardware /
  lowering for f32 -> bf16 exists).

In other words the f32 -> bf16 -> f32 pair is treated as identity by the backend, dropping the
required rounding step.

## Reproduction

```python
@triton.jit
def k(x_ptr, o_ptr, N: tl.constexpr, MODE: tl.constexpr):
    i = tl.arange(0, N)
    v = tl.load(x_ptr + i)
    if MODE == 1:
        v = v.to(tl.bfloat16).to(tl.float32)
    if MODE == 2:
        v = v.to(tl.float16).to(tl.float32)
    tl.store(o_ptr + i, v)
```

Input `[1.0001, 1.5, 1.0009765625, 3.14159265]` (f32), output read back as f32:

| mode | result |
|---|---|
| none | `[1.000100016593933, 1.5, 1.0009765625, 3.1415927410125732]` |
| bf16 | `[1.000100016593933, 1.5, 1.0009765625, 3.1415927410125732]`  ← unchanged |
| f16 | `[1.0, 1.5, 1.0009765625, 3.140625]`  ← correct |

Reference in PyTorch: `torch.tensor(v, dtype=torch.bfloat16).float()` → `[1.0, 1.5, 1.0, 3.140625]`.

## Impact

- Generated Inductor kernels contain the documented chain
  `prod = (a.to(f32) * b.to(f32)).to(bf16).to(f32)` to preserve the low-precision rounding
  required by PyTorch semantics. With the cast dropped, bf16 outputs keep full f32 product
  accuracy instead of the rounded one. Results stay within typical tolerance but are *not*
  bit-comparable with PyTorch, and a strict round-trip test of an operator's bf16 semantics
  cannot pass on this backend.
- Any hand-written bf16 kernel that relies on `.to(tl.bfloat16)` for rounding is silently
  incorrect in the same way.

## Workaround in use

Manual round-to-nearest-even over the f32 bit pattern, then assemble the bf16 value through
bitcast:

```python
bits = value.to(tl.uint32, bitcast=True)
rounded = bits + 0x7FFF + ((bits >> 16) & 1)
bf16_bits = (rounded >> 16).to(tl.uint16)
value_bf16 = bf16_bits.to(tl.bfloat16, bitcast=True)   # via int16 buffer
```

This reproduces PyTorch's rounding but costs extra ALU work.

| store into `*bf16` | `[1.0, 1.5, 1.0, 3.140625]` | correct |
| explicit `to(bf16).to(f32)` | `[1.0001, 1.5, 1.0009766, 3.1415927]` | **unchanged** |

## Expected behaviour

`x.to(tl.bfloat16)` on an f32 tensor performs the same round-to-nearest-even conversion that
PyTorch does, exactly as the f16 path already does.

## Environment

FlagTree `0.7.1a1+xpu3.6` (wheel), arch 3 (P800), `warp_size=1`; reproduced on both hosts
(81.70.153.29 and 152.136.33.169) with single-card runs.
