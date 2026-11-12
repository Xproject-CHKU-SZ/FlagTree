; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

@global_smem = internal unnamed_addr addrspace(2) global [0 x i8] undef, align 8

; Function Attrs: nounwind
define dso_local xpu_kernel void @triton_unk_fused__softmax_add_0(ptr addrspace(1) %0, ptr addrspace(1) %1, ptr addrspace(1) %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #0 !dbg !4 {
  %9 = tail call i32 @llvm.xpu.core_id()
  %10 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 4112), i32 %9
  store float 0.000000e+00, ptr addrspace(2) %10, align 4
  tail call void @llvm.xpu.mfence.v2(i32 7)
  tail call void @llvm.xpu.csr_set_sync_group(i32 65535)
  %11 = alloca [4 x <16 x float>], align 64, !dbg !7
  %12 = getelementptr float, ptr addrspace(2) @global_smem, i32 %9
  store float 0.000000e+00, ptr addrspace(2) %12, align 4
  tail call void @llvm.xpu.mfence.v2(i32 7)
  tail call void @llvm.xpu.csr_set_sync_group(i32 65535)
  %13 = tail call i32 @llvm.xpu.load_param(i32 0)
  %14 = tail call i32 @llvm.xpu.load_param(i32 1)
  %15 = mul i32 %6, %5
  %16 = mul i32 %15, %7
  %17 = srem i32 %9, 16
  %18 = sdiv i32 %9, 16
  %19 = shl nsw i32 %17, 7
  %20 = sext i32 %19 to i64, !dbg !8
  %21 = getelementptr float, ptr addrspace(1) %1, i64 %20, !dbg !8
  %22 = icmp slt i32 %13, %16
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %8
  %23 = shl i32 %18, 11
  %24 = add i32 %19, %23
  %25 = and i32 %9, 15
  %26 = and i32 %9, -16
  %27 = icmp eq i32 %25, 0
  %28 = getelementptr float, ptr addrspace(2) @global_smem, i32 %26
  %29 = getelementptr i8, ptr addrspace(2) %28, i32 4
  %30 = getelementptr i8, ptr addrspace(2) %28, i32 8
  %31 = getelementptr i8, ptr addrspace(2) %28, i32 12
  %32 = getelementptr i8, ptr addrspace(2) %28, i32 16
  %33 = getelementptr i8, ptr addrspace(2) %28, i32 20
  %34 = getelementptr i8, ptr addrspace(2) %28, i32 24
  %35 = getelementptr i8, ptr addrspace(2) %28, i32 28
  %36 = getelementptr i8, ptr addrspace(2) %28, i32 32
  %37 = getelementptr i8, ptr addrspace(2) %28, i32 36
  %38 = getelementptr i8, ptr addrspace(2) %28, i32 40
  %39 = getelementptr i8, ptr addrspace(2) %28, i32 44
  %40 = getelementptr i8, ptr addrspace(2) %28, i32 48
  %41 = getelementptr i8, ptr addrspace(2) %28, i32 52
  %42 = getelementptr i8, ptr addrspace(2) %28, i32 56
  %43 = getelementptr i8, ptr addrspace(2) %28, i32 60
  %44 = getelementptr inbounds i8, ptr %11, i32 64
  %45 = getelementptr inbounds i8, ptr %11, i32 128
  %46 = getelementptr inbounds i8, ptr %11, i32 192
  %47 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 4112), i32 %26
  %48 = getelementptr i8, ptr addrspace(2) %47, i32 4
  %49 = getelementptr i8, ptr addrspace(2) %47, i32 8
  %50 = getelementptr i8, ptr addrspace(2) %47, i32 12
  %51 = getelementptr i8, ptr addrspace(2) %47, i32 16
  %52 = getelementptr i8, ptr addrspace(2) %47, i32 20
  %53 = getelementptr i8, ptr addrspace(2) %47, i32 24
  %54 = getelementptr i8, ptr addrspace(2) %47, i32 28
  %55 = getelementptr i8, ptr addrspace(2) %47, i32 32
  %56 = getelementptr i8, ptr addrspace(2) %47, i32 36
  %57 = getelementptr i8, ptr addrspace(2) %47, i32 40
  %58 = getelementptr i8, ptr addrspace(2) %47, i32 44
  %59 = getelementptr i8, ptr addrspace(2) %47, i32 48
  %60 = getelementptr i8, ptr addrspace(2) %47, i32 52
  %61 = getelementptr i8, ptr addrspace(2) %47, i32 56
  %62 = getelementptr i8, ptr addrspace(2) %47, i32 60
  br label %63

