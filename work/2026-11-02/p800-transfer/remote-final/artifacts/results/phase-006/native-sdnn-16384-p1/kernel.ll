; ModuleID = '/data2/zhaoweiming/p800-transfer-20261102/native_transfer.xpu'
source_filename = "/data2/zhaoweiming/p800-transfer-20261102/native_transfer.xpu"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: convergent mustprogress norecurse nounwind
define dso_local xpu_kernel void @native_transfer(ptr addrspace(1) noundef %x, ptr addrspace(1) noundef %y, ptr addrspace(1) noundef %metrics, i32 noundef %nbytes, i32 noundef %repeats, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %data = alloca [8 x i64], align 16
  %0 = tail call noundef range(i32 0, 64) i32 @llvm.xpu.core_id(), !range !4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call noundef range(i32 0, 255) i32 @llvm.xpu.load_param(i32 0), !range !5
  %2 = tail call noundef range(i32 1, 256) i32 @llvm.xpu.load_param(i32 1), !range !6
  tail call void @llvm.xpu.xsignal_mode_cfg(i32 noundef 1) #5
  tail call void @llvm.xpu.uni_sram_cfg(i32 noundef 1, i32 noundef 1) #5
  tail call void @llvm.xpu.lock.v2(i32 noundef 0, i32 noundef 2) #5
  tail call void @llvm.xpu.ew_cfg(i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16) #5
  tail call void @llvm.xpu.unlock(i32 noundef 2) #5
  tail call void @llvm.xpu.csr_set_sync_group(i32 noundef -1) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  %mul = shl nuw nsw i32 %1, 14
  %cmp3 = icmp slt i32 %mul, %nbytes
  %cmp4 = icmp eq i32 %mode, 2
  %or.cond = and i1 %cmp4, %cmp3
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %3 = ptrtoint ptr addrspace(1) %x to i64
  tail call void @llvm.xpu.lock.v2(i32 noundef 0, i32 noundef 4) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %shr.i70 = lshr i64 %3, 32
  %conv.i71 = trunc nuw i64 %shr.i70 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef %conv.i71, i32 noundef 0, i32 noundef 2) #5
  %conv1.i72 = trunc i64 %3 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef %conv1.i72, i32 noundef 16384, i32 noundef 3) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 16384, i32 noundef 16384, i32 noundef 1, i32 noundef 4) #5
  tail call void @llvm.xpu.dma_run.v3(i32 noundef 0) #5
  tail call void @llvm.xpu.unlock(i32 noundef 4) #5
  tail call void @llvm.xpu.xsignal(i32 noundef 2, i32 noundef 0) #5
  tail call void @llvm.xpu.xwait(i32 noundef 2, i32 noundef 0) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %4 = tail call noundef i64 @llvm.xpu.get_clock64()
  %cmp883 = icmp sgt i32 %repeats, 0
  br i1 %cmp883, label %for.cond10.preheader.lr.ph, label %for.cond.cleanup

for.cond10.preheader.lr.ph:                       ; preds = %if.end6
  %cmp17.not = icmp eq i32 %mode, 1
  %mul22 = shl nuw nsw i32 %2, 14
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond10.preheader.lr.ph, %for.cond.cleanup12
  %last.086 = phi i32 [ -1, %for.cond10.preheader.lr.ph ], [ %last.1.lcssa, %for.cond.cleanup12 ]
  %rep.085 = phi i32 [ 0, %for.cond10.preheader.lr.ph ], [ %inc, %for.cond.cleanup12 ]
  %bytes.084 = phi i64 [ 0, %for.cond10.preheader.lr.ph ], [ %bytes.1.lcssa, %for.cond.cleanup12 ]
  br i1 %cmp3, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup:                                 ; preds = %for.cond.cleanup12, %if.end6
  %bytes.0.lcssa = phi i64 [ 0, %if.end6 ], [ %bytes.1.lcssa, %for.cond.cleanup12 ]
  %last.0.lcssa = phi i32 [ -1, %if.end6 ], [ %last.1.lcssa, %for.cond.cleanup12 ]
  %5 = tail call noundef i64 @llvm.xpu.get_clock64()
  %cmp27 = icmp eq i32 %mode, 1
  %cmp29 = icmp sgt i32 %last.0.lcssa, -1
  %or.cond49 = select i1 %cmp27, i1 %cmp29, i1 false
  br i1 %or.cond49, label %if.then30, label %if.end33

