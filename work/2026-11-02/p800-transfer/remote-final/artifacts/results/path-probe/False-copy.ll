; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: nounwind
define dso_local amdgpu_gfx_whole_wave void @copy_kernel(ptr addrspace(1) %0, ptr addrspace(1) %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 !dbg !4 {
  %6 = tail call i32 @llvm.xpu.load_param(i32 0)
  %7 = tail call i32 @llvm.xpu.load_param(i32 1)
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, %4
  %10 = tail call i32 @llvm.xpu.load_param(i32 2)
  %11 = tail call i32 @llvm.xpu.core_id()
  %12 = shl i32 %11, 6
  %13 = icmp slt i32 %6, %9
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %5, %.lr.ph
  %14 = phi i32 [ %23, %.lr.ph ], [ %6, %5 ]
  %15 = sdiv i32 %14, %4
  %16 = sdiv i32 %15, %3
  %17 = alloca [64 x float], align 4, !dbg !7
  %18 = shl i32 %16, 12, !dbg !8
  %19 = add i32 %18, %12, !dbg !9
  %20 = sext i32 %19 to i64, !dbg !10
  %21 = getelementptr float, ptr addrspace(1) %1, i64 %20, !dbg !10
  %22 = getelementptr float, ptr addrspace(1) %0, i64 %20, !dbg !11
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %17, ptr addrspace(1) %22, i32 0, i32 256), !dbg !7
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !7
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %21, ptr nonnull %17, i32 0, i32 256), !dbg !12
  call void @llvm.xpu.mfence.v2(i32 1), !dbg !12
  %23 = add i32 %14, %7
  %24 = icmp slt i32 %23, %9
  br i1 %24, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %5
  ret void, !dbg !13
}

; Function Attrs: nofree nosync nounwind memory(none)
; Unknown intrinsic
declare i32 @llvm.xpu.load_param(i32) #1

; Function Attrs: nofree nosync nounwind memory(none)
; Unknown intrinsic
declare i32 @llvm.xpu.core_id() #1

; Function Attrs: nounwind memory(argmem: readwrite)
; Unknown intrinsic
declare void @llvm.xpu.gm2lm_v3(ptr, ptr addrspace(1), i32, i32) #2

; Function Attrs: nounwind
; Unknown intrinsic
declare void @llvm.xpu.mfence.v2(i32) #3

; Function Attrs: nounwind memory(argmem: readwrite)
; Unknown intrinsic
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind memory(none) }
attributes #2 = { nounwind memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}
!xpu.annotations = !{!3}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "triton", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly)
!1 = !DIFile(filename: "transfer_kernels.py", directory: "/data2/zhaoweiming/p800-transfer-20261102")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{ptr @copy_kernel, !"kernel", i32 1}
!4 = distinct !DISubprogram(name: "copy_kernel", linkageName: "copy_kernel", scope: !1, file: !1, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!5 = !DISubroutineType(cc: DW_CC_normal, types: !6)
!6 = !{}
!7 = !DILocation(line: 8, column: 25, scope: !4)
!8 = !DILocation(line: 7, column: 23, scope: !4)
!9 = !DILocation(line: 7, column: 29, scope: !4)
!10 = !DILocation(line: 8, column: 15, scope: !4)
!11 = !DILocation(line: 8, column: 27, scope: !4)
!12 = !DILocation(line: 8, column: 17, scope: !4)
!13 = !DILocation(line: 8, column: 4, scope: !4)
