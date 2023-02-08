; ModuleID = 'polybench-gpu-1.0-correlation-reduce_kernel.cl'
source_filename = "polybench-gpu-1.0-correlation-reduce_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @reduce_kernel(float* nocapture readonly, float* nocapture readonly, float* nocapture, float, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, %5
  %12 = icmp slt i32 %8, %4
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %30

; <label>:14:                                     ; preds = %6
  %15 = shl i64 %7, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds float, float* %0, i64 %16
  %18 = load float, float* %17, align 4, !tbaa !9
  %19 = mul nsw i32 %10, %4
  %20 = add nsw i32 %19, %8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %2, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !9
  %24 = fsub float %23, %18
  store float %24, float* %22, align 4, !tbaa !9
  %25 = tail call float @_Z4sqrtf(float %3) #2
  %26 = getelementptr inbounds float, float* %1, i64 %16
  %27 = load float, float* %26, align 4, !tbaa !9
  %28 = fmul float %25, %27
  %29 = fdiv float %24, %28, !fpmath !13
  store float %29, float* %22, align 4, !tbaa !9
  br label %30

; <label>:30:                                     ; preds = %14, %6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"float", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{float 2.500000e+00}
