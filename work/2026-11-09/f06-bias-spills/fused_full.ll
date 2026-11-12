; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

@global_smem = internal unnamed_addr addrspace(2) global [0 x i8] undef, align 8

; Function Attrs: nounwind
define dso_local xpu_kernel void @_tle_row_softmax(ptr addrspace(1) %0, i32 %1, i32 %2, i64 %3, i64 %4, ptr addrspace(1) %5, i32 %6, i64 %7, ptr addrspace(1) %8, i32 %9, i32 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16) local_unnamed_addr #0 !dbg !4 {
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
  %29 = shl nuw nsw i32 %27, 9
  %30 = zext nneg i32 %29 to i64
  %31 = sub i32 %6, %29
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0)
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 512)
  %34 = shl i64 %7, 2
  %35 = mul i64 %34, %30
  %36 = getelementptr i8, ptr addrspace(1) %5, i64 %35
  %37 = shl nuw nsw i32 %33, 2
  %38 = and i32 %28, 15
  %39 = zext nneg i32 %38 to i64
  %40 = mul i64 %4, %30
  %41 = sub i32 %2, %29
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 512)
  %44 = shl nuw nsw i32 %43, 2
  %45 = and i32 %18, -4
  %46 = icmp eq i32 %27, 0
  %47 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 16384), i32 %45
  %48 = getelementptr i8, ptr addrspace(2) %47, i32 4
  %49 = getelementptr i8, ptr addrspace(2) %47, i32 8
  %50 = getelementptr i8, ptr addrspace(2) %47, i32 12
  %51 = getelementptr inbounds i8, ptr %20, i32 64
  %52 = getelementptr inbounds i8, ptr %20, i32 128
  %53 = getelementptr inbounds i8, ptr %20, i32 192
  %54 = getelementptr float, ptr addrspace(2) getelementptr (i8, ptr addrspace(2) @global_smem, i32 32784), i32 %45
  %55 = getelementptr i8, ptr addrspace(2) %54, i32 4
  %56 = getelementptr i8, ptr addrspace(2) %54, i32 8
  %57 = getelementptr i8, ptr addrspace(2) %54, i32 12
  %58 = mul i64 %12, %30
  %59 = sub i32 %10, %29
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0)
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 512)
  %62 = shl nuw nsw i32 %61, 2
  br label %63

