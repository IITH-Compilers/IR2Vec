; ModuleID = 'npb-BT-compute_rhs2_W.cl'
source_filename = "npb-BT-compute_rhs2_W.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_rhs2(double* nocapture readonly, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %7, %4
  %12 = trunc i64 %8 to i32
  %13 = icmp slt i32 %12, %3
  %14 = and i1 %11, %13
  %15 = icmp slt i32 %10, %2
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %51

; <label>:17:                                     ; preds = %5
  %18 = bitcast double* %0 to [25 x [25 x [5 x double]]]*
  %19 = bitcast double* %1 to [25 x [25 x [5 x double]]]*
  %20 = shl i64 %6, 32
  %21 = ashr exact i64 %20, 32
  %22 = shl i64 %8, 32
  %23 = ashr exact i64 %22, 32
  %24 = shl i64 %9, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %18, i64 %21, i64 %23, i64 %25, i64 0
  %27 = bitcast double* %26 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !8
  %29 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %21, i64 %23, i64 %25, i64 0
  %30 = bitcast double* %29 to i64*
  store i64 %28, i64* %30, align 8, !tbaa !8
  %31 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %18, i64 %21, i64 %23, i64 %25, i64 1
  %32 = bitcast double* %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !8
  %34 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %21, i64 %23, i64 %25, i64 1
  %35 = bitcast double* %34 to i64*
  store i64 %33, i64* %35, align 8, !tbaa !8
  %36 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %18, i64 %21, i64 %23, i64 %25, i64 2
  %37 = bitcast double* %36 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !8
  %39 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %21, i64 %23, i64 %25, i64 2
  %40 = bitcast double* %39 to i64*
  store i64 %38, i64* %40, align 8, !tbaa !8
  %41 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %18, i64 %21, i64 %23, i64 %25, i64 3
  %42 = bitcast double* %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !8
  %44 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %21, i64 %23, i64 %25, i64 3
  %45 = bitcast double* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !8
  %46 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %18, i64 %21, i64 %23, i64 %25, i64 4
  %47 = bitcast double* %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !8
  %49 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %21, i64 %23, i64 %25, i64 4
  %50 = bitcast double* %49 to i64*
  store i64 %48, i64* %50, align 8, !tbaa !8
  br label %51

; <label>:51:                                     ; preds = %17, %5
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
!7 = !{!"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