63:                                               ; preds = %.lr.ph, %657
  %64 = phi i32 [ %13, %.lr.ph ], [ %658, %657 ]
  %65 = sdiv i32 %64, %7
  %66 = sdiv i32 %65, %6
  %67 = alloca [128 x float], align 4, !dbg !9
  %68 = alloca [128 x float], align 4, !dbg !10
  %69 = shl i32 %66, 14
  %70 = add i32 %24, %69
  %71 = getelementptr inbounds i8, ptr %68, i32 64
  %72 = getelementptr inbounds i8, ptr %68, i32 128
  %73 = getelementptr inbounds i8, ptr %68, i32 192
  %74 = getelementptr inbounds i8, ptr %68, i32 256
  %75 = getelementptr inbounds i8, ptr %68, i32 320
  %76 = getelementptr inbounds i8, ptr %68, i32 384
  %77 = getelementptr inbounds i8, ptr %68, i32 448
  %78 = getelementptr inbounds i8, ptr %67, i32 4
  %79 = getelementptr inbounds i8, ptr %67, i32 8
  %80 = getelementptr inbounds i8, ptr %67, i32 12
  %81 = getelementptr inbounds i8, ptr %67, i32 16
  %82 = getelementptr inbounds i8, ptr %67, i32 20
  %83 = getelementptr inbounds i8, ptr %67, i32 24
  %84 = getelementptr inbounds i8, ptr %67, i32 28
  %85 = getelementptr inbounds i8, ptr %67, i32 32
  %86 = getelementptr inbounds i8, ptr %67, i32 36
  %87 = getelementptr inbounds i8, ptr %67, i32 40
  %88 = getelementptr inbounds i8, ptr %67, i32 44
  %89 = getelementptr inbounds i8, ptr %67, i32 48
  %90 = getelementptr inbounds i8, ptr %67, i32 52
  %91 = getelementptr inbounds i8, ptr %67, i32 56
  %92 = getelementptr inbounds i8, ptr %67, i32 60
  %93 = getelementptr inbounds i8, ptr %67, i32 64
  %94 = getelementptr inbounds i8, ptr %67, i32 68
  %95 = getelementptr inbounds i8, ptr %67, i32 72
  %96 = getelementptr inbounds i8, ptr %67, i32 76
  %97 = getelementptr inbounds i8, ptr %67, i32 80
  %98 = getelementptr inbounds i8, ptr %67, i32 84
  %99 = getelementptr inbounds i8, ptr %67, i32 88
  %100 = getelementptr inbounds i8, ptr %67, i32 92
  %101 = getelementptr inbounds i8, ptr %67, i32 96
  %102 = getelementptr inbounds i8, ptr %67, i32 100
  %103 = getelementptr inbounds i8, ptr %67, i32 104
  %104 = getelementptr inbounds i8, ptr %67, i32 108
  %105 = getelementptr inbounds i8, ptr %67, i32 112
  %106 = getelementptr inbounds i8, ptr %67, i32 116
  %107 = getelementptr inbounds i8, ptr %67, i32 120
  %108 = getelementptr inbounds i8, ptr %67, i32 124
  %109 = getelementptr inbounds i8, ptr %67, i32 128
  %110 = getelementptr inbounds i8, ptr %67, i32 132
  %111 = getelementptr inbounds i8, ptr %67, i32 136
  %112 = getelementptr inbounds i8, ptr %67, i32 140
  %113 = getelementptr inbounds i8, ptr %67, i32 144
  %114 = getelementptr inbounds i8, ptr %67, i32 148
  %115 = getelementptr inbounds i8, ptr %67, i32 152
  %116 = getelementptr inbounds i8, ptr %67, i32 156
  %117 = getelementptr inbounds i8, ptr %67, i32 160
  %118 = getelementptr inbounds i8, ptr %67, i32 164
  %119 = getelementptr inbounds i8, ptr %67, i32 168
  %120 = getelementptr inbounds i8, ptr %67, i32 172
  %121 = getelementptr inbounds i8, ptr %67, i32 176
  %122 = getelementptr inbounds i8, ptr %67, i32 180
  %123 = getelementptr inbounds i8, ptr %67, i32 184
  %124 = getelementptr inbounds i8, ptr %67, i32 188
  %125 = getelementptr inbounds i8, ptr %67, i32 192
  %126 = getelementptr inbounds i8, ptr %67, i32 196
  %127 = getelementptr inbounds i8, ptr %67, i32 200
  %128 = getelementptr inbounds i8, ptr %67, i32 204
  %129 = getelementptr inbounds i8, ptr %67, i32 208
  %130 = getelementptr inbounds i8, ptr %67, i32 212
  %131 = getelementptr inbounds i8, ptr %67, i32 216
  %132 = getelementptr inbounds i8, ptr %67, i32 220
  %133 = getelementptr inbounds i8, ptr %67, i32 224
  %134 = getelementptr inbounds i8, ptr %67, i32 228
  %135 = getelementptr inbounds i8, ptr %67, i32 232
  %136 = getelementptr inbounds i8, ptr %67, i32 236
  %137 = getelementptr inbounds i8, ptr %67, i32 240
  %138 = getelementptr inbounds i8, ptr %67, i32 244
  %139 = getelementptr inbounds i8, ptr %67, i32 248
  %140 = getelementptr inbounds i8, ptr %67, i32 252
  %141 = getelementptr inbounds i8, ptr %67, i32 256
  %142 = getelementptr inbounds i8, ptr %67, i32 260
  %143 = getelementptr inbounds i8, ptr %67, i32 264
  %144 = getelementptr inbounds i8, ptr %67, i32 268
  %145 = getelementptr inbounds i8, ptr %67, i32 272
  %146 = getelementptr inbounds i8, ptr %67, i32 276
  %147 = getelementptr inbounds i8, ptr %67, i32 280
  %148 = getelementptr inbounds i8, ptr %67, i32 284
  %149 = getelementptr inbounds i8, ptr %67, i32 288
  %150 = getelementptr inbounds i8, ptr %67, i32 292
  %151 = getelementptr inbounds i8, ptr %67, i32 296
  %152 = getelementptr inbounds i8, ptr %67, i32 300
  %153 = getelementptr inbounds i8, ptr %67, i32 304
  %154 = getelementptr inbounds i8, ptr %67, i32 308
  %155 = getelementptr inbounds i8, ptr %67, i32 312
  %156 = getelementptr inbounds i8, ptr %67, i32 316
  %157 = getelementptr inbounds i8, ptr %67, i32 320
  %158 = getelementptr inbounds i8, ptr %67, i32 324
  %159 = getelementptr inbounds i8, ptr %67, i32 328
  %160 = getelementptr inbounds i8, ptr %67, i32 332
  %161 = getelementptr inbounds i8, ptr %67, i32 336
  %162 = getelementptr inbounds i8, ptr %67, i32 340
  %163 = getelementptr inbounds i8, ptr %67, i32 344
  %164 = getelementptr inbounds i8, ptr %67, i32 348
  %165 = getelementptr inbounds i8, ptr %67, i32 352
  %166 = getelementptr inbounds i8, ptr %67, i32 356
  %167 = getelementptr inbounds i8, ptr %67, i32 360
  %168 = getelementptr inbounds i8, ptr %67, i32 364
  %169 = getelementptr inbounds i8, ptr %67, i32 368
  %170 = getelementptr inbounds i8, ptr %67, i32 372
  %171 = getelementptr inbounds i8, ptr %67, i32 376
  %172 = getelementptr inbounds i8, ptr %67, i32 380
  %173 = getelementptr inbounds i8, ptr %67, i32 384
  %174 = getelementptr inbounds i8, ptr %67, i32 388
  %175 = getelementptr inbounds i8, ptr %67, i32 392
  %176 = getelementptr inbounds i8, ptr %67, i32 396
  %177 = getelementptr inbounds i8, ptr %67, i32 400
  %178 = getelementptr inbounds i8, ptr %67, i32 404
  %179 = getelementptr inbounds i8, ptr %67, i32 408
  %180 = getelementptr inbounds i8, ptr %67, i32 412
  %181 = getelementptr inbounds i8, ptr %67, i32 416
  %182 = getelementptr inbounds i8, ptr %67, i32 420
  %183 = getelementptr inbounds i8, ptr %67, i32 424
  %184 = getelementptr inbounds i8, ptr %67, i32 428
  %185 = getelementptr inbounds i8, ptr %67, i32 432
  %186 = getelementptr inbounds i8, ptr %67, i32 436
  %187 = getelementptr inbounds i8, ptr %67, i32 440
  %188 = getelementptr inbounds i8, ptr %67, i32 444
  %189 = getelementptr inbounds i8, ptr %67, i32 448
  %190 = getelementptr inbounds i8, ptr %67, i32 452
  %191 = getelementptr inbounds i8, ptr %67, i32 456
  %192 = getelementptr inbounds i8, ptr %67, i32 460
  %193 = getelementptr inbounds i8, ptr %67, i32 464
  %194 = getelementptr inbounds i8, ptr %67, i32 468
  %195 = getelementptr inbounds i8, ptr %67, i32 472
  %196 = getelementptr inbounds i8, ptr %67, i32 476
  %197 = getelementptr inbounds i8, ptr %67, i32 480
  %198 = getelementptr inbounds i8, ptr %67, i32 484
  %199 = getelementptr inbounds i8, ptr %67, i32 488
  %200 = getelementptr inbounds i8, ptr %67, i32 492
  %201 = getelementptr inbounds i8, ptr %67, i32 496
  %202 = getelementptr inbounds i8, ptr %67, i32 500
  %203 = getelementptr inbounds i8, ptr %67, i32 504
  %204 = getelementptr inbounds i8, ptr %67, i32 508
  br label %205

