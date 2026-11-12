; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

@global_smem = internal unnamed_addr addrspace(2) global [0 x i8] undef, align 8

; Function Attrs: nounwind
define dso_local xpu_kernel void @_tle_row_softmax_fused_center(ptr addrspace(1) %0, i32 %1, i32 %2, i64 %3, i64 %4, ptr addrspace(1) %5, i32 %6, i64 %7, ptr addrspace(1) %8, i32 %9, i32 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16) local_unnamed_addr #0 !dbg !4 {
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
  %27 = shl nuw nsw i32 %25, 9
  %28 = zext nneg i32 %27 to i64
  %29 = sub i32 %6, %27
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0)
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 512)
  %32 = shl i64 %7, 2
  %33 = mul i64 %32, %28
  %34 = getelementptr i8, ptr addrspace(1) %5, i64 %33
  %35 = shl nuw nsw i32 %31, 2
  %36 = and i32 %26, 15
  %37 = zext nneg i32 %36 to i64
  %38 = mul i64 %4, %28
  %39 = sub i32 %2, %27
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 512)
  %42 = shl nuw nsw i32 %41, 2
  %43 = and i32 %18, -4
  %44 = icmp eq i32 %25, 0
  %45 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 16384), i32 %43
  %46 = getelementptr i8, ptr addrspace(2) %45, i32 4
  %47 = getelementptr i8, ptr addrspace(2) %45, i32 8
  %48 = getelementptr i8, ptr addrspace(2) %45, i32 12
  %49 = mul i64 %12, %28
  %50 = sub i32 %10, %27
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 0)
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 512)
  %53 = shl nuw nsw i32 %52, 2
  br label %54

