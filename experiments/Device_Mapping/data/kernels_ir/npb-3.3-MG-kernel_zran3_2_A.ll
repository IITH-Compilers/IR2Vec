; ModuleID = 'npb-MG-kernel_zran3_2.cl'
source_filename = "npb-MG-kernel_zran3_2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_zran3_2(double* nocapture readonly, double*, i32*, i32*, i32*, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds double, double* %0, i64 %10
  %12 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, %7
  br i1 %14, label %15, label %163

; <label>:15:                                     ; preds = %9
  %16 = bitcast double* %1 to [10 x [2 x double]]*
  %17 = bitcast i32* %2 to [10 x [2 x i32]]*
  %18 = bitcast i32* %3 to [10 x [2 x i32]]*
  %19 = bitcast i32* %4 to [10 x [2 x i32]]*
  %20 = shl i64 %12, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 0, i64 1
  store double 0.000000e+00, double* %22, align 8, !tbaa !8
  %23 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 0, i64 1
  store i32 0, i32* %23, align 4, !tbaa !12
  %24 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 0, i64 1
  store i32 0, i32* %24, align 4, !tbaa !12
  %25 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 0, i64 1
  store i32 0, i32* %25, align 4, !tbaa !12
  %26 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 0, i64 0
  store double 1.000000e+00, double* %26, align 8, !tbaa !8
  %27 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 0, i64 0
  store i32 0, i32* %27, align 4, !tbaa !12
  %28 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 0, i64 0
  store i32 0, i32* %28, align 4, !tbaa !12
  %29 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 0, i64 0
  store i32 0, i32* %29, align 4, !tbaa !12
  %30 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 1, i64 1
  store double 0.000000e+00, double* %30, align 8, !tbaa !8
  %31 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 1, i64 1
  store i32 0, i32* %31, align 4, !tbaa !12
  %32 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 1, i64 1
  store i32 0, i32* %32, align 4, !tbaa !12
  %33 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 1, i64 1
  store i32 0, i32* %33, align 4, !tbaa !12
  %34 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 1, i64 0
  store double 1.000000e+00, double* %34, align 8, !tbaa !8
  %35 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 1, i64 0
  store i32 0, i32* %35, align 4, !tbaa !12
  %36 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 1, i64 0
  store i32 0, i32* %36, align 4, !tbaa !12
  %37 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 1, i64 0
  store i32 0, i32* %37, align 4, !tbaa !12
  %38 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 2, i64 1
  store double 0.000000e+00, double* %38, align 8, !tbaa !8
  %39 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 2, i64 1
  store i32 0, i32* %39, align 4, !tbaa !12
  %40 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 2, i64 1
  store i32 0, i32* %40, align 4, !tbaa !12
  %41 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 2, i64 1
  store i32 0, i32* %41, align 4, !tbaa !12
  %42 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 2, i64 0
  store double 1.000000e+00, double* %42, align 8, !tbaa !8
  %43 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 2, i64 0
  store i32 0, i32* %43, align 4, !tbaa !12
  %44 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 2, i64 0
  store i32 0, i32* %44, align 4, !tbaa !12
  %45 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 2, i64 0
  store i32 0, i32* %45, align 4, !tbaa !12
  %46 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 3, i64 1
  store double 0.000000e+00, double* %46, align 8, !tbaa !8
  %47 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 3, i64 1
  store i32 0, i32* %47, align 4, !tbaa !12
  %48 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 3, i64 1
  store i32 0, i32* %48, align 4, !tbaa !12
  %49 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 3, i64 1
  store i32 0, i32* %49, align 4, !tbaa !12
  %50 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 3, i64 0
  store double 1.000000e+00, double* %50, align 8, !tbaa !8
  %51 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 3, i64 0
  store i32 0, i32* %51, align 4, !tbaa !12
  %52 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 3, i64 0
  store i32 0, i32* %52, align 4, !tbaa !12
  %53 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 3, i64 0
  store i32 0, i32* %53, align 4, !tbaa !12
  %54 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 4, i64 1
  store double 0.000000e+00, double* %54, align 8, !tbaa !8
  %55 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 4, i64 1
  store i32 0, i32* %55, align 4, !tbaa !12
  %56 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 4, i64 1
  store i32 0, i32* %56, align 4, !tbaa !12
  %57 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 4, i64 1
  store i32 0, i32* %57, align 4, !tbaa !12
  %58 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 4, i64 0
  store double 1.000000e+00, double* %58, align 8, !tbaa !8
  %59 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 4, i64 0
  store i32 0, i32* %59, align 4, !tbaa !12
  %60 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 4, i64 0
  store i32 0, i32* %60, align 4, !tbaa !12
  %61 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 4, i64 0
  store i32 0, i32* %61, align 4, !tbaa !12
  %62 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 5, i64 1
  store double 0.000000e+00, double* %62, align 8, !tbaa !8
  %63 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 5, i64 1
  store i32 0, i32* %63, align 4, !tbaa !12
  %64 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 5, i64 1
  store i32 0, i32* %64, align 4, !tbaa !12
  %65 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 5, i64 1
  store i32 0, i32* %65, align 4, !tbaa !12
  %66 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 5, i64 0
  store double 1.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 5, i64 0
  store i32 0, i32* %67, align 4, !tbaa !12
  %68 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 5, i64 0
  store i32 0, i32* %68, align 4, !tbaa !12
  %69 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 5, i64 0
  store i32 0, i32* %69, align 4, !tbaa !12
  %70 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 6, i64 1
  store double 0.000000e+00, double* %70, align 8, !tbaa !8
  %71 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 6, i64 1
  store i32 0, i32* %71, align 4, !tbaa !12
  %72 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 6, i64 1
  store i32 0, i32* %72, align 4, !tbaa !12
  %73 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 6, i64 1
  store i32 0, i32* %73, align 4, !tbaa !12
  %74 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 6, i64 0
  store double 1.000000e+00, double* %74, align 8, !tbaa !8
  %75 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 6, i64 0
  store i32 0, i32* %75, align 4, !tbaa !12
  %76 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 6, i64 0
  store i32 0, i32* %76, align 4, !tbaa !12
  %77 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 6, i64 0
  store i32 0, i32* %77, align 4, !tbaa !12
  %78 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 7, i64 1
  store double 0.000000e+00, double* %78, align 8, !tbaa !8
  %79 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 7, i64 1
  store i32 0, i32* %79, align 4, !tbaa !12
  %80 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 7, i64 1
  store i32 0, i32* %80, align 4, !tbaa !12
  %81 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 7, i64 1
  store i32 0, i32* %81, align 4, !tbaa !12
  %82 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 7, i64 0
  store double 1.000000e+00, double* %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 7, i64 0
  store i32 0, i32* %83, align 4, !tbaa !12
  %84 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 7, i64 0
  store i32 0, i32* %84, align 4, !tbaa !12
  %85 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 7, i64 0
  store i32 0, i32* %85, align 4, !tbaa !12
  %86 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 8, i64 1
  store double 0.000000e+00, double* %86, align 8, !tbaa !8
  %87 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 8, i64 1
  store i32 0, i32* %87, align 4, !tbaa !12
  %88 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 8, i64 1
  store i32 0, i32* %88, align 4, !tbaa !12
  %89 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 8, i64 1
  store i32 0, i32* %89, align 4, !tbaa !12
  %90 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 8, i64 0
  store double 1.000000e+00, double* %90, align 8, !tbaa !8
  %91 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 8, i64 0
  store i32 0, i32* %91, align 4, !tbaa !12
  %92 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 8, i64 0
  store i32 0, i32* %92, align 4, !tbaa !12
  %93 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 8, i64 0
  store i32 0, i32* %93, align 4, !tbaa !12
  %94 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 9, i64 1
  store double 0.000000e+00, double* %94, align 8, !tbaa !8
  %95 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 9, i64 1
  store i32 0, i32* %95, align 4, !tbaa !12
  %96 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 9, i64 1
  store i32 0, i32* %96, align 4, !tbaa !12
  %97 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 9, i64 1
  store i32 0, i32* %97, align 4, !tbaa !12
  %98 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21, i64 9, i64 0
  store double 1.000000e+00, double* %98, align 8, !tbaa !8
  %99 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 9, i64 0
  store i32 0, i32* %99, align 4, !tbaa !12
  %100 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 9, i64 0
  store i32 0, i32* %100, align 4, !tbaa !12
  %101 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 9, i64 0
  store i32 0, i32* %101, align 4, !tbaa !12
  %102 = add nsw i32 %13, 1
  %103 = icmp sgt i32 %6, 2
  br i1 %103, label %104, label %163

