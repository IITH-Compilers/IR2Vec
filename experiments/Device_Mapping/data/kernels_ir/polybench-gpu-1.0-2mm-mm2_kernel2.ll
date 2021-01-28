; ModuleID = 'polybench-gpu-1.0-2mm-mm2_kernel2.cl'
source_filename = "polybench-gpu-1.0-2mm-mm2_kernel2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @mm2_kernel2(float* nocapture readonly, float* nocapture readonly, float* nocapture, i32, i32, i32, i32, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, %3
  %15 = icmp slt i32 %11, %6
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %73

; <label>:17:                                     ; preds = %9
  %18 = mul nsw i32 %13, %6
  %19 = add nsw i32 %18, %11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %2, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !9
  %23 = fmul float %22, %8
  store float %23, float* %21, align 4, !tbaa !9
  %24 = icmp sgt i32 %4, 0
  br i1 %24, label %25, label %73

; <label>:25:                                     ; preds = %17
  %26 = mul nsw i32 %13, %4
  %27 = sext i32 %6 to i64
  %28 = shl i64 %10, 32
  %29 = ashr exact i64 %28, 32
  %30 = sext i32 %26 to i64
  %31 = zext i32 %4 to i64
  %32 = and i64 %31, 1
  %33 = icmp eq i32 %4, 1
  br i1 %33, label %60, label %34

; <label>:34:                                     ; preds = %25
  %35 = sub nsw i64 %31, %32
  br label %36

; <label>:36:                                     ; preds = %36, %34
  %37 = phi float [ %23, %34 ], [ %56, %36 ]
  %38 = phi i64 [ 0, %34 ], [ %57, %36 ]
  %39 = phi i64 [ %35, %34 ], [ %58, %36 ]
  %40 = add nsw i64 %38, %30
  %41 = getelementptr inbounds float, float* %0, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !9
  %43 = mul nsw i64 %38, %27
  %44 = add nsw i64 %43, %29
  %45 = getelementptr inbounds float, float* %1, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !9
  %47 = tail call float @llvm.fmuladd.f32(float %42, float %46, float %37)
  store float %47, float* %21, align 4, !tbaa !9
  %48 = or i64 %38, 1
  %49 = add nsw i64 %48, %30
  %50 = getelementptr inbounds float, float* %0, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !9
  %52 = mul nsw i64 %48, %27
  %53 = add nsw i64 %52, %29
  %54 = getelementptr inbounds float, float* %1, i64 %53
  %55 = load float, float* %54, align 4, !tbaa !9
  %56 = tail call float @llvm.fmuladd.f32(float %51, float %55, float %47)
  store float %56, float* %21, align 4, !tbaa !9
  %57 = add nsw i64 %38, 2
  %58 = add i64 %39, -2
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %36

; <label>:60:                                     ; preds = %36, %25
  %61 = phi float [ %23, %25 ], [ %56, %36 ]
  %62 = phi i64 [ 0, %25 ], [ %57, %36 ]
  %63 = icmp eq i64 %32, 0
  br i1 %63, label %73, label %64

; <label>:64:                                     ; preds = %60
  %65 = add nsw i64 %62, %30
  %66 = getelementptr inbounds float, float* %0, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !9
  %68 = mul nsw i64 %62, %27
  %69 = add nsw i64 %68, %29
  %70 = getelementptr inbounds float, float* %1, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !9
  %72 = tail call float @llvm.fmuladd.f32(float %67, float %71, float %61)
  store float %72, float* %21, align 4, !tbaa !9
  br label %73

; <label>:73:                                     ; preds = %64, %60, %17, %9
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
