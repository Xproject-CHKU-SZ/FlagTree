; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: nounwind
define dso_local xpu_kernel void @_tle_row_softmax_preadded_copy(ptr addrspace(1) %0, i32 %1, i32 %2, i64 %3, i64 %4, ptr addrspace(1) readnone nocapture %5, i32 %6, i64 %7, ptr addrspace(1) %8, i32 %9, i32 %10, i64 %11, i64 %12, i32 %13, i32 %14, i32 %15, i32 %16) local_unnamed_addr #0 !dbg !4 {
  %18 = tail call i32 @llvm.xpu.load_param(i32 0)
  %19 = tail call i32 @llvm.xpu.load_param(i32 1)
  %20 = mul i32 %15, %14
  %21 = mul i32 %20, %16
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %17
  %23 = tail call i32 @llvm.xpu.core_id()
  %24 = lshr i32 %23, 2
  %25 = and i32 %24, 15
  %26 = zext nneg i32 %25 to i64
  %27 = shl i32 %23, 9
  %28 = and i32 %27, 1536
  %29 = zext nneg i32 %28 to i64
  %30 = mul i64 %4, %29
  %31 = sub i32 %2, %28
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0)
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 512)
  %34 = shl nuw nsw i32 %33, 2
  %35 = mul i64 %12, %29
  %36 = sub i32 %10, %28
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0)
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 512)
  %39 = shl nuw nsw i32 %38, 2
  br label %40

40:                                               ; preds = %.lr.ph, %40
  %41 = phi i32 [ %18, %.lr.ph ], [ %58, %40 ]
  %42 = sdiv i32 %41, %16
  %43 = sdiv i32 %42, %15
  %44 = shl i32 %43, 4, !dbg !7
  %45 = alloca [512 x float], align 4, !dbg !7
  %46 = sext i32 %44 to i64, !dbg !8
  %reass.add = or disjoint i64 %26, %46, !dbg !8
  %reass.mul = mul i64 %reass.add, %3, !dbg !8
  %47 = add i64 %reass.mul, %30, !dbg !8
  %48 = or disjoint i32 %25, %44, !dbg !8
  %49 = icmp slt i32 %48, %1, !dbg !8
  %50 = shl i64 %47, 2, !dbg !8
  %51 = getelementptr i8, ptr addrspace(1) %0, i64 %50, !dbg !8
  %52 = select i1 %49, i32 %34, i32 0, !dbg !8
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %45, ptr addrspace(1) %51, i32 0, i32 %52), !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %reass.mul2 = mul i64 %reass.add, %11, !dbg !8
  %53 = add i64 %reass.mul2, %35, !dbg !8
  %54 = icmp slt i32 %48, %9, !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %55 = shl i64 %53, 2, !dbg !8
  %56 = getelementptr i8, ptr addrspace(1) %8, i64 %55, !dbg !8
  %57 = select i1 %54, i32 %39, i32 0, !dbg !8
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %56, ptr nonnull %45, i32 0, i32 %57), !dbg !8
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !8
  %58 = add i32 %41, %19
  %59 = icmp slt i32 %58, %21
  br i1 %59, label %40, label %._crit_edge

._crit_edge:                                      ; preds = %40, %17
  ret void, !dbg !9
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
!1 = !DIFile(filename: "preadded_copy.py", directory: "/tmp")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @_tle_row_softmax_preadded_copy, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "_tle_row_softmax_preadded_copy", linkageName: "_tle_row_softmax_preadded_copy", scope: !1, file: !1, line: 335, type: !5, scopeLine: 335, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 342, column: 20, scope: !4)
!8 = !DILocation(line: 335, scope: !4)
!9 = !DILocation(line: 358, column: 4, scope: !4)
