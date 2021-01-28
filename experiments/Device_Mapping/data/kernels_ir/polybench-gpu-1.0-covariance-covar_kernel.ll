; ModuleID = 'polybench-gpu-1.0-covariance-covar_kernel.cl'
source_filename = "polybench-gpu-1.0-covariance-covar_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @covar_kernel(float* nocapture, float* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %6 = trunc i64 %5 to i32
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %8, label %74

; <label>:8:                                      ; preds = %4
  %9 = mul nsw i32 %6, %2
  %10 = icmp sgt i32 %3, 0
  %11 = sext i32 %2 to i64
  %12 = shl i64 %5, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %9 to i64
  %15 = zext i32 %3 to i64
  %16 = and i64 %15, 1
  %17 = icmp eq i32 %3, 1
  %18 = sub nsw i64 %15, %16
  %19 = icmp eq i64 %16, 0
  br label %20

; <label>:20:                                     ; preds = %66, %8
  %21 = phi i64 [ %13, %8 ], [ %72, %66 ]
  %22 = add nsw i64 %21, %14
  %23 = getelementptr inbounds float, float* %0, i64 %22
  store float 0.000000e+00, float* %23, align 4, !tbaa !9
  br i1 %10, label %24, label %66

; <label>:24:                                     ; preds = %20
  br i1 %17, label %50, label %25

; <label>:25:                                     ; preds = %24
  br label %26

; <label>:26:                                     ; preds = %26, %25
  %27 = phi float [ 0.000000e+00, %25 ], [ %46, %26 ]
  %28 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %29 = phi i64 [ %18, %25 ], [ %48, %26 ]
  %30 = mul nsw i64 %28, %11
  %31 = add nsw i64 %30, %13
  %32 = getelementptr inbounds float, float* %1, i64 %31
  %33 = load float, float* %32, align 4, !tbaa !9
  %34 = add nsw i64 %30, %21
  %35 = getelementptr inbounds float, float* %1, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !9
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %36, float %27)
  store float %37, float* %23, align 4, !tbaa !9
  %38 = or i64 %28, 1
  %39 = mul nsw i64 %38, %11
  %40 = add nsw i64 %39, %13
  %41 = getelementptr inbounds float, float* %1, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !9
  %43 = add nsw i64 %39, %21
  %44 = getelementptr inbounds float, float* %1, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !9
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %45, float %37)
  store float %46, float* %23, align 4, !tbaa !9
  %47 = add nsw i64 %28, 2
  %48 = add i64 %29, -2
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %26

; <label>:50:                                     ; preds = %26, %24
  %51 = phi float [ undef, %24 ], [ %46, %26 ]
  %52 = phi float [ 0.000000e+00, %24 ], [ %46, %26 ]
  %53 = phi i64 [ 0, %24 ], [ %47, %26 ]
  br i1 %19, label %63, label %54

; <label>:54:                                     ; preds = %50
  %55 = mul nsw i64 %53, %11
  %56 = add nsw i64 %55, %13
  %57 = getelementptr inbounds float, float* %1, i64 %56
  %58 = load float, float* %57, align 4, !tbaa !9
  %59 = add nsw i64 %55, %21
  %60 = getelementptr inbounds float, float* %1, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !9
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %61, float %52)
  store float %62, float* %23, align 4, !tbaa !9
  br label %63

; <label>:63:                                     ; preds = %50, %54
  %64 = phi float [ %51, %50 ], [ %62, %54 ]
  %65 = bitcast float %64 to i32
  br label %66

; <label>:66:                                     ; preds = %63, %20
  %67 = phi i32 [ %65, %63 ], [ 0, %20 ]
  %68 = mul nsw i64 %21, %11
  %69 = add nsw i64 %68, %13
  %70 = getelementptr inbounds float, float* %0, i64 %69
  %71 = bitcast float* %70 to i32*
  store i32 %67, i32* %71, align 4, !tbaa !9
  %72 = add nsw i64 %21, 1
  %73 = icmp eq i64 %72, %11
  br i1 %73, label %74, label %20

; <label>:74:                                     ; preds = %66, %4
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
!4 = !{i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!7 = !{!"float*", !"float*", !"int", !"int"}
!8 = !{!"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
