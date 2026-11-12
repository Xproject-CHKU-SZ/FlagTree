; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

@global_smem = internal unnamed_addr addrspace(2) global [0 x i8] undef, align 8

; Function Attrs: nounwind
define dso_local xpu_kernel void @_tle_row_softmax_preadded_full(ptr addrspace(1) %0, i32 %1, i32 %2, i64 %3, i64 %4, ptr addrspace(1) readnone nocapture %5, i32 %6, i64 %7, ptr addrspace(1) %8, i32 %9, i32 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16) local_unnamed_addr #0 !dbg !4 {
  %18 = tail call i32 @llvm.xpu.core_id(), !dbg !7
  %19 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 32784), i32 %18, !dbg !7
  store float 0.000000e+00, ptr addrspace(2) %19, align 4, !dbg !7
  tail call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  tail call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  %20 = alloca [4 x <16 x float>], align 64, !dbg !12
  %21 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 16384), i32 %18, !dbg !13
  store float 0.000000e+00, ptr addrspace(2) %21, align 4, !dbg !13
  tail call void @llvm.xpu.mfence.v2(i32 7), !dbg !13
  tail call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !13
  %22 = tail call i32 @llvm.xpu.load_param(i32 0)
  %23 = tail call i32 @llvm.xpu.load_param(i32 1)
  %24 = mul i32 %15, %14
  %25 = mul i32 %24, %16
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %17
  %27 = and i32 %18, 3
  %28 = lshr i32 %18, 2
  %29 = and i32 %28, 15
  %30 = zext nneg i32 %29 to i64
  %31 = shl nuw nsw i32 %27, 9
  %32 = zext nneg i32 %31 to i64
  %33 = mul i64 %4, %32
  %34 = sub i32 %2, %31
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 512)
  %37 = shl nuw nsw i32 %36, 2
  %38 = and i32 %18, -4
  %39 = icmp eq i32 %27, 0
  %40 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 16384), i32 %38
  %41 = getelementptr i8, ptr addrspace(2) %40, i32 4
  %42 = getelementptr i8, ptr addrspace(2) %40, i32 8
  %43 = getelementptr i8, ptr addrspace(2) %40, i32 12
  %44 = getelementptr inbounds i8, ptr %20, i32 64
  %45 = getelementptr inbounds i8, ptr %20, i32 128
  %46 = getelementptr inbounds i8, ptr %20, i32 192
  %47 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 32784), i32 %38
  %48 = getelementptr i8, ptr addrspace(2) %47, i32 4
  %49 = getelementptr i8, ptr addrspace(2) %47, i32 8
  %50 = getelementptr i8, ptr addrspace(2) %47, i32 12
  %51 = mul i64 %12, %32
  %52 = sub i32 %10, %31
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0)
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 512)
  %55 = shl nuw nsw i32 %54, 2
  br label %56

