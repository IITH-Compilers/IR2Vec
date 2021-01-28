; ModuleID = 'npb-SP-compute_rhs1.cl'
source_filename = "npb-SP-compute_rhs1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_rhs1(double* nocapture readonly, double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %12 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %15 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %13, %10
  %18 = trunc i64 %14 to i32
  %19 = icmp slt i32 %18, %9
  %20 = and i1 %17, %19
  %21 = icmp slt i32 %16, %8
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %69

; <label>:23:                                     ; preds = %11
  %24 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %25 = bitcast double* %1 to [103 x [103 x double]]*
  %26 = bitcast double* %2 to [103 x [103 x double]]*
  %27 = bitcast double* %3 to [103 x [103 x double]]*
  %28 = bitcast double* %4 to [103 x [103 x double]]*
  %29 = bitcast double* %5 to [103 x [103 x double]]*
  %30 = bitcast double* %6 to [103 x [103 x double]]*
  %31 = bitcast double* %7 to [103 x [103 x double]]*
  %32 = shl i64 %12, 32
  %33 = ashr exact i64 %32, 32
  %34 = shl i64 %14, 32
  %35 = ashr exact i64 %34, 32
  %36 = shl i64 %15, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %33, i64 %35, i64 %37, i64 0
  %39 = load double, double* %38, align 8, !tbaa !8
  %40 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %33, i64 %35, i64 %37, i64 1
  %41 = load double, double* %40, align 8, !tbaa !8
  %42 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %33, i64 %35, i64 %37, i64 2
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %33, i64 %35, i64 %37, i64 3
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %33, i64 %35, i64 %37, i64 4
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = fdiv double 1.000000e+00, %39
  %49 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %29, i64 %33, i64 %35, i64 %37
  store double %48, double* %49, align 8, !tbaa !8
  %50 = fmul double %41, %48
  %51 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %25, i64 %33, i64 %35, i64 %37
  store double %50, double* %51, align 8, !tbaa !8
  %52 = fmul double %48, %43
  %53 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %26, i64 %33, i64 %35, i64 %37
  store double %52, double* %53, align 8, !tbaa !8
  %54 = fmul double %48, %45
  %55 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %27, i64 %33, i64 %35, i64 %37
  store double %54, double* %55, align 8, !tbaa !8
  %56 = fmul double %43, %43
  %57 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %56)
  %58 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %57)
  %59 = fmul double %58, 5.000000e-01
  %60 = fmul double %48, %59
  %61 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %31, i64 %33, i64 %35, i64 %37
  store double %60, double* %61, align 8, !tbaa !8
  %62 = fmul double %48, %60
  %63 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %28, i64 %33, i64 %35, i64 %37
  store double %62, double* %63, align 8, !tbaa !8
  %64 = fmul double %48, 0x3FE1EB851EB851EB
  %65 = fsub double %47, %60
  %66 = fmul double %64, %65
  %67 = tail call double @_Z4sqrtd(double %66) #3
  %68 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %30, i64 %33, i64 %35, i64 %37
  store double %67, double* %68, align 8, !tbaa !8
  br label %69

; <label>:69:                                     ; preds = %11, %23
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind readnone
declare double @_Z4sqrtd(double) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"const", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
