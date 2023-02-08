; ModuleID = 'polybench-gpu-1.0-2DConvolution-Convolution2D_kernel.cl'
source_filename = "polybench-gpu-1.0-2DConvolution-Convolution2D_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @Convolution2D_kernel(float* nocapture readonly, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %2, -1
  %10 = icmp sgt i32 %9, %8
  br i1 %10, label %11, label %72

; <label>:11:                                     ; preds = %4
  %12 = add nsw i32 %3, -1
  %13 = icmp sgt i32 %12, %6
  %14 = icmp sgt i32 %8, 0
  %15 = and i1 %13, %14
  %16 = icmp sgt i32 %6, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %72

; <label>:18:                                     ; preds = %11
  %19 = add nsw i32 %8, -1
  %20 = mul nsw i32 %19, %3
  %21 = add nsw i32 %6, -1
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %0, i64 %23
  %25 = load float, float* %24, align 4, !tbaa !9
  %26 = add nsw i32 %20, %6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !9
  %30 = fmul float %29, 5.000000e-01
  %31 = tail call float @llvm.fmuladd.f32(float %25, float 0x3FC99999A0000000, float %30)
  %32 = add nsw i32 %6, 1
  %33 = add nsw i32 %20, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !9
  %37 = tail call float @llvm.fmuladd.f32(float %36, float 0xBFE99999A0000000, float %31)
  %38 = mul nsw i32 %8, %3
  %39 = add nsw i32 %38, %21
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %0, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !9
  %43 = tail call float @llvm.fmuladd.f32(float %42, float 0xBFD3333340000000, float %37)
  %44 = add nsw i32 %38, %6
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %0, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !9
  %48 = tail call float @llvm.fmuladd.f32(float %47, float 0x3FE3333340000000, float %43)
  %49 = add nsw i32 %38, %32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %0, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !9
  %53 = tail call float @llvm.fmuladd.f32(float %52, float 0xBFECCCCCC0000000, float %48)
  %54 = add nsw i32 %8, 1
  %55 = mul nsw i32 %54, %3
  %56 = add nsw i32 %55, %21
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %0, i64 %57
  %59 = load float, float* %58, align 4, !tbaa !9
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 0x3FD99999A0000000, float %53)
  %61 = add nsw i32 %55, %6
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %0, i64 %62
  %64 = load float, float* %63, align 4, !tbaa !9
  %65 = tail call float @llvm.fmuladd.f32(float %64, float 0x3FE6666660000000, float %60)
  %66 = add nsw i32 %55, %32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %0, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !9
  %70 = tail call float @llvm.fmuladd.f32(float %69, float 0x3FB99999A0000000, float %65)
  %71 = getelementptr inbounds float, float* %1, i64 %45
  store float %70, float* %71, align 4, !tbaa !9
  br label %72

; <label>:72:                                     ; preds = %18, %11, %4
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