56:                                               ; preds = %.lr.ph, %348
  %57 = phi i32 [ %22, %.lr.ph ], [ %388, %348 ]
  %58 = sdiv i32 %57, %16
  %59 = sdiv i32 %58, %15
  %60 = shl i32 %59, 4, !dbg !14
  %61 = alloca [512 x float], align 4, !dbg !14
  %62 = sext i32 %60 to i64, !dbg !15
  %reass.add = or disjoint i64 %62, %30, !dbg !15
  %reass.mul = mul i64 %reass.add, %3, !dbg !15
  %63 = add i64 %reass.mul, %33, !dbg !15
  %64 = or disjoint i32 %60, %29, !dbg !15
  %65 = icmp slt i32 %64, %1, !dbg !15
  %66 = shl i64 %63, 2, !dbg !15
  %67 = getelementptr i8, ptr addrspace(1) %0, i64 %66, !dbg !15
  %68 = select i1 %65, i32 %37, i32 0, !dbg !15
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %61, ptr addrspace(1) %67, i32 0, i32 %68), !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %69 = load <16 x float>, ptr %61, align 64, !dbg !16
  %70 = getelementptr inbounds i8, ptr %61, i32 64, !dbg !16
  %71 = load <16 x float>, ptr %70, align 64, !dbg !16
  %72 = getelementptr inbounds i8, ptr %61, i32 128, !dbg !16
  %73 = load <16 x float>, ptr %72, align 64, !dbg !16
  %74 = getelementptr inbounds i8, ptr %61, i32 192, !dbg !16
  %75 = load <16 x float>, ptr %74, align 64, !dbg !16
  %76 = getelementptr inbounds i8, ptr %61, i32 256, !dbg !16
  %77 = load <16 x float>, ptr %76, align 64, !dbg !16
  %78 = getelementptr inbounds i8, ptr %61, i32 320, !dbg !16
  %79 = load <16 x float>, ptr %78, align 64, !dbg !16
  %80 = getelementptr inbounds i8, ptr %61, i32 384, !dbg !16
  %81 = load <16 x float>, ptr %80, align 64, !dbg !16
  %82 = getelementptr inbounds i8, ptr %61, i32 448, !dbg !16
  %83 = load <16 x float>, ptr %82, align 64, !dbg !16
  %84 = getelementptr inbounds i8, ptr %61, i32 512, !dbg !16
  %85 = load <16 x float>, ptr %84, align 64, !dbg !16
  %86 = getelementptr inbounds i8, ptr %61, i32 576, !dbg !16
  %87 = load <16 x float>, ptr %86, align 64, !dbg !16
  %88 = getelementptr inbounds i8, ptr %61, i32 640, !dbg !16
  %89 = load <16 x float>, ptr %88, align 64, !dbg !16
  %90 = getelementptr inbounds i8, ptr %61, i32 704, !dbg !16
  %91 = load <16 x float>, ptr %90, align 64, !dbg !16
  %92 = getelementptr inbounds i8, ptr %61, i32 768, !dbg !16
  %93 = load <16 x float>, ptr %92, align 64, !dbg !16
  %94 = getelementptr inbounds i8, ptr %61, i32 832, !dbg !16
  %95 = load <16 x float>, ptr %94, align 64, !dbg !16
  %96 = getelementptr inbounds i8, ptr %61, i32 896, !dbg !16
  %97 = load <16 x float>, ptr %96, align 64, !dbg !16
  %98 = getelementptr inbounds i8, ptr %61, i32 960, !dbg !16
  %99 = load <16 x float>, ptr %98, align 64, !dbg !16
  %100 = getelementptr inbounds i8, ptr %61, i32 1024, !dbg !16
  %101 = load <16 x float>, ptr %100, align 64, !dbg !16
  %102 = getelementptr inbounds i8, ptr %61, i32 1088, !dbg !16
  %103 = load <16 x float>, ptr %102, align 64, !dbg !16
  %104 = getelementptr inbounds i8, ptr %61, i32 1152, !dbg !16
  %105 = load <16 x float>, ptr %104, align 64, !dbg !16
  %106 = getelementptr inbounds i8, ptr %61, i32 1216, !dbg !16
  %107 = load <16 x float>, ptr %106, align 64, !dbg !16
  %108 = getelementptr inbounds i8, ptr %61, i32 1280, !dbg !16
  %109 = load <16 x float>, ptr %108, align 64, !dbg !16
  %110 = getelementptr inbounds i8, ptr %61, i32 1344, !dbg !16
  %111 = load <16 x float>, ptr %110, align 64, !dbg !16
  %112 = getelementptr inbounds i8, ptr %61, i32 1408, !dbg !16
  %113 = load <16 x float>, ptr %112, align 64, !dbg !16
  %114 = getelementptr inbounds i8, ptr %61, i32 1472, !dbg !16
  %115 = load <16 x float>, ptr %114, align 64, !dbg !16
  %116 = getelementptr inbounds i8, ptr %61, i32 1536, !dbg !16
  %117 = load <16 x float>, ptr %116, align 64, !dbg !16
  %118 = getelementptr inbounds i8, ptr %61, i32 1600, !dbg !16
  %119 = load <16 x float>, ptr %118, align 64, !dbg !16
  %120 = getelementptr inbounds i8, ptr %61, i32 1664, !dbg !16
  %121 = load <16 x float>, ptr %120, align 64, !dbg !16
  %122 = getelementptr inbounds i8, ptr %61, i32 1728, !dbg !16
  %123 = load <16 x float>, ptr %122, align 64, !dbg !16
  %124 = getelementptr inbounds i8, ptr %61, i32 1792, !dbg !16
  %125 = load <16 x float>, ptr %124, align 64, !dbg !16
  %126 = getelementptr inbounds i8, ptr %61, i32 1856, !dbg !16
  %127 = load <16 x float>, ptr %126, align 64, !dbg !16
  %128 = getelementptr inbounds i8, ptr %61, i32 1920, !dbg !16
  %129 = load <16 x float>, ptr %128, align 64, !dbg !16
  %130 = getelementptr inbounds i8, ptr %61, i32 1984, !dbg !16
  %131 = load <16 x float>, ptr %130, align 64, !dbg !16
  %132 = call i32 @llvm.xpu.load_param(i32 2), !dbg !13
  %133 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %69, <16 x float> %71) #2, !dbg !13
  %134 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %133, <16 x float> %73) #2, !dbg !13
  %135 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %134, <16 x float> %75) #2, !dbg !13
  %136 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %135, <16 x float> %77) #2, !dbg !13
  %137 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %136, <16 x float> %79) #2, !dbg !13
  %138 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %137, <16 x float> %81) #2, !dbg !13
  %139 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %138, <16 x float> %83) #2, !dbg !13
  %140 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %139, <16 x float> %85) #2, !dbg !13
  %141 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %140, <16 x float> %87) #2, !dbg !13
  %142 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %141, <16 x float> %89) #2, !dbg !13
  %143 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %142, <16 x float> %91) #2, !dbg !13
  %144 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %143, <16 x float> %93) #2, !dbg !13
  %145 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %144, <16 x float> %95) #2, !dbg !13
  %146 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %145, <16 x float> %97) #2, !dbg !13
  %147 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %146, <16 x float> %99) #2, !dbg !13
  %148 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %147, <16 x float> %101) #2, !dbg !13
  %149 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %148, <16 x float> %103) #2, !dbg !13
  %150 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %149, <16 x float> %105) #2, !dbg !13
  %151 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %150, <16 x float> %107) #2, !dbg !13
  %152 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %151, <16 x float> %109) #2, !dbg !13
  %153 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %152, <16 x float> %111) #2, !dbg !13
  %154 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %153, <16 x float> %113) #2, !dbg !13
  %155 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %154, <16 x float> %115) #2, !dbg !13
  %156 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %155, <16 x float> %117) #2, !dbg !13
  %157 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %156, <16 x float> %119) #2, !dbg !13
  %158 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %157, <16 x float> %121) #2, !dbg !13
  %159 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %158, <16 x float> %123) #2, !dbg !13
  %160 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %159, <16 x float> %125) #2, !dbg !13
  %161 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %160, <16 x float> %127) #2, !dbg !13
  %162 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %161, <16 x float> %129) #2, !dbg !13
  %163 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %162, <16 x float> %131) #2, !dbg !13
  %164 = extractelement <16 x float> %163, i64 0, !dbg !13
  %165 = extractelement <16 x float> %163, i64 1, !dbg !13
  %166 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %164, float %165) #2, !dbg !13
  %167 = extractelement <16 x float> %163, i64 2, !dbg !13
  %168 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %166, float %167) #2, !dbg !13
  %169 = extractelement <16 x float> %163, i64 3, !dbg !13
  %170 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %168, float %169) #2, !dbg !13
  %171 = extractelement <16 x float> %163, i64 4, !dbg !13
  %172 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %170, float %171) #2, !dbg !13
  %173 = extractelement <16 x float> %163, i64 5, !dbg !13
  %174 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %172, float %173) #2, !dbg !13
  %175 = extractelement <16 x float> %163, i64 6, !dbg !13
  %176 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %174, float %175) #2, !dbg !13
  %177 = extractelement <16 x float> %163, i64 7, !dbg !13
  %178 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %176, float %177) #2, !dbg !13
  %179 = extractelement <16 x float> %163, i64 8, !dbg !13
  %180 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %178, float %179) #2, !dbg !13
  %181 = extractelement <16 x float> %163, i64 9, !dbg !13
  %182 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %180, float %181) #2, !dbg !13
  %183 = extractelement <16 x float> %163, i64 10, !dbg !13
  %184 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %182, float %183) #2, !dbg !13
  %185 = extractelement <16 x float> %163, i64 11, !dbg !13
  %186 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %184, float %185) #2, !dbg !13
  %187 = extractelement <16 x float> %163, i64 12, !dbg !13
  %188 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %186, float %187) #2, !dbg !13
  %189 = extractelement <16 x float> %163, i64 13, !dbg !13
  %190 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %188, float %189) #2, !dbg !13
  %191 = extractelement <16 x float> %163, i64 14, !dbg !13
  %192 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %190, float %191) #2, !dbg !13
  %193 = extractelement <16 x float> %163, i64 15, !dbg !13
  %194 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %192, float %193) #2, !dbg !13
  store float %194, ptr addrspace(2) %21, align 4, !dbg !13
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !13
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !13
  br i1 %39, label %195, label %203, !dbg !13