for.cond.cleanup12:                               ; preds = %if.end21, %for.cond10.preheader
  %bytes.1.lcssa = phi i64 [ %bytes.084, %for.cond10.preheader ], [ %add, %if.end21 ]
  %last.1.lcssa = phi i32 [ %last.086, %for.cond10.preheader ], [ %offset.081, %if.end21 ]
  %inc = add nuw nsw i32 %rep.085, 1
  %exitcond.not = icmp eq i32 %inc, %repeats
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond10.preheader, !llvm.loop !7

for.body13:                                       ; preds = %for.cond10.preheader, %if.end21
  %offset.081 = phi i32 [ %add23, %if.end21 ], [ %mul, %for.cond10.preheader ]
  %bytes.180 = phi i64 [ %add, %if.end21 ], [ %bytes.084, %for.cond10.preheader ]
  %.pre = zext nneg i32 %offset.081 to i64
  br i1 %cmp4, label %if.then18, label %if.then15

if.then15:                                        ; preds = %for.body13
  %add.ptr = getelementptr inbounds i8, ptr addrspace(1) %x, i64 %.pre
  %6 = ptrtoint ptr addrspace(1) %add.ptr to i64
  tail call void @llvm.xpu.lock.v2(i32 noundef 0, i32 noundef 4) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %shr.i = lshr i64 %6, 32
  %conv.i = trunc nuw i64 %shr.i to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef %conv.i, i32 noundef 0, i32 noundef 2) #5
  %conv1.i = trunc i64 %6 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef %conv1.i, i32 noundef 16384, i32 noundef 3) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 16384, i32 noundef 16384, i32 noundef 1, i32 noundef 4) #5
  tail call void @llvm.xpu.dma_run.v3(i32 noundef 0) #5
  tail call void @llvm.xpu.unlock(i32 noundef 4) #5
  tail call void @llvm.xpu.xsignal(i32 noundef 2, i32 noundef 0) #5
  tail call void @llvm.xpu.xwait(i32 noundef 2, i32 noundef 0) #5
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %for.body13, %if.then15
  %add.ptr20 = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %.pre
  %7 = ptrtoint ptr addrspace(1) %add.ptr20 to i64
  tail call void @llvm.xpu.lock.v2(i32 noundef 0, i32 noundef 5) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  %shr.i76 = lshr i64 %7, 32
  %conv.i77 = trunc nuw i64 %shr.i76 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef %conv.i77, i32 noundef 0, i32 noundef 0, i32 noundef 2) #5
  %conv1.i78 = trunc i64 %7 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef %conv1.i78, i32 noundef 0, i32 noundef 16384, i32 noundef 3) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 16384, i32 noundef 16384, i32 noundef 1, i32 noundef 4) #5
  tail call void @llvm.xpu.dma_run.v3(i32 noundef 0) #5
  tail call void @llvm.xpu.unlock(i32 noundef 5) #5
  tail call void @llvm.xpu.xsignal(i32 noundef 3, i32 noundef 0) #5
  tail call void @llvm.xpu.xwait(i32 noundef 3, i32 noundef 0) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15
  %add = add i64 %bytes.180, 16384
  %add23 = add nuw nsw i32 %offset.081, %mul22
  %cmp11 = icmp slt i32 %add23, %nbytes
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12, !llvm.loop !9