63:                                               ; preds = %.lr.ph, %451
  %64 = phi i32 [ %22, %.lr.ph ], [ %491, %451 ]
  %65 = sdiv i32 %64, %16
  %66 = sdiv i32 %65, %15
  %67 = shl i32 %66, 4, !dbg !14
  %68 = alloca [512 x float], align 4, !dbg !14
  %69 = alloca [512 x float], align 4, !dbg !14
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %69, ptr addrspace(1) %36, i32 0, i32 %37), !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %70 = sext i32 %67 to i64, !dbg !15
  %reass.add = or disjoint i64 %70, %39, !dbg !15
  %reass.mul = mul i64 %reass.add, %3, !dbg !15
  %71 = add i64 %reass.mul, %40, !dbg !15
  %72 = or disjoint i32 %67, %38, !dbg !15
  %73 = icmp slt i32 %72, %1, !dbg !15
  %74 = shl i64 %71, 2, !dbg !15
  %75 = getelementptr i8, ptr addrspace(1) %0, i64 %74, !dbg !15
  %76 = select i1 %73, i32 %44, i32 0, !dbg !15
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %68, ptr addrspace(1) %75, i32 0, i32 %76), !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %77 = load <16 x float>, ptr %68, align 64, !dbg !16
  %78 = getelementptr inbounds i8, ptr %68, i32 64, !dbg !16
  %79 = load <16 x float>, ptr %78, align 64, !dbg !16
  %80 = getelementptr inbounds i8, ptr %68, i32 128, !dbg !16
  %81 = load <16 x float>, ptr %80, align 64, !dbg !16
  %82 = getelementptr inbounds i8, ptr %68, i32 192, !dbg !16
  %83 = load <16 x float>, ptr %82, align 64, !dbg !16
  %84 = getelementptr inbounds i8, ptr %68, i32 256, !dbg !16
  %85 = load <16 x float>, ptr %84, align 64, !dbg !16
  %86 = getelementptr inbounds i8, ptr %68, i32 320, !dbg !16
  %87 = load <16 x float>, ptr %86, align 64, !dbg !16
  %88 = getelementptr inbounds i8, ptr %68, i32 384, !dbg !16
  %89 = load <16 x float>, ptr %88, align 64, !dbg !16
  %90 = getelementptr inbounds i8, ptr %68, i32 448, !dbg !16
  %91 = load <16 x float>, ptr %90, align 64, !dbg !16
  %92 = getelementptr inbounds i8, ptr %68, i32 512, !dbg !16
  %93 = load <16 x float>, ptr %92, align 64, !dbg !16
  %94 = getelementptr inbounds i8, ptr %68, i32 576, !dbg !16
  %95 = load <16 x float>, ptr %94, align 64, !dbg !16
  %96 = getelementptr inbounds i8, ptr %68, i32 640, !dbg !16
  %97 = load <16 x float>, ptr %96, align 64, !dbg !16
  %98 = getelementptr inbounds i8, ptr %68, i32 704, !dbg !16
  %99 = load <16 x float>, ptr %98, align 64, !dbg !16
  %100 = getelementptr inbounds i8, ptr %68, i32 768, !dbg !16
  %101 = load <16 x float>, ptr %100, align 64, !dbg !16
  %102 = getelementptr inbounds i8, ptr %68, i32 832, !dbg !16
  %103 = load <16 x float>, ptr %102, align 64, !dbg !16
  %104 = getelementptr inbounds i8, ptr %68, i32 896, !dbg !16
  %105 = load <16 x float>, ptr %104, align 64, !dbg !16
  %106 = getelementptr inbounds i8, ptr %68, i32 960, !dbg !16
  %107 = load <16 x float>, ptr %106, align 64, !dbg !16
  %108 = getelementptr inbounds i8, ptr %68, i32 1024, !dbg !16
  %109 = load <16 x float>, ptr %108, align 64, !dbg !16
  %110 = getelementptr inbounds i8, ptr %68, i32 1088, !dbg !16
  %111 = load <16 x float>, ptr %110, align 64, !dbg !16
  %112 = getelementptr inbounds i8, ptr %68, i32 1152, !dbg !16
  %113 = load <16 x float>, ptr %112, align 64, !dbg !16
  %114 = getelementptr inbounds i8, ptr %68, i32 1216, !dbg !16
  %115 = load <16 x float>, ptr %114, align 64, !dbg !16
  %116 = getelementptr inbounds i8, ptr %68, i32 1280, !dbg !16
  %117 = load <16 x float>, ptr %116, align 64, !dbg !16
  %118 = getelementptr inbounds i8, ptr %68, i32 1344, !dbg !16
  %119 = load <16 x float>, ptr %118, align 64, !dbg !16
  %120 = getelementptr inbounds i8, ptr %68, i32 1408, !dbg !16
  %121 = load <16 x float>, ptr %120, align 64, !dbg !16
  %122 = getelementptr inbounds i8, ptr %68, i32 1472, !dbg !16
  %123 = load <16 x float>, ptr %122, align 64, !dbg !16
  %124 = getelementptr inbounds i8, ptr %68, i32 1536, !dbg !16
  %125 = load <16 x float>, ptr %124, align 64, !dbg !16
  %126 = getelementptr inbounds i8, ptr %68, i32 1600, !dbg !16
  %127 = load <16 x float>, ptr %126, align 64, !dbg !16
  %128 = getelementptr inbounds i8, ptr %68, i32 1664, !dbg !16
  %129 = load <16 x float>, ptr %128, align 64, !dbg !16
  %130 = getelementptr inbounds i8, ptr %68, i32 1728, !dbg !16
  %131 = load <16 x float>, ptr %130, align 64, !dbg !16
  %132 = getelementptr inbounds i8, ptr %68, i32 1792, !dbg !16
  %133 = load <16 x float>, ptr %132, align 64, !dbg !16
  %134 = getelementptr inbounds i8, ptr %68, i32 1856, !dbg !16
  %135 = load <16 x float>, ptr %134, align 64, !dbg !16
  %136 = getelementptr inbounds i8, ptr %68, i32 1920, !dbg !16
  %137 = load <16 x float>, ptr %136, align 64, !dbg !16
  %138 = getelementptr inbounds i8, ptr %68, i32 1984, !dbg !16
  %139 = load <16 x float>, ptr %138, align 64, !dbg !16
  %140 = load <16 x float>, ptr %69, align 64, !dbg !17
  %141 = getelementptr inbounds i8, ptr %69, i32 64, !dbg !17
  %142 = load <16 x float>, ptr %141, align 64, !dbg !17
  %143 = getelementptr inbounds i8, ptr %69, i32 128, !dbg !17
  %144 = load <16 x float>, ptr %143, align 64, !dbg !17
  %145 = getelementptr inbounds i8, ptr %69, i32 192, !dbg !17
  %146 = load <16 x float>, ptr %145, align 64, !dbg !17
  %147 = getelementptr inbounds i8, ptr %69, i32 256, !dbg !17
  %148 = load <16 x float>, ptr %147, align 64, !dbg !17
  %149 = getelementptr inbounds i8, ptr %69, i32 320, !dbg !17
  %150 = load <16 x float>, ptr %149, align 64, !dbg !17
  %151 = getelementptr inbounds i8, ptr %69, i32 384, !dbg !17
  %152 = load <16 x float>, ptr %151, align 64, !dbg !17
  %153 = getelementptr inbounds i8, ptr %69, i32 448, !dbg !17
  %154 = load <16 x float>, ptr %153, align 64, !dbg !17
  %155 = getelementptr inbounds i8, ptr %69, i32 512, !dbg !17
  %156 = load <16 x float>, ptr %155, align 64, !dbg !17
  %157 = getelementptr inbounds i8, ptr %69, i32 576, !dbg !17
  %158 = load <16 x float>, ptr %157, align 64, !dbg !17
  %159 = getelementptr inbounds i8, ptr %69, i32 640, !dbg !17
  %160 = load <16 x float>, ptr %159, align 64, !dbg !17
  %161 = getelementptr inbounds i8, ptr %69, i32 704, !dbg !17
  %162 = load <16 x float>, ptr %161, align 64, !dbg !17
  %163 = getelementptr inbounds i8, ptr %69, i32 768, !dbg !17
  %164 = load <16 x float>, ptr %163, align 64, !dbg !17
  %165 = getelementptr inbounds i8, ptr %69, i32 832, !dbg !17
  %166 = load <16 x float>, ptr %165, align 64, !dbg !17
  %167 = getelementptr inbounds i8, ptr %69, i32 896, !dbg !17
  %168 = load <16 x float>, ptr %167, align 64, !dbg !17
  %169 = getelementptr inbounds i8, ptr %69, i32 960, !dbg !17
  %170 = load <16 x float>, ptr %169, align 64, !dbg !17
  %171 = getelementptr inbounds i8, ptr %69, i32 1024, !dbg !17
  %172 = load <16 x float>, ptr %171, align 64, !dbg !17
  %173 = getelementptr inbounds i8, ptr %69, i32 1088, !dbg !17
  %174 = load <16 x float>, ptr %173, align 64, !dbg !17
  %175 = getelementptr inbounds i8, ptr %69, i32 1152, !dbg !17
  %176 = load <16 x float>, ptr %175, align 64, !dbg !17
  %177 = getelementptr inbounds i8, ptr %69, i32 1216, !dbg !17
  %178 = load <16 x float>, ptr %177, align 64, !dbg !17
  %179 = getelementptr inbounds i8, ptr %69, i32 1280, !dbg !17
  %180 = load <16 x float>, ptr %179, align 64, !dbg !17
  %181 = getelementptr inbounds i8, ptr %69, i32 1344, !dbg !17
  %182 = load <16 x float>, ptr %181, align 64, !dbg !17
  %183 = getelementptr inbounds i8, ptr %69, i32 1408, !dbg !17
  %184 = load <16 x float>, ptr %183, align 64, !dbg !17
  %185 = getelementptr inbounds i8, ptr %69, i32 1472, !dbg !17
  %186 = load <16 x float>, ptr %185, align 64, !dbg !17
  %187 = getelementptr inbounds i8, ptr %69, i32 1536, !dbg !17
  %188 = load <16 x float>, ptr %187, align 64, !dbg !17
  %189 = getelementptr inbounds i8, ptr %69, i32 1600, !dbg !17
  %190 = load <16 x float>, ptr %189, align 64, !dbg !17
  %191 = getelementptr inbounds i8, ptr %69, i32 1664, !dbg !17
  %192 = load <16 x float>, ptr %191, align 64, !dbg !17
  %193 = getelementptr inbounds i8, ptr %69, i32 1728, !dbg !17
  %194 = load <16 x float>, ptr %193, align 64, !dbg !17
  %195 = getelementptr inbounds i8, ptr %69, i32 1792, !dbg !17
  %196 = load <16 x float>, ptr %195, align 64, !dbg !17
  %197 = getelementptr inbounds i8, ptr %69, i32 1856, !dbg !17
  %198 = load <16 x float>, ptr %197, align 64, !dbg !17
  %199 = getelementptr inbounds i8, ptr %69, i32 1920, !dbg !17
  %200 = load <16 x float>, ptr %199, align 64, !dbg !17
  %201 = getelementptr inbounds i8, ptr %69, i32 1984, !dbg !17
  %202 = load <16 x float>, ptr %201, align 64, !dbg !17
  %203 = fadd <16 x float> %77, %140, !dbg !17
  %204 = fadd <16 x float> %79, %142, !dbg !17
  %205 = fadd <16 x float> %81, %144, !dbg !17
  %206 = fadd <16 x float> %83, %146, !dbg !17
  %207 = fadd <16 x float> %85, %148, !dbg !17
  %208 = fadd <16 x float> %87, %150, !dbg !17
  %209 = fadd <16 x float> %89, %152, !dbg !17
  %210 = fadd <16 x float> %91, %154, !dbg !17
  %211 = fadd <16 x float> %93, %156, !dbg !17
  %212 = fadd <16 x float> %95, %158, !dbg !17
  %213 = fadd <16 x float> %97, %160, !dbg !17
  %214 = fadd <16 x float> %99, %162, !dbg !17
  %215 = fadd <16 x float> %101, %164, !dbg !17
  %216 = fadd <16 x float> %103, %166, !dbg !17
  %217 = fadd <16 x float> %105, %168, !dbg !17
  %218 = fadd <16 x float> %107, %170, !dbg !17
  %219 = fadd <16 x float> %109, %172, !dbg !17
  %220 = fadd <16 x float> %111, %174, !dbg !17
  %221 = fadd <16 x float> %113, %176, !dbg !17
  %222 = fadd <16 x float> %115, %178, !dbg !17
  %223 = fadd <16 x float> %117, %180, !dbg !17
  %224 = fadd <16 x float> %119, %182, !dbg !17
  %225 = fadd <16 x float> %121, %184, !dbg !17
  %226 = fadd <16 x float> %123, %186, !dbg !17
  %227 = fadd <16 x float> %125, %188, !dbg !17
  %228 = fadd <16 x float> %127, %190, !dbg !17
  %229 = fadd <16 x float> %129, %192, !dbg !17
  %230 = fadd <16 x float> %131, %194, !dbg !17
  %231 = fadd <16 x float> %133, %196, !dbg !17
  %232 = fadd <16 x float> %135, %198, !dbg !17
  %233 = fadd <16 x float> %137, %200, !dbg !17
  %234 = fadd <16 x float> %139, %202, !dbg !17
  %235 = call i32 @llvm.xpu.load_param(i32 2), !dbg !13
  %236 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %203, <16 x float> %204) #2, !dbg !13
  %237 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %236, <16 x float> %205) #2, !dbg !13
  %238 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %237, <16 x float> %206) #2, !dbg !13
  %239 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %238, <16 x float> %207) #2, !dbg !13
  %240 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %239, <16 x float> %208) #2, !dbg !13
  %241 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %240, <16 x float> %209) #2, !dbg !13
  %242 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %241, <16 x float> %210) #2, !dbg !13
  %243 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %242, <16 x float> %211) #2, !dbg !13
  %244 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %243, <16 x float> %212) #2, !dbg !13
  %245 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %244, <16 x float> %213) #2, !dbg !13
  %246 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %245, <16 x float> %214) #2, !dbg !13
  %247 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %246, <16 x float> %215) #2, !dbg !13
  %248 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %247, <16 x float> %216) #2, !dbg !13
  %249 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %248, <16 x float> %217) #2, !dbg !13
  %250 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %249, <16 x float> %218) #2, !dbg !13
  %251 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %250, <16 x float> %219) #2, !dbg !13
  %252 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %251, <16 x float> %220) #2, !dbg !13
  %253 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %252, <16 x float> %221) #2, !dbg !13
  %254 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %253, <16 x float> %222) #2, !dbg !13
  %255 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %254, <16 x float> %223) #2, !dbg !13
  %256 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %255, <16 x float> %224) #2, !dbg !13
  %257 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %256, <16 x float> %225) #2, !dbg !13
  %258 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %257, <16 x float> %226) #2, !dbg !13
  %259 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %258, <16 x float> %227) #2, !dbg !13
  %260 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %259, <16 x float> %228) #2, !dbg !13
  %261 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %260, <16 x float> %229) #2, !dbg !13
  %262 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %261, <16 x float> %230) #2, !dbg !13
  %263 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %262, <16 x float> %231) #2, !dbg !13
  %264 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %263, <16 x float> %232) #2, !dbg !13
  %265 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %264, <16 x float> %233) #2, !dbg !13
  %266 = call <16 x float> asm "vmax.f.mz $0{mr1}, $1, $2", "=v,v,v"(<16 x float> %265, <16 x float> %234) #2, !dbg !13
  %267 = extractelement <16 x float> %266, i64 0, !dbg !13
  %268 = extractelement <16 x float> %266, i64 1, !dbg !13
  %269 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %267, float %268) #2, !dbg !13
  %270 = extractelement <16 x float> %266, i64 2, !dbg !13
  %271 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %269, float %270) #2, !dbg !13
  %272 = extractelement <16 x float> %266, i64 3, !dbg !13
  %273 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %271, float %272) #2, !dbg !13
  %274 = extractelement <16 x float> %266, i64 4, !dbg !13
  %275 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %273, float %274) #2, !dbg !13
  %276 = extractelement <16 x float> %266, i64 5, !dbg !13
  %277 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %275, float %276) #2, !dbg !13
  %278 = extractelement <16 x float> %266, i64 6, !dbg !13
  %279 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %277, float %278) #2, !dbg !13
  %280 = extractelement <16 x float> %266, i64 7, !dbg !13
  %281 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %279, float %280) #2, !dbg !13
  %282 = extractelement <16 x float> %266, i64 8, !dbg !13
  %283 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %281, float %282) #2, !dbg !13
  %284 = extractelement <16 x float> %266, i64 9, !dbg !13
  %285 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %283, float %284) #2, !dbg !13
  %286 = extractelement <16 x float> %266, i64 10, !dbg !13
  %287 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %285, float %286) #2, !dbg !13
  %288 = extractelement <16 x float> %266, i64 11, !dbg !13
  %289 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %287, float %288) #2, !dbg !13
  %290 = extractelement <16 x float> %266, i64 12, !dbg !13
  %291 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %289, float %290) #2, !dbg !13
  %292 = extractelement <16 x float> %266, i64 13, !dbg !13
  %293 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %291, float %292) #2, !dbg !13
  %294 = extractelement <16 x float> %266, i64 14, !dbg !13
  %295 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %293, float %294) #2, !dbg !13
  %296 = extractelement <16 x float> %266, i64 15, !dbg !13
  %297 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %295, float %296) #2, !dbg !13
  store float %297, ptr addrspace(2) %21, align 4, !dbg !13
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !13
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !13
  br i1 %46, label %298, label %306, !dbg !13