205:                                              ; preds = %63, %645
  %206 = phi i1 [ true, %63 ], [ false, %645 ]
  %207 = phi i32 [ 0, %63 ], [ 8192, %645 ]
  %208 = add i32 %70, %207, !dbg !11
  %209 = sext i32 %208 to i64, !dbg !12
  %210 = getelementptr float, ptr addrspace(1) %0, i64 %209, !dbg !12
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %68, ptr addrspace(1) %210, i32 0, i32 512), !dbg !10
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %67, ptr addrspace(1) %21, i32 0, i32 512), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !10
  %211 = load <16 x float>, ptr %68, align 64, !dbg !10
  %212 = load <16 x float>, ptr %71, align 64, !dbg !10
  %213 = load <16 x float>, ptr %72, align 64, !dbg !10
  %214 = load <16 x float>, ptr %73, align 64, !dbg !10
  %215 = load <16 x float>, ptr %74, align 64, !dbg !10
  %216 = load <16 x float>, ptr %75, align 64, !dbg !10
  %217 = load <16 x float>, ptr %76, align 64, !dbg !10
  %218 = load <16 x float>, ptr %77, align 64, !dbg !10
  %219 = load float, ptr %67, align 4, !dbg !9
  %220 = load float, ptr %78, align 4, !dbg !9
  %221 = load float, ptr %79, align 4, !dbg !9
  %222 = load float, ptr %80, align 4, !dbg !9
  %223 = load float, ptr %81, align 4, !dbg !9
  %224 = load float, ptr %82, align 4, !dbg !9
  %225 = load float, ptr %83, align 4, !dbg !9
  %226 = load float, ptr %84, align 4, !dbg !9
  %227 = load float, ptr %85, align 4, !dbg !9
  %228 = load float, ptr %86, align 4, !dbg !9
  %229 = load float, ptr %87, align 4, !dbg !9
  %230 = load float, ptr %88, align 4, !dbg !9
  %231 = load float, ptr %89, align 4, !dbg !9
  %232 = load float, ptr %90, align 4, !dbg !9
  %233 = load float, ptr %91, align 4, !dbg !9
  %234 = load float, ptr %92, align 4, !dbg !9
  %235 = load float, ptr %93, align 4, !dbg !9
  %236 = load float, ptr %94, align 4, !dbg !9
  %237 = load float, ptr %95, align 4, !dbg !9
  %238 = load float, ptr %96, align 4, !dbg !9
  %239 = load float, ptr %97, align 4, !dbg !9
  %240 = load float, ptr %98, align 4, !dbg !9
  %241 = load float, ptr %99, align 4, !dbg !9
  %242 = load float, ptr %100, align 4, !dbg !9
  %243 = load float, ptr %101, align 4, !dbg !9
  %244 = load float, ptr %102, align 4, !dbg !9
  %245 = load float, ptr %103, align 4, !dbg !9
  %246 = load float, ptr %104, align 4, !dbg !9
  %247 = load float, ptr %105, align 4, !dbg !9
  %248 = load float, ptr %106, align 4, !dbg !9
  %249 = load float, ptr %107, align 4, !dbg !9
  %250 = load float, ptr %108, align 4, !dbg !9
  %251 = load float, ptr %109, align 4, !dbg !9
  %252 = load float, ptr %110, align 4, !dbg !9
  %253 = load float, ptr %111, align 4, !dbg !9
  %254 = load float, ptr %112, align 4, !dbg !9
  %255 = load float, ptr %113, align 4, !dbg !9
  %256 = load float, ptr %114, align 4, !dbg !9
  %257 = load float, ptr %115, align 4, !dbg !9
  %258 = load float, ptr %116, align 4, !dbg !9
  %259 = load float, ptr %117, align 4, !dbg !9
  %260 = load float, ptr %118, align 4, !dbg !9
  %261 = load float, ptr %119, align 4, !dbg !9
  %262 = load float, ptr %120, align 4, !dbg !9
  %263 = load float, ptr %121, align 4, !dbg !9
  %264 = load float, ptr %122, align 4, !dbg !9
  %265 = load float, ptr %123, align 4, !dbg !9
  %266 = load float, ptr %124, align 4, !dbg !9
  %267 = load float, ptr %125, align 4, !dbg !9
  %268 = load float, ptr %126, align 4, !dbg !9
  %269 = load float, ptr %127, align 4, !dbg !9
  %270 = load float, ptr %128, align 4, !dbg !9
  %271 = load float, ptr %129, align 4, !dbg !9
  %272 = load float, ptr %130, align 4, !dbg !9
  %273 = load float, ptr %131, align 4, !dbg !9
  %274 = load float, ptr %132, align 4, !dbg !9
  %275 = load float, ptr %133, align 4, !dbg !9
  %276 = load float, ptr %134, align 4, !dbg !9
  %277 = load float, ptr %135, align 4, !dbg !9
  %278 = load float, ptr %136, align 4, !dbg !9
  %279 = load float, ptr %137, align 4, !dbg !9
  %280 = load float, ptr %138, align 4, !dbg !9
  %281 = load float, ptr %139, align 4, !dbg !9
  %282 = load float, ptr %140, align 4, !dbg !9
  %283 = load float, ptr %141, align 4, !dbg !9
  %284 = load float, ptr %142, align 4, !dbg !9
  %285 = load float, ptr %143, align 4, !dbg !9
  %286 = load float, ptr %144, align 4, !dbg !9
  %287 = load float, ptr %145, align 4, !dbg !9
  %288 = load float, ptr %146, align 4, !dbg !9
  %289 = load float, ptr %147, align 4, !dbg !9
  %290 = load float, ptr %148, align 4, !dbg !9
  %291 = load float, ptr %149, align 4, !dbg !9
  %292 = load float, ptr %150, align 4, !dbg !9
  %293 = load float, ptr %151, align 4, !dbg !9
  %294 = load float, ptr %152, align 4, !dbg !9
  %295 = load float, ptr %153, align 4, !dbg !9
  %296 = load float, ptr %154, align 4, !dbg !9
  %297 = load float, ptr %155, align 4, !dbg !9
  %298 = load float, ptr %156, align 4, !dbg !9
  %299 = load float, ptr %157, align 4, !dbg !9
  %300 = load float, ptr %158, align 4, !dbg !9
  %301 = load float, ptr %159, align 4, !dbg !9
  %302 = load float, ptr %160, align 4, !dbg !9
  %303 = load float, ptr %161, align 4, !dbg !9
  %304 = load float, ptr %162, align 4, !dbg !9
  %305 = load float, ptr %163, align 4, !dbg !9
  %306 = load float, ptr %164, align 4, !dbg !9
  %307 = load float, ptr %165, align 4, !dbg !9
  %308 = load float, ptr %166, align 4, !dbg !9
  %309 = load float, ptr %167, align 4, !dbg !9
  %310 = load float, ptr %168, align 4, !dbg !9
  %311 = load float, ptr %169, align 4, !dbg !9
  %312 = load float, ptr %170, align 4, !dbg !9
  %313 = load float, ptr %171, align 4, !dbg !9
  %314 = load float, ptr %172, align 4, !dbg !9
  %315 = load float, ptr %173, align 4, !dbg !9
  %316 = load float, ptr %174, align 4, !dbg !9
  %317 = load float, ptr %175, align 4, !dbg !9
  %318 = load float, ptr %176, align 4, !dbg !9
  %319 = load float, ptr %177, align 4, !dbg !9
  %320 = load float, ptr %178, align 4, !dbg !9
  %321 = load float, ptr %179, align 4, !dbg !9
  %322 = load float, ptr %180, align 4, !dbg !9
  %323 = load float, ptr %181, align 4, !dbg !9
  %324 = load float, ptr %182, align 4, !dbg !9
  %325 = load float, ptr %183, align 4, !dbg !9
  %326 = load float, ptr %184, align 4, !dbg !9
  %327 = load float, ptr %185, align 4, !dbg !9
  %328 = load float, ptr %186, align 4, !dbg !9
  %329 = load float, ptr %187, align 4, !dbg !9
  %330 = load float, ptr %188, align 4, !dbg !9
  %331 = load float, ptr %189, align 4, !dbg !9
  %332 = load float, ptr %190, align 4, !dbg !9
  %333 = load float, ptr %191, align 4, !dbg !9
  %334 = load float, ptr %192, align 4, !dbg !9
  %335 = load float, ptr %193, align 4, !dbg !9
  %336 = load float, ptr %194, align 4, !dbg !9
  %337 = load float, ptr %195, align 4, !dbg !9
  %338 = load float, ptr %196, align 4, !dbg !9
  %339 = load float, ptr %197, align 4, !dbg !9
  %340 = load float, ptr %198, align 4, !dbg !9
  %341 = load float, ptr %199, align 4, !dbg !9
  %342 = load float, ptr %200, align 4, !dbg !9
  %343 = load float, ptr %201, align 4, !dbg !9
  %344 = load float, ptr %202, align 4, !dbg !9
  %345 = load float, ptr %203, align 4, !dbg !9
  %346 = load float, ptr %204, align 4, !dbg !9
  %347 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %219, i64 0, !dbg !13
  %348 = insertelement <16 x float> %347, float %220, i64 1, !dbg !13
  %349 = insertelement <16 x float> %348, float %221, i64 2, !dbg !13
  %350 = insertelement <16 x float> %349, float %222, i64 3, !dbg !13
  %351 = insertelement <16 x float> %350, float %223, i64 4, !dbg !13
  %352 = insertelement <16 x float> %351, float %224, i64 5, !dbg !13
  %353 = insertelement <16 x float> %352, float %225, i64 6, !dbg !13
  %354 = insertelement <16 x float> %353, float %226, i64 7, !dbg !13
  %355 = insertelement <16 x float> %354, float %227, i64 8, !dbg !13
  %356 = insertelement <16 x float> %355, float %228, i64 9, !dbg !13
  %357 = insertelement <16 x float> %356, float %229, i64 10, !dbg !13
  %358 = insertelement <16 x float> %357, float %230, i64 11, !dbg !13
  %359 = insertelement <16 x float> %358, float %231, i64 12, !dbg !13
  %360 = insertelement <16 x float> %359, float %232, i64 13, !dbg !13
  %361 = insertelement <16 x float> %360, float %233, i64 14, !dbg !13
  %362 = insertelement <16 x float> %361, float %234, i64 15, !dbg !13
  %363 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %235, i64 0, !dbg !13
  %364 = insertelement <16 x float> %363, float %236, i64 1, !dbg !13
  %365 = insertelement <16 x float> %364, float %237, i64 2, !dbg !13
  %366 = insertelement <16 x float> %365, float %238, i64 3, !dbg !13
  %367 = insertelement <16 x float> %366, float %239, i64 4, !dbg !13
  %368 = insertelement <16 x float> %367, float %240, i64 5, !dbg !13
  %369 = insertelement <16 x float> %368, float %241, i64 6, !dbg !13
  %370 = insertelement <16 x float> %369, float %242, i64 7, !dbg !13
  %371 = insertelement <16 x float> %370, float %243, i64 8, !dbg !13
  %372 = insertelement <16 x float> %371, float %244, i64 9, !dbg !13
  %373 = insertelement <16 x float> %372, float %245, i64 10, !dbg !13
  %374 = insertelement <16 x float> %373, float %246, i64 11, !dbg !13
  %375 = insertelement <16 x float> %374, float %247, i64 12, !dbg !13
  %376 = insertelement <16 x float> %375, float %248, i64 13, !dbg !13
  %377 = insertelement <16 x float> %376, float %249, i64 14, !dbg !13
  %378 = insertelement <16 x float> %377, float %250, i64 15, !dbg !13
  %379 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %251, i64 0, !dbg !13
  %380 = insertelement <16 x float> %379, float %252, i64 1, !dbg !13
  %381 = insertelement <16 x float> %380, float %253, i64 2, !dbg !13
  %382 = insertelement <16 x float> %381, float %254, i64 3, !dbg !13
  %383 = insertelement <16 x float> %382, float %255, i64 4, !dbg !13
  %384 = insertelement <16 x float> %383, float %256, i64 5, !dbg !13
  %385 = insertelement <16 x float> %384, float %257, i64 6, !dbg !13
  %386 = insertelement <16 x float> %385, float %258, i64 7, !dbg !13
  %387 = insertelement <16 x float> %386, float %259, i64 8, !dbg !13
  %388 = insertelement <16 x float> %387, float %260, i64 9, !dbg !13
  %389 = insertelement <16 x float> %388, float %261, i64 10, !dbg !13
  %390 = insertelement <16 x float> %389, float %262, i64 11, !dbg !13
  %391 = insertelement <16 x float> %390, float %263, i64 12, !dbg !13
  %392 = insertelement <16 x float> %391, float %264, i64 13, !dbg !13
  %393 = insertelement <16 x float> %392, float %265, i64 14, !dbg !13
  %394 = insertelement <16 x float> %393, float %266, i64 15, !dbg !13
  %395 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %267, i64 0, !dbg !13
  %396 = insertelement <16 x float> %395, float %268, i64 1, !dbg !13
  %397 = insertelement <16 x float> %396, float %269, i64 2, !dbg !13
  %398 = insertelement <16 x float> %397, float %270, i64 3, !dbg !13
  %399 = insertelement <16 x float> %398, float %271, i64 4, !dbg !13
  %400 = insertelement <16 x float> %399, float %272, i64 5, !dbg !13
  %401 = insertelement <16 x float> %400, float %273, i64 6, !dbg !13
  %402 = insertelement <16 x float> %401, float %274, i64 7, !dbg !13
  %403 = insertelement <16 x float> %402, float %275, i64 8, !dbg !13
  %404 = insertelement <16 x float> %403, float %276, i64 9, !dbg !13
  %405 = insertelement <16 x float> %404, float %277, i64 10, !dbg !13
  %406 = insertelement <16 x float> %405, float %278, i64 11, !dbg !13
  %407 = insertelement <16 x float> %406, float %279, i64 12, !dbg !13
  %408 = insertelement <16 x float> %407, float %280, i64 13, !dbg !13
  %409 = insertelement <16 x float> %408, float %281, i64 14, !dbg !13
  %410 = insertelement <16 x float> %409, float %282, i64 15, !dbg !13
  %411 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %283, i64 0, !dbg !13
  %412 = insertelement <16 x float> %411, float %284, i64 1, !dbg !13
  %413 = insertelement <16 x float> %412, float %285, i64 2, !dbg !13
  %414 = insertelement <16 x float> %413, float %286, i64 3, !dbg !13
  %415 = insertelement <16 x float> %414, float %287, i64 4, !dbg !13
  %416 = insertelement <16 x float> %415, float %288, i64 5, !dbg !13
  %417 = insertelement <16 x float> %416, float %289, i64 6, !dbg !13
  %418 = insertelement <16 x float> %417, float %290, i64 7, !dbg !13
  %419 = insertelement <16 x float> %418, float %291, i64 8, !dbg !13
  %420 = insertelement <16 x float> %419, float %292, i64 9, !dbg !13
  %421 = insertelement <16 x float> %420, float %293, i64 10, !dbg !13
  %422 = insertelement <16 x float> %421, float %294, i64 11, !dbg !13
  %423 = insertelement <16 x float> %422, float %295, i64 12, !dbg !13
  %424 = insertelement <16 x float> %423, float %296, i64 13, !dbg !13
  %425 = insertelement <16 x float> %424, float %297, i64 14, !dbg !13
  %426 = insertelement <16 x float> %425, float %298, i64 15, !dbg !13
  %427 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %299, i64 0, !dbg !13
  %428 = insertelement <16 x float> %427, float %300, i64 1, !dbg !13
  %429 = insertelement <16 x float> %428, float %301, i64 2, !dbg !13
  %430 = insertelement <16 x float> %429, float %302, i64 3, !dbg !13
  %431 = insertelement <16 x float> %430, float %303, i64 4, !dbg !13
  %432 = insertelement <16 x float> %431, float %304, i64 5, !dbg !13
  %433 = insertelement <16 x float> %432, float %305, i64 6, !dbg !13
  %434 = insertelement <16 x float> %433, float %306, i64 7, !dbg !13
  %435 = insertelement <16 x float> %434, float %307, i64 8, !dbg !13
  %436 = insertelement <16 x float> %435, float %308, i64 9, !dbg !13
  %437 = insertelement <16 x float> %436, float %309, i64 10, !dbg !13
  %438 = insertelement <16 x float> %437, float %310, i64 11, !dbg !13
  %439 = insertelement <16 x float> %438, float %311, i64 12, !dbg !13
  %440 = insertelement <16 x float> %439, float %312, i64 13, !dbg !13
  %441 = insertelement <16 x float> %440, float %313, i64 14, !dbg !13
  %442 = insertelement <16 x float> %441, float %314, i64 15, !dbg !13
  %443 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %315, i64 0, !dbg !13
  %444 = insertelement <16 x float> %443, float %316, i64 1, !dbg !13
  %445 = insertelement <16 x float> %444, float %317, i64 2, !dbg !13
  %446 = insertelement <16 x float> %445, float %318, i64 3, !dbg !13
  %447 = insertelement <16 x float> %446, float %319, i64 4, !dbg !13
  %448 = insertelement <16 x float> %447, float %320, i64 5, !dbg !13
  %449 = insertelement <16 x float> %448, float %321, i64 6, !dbg !13
  %450 = insertelement <16 x float> %449, float %322, i64 7, !dbg !13
  %451 = insertelement <16 x float> %450, float %323, i64 8, !dbg !13
  %452 = insertelement <16 x float> %451, float %324, i64 9, !dbg !13
  %453 = insertelement <16 x float> %452, float %325, i64 10, !dbg !13
  %454 = insertelement <16 x float> %453, float %326, i64 11, !dbg !13
  %455 = insertelement <16 x float> %454, float %327, i64 12, !dbg !13
  %456 = insertelement <16 x float> %455, float %328, i64 13, !dbg !13
  %457 = insertelement <16 x float> %456, float %329, i64 14, !dbg !13
  %458 = insertelement <16 x float> %457, float %330, i64 15, !dbg !13
  %459 = insertelement <16 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float undef, float undef, float undef, float undef, float undef, float undef>, float %331, i64 0, !dbg !13
  %460 = insertelement <16 x float> %459, float %332, i64 1, !dbg !13
  %461 = insertelement <16 x float> %460, float %333, i64 2, !dbg !13
  %462 = insertelement <16 x float> %461, float %334, i64 3, !dbg !13
  %463 = insertelement <16 x float> %462, float %335, i64 4, !dbg !13
  %464 = insertelement <16 x float> %463, float %336, i64 5, !dbg !13
  %465 = insertelement <16 x float> %464, float %337, i64 6, !dbg !13
  %466 = insertelement <16 x float> %465, float %338, i64 7, !dbg !13
  %467 = insertelement <16 x float> %466, float %339, i64 8, !dbg !13
  %468 = insertelement <16 x float> %467, float %340, i64 9, !dbg !13
  %469 = insertelement <16 x float> %468, float %341, i64 10, !dbg !13
  %470 = insertelement <16 x float> %469, float %342, i64 11, !dbg !13
  %471 = insertelement <16 x float> %470, float %343, i64 12, !dbg !13
  %472 = insertelement <16 x float> %471, float %344, i64 13, !dbg !13
  %473 = insertelement <16 x float> %472, float %345, i64 14, !dbg !13
  %474 = insertelement <16 x float> %473, float %346, i64 15, !dbg !13
  %475 = fadd <16 x float> %211, %362, !dbg !13
  %476 = fadd <16 x float> %212, %378, !dbg !13
  %477 = fadd <16 x float> %213, %394, !dbg !13
  %478 = fadd <16 x float> %214, %410, !dbg !13
  %479 = fadd <16 x float> %215, %426, !dbg !13
  %480 = fadd <16 x float> %216, %442, !dbg !13
  %481 = fadd <16 x float> %217, %458, !dbg !13
  %482 = fadd <16 x float> %218, %474, !dbg !13
  %483 = call i32 @llvm.xpu.load_param(i32 2)
  %484 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %475, <16 x float> %476) #2
  %485 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %484, <16 x float> %477) #2
  %486 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %485, <16 x float> %478) #2
  %487 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %486, <16 x float> %479) #2
  %488 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %487, <16 x float> %480) #2
  %489 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %488, <16 x float> %481) #2
  %490 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %489, <16 x float> %482) #2
  %491 = extractelement <16 x float> %490, i64 0
  %492 = extractelement <16 x float> %490, i64 1
  %493 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %491, float %492) #2
  %494 = extractelement <16 x float> %490, i64 2
  %495 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %493, float %494) #2
  %496 = extractelement <16 x float> %490, i64 3
  %497 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %495, float %496) #2
  %498 = extractelement <16 x float> %490, i64 4
  %499 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %497, float %498) #2
  %500 = extractelement <16 x float> %490, i64 5
  %501 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %499, float %500) #2
  %502 = extractelement <16 x float> %490, i64 6
  %503 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %501, float %502) #2
  %504 = extractelement <16 x float> %490, i64 7
  %505 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %503, float %504) #2
  %506 = extractelement <16 x float> %490, i64 8
  %507 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %505, float %506) #2
  %508 = extractelement <16 x float> %490, i64 9
  %509 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %507, float %508) #2
  %510 = extractelement <16 x float> %490, i64 10
  %511 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %509, float %510) #2
  %512 = extractelement <16 x float> %490, i64 11
  %513 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %511, float %512) #2
  %514 = extractelement <16 x float> %490, i64 12
  %515 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %513, float %514) #2
  %516 = extractelement <16 x float> %490, i64 13
  %517 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %515, float %516) #2
  %518 = extractelement <16 x float> %490, i64 14
  %519 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %517, float %518) #2
  %520 = extractelement <16 x float> %490, i64 15
  %521 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %519, float %520) #2
  store float %521, ptr addrspace(2) %12, align 4
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  br i1 %27, label %522, label %554

