; ModuleID = 'npb-LU-ssor2.cl'
source_filename = "npb-LU-ssor2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ssor2(double* nocapture, double, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %7 = add i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %10 = add i64 %9, 1
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %12 = add i64 %11, 1
  %13 = add nsw i32 %4, -1
  %14 = icmp sgt i32 %13, %8
  br i1 %14, label %15, label %46

; <label>:15:                                     ; preds = %5
  %16 = trunc i64 %12 to i32
  %17 = trunc i64 %10 to i32
  %18 = add nsw i32 %3, -1
  %19 = icmp sgt i32 %18, %17
  %20 = add nsw i32 %2, -1
  %21 = icmp sgt i32 %20, %16
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %46

; <label>:23:                                     ; preds = %15
  %24 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %25 = shl i64 %7, 32
  %26 = ashr exact i64 %25, 32
  %27 = shl i64 %10, 32
  %28 = ashr exact i64 %27, 32
  %29 = shl i64 %12, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %26, i64 %28, i64 %30, i64 0
  %32 = load double, double* %31, align 8, !tbaa !8
  %33 = fmul double %32, %1
  store double %33, double* %31, align 8, !tbaa !8
  %34 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %26, i64 %28, i64 %30, i64 1
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = fmul double %35, %1
  store double %36, double* %34, align 8, !tbaa !8
  %37 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %26, i64 %28, i64 %30, i64 2
  %38 = load double, double* %37, align 8, !tbaa !8
  %39 = fmul double %38, %1
  store double %39, double* %37, align 8, !tbaa !8
  %40 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %26, i64 %28, i64 %30, i64 3
  %41 = load double, double* %40, align 8, !tbaa !8
  %42 = fmul double %41, %1
  store double %42, double* %40, align 8, !tbaa !8
  %43 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %24, i64 %26, i64 %28, i64 %30, i64 4
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = fmul double %44, %1
  store double %45, double* %43, align 8, !tbaa !8
  br label %46

; <label>:46:                                     ; preds = %23, %5, %15
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
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
