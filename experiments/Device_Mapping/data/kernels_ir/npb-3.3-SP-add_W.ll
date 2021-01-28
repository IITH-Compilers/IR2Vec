; ModuleID = 'npb-SP-add.cl'
source_filename = "npb-SP-add.cl"
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
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %8, %4
  %15 = trunc i64 %10 to i32
  %16 = icmp sgt i32 %15, %3
  %17 = or i1 %14, %16
  %18 = icmp sgt i32 %13, %2
  %19 = or i1 %17, %18
  br i1 %19, label %54, label %20

; <label>:20:                                     ; preds = %5
  %21 = bitcast double* %0 to [37 x [37 x [5 x double]]]*
  %22 = bitcast double* %1 to [37 x [37 x [5 x double]]]*
  %23 = shl i64 %7, 32
  %24 = ashr exact i64 %23, 32
  %25 = shl i64 %10, 32
  %26 = ashr exact i64 %25, 32
  %27 = shl i64 %12, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %21, i64 %24, i64 %26, i64 %28, i64 0
  %30 = load double, double* %29, align 8, !tbaa !8
  %31 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %22, i64 %24, i64 %26, i64 %28, i64 0
  %32 = load double, double* %31, align 8, !tbaa !8
  %33 = fadd double %30, %32
  store double %33, double* %29, align 8, !tbaa !8
  %34 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %21, i64 %24, i64 %26, i64 %28, i64 1
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %22, i64 %24, i64 %26, i64 %28, i64 1
  %37 = load double, double* %36, align 8, !tbaa !8
  %38 = fadd double %35, %37
  store double %38, double* %34, align 8, !tbaa !8
  %39 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %21, i64 %24, i64 %26, i64 %28, i64 2
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %22, i64 %24, i64 %26, i64 %28, i64 2
  %42 = load double, double* %41, align 8, !tbaa !8
  %43 = fadd double %40, %42
  store double %43, double* %39, align 8, !tbaa !8
  %44 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %21, i64 %24, i64 %26, i64 %28, i64 3
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %22, i64 %24, i64 %26, i64 %28, i64 3
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = fadd double %45, %47
  store double %48, double* %44, align 8, !tbaa !8
  %49 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %21, i64 %24, i64 %26, i64 %28, i64 4
  %50 = load double, double* %49, align 8, !tbaa !8
  %51 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %22, i64 %24, i64 %26, i64 %28, i64 4
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = fadd double %50, %52
  store double %53, double* %49, align 8, !tbaa !8
  br label %54

; <label>:54:                                     ; preds = %20, %5
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