195:                                              ; preds = %56
  %196 = load float, ptr addrspace(2) %40, align 8, !dbg !13
  %197 = load float, ptr addrspace(2) %41, align 4, !dbg !13
  %198 = load float, ptr addrspace(2) %42, align 8, !dbg !13
  %199 = load float, ptr addrspace(2) %43, align 4, !dbg !13
  %200 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %196, float %197) #2, !dbg !13
  %201 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %200, float %198) #2, !dbg !13
  %202 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %201, float %199) #2, !dbg !13
  store float %202, ptr addrspace(2) %40, align 8, !dbg !13
  br label %203, !dbg !13

203:                                              ; preds = %195, %56
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !13
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !13
  %204 = load float, ptr addrspace(2) %40, align 8, !dbg !13
  %205 = fneg float %204, !dbg !17
  %206 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %69) #2, !dbg !17
  %207 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %71) #2, !dbg !17
  %208 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %73) #2, !dbg !17
  %209 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %75) #2, !dbg !17
  %210 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %77) #2, !dbg !17
  %211 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %79) #2, !dbg !17
  %212 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %81) #2, !dbg !17
  %213 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %83) #2, !dbg !17
  %214 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %85) #2, !dbg !17
  %215 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %87) #2, !dbg !17
  %216 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %89) #2, !dbg !17
  %217 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %91) #2, !dbg !17
  %218 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %93) #2, !dbg !17
  %219 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %95) #2, !dbg !17
  %220 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %97) #2, !dbg !17
  %221 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %99) #2, !dbg !17
  %222 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %101) #2, !dbg !17
  %223 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %103) #2, !dbg !17
  %224 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %105) #2, !dbg !17
  %225 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %107) #2, !dbg !17
  %226 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %109) #2, !dbg !17
  %227 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %111) #2, !dbg !17
  %228 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %113) #2, !dbg !17
  %229 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %115) #2, !dbg !17
  %230 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %117) #2, !dbg !17
  %231 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %119) #2, !dbg !17
  %232 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %121) #2, !dbg !17
  %233 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %123) #2, !dbg !17
  %234 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %125) #2, !dbg !17
  %235 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %127) #2, !dbg !17
  %236 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %129) #2, !dbg !17
  %237 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %205, <16 x float> %131) #2, !dbg !17
  store volatile <16 x float> %206, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %207, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %208, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %209, ptr %46, align 64, !dbg !12
  %238 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %239 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %240 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %241 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %242 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %210, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %211, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %212, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %213, ptr %46, align 64, !dbg !12
  %243 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %244 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %245 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %246 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %247 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %214, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %215, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %216, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %217, ptr %46, align 64, !dbg !12
  %248 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %249 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %250 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %251 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %252 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %218, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %219, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %220, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %221, ptr %46, align 64, !dbg !12
  %253 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %254 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %255 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %256 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %257 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %222, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %223, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %224, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %225, ptr %46, align 64, !dbg !12
  %258 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %259 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %260 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %261 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %262 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %226, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %227, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %228, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %229, ptr %46, align 64, !dbg !12
  %263 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %264 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %265 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %266 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %267 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %230, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %231, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %232, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %233, ptr %46, align 64, !dbg !12
  %268 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %269 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %270 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %271 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %272 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  store volatile <16 x float> %234, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %235, ptr %44, align 64, !dbg !12
  store volatile <16 x float> %236, ptr %45, align 64, !dbg !12
  store volatile <16 x float> %237, ptr %46, align 64, !dbg !12
  %273 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %274 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %275 = load volatile <16 x float>, ptr %44, align 64, !dbg !12
  %276 = load volatile <16 x float>, ptr %45, align 64, !dbg !12
  %277 = load volatile <16 x float>, ptr %46, align 64, !dbg !12
  %278 = fadd <16 x float> %239, %240, !dbg !7
  %279 = fadd <16 x float> %278, %241, !dbg !7
  %280 = fadd <16 x float> %279, %242, !dbg !7
  %281 = fadd <16 x float> %280, %244, !dbg !7
  %282 = fadd <16 x float> %281, %245, !dbg !7
  %283 = fadd <16 x float> %282, %246, !dbg !7
  %284 = fadd <16 x float> %283, %247, !dbg !7
  %285 = fadd <16 x float> %284, %249, !dbg !7
  %286 = fadd <16 x float> %285, %250, !dbg !7
  %287 = fadd <16 x float> %286, %251, !dbg !7
  %288 = fadd <16 x float> %287, %252, !dbg !7
  %289 = fadd <16 x float> %288, %254, !dbg !7
  %290 = fadd <16 x float> %289, %255, !dbg !7
  %291 = fadd <16 x float> %290, %256, !dbg !7
  %292 = fadd <16 x float> %291, %257, !dbg !7
  %293 = fadd <16 x float> %292, %259, !dbg !7
  %294 = fadd <16 x float> %293, %260, !dbg !7
  %295 = fadd <16 x float> %294, %261, !dbg !7
  %296 = fadd <16 x float> %295, %262, !dbg !7
  %297 = fadd <16 x float> %296, %264, !dbg !7
  %298 = fadd <16 x float> %297, %265, !dbg !7
  %299 = fadd <16 x float> %298, %266, !dbg !7
  %300 = fadd <16 x float> %299, %267, !dbg !7
  %301 = fadd <16 x float> %300, %269, !dbg !7
  %302 = fadd <16 x float> %301, %270, !dbg !7
  %303 = fadd <16 x float> %302, %271, !dbg !7
  %304 = fadd <16 x float> %303, %272, !dbg !7
  %305 = fadd <16 x float> %304, %274, !dbg !7
  %306 = fadd <16 x float> %305, %275, !dbg !7
  %307 = fadd <16 x float> %306, %276, !dbg !7
  %308 = fadd <16 x float> %307, %277, !dbg !7
  %309 = extractelement <16 x float> %308, i64 0, !dbg !7
  %310 = extractelement <16 x float> %308, i64 1, !dbg !7
  %311 = fadd float %309, %310, !dbg !7
  %312 = extractelement <16 x float> %308, i64 2, !dbg !7
  %313 = fadd float %312, %311, !dbg !7
  %314 = extractelement <16 x float> %308, i64 3, !dbg !7
  %315 = fadd float %314, %313, !dbg !7
  %316 = extractelement <16 x float> %308, i64 4, !dbg !7
  %317 = fadd float %316, %315, !dbg !7
  %318 = extractelement <16 x float> %308, i64 5, !dbg !7
  %319 = fadd float %318, %317, !dbg !7
  %320 = extractelement <16 x float> %308, i64 6, !dbg !7
  %321 = fadd float %320, %319, !dbg !7
  %322 = extractelement <16 x float> %308, i64 7, !dbg !7
  %323 = fadd float %322, %321, !dbg !7
  %324 = extractelement <16 x float> %308, i64 8, !dbg !7
  %325 = fadd float %324, %323, !dbg !7
  %326 = extractelement <16 x float> %308, i64 9, !dbg !7
  %327 = fadd float %326, %325, !dbg !7
  %328 = extractelement <16 x float> %308, i64 10, !dbg !7
  %329 = fadd float %328, %327, !dbg !7
  %330 = extractelement <16 x float> %308, i64 11, !dbg !7
  %331 = fadd float %330, %329, !dbg !7
  %332 = extractelement <16 x float> %308, i64 12, !dbg !7
  %333 = fadd float %332, %331, !dbg !7
  %334 = extractelement <16 x float> %308, i64 13, !dbg !7
  %335 = fadd float %334, %333, !dbg !7
  %336 = extractelement <16 x float> %308, i64 14, !dbg !7
  %337 = fadd float %336, %335, !dbg !7
  %338 = extractelement <16 x float> %308, i64 15, !dbg !7
  %339 = fadd float %338, %337, !dbg !7
  store float %339, ptr addrspace(2) %19, align 4, !dbg !7
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  br i1 %39, label %340, label %348, !dbg !7

