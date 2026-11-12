; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !8 void @llvm.xpu.dma_run.v3(i32) #0

; Function Attrs: nounwind memory(argmem: readwrite)
; Unknown intrinsic
declare !dbg !11 void @llvm.xpu.dma_cfg(i32, i32, i32, i32) #1

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !12 void @llvm.xpu.xwait(i32, i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !13 void @llvm.xpu.xsignal(i32, i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !15 void @llvm.xpu.csr_set_sync_group(i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !16 void @llvm.xpu.unlock(i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !17 void @llvm.xpu.ew_cfg(i32, i32, i32, i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !18 void @llvm.xpu.lock.v2(i32, i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !19 void @llvm.xpu.uni_sram_cfg(i32, i32) #0

; Function Attrs: nounwind
; Unknown intrinsic
declare !dbg !20 void @llvm.xpu.xsignal_mode_cfg(i32) #0

; Function Attrs: nounwind
define dso_local amdgpu_gfx_whole_wave void @copy_kernel(ptr addrspace(1) %0, ptr addrspace(1) %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #2 !dbg !21 {
  tail call void @llvm.xpu.xsignal_mode_cfg(i32 1)
  %6 = tail call i32 @llvm.xpu.core_id(), !dbg !22
  %7 = icmp eq i32 %6, 0, !dbg !23
  br i1 %7, label %8, label %.critedge

8:                                                ; preds = %5
  tail call void @llvm.xpu.uni_sram_cfg(i32 1, i32 1)
  tail call void @llvm.xpu.lock.v2(i32 0, i32 2)
  tail call void @llvm.xpu.ew_cfg(i32 1, i32 0, i32 0, i32 16)
  tail call void @llvm.xpu.unlock(i32 2)
  tail call void @llvm.xpu.csr_set_sync_group(i32 -1)
  tail call void @llvm.xpu.xsignal(i32 3, i32 0)
  br label %9

.critedge:                                        ; preds = %5
  tail call void @llvm.xpu.csr_set_sync_group(i32 -1)
  br label %9

9:                                                ; preds = %.critedge, %8
  %10 = tail call i32 @llvm.xpu.load_param(i32 0)
  %11 = tail call i32 @llvm.xpu.load_param(i32 1)
  %12 = mul i32 %3, %2
  %13 = mul i32 %12, %4
  %14 = add i32 %13, -1
  %15 = add i32 %14, %11
  %16 = sdiv i32 %15, %11
  %17 = mul i32 %16, %10
  %18 = add i32 %17, %16
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %13)
  %20 = sext i32 %17 to i64
  %21 = sext i32 %19 to i64
  %22 = icmp slt i32 %17, %19
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %9
  %23 = icmp eq i32 %6, 1
  br i1 %23, label %.thread.us, label %.lr.ph.split

.thread.us:                                       ; preds = %.lr.ph, %.thread.us
  %24 = phi i64 [ %34, %.thread.us ], [ %20, %.lr.ph ]
  %25 = trunc nsw i64 %24 to i32
  %26 = sdiv i32 %25, %4
  %27 = sdiv i32 %26, %3
  %28 = sext i32 %27 to i64, !dbg !24
  %.idx1 = shl nsw i64 %28, 14, !dbg !22
  %29 = getelementptr i8, ptr addrspace(1) %0, i64 %.idx1, !dbg !22
  tail call void @llvm.xpu.xwait(i32 3, i32 0), !dbg !22
  tail call void @llvm.xpu.lock.v2(i32 0, i32 4), !dbg !22
  tail call void @llvm.xpu.dma_cfg(i32 0, i32 0, i32 0, i32 0), !dbg !22
  %30 = ptrtoint ptr addrspace(1) %29 to i64, !dbg !22
  %31 = lshr i64 %30, 32, !dbg !22
  %32 = trunc nuw i64 %31 to i32, !dbg !22
  tail call void @llvm.xpu.dma_cfg(i32 0, i32 %32, i32 0, i32 2), !dbg !22
  %33 = trunc i64 %30 to i32, !dbg !22
  tail call void @llvm.xpu.dma_cfg(i32 0, i32 %33, i32 16384, i32 3), !dbg !22
  tail call void @llvm.xpu.dma_cfg(i32 16384, i32 16384, i32 1, i32 4), !dbg !22
  tail call void @llvm.xpu.dma_run.v3(i32 0), !dbg !22
  tail call void @llvm.xpu.unlock(i32 4), !dbg !22
  tail call void @llvm.xpu.xsignal(i32 2, i32 0), !dbg !22
  %34 = add nsw i64 %24, 1
  %35 = icmp slt i64 %34, %21
  br i1 %35, label %.thread.us, label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %7, label %.lr.ph.split.split.us, label %._crit_edge.thread

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split.split.us
  %36 = phi i64 [ %46, %.lr.ph.split.split.us ], [ %20, %.lr.ph.split ]
  %37 = trunc nsw i64 %36 to i32
  %38 = sdiv i32 %37, %4
  %39 = sdiv i32 %38, %3
  %40 = sext i32 %39 to i64, !dbg !24
  %.idx = shl nsw i64 %40, 14, !dbg !23
  %41 = getelementptr i8, ptr addrspace(1) %1, i64 %.idx, !dbg !23
  tail call void @llvm.xpu.xwait(i32 2, i32 0), !dbg !23
  tail call void @llvm.xpu.lock.v2(i32 0, i32 5), !dbg !23
  tail call void @llvm.xpu.dma_cfg(i32 0, i32 0, i32 0, i32 0), !dbg !23
  tail call void @llvm.xpu.dma_cfg(i32 0, i32 1, i32 0, i32 1), !dbg !23
  %42 = ptrtoint ptr addrspace(1) %41 to i64, !dbg !23
  %43 = lshr i64 %42, 32, !dbg !23
  %44 = trunc nuw i64 %43 to i32, !dbg !23
  tail call void @llvm.xpu.dma_cfg(i32 %44, i32 0, i32 0, i32 2), !dbg !23
  %45 = trunc i64 %42 to i32, !dbg !23
  tail call void @llvm.xpu.dma_cfg(i32 %45, i32 0, i32 16384, i32 3), !dbg !23
  tail call void @llvm.xpu.dma_cfg(i32 16384, i32 16384, i32 1, i32 4), !dbg !23
  tail call void @llvm.xpu.dma_run.v3(i32 0), !dbg !23
  tail call void @llvm.xpu.unlock(i32 5), !dbg !23
  tail call void @llvm.xpu.xsignal(i32 3, i32 0), !dbg !23
  %46 = add nsw i64 %36, 1
  %47 = icmp slt i64 %46, %21
  br i1 %47, label %.lr.ph.split.split.us, label %._crit_edge.thread4

._crit_edge.thread4:                              ; preds = %.lr.ph.split.split.us
  tail call void @llvm.xpu.xsignal(i32 0, i32 0), !dbg !25
  br label %48, !dbg !25

._crit_edge.thread:                               ; preds = %.thread.us, %.lr.ph.split
  tail call void @llvm.xpu.xsignal(i32 0, i32 0), !dbg !25
  br label %49, !dbg !25

._crit_edge:                                      ; preds = %9
  tail call void @llvm.xpu.xsignal(i32 0, i32 0), !dbg !25
  br i1 %7, label %48, label %49, !dbg !25

48:                                               ; preds = %._crit_edge.thread4, %._crit_edge
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.xwait(i32 0, i32 0), !dbg !25
  tail call void @llvm.xpu.lock.v2(i32 0, i32 2), !dbg !25
  tail call void @llvm.xpu.ew_cfg(i32 0, i32 0, i32 0, i32 16), !dbg !25
  tail call void @llvm.xpu.unlock(i32 2), !dbg !25
  tail call void @llvm.xpu.xsignal_mode_cfg(i32 0), !dbg !25
  br label %49, !dbg !25

49:                                               ; preds = %._crit_edge.thread, %48, %._crit_edge
  ret void, !dbg !25
}

; Function Attrs: nofree nosync nounwind memory(none)
; Unknown intrinsic
declare i32 @llvm.xpu.core_id() #3

; Function Attrs: nofree nosync nounwind memory(none)
; Unknown intrinsic
declare i32 @llvm.xpu.load_param(i32) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind "target-features"="+cdnn3" }
attributes #1 = { nounwind memory(argmem: readwrite) "target-features"="+cdnn3" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "target-features"="+cdnn3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind memory(none) "target-features"="+cdnn3" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) "target-features"="+cdnn3" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}
!xpu.host.triple = !{!5}
!llvm.ident = !{!6}
!xpu.annotations = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "triton", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly)
!1 = !DIFile(filename: "transfer_kernels.py", directory: "/data2/zhaoweiming/p800-transfer-20261102")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"x86_64-baidu-linux-gnu"}
!6 = !{!"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"}
!7 = !{ptr @copy_kernel, !"kernel", i32 1}
!8 = !DISubprogram(name: "llvm.xpu.dma_run.v3", linkageName: "llvm.xpu.dma_run.v3", scope: !1, file: !1, line: 8, type: !9, scopeLine: 8, spFlags: DISPFlagOptimized)
!9 = !DISubroutineType(cc: DW_CC_normal, types: !10)
!10 = !{}
!11 = !DISubprogram(name: "llvm.xpu.dma_cfg", linkageName: "llvm.xpu.dma_cfg", scope: !1, file: !1, line: 8, type: !9, scopeLine: 8, spFlags: DISPFlagOptimized)
!12 = !DISubprogram(name: "llvm.xpu.xwait", linkageName: "llvm.xpu.xwait", scope: !1, file: !1, line: 8, type: !9, scopeLine: 8, spFlags: DISPFlagOptimized)
!13 = !DISubprogram(name: "llvm.xpu.xsignal", linkageName: "llvm.xpu.xsignal", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!14 = !DIFile(filename: "<unknown>", directory: "")
!15 = !DISubprogram(name: "llvm.xpu.csr_set_sync_group", linkageName: "llvm.xpu.csr_set_sync_group", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!16 = !DISubprogram(name: "llvm.xpu.unlock", linkageName: "llvm.xpu.unlock", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!17 = !DISubprogram(name: "llvm.xpu.ew_cfg", linkageName: "llvm.xpu.ew_cfg", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!18 = !DISubprogram(name: "llvm.xpu.lock.v2", linkageName: "llvm.xpu.lock.v2", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!19 = !DISubprogram(name: "llvm.xpu.uni_sram_cfg", linkageName: "llvm.xpu.uni_sram_cfg", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!20 = !DISubprogram(name: "llvm.xpu.xsignal_mode_cfg", linkageName: "llvm.xpu.xsignal_mode_cfg", scope: !14, file: !14, type: !9, spFlags: DISPFlagOptimized)
!21 = distinct !DISubprogram(name: "copy_kernel", linkageName: "copy_kernel", scope: !1, file: !1, line: 6, type: !9, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!22 = !DILocation(line: 8, column: 25, scope: !21)
!23 = !DILocation(line: 8, column: 17, scope: !21)
!24 = !DILocation(line: 8, column: 27, scope: !21)
!25 = !DILocation(line: 6, scope: !21)
