; ModuleID = 'blackscholes.cl'
source_filename = "blackscholes.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @BlackScholes(float* nocapture, float* nocapture, float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float, float, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %10 = trunc i64 %9 to i32
  %11 = icmp ult i32 %10, %7
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %8
  %13 = fmul float %6, 5.000000e-01
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %6, float %5)
  %15 = fsub float -0.000000e+00, %6
  br label %17

; <label>:16:                                     ; preds = %17, %8
  ret void

; <label>:17:                                     ; preds = %12, %17
  %18 = phi i64 [ %9, %12 ], [ %56, %17 ]
  %19 = and i64 %18, 4294967295
  %20 = getelementptr inbounds float, float* %4, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !8
  %22 = tail call float @_Z4sqrtf(float %21) #4
  %23 = getelementptr inbounds float, float* %2, i64 %19
  %24 = load float, float* %23, align 4, !tbaa !8
  %25 = getelementptr inbounds float, float* %3, i64 %19
  %26 = load float, float* %25, align 4, !tbaa !8
  %27 = fdiv float %24, %26, !fpmath !12
  %28 = tail call float @_Z3logf(float %27) #4
  %29 = tail call float @llvm.fmuladd.f32(float %14, float %21, float %28)
  %30 = fmul float %22, %6
  %31 = fdiv float %29, %30, !fpmath !12
  %32 = tail call float @llvm.fmuladd.f32(float %15, float %22, float %31)
  %33 = tail call float @CND(float %31) #5
  %34 = tail call float @CND(float %32) #5
  %35 = load float, float* %20, align 4, !tbaa !8
  %36 = fmul float %35, %5
  %37 = fsub float -0.000000e+00, %36
  %38 = tail call float @_Z3expf(float %37) #4
  %39 = load float, float* %23, align 4, !tbaa !8
  %40 = load float, float* %25, align 4, !tbaa !8
  %41 = fmul float %38, %40
  %42 = fmul float %34, %41
  %43 = fsub float -0.000000e+00, %42
  %44 = tail call float @llvm.fmuladd.f32(float %39, float %33, float %43)
  %45 = getelementptr inbounds float, float* %0, i64 %19
  store float %44, float* %45, align 4, !tbaa !8
  %46 = load float, float* %25, align 4, !tbaa !8
  %47 = fmul float %38, %46
  %48 = fsub float 1.000000e+00, %34
  %49 = load float, float* %23, align 4, !tbaa !8
  %50 = fsub float 1.000000e+00, %33
  %51 = fmul float %50, %49
  %52 = fsub float -0.000000e+00, %51
  %53 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %52)
  %54 = getelementptr inbounds float, float* %1, i64 %19
  store float %53, float* %54, align 4, !tbaa !8
  %55 = tail call i64 @_Z15get_global_sizej(i32 0) #4
  %56 = add i64 %55, %19
  %57 = trunc i64 %56 to i32
  %58 = icmp ult i32 %57, %7
  br i1 %58, label %17, label %16
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z3logf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

declare float @CND(float) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare float @_Z3expf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float", !"float", !"uint"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
