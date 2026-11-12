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
  %63 = alloca [128 x float], align 64, !dbg !9
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %63, ptr addrspace(1) %21, i32 0, i32 512), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1)
  br label %64

64:                                               ; preds = %.lr.ph, %245
  %65 = phi i32 [ %13, %.lr.ph ], [ %246, %245 ]
  %66 = sdiv i32 %65, %7
  %67 = sdiv i32 %66, %6
  %68 = alloca [128 x float], align 4, !dbg !10
  %69 = shl i32 %67, 14
  %70 = add i32 %24, %69
  %71 = getelementptr inbounds i8, ptr %68, i32 64
  %72 = getelementptr inbounds i8, ptr %68, i32 128
  %73 = getelementptr inbounds i8, ptr %68, i32 192
  %74 = getelementptr inbounds i8, ptr %68, i32 256
  %75 = getelementptr inbounds i8, ptr %68, i32 320
  %76 = getelementptr inbounds i8, ptr %68, i32 384
  %77 = getelementptr inbounds i8, ptr %68, i32 448
  %78 = getelementptr inbounds i8, ptr %63, i32 64
  %79 = getelementptr inbounds i8, ptr %63, i32 128
  %80 = getelementptr inbounds i8, ptr %63, i32 192
  %81 = getelementptr inbounds i8, ptr %63, i32 256
  %82 = getelementptr inbounds i8, ptr %63, i32 320
  %83 = getelementptr inbounds i8, ptr %63, i32 384
  %84 = getelementptr inbounds i8, ptr %63, i32 448
  br label %85

85:                                               ; preds = %64, %233
  %86 = phi i1 [ true, %64 ], [ false, %233 ]
  %87 = phi i32 [ 0, %64 ], [ 8192, %233 ]
  %88 = add i32 %70, %87, !dbg !11
  %89 = sext i32 %88 to i64, !dbg !12
  %90 = getelementptr float, ptr addrspace(1) %0, i64 %89, !dbg !12
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %68, ptr addrspace(1) %90, i32 0, i32 512), !dbg !10
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !10
  %91 = load <16 x float>, ptr %68, align 64, !dbg !10
  %92 = load <16 x float>, ptr %71, align 64, !dbg !10
  %93 = load <16 x float>, ptr %72, align 64, !dbg !10
  %94 = load <16 x float>, ptr %73, align 64, !dbg !10
  %95 = load <16 x float>, ptr %74, align 64, !dbg !10
  %96 = load <16 x float>, ptr %75, align 64, !dbg !10
  %97 = load <16 x float>, ptr %76, align 64, !dbg !10
  %98 = load <16 x float>, ptr %77, align 64, !dbg !10
  %99 = load <16 x float>, ptr %63, align 64, !dbg !13
  %100 = load <16 x float>, ptr %78, align 64, !dbg !13
  %101 = load <16 x float>, ptr %79, align 64, !dbg !13
  %102 = load <16 x float>, ptr %80, align 64, !dbg !13
  %103 = load <16 x float>, ptr %81, align 64, !dbg !13
  %104 = load <16 x float>, ptr %82, align 64, !dbg !13
  %105 = load <16 x float>, ptr %83, align 64, !dbg !13
  %106 = load <16 x float>, ptr %84, align 64, !dbg !13
  %107 = fadd <16 x float> %91, %99, !dbg !13
  %108 = fadd <16 x float> %92, %100, !dbg !13
  %109 = fadd <16 x float> %93, %101, !dbg !13
  %110 = fadd <16 x float> %94, %102, !dbg !13
  %111 = fadd <16 x float> %95, %103, !dbg !13
  %112 = fadd <16 x float> %96, %104, !dbg !13
  %113 = fadd <16 x float> %97, %105, !dbg !13
  %114 = fadd <16 x float> %98, %106, !dbg !13
  %115 = call i32 @llvm.xpu.load_param(i32 2)
  %116 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %107, <16 x float> %108) #2
  %117 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %116, <16 x float> %109) #2
  %118 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %117, <16 x float> %110) #2
  %119 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %118, <16 x float> %111) #2
  %120 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %119, <16 x float> %112) #2
  %121 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %120, <16 x float> %113) #2
  %122 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %121, <16 x float> %114) #2
  %123 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 256, <16 x float> %122) #2
  %124 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %122, <16 x float> %123) #2
  %125 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 128, <16 x float> %124) #2
  %126 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %124, <16 x float> %125) #2
  %127 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 64, <16 x float> %126) #2
  %128 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %126, <16 x float> %127) #2
  %129 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 32, <16 x float> %128) #2
  %130 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %128, <16 x float> %129) #2
  %131 = extractelement <16 x float> %130, i64 0
  store float %131, ptr addrspace(2) %12, align 4
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  br i1 %27, label %132, label %164

