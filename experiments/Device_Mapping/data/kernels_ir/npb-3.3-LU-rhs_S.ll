; ModuleID = 'npb-LU-rhs.cl'
source_filename = "npb-LU-rhs.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @rhs(double* nocapture readonly, double* nocapture, double* nocapture readonly, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %12 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %10, %7
  %15 = trunc i64 %11 to i32
  %16 = icmp slt i32 %15, %6
  %17 = and i1 %14, %16
  %18 = icmp slt i32 %13, %5
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %68

; <label>:20:                                     ; preds = %8
  %21 = bitcast double* %1 to [13 x [13 x [5 x double]]]*
  %22 = bitcast double* %2 to [13 x [13 x [5 x double]]]*
  %23 = bitcast double* %3 to [13 x [13 x double]]*
  %24 = shl i64 %9, 32
  %25 = ashr exact i64 %24, 32
  %26 = shl i64 %11, 32
  %27 = ashr exact i64 %26, 32
  %28 = shl i64 %12, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 0
  %31 = load double, double* %30, align 8, !tbaa !8
  %32 = fsub double -0.000000e+00, %31
  %33 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %21, i64 %25, i64 %27, i64 %29, i64 0
  store double %32, double* %33, align 8, !tbaa !8
  %34 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 1
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = fsub double -0.000000e+00, %35
  %37 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %21, i64 %25, i64 %27, i64 %29, i64 1
  store double %36, double* %37, align 8, !tbaa !8
  %38 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 2
  %39 = load double, double* %38, align 8, !tbaa !8
  %40 = fsub double -0.000000e+00, %39
  %41 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %21, i64 %25, i64 %27, i64 %29, i64 2
  store double %40, double* %41, align 8, !tbaa !8
  %42 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 3
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = fsub double -0.000000e+00, %43
  %45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %21, i64 %25, i64 %27, i64 %29, i64 3
  store double %44, double* %45, align 8, !tbaa !8
  %46 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 4
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = fsub double -0.000000e+00, %47
  %49 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %21, i64 %25, i64 %27, i64 %29, i64 4
  store double %48, double* %49, align 8, !tbaa !8
  %50 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %51 = bitcast double* %4 to [13 x [13 x double]]*
  %52 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %50, i64 %25, i64 %27, i64 %29, i64 0
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = fdiv double 1.000000e+00, %53
  %55 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %51, i64 %25, i64 %27, i64 %29
  store double %54, double* %55, align 8, !tbaa !8
  %56 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %50, i64 %25, i64 %27, i64 %29, i64 1
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %50, i64 %25, i64 %27, i64 %29, i64 2
  %59 = load double, double* %58, align 8, !tbaa !8
  %60 = fmul double %59, %59
  %61 = tail call double @llvm.fmuladd.f64(double %57, double %57, double %60)
  %62 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %50, i64 %25, i64 %27, i64 %29, i64 3
  %63 = load double, double* %62, align 8, !tbaa !8
  %64 = tail call double @llvm.fmuladd.f64(double %63, double %63, double %61)
  %65 = fmul double %64, 5.000000e-01
  %66 = fmul double %54, %65
  %67 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %23, i64 %25, i64 %27, i64 %29
  store double %66, double* %67, align 8, !tbaa !8
  br label %68

; <label>:68:                                     ; preds = %8, %20
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
