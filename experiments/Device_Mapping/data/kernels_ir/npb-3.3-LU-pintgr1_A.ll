; ModuleID = 'npb-LU-pintgr1.cl'
source_filename = "npb-LU-pintgr1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @pintgr1(double* nocapture readonly, double* nocapture, double* nocapture, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %11 = zext i32 %5 to i64
  %12 = add i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %15 = zext i32 %3 to i64
  %16 = add i64 %14, %15
  %17 = icmp slt i32 %13, %6
  %18 = trunc i64 %16 to i32
  %19 = icmp slt i32 %18, %4
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %68

; <label>:21:                                     ; preds = %9
  %22 = bitcast double* %0 to [65 x [65 x [5 x double]]]*
  %23 = bitcast double* %1 to [66 x double]*
  %24 = bitcast double* %2 to [66 x double]*
  %25 = sext i32 %7 to i64
  %26 = shl i64 %12, 32
  %27 = ashr exact i64 %26, 32
  %28 = shl i64 %16, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 4
  %31 = load double, double* %30, align 8, !tbaa !8
  %32 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 1
  %33 = load double, double* %32, align 8, !tbaa !8
  %34 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 2
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = fmul double %35, %35
  %37 = tail call double @llvm.fmuladd.f64(double %33, double %33, double %36)
  %38 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 3
  %39 = load double, double* %38, align 8, !tbaa !8
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %39, double %37)
  %41 = fmul double %40, 5.000000e-01
  %42 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %25, i64 %27, i64 %29, i64 0
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = fdiv double %41, %43
  %45 = fsub double %31, %44
  %46 = fmul double %45, 4.000000e-01
  %47 = getelementptr inbounds [66 x double], [66 x double]* %23, i64 %27, i64 %29
  store double %46, double* %47, align 8, !tbaa !8
  %48 = add nsw i32 %8, -1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %49, i64 %27, i64 %29, i64 4
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %49, i64 %27, i64 %29, i64 1
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %49, i64 %27, i64 %29, i64 2
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = fmul double %55, %55
  %57 = tail call double @llvm.fmuladd.f64(double %53, double %53, double %56)
  %58 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %49, i64 %27, i64 %29, i64 3
  %59 = load double, double* %58, align 8, !tbaa !8
  %60 = tail call double @llvm.fmuladd.f64(double %59, double %59, double %57)
  %61 = fmul double %60, 5.000000e-01
  %62 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %22, i64 %49, i64 %27, i64 %29, i64 0
  %63 = load double, double* %62, align 8, !tbaa !8
  %64 = fdiv double %61, %63
  %65 = fsub double %51, %64
  %66 = fmul double %65, 4.000000e-01
  %67 = getelementptr inbounds [66 x double], [66 x double]* %24, i64 %27, i64 %29
  store double %66, double* %67, align 8, !tbaa !8
  br label %68

; <label>:68:                                     ; preds = %9, %21
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