298:                                              ; preds = %63
  %299 = load float, ptr addrspace(2) %47, align 8, !dbg !13
  %300 = load float, ptr addrspace(2) %48, align 4, !dbg !13
  %301 = load float, ptr addrspace(2) %49, align 8, !dbg !13
  %302 = load float, ptr addrspace(2) %50, align 4, !dbg !13
  %303 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %299, float %300) #2, !dbg !13
  %304 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %303, float %301) #2, !dbg !13
  %305 = call float asm "max.f $0, $1, $2", "=r,r,r"(float %304, float %302) #2, !dbg !13
  store float %305, ptr addrspace(2) %47, align 8, !dbg !13
  br label %306, !dbg !13

306:                                              ; preds = %298, %63
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !13
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !13
  %307 = load float, ptr addrspace(2) %47, align 8, !dbg !13
  %308 = fneg float %307, !dbg !18
  %309 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %203) #2, !dbg !18
  %310 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %204) #2, !dbg !18
  %311 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %205) #2, !dbg !18
  %312 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %206) #2, !dbg !18
  %313 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %207) #2, !dbg !18
  %314 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %208) #2, !dbg !18
  %315 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %209) #2, !dbg !18
  %316 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %210) #2, !dbg !18
  %317 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %211) #2, !dbg !18
  %318 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %212) #2, !dbg !18
  %319 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %213) #2, !dbg !18
  %320 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %214) #2, !dbg !18
  %321 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %215) #2, !dbg !18
  %322 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %216) #2, !dbg !18
  %323 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %217) #2, !dbg !18
  %324 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %218) #2, !dbg !18
  %325 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %219) #2, !dbg !18
  %326 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %220) #2, !dbg !18
  %327 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %221) #2, !dbg !18
  %328 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %222) #2, !dbg !18
  %329 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %223) #2, !dbg !18
  %330 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %224) #2, !dbg !18
  %331 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %225) #2, !dbg !18
  %332 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %226) #2, !dbg !18
  %333 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %227) #2, !dbg !18
  %334 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %228) #2, !dbg !18
  %335 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %229) #2, !dbg !18
  %336 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %230) #2, !dbg !18
  %337 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %231) #2, !dbg !18
  %338 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %232) #2, !dbg !18
  %339 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %233) #2, !dbg !18
  %340 = call <16 x float> asm "vadd.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %308, <16 x float> %234) #2, !dbg !18
  store volatile <16 x float> %309, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %310, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %311, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %312, ptr %53, align 64, !dbg !12
  %341 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %342 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %343 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %344 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %345 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %313, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %314, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %315, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %316, ptr %53, align 64, !dbg !12
  %346 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %347 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %348 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %349 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %350 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %317, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %318, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %319, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %320, ptr %53, align 64, !dbg !12
  %351 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %352 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %353 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %354 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %355 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %321, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %322, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %323, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %324, ptr %53, align 64, !dbg !12
  %356 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %357 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %358 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %359 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %360 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %325, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %326, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %327, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %328, ptr %53, align 64, !dbg !12
  %361 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %362 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %363 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %364 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %365 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %329, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %330, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %331, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %332, ptr %53, align 64, !dbg !12
  %366 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %367 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %368 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %369 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %370 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %333, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %334, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %335, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %336, ptr %53, align 64, !dbg !12
  %371 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %372 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %373 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %374 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %375 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  store volatile <16 x float> %337, ptr %20, align 64, !dbg !12
  store volatile <16 x float> %338, ptr %51, align 64, !dbg !12
  store volatile <16 x float> %339, ptr %52, align 64, !dbg !12
  store volatile <16 x float> %340, ptr %53, align 64, !dbg !12
  %376 = call { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 } asm sideeffect "mfence { lm }\0Aloadli.w $0, 0($16)\0Aloadli.w $1, 4($16)\0Aloadli.w $2, 8($16)\0Aloadli.w $3, 12($16)\0Aloadli.w $4, 16($16)\0Aloadli.w $5, 20($16)\0Aloadli.w $6, 24($16)\0Aloadli.w $7, 28($16)\0Aloadli.w $8, 32($16)\0Aloadli.w $9, 36($16)\0Aloadli.w $10, 40($16)\0Aloadli.w $11, 44($16)\0Aloadli.w $12, 48($16)\0Aloadli.w $13, 52($16)\0Aloadli.w $14, 56($16)\0Aloadli.w $15, 60($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 0($16)\0Astoreli.w $1, 4($16)\0Astoreli.w $2, 8($16)\0Astoreli.w $3, 12($16)\0Astoreli.w $4, 16($16)\0Astoreli.w $5, 20($16)\0Astoreli.w $6, 24($16)\0Astoreli.w $7, 28($16)\0Astoreli.w $8, 32($16)\0Astoreli.w $9, 36($16)\0Astoreli.w $10, 40($16)\0Astoreli.w $11, 44($16)\0Astoreli.w $12, 48($16)\0Astoreli.w $13, 52($16)\0Astoreli.w $14, 56($16)\0Astoreli.w $15, 60($16)\0Aloadli.w $0, 64($16)\0Aloadli.w $1, 68($16)\0Aloadli.w $2, 72($16)\0Aloadli.w $3, 76($16)\0Aloadli.w $4, 80($16)\0Aloadli.w $5, 84($16)\0Aloadli.w $6, 88($16)\0Aloadli.w $7, 92($16)\0Aloadli.w $8, 96($16)\0Aloadli.w $9, 100($16)\0Aloadli.w $10, 104($16)\0Aloadli.w $11, 108($16)\0Aloadli.w $12, 112($16)\0Aloadli.w $13, 116($16)\0Aloadli.w $14, 120($16)\0Aloadli.w $15, 124($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 64($16)\0Astoreli.w $1, 68($16)\0Astoreli.w $2, 72($16)\0Astoreli.w $3, 76($16)\0Astoreli.w $4, 80($16)\0Astoreli.w $5, 84($16)\0Astoreli.w $6, 88($16)\0Astoreli.w $7, 92($16)\0Astoreli.w $8, 96($16)\0Astoreli.w $9, 100($16)\0Astoreli.w $10, 104($16)\0Astoreli.w $11, 108($16)\0Astoreli.w $12, 112($16)\0Astoreli.w $13, 116($16)\0Astoreli.w $14, 120($16)\0Astoreli.w $15, 124($16)\0Aloadli.w $0, 128($16)\0Aloadli.w $1, 132($16)\0Aloadli.w $2, 136($16)\0Aloadli.w $3, 140($16)\0Aloadli.w $4, 144($16)\0Aloadli.w $5, 148($16)\0Aloadli.w $6, 152($16)\0Aloadli.w $7, 156($16)\0Aloadli.w $8, 160($16)\0Aloadli.w $9, 164($16)\0Aloadli.w $10, 168($16)\0Aloadli.w $11, 172($16)\0Aloadli.w $12, 176($16)\0Aloadli.w $13, 180($16)\0Aloadli.w $14, 184($16)\0Aloadli.w $15, 188($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 128($16)\0Astoreli.w $1, 132($16)\0Astoreli.w $2, 136($16)\0Astoreli.w $3, 140($16)\0Astoreli.w $4, 144($16)\0Astoreli.w $5, 148($16)\0Astoreli.w $6, 152($16)\0Astoreli.w $7, 156($16)\0Astoreli.w $8, 160($16)\0Astoreli.w $9, 164($16)\0Astoreli.w $10, 168($16)\0Astoreli.w $11, 172($16)\0Astoreli.w $12, 176($16)\0Astoreli.w $13, 180($16)\0Astoreli.w $14, 184($16)\0Astoreli.w $15, 188($16)\0Aloadli.w $0, 192($16)\0Aloadli.w $1, 196($16)\0Aloadli.w $2, 200($16)\0Aloadli.w $3, 204($16)\0Aloadli.w $4, 208($16)\0Aloadli.w $5, 212($16)\0Aloadli.w $6, 216($16)\0Aloadli.w $7, 220($16)\0Aloadli.w $8, 224($16)\0Aloadli.w $9, 228($16)\0Aloadli.w $10, 232($16)\0Aloadli.w $11, 236($16)\0Aloadli.w $12, 240($16)\0Aloadli.w $13, 244($16)\0Aloadli.w $14, 248($16)\0Aloadli.w $15, 252($16)\0Aexp.f.rn $0, $0\0Aexp.f.rn $1, $1\0Aexp.f.rn $2, $2\0Aexp.f.rn $3, $3\0Aexp.f.rn $4, $4\0Aexp.f.rn $5, $5\0Aexp.f.rn $6, $6\0Aexp.f.rn $7, $7\0Aexp.f.rn $8, $8\0Aexp.f.rn $9, $9\0Aexp.f.rn $10, $10\0Aexp.f.rn $11, $11\0Aexp.f.rn $12, $12\0Aexp.f.rn $13, $13\0Aexp.f.rn $14, $14\0Aexp.f.rn $15, $15\0Astoreli.w $0, 192($16)\0Astoreli.w $1, 196($16)\0Astoreli.w $2, 200($16)\0Astoreli.w $3, 204($16)\0Astoreli.w $4, 208($16)\0Astoreli.w $5, 212($16)\0Astoreli.w $6, 216($16)\0Astoreli.w $7, 220($16)\0Astoreli.w $8, 224($16)\0Astoreli.w $9, 228($16)\0Astoreli.w $10, 232($16)\0Astoreli.w $11, 236($16)\0Astoreli.w $12, 240($16)\0Astoreli.w $13, 244($16)\0Astoreli.w $14, 248($16)\0Astoreli.w $15, 252($16)\0Amfence { lm }", "=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,=&r,r,~{memory}"(ptr nonnull %20) #2, !dbg !12
  %377 = load volatile <16 x float>, ptr %20, align 64, !dbg !12
  %378 = load volatile <16 x float>, ptr %51, align 64, !dbg !12
  %379 = load volatile <16 x float>, ptr %52, align 64, !dbg !12
  %380 = load volatile <16 x float>, ptr %53, align 64, !dbg !12
  %381 = fadd <16 x float> %342, %343, !dbg !7
  %382 = fadd <16 x float> %381, %344, !dbg !7
  %383 = fadd <16 x float> %382, %345, !dbg !7
  %384 = fadd <16 x float> %383, %347, !dbg !7
  %385 = fadd <16 x float> %384, %348, !dbg !7
  %386 = fadd <16 x float> %385, %349, !dbg !7
  %387 = fadd <16 x float> %386, %350, !dbg !7
  %388 = fadd <16 x float> %387, %352, !dbg !7
  %389 = fadd <16 x float> %388, %353, !dbg !7
  %390 = fadd <16 x float> %389, %354, !dbg !7
  %391 = fadd <16 x float> %390, %355, !dbg !7
  %392 = fadd <16 x float> %391, %357, !dbg !7
  %393 = fadd <16 x float> %392, %358, !dbg !7
  %394 = fadd <16 x float> %393, %359, !dbg !7
  %395 = fadd <16 x float> %394, %360, !dbg !7
  %396 = fadd <16 x float> %395, %362, !dbg !7
  %397 = fadd <16 x float> %396, %363, !dbg !7
  %398 = fadd <16 x float> %397, %364, !dbg !7
  %399 = fadd <16 x float> %398, %365, !dbg !7
  %400 = fadd <16 x float> %399, %367, !dbg !7
  %401 = fadd <16 x float> %400, %368, !dbg !7
  %402 = fadd <16 x float> %401, %369, !dbg !7
  %403 = fadd <16 x float> %402, %370, !dbg !7
  %404 = fadd <16 x float> %403, %372, !dbg !7
  %405 = fadd <16 x float> %404, %373, !dbg !7
  %406 = fadd <16 x float> %405, %374, !dbg !7
  %407 = fadd <16 x float> %406, %375, !dbg !7
  %408 = fadd <16 x float> %407, %377, !dbg !7
  %409 = fadd <16 x float> %408, %378, !dbg !7
  %410 = fadd <16 x float> %409, %379, !dbg !7
  %411 = fadd <16 x float> %410, %380, !dbg !7
  %412 = extractelement <16 x float> %411, i64 0, !dbg !7
  %413 = extractelement <16 x float> %411, i64 1, !dbg !7
  %414 = fadd float %412, %413, !dbg !7
  %415 = extractelement <16 x float> %411, i64 2, !dbg !7
  %416 = fadd float %415, %414, !dbg !7
  %417 = extractelement <16 x float> %411, i64 3, !dbg !7
  %418 = fadd float %417, %416, !dbg !7
  %419 = extractelement <16 x float> %411, i64 4, !dbg !7
  %420 = fadd float %419, %418, !dbg !7
  %421 = extractelement <16 x float> %411, i64 5, !dbg !7
  %422 = fadd float %421, %420, !dbg !7
  %423 = extractelement <16 x float> %411, i64 6, !dbg !7
  %424 = fadd float %423, %422, !dbg !7
  %425 = extractelement <16 x float> %411, i64 7, !dbg !7
  %426 = fadd float %425, %424, !dbg !7
  %427 = extractelement <16 x float> %411, i64 8, !dbg !7
  %428 = fadd float %427, %426, !dbg !7
  %429 = extractelement <16 x float> %411, i64 9, !dbg !7
  %430 = fadd float %429, %428, !dbg !7
  %431 = extractelement <16 x float> %411, i64 10, !dbg !7
  %432 = fadd float %431, %430, !dbg !7
  %433 = extractelement <16 x float> %411, i64 11, !dbg !7
  %434 = fadd float %433, %432, !dbg !7
  %435 = extractelement <16 x float> %411, i64 12, !dbg !7
  %436 = fadd float %435, %434, !dbg !7
  %437 = extractelement <16 x float> %411, i64 13, !dbg !7
  %438 = fadd float %437, %436, !dbg !7
  %439 = extractelement <16 x float> %411, i64 14, !dbg !7
  %440 = fadd float %439, %438, !dbg !7
  %441 = extractelement <16 x float> %411, i64 15, !dbg !7
  %442 = fadd float %441, %440, !dbg !7
  store float %442, ptr addrspace(2) %19, align 4, !dbg !7
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  br i1 %46, label %443, label %451, !dbg !7

