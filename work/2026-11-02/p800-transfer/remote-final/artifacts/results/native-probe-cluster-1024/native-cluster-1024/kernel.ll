; ModuleID = '/data2/zhaoweiming/p800-transfer-20261102/native_transfer.xpu'
source_filename = "/data2/zhaoweiming/p800-transfer-20261102/native_transfer.xpu"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: mustprogress norecurse nounwind
define dso_local xpu_kernel void @native_transfer(ptr addrspace(1) noundef %x, ptr addrspace(1) noundef %y, ptr addrspace(1) noundef %metrics, i32 noundef %nbytes, i32 noundef %repeats, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %buffer = alloca [1024 x i8], align 16
  %data = alloca [8 x i64], align 16
  %0 = tail call noundef range(i32 0, 255) i32 @llvm.xpu.load_param(i32 0), !range !4
  %1 = tail call noundef range(i32 1, 65) i32 @llvm.xpu.load_param(i32 2), !range !5
  %mul = mul nuw nsw i32 %1, %0
  %2 = tail call noundef range(i32 0, 64) i32 @llvm.xpu.core_id(), !range !6
  %add = add nuw nsw i32 %mul, %2
  %3 = tail call noundef range(i32 1, 256) i32 @llvm.xpu.load_param(i32 1), !range !7
  %mul5 = mul nuw nsw i32 %3, %1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %buffer) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #5
  %mul6 = shl nuw nsw i32 %add, 10
  %cmp = icmp slt i32 %mul6, %nbytes
  %cmp7 = icmp eq i32 %mode, 2
  %or.cond = and i1 %cmp7, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %x, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = call noundef i64 @llvm.xpu.get_clock64()
  %cmp991 = icmp sgt i32 %repeats, 0
  br i1 %cmp991, label %for.cond11.preheader.lr.ph, label %for.cond.cleanup

for.cond11.preheader.lr.ph:                       ; preds = %if.end
  %cmp19.not = icmp eq i32 %mode, 1
  %mul26 = shl nuw nsw i32 %mul5, 10
  br i1 %cmp, label %for.cond11.preheader.lr.ph.split.us, label %for.cond.cleanup

for.cond11.preheader.lr.ph.split.us:              ; preds = %for.cond11.preheader.lr.ph
  br i1 %cmp7, label %for.cond11.preheader.us.us, label %for.cond11.preheader.lr.ph.split.us.split