54:                                               ; preds = %.lr.ph, %297
  %55 = phi i32 [ %20, %.lr.ph ], [ %337, %297 ]
  %56 = sdiv i32 %55, %16
  %57 = sdiv i32 %56, %15
  %58 = shl i32 %57, 4, !dbg !8
  %59 = alloca [512 x float], align 4, !dbg !8
  %60 = alloca [512 x float], align 4, !dbg !8
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %60, ptr addrspace(1) %34, i32 0, i32 %35), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %61 = sext i32 %58 to i64, !dbg !9
  %reass.add = or disjoint i64 %61, %37, !dbg !9
  %reass.mul = mul i64 %reass.add, %3, !dbg !9
  %62 = add i64 %reass.mul, %38, !dbg !9
  %63 = or disjoint i32 %58, %36, !dbg !9
  %64 = icmp slt i32 %63, %1, !dbg !9
  %65 = shl i64 %62, 2, !dbg !9
  %66 = getelementptr i8, ptr addrspace(1) %0, i64 %65, !dbg !9
  %67 = select i1 %64, i32 %42, i32 0, !dbg !9
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %59, ptr addrspace(1) %66, i32 0, i32 %67), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %68 = load <16 x float>, ptr %59, align 64, !dbg !10
  %69 = getelementptr inbounds i8, ptr %59, i32 64, !dbg !10
  %70 = load <16 x float>, ptr %69, align 64, !dbg !10
  %71 = getelementptr inbounds i8, ptr %59, i32 128, !dbg !10
  %72 = load <16 x float>, ptr %71, align 64, !dbg !10
  %73 = getelementptr inbounds i8, ptr %59, i32 192, !dbg !10
  %74 = load <16 x float>, ptr %73, align 64, !dbg !10
  %75 = getelementptr inbounds i8, ptr %59, i32 256, !dbg !10
  %76 = load <16 x float>, ptr %75, align 64, !dbg !10
  %77 = getelementptr inbounds i8, ptr %59, i32 320, !dbg !10
  %78 = load <16 x float>, ptr %77, align 64, !dbg !10
  %79 = getelementptr inbounds i8, ptr %59, i32 384, !dbg !10
  %80 = load <16 x float>, ptr %79, align 64, !dbg !10
  %81 = getelementptr inbounds i8, ptr %59, i32 448, !dbg !10
  %82 = load <16 x float>, ptr %81, align 64, !dbg !10
  %83 = getelementptr inbounds i8, ptr %59, i32 512, !dbg !10
  %84 = load <16 x float>, ptr %83, align 64, !dbg !10
  %85 = getelementptr inbounds i8, ptr %59, i32 576, !dbg !10
  %86 = load <16 x float>, ptr %85, align 64, !dbg !10
  %87 = getelementptr inbounds i8, ptr %59, i32 640, !dbg !10
  %88 = load <16 x float>, ptr %87, align 64, !dbg !10
  %89 = getelementptr inbounds i8, ptr %59, i32 704, !dbg !10
  %90 = load <16 x float>, ptr %89, align 64, !dbg !10
  %91 = getelementptr inbounds i8, ptr %59, i32 768, !dbg !10
  %92 = load <16 x float>, ptr %91, align 64, !dbg !10
  %93 = getelementptr inbounds i8, ptr %59, i32 832, !dbg !10
  %94 = load <16 x float>, ptr %93, align 64, !dbg !10
  %95 = getelementptr inbounds i8, ptr %59, i32 896, !dbg !10
  %96 = load <16 x float>, ptr %95, align 64, !dbg !10
  %97 = getelementptr inbounds i8, ptr %59, i32 960, !dbg !10
  %98 = load <16 x float>, ptr %97, align 64, !dbg !10
  %99 = getelementptr inbounds i8, ptr %59, i32 1024, !dbg !10
  %100 = load <16 x float>, ptr %99, align 64, !dbg !10
  %101 = getelementptr inbounds i8, ptr %59, i32 1088, !dbg !10
  %102 = load <16 x float>, ptr %101, align 64, !dbg !10
  %103 = getelementptr inbounds i8, ptr %59, i32 1152, !dbg !10
  %104 = load <16 x float>, ptr %103, align 64, !dbg !10
  %105 = getelementptr inbounds i8, ptr %59, i32 1216, !dbg !10
  %106 = load <16 x float>, ptr %105, align 64, !dbg !10
  %107 = getelementptr inbounds i8, ptr %59, i32 1280, !dbg !10
  %108 = load <16 x float>, ptr %107, align 64, !dbg !10
  %109 = getelementptr inbounds i8, ptr %59, i32 1344, !dbg !10
  %110 = load <16 x float>, ptr %109, align 64, !dbg !10
  %111 = getelementptr inbounds i8, ptr %59, i32 1408, !dbg !10
  %112 = load <16 x float>, ptr %111, align 64, !dbg !10
  %113 = getelementptr inbounds i8, ptr %59, i32 1472, !dbg !10
  %114 = load <16 x float>, ptr %113, align 64, !dbg !10
  %115 = getelementptr inbounds i8, ptr %59, i32 1536, !dbg !10
  %116 = load <16 x float>, ptr %115, align 64, !dbg !10
  %117 = getelementptr inbounds i8, ptr %59, i32 1600, !dbg !10
  %118 = load <16 x float>, ptr %117, align 64, !dbg !10
  %119 = getelementptr inbounds i8, ptr %59, i32 1664, !dbg !10
  %120 = load <16 x float>, ptr %119, align 64, !dbg !10
  %121 = getelementptr inbounds i8, ptr %59, i32 1728, !dbg !10
  %122 = load <16 x float>, ptr %121, align 64, !dbg !10
  %123 = getelementptr inbounds i8, ptr %59, i32 1792, !dbg !10
  %124 = load <16 x float>, ptr %123, align 64, !dbg !10
  %125 = getelementptr inbounds i8, ptr %59, i32 1856, !dbg !10
  %126 = load <16 x float>, ptr %125, align 64, !dbg !10
  %127 = getelementptr inbounds i8, ptr %59, i32 1920, !dbg !10
  %128 = load <16 x float>, ptr %127, align 64, !dbg !10
  %129 = getelementptr inbounds i8, ptr %59, i32 1984, !dbg !10
  %130 = load <16 x float>, ptr %129, align 64, !dbg !10
  %131 = load <16 x float>, ptr %60, align 64, !dbg !11
  %132 = getelementptr inbounds i8, ptr %60, i32 64, !dbg !11
  %133 = load <16 x float>, ptr %132, align 64, !dbg !11
  %134 = getelementptr inbounds i8, ptr %60, i32 128, !dbg !11
  %135 = load <16 x float>, ptr %134, align 64, !dbg !11
  %136 = getelementptr inbounds i8, ptr %60, i32 192, !dbg !11
  %137 = load <16 x float>, ptr %136, align 64, !dbg !11
  %138 = getelementptr inbounds i8, ptr %60, i32 256, !dbg !11
  %139 = load <16 x float>, ptr %138, align 64, !dbg !11
  %140 = getelementptr inbounds i8, ptr %60, i32 320, !dbg !11
  %141 = load <16 x float>, ptr %140, align 64, !dbg !11
  %142 = getelementptr inbounds i8, ptr %60, i32 384, !dbg !11
  %143 = load <16 x float>, ptr %142, align 64, !dbg !11
  %144 = getelementptr inbounds i8, ptr %60, i32 448, !dbg !11
  %145 = load <16 x float>, ptr %144, align 64, !dbg !11
  %146 = getelementptr inbounds i8, ptr %60, i32 512, !dbg !11
  %147 = load <16 x float>, ptr %146, align 64, !dbg !11
  %148 = getelementptr inbounds i8, ptr %60, i32 576, !dbg !11
  %149 = load <16 x float>, ptr %148, align 64, !dbg !11
  %150 = getelementptr inbounds i8, ptr %60, i32 640, !dbg !11
  %151 = load <16 x float>, ptr %150, align 64, !dbg !11
  %152 = getelementptr inbounds i8, ptr %60, i32 704, !dbg !11
  %153 = load <16 x float>, ptr %152, align 64, !dbg !11
  %154 = getelementptr inbounds i8, ptr %60, i32 768, !dbg !11
  %155 = load <16 x float>, ptr %154, align 64, !dbg !11
  %156 = getelementptr inbounds i8, ptr %60, i32 832, !dbg !11
  %157 = load <16 x float>, ptr %156, align 64, !dbg !11
  %158 = getelementptr inbounds i8, ptr %60, i32 896, !dbg !11
  %159 = load <16 x float>, ptr %158, align 64, !dbg !11
  %160 = getelementptr inbounds i8, ptr %60, i32 960, !dbg !11
  %161 = load <16 x float>, ptr %160, align 64, !dbg !11
  %162 = getelementptr inbounds i8, ptr %60, i32 1024, !dbg !11
  %163 = load <16 x float>, ptr %162, align 64, !dbg !11
  %164 = getelementptr inbounds i8, ptr %60, i32 1088, !dbg !11
  %165 = load <16 x float>, ptr %164, align 64, !dbg !11
  %166 = getelementptr inbounds i8, ptr %60, i32 1152, !dbg !11
  %167 = load <16 x float>, ptr %166, align 64, !dbg !11
  %168 = getelementptr inbounds i8, ptr %60, i32 1216, !dbg !11
  %169 = load <16 x float>, ptr %168, align 64, !dbg !11
  %170 = getelementptr inbounds i8, ptr %60, i32 1280, !dbg !11
  %171 = load <16 x float>, ptr %170, align 64, !dbg !11
  %172 = getelementptr inbounds i8, ptr %60, i32 1344, !dbg !11
  %173 = load <16 x float>, ptr %172, align 64, !dbg !11
  %174 = getelementptr inbounds i8, ptr %60, i32 1408, !dbg !11
  %175 = load <16 x float>, ptr %174, align 64, !dbg !11
  %176 = getelementptr inbounds i8, ptr %60, i32 1472, !dbg !11
  %177 = load <16 x float>, ptr %176, align 64, !dbg !11
  %178 = getelementptr inbounds i8, ptr %60, i32 1536, !dbg !11
  %179 = load <16 x float>, ptr %178, align 64, !dbg !11
  %180 = getelementptr inbounds i8, ptr %60, i32 1600, !dbg !11
  %181 = load <16 x float>, ptr %180, align 64, !dbg !11
  %182 = getelementptr inbounds i8, ptr %60, i32 1664, !dbg !11
  %183 = load <16 x float>, ptr %182, align 64, !dbg !11
  %184 = getelementptr inbounds i8, ptr %60, i32 1728, !dbg !11
  %185 = load <16 x float>, ptr %184, align 64, !dbg !11
  %186 = getelementptr inbounds i8, ptr %60, i32 1792, !dbg !11
  %187 = load <16 x float>, ptr %186, align 64, !dbg !11
  %188 = getelementptr inbounds i8, ptr %60, i32 1856, !dbg !11
  %189 = load <16 x float>, ptr %188, align 64, !dbg !11
  %190 = getelementptr inbounds i8, ptr %60, i32 1920, !dbg !11
  %191 = load <16 x float>, ptr %190, align 64, !dbg !11
  %192 = getelementptr inbounds i8, ptr %60, i32 1984, !dbg !11
  %193 = load <16 x float>, ptr %192, align 64, !dbg !11
  %194 = fadd <16 x float> %68, %131, !dbg !11
  %195 = fadd <16 x float> %70, %133, !dbg !11
  %196 = fadd <16 x float> %72, %135, !dbg !11
  %197 = fadd <16 x float> %74, %137, !dbg !11
  %198 = fadd <16 x float> %76, %139, !dbg !11
  %199 = fadd <16 x float> %78, %141, !dbg !11
  %200 = fadd <16 x float> %80, %143, !dbg !11
  %201 = fadd <16 x float> %82, %145, !dbg !11
  %202 = fadd <16 x float> %84, %147, !dbg !11
  %203 = fadd <16 x float> %86, %149, !dbg !11
  %204 = fadd <16 x float> %88, %151, !dbg !11
  %205 = fadd <16 x float> %90, %153, !dbg !11
  %206 = fadd <16 x float> %92, %155, !dbg !11
  %207 = fadd <16 x float> %94, %157, !dbg !11
  %208 = fadd <16 x float> %96, %159, !dbg !11
  %209 = fadd <16 x float> %98, %161, !dbg !11
  %210 = fadd <16 x float> %100, %163, !dbg !11
  %211 = fadd <16 x float> %102, %165, !dbg !11
  %212 = fadd <16 x float> %104, %167, !dbg !11
  %213 = fadd <16 x float> %106, %169, !dbg !11
  %214 = fadd <16 x float> %108, %171, !dbg !11
  %215 = fadd <16 x float> %110, %173, !dbg !11
  %216 = fadd <16 x float> %112, %175, !dbg !11
  %217 = fadd <16 x float> %114, %177, !dbg !11
  %218 = fadd <16 x float> %116, %179, !dbg !11
  %219 = fadd <16 x float> %118, %181, !dbg !11
  %220 = fadd <16 x float> %120, %183, !dbg !11
  %221 = fadd <16 x float> %122, %185, !dbg !11
  %222 = fadd <16 x float> %124, %187, !dbg !11
  %223 = fadd <16 x float> %126, %189, !dbg !11
  %224 = fadd <16 x float> %128, %191, !dbg !11
  %225 = fadd <16 x float> %130, %193, !dbg !11
  %226 = call i32 @llvm.xpu.load_param(i32 2), !dbg !7
  %227 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %194, <16 x float> %195) #2, !dbg !7
  %228 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %227, <16 x float> %196) #2, !dbg !7
  %229 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %228, <16 x float> %197) #2, !dbg !7
  %230 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %229, <16 x float> %198) #2, !dbg !7
  %231 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %230, <16 x float> %199) #2, !dbg !7
  %232 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %231, <16 x float> %200) #2, !dbg !7
  %233 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %232, <16 x float> %201) #2, !dbg !7
  %234 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %233, <16 x float> %202) #2, !dbg !7
  %235 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %234, <16 x float> %203) #2, !dbg !7
  %236 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %235, <16 x float> %204) #2, !dbg !7
  %237 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %236, <16 x float> %205) #2, !dbg !7
  %238 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %237, <16 x float> %206) #2, !dbg !7
  %239 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %238, <16 x float> %207) #2, !dbg !7
  %240 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %239, <16 x float> %208) #2, !dbg !7
  %241 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %240, <16 x float> %209) #2, !dbg !7
  %242 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %241, <16 x float> %210) #2, !dbg !7
  %243 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %242, <16 x float> %211) #2, !dbg !7
  %244 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %243, <16 x float> %212) #2, !dbg !7
  %245 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %244, <16 x float> %213) #2, !dbg !7
  %246 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %245, <16 x float> %214) #2, !dbg !7
  %247 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %246, <16 x float> %215) #2, !dbg !7
  %248 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %247, <16 x float> %216) #2, !dbg !7
  %249 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %248, <16 x float> %217) #2, !dbg !7
  %250 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %249, <16 x float> %218) #2, !dbg !7
  %251 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %250, <16 x float> %219) #2, !dbg !7
  %252 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %251, <16 x float> %220) #2, !dbg !7
  %253 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %252, <16 x float> %221) #2, !dbg !7
  %254 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %253, <16 x float> %222) #2, !dbg !7
  %255 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %254, <16 x float> %223) #2, !dbg !7
  %256 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %255, <16 x float> %224) #2, !dbg !7
  %257 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %256, <16 x float> %225) #2, !dbg !7
  %258 = extractelement <16 x float> %257, i64 0, !dbg !7
  %259 = extractelement <16 x float> %257, i64 1, !dbg !7
  %260 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %258, float %259) #2, !dbg !7
  %261 = extractelement <16 x float> %257, i64 2, !dbg !7
  %262 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %260, float %261) #2, !dbg !7
  %263 = extractelement <16 x float> %257, i64 3, !dbg !7
  %264 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %262, float %263) #2, !dbg !7
  %265 = extractelement <16 x float> %257, i64 4, !dbg !7
  %266 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %264, float %265) #2, !dbg !7
  %267 = extractelement <16 x float> %257, i64 5, !dbg !7
  %268 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %266, float %267) #2, !dbg !7
  %269 = extractelement <16 x float> %257, i64 6, !dbg !7
  %270 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %268, float %269) #2, !dbg !7
  %271 = extractelement <16 x float> %257, i64 7, !dbg !7
  %272 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %270, float %271) #2, !dbg !7
  %273 = extractelement <16 x float> %257, i64 8, !dbg !7
  %274 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %272, float %273) #2, !dbg !7
  %275 = extractelement <16 x float> %257, i64 9, !dbg !7
  %276 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %274, float %275) #2, !dbg !7
  %277 = extractelement <16 x float> %257, i64 10, !dbg !7
  %278 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %276, float %277) #2, !dbg !7
  %279 = extractelement <16 x float> %257, i64 11, !dbg !7
  %280 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %278, float %279) #2, !dbg !7
  %281 = extractelement <16 x float> %257, i64 12, !dbg !7
  %282 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %280, float %281) #2, !dbg !7
  %283 = extractelement <16 x float> %257, i64 13, !dbg !7
  %284 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %282, float %283) #2, !dbg !7
  %285 = extractelement <16 x float> %257, i64 14, !dbg !7
  %286 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %284, float %285) #2, !dbg !7
  %287 = extractelement <16 x float> %257, i64 15, !dbg !7
  %288 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %286, float %287) #2, !dbg !7
  store float %288, ptr addrspace(2) %19, align 4, !dbg !7
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  br i1 %44, label %289, label %297, !dbg !7