522:                                              ; preds = %205
  %523 = load float, ptr addrspace(2) %28, align 8
  %524 = load float, ptr addrspace(2) %29, align 4
  %525 = load float, ptr addrspace(2) %30, align 8
  %526 = load float, ptr addrspace(2) %31, align 4
  %527 = load float, ptr addrspace(2) %32, align 8
  %528 = load float, ptr addrspace(2) %33, align 4
  %529 = load float, ptr addrspace(2) %34, align 8
  %530 = load float, ptr addrspace(2) %35, align 4
  %531 = load float, ptr addrspace(2) %36, align 8
  %532 = load float, ptr addrspace(2) %37, align 4
  %533 = load float, ptr addrspace(2) %38, align 8
  %534 = load float, ptr addrspace(2) %39, align 4
  %535 = load float, ptr addrspace(2) %40, align 8
  %536 = load float, ptr addrspace(2) %41, align 4
  %537 = load float, ptr addrspace(2) %42, align 8
  %538 = load float, ptr addrspace(2) %43, align 4
  %539 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %523, float %524) #2
  %540 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %539, float %525) #2
  %541 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %540, float %526) #2
  %542 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %541, float %527) #2
  %543 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %542, float %528) #2
  %544 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %543, float %529) #2
  %545 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %544, float %530) #2
  %546 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %545, float %531) #2
  %547 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %546, float %532) #2
  %548 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %547, float %533) #2
  %549 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %548, float %534) #2
  %550 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %549, float %535) #2
  %551 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %550, float %536) #2
  %552 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %551, float %537) #2
  %553 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %552, float %538) #2
  store float %553, ptr addrspace(2) %28, align 8
  br label %554

