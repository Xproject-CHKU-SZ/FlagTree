; ModuleID = '/data2/zhaoweiming/p800-transfer-20261102/native_transfer.xpu'
source_filename = "/data2/zhaoweiming/p800-transfer-20261102/native_transfer.xpu"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: mustprogress norecurse nounwind
define dso_local xpu_kernel void @native_transfer(ptr addrspace(1) noundef %x, ptr addrspace(1) noundef %y, ptr addrspace(1) noundef %metrics, i32 noundef %nbytes, i32 noundef %repeats, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  %data = alloca [8 x i64], align 16
  %0 = tail call noundef range(i32 0, 255) i32 @llvm.xpu.load_param(i32 0), !range !4
  %1 = tail call noundef range(i32 1, 65) i32 @llvm.xpu.load_param(i32 2), !range !5
  %mul = mul nuw nsw i32 %1, %0
  %2 = tail call noundef range(i32 0, 64) i32 @llvm.xpu.core_id(), !range !6
  %add = add nuw nsw i32 %mul, %2
  %3 = tail call noundef range(i32 1, 256) i32 @llvm.xpu.load_param(i32 1), !range !7
  %mul5 = mul nuw nsw i32 %3, %1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buffer) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #5
  %mul6 = shl nuw nsw i32 %add, 9
  %cmp = icmp slt i32 %mul6, %nbytes
  %cmp7 = icmp eq i32 %mode, 2
  %or.cond = and i1 %cmp7, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %x, i32 0, i32 512)
  call void @llvm.xpu.mfence.v2(i32 5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = call noundef i64 @llvm.xpu.get_clock64()
  %cmp9156 = icmp sgt i32 %repeats, 0
  br i1 %cmp9156, label %for.cond11.preheader.lr.ph, label %for.cond.cleanup

for.cond11.preheader.lr.ph:                       ; preds = %if.end
  %mul44 = shl nuw nsw i32 %mul5, 9
  br i1 %cmp, label %for.cond11.preheader.lr.ph.split.us, label %for.cond11.preheader

for.cond11.preheader.lr.ph.split.us:              ; preds = %for.cond11.preheader.lr.ph
  switch i32 %mode, label %for.cond11.preheader.us [
    i32 0, label %for.cond11.preheader.us.us.us244
    i32 2, label %for.cond11.preheader.us.us184
    i32 1, label %for.cond11.preheader.us.us199
  ]

for.cond11.preheader.us.us.us244:                 ; preds = %for.cond11.preheader.lr.ph.split.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us
  %rep.0158.us.us.us245 = phi i32 [ %inc47.us.us.us250, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us ], [ %mode, %for.cond11.preheader.lr.ph.split.us ]
  %bytes.0157.us.us.us246 = phi i64 [ %add40.us.us.us.us233.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  br label %for.body14.us.us.us.us227.us

for.body14.us.us.us.us227.us:                     ; preds = %for.body14.us.us.us.us227.us, %for.cond11.preheader.us.us.us244
  %offset.0106.us.us.us.us228.us = phi i32 [ %mul6, %for.cond11.preheader.us.us.us244 ], [ %add45.us.us.us.us234.us, %for.body14.us.us.us.us227.us ]
  %bytes.1105.us.us.us.us229.us = phi i64 [ %bytes.0157.us.us.us246, %for.cond11.preheader.us.us.us244 ], [ %add40.us.us.us.us233.us, %for.body14.us.us.us.us227.us ]
  %idx.ext.us.us.us.us230.us = zext nneg i32 %offset.0106.us.us.us.us228.us to i64
  %add.ptr.us.us.us.us231.us = getelementptr inbounds i8, ptr addrspace(1) %x, i64 %idx.ext.us.us.us.us230.us
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %add.ptr.us.us.us.us231.us, i32 0, i32 512)
  call void @llvm.xpu.mfence.v2(i32 5)
  %add.ptr33.us.us.us.us.us = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext.us.us.us.us230.us
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr33.us.us.us.us.us, ptr nonnull %buffer, i32 0, i32 512)
  call void @llvm.xpu.mfence.v2(i32 5)
  %add40.us.us.us.us233.us = add i64 %bytes.1105.us.us.us.us229.us, 512
  call void @llvm.xpu.mfence.v2(i32 7)
  %add45.us.us.us.us234.us = add nuw nsw i32 %offset.0106.us.us.us.us228.us, %mul44
  %cmp12.us.us.us.us235.us = icmp slt i32 %add45.us.us.us.us234.us, %nbytes
  br i1 %cmp12.us.us.us.us235.us, label %for.body14.us.us.us.us227.us, label %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us: ; preds = %for.body14.us.us.us.us227.us
  call void @llvm.xpu.mfence.v2(i32 7)
  %inc47.us.us.us250 = add nuw nsw i32 %rep.0158.us.us.us245, 1
  %exitcond265.not = icmp eq i32 %inc47.us.us.us250, %repeats
  br i1 %exitcond265.not, label %for.cond.cleanup, label %for.cond11.preheader.us.us.us244, !llvm.loop !10

