; ModuleID = 'npb-SP-initialize1.cl'
source_filename = "npb-SP-initialize1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @initialize1(double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = icmp slt i32 %6, %3
  %9 = trunc i64 %7 to i32
  %10 = icmp slt i32 %9, %2
  %11 = and i1 %8, %10
  br i1 %11, label %12, label %48

; <label>:12:                                     ; preds = %4
  %13 = bitcast double* %0 to [65 x [65 x [5 x double]]]*
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %48

; <label>:15:                                     ; preds = %12
  %16 = shl i64 %5, 32
  %17 = ashr exact i64 %16, 32
  %18 = shl i64 %7, 32
  %19 = ashr exact i64 %18, 32
  %20 = zext i32 %1 to i64
  %21 = and i64 %20, 1
  %22 = icmp eq i32 %1, 1
  br i1 %22, label %40, label %23

; <label>:23:                                     ; preds = %15
  %24 = sub nsw i64 %20, %21
  br label %25

; <label>:25:                                     ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %37, %25 ]
  %27 = phi i64 [ %24, %23 ], [ %38, %25 ]
  %28 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %26, i64 0
  store double 1.000000e+00, double* %28, align 8, !tbaa !8
  %29 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %26, i64 1
  %30 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %26, i64 4
  %31 = bitcast double* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 24, i32 8, i1 false)
  store double 1.000000e+00, double* %30, align 8, !tbaa !8
  %32 = or i64 %26, 1
  %33 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %32, i64 0
  store double 1.000000e+00, double* %33, align 8, !tbaa !8
  %34 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %32, i64 1
  %35 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %32, i64 4
  %36 = bitcast double* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 24, i32 8, i1 false)
  store double 1.000000e+00, double* %35, align 8, !tbaa !8
  %37 = add nsw i64 %26, 2
  %38 = add i64 %27, -2
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %25

; <label>:40:                                     ; preds = %25, %15
  %41 = phi i64 [ 0, %15 ], [ %37, %25 ]
  %42 = icmp eq i64 %21, 0
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %41, i64 0
  store double 1.000000e+00, double* %44, align 8, !tbaa !8
  %45 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %41, i64 1
  %46 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %13, i64 %17, i64 %19, i64 %41, i64 4
  %47 = bitcast double* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 24, i32 8, i1 false)
  store double 1.000000e+00, double* %46, align 8, !tbaa !8
  br label %48

; <label>:48:                                     ; preds = %43, %40, %12, %4
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }

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
