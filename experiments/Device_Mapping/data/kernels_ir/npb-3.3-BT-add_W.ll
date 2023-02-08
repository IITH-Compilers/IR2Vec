; ModuleID = 'npb-T-add_W.cl'
source_filename = "npb-T-add_W.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @add(double* nocapture, double* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %7 = add i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %10 = add i64 %9, 1
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %12 = add i64 %11, 1
  %13 = add nsw i32 %4, -2
  %14 = icmp slt i32 %13, %8
  br i1 %14, label %57, label %15

; <label>:15:                                     ; preds = %5
  %16 = trunc i64 %12 to i32
  %17 = trunc i64 %10 to i32
  %18 = add nsw i32 %3, -2
  %19 = icmp slt i32 %18, %17
  %20 = add nsw i32 %2, -2
  %21 = icmp slt i32 %20, %16
  %22 = or i1 %19, %21
  br i1 %22, label %57, label %23

; <label>:23:                                     ; preds = %15
  %24 = bitcast double* %0 to [25 x [25 x [5 x double]]]*
  %25 = bitcast double* %1 to [25 x [25 x [5 x double]]]*
  %26 = shl i64 %7, 32
  %27 = ashr exact i64 %26, 32
  %28 = shl i64 %10, 32
  %29 = ashr exact i64 %28, 32
  %30 = shl i64 %12, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %24, i64 %27, i64 %29, i64 %31, i64 0
  %33 = load double, double* %32, align 8, !tbaa !8
  %34 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %25, i64 %27, i64 %29, i64 %31, i64 0
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = fadd double %33, %35
  store double %36, double* %32, align 8, !tbaa !8
  %37 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %24, i64 %27, i64 %29, i64 %31, i64 1
  %38 = load double, double* %37, align 8, !tbaa !8
  %39 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %25, i64 %27, i64 %29, i64 %31, i64 1
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = fadd double %38, %40
  store double %41, double* %37, align 8, !tbaa !8
  %42 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %24, i64 %27, i64 %29, i64 %31, i64 2
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %25, i64 %27, i64 %29, i64 %31, i64 2
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = fadd double %43, %45
  store double %46, double* %42, align 8, !tbaa !8
  %47 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %24, i64 %27, i64 %29, i64 %31, i64 3
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %25, i64 %27, i64 %29, i64 %31, i64 3
  %50 = load double, double* %49, align 8, !tbaa !8
  %51 = fadd double %48, %50
  store double %51, double* %47, align 8, !tbaa !8
  %52 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %24, i64 %27, i64 %29, i64 %31, i64 4
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %25, i64 %27, i64 %29, i64 %31, i64 4
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = fadd double %53, %55
  store double %56, double* %52, align 8, !tbaa !8
  br label %57

; <label>:57:                                     ; preds = %23, %5, %15
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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
