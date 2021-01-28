; ModuleID = 'npb-SP-tzetar.cl'
source_filename = "npb-SP-tzetar.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @tzetar(double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %12 = add i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %15 = add i64 %14, 1
  %16 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %17 = add i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %13, %9
  %20 = trunc i64 %15 to i32
  %21 = icmp sgt i32 %20, %8
  %22 = or i1 %19, %21
  %23 = icmp sgt i32 %18, %7
  %24 = or i1 %22, %23
  br i1 %24, label %84, label %25

; <label>:25:                                     ; preds = %10
  %26 = bitcast double* %0 to [65 x [65 x [5 x double]]]*
  %27 = bitcast double* %1 to [65 x [65 x double]]*
  %28 = bitcast double* %2 to [65 x [65 x double]]*
  %29 = bitcast double* %3 to [65 x [65 x double]]*
  %30 = bitcast double* %4 to [65 x [65 x double]]*
  %31 = bitcast double* %5 to [65 x [65 x double]]*
  %32 = bitcast double* %6 to [65 x [65 x [5 x double]]]*
  %33 = shl i64 %12, 32
  %34 = ashr exact i64 %33, 32
  %35 = shl i64 %15, 32
  %36 = ashr exact i64 %35, 32
  %37 = shl i64 %17, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %27, i64 %34, i64 %36, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %28, i64 %34, i64 %36, i64 %38
  %42 = load double, double* %41, align 8, !tbaa !8
  %43 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %29, i64 %34, i64 %36, i64 %38
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %31, i64 %34, i64 %36, i64 %38
  %46 = load double, double* %45, align 8, !tbaa !8
  %47 = fmul double %46, %46
  %48 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %32, i64 %34, i64 %36, i64 %38, i64 0
  %49 = load double, double* %48, align 8, !tbaa !8
  %50 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %32, i64 %34, i64 %36, i64 %38, i64 1
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %32, i64 %34, i64 %36, i64 %38, i64 2
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %32, i64 %34, i64 %36, i64 %38, i64 3
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %32, i64 %34, i64 %36, i64 %38, i64 4
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %26, i64 %34, i64 %36, i64 %38, i64 0
  %59 = load double, double* %58, align 8, !tbaa !8
  %60 = tail call double @_Z4sqrtd(double 5.000000e-01) #3
  %61 = fmul double %59, %60
  %62 = fdiv double %61, %46
  %63 = fadd double %55, %57
  %64 = fmul double %63, %62
  %65 = fadd double %53, %64
  %66 = fsub double %55, %57
  %67 = fmul double %66, %61
  store double %65, double* %48, align 8, !tbaa !8
  %68 = fsub double -0.000000e+00, %59
  %69 = fmul double %40, %65
  %70 = tail call double @llvm.fmuladd.f64(double %68, double %51, double %69)
  store double %70, double* %50, align 8, !tbaa !8
  %71 = fmul double %42, %65
  %72 = tail call double @llvm.fmuladd.f64(double %59, double %49, double %71)
  store double %72, double* %52, align 8, !tbaa !8
  %73 = tail call double @llvm.fmuladd.f64(double %44, double %65, double %67)
  store double %73, double* %54, align 8, !tbaa !8
  %74 = fsub double -0.000000e+00, %40
  %75 = fmul double %42, %49
  %76 = tail call double @llvm.fmuladd.f64(double %74, double %51, double %75)
  %77 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %30, i64 %34, i64 %36, i64 %38
  %78 = load double, double* %77, align 8, !tbaa !8
  %79 = fmul double %65, %78
  %80 = tail call double @llvm.fmuladd.f64(double %59, double %76, double %79)
  %81 = fmul double %47, 2.500000e+00
  %82 = tail call double @llvm.fmuladd.f64(double %81, double %64, double %80)
  %83 = tail call double @llvm.fmuladd.f64(double %44, double %67, double %82)
  store double %83, double* %56, align 8, !tbaa !8
  br label %84

; <label>:84:                                     ; preds = %10, %25
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @_Z4sqrtd(double) local_unnamed_addr #1

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
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