132:                                              ; preds = %85
  %133 = load float, ptr addrspace(2) %28, align 8
  %134 = load float, ptr addrspace(2) %29, align 4
  %135 = load float, ptr addrspace(2) %30, align 8
  %136 = load float, ptr addrspace(2) %31, align 4
  %137 = load float, ptr addrspace(2) %32, align 8
  %138 = load float, ptr addrspace(2) %33, align 4
  %139 = load float, ptr addrspace(2) %34, align 8
  %140 = load float, ptr addrspace(2) %35, align 4
  %141 = load float, ptr addrspace(2) %36, align 8
  %142 = load float, ptr addrspace(2) %37, align 4
  %143 = load float, ptr addrspace(2) %38, align 8
  %144 = load float, ptr addrspace(2) %39, align 4
  %145 = load float, ptr addrspace(2) %40, align 8
  %146 = load float, ptr addrspace(2) %41, align 4
  %147 = load float, ptr addrspace(2) %42, align 8
  %148 = load float, ptr addrspace(2) %43, align 4
  %149 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %133, float %134) #2
  %150 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %149, float %135) #2
  %151 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %150, float %136) #2
  %152 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %151, float %137) #2
  %153 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %152, float %138) #2
  %154 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %153, float %139) #2
  %155 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %154, float %140) #2
  %156 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %155, float %141) #2
  %157 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %156, float %142) #2
  %158 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %157, float %143) #2
  %159 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %158, float %144) #2
  %160 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %159, float %145) #2
  %161 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %160, float %146) #2
  %162 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %161, float %147) #2
  %163 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %162, float %148) #2
  store float %163, ptr addrspace(2) %28, align 8
  br label %164

164:                                              ; preds = %132, %85
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  %165 = load float, ptr addrspace(2) %28, align 8
  %166 = fneg float %165, !dbg !14
  %167 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %107) #2, !dbg !14
  %168 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %108) #2, !dbg !14
  %169 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %109) #2, !dbg !14
  %170 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %110) #2, !dbg !14
  %171 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %111) #2, !dbg !14
  %172 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %112) #2, !dbg !14
  %173 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %113) #2, !dbg !14
  %174 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %166, <16 x float> %114) #2, !dbg !14
  store volatile <16 x float> %167, ptr %11, align 64, !dbg !7
  store volatile <16 x float> %168, ptr %44, align 64, !dbg !7
  store volatile <16 x float> %169, ptr %45, align 64, !dbg !7
  store volatile <16 x float> %170, ptr %46, align 64, !dbg !7
  %175 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %11) #2, !dbg !7
  %176 = load volatile <16 x float>, ptr %11, align 64, !dbg !7
  %177 = load volatile <16 x float>, ptr %44, align 64, !dbg !7
  %178 = load volatile <16 x float>, ptr %45, align 64, !dbg !7
  %179 = load volatile <16 x float>, ptr %46, align 64, !dbg !7
  store volatile <16 x float> %171, ptr %11, align 64, !dbg !7
  store volatile <16 x float> %172, ptr %44, align 64, !dbg !7
  store volatile <16 x float> %173, ptr %45, align 64, !dbg !7
  store volatile <16 x float> %174, ptr %46, align 64, !dbg !7
  %180 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %11) #2, !dbg !7
  %181 = load volatile <16 x float>, ptr %11, align 64, !dbg !7
  %182 = load volatile <16 x float>, ptr %44, align 64, !dbg !7
  %183 = load volatile <16 x float>, ptr %45, align 64, !dbg !7
  %184 = load volatile <16 x float>, ptr %46, align 64, !dbg !7
  %185 = fadd <16 x float> %176, %177
  %186 = fadd <16 x float> %185, %178
  %187 = fadd <16 x float> %186, %179
  %188 = fadd <16 x float> %187, %181
  %189 = fadd <16 x float> %188, %182
  %190 = fadd <16 x float> %189, %183
  %191 = fadd <16 x float> %190, %184
  %192 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 256, <16 x float> %191) #2
  %193 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %191, <16 x float> %192) #2
  %194 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 128, <16 x float> %193) #2
  %195 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %193, <16 x float> %194) #2
  %196 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 64, <16 x float> %195) #2
  %197 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %195, <16 x float> %196) #2
  %198 = call <16 x float> asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 32, <16 x float> %197) #2
  %199 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %197, <16 x float> %198) #2
  %200 = extractelement <16 x float> %199, i64 0
  store float %200, ptr addrspace(2) %10, align 4
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  br i1 %27, label %201, label %233

