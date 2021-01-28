; ModuleID = 'polybench-gpu-1.0-3DConvolution-Convolution3D_kernel.cl'
source_filename = "polybench-gpu-1.0-3DConvolution-Convolution3D_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @Convolution3D_kernel(float* nocapture readonly, float* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %2, -1
  %12 = icmp sgt i32 %11, %5
  %13 = add nsw i32 %3, -1
  %14 = icmp sgt i32 %13, %10
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %103

; <label>:16:                                     ; preds = %6
  %17 = add nsw i32 %4, -1
  %18 = icmp sgt i32 %17, %8
  %19 = icmp sgt i32 %5, 0
  %20 = and i1 %19, %18
  %21 = icmp sgt i32 %10, 0
  %22 = and i1 %20, %21
  %23 = icmp sgt i32 %8, 0
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %103

; <label>:25:                                     ; preds = %16
  %26 = add nsw i32 %5, -1
  %27 = mul nsw i32 %4, %3
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %10, -1
  %30 = mul nsw i32 %29, %4
  %31 = add nsw i32 %30, %28
  %32 = add nsw i32 %8, -1
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !9
  %37 = add nsw i32 %5, 1
  %38 = mul nsw i32 %37, %27
  %39 = add nsw i32 %30, %38
  %40 = add nsw i32 %39, %32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %0, i64 %41
  %43 = load float, float* %42, align 4, !tbaa !9
  %44 = fmul float %43, 4.000000e+00
  %45 = tail call float @llvm.fmuladd.f32(float %36, float 2.000000e+00, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %36, float 5.000000e+00, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %43, float 7.000000e+00, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %36, float -8.000000e+00, float %47)
  %49 = tail call float @llvm.fmuladd.f32(float %43, float 1.000000e+01, float %48)
  %50 = mul nsw i32 %27, %5
  %51 = add i32 %50, %8
  %52 = add i32 %51, %30
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %0, i64 %53
  %55 = load float, float* %54, align 4, !tbaa !9
  %56 = tail call float @llvm.fmuladd.f32(float %55, float -3.000000e+00, float %49)
  %57 = mul nsw i32 %10, %4
  %58 = add i32 %51, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %0, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !9
  %62 = tail call float @llvm.fmuladd.f32(float %61, float 6.000000e+00, float %56)
  %63 = add nsw i32 %10, 1
  %64 = mul nsw i32 %63, %4
  %65 = add i32 %51, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %0, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !9
  %69 = tail call float @llvm.fmuladd.f32(float %68, float -9.000000e+00, float %62)
  %70 = add nsw i32 %8, 1
  %71 = add nsw i32 %31, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %0, i64 %72
  %74 = load float, float* %73, align 4, !tbaa !9
  %75 = tail call float @llvm.fmuladd.f32(float %74, float 2.000000e+00, float %69)
  %76 = add nsw i32 %39, %70
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %0, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !9
  %80 = tail call float @llvm.fmuladd.f32(float %79, float 4.000000e+00, float %75)
  %81 = add i32 %70, %28
  %82 = add i32 %81, %57
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %0, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !9
  %86 = tail call float @llvm.fmuladd.f32(float %85, float 5.000000e+00, float %80)
  %87 = add i32 %70, %38
  %88 = add i32 %87, %57
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %0, i64 %89
  %91 = load float, float* %90, align 4, !tbaa !9
  %92 = tail call float @llvm.fmuladd.f32(float %91, float 7.000000e+00, float %86)
  %93 = add i32 %81, %64
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %0, i64 %94
  %96 = load float, float* %95, align 4, !tbaa !9
  %97 = tail call float @llvm.fmuladd.f32(float %96, float -8.000000e+00, float %92)
  %98 = add i32 %87, %64
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %0, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !9
  %102 = tail call float @llvm.fmuladd.f32(float %101, float 1.000000e+01, float %97)
  br label %108

; <label>:103:                                    ; preds = %16, %6
  %104 = mul i32 %5, %3
  %105 = add i32 %104, %10
  %106 = mul i32 %105, %4
  %107 = add i32 %106, %8
  br label %108

; <label>:108:                                    ; preds = %103, %25
  %109 = phi i32 [ %107, %103 ], [ %58, %25 ]
  %110 = phi float [ 0.000000e+00, %103 ], [ %102, %25 ]
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds float, float* %1, i64 %111
  store float %110, float* %112, align 4, !tbaa !9
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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int", !"int"}
!7 = !{!"float*", !"float*", !"int", !"int", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