; <label>:104:                                    ; preds = %15
  %105 = add nsw i32 %6, -1
  %106 = add nsw i32 %5, -1
  %107 = icmp sgt i32 %5, 2
  %108 = icmp sgt i32 %13, -1
  %109 = add nsw i32 %7, -1
  %110 = icmp slt i32 %102, %109
  %111 = and i1 %108, %110
  %112 = mul i32 %6, %5
  %113 = mul i32 %112, %102
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %11, i64 %114
  %116 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %16, i64 %21
  %117 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %116, i64 0, i64 0
  %118 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21, i64 0
  %119 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21, i64 0
  %120 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21, i64 0
  %121 = getelementptr inbounds [10 x [2 x double]], [10 x [2 x double]]* %116, i64 0, i64 0, i64 0
  %122 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %17, i64 %21
  %123 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %122, i64 0, i64 0, i64 0
  %124 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %18, i64 %21
  %125 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %124, i64 0, i64 0, i64 0
  %126 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %19, i64 %21
  %127 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %126, i64 0, i64 0, i64 0
  %128 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %122, i64 0, i64 0
  %129 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %124, i64 0, i64 0
  %130 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %126, i64 0, i64 0
  %131 = sext i32 %5 to i64
  %132 = zext i32 %106 to i64
  %133 = zext i32 %105 to i64
  br label %134