for.cond11.preheader.us.us:                       ; preds = %for.cond11.preheader.lr.ph.split.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us
  %rep.093.us.us = phi i32 [ %inc.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  %bytes.092.us.us = phi i64 [ %add25.us.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  br label %for.body14.us.us.us

for.body14.us.us.us:                              ; preds = %for.body14.us.us.us, %for.cond11.preheader.us.us
  %offset.077.us.us.us = phi i32 [ %mul6, %for.cond11.preheader.us.us ], [ %add27.us.us.us, %for.body14.us.us.us ]
  %bytes.176.us.us.us = phi i64 [ %bytes.092.us.us, %for.cond11.preheader.us.us ], [ %add25.us.us.us, %for.body14.us.us.us ]
  %idx.ext22.us.us.us = zext nneg i32 %offset.077.us.us.us to i64
  %add.ptr23.us.us.us = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext22.us.us.us
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr23.us.us.us, ptr nonnull %buffer, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  %add25.us.us.us = add i64 %bytes.176.us.us.us, 1024
  %add27.us.us.us = add nuw nsw i32 %offset.077.us.us.us, %mul26
  %cmp12.us.us.us = icmp slt i32 %add27.us.us.us, %nbytes
  br i1 %cmp12.us.us.us, label %for.body14.us.us.us, label %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us: ; preds = %for.body14.us.us.us
  %inc.us.us = add nuw nsw i32 %rep.093.us.us, 1
  %exitcond129.not = icmp eq i32 %inc.us.us, %repeats
  br i1 %exitcond129.not, label %for.cond.cleanup, label %for.cond11.preheader.us.us, !llvm.loop !10

for.cond11.preheader.lr.ph.split.us.split:        ; preds = %for.cond11.preheader.lr.ph.split.us
  br i1 %cmp19.not, label %for.cond11.preheader.us.us116, label %for.cond11.preheader.us

for.cond11.preheader.us.us116:                    ; preds = %for.cond11.preheader.lr.ph.split.us.split, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us
  %rep.093.us.us117 = phi i32 [ %inc.us.us119, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us.split ]
  %bytes.092.us.us118 = phi i64 [ %add25.us84.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us.split ]
  br label %for.body14.us80.us.us

for.body14.us80.us.us:                            ; preds = %for.body14.us80.us.us, %for.cond11.preheader.us.us116
  %offset.077.us81.us.us = phi i32 [ %mul6, %for.cond11.preheader.us.us116 ], [ %add27.us85.us.us, %for.body14.us80.us.us ]
  %bytes.176.us82.us.us = phi i64 [ %bytes.092.us.us118, %for.cond11.preheader.us.us116 ], [ %add25.us84.us.us, %for.body14.us80.us.us ]
  %idx.ext.us.us.us = zext nneg i32 %offset.077.us81.us.us to i64
  %add.ptr.us.us.us = getelementptr inbounds i8, ptr addrspace(1) %x, i64 %idx.ext.us.us.us
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %add.ptr.us.us.us, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  %add25.us84.us.us = add i64 %bytes.176.us82.us.us, 1024
  %add27.us85.us.us = add nuw nsw i32 %offset.077.us81.us.us, %mul26
  %cmp12.us86.us.us = icmp slt i32 %add27.us85.us.us, %nbytes
  br i1 %cmp12.us86.us.us, label %for.body14.us80.us.us, label %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us: ; preds = %for.body14.us80.us.us
  %inc.us.us119 = add nuw nsw i32 %rep.093.us.us117, 1
  %exitcond128.not = icmp eq i32 %inc.us.us119, %repeats
  br i1 %exitcond128.not, label %for.cond.cleanup, label %for.cond11.preheader.us.us116, !llvm.loop !10

for.cond11.preheader.us:                          ; preds = %for.cond11.preheader.lr.ph.split.us.split, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107
  %rep.093.us = phi i32 [ %inc.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107 ], [ 0, %for.cond11.preheader.lr.ph.split.us.split ]
  %bytes.092.us = phi i64 [ %add25.us104, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107 ], [ 0, %for.cond11.preheader.lr.ph.split.us.split ]
  br label %for.body14.us97

for.body14.us97:                                  ; preds = %for.cond11.preheader.us, %for.body14.us97
  %offset.077.us98 = phi i32 [ %mul6, %for.cond11.preheader.us ], [ %add27.us105, %for.body14.us97 ]
  %bytes.176.us99 = phi i64 [ %bytes.092.us, %for.cond11.preheader.us ], [ %add25.us104, %for.body14.us97 ]
  %idx.ext.us100 = zext nneg i32 %offset.077.us98 to i64
  %add.ptr.us101 = getelementptr inbounds i8, ptr addrspace(1) %x, i64 %idx.ext.us100
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %add.ptr.us101, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  %add.ptr23.us103 = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext.us100
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr23.us103, ptr nonnull %buffer, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  %add25.us104 = add i64 %bytes.176.us99, 1024
  %add27.us105 = add nuw nsw i32 %offset.077.us98, %mul26
  %cmp12.us106 = icmp slt i32 %add27.us105, %nbytes
  br i1 %cmp12.us106, label %for.body14.us97, label %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.split.us107: ; preds = %for.body14.us97
  %inc.us = add nuw nsw i32 %rep.093.us, 1
  %exitcond.not = icmp eq i32 %inc.us, %repeats
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond11.preheader.us, !llvm.loop !10

for.cond.cleanup:                                 ; preds = %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us, %for.cond11.preheader.lr.ph, %if.end
  %bytes.0.lcssa = phi i64 [ 0, %if.end ], [ 0, %for.cond11.preheader.lr.ph ], [ %add25.us.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us ], [ %add25.us84.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ %add25.us104, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107 ]
  %last.0.lcssa = phi i32 [ -1, %if.end ], [ -1, %for.cond11.preheader.lr.ph ], [ %offset.077.us.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us ], [ %offset.077.us81.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ %offset.077.us98, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us107 ]
  %5 = call noundef i64 @llvm.xpu.get_clock64()
  %cmp31 = icmp eq i32 %mode, 1
  %cmp33 = icmp sgt i32 %last.0.lcssa, -1
  %or.cond54 = and i1 %cmp31, %cmp33
  br i1 %or.cond54, label %if.then34, label %if.end38

if.then34:                                        ; preds = %for.cond.cleanup
  %idx.ext36 = zext nneg i32 %last.0.lcssa to i64
  %add.ptr37 = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext36
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr37, ptr nonnull %buffer, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.cond.cleanup
  store i64 %4, ptr %data, align 16, !tbaa !11
  %arrayidx39 = getelementptr inbounds i8, ptr %data, i32 8
  store i64 %5, ptr %arrayidx39, align 8, !tbaa !11
  %arrayidx40 = getelementptr inbounds i8, ptr %data, i32 16
  store i64 %bytes.0.lcssa, ptr %arrayidx40, align 16, !tbaa !11
  %conv = zext nneg i32 %add to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %data, i32 24
  store i64 %conv, ptr %arrayidx41, align 8, !tbaa !11
  %conv42 = zext nneg i32 %mul5 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %data, i32 32
  store i64 %conv42, ptr %arrayidx43, align 16, !tbaa !11
  %conv44 = sext i32 %mode to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %data, i32 40
  store i64 %conv44, ptr %arrayidx45, align 8, !tbaa !11
  %conv46 = sext i32 %last.0.lcssa to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %data, i32 48
  store i64 %conv46, ptr %arrayidx47, align 16, !tbaa !11
  %conv48 = sext i32 %repeats to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %data, i32 56
  store i64 %conv48, ptr %arrayidx49, align 8, !tbaa !11
  %mul51 = shl nuw nsw i32 %add, 3
  %idx.ext52 = zext nneg i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds i64, ptr addrspace(1) %metrics, i64 %idx.ext52
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr53, ptr nonnull %data, i32 0, i32 64)
  call void @llvm.xpu.mfence.v2(i32 5)
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %buffer) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.load_param(i32) #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.xpu.core_id() #2

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.gm2lm_v3(ptr, ptr addrspace(1), i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.xpu.mfence.v2(i32) #4

; Function Attrs: nounwind
declare i64 @llvm.xpu.get_clock64() #4

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #3

attributes #0 = { mustprogress norecurse nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "target-features"="+bigcore" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "target-features"="+bigcore" }
attributes #2 = { nofree nosync nounwind memory(none) "target-features"="+bigcore" }
attributes #3 = { nounwind memory(argmem: readwrite) "target-features"="+bigcore" }
attributes #4 = { nounwind "target-features"="+bigcore" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!xpu.host.triple = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"x86_64-baidu-linux-gnu"}
!3 = !{!"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"}
!4 = !{i32 0, i32 255}
!5 = !{i32 1, i32 65}
!6 = !{i32 0, i32 64}
!7 = !{i32 1, i32 256}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"long long", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C++ TBAA"}