340:                                              ; preds = %203
  %341 = load float, ptr addrspace(2) %47, align 8, !dbg !7
  %342 = load float, ptr addrspace(2) %48, align 4, !dbg !7
  %343 = load float, ptr addrspace(2) %49, align 8, !dbg !7
  %344 = load float, ptr addrspace(2) %50, align 4, !dbg !7
  %345 = fadd float %341, %342, !dbg !7
  %346 = fadd float %345, %343, !dbg !7
  %347 = fadd float %346, %344, !dbg !7
  store float %347, ptr addrspace(2) %47, align 8, !dbg !7
  br label %348, !dbg !7

348:                                              ; preds = %340, %203
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  %349 = load float, ptr addrspace(2) %47, align 8, !dbg !7
  %350 = fdiv float 1.000000e+00, %349, !dbg !18
  %351 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %239) #2, !dbg !19
  %352 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %240) #2, !dbg !19
  %353 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %241) #2, !dbg !19
  %354 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %242) #2, !dbg !19
  %355 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %244) #2, !dbg !19
  %356 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %245) #2, !dbg !19
  %357 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %246) #2, !dbg !19
  %358 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %247) #2, !dbg !19
  %359 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %249) #2, !dbg !19
  %360 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %250) #2, !dbg !19
  %361 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %251) #2, !dbg !19
  %362 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %252) #2, !dbg !19
  %363 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %254) #2, !dbg !19
  %364 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %255) #2, !dbg !19
  %365 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %256) #2, !dbg !19
  %366 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %257) #2, !dbg !19
  %367 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %259) #2, !dbg !19
  %368 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %260) #2, !dbg !19
  %369 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %261) #2, !dbg !19
  %370 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %262) #2, !dbg !19
  %371 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %264) #2, !dbg !19
  %372 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %265) #2, !dbg !19
  %373 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %266) #2, !dbg !19
  %374 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %267) #2, !dbg !19
  %375 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %269) #2, !dbg !19
  %376 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %270) #2, !dbg !19
  %377 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %271) #2, !dbg !19
  %378 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %272) #2, !dbg !19
  %379 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %274) #2, !dbg !19
  %380 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %275) #2, !dbg !19
  %381 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %276) #2, !dbg !19
  %382 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %350, <16 x float> %277) #2, !dbg !19
  store <16 x float> %351, ptr %61, align 64, !dbg !20
  store <16 x float> %352, ptr %70, align 64, !dbg !20
  store <16 x float> %353, ptr %72, align 64, !dbg !20
  store <16 x float> %354, ptr %74, align 64, !dbg !20
  store <16 x float> %355, ptr %76, align 64, !dbg !20
  store <16 x float> %356, ptr %78, align 64, !dbg !20
  store <16 x float> %357, ptr %80, align 64, !dbg !20
  store <16 x float> %358, ptr %82, align 64, !dbg !20
  store <16 x float> %359, ptr %84, align 64, !dbg !20
  store <16 x float> %360, ptr %86, align 64, !dbg !20
  store <16 x float> %361, ptr %88, align 64, !dbg !20
  store <16 x float> %362, ptr %90, align 64, !dbg !20
  store <16 x float> %363, ptr %92, align 64, !dbg !20
  store <16 x float> %364, ptr %94, align 64, !dbg !20
  store <16 x float> %365, ptr %96, align 64, !dbg !20
  store <16 x float> %366, ptr %98, align 64, !dbg !20
  store <16 x float> %367, ptr %100, align 64, !dbg !20
  store <16 x float> %368, ptr %102, align 64, !dbg !20
  store <16 x float> %369, ptr %104, align 64, !dbg !20
  store <16 x float> %370, ptr %106, align 64, !dbg !20
  store <16 x float> %371, ptr %108, align 64, !dbg !20
  store <16 x float> %372, ptr %110, align 64, !dbg !20
  store <16 x float> %373, ptr %112, align 64, !dbg !20
  store <16 x float> %374, ptr %114, align 64, !dbg !20
  store <16 x float> %375, ptr %116, align 64, !dbg !20
  store <16 x float> %376, ptr %118, align 64, !dbg !20
  store <16 x float> %377, ptr %120, align 64, !dbg !20
  store <16 x float> %378, ptr %122, align 64, !dbg !20
  store <16 x float> %379, ptr %124, align 64, !dbg !20
  store <16 x float> %380, ptr %126, align 64, !dbg !20
  store <16 x float> %381, ptr %128, align 64, !dbg !20
  store <16 x float> %382, ptr %130, align 64, !dbg !20
  %reass.mul2 = mul i64 %reass.add, %11, !dbg !15
  %383 = add i64 %reass.mul2, %51, !dbg !15
  %384 = icmp slt i32 %64, %9, !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %385 = shl i64 %383, 2, !dbg !15
  %386 = getelementptr i8, ptr addrspace(1) %8, i64 %385, !dbg !15
  %387 = select i1 %384, i32 %55, i32 0, !dbg !15
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %386, ptr nonnull %61, i32 0, i32 %387), !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %388 = add i32 %57, %23
  %389 = icmp slt i32 %388, %25
  br i1 %389, label %56, label %._crit_edge

