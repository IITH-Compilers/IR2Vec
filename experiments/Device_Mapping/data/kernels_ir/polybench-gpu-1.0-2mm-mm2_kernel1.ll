; ModuleID = 'polybench-gpu-1.0-2mm-mm2_kernel1.cl'
source_filename = "polybench-gpu-1.0-2mm-mm2_kernel1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @mm2_kernel1(float* nocapture, float* nocapture readonly, float* nocapture readonly, i32, i32, i32, i32, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, %3
  %15 = icmp slt i32 %11, %4
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %74

; <label>:17:                                     ; preds = %9
  %18 = mul nsw i32 %13, %4
  %19 = add nsw i32 %18, %11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %0, i64 %20
  store float 0.000000e+00, float* %21, align 4, !tbaa !9
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %23, label %74

; <label>:23:                                     ; preds = %17
  %24 = mul nsw i32 %13, %5
  %25 = sext i32 %4 to i64
  %26 = shl i64 %10, 32
  %27 = ashr exact i64 %26, 32
  %28 = sext i32 %24 to i64
  %29 = zext i32 %5 to i64
  %30 = and i64 %29, 1
  %31 = icmp eq i32 %5, 1
  br i1 %31, label %60, label %32

; <label>:32:                                     ; preds = %23
  %33 = sub nsw i64 %29, %30
  br label %34

; <label>:34:                                     ; preds = %34, %32
  %35 = phi float [ 0.000000e+00, %32 ], [ %56, %34 ]
  %36 = phi i64 [ 0, %32 ], [ %57, %34 ]
  %37 = phi i64 [ %33, %32 ], [ %58, %34 ]
  %38 = add nsw i64 %36, %28
  %39 = getelementptr inbounds float, float* %1, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !9
  %41 = fmul float %40, %7
  %42 = mul nsw i64 %36, %25
  %43 = add nsw i64 %42, %27
  %44 = getelementptr inbounds float, float* %2, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !9
  %46 = tail call float @llvm.fmuladd.f32(float %41, float %45, float %35)
  store float %46, float* %21, align 4, !tbaa !9
  %47 = or i64 %36, 1
  %48 = add nsw i64 %47, %28
  %49 = getelementptr inbounds float, float* %1, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !9
  %51 = fmul float %50, %7
  %52 = mul nsw i64 %47, %25
  %53 = add nsw i64 %52, %27
  %54 = getelementptr inbounds float, float* %2, i64 %53
  %55 = load float, float* %54, align 4, !tbaa !9
  %56 = tail call float @llvm.fmuladd.f32(float %51, float %55, float %46)
  store float %56, float* %21, align 4, !tbaa !9
  %57 = add nsw i64 %36, 2
  %58 = add i64 %37, -2
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %34

; <label>:60:                                     ; preds = %34, %23
  %61 = phi float [ 0.000000e+00, %23 ], [ %56, %34 ]
  %62 = phi i64 [ 0, %23 ], [ %57, %34 ]
  %63 = icmp eq i64 %30, 0
  br i1 %63, label %74, label %64

; <label>:64:                                     ; preds = %60
  %65 = add nsw i64 %62, %28
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !9
  %68 = fmul float %67, %7
  %69 = mul nsw i64 %62, %25
  %70 = add nsw i64 %69, %27
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !9
  %73 = tail call float @llvm.fmuladd.f32(float %68, float %72, float %61)
  store float %73, float* %21, align 4, !tbaa !9
  br label %74

; <label>:74:                                     ; preds = %64, %60, %17, %9
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int", !"int", !"DATA_TYPE", !"DATA_TYPE"}
!7 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int", !"int", !"float", !"float"}
!8 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
