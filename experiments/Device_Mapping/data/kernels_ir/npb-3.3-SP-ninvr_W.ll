; ModuleID = 'npb-SP-ninvr.cl'
source_filename = "npb-SP-ninvr.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ninvr(double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %6 = add i64 %5, 1
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %9 = add i64 %8, 1
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %7, %3
  %14 = trunc i64 %9 to i32
  %15 = icmp sgt i32 %14, %2
  %16 = or i1 %13, %15
  %17 = icmp sgt i32 %12, %1
  %18 = or i1 %16, %17
  br i1 %18, label %49, label %19

; <label>:19:                                     ; preds = %4
  %20 = bitcast double* %0 to [37 x [37 x [5 x double]]]*
  %21 = shl i64 %6, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %9, 32
  %24 = ashr exact i64 %23, 32
  %25 = shl i64 %11, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %20, i64 %22, i64 %24, i64 %26
  %28 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 0, i64 0
  %29 = bitcast [5 x double]* %27 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !8
  %31 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %20, i64 %22, i64 %24, i64 %26, i64 1
  %32 = load double, double* %31, align 8, !tbaa !8
  %33 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %20, i64 %22, i64 %24, i64 %26, i64 2
  %34 = load double, double* %33, align 8, !tbaa !8
  %35 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %20, i64 %22, i64 %24, i64 %26, i64 3
  %36 = load double, double* %35, align 8, !tbaa !8
  %37 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %20, i64 %22, i64 %24, i64 %26, i64 4
  %38 = load double, double* %37, align 8, !tbaa !8
  %39 = tail call double @_Z4sqrtd(double 5.000000e-01) #2
  %40 = fmul double %34, %39
  %41 = fadd double %36, %38
  %42 = fmul double %41, 5.000000e-01
  %43 = fsub double -0.000000e+00, %32
  store double %43, double* %28, align 8, !tbaa !8
  %44 = bitcast double* %31 to i64*
  store i64 %30, i64* %44, align 8, !tbaa !8
  %45 = fsub double %36, %38
  %46 = fmul double %39, %45
  store double %46, double* %33, align 8, !tbaa !8
  %47 = fsub double %42, %40
  store double %47, double* %35, align 8, !tbaa !8
  %48 = fadd double %40, %42
  store double %48, double* %37, align 8, !tbaa !8
  br label %49

; <label>:49:                                     ; preds = %4, %19
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @_Z4sqrtd(double) local_unnamed_addr #1

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
