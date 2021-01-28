; ModuleID = 'polybench-gpu-1.0-mvt-mvt_kernel1.cl'
source_filename = "polybench-gpu-1.0-mvt-mvt_kernel1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @mvt_kernel1(float* nocapture readonly, float* nocapture, float* nocapture readonly, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %6 = trunc i64 %5 to i32
  %7 = icmp slt i32 %6, %3
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %75

; <label>:10:                                     ; preds = %4
  %11 = mul nsw i32 %6, %3
  %12 = shl i64 %5, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds float, float* %1, i64 %13
  %15 = sext i32 %11 to i64
  %16 = load float, float* %14, align 4, !tbaa !9
  %17 = zext i32 %3 to i64
  %18 = add nsw i64 %17, -1
  %19 = and i64 %17, 3
  %20 = icmp ult i64 %18, 3
  br i1 %20, label %57, label %21

; <label>:21:                                     ; preds = %10
  %22 = sub nsw i64 %17, %19
  br label %23

; <label>:23:                                     ; preds = %23, %21
  %24 = phi float [ %16, %21 ], [ %53, %23 ]
  %25 = phi i64 [ 0, %21 ], [ %54, %23 ]
  %26 = phi i64 [ %22, %21 ], [ %55, %23 ]
  %27 = add nsw i64 %25, %15
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !9
  %30 = getelementptr inbounds float, float* %2, i64 %25
  %31 = load float, float* %30, align 4, !tbaa !9
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %24)
  store float %32, float* %14, align 4, !tbaa !9
  %33 = or i64 %25, 1
  %34 = add nsw i64 %33, %15
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !9
  %37 = getelementptr inbounds float, float* %2, i64 %33
  %38 = load float, float* %37, align 4, !tbaa !9
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %32)
  store float %39, float* %14, align 4, !tbaa !9
  %40 = or i64 %25, 2
  %41 = add nsw i64 %40, %15
  %42 = getelementptr inbounds float, float* %0, i64 %41
  %43 = load float, float* %42, align 4, !tbaa !9
  %44 = getelementptr inbounds float, float* %2, i64 %40
  %45 = load float, float* %44, align 4, !tbaa !9
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %45, float %39)
  store float %46, float* %14, align 4, !tbaa !9
  %47 = or i64 %25, 3
  %48 = add nsw i64 %47, %15
  %49 = getelementptr inbounds float, float* %0, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !9
  %51 = getelementptr inbounds float, float* %2, i64 %47
  %52 = load float, float* %51, align 4, !tbaa !9
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %52, float %46)
  store float %53, float* %14, align 4, !tbaa !9
  %54 = add nsw i64 %25, 4
  %55 = add i64 %26, -4
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %23

; <label>:57:                                     ; preds = %23, %10
  %58 = phi float [ %16, %10 ], [ %53, %23 ]
  %59 = phi i64 [ 0, %10 ], [ %54, %23 ]
  %60 = icmp eq i64 %19, 0
  br i1 %60, label %75, label %61

; <label>:61:                                     ; preds = %57
  br label %62

; <label>:62:                                     ; preds = %62, %61
  %63 = phi float [ %58, %61 ], [ %71, %62 ]
  %64 = phi i64 [ %59, %61 ], [ %72, %62 ]
  %65 = phi i64 [ %19, %61 ], [ %73, %62 ]
  %66 = add nsw i64 %64, %15
  %67 = getelementptr inbounds float, float* %0, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !9
  %69 = getelementptr inbounds float, float* %2, i64 %64
  %70 = load float, float* %69, align 4, !tbaa !9
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %70, float %63)
  store float %71, float* %14, align 4, !tbaa !9
  %72 = add nuw nsw i64 %64, 1
  %73 = add i64 %65, -1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %62, !llvm.loop !13

; <label>:75:                                     ; preds = %57, %62, %4
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
!4 = !{i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"int"}
!8 = !{!"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
