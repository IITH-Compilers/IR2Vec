; ModuleID = 'polybench-gpu-1.0-bicg-bicgKernel2.cl'
source_filename = "polybench-gpu-1.0-bicg-bicgKernel2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @bicgKernel2(float* nocapture readonly, float* nocapture readonly, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %4
  br i1 %8, label %9, label %57

; <label>:9:                                      ; preds = %5
  %10 = shl i64 %6, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds float, float* %2, i64 %11
  store float 0.000000e+00, float* %12, align 4, !tbaa !9
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %57

; <label>:14:                                     ; preds = %9
  %15 = sext i32 %4 to i64
  %16 = shl i64 %6, 32
  %17 = ashr exact i64 %16, 32
  %18 = zext i32 %3 to i64
  %19 = and i64 %18, 1
  %20 = icmp eq i32 %3, 1
  br i1 %20, label %45, label %21

; <label>:21:                                     ; preds = %14
  %22 = sub nsw i64 %18, %19
  br label %23

; <label>:23:                                     ; preds = %23, %21
  %24 = phi float [ 0.000000e+00, %21 ], [ %41, %23 ]
  %25 = phi i64 [ 0, %21 ], [ %42, %23 ]
  %26 = phi i64 [ %22, %21 ], [ %43, %23 ]
  %27 = mul nsw i64 %25, %15
  %28 = add nsw i64 %27, %17
  %29 = getelementptr inbounds float, float* %0, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !9
  %31 = getelementptr inbounds float, float* %1, i64 %25
  %32 = load float, float* %31, align 4, !tbaa !9
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %24)
  store float %33, float* %12, align 4, !tbaa !9
  %34 = or i64 %25, 1
  %35 = mul nsw i64 %34, %15
  %36 = add nsw i64 %35, %17
  %37 = getelementptr inbounds float, float* %0, i64 %36
  %38 = load float, float* %37, align 4, !tbaa !9
  %39 = getelementptr inbounds float, float* %1, i64 %34
  %40 = load float, float* %39, align 4, !tbaa !9
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %40, float %33)
  store float %41, float* %12, align 4, !tbaa !9
  %42 = add nsw i64 %25, 2
  %43 = add i64 %26, -2
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %23

; <label>:45:                                     ; preds = %23, %14
  %46 = phi float [ 0.000000e+00, %14 ], [ %41, %23 ]
  %47 = phi i64 [ 0, %14 ], [ %42, %23 ]
  %48 = icmp eq i64 %19, 0
  br i1 %48, label %57, label %49

; <label>:49:                                     ; preds = %45
  %50 = mul nsw i64 %47, %15
  %51 = add nsw i64 %50, %17
  %52 = getelementptr inbounds float, float* %0, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !9
  %54 = getelementptr inbounds float, float* %1, i64 %47
  %55 = load float, float* %54, align 4, !tbaa !9
  %56 = tail call float @llvm.fmuladd.f32(float %53, float %55, float %46)
  store float %56, float* %12, align 4, !tbaa !9
  br label %57

; <label>:57:                                     ; preds = %49, %45, %9, %5
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
