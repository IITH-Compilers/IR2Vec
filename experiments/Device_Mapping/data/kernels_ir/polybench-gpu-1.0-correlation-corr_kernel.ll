; ModuleID = 'polybench-gpu-1.0-correlation-corr_kernel.cl'
source_filename = "polybench-gpu-1.0-correlation-corr_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @corr_kernel(float* nocapture, float* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %2, -1
  %8 = icmp sgt i32 %7, %6
  br i1 %8, label %9, label %81

; <label>:9:                                      ; preds = %4
  %10 = mul nsw i32 %6, %2
  %11 = add nsw i32 %10, %6
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, float* %0, i64 %12
  store float 1.000000e+00, float* %13, align 4, !tbaa !9
  %14 = add nsw i32 %6, 1
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %16, label %81

; <label>:16:                                     ; preds = %9
  %17 = icmp sgt i32 %3, 0
  %18 = sext i32 %2 to i64
  %19 = shl i64 %5, 32
  %20 = ashr exact i64 %19, 32
  %21 = add nsw i64 %20, 1
  %22 = sext i32 %10 to i64
  %23 = zext i32 %3 to i64
  %24 = and i64 %23, 1
  %25 = icmp eq i32 %3, 1
  %26 = sub nsw i64 %23, %24
  %27 = icmp eq i64 %24, 0
  br label %28

; <label>:28:                                     ; preds = %71, %16
  %29 = phi i64 [ %21, %16 ], [ %78, %71 ]
  %30 = add nsw i64 %29, %22
  %31 = getelementptr inbounds float, float* %0, i64 %30
  br i1 %17, label %32, label %71

; <label>:32:                                     ; preds = %28
  %33 = load float, float* %31, align 4, !tbaa !9
  br i1 %25, label %59, label %34

; <label>:34:                                     ; preds = %32
  br label %35

; <label>:35:                                     ; preds = %35, %34
  %36 = phi float [ %33, %34 ], [ %55, %35 ]
  %37 = phi i64 [ 0, %34 ], [ %56, %35 ]
  %38 = phi i64 [ %26, %34 ], [ %57, %35 ]
  %39 = mul nsw i64 %37, %18
  %40 = add nsw i64 %39, %20
  %41 = getelementptr inbounds float, float* %1, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !9
  %43 = add nsw i64 %39, %29
  %44 = getelementptr inbounds float, float* %1, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !9
  %46 = tail call float @llvm.fmuladd.f32(float %42, float %45, float %36)
  store float %46, float* %31, align 4, !tbaa !9
  %47 = or i64 %37, 1
  %48 = mul nsw i64 %47, %18
  %49 = add nsw i64 %48, %20
  %50 = getelementptr inbounds float, float* %1, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !9
  %52 = add nsw i64 %48, %29
  %53 = getelementptr inbounds float, float* %1, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !9
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %54, float %46)
  store float %55, float* %31, align 4, !tbaa !9
  %56 = add nsw i64 %37, 2
  %57 = add i64 %38, -2
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %35

; <label>:59:                                     ; preds = %35, %32
  %60 = phi float [ %33, %32 ], [ %55, %35 ]
  %61 = phi i64 [ 0, %32 ], [ %56, %35 ]
  br i1 %27, label %71, label %62

; <label>:62:                                     ; preds = %59
  %63 = mul nsw i64 %61, %18
  %64 = add nsw i64 %63, %20
  %65 = getelementptr inbounds float, float* %1, i64 %64
  %66 = load float, float* %65, align 4, !tbaa !9
  %67 = add nsw i64 %63, %29
  %68 = getelementptr inbounds float, float* %1, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !9
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %69, float %60)
  store float %70, float* %31, align 4, !tbaa !9
  br label %71

; <label>:71:                                     ; preds = %62, %59, %28
  %72 = bitcast float* %31 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !9
  %74 = mul nsw i64 %29, %18
  %75 = add nsw i64 %74, %20
  %76 = getelementptr inbounds float, float* %0, i64 %75
  %77 = bitcast float* %76 to i32*
  store i32 %73, i32* %77, align 4, !tbaa !9
  %78 = add i64 %29, 1
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %79, %2
  br i1 %80, label %81, label %28

; <label>:81:                                     ; preds = %71, %9, %4
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
