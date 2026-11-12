; ModuleID = 'work/2026-11-02/p800-transfer/clock_probe.xpu'
source_filename = "work/2026-11-02/p800-transfer/clock_probe.xpu"
target datalayout = "e-m:e-p:32:32-p1:64:64-p2:32:32-p4:32:32-p135:64:64-p134:64:64-p133:32:32-p131:64:64-i1:8:32-i8:8:32-i16:16:32-i64:64:64-f64:64:64-v512:512-a:0:32-n32-S32"
target triple = "xpu3-baidu-none-gnu"

; Function Attrs: mustprogress nounwind
define hidden noundef i64 @read_clock() local_unnamed_addr #0 {
entry:
  tail call void @llvm.xpu.mfence.v2(i32 7)
  %0 = tail call noundef i64 @llvm.xpu.get_clock64()
  ret i64 %0
}

; Function Attrs: mustprogress nounwind
define hidden void @probe_copy(ptr addrspace(1) noundef %x, ptr addrspace(1) noundef %y) local_unnamed_addr #0 {
entry:
  %a = alloca [256 x float], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %a) #4
  call void @llvm.xpu.gm2lm_v3(ptr nonnull %a, ptr addrspace(1) %x, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  call void @llvm.xpu.lm2gm_v3(ptr addrspace(1) %y, ptr nonnull %a, i32 0, i32 1024)
  call void @llvm.xpu.mfence.v2(i32 5)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %a) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i64 @llvm.xpu.get_clock64() #2

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.gm2lm_v3(ptr, ptr addrspace(1), i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.xpu.mfence.v2(i32) #2

; Function Attrs: nounwind memory(argmem: readwrite)
declare void @llvm.xpu.lm2gm_v3(ptr addrspace(1), ptr, i32, i32) #3

attributes #0 = { mustprogress nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="xpu3" "target-features"="+cdnn3,-bigcore,+cdnn3" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "target-features"="+cdnn3" }
attributes #2 = { nounwind "target-features"="+cdnn3" }
attributes #3 = { nounwind memory(argmem: readwrite) "target-features"="+cdnn3" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!xpu.host.triple = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"frame-pointer", i32 2}
!2 = !{!"x86_64-baidu-linux-gnu"}
!3 = !{!"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 19.1.7 (b526e9ed77e93b92ce71f434d0bfd2c7ad245c37)"}
