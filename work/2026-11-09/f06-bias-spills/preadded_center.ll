; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

@global_smem = internal unnamed_addr addrspace(2) global [0 x i8] undef, align 8

; Function Attrs: nounwind
define dso_local xpu_kernel void @_tle_row_softmax_preadded_center(ptr addrspace(1) %0, i32 %1, i32 %2, i64 %3, i64 %4, ptr addrspace(1) readnone nocapture %5, i32 %6, i64 %7, ptr addrspace(1) %8, i32 %9, i32 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16) local_unnamed_addr #0 !dbg !4 {
  %18 = tail call i32 @llvm.xpu.core_id(), !dbg !7
  %19 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 16384), i32 %18, !dbg !7
  store float 0.000000e+00, ptr addrspace(2) %19, align 4, !dbg !7
  tail call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  tail call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  %20 = tail call i32 @llvm.xpu.load_param(i32 0)
  %21 = tail call i32 @llvm.xpu.load_param(i32 1)
  %22 = mul i32 %15, %14
  %23 = mul i32 %22, %16
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %17
  %25 = and i32 %18, 3
  %26 = lshr i32 %18, 2
  %27 = and i32 %26, 15
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw nsw i32 %25, 9
  %30 = zext nneg i32 %29 to i64
  %31 = mul i64 %4, %30
  %32 = sub i32 %2, %29
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0)
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 512)
  %35 = shl nuw nsw i32 %34, 2
  %36 = and i32 %18, -4
  %37 = icmp eq i32 %25, 0
  %38 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 16384), i32 %36
  %39 = getelementptr i8, ptr addrspace(2) %38, i32 4
  %40 = getelementptr i8, ptr addrspace(2) %38, i32 8
  %41 = getelementptr i8, ptr addrspace(2) %38, i32 12
  %42 = mul i64 %12, %30
  %43 = sub i32 %10, %29
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 512)
  %46 = shl nuw nsw i32 %45, 2
  br label %47