; <label>:134:                                    ; preds = %160, %104
  %135 = phi i64 [ 1, %104 ], [ %161, %160 ]
  br i1 %107, label %136, label %160

; <label>:136:                                    ; preds = %134
  %137 = mul nsw i64 %135, %131
  %138 = trunc i64 %135 to i32
  %139 = trunc i64 %135 to i32
  br label %140

; <label>:140:                                    ; preds = %157, %136
  %141 = phi i64 [ 1, %136 ], [ %158, %157 ]
  br i1 %111, label %142, label %157

; <label>:142:                                    ; preds = %140
  %143 = add nsw i64 %141, %137
  %144 = getelementptr inbounds double, double* %115, i64 %143
  %145 = load double, double* %144, align 8, !tbaa !8
  %146 = load double, double* %22, align 8, !tbaa !8
  %147 = fcmp ogt double %145, %146
  br i1 %147, label %148, label %151

; <label>:148:                                    ; preds = %142
  store double %145, double* %22, align 8, !tbaa !8
  %149 = trunc i64 %141 to i32
  store i32 %149, i32* %23, align 4, !tbaa !12
  store i32 %138, i32* %24, align 4, !tbaa !12
  store i32 %102, i32* %25, align 4, !tbaa !12
  tail call void @bubble([2 x double]* nonnull %117, [2 x i32]* %118, [2 x i32]* %119, [2 x i32]* %120, i32 10, i32 1) #4
  %150 = load double, double* %144, align 8, !tbaa !8
  br label %151

; <label>:151:                                    ; preds = %148, %142
  %152 = phi double [ %150, %148 ], [ %145, %142 ]
  %153 = load double, double* %121, align 8, !tbaa !8
  %154 = fcmp olt double %152, %153
  br i1 %154, label %155, label %157

; <label>:155:                                    ; preds = %151
  store double %152, double* %121, align 8, !tbaa !8
  %156 = trunc i64 %141 to i32
  store i32 %156, i32* %123, align 4, !tbaa !12
  store i32 %139, i32* %125, align 4, !tbaa !12
  store i32 %102, i32* %127, align 4, !tbaa !12
  tail call void @bubble([2 x double]* nonnull %117, [2 x i32]* %128, [2 x i32]* %129, [2 x i32]* %130, i32 10, i32 0) #4
  br label %157

; <label>:157:                                    ; preds = %151, %155, %140
  %158 = add nuw nsw i64 %141, 1
  %159 = icmp eq i64 %158, %132
  br i1 %159, label %160, label %140

; <label>:160:                                    ; preds = %157, %134
  %161 = add nuw nsw i64 %135, 1
  %162 = icmp eq i64 %161, %133
  br i1 %162, label %163, label %134

; <label>:163:                                    ; preds = %160, %15, %9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

declare void @bubble([2 x double]*, [2 x i32]*, [2 x i32]*, [2 x i32]*, i32, i32) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
