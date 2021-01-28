; ModuleID = 'npb-BT-z_solve2.cl'
source_filename = "npb-BT-z_solve2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @z_solve2(double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %6 = add i64 %5, 1
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %2, -2
  %12 = icmp slt i32 %11, %7
  br i1 %12, label %111, label %13

; <label>:13:                                     ; preds = %4
  %14 = add nsw i32 %1, -2
  %15 = icmp slt i32 %14, %10
  br i1 %15, label %111, label %16

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 1
  %20 = add nsw i32 %3, -1
  %21 = select i1 %19, i32 %20, i32 %18
  %22 = add nsw i32 %7, -1
  %23 = mul nsw i32 %22, %14
  %24 = add nsw i32 %10, -1
  %25 = add nsw i32 %24, %23
  %26 = mul i32 %25, 975
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %0, i64 %27
  %29 = bitcast double* %28 to [3 x [5 x [5 x double]]]*
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 0, i64 0
  store double 0.000000e+00, double* %31, align 8, !tbaa !8
  %32 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 0, i64 0
  store double 0.000000e+00, double* %32, align 8, !tbaa !8
  %33 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 0, i64 0
  store double 0.000000e+00, double* %33, align 8, !tbaa !8
  %34 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 0, i64 1
  store double 0.000000e+00, double* %34, align 8, !tbaa !8
  %35 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 0, i64 1
  store double 0.000000e+00, double* %35, align 8, !tbaa !8
  %36 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 0, i64 1
  store double 0.000000e+00, double* %36, align 8, !tbaa !8
  %37 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 0, i64 2
  store double 0.000000e+00, double* %37, align 8, !tbaa !8
  %38 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 0, i64 2
  store double 0.000000e+00, double* %38, align 8, !tbaa !8
  %39 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 0, i64 2
  store double 0.000000e+00, double* %39, align 8, !tbaa !8
  %40 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 0, i64 3
  store double 0.000000e+00, double* %40, align 8, !tbaa !8
  %41 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 0, i64 3
  store double 0.000000e+00, double* %41, align 8, !tbaa !8
  %42 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 0, i64 3
  store double 0.000000e+00, double* %42, align 8, !tbaa !8
  %43 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 0, i64 4
  store double 0.000000e+00, double* %43, align 8, !tbaa !8
  %44 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 0, i64 4
  store double 0.000000e+00, double* %44, align 8, !tbaa !8
  %45 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 0, i64 4
  store double 0.000000e+00, double* %45, align 8, !tbaa !8
  %46 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 0, i64 0
  store double 1.000000e+00, double* %46, align 8, !tbaa !8
  %47 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %47, align 8, !tbaa !8
  %48 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 1, i64 0
  store double 0.000000e+00, double* %48, align 8, !tbaa !8
  %49 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 1, i64 0
  store double 0.000000e+00, double* %49, align 8, !tbaa !8
  %50 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 1, i64 1
  store double 0.000000e+00, double* %50, align 8, !tbaa !8
  %51 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 1, i64 1
  store double 0.000000e+00, double* %51, align 8, !tbaa !8
  %52 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 1, i64 1
  store double 0.000000e+00, double* %52, align 8, !tbaa !8
  %53 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %53, align 8, !tbaa !8
  %54 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 1, i64 2
  store double 0.000000e+00, double* %54, align 8, !tbaa !8
  %55 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 1, i64 2
  store double 0.000000e+00, double* %55, align 8, !tbaa !8
  %56 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %56, align 8, !tbaa !8
  %57 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 1, i64 3
  store double 0.000000e+00, double* %57, align 8, !tbaa !8
  %58 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 1, i64 3
  store double 0.000000e+00, double* %58, align 8, !tbaa !8
  %59 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 1, i64 4
  store double 0.000000e+00, double* %59, align 8, !tbaa !8
  %60 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 1, i64 4
  store double 0.000000e+00, double* %60, align 8, !tbaa !8
  %61 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 1, i64 4
  store double 0.000000e+00, double* %61, align 8, !tbaa !8
  %62 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 1, i64 1
  store double 1.000000e+00, double* %62, align 8, !tbaa !8
  %63 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %63, align 8, !tbaa !8
  %64 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 2, i64 0
  store double 0.000000e+00, double* %64, align 8, !tbaa !8
  %65 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 2, i64 0
  store double 0.000000e+00, double* %65, align 8, !tbaa !8
  %66 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 2, i64 1
  store double 0.000000e+00, double* %67, align 8, !tbaa !8
  %68 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 2, i64 1
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 2, i64 2
  store double 0.000000e+00, double* %69, align 8, !tbaa !8
  %70 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 2, i64 2
  store double 0.000000e+00, double* %70, align 8, !tbaa !8
  %71 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 2, i64 2
  store double 0.000000e+00, double* %71, align 8, !tbaa !8
  %72 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %72, align 8, !tbaa !8
  %73 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 2, i64 3
  store double 0.000000e+00, double* %73, align 8, !tbaa !8
  %74 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 2, i64 3
  store double 0.000000e+00, double* %74, align 8, !tbaa !8
  %75 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 2, i64 4
  store double 0.000000e+00, double* %75, align 8, !tbaa !8
  %76 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 2, i64 4
  store double 0.000000e+00, double* %76, align 8, !tbaa !8
  %77 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 2, i64 4
  store double 0.000000e+00, double* %77, align 8, !tbaa !8
  %78 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 2, i64 2
  store double 1.000000e+00, double* %78, align 8, !tbaa !8
  %79 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %79, align 8, !tbaa !8
  %80 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 3, i64 0
  store double 0.000000e+00, double* %80, align 8, !tbaa !8
  %81 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 3, i64 0
  store double 0.000000e+00, double* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 3, i64 1
  store double 0.000000e+00, double* %83, align 8, !tbaa !8
  %84 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 3, i64 1
  store double 0.000000e+00, double* %84, align 8, !tbaa !8
  %85 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %85, align 8, !tbaa !8
  %86 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 3, i64 2
  store double 0.000000e+00, double* %86, align 8, !tbaa !8
  %87 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 3, i64 2
  store double 0.000000e+00, double* %87, align 8, !tbaa !8
  %88 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 3, i64 3
  store double 0.000000e+00, double* %88, align 8, !tbaa !8
  %89 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 3, i64 3
  store double 0.000000e+00, double* %89, align 8, !tbaa !8
  %90 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 3, i64 3
  store double 0.000000e+00, double* %90, align 8, !tbaa !8
  %91 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 3, i64 4
  store double 0.000000e+00, double* %91, align 8, !tbaa !8
  %92 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 3, i64 4
  store double 0.000000e+00, double* %92, align 8, !tbaa !8
  %93 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 3, i64 4
  store double 0.000000e+00, double* %93, align 8, !tbaa !8
  %94 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 3, i64 3
  store double 1.000000e+00, double* %94, align 8, !tbaa !8
  %95 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %95, align 8, !tbaa !8
  %96 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 4, i64 0
  store double 0.000000e+00, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 4, i64 0
  store double 0.000000e+00, double* %97, align 8, !tbaa !8
  %98 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %98, align 8, !tbaa !8
  %99 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 4, i64 1
  store double 0.000000e+00, double* %99, align 8, !tbaa !8
  %100 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 4, i64 1
  store double 0.000000e+00, double* %100, align 8, !tbaa !8
  %101 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %101, align 8, !tbaa !8
  %102 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 4, i64 2
  store double 0.000000e+00, double* %102, align 8, !tbaa !8
  %103 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 4, i64 2
  store double 0.000000e+00, double* %103, align 8, !tbaa !8
  %104 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %104, align 8, !tbaa !8
  %105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 4, i64 3
  store double 0.000000e+00, double* %105, align 8, !tbaa !8
  %106 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 4, i64 3
  store double 0.000000e+00, double* %106, align 8, !tbaa !8
  %107 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 0, i64 4, i64 4
  store double 0.000000e+00, double* %107, align 8, !tbaa !8
  %108 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 4, i64 4
  store double 0.000000e+00, double* %108, align 8, !tbaa !8
  %109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 2, i64 4, i64 4
  store double 0.000000e+00, double* %109, align 8, !tbaa !8
  %110 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %29, i64 %30, i64 1, i64 4, i64 4
  store double 1.000000e+00, double* %110, align 8, !tbaa !8
  br label %111

; <label>:111:                                    ; preds = %16, %4, %13
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
