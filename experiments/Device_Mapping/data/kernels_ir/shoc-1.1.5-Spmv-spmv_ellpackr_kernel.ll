; ModuleID = 'shoc-1.1.5-Spmv-spmv_ellpackr_kernel.cl'
source_filename = "shoc-1.1.5-Spmv-spmv_ellpackr_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @spmv_ellpackr_kernel(float* noalias nocapture readonly, float* noalias nocapture readonly, i32* noalias nocapture readonly, i32* noalias nocapture readonly, i32, float* noalias nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, %4
  br i1 %9, label %10, label %72

; <label>:10:                                     ; preds = %6
  %11 = shl i64 %7, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i32, i32* %3, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %41

; <label>:16:                                     ; preds = %10
  %17 = sext i32 %4 to i64
  %18 = shl i64 %7, 32
  %19 = ashr exact i64 %18, 32
  %20 = zext i32 %14 to i64
  %21 = and i64 %20, 1
  %22 = icmp eq i32 %14, 1
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %16
  %24 = sub nsw i64 %20, %21
  br label %44

; <label>:25:                                     ; preds = %44, %16
  %26 = phi float [ undef, %16 ], [ %68, %44 ]
  %27 = phi i64 [ 0, %16 ], [ %69, %44 ]
  %28 = phi float [ 0.000000e+00, %16 ], [ %68, %44 ]
  %29 = icmp eq i64 %21, 0
  br i1 %29, label %41, label %30

; <label>:30:                                     ; preds = %25
  %31 = mul nsw i64 %27, %17
  %32 = add nsw i64 %31, %19
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = load float, float* %33, align 4, !tbaa !12
  %35 = getelementptr inbounds i32, i32* %2, i64 %32
  %36 = load i32, i32* %35, align 4, !tbaa !8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %1, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !12
  %40 = tail call float @llvm.fmuladd.f32(float %34, float %39, float %28)
  br label %41

; <label>:41:                                     ; preds = %30, %25, %10
  %42 = phi float [ 0.000000e+00, %10 ], [ %26, %25 ], [ %40, %30 ]
  %43 = getelementptr inbounds float, float* %5, i64 %12
  store float %42, float* %43, align 4, !tbaa !12
  br label %72

; <label>:44:                                     ; preds = %44, %23
  %45 = phi i64 [ 0, %23 ], [ %69, %44 ]
  %46 = phi float [ 0.000000e+00, %23 ], [ %68, %44 ]
  %47 = phi i64 [ %24, %23 ], [ %70, %44 ]
  %48 = mul nsw i64 %45, %17
  %49 = add nsw i64 %48, %19
  %50 = getelementptr inbounds float, float* %0, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !12
  %52 = getelementptr inbounds i32, i32* %2, i64 %49
  %53 = load i32, i32* %52, align 4, !tbaa !8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %1, i64 %54
  %56 = load float, float* %55, align 4, !tbaa !12
  %57 = tail call float @llvm.fmuladd.f32(float %51, float %56, float %46)
  %58 = or i64 %45, 1
  %59 = mul nsw i64 %58, %17
  %60 = add nsw i64 %59, %19
  %61 = getelementptr inbounds float, float* %0, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !12
  %63 = getelementptr inbounds i32, i32* %2, i64 %60
  %64 = load i32, i32* %63, align 4, !tbaa !8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !12
  %68 = tail call float @llvm.fmuladd.f32(float %62, float %67, float %57)
  %69 = add nsw i64 %45, 2
  %70 = add i64 %47, -2
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %25, label %44

; <label>:72:                                     ; preds = %41, %6
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int*", !"int*", !"int", !"float*"}
!7 = !{!"restrict const", !"restrict const", !"restrict const", !"restrict const", !"", !"restrict"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