443:                                              ; preds = %306
  %444 = load float, ptr addrspace(2) %54, align 8, !dbg !7
  %445 = load float, ptr addrspace(2) %55, align 4, !dbg !7
  %446 = load float, ptr addrspace(2) %56, align 8, !dbg !7
  %447 = load float, ptr addrspace(2) %57, align 4, !dbg !7
  %448 = fadd float %444, %445, !dbg !7
  %449 = fadd float %448, %446, !dbg !7
  %450 = fadd float %449, %447, !dbg !7
  store float %450, ptr addrspace(2) %54, align 8, !dbg !7
  br label %451, !dbg !7

451:                                              ; preds = %443, %306
  call void @llvm.xpu.mfence.v2(i32 7), !dbg !7
  call void @llvm.xpu.csr_set_sync_group(i32 65535), !dbg !7
  %452 = load float, ptr addrspace(2) %54, align 8, !dbg !7
  %453 = fdiv float 1.000000e+00, %452, !dbg !19
  %454 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %342) #2, !dbg !20
  %455 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %343) #2, !dbg !20
  %456 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %344) #2, !dbg !20
  %457 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %345) #2, !dbg !20
  %458 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %347) #2, !dbg !20
  %459 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %348) #2, !dbg !20
  %460 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %349) #2, !dbg !20
  %461 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %350) #2, !dbg !20
  %462 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %352) #2, !dbg !20
  %463 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %353) #2, !dbg !20
  %464 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %354) #2, !dbg !20
  %465 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %355) #2, !dbg !20
  %466 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %357) #2, !dbg !20
  %467 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %358) #2, !dbg !20
  %468 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %359) #2, !dbg !20
  %469 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %360) #2, !dbg !20
  %470 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %362) #2, !dbg !20
  %471 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %363) #2, !dbg !20
  %472 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %364) #2, !dbg !20
  %473 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %365) #2, !dbg !20
  %474 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %367) #2, !dbg !20
  %475 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %368) #2, !dbg !20
  %476 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %369) #2, !dbg !20
  %477 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %370) #2, !dbg !20
  %478 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %372) #2, !dbg !20
  %479 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %373) #2, !dbg !20
  %480 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %374) #2, !dbg !20
  %481 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %375) #2, !dbg !20
  %482 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %377) #2, !dbg !20
  %483 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %378) #2, !dbg !20
  %484 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %379) #2, !dbg !20
  %485 = call <16 x float> asm "vmul.f.mz.rn $0{mr1}, $1, $2", "=v,r,v"(float %453, <16 x float> %380) #2, !dbg !20
  store <16 x float> %454, ptr %68, align 64, !dbg !21
  store <16 x float> %455, ptr %78, align 64, !dbg !21
  store <16 x float> %456, ptr %80, align 64, !dbg !21
  store <16 x float> %457, ptr %82, align 64, !dbg !21
  store <16 x float> %458, ptr %84, align 64, !dbg !21
  store <16 x float> %459, ptr %86, align 64, !dbg !21
  store <16 x float> %460, ptr %88, align 64, !dbg !21
  store <16 x float> %461, ptr %90, align 64, !dbg !21
  store <16 x float> %462, ptr %92, align 64, !dbg !21
  store <16 x float> %463, ptr %94, align 64, !dbg !21
  store <16 x float> %464, ptr %96, align 64, !dbg !21
  store <16 x float> %465, ptr %98, align 64, !dbg !21
  store <16 x float> %466, ptr %100, align 64, !dbg !21
  store <16 x float> %467, ptr %102, align 64, !dbg !21
  store <16 x float> %468, ptr %104, align 64, !dbg !21
  store <16 x float> %469, ptr %106, align 64, !dbg !21
  store <16 x float> %470, ptr %108, align 64, !dbg !21
  store <16 x float> %471, ptr %110, align 64, !dbg !21
  store <16 x float> %472, ptr %112, align 64, !dbg !21
  store <16 x float> %473, ptr %114, align 64, !dbg !21
  store <16 x float> %474, ptr %116, align 64, !dbg !21
  store <16 x float> %475, ptr %118, align 64, !dbg !21
  store <16 x float> %476, ptr %120, align 64, !dbg !21
  store <16 x float> %477, ptr %122, align 64, !dbg !21
  store <16 x float> %478, ptr %124, align 64, !dbg !21
  store <16 x float> %479, ptr %126, align 64, !dbg !21
  store <16 x float> %480, ptr %128, align 64, !dbg !21
  store <16 x float> %481, ptr %130, align 64, !dbg !21
  store <16 x float> %482, ptr %132, align 64, !dbg !21
  store <16 x float> %483, ptr %134, align 64, !dbg !21
  store <16 x float> %484, ptr %136, align 64, !dbg !21
  store <16 x float> %485, ptr %138, align 64, !dbg !21
  %reass.mul2 = mul i64 %reass.add, %11, !dbg !15
  %486 = add i64 %reass.mul2, %58, !dbg !15
  %487 = icmp slt i32 %72, %9, !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %488 = shl i64 %486, 2, !dbg !15
  %489 = getelementptr i8, ptr addrspace(1) %8, i64 %488, !dbg !15
  %490 = select i1 %487, i32 %62, i32 0, !dbg !15
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %489, ptr nonnull %68, i32 0, i32 %490), !dbg !15
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !15
  %491 = add i32 %64, %23
  %492 = icmp slt i32 %491, %25
  br i1 %492, label %63, label %._crit_edge

._crit_edge:                                      ; preds = %451, %17
  ret void, !dbg !22
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
!1 = !DIFile(filename: "_p800_reduce.py", directory: "/opt/hsp/triton/experimental/graph_fusion")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @_tle_row_softmax, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "_tle_row_softmax", linkageName: "_tle_row_softmax", scope: !1, file: !1, line: 335, type: !5, scopeLine: 335, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!16 = !DILocation(line: 352, column: 17, scope: !4)
!17 = !DILocation(line: 352, column: 22, scope: !4)
!18 = !DILocation(line: 354, column: 19, scope: !4)
!19 = !DILocation(line: 356, column: 25, scope: !4)
!20 = !DILocation(line: 357, column: 21, scope: !4)
!21 = !DILocation(line: 357, column: 16, scope: !4)
!22 = !DILocation(line: 358, column: 4, scope: !4)
