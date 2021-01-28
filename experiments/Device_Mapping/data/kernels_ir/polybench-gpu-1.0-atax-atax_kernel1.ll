; ModuleID = 'polybench-gpu-1.0-atax-atax_kernel1.cl'
source_filename = "polybench-gpu-1.0-atax-atax_kernel1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @atax_kernel1(float* nocapture readonly, float* nocapture readonly, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %3
  %9 = icmp sgt i32 %4, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %76

; <label>:11:                                     ; preds = %5
  %12 = mul nsw i32 %7, %4
  %13 = shl i64 %6, 32
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds float, float* %2, i64 %14
  %16 = sext i32 %12 to i64
  %17 = load float, float* %15, align 4, !tbaa !9
  %18 = zext i32 %4 to i64
  %19 = add nsw i64 %18, -1
  %20 = and i64 %18, 3
  %21 = icmp ult i64 %19, 3
  br i1 %21, label %58, label %22

; <label>:22:                                     ; preds = %11
  %23 = sub nsw i64 %18, %20
  br label %24

; <label>:24:                                     ; preds = %24, %22
  %25 = phi float [ %17, %22 ], [ %54, %24 ]
  %26 = phi i64 [ 0, %22 ], [ %55, %24 ]
  %27 = phi i64 [ %23, %22 ], [ %56, %24 ]
  %28 = add nsw i64 %26, %16
  %29 = getelementptr inbounds float, float* %0, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !9
  %31 = getelementptr inbounds float, float* %1, i64 %26
  %32 = load float, float* %31, align 4, !tbaa !9
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %25)
  store float %33, float* %15, align 4, !tbaa !9
  %34 = or i64 %26, 1
  %35 = add nsw i64 %34, %16
  %36 = getelementptr inbounds float, float* %0, i64 %35
  %37 = load float, float* %36, align 4, !tbaa !9
  %38 = getelementptr inbounds float, float* %1, i64 %34
  %39 = load float, float* %38, align 4, !tbaa !9
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %33)
  store float %40, float* %15, align 4, !tbaa !9
  %41 = or i64 %26, 2
  %42 = add nsw i64 %41, %16
  %43 = getelementptr inbounds float, float* %0, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !9
  %45 = getelementptr inbounds float, float* %1, i64 %41
  %46 = load float, float* %45, align 4, !tbaa !9
  %47 = tail call float @llvm.fmuladd.f32(float %44, float %46, float %40)
  store float %47, float* %15, align 4, !tbaa !9
  %48 = or i64 %26, 3
  %49 = add nsw i64 %48, %16
  %50 = getelementptr inbounds float, float* %0, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !9
  %52 = getelementptr inbounds float, float* %1, i64 %48
  %53 = load float, float* %52, align 4, !tbaa !9
  %54 = tail call float @llvm.fmuladd.f32(float %51, float %53, float %47)
  store float %54, float* %15, align 4, !tbaa !9
  %55 = add nsw i64 %26, 4
  %56 = add i64 %27, -4
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %24

; <label>:58:                                     ; preds = %24, %11
  %59 = phi float [ %17, %11 ], [ %54, %24 ]
  %60 = phi i64 [ 0, %11 ], [ %55, %24 ]
  %61 = icmp eq i64 %20, 0
  br i1 %61, label %76, label %62

; <label>:62:                                     ; preds = %58
  br label %63

; <label>:63:                                     ; preds = %63, %62
  %64 = phi float [ %59, %62 ], [ %72, %63 ]
  %65 = phi i64 [ %60, %62 ], [ %73, %63 ]
  %66 = phi i64 [ %20, %62 ], [ %74, %63 ]
  %67 = add nsw i64 %65, %16
  %68 = getelementptr inbounds float, float* %0, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !9
  %70 = getelementptr inbounds float, float* %1, i64 %65
  %71 = load float, float* %70, align 4, !tbaa !9
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %71, float %64)
  store float %72, float* %15, align 4, !tbaa !9
  %73 = add nuw nsw i64 %65, 1
  %74 = add i64 %66, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %63, !llvm.loop !13

; <label>:76:                                     ; preds = %58, %63, %5
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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