289:                                              ; preds = %54
  %290 = load float, ptr addrspace(2) %45, align 8, !dbg !7
  %291 = load float, ptr addrspace(2) %46, align 4, !dbg !7
  %292 = load float, ptr addrspace(2) %47, align 8, !dbg !7
  %293 = load float, ptr addrspace(2) %48, align 4, !dbg !7
  %294 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %290, float %291) #2, !dbg !7
  %295 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %294, float %292) #2, !dbg !7
  %296 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %295, float %293) #2, !dbg !7
  store float %296, ptr addrspace(2) %45, align 8, !dbg !7
  br label %297, !dbg !7

297:                                              ; preds = %289, %54
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  %298 = load float, ptr addrspace(2) %45, align 8, !dbg !7
  %299 = fneg float %298, !dbg !12
  %300 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %194) #2, !dbg !12
  %301 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %195) #2, !dbg !12
  %302 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %196) #2, !dbg !12
  %303 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %197) #2, !dbg !12
  %304 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %198) #2, !dbg !12
  %305 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %199) #2, !dbg !12
  %306 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %200) #2, !dbg !12
  %307 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %201) #2, !dbg !12
  %308 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %202) #2, !dbg !12
  %309 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %203) #2, !dbg !12
  %310 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %204) #2, !dbg !12
  %311 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %205) #2, !dbg !12
  %312 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %206) #2, !dbg !12
  %313 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %207) #2, !dbg !12
  %314 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %208) #2, !dbg !12
  %315 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %209) #2, !dbg !12
  %316 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %210) #2, !dbg !12
  %317 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %211) #2, !dbg !12
  %318 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %212) #2, !dbg !12
  %319 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %213) #2, !dbg !12
  %320 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %214) #2, !dbg !12
  %321 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %215) #2, !dbg !12
  %322 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %216) #2, !dbg !12
  %323 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %217) #2, !dbg !12
  %324 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %218) #2, !dbg !12
  %325 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %219) #2, !dbg !12
  %326 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %220) #2, !dbg !12
  %327 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %221) #2, !dbg !12
  %328 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %222) #2, !dbg !12
  %329 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %223) #2, !dbg !12
  %330 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %224) #2, !dbg !12
  %331 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %299, <16 x float> %225) #2, !dbg !12
  store <16 x float> %300, ptr %59, align 64, !dbg !13
  store <16 x float> %301, ptr %69, align 64, !dbg !13
  store <16 x float> %302, ptr %71, align 64, !dbg !13
  store <16 x float> %303, ptr %73, align 64, !dbg !13
  store <16 x float> %304, ptr %75, align 64, !dbg !13
  store <16 x float> %305, ptr %77, align 64, !dbg !13
  store <16 x float> %306, ptr %79, align 64, !dbg !13
  store <16 x float> %307, ptr %81, align 64, !dbg !13
  store <16 x float> %308, ptr %83, align 64, !dbg !13
  store <16 x float> %309, ptr %85, align 64, !dbg !13
  store <16 x float> %310, ptr %87, align 64, !dbg !13
  store <16 x float> %311, ptr %89, align 64, !dbg !13
  store <16 x float> %312, ptr %91, align 64, !dbg !13
  store <16 x float> %313, ptr %93, align 64, !dbg !13
  store <16 x float> %314, ptr %95, align 64, !dbg !13
  store <16 x float> %315, ptr %97, align 64, !dbg !13
  store <16 x float> %316, ptr %99, align 64, !dbg !13
  store <16 x float> %317, ptr %101, align 64, !dbg !13
  store <16 x float> %318, ptr %103, align 64, !dbg !13
  store <16 x float> %319, ptr %105, align 64, !dbg !13
  store <16 x float> %320, ptr %107, align 64, !dbg !13
  store <16 x float> %321, ptr %109, align 64, !dbg !13
  store <16 x float> %322, ptr %111, align 64, !dbg !13
  store <16 x float> %323, ptr %113, align 64, !dbg !13
  store <16 x float> %324, ptr %115, align 64, !dbg !13
  store <16 x float> %325, ptr %117, align 64, !dbg !13
  store <16 x float> %326, ptr %119, align 64, !dbg !13
  store <16 x float> %327, ptr %121, align 64, !dbg !13
  store <16 x float> %328, ptr %123, align 64, !dbg !13
  store <16 x float> %329, ptr %125, align 64, !dbg !13
  store <16 x float> %330, ptr %127, align 64, !dbg !13
  store <16 x float> %331, ptr %129, align 64, !dbg !13
  %reass.mul2 = mul i64 %reass.add, %11, !dbg !9
  %332 = add i64 %reass.mul2, %49, !dbg !9
  %333 = icmp slt i32 %63, %9, !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %334 = shl i64 %332, 2, !dbg !9
  %335 = getelementptr i8, ptr addrspace(1) %8, i64 %334, !dbg !9
  %336 = select i1 %333, i32 %53, i32 0, !dbg !9
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %335, ptr nonnull %59, i32 0, i32 %336), !dbg !9
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !9
  %337 = add i32 %55, %21
  %338 = icmp slt i32 %337, %23
  br i1 %338, label %54, label %._crit_edge

._crit_edge:                                      ; preds = %297, %17
  ret void, !dbg !14
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
!1 = !DIFile(filename: "fused_center.py", directory: "/tmp")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @_tle_row_softmax_fused_center, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "_tle_row_softmax_fused_center", linkageName: "_tle_row_softmax_fused_center", scope: !1, file: !1, line: 335, type: !5, scopeLine: 335, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 353, column: 24, scope: !4)
!8 = !DILocation(line: 342, column: 20, scope: !4)
!9 = !DILocation(line: 335, scope: !4)
!10 = !DILocation(line: 352, column: 17, scope: !4)
!11 = !DILocation(line: 352, column: 22, scope: !4)
!12 = !DILocation(line: 357, column: 21, scope: !4)
!13 = !DILocation(line: 357, column: 16, scope: !4)
!14 = !DILocation(line: 358, column: 4, scope: !4)