for.cond11.preheader.us.us184:                    ; preds = %for.cond11.preheader.lr.ph.split.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us
  %rep.0158.us.us185 = phi i32 [ %inc47.us.us190, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  %bytes.0157.us.us186 = phi i64 [ %add40.us121.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  br label %for.body14.us110.us.us

for.body14.us110.us.us:                           ; preds = %for.body14.us110.us.us, %for.cond11.preheader.us.us184
  %offset.0106.us111.us.us = phi i32 [ %mul6, %for.cond11.preheader.us.us184 ], [ %add45.us122.us.us, %for.body14.us110.us.us ]
  %bytes.1105.us112.us.us = phi i64 [ %bytes.0157.us.us186, %for.cond11.preheader.us.us184 ], [ %add40.us121.us.us, %for.body14.us110.us.us ]
  %idx.ext36.us118.us.us = zext nneg i32 %offset.0106.us111.us.us to i64
  %add.ptr37.us119.us.us = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext36.us118.us.us
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr37.us119.us.us, ptr nonnull %buffer, i32 0, i32 512)
  %add40.us121.us.us = add i64 %bytes.1105.us112.us.us, 512
  call void @llvm.xpu.mfence.v2(i32 7)
  %add45.us122.us.us = add nuw nsw i32 %offset.0106.us111.us.us, %mul44
  %cmp12.us123.us.us = icmp slt i32 %add45.us122.us.us, %nbytes
  br i1 %cmp12.us123.us.us, label %for.body14.us110.us.us, label %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us: ; preds = %for.body14.us110.us.us
  call void @llvm.xpu.mfence.v2(i32 7)
  %inc47.us.us190 = add nuw nsw i32 %rep.0158.us.us185, 1
  %exitcond264.not = icmp eq i32 %inc47.us.us190, %repeats
  br i1 %exitcond264.not, label %for.cond.cleanup, label %for.cond11.preheader.us.us184, !llvm.loop !10

for.cond11.preheader.us.us199:                    ; preds = %for.cond11.preheader.lr.ph.split.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us
  %rep.0158.us.us200 = phi i32 [ %inc47.us.us202, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  %bytes.0157.us.us201 = phi i64 [ %add40.us132.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  br label %for.body14.us128.us.us

for.body14.us128.us.us:                           ; preds = %for.body14.us128.us.us, %for.cond11.preheader.us.us199
  %offset.0106.us129.us.us = phi i32 [ %mul6, %for.cond11.preheader.us.us199 ], [ %add45.us133.us.us, %for.body14.us128.us.us ]
  %bytes.1105.us130.us.us = phi i64 [ %bytes.0157.us.us201, %for.cond11.preheader.us.us199 ], [ %add40.us132.us.us, %for.body14.us128.us.us ]
  %idx.ext20.us.us.us = zext nneg i32 %offset.0106.us129.us.us to i64
  %add.ptr21.us.us.us = getelementptr inbounds i8, ptr addrspace(1) %x, i64 %idx.ext20.us.us.us
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %add.ptr21.us.us.us, i32 0, i32 512)
  %add40.us132.us.us = add i64 %bytes.1105.us130.us.us, 512
  call void @llvm.xpu.mfence.v2(i32 7)
  %add45.us133.us.us = add nuw nsw i32 %offset.0106.us129.us.us, %mul44
  %cmp12.us134.us.us = icmp slt i32 %add45.us133.us.us, %nbytes
  br i1 %cmp12.us134.us.us, label %for.body14.us128.us.us, label %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us: ; preds = %for.body14.us128.us.us
  call void @llvm.xpu.mfence.v2(i32 7)
  %inc47.us.us202 = add nuw nsw i32 %rep.0158.us.us200, 1
  %exitcond263.not = icmp eq i32 %inc47.us.us202, %repeats
  br i1 %exitcond263.not, label %for.cond.cleanup, label %for.cond11.preheader.us.us199, !llvm.loop !10

for.cond11.preheader.us:                          ; preds = %for.cond11.preheader.lr.ph.split.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172
  %rep.0158.us = phi i32 [ %inc47.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172 ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  %bytes.0157.us = phi i64 [ %add40.us169, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172 ], [ 0, %for.cond11.preheader.lr.ph.split.us ]
  br label %for.body14.us162

for.body14.us162:                                 ; preds = %for.cond11.preheader.us, %for.body14.us162
  %offset.0106.us163 = phi i32 [ %mul6, %for.cond11.preheader.us ], [ %add45.us170, %for.body14.us162 ]
  %bytes.1105.us164 = phi i64 [ %bytes.0157.us, %for.cond11.preheader.us ], [ %add40.us169, %for.body14.us162 ]
  %idx.ext20.us165 = zext nneg i32 %offset.0106.us163 to i64
  %add.ptr21.us166 = getelementptr inbounds i8, ptr addrspace(1) %x, i64 %idx.ext20.us165
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %buffer, ptr addrspace(1) %add.ptr21.us166, i32 0, i32 512)
  %add.ptr37.us168 = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext20.us165
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr37.us168, ptr nonnull %buffer, i32 0, i32 512)
  %add40.us169 = add i64 %bytes.1105.us164, 512
  call void @llvm.xpu.mfence.v2(i32 7)
  %add45.us170 = add nuw nsw i32 %offset.0106.us163, %mul44
  %cmp12.us171 = icmp slt i32 %add45.us170, %nbytes
  br i1 %cmp12.us171, label %for.body14.us162, label %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172, !llvm.loop !8

for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172: ; preds = %for.body14.us162
  call void @llvm.xpu.mfence.v2(i32 7)
  %inc47.us = add nuw nsw i32 %rep.0158.us, 1
  %exitcond266.not = icmp eq i32 %inc47.us, %repeats
  br i1 %exitcond266.not, label %for.cond.cleanup, label %for.cond11.preheader.us, !llvm.loop !10

for.cond11.preheader:                             ; preds = %for.cond11.preheader.lr.ph, %for.cond11.preheader
  %rep.0158 = phi i32 [ %inc47, %for.cond11.preheader ], [ 0, %for.cond11.preheader.lr.ph ]
  call void @llvm.xpu.mfence.v2(i32 7)
  %inc47 = add nuw nsw i32 %rep.0158, 1
  %exitcond.not = icmp eq i32 %inc47, %repeats
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.cond11.preheader, !llvm.loop !10

for.cond.cleanup:                                 ; preds = %for.cond11.preheader, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172, %if.end
  %bytes.0.lcssa = phi i64 [ 0, %if.end ], [ %add40.us169, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172 ], [ %add40.us.us.us.us233.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us ], [ %add40.us121.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ %add40.us132.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us ], [ 0, %for.cond11.preheader ]
  %last.0.lcssa = phi i32 [ -1, %if.end ], [ %offset.0106.us163, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.split.us172 ], [ %offset.0106.us.us.us.us228.us, %for.cond11.for.cond.cleanup13_crit_edge.split.us.us.us.split.split.us.us ], [ %offset.0106.us111.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.us.us.us ], [ %offset.0106.us129.us.us, %for.cond11.for.cond.cleanup13_crit_edge.split.split.split.us.us.us ], [ -1, %for.cond11.preheader ]
  %5 = call noundef i64 @llvm.xpu.get_clock64()
  %cmp50 = icmp eq i32 %mode, 1
  %cmp52 = icmp sgt i32 %last.0.lcssa, -1
  %or.cond75 = and i1 %cmp50, %cmp52
  br i1 %or.cond75, label %if.then53, label %if.end59

if.then53:                                        ; preds = %for.cond.cleanup
  %idx.ext57 = zext nneg i32 %last.0.lcssa to i64
  %add.ptr58 = getelementptr inbounds i8, ptr addrspace(1) %y, i64 %idx.ext57
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr58, ptr nonnull %buffer, i32 0, i32 512)
  call void @llvm.xpu.mfence.v2(i32 5)
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %for.cond.cleanup
  store i64 %4, ptr %data, align 16, !tbaa !11
  %arrayidx60 = getelementptr inbounds i8, ptr %data, i32 8
  store i64 %5, ptr %arrayidx60, align 8, !tbaa !11
  %arrayidx61 = getelementptr inbounds i8, ptr %data, i32 16
  store i64 %bytes.0.lcssa, ptr %arrayidx61, align 16, !tbaa !11
  %conv = zext nneg i32 %add to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %data, i32 24
  store i64 %conv, ptr %arrayidx62, align 8, !tbaa !11
  %conv63 = zext nneg i32 %mul5 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %data, i32 32
  store i64 %conv63, ptr %arrayidx64, align 16, !tbaa !11
  %conv65 = sext i32 %mode to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %data, i32 40
  store i64 %conv65, ptr %arrayidx66, align 8, !tbaa !11
  %conv67 = sext i32 %last.0.lcssa to i64
  %arrayidx68 = getelementptr inbounds i8, ptr %data, i32 48
  store i64 %conv67, ptr %arrayidx68, align 16, !tbaa !11
  %conv69 = sext i32 %repeats to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %data, i32 56
  store i64 %conv69, ptr %arrayidx70, align 8, !tbaa !11
  %mul72 = shl nuw nsw i32 %add, 3
  %idx.ext73 = zext nneg i32 %mul72 to i64
  %add.ptr74 = getelementptr inbounds i64, ptr addrspace(1) %metrics, i64 %idx.ext73
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %add.ptr74, ptr nonnull %data, i32 0, i32 64)
  call void @llvm.xpu.mfence.v2(i32 5)
  call void @llvm.xpu.mfence.v2(i32 7)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buffer) #5
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
