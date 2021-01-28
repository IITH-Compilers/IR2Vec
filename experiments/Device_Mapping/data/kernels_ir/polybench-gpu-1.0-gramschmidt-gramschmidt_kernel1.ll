; ModuleID = 'polybench-gpu-1.0-gramschmidt-gramschmidt_kernel1.cl'
source_filename = "polybench-gpu-1.0-gramschmidt-gramschmidt_kernel1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @gramschmidt_kernel1(float* nocapture readonly, float* nocapture, float* nocapture readnone, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %76

; <label>:10:                                     ; preds = %6
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %69

; <label>:12:                                     ; preds = %10
  %13 = sext i32 %5 to i64
  %14 = sext i32 %3 to i64
  %15 = zext i32 %4 to i64
  %16 = add nsw i64 %15, -1
  %17 = and i64 %15, 3
  %18 = icmp ult i64 %16, 3
  br i1 %18, label %51, label %19

; <label>:19:                                     ; preds = %12
  %20 = sub nsw i64 %15, %17
  br label %21

; <label>:21:                                     ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %48, %21 ]
  %23 = phi float [ 0.000000e+00, %19 ], [ %47, %21 ]
  %24 = phi i64 [ %20, %19 ], [ %49, %21 ]
  %25 = mul nsw i64 %22, %13
  %26 = add nsw i64 %25, %14
  %27 = getelementptr inbounds float, float* %0, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !9
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %23)
  %30 = or i64 %22, 1
  %31 = mul nsw i64 %30, %13
  %32 = add nsw i64 %31, %14
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = load float, float* %33, align 4, !tbaa !9
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %29)
  %36 = or i64 %22, 2
  %37 = mul nsw i64 %36, %13
  %38 = add nsw i64 %37, %14
  %39 = getelementptr inbounds float, float* %0, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !9
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %35)
  %42 = or i64 %22, 3
  %43 = mul nsw i64 %42, %13
  %44 = add nsw i64 %43, %14
  %45 = getelementptr inbounds float, float* %0, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !9
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %41)
  %48 = add nsw i64 %22, 4
  %49 = add i64 %24, -4
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %21

; <label>:51:                                     ; preds = %21, %12
  %52 = phi float [ undef, %12 ], [ %47, %21 ]
  %53 = phi i64 [ 0, %12 ], [ %48, %21 ]
  %54 = phi float [ 0.000000e+00, %12 ], [ %47, %21 ]
  %55 = icmp eq i64 %17, 0
  br i1 %55, label %69, label %56

; <label>:56:                                     ; preds = %51
  br label %57

; <label>:57:                                     ; preds = %57, %56
  %58 = phi i64 [ %53, %56 ], [ %66, %57 ]
  %59 = phi float [ %54, %56 ], [ %65, %57 ]
  %60 = phi i64 [ %17, %56 ], [ %67, %57 ]
  %61 = mul nsw i64 %58, %13
  %62 = add nsw i64 %61, %14
  %63 = getelementptr inbounds float, float* %0, i64 %62
  %64 = load float, float* %63, align 4, !tbaa !9
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %59)
  %66 = add nuw nsw i64 %58, 1
  %67 = add i64 %60, -1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %57, !llvm.loop !13

; <label>:69:                                     ; preds = %51, %57, %10
  %70 = phi float [ 0.000000e+00, %10 ], [ %52, %51 ], [ %65, %57 ]
  %71 = tail call float @_Z4sqrtf(float %70) #3
  %72 = mul nsw i32 %5, %3
  %73 = add nsw i32 %72, %3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %1, i64 %74
  store float %71, float* %75, align 4, !tbaa !9
  br label %76

; <label>:76:                                     ; preds = %69, %6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
