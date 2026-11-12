; The KL3 B2 backend uses this vector intrinsic for natural exponentiation.
; This reproducer isolates instruction selection from the Softmax graph.
target triple = "xpu3-baidu-none-gnu"

define void @one_vector(ptr %out, ptr %in) {
entry:
  %x = load <16 x float>, ptr %in, align 64
  %y = call <16 x float> @llvm.exp2.v16f32(<16 x float> %x)
  store <16 x float> %y, ptr %out, align 64
  ret void
}
declare <16 x float> @llvm.exp2.v16f32(<16 x float>)