47:                                               ; preds = %.lr.ph, %194
  %48 = phi i32 [ %20, %.lr.ph ], [ %234, %194 ]
  %49 = sdiv i32 %48, %16
  %50 = sdiv i32 %49, %15
  %51 = shl i32 %50, 4, !dbg !8
  %52 = alloca [512 x float], align 4, !dbg !8
  %53 = sext i32 %51 to i64, !dbg !9
  %reass.add = or disjoint i64 %53, %28, !dbg !9
  %reass.mul = mul i64 %reass.add, %3, !dbg !9
  %54 = add i64 %reass.mul, %31, !dbg !9
  %55 = or disjoint i32 %51, %27, !dbg !9
  %56 = icmp slt i32 %55, %1, !dbg !9
  %57 = shl i64 %54, 2, !dbg !9
  %58 = getelementptr i8, ptr addrspace(1) %0, i64 %57, !dbg !9
  %59 = select i1 %56, i32 %35, i32 0, !dbg !9
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %52, ptr addrspace(1) %58, i32 0, i32 %59), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %60 = load <16 x float>, ptr %52, align 64, !dbg !10
  %61 = getelementptr inbounds i8, ptr %52, i32 64, !dbg !10
  %62 = load <16 x float>, ptr %61, align 64, !dbg !10
  %63 = getelementptr inbounds i8, ptr %52, i32 128, !dbg !10
  %64 = load <16 x float>, ptr %63, align 64, !dbg !10
  %65 = getelementptr inbounds i8, ptr %52, i32 192, !dbg !10
  %66 = load <16 x float>, ptr %65, align 64, !dbg !10
  %67 = getelementptr inbounds i8, ptr %52, i32 256, !dbg !10
  %68 = load <16 x float>, ptr %67, align 64, !dbg !10
  %69 = getelementptr inbounds i8, ptr %52, i32 320, !dbg !10
  %70 = load <16 x float>, ptr %69, align 64, !dbg !10
  %71 = getelementptr inbounds i8, ptr %52, i32 384, !dbg !10
  %72 = load <16 x float>, ptr %71, align 64, !dbg !10
  %73 = getelementptr inbounds i8, ptr %52, i32 448, !dbg !10
  %74 = load <16 x float>, ptr %73, align 64, !dbg !10
  %75 = getelementptr inbounds i8, ptr %52, i32 512, !dbg !10
  %76 = load <16 x float>, ptr %75, align 64, !dbg !10
  %77 = getelementptr inbounds i8, ptr %52, i32 576, !dbg !10
  %78 = load <16 x float>, ptr %77, align 64, !dbg !10
  %79 = getelementptr inbounds i8, ptr %52, i32 640, !dbg !10
  %80 = load <16 x float>, ptr %79, align 64, !dbg !10
  %81 = getelementptr inbounds i8, ptr %52, i32 704, !dbg !10
  %82 = load <16 x float>, ptr %81, align 64, !dbg !10
  %83 = getelementptr inbounds i8, ptr %52, i32 768, !dbg !10
  %84 = load <16 x float>, ptr %83, align 64, !dbg !10
  %85 = getelementptr inbounds i8, ptr %52, i32 832, !dbg !10
  %86 = load <16 x float>, ptr %85, align 64, !dbg !10
  %87 = getelementptr inbounds i8, ptr %52, i32 896, !dbg !10
  %88 = load <16 x float>, ptr %87, align 64, !dbg !10
  %89 = getelementptr inbounds i8, ptr %52, i32 960, !dbg !10
  %90 = load <16 x float>, ptr %89, align 64, !dbg !10
  %91 = getelementptr inbounds i8, ptr %52, i32 1024, !dbg !10
  %92 = load <16 x float>, ptr %91, align 64, !dbg !10
  %93 = getelementptr inbounds i8, ptr %52, i32 1088, !dbg !10
  %94 = load <16 x float>, ptr %93, align 64, !dbg !10
  %95 = getelementptr inbounds i8, ptr %52, i32 1152, !dbg !10
  %96 = load <16 x float>, ptr %95, align 64, !dbg !10
  %97 = getelementptr inbounds i8, ptr %52, i32 1216, !dbg !10
  %98 = load <16 x float>, ptr %97, align 64, !dbg !10
  %99 = getelementptr inbounds i8, ptr %52, i32 1280, !dbg !10
  %100 = load <16 x float>, ptr %99, align 64, !dbg !10
  %101 = getelementptr inbounds i8, ptr %52, i32 1344, !dbg !10
  %102 = load <16 x float>, ptr %101, align 64, !dbg !10
  %103 = getelementptr inbounds i8, ptr %52, i32 1408, !dbg !10
  %104 = load <16 x float>, ptr %103, align 64, !dbg !10
  %105 = getelementptr inbounds i8, ptr %52, i32 1472, !dbg !10
  %106 = load <16 x float>, ptr %105, align 64, !dbg !10
  %107 = getelementptr inbounds i8, ptr %52, i32 1536, !dbg !10
  %108 = load <16 x float>, ptr %107, align 64, !dbg !10
  %109 = getelementptr inbounds i8, ptr %52, i32 1600, !dbg !10
  %110 = load <16 x float>, ptr %109, align 64, !dbg !10
  %111 = getelementptr inbounds i8, ptr %52, i32 1664, !dbg !10
  %112 = load <16 x float>, ptr %111, align 64, !dbg !10
  %113 = getelementptr inbounds i8, ptr %52, i32 1728, !dbg !10
  %114 = load <16 x float>, ptr %113, align 64, !dbg !10
  %115 = getelementptr inbounds i8, ptr %52, i32 1792, !dbg !10
  %116 = load <16 x float>, ptr %115, align 64, !dbg !10
  %117 = getelementptr inbounds i8, ptr %52, i32 1856, !dbg !10
  %118 = load <16 x float>, ptr %117, align 64, !dbg !10
  %119 = getelementptr inbounds i8, ptr %52, i32 1920, !dbg !10
  %120 = load <16 x float>, ptr %119, align 64, !dbg !10
  %121 = getelementptr inbounds i8, ptr %52, i32 1984, !dbg !10
  %122 = load <16 x float>, ptr %121, align 64, !dbg !10
  %123 = call i32 @llvm.xpu.load_param(i32 2), !dbg !7
  %124 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %60, <16 x float> %62) #2, !dbg !7
  %125 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %124, <16 x float> %64) #2, !dbg !7
  %126 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %125, <16 x float> %66) #2, !dbg !7
  %127 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %126, <16 x float> %68) #2, !dbg !7
  %128 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %127, <16 x float> %70) #2, !dbg !7
  %129 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %128, <16 x float> %72) #2, !dbg !7
  %130 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %129, <16 x float> %74) #2, !dbg !7
  %131 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %130, <16 x float> %76) #2, !dbg !7
  %132 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %131, <16 x float> %78) #2, !dbg !7
  %133 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %132, <16 x float> %80) #2, !dbg !7
  %134 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %133, <16 x float> %82) #2, !dbg !7
  %135 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %134, <16 x float> %84) #2, !dbg !7
  %136 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %135, <16 x float> %86) #2, !dbg !7
  %137 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %136, <16 x float> %88) #2, !dbg !7
  %138 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %137, <16 x float> %90) #2, !dbg !7
  %139 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %138, <16 x float> %92) #2, !dbg !7
  %140 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %139, <16 x float> %94) #2, !dbg !7
  %141 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %140, <16 x float> %96) #2, !dbg !7
  %142 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %141, <16 x float> %98) #2, !dbg !7
  %143 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %142, <16 x float> %100) #2, !dbg !7
  %144 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %143, <16 x float> %102) #2, !dbg !7
  %145 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %144, <16 x float> %104) #2, !dbg !7
  %146 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %145, <16 x float> %106) #2, !dbg !7
  %147 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %146, <16 x float> %108) #2, !dbg !7
  %148 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %147, <16 x float> %110) #2, !dbg !7
  %149 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %148, <16 x float> %112) #2, !dbg !7
  %150 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %149, <16 x float> %114) #2, !dbg !7
  %151 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %150, <16 x float> %116) #2, !dbg !7
  %152 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %151, <16 x float> %118) #2, !dbg !7
  %153 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %152, <16 x float> %120) #2, !dbg !7
  %154 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %153, <16 x float> %122) #2, !dbg !7
  %155 = extractelement <16 x float> %154, i64 0, !dbg !7
  %156 = extractelement <16 x float> %154, i64 1, !dbg !7
  %157 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %155, float %156) #2, !dbg !7
  %158 = extractelement <16 x float> %154, i64 2, !dbg !7
  %159 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %157, float %158) #2, !dbg !7
  %160 = extractelement <16 x float> %154, i64 3, !dbg !7
  %161 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %159, float %160) #2, !dbg !7
  %162 = extractelement <16 x float> %154, i64 4, !dbg !7
  %163 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %161, float %162) #2, !dbg !7
  %164 = extractelement <16 x float> %154, i64 5, !dbg !7
  %165 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %163, float %164) #2, !dbg !7
  %166 = extractelement <16 x float> %154, i64 6, !dbg !7
  %167 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %165, float %166) #2, !dbg !7
  %168 = extractelement <16 x float> %154, i64 7, !dbg !7
  %169 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %167, float %168) #2, !dbg !7
  %170 = extractelement <16 x float> %154, i64 8, !dbg !7
  %171 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %169, float %170) #2, !dbg !7
  %172 = extractelement <16 x float> %154, i64 9, !dbg !7
  %173 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %171, float %172) #2, !dbg !7
  %174 = extractelement <16 x float> %154, i64 10, !dbg !7
  %175 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %173, float %174) #2, !dbg !7
  %176 = extractelement <16 x float> %154, i64 11, !dbg !7
  %177 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %175, float %176) #2, !dbg !7
  %178 = extractelement <16 x float> %154, i64 12, !dbg !7
  %179 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %177, float %178) #2, !dbg !7
  %180 = extractelement <16 x float> %154, i64 13, !dbg !7
  %181 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %179, float %180) #2, !dbg !7
  %182 = extractelement <16 x float> %154, i64 14, !dbg !7
  %183 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %181, float %182) #2, !dbg !7
  %184 = extractelement <16 x float> %154, i64 15, !dbg !7
  %185 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %183, float %184) #2, !dbg !7
  store float %185, ptr addrspace(2) %19, align 4, !dbg !7
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  br i1 %37, label %186, label %194, !dbg !7

