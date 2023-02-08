; ModuleID = 'npb-LU-erhs1.cl'
source_filename = "npb-LU-erhs1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @erhs1(double* nocapture, double* nocapture, double* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %8, %5
  %14 = icmp slt i32 %10, %4
  %15 = and i1 %13, %14
  %16 = icmp slt i32 %12, %3
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %80

; <label>:18:                                     ; preds = %6
  %19 = bitcast double* %0 to [65 x [65 x [5 x double]]]*
  %20 = bitcast double* %1 to [65 x [65 x [5 x double]]]*
  %21 = bitcast double* %2 to [13 x double]*
  %22 = sitofp i32 %8 to double
  %23 = add nsw i32 %5, -1
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %22, %24
  %26 = sitofp i32 %10 to double
  %27 = fdiv double %26, 6.300000e+01
  %28 = sitofp i32 %12 to double
  %29 = fdiv double %28, 6.300000e+01
  %30 = shl i64 %7, 32
  %31 = ashr exact i64 %30, 32
  %32 = shl i64 %9, 32
  %33 = ashr exact i64 %32, 32
  %34 = shl i64 %11, 32
  %35 = ashr exact i64 %34, 32
  br label %36

; <label>:36:                                     ; preds = %36, %18
  %37 = phi i64 [ 0, %18 ], [ %78, %36 ]
  %38 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %31, i64 %33, i64 %35, i64 %37
  store double 0.000000e+00, double* %38, align 8, !tbaa !8
  %39 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 0
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 1
  %42 = load double, double* %41, align 8, !tbaa !8
  %43 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 4
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 7
  %46 = load double, double* %45, align 8, !tbaa !8
  %47 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 10
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %29, double %46)
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %29, double %44)
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %29, double %42)
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %29, double %40)
  %53 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 2
  %54 = load double, double* %53, align 8, !tbaa !8
  %55 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 5
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 8
  %58 = load double, double* %57, align 8, !tbaa !8
  %59 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 11
  %60 = load double, double* %59, align 8, !tbaa !8
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %27, double %58)
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %27, double %56)
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %27, double %54)
  %64 = tail call double @llvm.fmuladd.f64(double %63, double %27, double %52)
  %65 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 3
  %66 = load double, double* %65, align 8, !tbaa !8
  %67 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 6
  %68 = load double, double* %67, align 8, !tbaa !8
  %69 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 9
  %70 = load double, double* %69, align 8, !tbaa !8
  %71 = getelementptr inbounds [13 x double], [13 x double]* %21, i64 %37, i64 12
  %72 = load double, double* %71, align 8, !tbaa !8
  %73 = tail call double @llvm.fmuladd.f64(double %72, double %25, double %70)
  %74 = tail call double @llvm.fmuladd.f64(double %73, double %25, double %68)
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %25, double %66)
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %25, double %64)
  %77 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %31, i64 %33, i64 %35, i64 %37
  store double %76, double* %77, align 8, !tbaa !8
  %78 = add nuw nsw i64 %37, 1
  %79 = icmp eq i64 %78, 5
  br i1 %79, label %80, label %36

; <label>:80:                                     ; preds = %36, %6
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