554:                                              ; preds = %522, %205
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  %555 = load float, ptr addrspace(2) %28, align 8
  %556 = fneg float %555, !dbg !14
  %557 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %475) #2, !dbg !14
  %558 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %476) #2, !dbg !14
  %559 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %477) #2, !dbg !14
  %560 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %478) #2, !dbg !14
  %561 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %479) #2, !dbg !14
  %562 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %480) #2, !dbg !14
  %563 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %481) #2, !dbg !14
  %564 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %556, <16 x float> %482) #2, !dbg !14
  store volatile <16 x float> %557, ptr %11, align 64, !dbg !7
  store volatile <16 x float> %558, ptr %44, align 64, !dbg !7
  store volatile <16 x float> %559, ptr %45, align 64, !dbg !7
  store volatile <16 x float> %560, ptr %46, align 64, !dbg !7
  %565 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %11) #2, !dbg !7
  %566 = load volatile <16 x float>, ptr %11, align 64, !dbg !7
  %567 = load volatile <16 x float>, ptr %44, align 64, !dbg !7
  %568 = load volatile <16 x float>, ptr %45, align 64, !dbg !7
  %569 = load volatile <16 x float>, ptr %46, align 64, !dbg !7
  store volatile <16 x float> %561, ptr %11, align 64, !dbg !7
  store volatile <16 x float> %562, ptr %44, align 64, !dbg !7
  store volatile <16 x float> %563, ptr %45, align 64, !dbg !7
  store volatile <16 x float> %564, ptr %46, align 64, !dbg !7
  %570 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %11) #2, !dbg !7
  %571 = load volatile <16 x float>, ptr %11, align 64, !dbg !7
  %572 = load volatile <16 x float>, ptr %44, align 64, !dbg !7
  %573 = load volatile <16 x float>, ptr %45, align 64, !dbg !7
  %574 = load volatile <16 x float>, ptr %46, align 64, !dbg !7
  %575 = fadd <16 x float> %566, %567
  %576 = fadd <16 x float> %575, %568
  %577 = fadd <16 x float> %576, %569
  %578 = fadd <16 x float> %577, %571
  %579 = fadd <16 x float> %578, %572
  %580 = fadd <16 x float> %579, %573
  %581 = fadd <16 x float> %580, %574
  %582 = extractelement <16 x float> %581, i64 0
  %583 = extractelement <16 x float> %581, i64 1
  %584 = fadd float %582, %583
  %585 = extractelement <16 x float> %581, i64 2
  %586 = fadd float %585, %584
  %587 = extractelement <16 x float> %581, i64 3
  %588 = fadd float %587, %586
  %589 = extractelement <16 x float> %581, i64 4
  %590 = fadd float %589, %588
  %591 = extractelement <16 x float> %581, i64 5
  %592 = fadd float %591, %590
  %593 = extractelement <16 x float> %581, i64 6
  %594 = fadd float %593, %592
  %595 = extractelement <16 x float> %581, i64 7
  %596 = fadd float %595, %594
  %597 = extractelement <16 x float> %581, i64 8
  %598 = fadd float %597, %596
  %599 = extractelement <16 x float> %581, i64 9
  %600 = fadd float %599, %598
  %601 = extractelement <16 x float> %581, i64 10
  %602 = fadd float %601, %600
  %603 = extractelement <16 x float> %581, i64 11
  %604 = fadd float %603, %602
  %605 = extractelement <16 x float> %581, i64 12
  %606 = fadd float %605, %604
  %607 = extractelement <16 x float> %581, i64 13
  %608 = fadd float %607, %606
  %609 = extractelement <16 x float> %581, i64 14
  %610 = fadd float %609, %608
  %611 = extractelement <16 x float> %581, i64 15
  %612 = fadd float %611, %610
  store float %612, ptr addrspace(2) %10, align 4
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  br i1 %27, label %613, label %645

