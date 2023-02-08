; ModuleID = 'npb-LU-ssor3.cl'
source_filename = "npb-LU-ssor3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ssor3(double* nocapture, double* nocapture readonly, double, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %8 = add i64 %7, 1
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %11 = add i64 %10, 1
  %12 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %13 = add i64 %12, 1
  %14 = add nsw i32 %5, -1
  %15 = icmp sgt i32 %14, %9
  br i1 %15, label %16, label %58

; <label>:16:                                     ; preds = %6
  %17 = trunc i64 %13 to i32
  %18 = trunc i64 %11 to i32
  %19 = add nsw i32 %4, -1
  %20 = icmp sgt i32 %19, %18
  %21 = add nsw i32 %3, -1
  %22 = icmp sgt i32 %21, %17
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %58

; <label>:24:                                     ; preds = %16
  %25 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %26 = bitcast double* %1 to [103 x [103 x [5 x double]]]*
  %27 = shl i64 %8, 32
  %28 = ashr exact i64 %27, 32
  %29 = shl i64 %11, 32
  %30 = ashr exact i64 %29, 32
  %31 = shl i64 %13, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %25, i64 %28, i64 %30, i64 %32, i64 0
  %34 = load double, double* %33, align 8, !tbaa !8
  %35 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %26, i64 %28, i64 %30, i64 %32, i64 0
  %36 = load double, double* %35, align 8, !tbaa !8
  %37 = tail call double @llvm.fmuladd.f64(double %2, double %36, double %34)
  store double %37, double* %33, align 8, !tbaa !8
  %38 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %25, i64 %28, i64 %30, i64 %32, i64 1
  %39 = load double, double* %38, align 8, !tbaa !8
  %40 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %26, i64 %28, i64 %30, i64 %32, i64 1
  %41 = load double, double* %40, align 8, !tbaa !8
  %42 = tail call double @llvm.fmuladd.f64(double %2, double %41, double %39)
  store double %42, double* %38, align 8, !tbaa !8
  %43 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %25, i64 %28, i64 %30, i64 %32, i64 2
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %26, i64 %28, i64 %30, i64 %32, i64 2
  %46 = load double, double* %45, align 8, !tbaa !8
  %47 = tail call double @llvm.fmuladd.f64(double %2, double %46, double %44)
  store double %47, double* %43, align 8, !tbaa !8
  %48 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %25, i64 %28, i64 %30, i64 %32, i64 3
  %49 = load double, double* %48, align 8, !tbaa !8
  %50 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %26, i64 %28, i64 %30, i64 %32, i64 3
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = tail call double @llvm.fmuladd.f64(double %2, double %51, double %49)
  store double %52, double* %48, align 8, !tbaa !8
  %53 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %25, i64 %28, i64 %30, i64 %32, i64 4
  %54 = load double, double* %53, align 8, !tbaa !8
  %55 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %26, i64 %28, i64 %30, i64 %32, i64 4
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = tail call double @llvm.fmuladd.f64(double %2, double %56, double %54)
  store double %57, double* %53, align 8, !tbaa !8
  br label %58

; <label>:58:                                     ; preds = %24, %6, %16
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

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
!6 = !{!"double*", !"double*", !"double", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
