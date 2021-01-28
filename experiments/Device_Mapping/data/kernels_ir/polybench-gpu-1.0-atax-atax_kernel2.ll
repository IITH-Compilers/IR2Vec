; ModuleID = 'polybench-gpu-1.0-atax-atax_kernel2.cl'
source_filename = "polybench-gpu-1.0-atax-atax_kernel2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @atax_kernel2(float* nocapture readonly, float* nocapture, float* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %4
  %9 = icmp sgt i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %58

; <label>:11:                                     ; preds = %5
  %12 = shl i64 %6, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds float, float* %1, i64 %13
  %15 = sext i32 %4 to i64
  %16 = shl i64 %6, 32
  %17 = ashr exact i64 %16, 32
  %18 = load float, float* %14, align 4, !tbaa !9
  %19 = zext i32 %3 to i64
  %20 = and i64 %19, 1
  %21 = icmp eq i32 %3, 1
  br i1 %21, label %46, label %22

; <label>:22:                                     ; preds = %11
  %23 = sub nsw i64 %19, %20
  br label %24

; <label>:24:                                     ; preds = %24, %22
  %25 = phi float [ %18, %22 ], [ %42, %24 ]
  %26 = phi i64 [ 0, %22 ], [ %43, %24 ]
  %27 = phi i64 [ %23, %22 ], [ %44, %24 ]
  %28 = mul nsw i64 %26, %15
  %29 = add nsw i64 %28, %17
  %30 = getelementptr inbounds float, float* %0, i64 %29
  %31 = load float, float* %30, align 4, !tbaa !9
  %32 = getelementptr inbounds float, float* %2, i64 %26
  %33 = load float, float* %32, align 4, !tbaa !9
  %34 = tail call float @llvm.fmuladd.f32(float %31, float %33, float %25)
  store float %34, float* %14, align 4, !tbaa !9
  %35 = or i64 %26, 1
  %36 = mul nsw i64 %35, %15
  %37 = add nsw i64 %36, %17
  %38 = getelementptr inbounds float, float* %0, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !9
  %40 = getelementptr inbounds float, float* %2, i64 %35
  %41 = load float, float* %40, align 4, !tbaa !9
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %41, float %34)
  store float %42, float* %14, align 4, !tbaa !9
  %43 = add nsw i64 %26, 2
  %44 = add i64 %27, -2
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %24

; <label>:46:                                     ; preds = %24, %11
  %47 = phi float [ %18, %11 ], [ %42, %24 ]
  %48 = phi i64 [ 0, %11 ], [ %43, %24 ]
  %49 = icmp eq i64 %20, 0
  br i1 %49, label %58, label %50

; <label>:50:                                     ; preds = %46
  %51 = mul nsw i64 %48, %15
  %52 = add nsw i64 %51, %17
  %53 = getelementptr inbounds float, float* %0, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !9
  %55 = getelementptr inbounds float, float* %2, i64 %48
  %56 = load float, float* %55, align 4, !tbaa !9
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %56, float %47)
  store float %57, float* %14, align 4, !tbaa !9
  br label %58

; <label>:58:                                     ; preds = %50, %46, %5
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
