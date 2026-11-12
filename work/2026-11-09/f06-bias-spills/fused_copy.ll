; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: nounwind
define dso_local xpu_kernel void @_tle_row_softmax_fused_copy(ptr addrspace(1) %0, i32 %1, i32 %2, i64 %3, i64 %4, ptr addrspace(1) %5, i32 %6, i64 %7, ptr addrspace(1) %8, i32 %9, i32 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16) local_unnamed_addr #0 !dbg !4 {
  %18 = tail call i32 @llvm.xpu.load_param(i32 0)
  %19 = tail call i32 @llvm.xpu.load_param(i32 1)
  %20 = mul i32 %15, %14
  %21 = mul i32 %20, %16
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %17
  %23 = tail call i32 @llvm.xpu.core_id()
  %24 = lshr i32 %23, 2
  %25 = shl i32 %23, 9
  %26 = and i32 %25, 1536
  %27 = zext nneg i32 %26 to i64
  %28 = sub i32 %6, %26
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0)
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 512)
  %31 = shl i64 %7, 2
  %32 = mul i64 %31, %27
  %33 = getelementptr i8, ptr addrspace(1) %5, i64 %32
  %34 = shl nuw nsw i32 %30, 2
  %35 = and i32 %24, 15
  %36 = zext nneg i32 %35 to i64
  %37 = mul i64 %4, %27
  %38 = sub i32 %2, %26
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0)
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 512)
  %41 = shl nuw nsw i32 %40, 2
  %42 = mul i64 %12, %27
  %43 = sub i32 %10, %26
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 512)
  %46 = shl nuw nsw i32 %45, 2
  br label %47