613:                                              ; preds = %554
  %614 = load float, ptr addrspace(2) %47, align 8
  %615 = load float, ptr addrspace(2) %48, align 4
  %616 = load float, ptr addrspace(2) %49, align 8
  %617 = load float, ptr addrspace(2) %50, align 4
  %618 = load float, ptr addrspace(2) %51, align 8
  %619 = load float, ptr addrspace(2) %52, align 4
  %620 = load float, ptr addrspace(2) %53, align 8
  %621 = load float, ptr addrspace(2) %54, align 4
  %622 = load float, ptr addrspace(2) %55, align 8
  %623 = load float, ptr addrspace(2) %56, align 4
  %624 = load float, ptr addrspace(2) %57, align 8
  %625 = load float, ptr addrspace(2) %58, align 4
  %626 = load float, ptr addrspace(2) %59, align 8
  %627 = load float, ptr addrspace(2) %60, align 4
  %628 = load float, ptr addrspace(2) %61, align 8
  %629 = load float, ptr addrspace(2) %62, align 4
  %630 = fadd float %614, %615
  %631 = fadd float %630, %616
  %632 = fadd float %631, %617
  %633 = fadd float %632, %618
  %634 = fadd float %633, %619
  %635 = fadd float %634, %620
  %636 = fadd float %635, %621
  %637 = fadd float %636, %622
  %638 = fadd float %637, %623
  %639 = fadd float %638, %624
  %640 = fadd float %639, %625
  %641 = fadd float %640, %626
  %642 = fadd float %641, %627
  %643 = fadd float %642, %628
  %644 = fadd float %643, %629
  store float %644, ptr addrspace(2) %47, align 8
  br label %645