201:                                              ; preds = %164
  %202 = load float, ptr addrspace(2) %47, align 8
  %203 = load float, ptr addrspace(2) %48, align 4
  %204 = load float, ptr addrspace(2) %49, align 8
  %205 = load float, ptr addrspace(2) %50, align 4
  %206 = load float, ptr addrspace(2) %51, align 8
  %207 = load float, ptr addrspace(2) %52, align 4
  %208 = load float, ptr addrspace(2) %53, align 8
  %209 = load float, ptr addrspace(2) %54, align 4
  %210 = load float, ptr addrspace(2) %55, align 8
  %211 = load float, ptr addrspace(2) %56, align 4
  %212 = load float, ptr addrspace(2) %57, align 8
  %213 = load float, ptr addrspace(2) %58, align 4
  %214 = load float, ptr addrspace(2) %59, align 8
  %215 = load float, ptr addrspace(2) %60, align 4
  %216 = load float, ptr addrspace(2) %61, align 8
  %217 = load float, ptr addrspace(2) %62, align 4
  %218 = fadd float %202, %203
  %219 = fadd float %218, %204
  %220 = fadd float %219, %205
  %221 = fadd float %220, %206
  %222 = fadd float %221, %207
  %223 = fadd float %222, %208
  %224 = fadd float %223, %209
  %225 = fadd float %224, %210
  %226 = fadd float %225, %211
  %227 = fadd float %226, %212
  %228 = fadd float %227, %213
  %229 = fadd float %228, %214
  %230 = fadd float %229, %215
  %231 = fadd float %230, %216
  %232 = fadd float %231, %217
  store float %232, ptr addrspace(2) %47, align 8
  br label %233

233:                                              ; preds = %201, %164
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.xpu.csr_set_sync_group(i32 65535)
  %234 = load float, ptr addrspace(2) %47, align 8
  %235 = fdiv float 1.000000e+00, %234, !dbg !15
  %236 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %176) #2, !dbg !16
  %237 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %177) #2, !dbg !16
  %238 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %178) #2, !dbg !16
  %239 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %179) #2, !dbg !16
  %240 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %181) #2, !dbg !16
  %241 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %182) #2, !dbg !16
  %242 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %183) #2, !dbg !16
  %243 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %235, <16 x float> %184) #2, !dbg !16
  %244 = getelementptr float, ptr addrspace(1) %2, i64 %89, !dbg !17
  store <16 x float> %236, ptr %68, align 64, !dbg !18
  store <16 x float> %237, ptr %71, align 64, !dbg !18
  store <16 x float> %238, ptr %72, align 64, !dbg !18
  store <16 x float> %239, ptr %73, align 64, !dbg !18
  store <16 x float> %240, ptr %74, align 64, !dbg !18
  store <16 x float> %241, ptr %75, align 64, !dbg !18
  store <16 x float> %242, ptr %76, align 64, !dbg !18
  store <16 x float> %243, ptr %77, align 64, !dbg !18
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !18
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %244, ptr nonnull %68, i32 0, i32 512), !dbg !18
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !18
  br i1 %86, label %85, label %245

245:                                              ; preds = %233
  %246 = add i32 %65, %14
  %247 = icmp slt i32 %246, %16
  br i1 %247, label %64, label %._crit_edge

._crit_edge:                                      ; preds = %245, %8
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
!1 = !DIFile(filename: "cpt6hx7svf7up6l4blfmif2hy5y55evhn3pfapaawixabz3xddw5.py", directory: "/tmp/b2-row-inductor/pt")
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
