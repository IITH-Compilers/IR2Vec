; ModuleID = 'polybench-gpu-1.0-gesummv-gesummv_kernel.cl'
source_filename = "polybench-gpu-1.0-gesummv-gesummv_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @gesummv_kernel(float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture, float* nocapture, float, float, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, %7
  br i1 %11, label %12, label %85

; <label>:12:                                     ; preds = %8
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %12
  %15 = shl i64 %9, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds float, float* %4, i64 %16
  %18 = getelementptr inbounds float, float* %3, i64 %16
  br label %78

; <label>:19:                                     ; preds = %12
  %20 = mul nsw i32 %10, %7
  %21 = shl i64 %9, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds float, float* %4, i64 %22
  %24 = getelementptr inbounds float, float* %3, i64 %22
  %25 = sext i32 %20 to i64
  %26 = zext i32 %7 to i64
  %27 = and i64 %26, 1
  %28 = icmp eq i32 %7, 1
  br i1 %28, label %62, label %29

; <label>:29:                                     ; preds = %19
  %30 = sub nsw i64 %26, %27
  br label %31

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %59, %31 ]
  %33 = phi i64 [ %30, %29 ], [ %60, %31 ]
  %34 = add nsw i64 %32, %25
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !9
  %37 = getelementptr inbounds float, float* %2, i64 %32
  %38 = load float, float* %37, align 4, !tbaa !9
  %39 = load float, float* %23, align 4, !tbaa !9
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %39)
  store float %40, float* %23, align 4, !tbaa !9
  %41 = getelementptr inbounds float, float* %1, i64 %34
  %42 = load float, float* %41, align 4, !tbaa !9
  %43 = load float, float* %37, align 4, !tbaa !9
  %44 = load float, float* %24, align 4, !tbaa !9
  %45 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %44)
  store float %45, float* %24, align 4, !tbaa !9
  %46 = or i64 %32, 1
  %47 = add nsw i64 %46, %25
  %48 = getelementptr inbounds float, float* %0, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !9
  %50 = getelementptr inbounds float, float* %2, i64 %46
  %51 = load float, float* %50, align 4, !tbaa !9
  %52 = load float, float* %23, align 4, !tbaa !9
  %53 = tail call float @llvm.fmuladd.f32(float %49, float %51, float %52)
  store float %53, float* %23, align 4, !tbaa !9
  %54 = getelementptr inbounds float, float* %1, i64 %47
  %55 = load float, float* %54, align 4, !tbaa !9
  %56 = load float, float* %50, align 4, !tbaa !9
  %57 = load float, float* %24, align 4, !tbaa !9
  %58 = tail call float @llvm.fmuladd.f32(float %55, float %56, float %57)
  store float %58, float* %24, align 4, !tbaa !9
  %59 = add nsw i64 %32, 2
  %60 = add i64 %33, -2
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %31

; <label>:62:                                     ; preds = %31, %19
  %63 = phi i64 [ 0, %19 ], [ %59, %31 ]
  %64 = icmp eq i64 %27, 0
  br i1 %64, label %78, label %65

; <label>:65:                                     ; preds = %62
  %66 = add nsw i64 %63, %25
  %67 = getelementptr inbounds float, float* %0, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !9
  %69 = getelementptr inbounds float, float* %2, i64 %63
  %70 = load float, float* %69, align 4, !tbaa !9
  %71 = load float, float* %23, align 4, !tbaa !9
  %72 = tail call float @llvm.fmuladd.f32(float %68, float %70, float %71)
  store float %72, float* %23, align 4, !tbaa !9
  %73 = getelementptr inbounds float, float* %1, i64 %66
  %74 = load float, float* %73, align 4, !tbaa !9
  %75 = load float, float* %69, align 4, !tbaa !9
  %76 = load float, float* %24, align 4, !tbaa !9
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %76)
  store float %77, float* %24, align 4, !tbaa !9
  br label %78

; <label>:78:                                     ; preds = %65, %62, %14
  %79 = phi float* [ %18, %14 ], [ %24, %62 ], [ %24, %65 ]
  %80 = phi float* [ %17, %14 ], [ %23, %62 ], [ %23, %65 ]
  %81 = load float, float* %80, align 4, !tbaa !9
  %82 = load float, float* %79, align 4, !tbaa !9
  %83 = fmul float %82, %6
  %84 = tail call float @llvm.fmuladd.f32(float %5, float %81, float %83)
  store float %84, float* %79, align 4, !tbaa !9
  br label %85

; <label>:85:                                     ; preds = %78, %8
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float", !"float", !"int"}
!8 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