645:                                              ; preds = %613, %554
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  %646 = load float, ptr addrspace(2) %47, align 8
  %647 = fdiv float 1.000000e+00, %646, !dbg !15
  %648 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %566) #2, !dbg !16
  %649 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %567) #2, !dbg !16
  %650 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %568) #2, !dbg !16
  %651 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %569) #2, !dbg !16
  %652 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %571) #2, !dbg !16
  %653 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %572) #2, !dbg !16
  %654 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %573) #2, !dbg !16
  %655 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %647, <16 x float> %574) #2, !dbg !16
  %656 = getelementptr float, ptr addrspace(1) %2, i64 %209, !dbg !17
  store <16 x float> %648, ptr %68, align 64, !dbg !18
  store <16 x float> %649, ptr %71, align 64, !dbg !18
  store <16 x float> %650, ptr %72, align 64, !dbg !18
  store <16 x float> %651, ptr %73, align 64, !dbg !18
  store <16 x float> %652, ptr %74, align 64, !dbg !18
  store <16 x float> %653, ptr %75, align 64, !dbg !18
  store <16 x float> %654, ptr %76, align 64, !dbg !18
  store <16 x float> %655, ptr %77, align 64, !dbg !18
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !18
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %656, ptr nonnull %68, i32 0, i32 512), !dbg !18
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !18
  br i1 %206, label %205, label %657

