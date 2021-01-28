; ModuleID = 'polybench-gpu-1.0-correlation-std_kernel.cl'
source_filename = "polybench-gpu-1.0-correlation-std_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @std_kernel(float* nocapture readonly, float* nocapture, float* nocapture readonly, float, float, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, %5
  br i1 %10, label %11, label %67

; <label>:11:                                     ; preds = %7
  %12 = shl i64 %8, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds float, float* %1, i64 %13
  store float 0.000000e+00, float* %14, align 4, !tbaa !9
  %15 = icmp sgt i32 %6, 0
  br i1 %15, label %16, label %61

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds float, float* %0, i64 %13
  %18 = sext i32 %5 to i64
  %19 = shl i64 %8, 32
  %20 = ashr exact i64 %19, 32
  %21 = zext i32 %6 to i64
  %22 = and i64 %21, 1
  %23 = icmp eq i32 %6, 1
  br i1 %23, label %48, label %24

; <label>:24:                                     ; preds = %16
  %25 = sub nsw i64 %21, %22
  br label %26

; <label>:26:                                     ; preds = %26, %24
  %27 = phi float [ 0.000000e+00, %24 ], [ %44, %26 ]
  %28 = phi i64 [ 0, %24 ], [ %45, %26 ]
  %29 = phi i64 [ %25, %24 ], [ %46, %26 ]
  %30 = mul nsw i64 %28, %18
  %31 = add nsw i64 %30, %20
  %32 = getelementptr inbounds float, float* %2, i64 %31
  %33 = load float, float* %32, align 4, !tbaa !9
  %34 = load float, float* %17, align 4, !tbaa !9
  %35 = fsub float %33, %34
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %27)
  store float %36, float* %14, align 4, !tbaa !9
  %37 = or i64 %28, 1
  %38 = mul nsw i64 %37, %18
  %39 = add nsw i64 %38, %20
  %40 = getelementptr inbounds float, float* %2, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !9
  %42 = load float, float* %17, align 4, !tbaa !9
  %43 = fsub float %41, %42
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %36)
  store float %44, float* %14, align 4, !tbaa !9
  %45 = add nsw i64 %28, 2
  %46 = add i64 %29, -2
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %26

; <label>:48:                                     ; preds = %26, %16
  %49 = phi float [ undef, %16 ], [ %44, %26 ]
  %50 = phi float [ 0.000000e+00, %16 ], [ %44, %26 ]
  %51 = phi i64 [ 0, %16 ], [ %45, %26 ]
  %52 = icmp eq i64 %22, 0
  br i1 %52, label %61, label %53

; <label>:53:                                     ; preds = %48
  %54 = mul nsw i64 %51, %18
  %55 = add nsw i64 %54, %20
  %56 = getelementptr inbounds float, float* %2, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !9
  %58 = load float, float* %17, align 4, !tbaa !9
  %59 = fsub float %57, %58
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %50)
  store float %60, float* %14, align 4, !tbaa !9
  br label %61

; <label>:61:                                     ; preds = %53, %48, %11
  %62 = phi float [ 0.000000e+00, %11 ], [ %49, %48 ], [ %60, %53 ]
  %63 = fdiv float %62, %3, !fpmath !13
  %64 = tail call float @_Z4sqrtf(float %63) #3
  %65 = fcmp ugt float %64, %4
  %66 = select i1 %65, float %64, float 1.000000e+00
  store float %66, float* %14, align 4, !tbaa !9
  br label %67

; <label>:67:                                     ; preds = %61, %7
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{float 2.500000e+00}
