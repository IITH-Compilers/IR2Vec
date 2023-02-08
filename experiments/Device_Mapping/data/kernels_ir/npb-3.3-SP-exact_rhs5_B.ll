; ModuleID = 'npb-SP-exact_rhs5.cl'
source_filename = "npb-SP-exact_rhs5.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @exact_rhs5(double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %6 = add i64 %5, 1
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %9 = add i64 %8, 1
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %11 = add i64 %10, 1
  %12 = add nsw i32 %3, -2
  %13 = icmp slt i32 %12, %7
  br i1 %13, label %45, label %14

; <label>:14:                                     ; preds = %4
  %15 = trunc i64 %11 to i32
  %16 = trunc i64 %9 to i32
  %17 = add nsw i32 %2, -2
  %18 = icmp slt i32 %17, %16
  %19 = add nsw i32 %1, -2
  %20 = icmp slt i32 %19, %15
  %21 = or i1 %18, %20
  br i1 %21, label %45, label %22

; <label>:22:                                     ; preds = %14
  %23 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %24 = shl i64 %6, 32
  %25 = ashr exact i64 %24, 32
  %26 = shl i64 %9, 32
  %27 = ashr exact i64 %26, 32
  %28 = shl i64 %11, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %25, i64 %27, i64 %29, i64 0
  %31 = load double, double* %30, align 8, !tbaa !8
  %32 = fsub double -0.000000e+00, %31
  store double %32, double* %30, align 8, !tbaa !8
  %33 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %25, i64 %27, i64 %29, i64 1
  %34 = load double, double* %33, align 8, !tbaa !8
  %35 = fsub double -0.000000e+00, %34
  store double %35, double* %33, align 8, !tbaa !8
  %36 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %25, i64 %27, i64 %29, i64 2
  %37 = load double, double* %36, align 8, !tbaa !8
  %38 = fsub double -0.000000e+00, %37
  store double %38, double* %36, align 8, !tbaa !8
  %39 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %25, i64 %27, i64 %29, i64 3
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = fsub double -0.000000e+00, %40
  store double %41, double* %39, align 8, !tbaa !8
  %42 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %23, i64 %25, i64 %27, i64 %29, i64 4
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = fsub double -0.000000e+00, %43
  store double %44, double* %42, align 8, !tbaa !8
  br label %45

; <label>:45:                                     ; preds = %22, %4, %14
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
