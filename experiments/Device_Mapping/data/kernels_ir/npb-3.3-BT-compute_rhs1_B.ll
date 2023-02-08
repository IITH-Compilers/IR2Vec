; ModuleID = 'npb-3.3-BT-compute_rhs1_B.cl'
source_filename = "npb-3.3-BT-compute_rhs1_B.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_rhs1(double* nocapture readonly, double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %14 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %12, %9
  %17 = trunc i64 %13 to i32
  %18 = icmp slt i32 %17, %8
  %19 = and i1 %16, %18
  %20 = icmp slt i32 %15, %7
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %63

; <label>:22:                                     ; preds = %10
  %23 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %24 = bitcast double* %1 to [103 x [103 x double]]*
  %25 = bitcast double* %2 to [103 x [103 x double]]*
  %26 = bitcast double* %3 to [103 x [103 x double]]*
  %27 = bitcast double* %4 to [103 x [103 x double]]*
  %28 = bitcast double* %5 to [103 x [103 x double]]*
  %29 = bitcast double* %6 to [103 x [103 x double]]*
  %30 = shl i64 %11, 32
  %31 = ashr exact i64 %30, 32
  %32 = shl i64 %13, 32
  %33 = ashr exact i64 %32, 32
  %34 = shl i64 %14, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %31, i64 %33, i64 %35, i64 0
  %37 = load double, double* %36, align 8, !tbaa !8
  %38 = fdiv double 1.000000e+00, %37
  %39 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %28, i64 %31, i64 %33, i64 %35
  store double %38, double* %39, align 8, !tbaa !8
  %40 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %31, i64 %33, i64 %35, i64 1
  %41 = load double, double* %40, align 8, !tbaa !8
  %42 = fmul double %38, %41
  %43 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %24, i64 %31, i64 %33, i64 %35
  store double %42, double* %43, align 8, !tbaa !8
  %44 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %31, i64 %33, i64 %35, i64 2
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = fmul double %38, %45
  %47 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %25, i64 %31, i64 %33, i64 %35
  store double %46, double* %47, align 8, !tbaa !8
  %48 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %31, i64 %33, i64 %35, i64 3
  %49 = load double, double* %48, align 8, !tbaa !8
  %50 = fmul double %38, %49
  %51 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %26, i64 %31, i64 %33, i64 %35
  store double %50, double* %51, align 8, !tbaa !8
  %52 = load double, double* %40, align 8, !tbaa !8
  %53 = load double, double* %44, align 8, !tbaa !8
  %54 = fmul double %53, %53
  %55 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %54)
  %56 = load double, double* %48, align 8, !tbaa !8
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %55)
  %58 = fmul double %57, 5.000000e-01
  %59 = fmul double %38, %58
  %60 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %29, i64 %31, i64 %33, i64 %35
  store double %59, double* %60, align 8, !tbaa !8
  %61 = fmul double %38, %59
  %62 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %27, i64 %31, i64 %33, i64 %35
  store double %61, double* %62, align 8, !tbaa !8
  br label %63

; <label>:63:                                     ; preds = %10, %22
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"const", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