if.then30:                                        ; preds = %for.cond.cleanup
  %idx.ext31 = zext nneg i32 %last.0.lcssa to i64
  %add.ptr32 = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext31
  %8 = ptrtoint ptr addrspace(1) %add.ptr32 to i64
  tail call void @llvm.xpu.lock.v2(i32 noundef 0, i32 noundef 5) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  %shr.i73 = lshr i64 %8, 32
  %conv.i74 = trunc nuw i64 %shr.i73 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef %conv.i74, i32 noundef 0, i32 noundef 0, i32 noundef 2) #5
  %conv1.i75 = trunc i64 %8 to i32
  tail call void @llvm.xpu.dma_cfg(i32 noundef %conv1.i75, i32 noundef 0, i32 noundef 16384, i32 noundef 3) #5
  tail call void @llvm.xpu.dma_cfg(i32 noundef 16384, i32 noundef 16384, i32 noundef 1, i32 noundef 4) #5
  tail call void @llvm.xpu.dma_run.v3(i32 noundef 0) #5
  tail call void @llvm.xpu.unlock(i32 noundef 5) #5
  tail call void @llvm.xpu.xsignal(i32 noundef 3, i32 noundef 0) #5
  tail call void @llvm.xpu.xwait(i32 noundef 3, i32 noundef 0) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %for.cond.cleanup
  store i64 %4, ptr %data, align 16, !tbaa !10
  %arrayidx34 = getelementptr inbounds i8, ptr %data, i32 8
  store i64 %5, ptr %arrayidx34, align 8, !tbaa !10
  %arrayidx35 = getelementptr inbounds i8, ptr %data, i32 16
  store i64 %bytes.0.lcssa, ptr %arrayidx35, align 16, !tbaa !10
  %conv = zext nneg i32 %1 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %data, i32 24
  store i64 %conv, ptr %arrayidx36, align 8, !tbaa !10
  %conv37 = zext nneg i32 %2 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %data, i32 32
  store i64 %conv37, ptr %arrayidx38, align 16, !tbaa !10
  %conv39 = sext i32 %mode to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %data, i32 40
  store i64 %conv39, ptr %arrayidx40, align 8, !tbaa !10
  %conv41 = sext i32 %last.0.lcssa to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %data, i32 48
  store i64 %conv41, ptr %arrayidx42, align 16, !tbaa !10
  %conv43 = sext i32 %repeats to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %data, i32 56
  store i64 %conv43, ptr %arrayidx44, align 8, !tbaa !10
  %mul45 = shl nuw nsw i32 %1, 3
  %idx.ext46 = zext nneg i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i64, ptr addrspace(1) %metrics, i64 %idx.ext46
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr47, ptr nonnull %data, i32 0, i32 64)
  call void @llvm.xpu.mfence.v2(i32 5)
  call void @llvm.xpu.lock.v2(i32 noundef 0, i32 noundef 2) #5
  call void @llvm.xpu.ew_cfg(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16) #5
  call void @llvm.xpu.unlock(i32 noundef 2) #5
  call void @llvm.xpu.xsignal_mode_cfg(i32 noundef 0) #5
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.xpu.xsignal_mode_cfg(i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.uni_sram_cfg(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.lock.v2(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.ew_cfg(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.unlock(i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.csr_set_sync_group(i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.core_id() #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.load_param(i32) #3

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.dma_cfg(i32, i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.xpu.dma_run.v3(i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.xsignal(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.xpu.xwait(i32, i32) #2

; Function Attrs: nounwind
declare i64 @llvm.xpu.get_clock64() #2

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.xpu.mfence.v2(i32) #2

attributes #0 = { convergent mustprogress norecurse nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "target-features"="+cdnn3,-bigcore,+cdnn3" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "target-features"="+cdnn3" }
attributes #2 = { nounwind "target-features"="+cdnn3" }
attributes #3 = { nofree nosync nounwind memory(none) "target-features"="+cdnn3" }
attributes #4 = { nounwind memory(argmem: readwrite) "target-features"="+cdnn3" }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!xpu.host.triple = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"x86_64-baidu-linux-gnu"}
!3 = !{!"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"}
!4 = !{i32 0, i32 64}
!5 = !{i32 0, i32 255}
!6 = !{i32 1, i32 256}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
