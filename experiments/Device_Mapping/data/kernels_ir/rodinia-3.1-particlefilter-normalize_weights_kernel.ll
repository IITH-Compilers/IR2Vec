; ModuleID = 'rodinia-3.1-particlefilter-normalize_weights_kernel.cl'
source_filename = "rodinia-3.1-particlefilter-normalize_weights_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@normalize_weights_kernel.u1 = internal unnamed_addr global float undef, align 4
@normalize_weights_kernel.sumWeights = internal unnamed_addr global float undef, align 4

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @normalize_weights_kernel(float*, i32, float* nocapture readonly, float*, float* nocapture, i32*) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %6
  %13 = bitcast float* %2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !8
  store i32 %14, i32* bitcast (float* @normalize_weights_kernel.sumWeights to i32*), align 4, !tbaa !8
  br label %15

; <label>:15:                                     ; preds = %12, %6
  tail call void @_Z7barrierj(i32 1) #5
  %16 = icmp slt i32 %8, %1
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %15
  %18 = shl i64 %7, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds float, float* %0, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !8
  %22 = load float, float* @normalize_weights_kernel.sumWeights, align 4, !tbaa !8
  %23 = fdiv float %21, %22, !fpmath !12
  store float %23, float* %20, align 4, !tbaa !8
  br label %24

; <label>:24:                                     ; preds = %17, %15
  tail call void @_Z7barrierj(i32 2) #5
  %25 = icmp eq i32 %8, 0
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %24
  tail call void @cdfCalc(float* %3, float* %0, i32 %1) #6
  %27 = sitofp i32 %1 to float
  %28 = fdiv float 1.000000e+00, %27, !fpmath !12
  %29 = tail call float @d_randu(i32* %5, i32 0) #6
  %30 = fmul float %28, %29
  store float %30, float* %4, align 4, !tbaa !8
  br label %31

; <label>:31:                                     ; preds = %26, %24
  tail call void @_Z7barrierj(i32 2) #5
  br i1 %11, label %32, label %35

; <label>:32:                                     ; preds = %31
  %33 = bitcast float* %4 to i32*
  %34 = load i32, i32* %33, align 4, !tbaa !8
  store i32 %34, i32* bitcast (float* @normalize_weights_kernel.u1 to i32*), align 4, !tbaa !8
  br label %35

; <label>:35:                                     ; preds = %32, %31
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %16, label %36, label %45

; <label>:36:                                     ; preds = %35
  %37 = load float, float* @normalize_weights_kernel.u1, align 4, !tbaa !8
  %38 = sitofp i32 %8 to float
  %39 = sitofp i32 %1 to float
  %40 = fdiv float %38, %39, !fpmath !12
  %41 = fadd float %40, %37
  %42 = shl i64 %7, 32
  %43 = ashr exact i64 %42, 32
  %44 = getelementptr inbounds float, float* %4, i64 %43
  store float %41, float* %44, align 4, !tbaa !8
  br label %45

; <label>:45:                                     ; preds = %36, %35
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

declare void @cdfCalc(float*, float*, i32) local_unnamed_addr #3

declare float @d_randu(i32*, i32) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 1, i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"int", !"float*", !"float*", !"float*", !"int*"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