186:                                              ; preds = %47
  %187 = load float, ptr addrspace(2) %38, align 8, !dbg !7
  %188 = load float, ptr addrspace(2) %39, align 4, !dbg !7
  %189 = load float, ptr addrspace(2) %40, align 8, !dbg !7
  %190 = load float, ptr addrspace(2) %41, align 4, !dbg !7
  %191 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %187, float %188) #2, !dbg !7
  %192 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %191, float %189) #2, !dbg !7
  %193 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %192, float %190) #2, !dbg !7
  store float %193, ptr addrspace(2) %38, align 8, !dbg !7
  br label %194, !dbg !7

194:                                              ; preds = %186, %47
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  %195 = load float, ptr addrspace(2) %38, align 8, !dbg !7
  %196 = fneg float %195, !dbg !11
  %197 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %60) #2, !dbg !11
  %198 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %62) #2, !dbg !11
  %199 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %64) #2, !dbg !11
  %200 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %66) #2, !dbg !11
  %201 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %68) #2, !dbg !11
  %202 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %70) #2, !dbg !11
  %203 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %72) #2, !dbg !11
  %204 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %74) #2, !dbg !11
  %205 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %76) #2, !dbg !11
  %206 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %78) #2, !dbg !11
  %207 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %80) #2, !dbg !11
  %208 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %82) #2, !dbg !11
  %209 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %84) #2, !dbg !11
  %210 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %86) #2, !dbg !11
  %211 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %88) #2, !dbg !11
  %212 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %90) #2, !dbg !11
  %213 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %92) #2, !dbg !11
  %214 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %94) #2, !dbg !11
  %215 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %96) #2, !dbg !11
  %216 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %98) #2, !dbg !11
  %217 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %100) #2, !dbg !11
  %218 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %102) #2, !dbg !11
  %219 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %104) #2, !dbg !11
  %220 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %106) #2, !dbg !11
  %221 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %108) #2, !dbg !11
  %222 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %110) #2, !dbg !11
  %223 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %112) #2, !dbg !11
  %224 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %114) #2, !dbg !11
  %225 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %116) #2, !dbg !11
  %226 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %118) #2, !dbg !11
  %227 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %120) #2, !dbg !11
  %228 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %196, <16 x float> %122) #2, !dbg !11
  store <16 x float> %197, ptr %52, align 64, !dbg !12
  store <16 x float> %198, ptr %61, align 64, !dbg !12
  store <16 x float> %199, ptr %63, align 64, !dbg !12
  store <16 x float> %200, ptr %65, align 64, !dbg !12
  store <16 x float> %201, ptr %67, align 64, !dbg !12
  store <16 x float> %202, ptr %69, align 64, !dbg !12
  store <16 x float> %203, ptr %71, align 64, !dbg !12
  store <16 x float> %204, ptr %73, align 64, !dbg !12
  store <16 x float> %205, ptr %75, align 64, !dbg !12
  store <16 x float> %206, ptr %77, align 64, !dbg !12
  store <16 x float> %207, ptr %79, align 64, !dbg !12
  store <16 x float> %208, ptr %81, align 64, !dbg !12
  store <16 x float> %209, ptr %83, align 64, !dbg !12
  store <16 x float> %210, ptr %85, align 64, !dbg !12
  store <16 x float> %211, ptr %87, align 64, !dbg !12
  store <16 x float> %212, ptr %89, align 64, !dbg !12
  store <16 x float> %213, ptr %91, align 64, !dbg !12
  store <16 x float> %214, ptr %93, align 64, !dbg !12
  store <16 x float> %215, ptr %95, align 64, !dbg !12
  store <16 x float> %216, ptr %97, align 64, !dbg !12
  store <16 x float> %217, ptr %99, align 64, !dbg !12
  store <16 x float> %218, ptr %101, align 64, !dbg !12
  store <16 x float> %219, ptr %103, align 64, !dbg !12
  store <16 x float> %220, ptr %105, align 64, !dbg !12
  store <16 x float> %221, ptr %107, align 64, !dbg !12
  store <16 x float> %222, ptr %109, align 64, !dbg !12
  store <16 x float> %223, ptr %111, align 64, !dbg !12
  store <16 x float> %224, ptr %113, align 64, !dbg !12
  store <16 x float> %225, ptr %115, align 64, !dbg !12
  store <16 x float> %226, ptr %117, align 64, !dbg !12
  store <16 x float> %227, ptr %119, align 64, !dbg !12
  store <16 x float> %228, ptr %121, align 64, !dbg !12
  %reass.mul2 = mul i64 %reass.add, %11, !dbg !9
  %229 = add i64 %reass.mul2, %42, !dbg !9
  %230 = icmp slt i32 %55, %9, !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %231 = shl i64 %229, 2, !dbg !9
  %232 = getelementptr i8, ptr addrspace(1) %8, i64 %231, !dbg !9
  %233 = select i1 %230, i32 %46, i32 0, !dbg !9
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %232, ptr nonnull %52, i32 0, i32 %233), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %234 = add i32 %48, %21
  %235 = icmp slt i32 %234, %23
  br i1 %235, label %47, label %._crit_edge

._crit_edge:                                      ; preds = %194, %17
  ret void, !dbg !13
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
!1 = !DIFile(filename: "preadded_center.py", directory: "/tmp")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @_tle_row_softmax_preadded_center, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "_tle_row_softmax_preadded_center", linkageName: "_tle_row_softmax_preadded_center", scope: !1, file: !1, line: 335, type: !5, scopeLine: 335, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 353, column: 24, scope: !4)
!8 = !DILocation(line: 342, column: 20, scope: !4)
!9 = !DILocation(line: 335, scope: !4)
!10 = !DILocation(line: 352, column: 16, scope: !4)
!11 = !DILocation(line: 357, column: 21, scope: !4)
!12 = !DILocation(line: 357, column: 16, scope: !4)
!13 = !DILocation(line: 358, column: 4, scope: !4)