47:                                               ; preds = %.lr.ph, %47
  %48 = phi i32 [ %18, %.lr.ph ], [ %224, %47 ]
  %49 = sdiv i32 %48, %16
  %50 = sdiv i32 %49, %15
  %51 = shl i32 %50, 4, !dbg !7
  %52 = alloca [512 x float], align 4, !dbg !7
  %53 = alloca [512 x float], align 4, !dbg !7
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %53, ptr addrspace(1) %33, i32 0, i32 %34), !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %54 = sext i32 %51 to i64, !dbg !8
  %reass.add = or disjoint i64 %36, %54, !dbg !8
  %reass.mul = mul i64 %reass.add, %3, !dbg !8
  %55 = add i64 %reass.mul, %37, !dbg !8
  %56 = or disjoint i32 %35, %51, !dbg !8
  %57 = icmp slt i32 %56, %1, !dbg !8
  %58 = shl i64 %55, 2, !dbg !8
  %59 = getelementptr i8, ptr addrspace(1) %0, i64 %58, !dbg !8
  %60 = select i1 %57, i32 %41, i32 0, !dbg !8
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %52, ptr addrspace(1) %59, i32 0, i32 %60), !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %61 = load <16 x float>, ptr %52, align 64, !dbg !9
  %62 = getelementptr inbounds i8, ptr %52, i32 64, !dbg !9
  %63 = load <16 x float>, ptr %62, align 64, !dbg !9
  %64 = getelementptr inbounds i8, ptr %52, i32 128, !dbg !9
  %65 = load <16 x float>, ptr %64, align 64, !dbg !9
  %66 = getelementptr inbounds i8, ptr %52, i32 192, !dbg !9
  %67 = load <16 x float>, ptr %66, align 64, !dbg !9
  %68 = getelementptr inbounds i8, ptr %52, i32 256, !dbg !9
  %69 = load <16 x float>, ptr %68, align 64, !dbg !9
  %70 = getelementptr inbounds i8, ptr %52, i32 320, !dbg !9
  %71 = load <16 x float>, ptr %70, align 64, !dbg !9
  %72 = getelementptr inbounds i8, ptr %52, i32 384, !dbg !9
  %73 = load <16 x float>, ptr %72, align 64, !dbg !9
  %74 = getelementptr inbounds i8, ptr %52, i32 448, !dbg !9
  %75 = load <16 x float>, ptr %74, align 64, !dbg !9
  %76 = getelementptr inbounds i8, ptr %52, i32 512, !dbg !9
  %77 = load <16 x float>, ptr %76, align 64, !dbg !9
  %78 = getelementptr inbounds i8, ptr %52, i32 576, !dbg !9
  %79 = load <16 x float>, ptr %78, align 64, !dbg !9
  %80 = getelementptr inbounds i8, ptr %52, i32 640, !dbg !9
  %81 = load <16 x float>, ptr %80, align 64, !dbg !9
  %82 = getelementptr inbounds i8, ptr %52, i32 704, !dbg !9
  %83 = load <16 x float>, ptr %82, align 64, !dbg !9
  %84 = getelementptr inbounds i8, ptr %52, i32 768, !dbg !9
  %85 = load <16 x float>, ptr %84, align 64, !dbg !9
  %86 = getelementptr inbounds i8, ptr %52, i32 832, !dbg !9
  %87 = load <16 x float>, ptr %86, align 64, !dbg !9
  %88 = getelementptr inbounds i8, ptr %52, i32 896, !dbg !9
  %89 = load <16 x float>, ptr %88, align 64, !dbg !9
  %90 = getelementptr inbounds i8, ptr %52, i32 960, !dbg !9
  %91 = load <16 x float>, ptr %90, align 64, !dbg !9
  %92 = getelementptr inbounds i8, ptr %52, i32 1024, !dbg !9
  %93 = load <16 x float>, ptr %92, align 64, !dbg !9
  %94 = getelementptr inbounds i8, ptr %52, i32 1088, !dbg !9
  %95 = load <16 x float>, ptr %94, align 64, !dbg !9
  %96 = getelementptr inbounds i8, ptr %52, i32 1152, !dbg !9
  %97 = load <16 x float>, ptr %96, align 64, !dbg !9
  %98 = getelementptr inbounds i8, ptr %52, i32 1216, !dbg !9
  %99 = load <16 x float>, ptr %98, align 64, !dbg !9
  %100 = getelementptr inbounds i8, ptr %52, i32 1280, !dbg !9
  %101 = load <16 x float>, ptr %100, align 64, !dbg !9
  %102 = getelementptr inbounds i8, ptr %52, i32 1344, !dbg !9
  %103 = load <16 x float>, ptr %102, align 64, !dbg !9
  %104 = getelementptr inbounds i8, ptr %52, i32 1408, !dbg !9
  %105 = load <16 x float>, ptr %104, align 64, !dbg !9
  %106 = getelementptr inbounds i8, ptr %52, i32 1472, !dbg !9
  %107 = load <16 x float>, ptr %106, align 64, !dbg !9
  %108 = getelementptr inbounds i8, ptr %52, i32 1536, !dbg !9
  %109 = load <16 x float>, ptr %108, align 64, !dbg !9
  %110 = getelementptr inbounds i8, ptr %52, i32 1600, !dbg !9
  %111 = load <16 x float>, ptr %110, align 64, !dbg !9
  %112 = getelementptr inbounds i8, ptr %52, i32 1664, !dbg !9
  %113 = load <16 x float>, ptr %112, align 64, !dbg !9
  %114 = getelementptr inbounds i8, ptr %52, i32 1728, !dbg !9
  %115 = load <16 x float>, ptr %114, align 64, !dbg !9
  %116 = getelementptr inbounds i8, ptr %52, i32 1792, !dbg !9
  %117 = load <16 x float>, ptr %116, align 64, !dbg !9
  %118 = getelementptr inbounds i8, ptr %52, i32 1856, !dbg !9
  %119 = load <16 x float>, ptr %118, align 64, !dbg !9
  %120 = getelementptr inbounds i8, ptr %52, i32 1920, !dbg !9
  %121 = load <16 x float>, ptr %120, align 64, !dbg !9
  %122 = getelementptr inbounds i8, ptr %52, i32 1984, !dbg !9
  %123 = load <16 x float>, ptr %122, align 64, !dbg !9
  %124 = load <16 x float>, ptr %53, align 64, !dbg !10
  %125 = getelementptr inbounds i8, ptr %53, i32 64, !dbg !10
  %126 = load <16 x float>, ptr %125, align 64, !dbg !10
  %127 = getelementptr inbounds i8, ptr %53, i32 128, !dbg !10
  %128 = load <16 x float>, ptr %127, align 64, !dbg !10
  %129 = getelementptr inbounds i8, ptr %53, i32 192, !dbg !10
  %130 = load <16 x float>, ptr %129, align 64, !dbg !10
  %131 = getelementptr inbounds i8, ptr %53, i32 256, !dbg !10
  %132 = load <16 x float>, ptr %131, align 64, !dbg !10
  %133 = getelementptr inbounds i8, ptr %53, i32 320, !dbg !10
  %134 = load <16 x float>, ptr %133, align 64, !dbg !10
  %135 = getelementptr inbounds i8, ptr %53, i32 384, !dbg !10
  %136 = load <16 x float>, ptr %135, align 64, !dbg !10
  %137 = getelementptr inbounds i8, ptr %53, i32 448, !dbg !10
  %138 = load <16 x float>, ptr %137, align 64, !dbg !10
  %139 = getelementptr inbounds i8, ptr %53, i32 512, !dbg !10
  %140 = load <16 x float>, ptr %139, align 64, !dbg !10
  %141 = getelementptr inbounds i8, ptr %53, i32 576, !dbg !10
  %142 = load <16 x float>, ptr %141, align 64, !dbg !10
  %143 = getelementptr inbounds i8, ptr %53, i32 640, !dbg !10
  %144 = load <16 x float>, ptr %143, align 64, !dbg !10
  %145 = getelementptr inbounds i8, ptr %53, i32 704, !dbg !10
  %146 = load <16 x float>, ptr %145, align 64, !dbg !10
  %147 = getelementptr inbounds i8, ptr %53, i32 768, !dbg !10
  %148 = load <16 x float>, ptr %147, align 64, !dbg !10
  %149 = getelementptr inbounds i8, ptr %53, i32 832, !dbg !10
  %150 = load <16 x float>, ptr %149, align 64, !dbg !10
  %151 = getelementptr inbounds i8, ptr %53, i32 896, !dbg !10
  %152 = load <16 x float>, ptr %151, align 64, !dbg !10
  %153 = getelementptr inbounds i8, ptr %53, i32 960, !dbg !10
  %154 = load <16 x float>, ptr %153, align 64, !dbg !10
  %155 = getelementptr inbounds i8, ptr %53, i32 1024, !dbg !10
  %156 = load <16 x float>, ptr %155, align 64, !dbg !10
  %157 = getelementptr inbounds i8, ptr %53, i32 1088, !dbg !10
  %158 = load <16 x float>, ptr %157, align 64, !dbg !10
  %159 = getelementptr inbounds i8, ptr %53, i32 1152, !dbg !10
  %160 = load <16 x float>, ptr %159, align 64, !dbg !10
  %161 = getelementptr inbounds i8, ptr %53, i32 1216, !dbg !10
  %162 = load <16 x float>, ptr %161, align 64, !dbg !10
  %163 = getelementptr inbounds i8, ptr %53, i32 1280, !dbg !10
  %164 = load <16 x float>, ptr %163, align 64, !dbg !10
  %165 = getelementptr inbounds i8, ptr %53, i32 1344, !dbg !10
  %166 = load <16 x float>, ptr %165, align 64, !dbg !10
  %167 = getelementptr inbounds i8, ptr %53, i32 1408, !dbg !10
  %168 = load <16 x float>, ptr %167, align 64, !dbg !10
  %169 = getelementptr inbounds i8, ptr %53, i32 1472, !dbg !10
  %170 = load <16 x float>, ptr %169, align 64, !dbg !10
  %171 = getelementptr inbounds i8, ptr %53, i32 1536, !dbg !10
  %172 = load <16 x float>, ptr %171, align 64, !dbg !10
  %173 = getelementptr inbounds i8, ptr %53, i32 1600, !dbg !10
  %174 = load <16 x float>, ptr %173, align 64, !dbg !10
  %175 = getelementptr inbounds i8, ptr %53, i32 1664, !dbg !10
  %176 = load <16 x float>, ptr %175, align 64, !dbg !10
  %177 = getelementptr inbounds i8, ptr %53, i32 1728, !dbg !10
  %178 = load <16 x float>, ptr %177, align 64, !dbg !10
  %179 = getelementptr inbounds i8, ptr %53, i32 1792, !dbg !10
  %180 = load <16 x float>, ptr %179, align 64, !dbg !10
  %181 = getelementptr inbounds i8, ptr %53, i32 1856, !dbg !10
  %182 = load <16 x float>, ptr %181, align 64, !dbg !10
  %183 = getelementptr inbounds i8, ptr %53, i32 1920, !dbg !10
  %184 = load <16 x float>, ptr %183, align 64, !dbg !10
  %185 = getelementptr inbounds i8, ptr %53, i32 1984, !dbg !10
  %186 = load <16 x float>, ptr %185, align 64, !dbg !10
  %187 = fadd <16 x float> %61, %124, !dbg !10
  %188 = fadd <16 x float> %63, %126, !dbg !10
  %189 = fadd <16 x float> %65, %128, !dbg !10
  %190 = fadd <16 x float> %67, %130, !dbg !10
  %191 = fadd <16 x float> %69, %132, !dbg !10
  %192 = fadd <16 x float> %71, %134, !dbg !10
  %193 = fadd <16 x float> %73, %136, !dbg !10
  %194 = fadd <16 x float> %75, %138, !dbg !10
  %195 = fadd <16 x float> %77, %140, !dbg !10
  %196 = fadd <16 x float> %79, %142, !dbg !10
  %197 = fadd <16 x float> %81, %144, !dbg !10
  %198 = fadd <16 x float> %83, %146, !dbg !10
  %199 = fadd <16 x float> %85, %148, !dbg !10
  %200 = fadd <16 x float> %87, %150, !dbg !10
  %201 = fadd <16 x float> %89, %152, !dbg !10
  %202 = fadd <16 x float> %91, %154, !dbg !10
  %203 = fadd <16 x float> %93, %156, !dbg !10
  %204 = fadd <16 x float> %95, %158, !dbg !10
  %205 = fadd <16 x float> %97, %160, !dbg !10
  %206 = fadd <16 x float> %99, %162, !dbg !10
  %207 = fadd <16 x float> %101, %164, !dbg !10
  %208 = fadd <16 x float> %103, %166, !dbg !10
  %209 = fadd <16 x float> %105, %168, !dbg !10
  %210 = fadd <16 x float> %107, %170, !dbg !10
  %211 = fadd <16 x float> %109, %172, !dbg !10
  %212 = fadd <16 x float> %111, %174, !dbg !10
  %213 = fadd <16 x float> %113, %176, !dbg !10
  %214 = fadd <16 x float> %115, %178, !dbg !10
  %215 = fadd <16 x float> %117, %180, !dbg !10
  %216 = fadd <16 x float> %119, %182, !dbg !10
  %217 = fadd <16 x float> %121, %184, !dbg !10
  %218 = fadd <16 x float> %123, %186, !dbg !10
  store <16 x float> %187, ptr %52, align 64, !dbg !11
  store <16 x float> %188, ptr %62, align 64, !dbg !11
  store <16 x float> %189, ptr %64, align 64, !dbg !11
  store <16 x float> %190, ptr %66, align 64, !dbg !11
  store <16 x float> %191, ptr %68, align 64, !dbg !11
  store <16 x float> %192, ptr %70, align 64, !dbg !11
  store <16 x float> %193, ptr %72, align 64, !dbg !11
  store <16 x float> %194, ptr %74, align 64, !dbg !11
  store <16 x float> %195, ptr %76, align 64, !dbg !11
  store <16 x float> %196, ptr %78, align 64, !dbg !11
  store <16 x float> %197, ptr %80, align 64, !dbg !11
  store <16 x float> %198, ptr %82, align 64, !dbg !11
  store <16 x float> %199, ptr %84, align 64, !dbg !11
  store <16 x float> %200, ptr %86, align 64, !dbg !11
  store <16 x float> %201, ptr %88, align 64, !dbg !11
  store <16 x float> %202, ptr %90, align 64, !dbg !11
  store <16 x float> %203, ptr %92, align 64, !dbg !11
  store <16 x float> %204, ptr %94, align 64, !dbg !11
  store <16 x float> %205, ptr %96, align 64, !dbg !11
  store <16 x float> %206, ptr %98, align 64, !dbg !11
  store <16 x float> %207, ptr %100, align 64, !dbg !11
  store <16 x float> %208, ptr %102, align 64, !dbg !11
  store <16 x float> %209, ptr %104, align 64, !dbg !11
  store <16 x float> %210, ptr %106, align 64, !dbg !11
  store <16 x float> %211, ptr %108, align 64, !dbg !11
  store <16 x float> %212, ptr %110, align 64, !dbg !11
  store <16 x float> %213, ptr %112, align 64, !dbg !11
  store <16 x float> %214, ptr %114, align 64, !dbg !11
  store <16 x float> %215, ptr %116, align 64, !dbg !11
  store <16 x float> %216, ptr %118, align 64, !dbg !11
  store <16 x float> %217, ptr %120, align 64, !dbg !11
  store <16 x float> %218, ptr %122, align 64, !dbg !11
  %reass.mul2 = mul i64 %reass.add, %11, !dbg !8
  %219 = add i64 %reass.mul2, %42, !dbg !8
  %220 = icmp slt i32 %56, %9, !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %221 = shl i64 %219, 2, !dbg !8
  %222 = getelementptr i8, ptr addrspace(1) %8, i64 %221, !dbg !8
  %223 = select i1 %220, i32 %46, i32 0, !dbg !8
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %222, ptr nonnull %52, i32 0, i32 %223), !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %224 = add i32 %48, %19
  %225 = icmp slt i32 %224, %21
  br i1 %225, label %47, label %._crit_edge

._crit_edge:                                      ; preds = %47, %17
  ret void, !dbg !12
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.load_param(i32) #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.core_id() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.gm2lm_v3(ptr, ptr addrspace(1), i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.xpu.mfence.v2(i32) #4

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}
!xpu.annotations = !{!3}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "triton", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly)
!1 = !DIFile(filename: "fused_copy.py", directory: "/tmp")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @_tle_row_softmax_fused_copy, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "_tle_row_softmax_fused_copy", linkageName: "_tle_row_softmax_fused_copy", scope: !1, file: !1, line: 335, type: !5, scopeLine: 335, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 342, column: 20, scope: !4)
!8 = !DILocation(line: 335, scope: !4)
!9 = !DILocation(line: 352, column: 17, scope: !4)
!10 = !DILocation(line: 352, column: 22, scope: !4)
!11 = !DILocation(line: 357, column: 16, scope: !4)
!12 = !DILocation(line: 358, column: 4, scope: !4)