._crit_edge:                                      ; preds = %348, %17
  ret void, !dbg !21
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.core_id() #1

; Function Attrs: nounwind
declare void @llvm.xpu.mfence.v2(i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.csr_set_sync_group(i32) #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.load_param(i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.gm2lm_v3(ptr, ptr addrspace(1), i32, i32) #4

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind memory(none) }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}
!xpu.annotations = !{!3}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "triton", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly)
!1 = !DIFile(filename: "preadded_full.py", directory: "/tmp")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @_tle_row_softmax_preadded_full, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "_tle_row_softmax_preadded_full", linkageName: "_tle_row_softmax_preadded_full", scope: !1, file: !1, line: 335, type: !5, scopeLine: 335, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 296, column: 36, scope: !8, inlinedAt: !10)
!8 = distinct !DILexicalBlockFile(scope: !4, file: !9, discriminator: 0)
!9 = !DIFile(filename: "standard.py", directory: "/opt/hsp/triton/language")
!10 = !DILocation(line: 355, column: 18, scope: !11)
!11 = distinct !DILexicalBlockFile(scope: !4, file: !1, discriminator: 0)
!12 = !DILocation(line: 354, column: 15, scope: !4)
!13 = !DILocation(line: 353, column: 24, scope: !4)
!14 = !DILocation(line: 342, column: 20, scope: !4)
!15 = !DILocation(line: 335, scope: !4)
!16 = !DILocation(line: 352, column: 16, scope: !4)
!17 = !DILocation(line: 354, column: 19, scope: !4)
!18 = !DILocation(line: 356, column: 25, scope: !4)
!19 = !DILocation(line: 357, column: 21, scope: !4)
!20 = !DILocation(line: 357, column: 16, scope: !4)
!21 = !DILocation(line: 358, column: 4, scope: !4)