657:                                              ; preds = %645
  %658 = add i32 %64, %14
  %659 = icmp slt i32 %658, %16
  br i1 %659, label %63, label %._crit_edge

._crit_edge:                                      ; preds = %657, %8
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.core_id() #1

; Function Attrs: nounwind
declare void @llvm.xpu.mfence.v2(i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.csr_set_sync_group(i32) #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.load_param(i32) #1

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.gm2lm_v3(ptr, ptr addrspace(1), i32, i32) #3

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind memory(none) }
attributes #2 = { nounwind }
attributes #3 = { nounwind memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}
!xpu.annotations = !{!3}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "triton", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly)
!1 = !DIFile(filename: "ca46f2qpdtdpcdncvgckmmemvb2cbrz27bjwvk2v2fvpsar3pqsy.py", directory: "/tmp/b2-product-inductor/a4")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @triton_unk_fused__softmax_add_0, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "triton_unk_fused__softmax_add_0", linkageName: "triton_unk_fused__softmax_add_0", scope: !1, file: !1, line: 21, type: !5, scopeLine: 21, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 43, column: 25, scope: !4)
!8 = !DILocation(line: 38, column: 30, scope: !4)
!9 = !DILocation(line: 38, column: 37, scope: !4)
!10 = !DILocation(line: 37, column: 47, scope: !4)
!11 = !DILocation(line: 37, column: 37, scope: !4)
!12 = !DILocation(line: 37, column: 30, scope: !4)
!13 = !DILocation(line: 39, column: 18, scope: !4)
!14 = !DILocation(line: 42, column: 18, scope: !4)
!15 = !DILocation(line: 47, column: 21, scope: !4)
!16 = !DILocation(line: 48, column: 19, scope: !4)
!17 = !DILocation(line: 49, column: 25, scope: !4)
!18 = !DILocation(line: 49, column: 49, scope: !4)
!19 = !DILocation(line: 49, column: 4, scope: !4)
