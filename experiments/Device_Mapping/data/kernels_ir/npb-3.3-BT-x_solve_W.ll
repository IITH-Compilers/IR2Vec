; ModuleID = 'npb-BT-x_solve.cl'
source_filename = "npb-BT-x_solve.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @x_solve(double*, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca [5 x [5 x double]], align 16
  %7 = alloca [5 x [5 x double]], align 16
  %8 = alloca [5 x [5 x double]], align 16
  %9 = alloca [5 x double], align 16
  %10 = alloca [5 x [5 x double]], align 16
  %11 = alloca [5 x double], align 16
  %12 = bitcast [5 x double]* %11 to i8*
  %13 = bitcast [5 x [5 x double]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %13) #5
  %14 = bitcast [5 x [5 x double]]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %14) #5
  %15 = bitcast [5 x [5 x double]]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %15) #5
  %16 = bitcast [5 x double]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #5
  %17 = bitcast [5 x [5 x double]]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %17) #5
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #5
  %18 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %19 = add i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %4, -2
  %25 = icmp slt i32 %24, %20
  br i1 %25, label %204, label %26

; <label>:26:                                     ; preds = %5
  %27 = add nsw i32 %3, -2
  %28 = icmp slt i32 %27, %23
  br i1 %28, label %204, label %29

; <label>:29:                                     ; preds = %26
  %30 = bitcast double* %0 to [25 x [25 x [5 x double]]]*
  %31 = add nsw i32 %20, -1
  %32 = mul nsw i32 %31, %27
  %33 = add nsw i32 %23, -1
  %34 = add nsw i32 %33, %32
  %35 = mul i32 %34, 1875
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %1, i64 %36
  %38 = bitcast double* %37 to [3 x [5 x [5 x double]]]*
  %39 = add i32 %2, -1
  %40 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 0, i64 0
  %41 = getelementptr inbounds double, double* %37, i64 25
  %42 = bitcast double* %41 to [5 x double]*
  call void @load_matrix([5 x double]* nonnull %40, [5 x double]* %42) #5
  %43 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %8, i64 0, i64 0
  %44 = getelementptr inbounds double, double* %37, i64 50
  %45 = bitcast double* %44 to [5 x double]*
  call void @load_matrix([5 x double]* nonnull %43, [5 x double]* %45) #5
  %46 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 0
  %47 = shl i64 %19, 32
  %48 = ashr exact i64 %47, 32
  %49 = shl i64 %22, 32
  %50 = ashr exact i64 %49, 32
  %51 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 0, i64 0
  call void @load_vector(double* nonnull %46, double* %51) #5
  call void @p_binvcrhs([5 x double]* nonnull %40, [5 x double]* nonnull %43, double* nonnull %46) #5
  call void @save_matrix([5 x double]* %42, [5 x double]* nonnull %40) #5
  call void @save_matrix([5 x double]* %45, [5 x double]* nonnull %43) #5
  call void @save_vector(double* %51, double* nonnull %46) #5
  %52 = add nsw i32 %2, -2
  %53 = icmp slt i32 %2, 3
  %54 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %10, i64 0, i64 0
  call void @copy_matrix([5 x double]* nonnull %54, [5 x double]* nonnull %43) #5
  %55 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 0
  call void @copy_vector(double* nonnull %55, double* nonnull %46) #5
  %56 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 0, i64 0
  br i1 %53, label %67, label %57

; <label>:57:                                     ; preds = %29
  %58 = zext i32 %39 to i64
  br label %59

; <label>:59:                                     ; preds = %59, %57
  %60 = phi i64 [ %65, %59 ], [ 1, %57 ]
  %61 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %60, i64 0, i64 0
  call void @load_matrix([5 x double]* nonnull %56, [5 x double]* %61) #5
  %62 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %60, i64 1, i64 0
  call void @load_matrix([5 x double]* nonnull %40, [5 x double]* %62) #5
  %63 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %60, i64 2, i64 0
  call void @load_matrix([5 x double]* nonnull %43, [5 x double]* %63) #5
  %64 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %60, i64 0
  call void @load_vector(double* nonnull %46, double* %64) #5
  call void @p_matvec_sub([5 x double]* nonnull %56, double* nonnull %55, double* nonnull %46) #5
  call void @p_matmul_sub([5 x double]* nonnull %56, [5 x double]* nonnull %54, [5 x double]* nonnull %40) #5
  call void @p_binvcrhs([5 x double]* nonnull %40, [5 x double]* nonnull %43, double* nonnull %46) #5
  call void @save_matrix([5 x double]* %62, [5 x double]* nonnull %40) #5
  call void @save_matrix([5 x double]* %63, [5 x double]* nonnull %43) #5
  call void @save_vector(double* %64, double* nonnull %46) #5
  %65 = add nuw nsw i64 %60, 1
  call void @copy_matrix([5 x double]* nonnull %54, [5 x double]* nonnull %43) #5
  call void @copy_vector(double* nonnull %55, double* nonnull %46) #5
  %66 = icmp eq i64 %65, %58
  br i1 %66, label %67, label %59

; <label>:67:                                     ; preds = %59, %29
  %68 = sext i32 %39 to i64
  %69 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %68, i64 0, i64 0
  call void @load_matrix([5 x double]* nonnull %56, [5 x double]* %69) #5
  %70 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %68, i64 1, i64 0
  call void @load_matrix([5 x double]* nonnull %40, [5 x double]* %70) #5
  %71 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %68, i64 2, i64 0
  call void @load_matrix([5 x double]* nonnull %43, [5 x double]* %71) #5
  %72 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %68, i64 0
  call void @load_vector(double* nonnull %46, double* %72) #5
  call void @p_matvec_sub([5 x double]* nonnull %56, double* nonnull %55, double* nonnull %46) #5
  call void @p_matmul_sub([5 x double]* nonnull %56, [5 x double]* nonnull %54, [5 x double]* nonnull %40) #5
  call void @p_binvrhs([5 x double]* nonnull %40, double* nonnull %46) #5
  call void @save_matrix([5 x double]* %70, [5 x double]* nonnull %40) #5
  call void @save_matrix([5 x double]* %71, [5 x double]* nonnull %43) #5
  call void @save_vector(double* %72, double* nonnull %46) #5
  %73 = icmp sgt i32 %2, 1
  br i1 %73, label %74, label %204

; <label>:74:                                     ; preds = %67
  %75 = sext i32 %52 to i64
  %76 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 1
  %77 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 2
  %78 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 3
  %79 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 4
  %80 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 0
  %81 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 1
  %82 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 2
  %83 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 3
  %84 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 4
  br label %85

; <label>:85:                                     ; preds = %74, %85
  %86 = phi i64 [ %75, %74 ], [ %202, %85 ]
  %87 = load double, double* %46, align 16, !tbaa !8
  %88 = load double, double* %76, align 8, !tbaa !8
  %89 = load double, double* %77, align 16, !tbaa !8
  %90 = load double, double* %78, align 8, !tbaa !8
  %91 = load double, double* %79, align 16, !tbaa !8
  %92 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %86, i64 0
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 0, i64 0
  %95 = load double, double* %94, align 8, !tbaa !8
  %96 = fsub double -0.000000e+00, %95
  %97 = call double @llvm.fmuladd.f64(double %96, double %87, double %93)
  %98 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 1, i64 0
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = fsub double -0.000000e+00, %99
  %101 = call double @llvm.fmuladd.f64(double %100, double %88, double %97)
  %102 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 2, i64 0
  %103 = load double, double* %102, align 8, !tbaa !8
  %104 = fsub double -0.000000e+00, %103
  %105 = call double @llvm.fmuladd.f64(double %104, double %89, double %101)
  %106 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 3, i64 0
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = fsub double -0.000000e+00, %107
  %109 = call double @llvm.fmuladd.f64(double %108, double %90, double %105)
  %110 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 4, i64 0
  %111 = load double, double* %110, align 8, !tbaa !8
  %112 = fsub double -0.000000e+00, %111
  %113 = call double @llvm.fmuladd.f64(double %112, double %91, double %109)
  store double %113, double* %80, align 16, !tbaa !8
  store double %113, double* %92, align 8, !tbaa !8
  %114 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %86, i64 1
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 0, i64 1
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fsub double -0.000000e+00, %117
  %119 = call double @llvm.fmuladd.f64(double %118, double %87, double %115)
  %120 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 1, i64 1
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = fsub double -0.000000e+00, %121
  %123 = call double @llvm.fmuladd.f64(double %122, double %88, double %119)
  %124 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 2, i64 1
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = fsub double -0.000000e+00, %125
  %127 = call double @llvm.fmuladd.f64(double %126, double %89, double %123)
  %128 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 3, i64 1
  %129 = load double, double* %128, align 8, !tbaa !8
  %130 = fsub double -0.000000e+00, %129
  %131 = call double @llvm.fmuladd.f64(double %130, double %90, double %127)
  %132 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 4, i64 1
  %133 = load double, double* %132, align 8, !tbaa !8
  %134 = fsub double -0.000000e+00, %133
  %135 = call double @llvm.fmuladd.f64(double %134, double %91, double %131)
  store double %135, double* %81, align 8, !tbaa !8
  store double %135, double* %114, align 8, !tbaa !8
  %136 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %86, i64 2
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 0, i64 2
  %139 = load double, double* %138, align 8, !tbaa !8
  %140 = fsub double -0.000000e+00, %139
  %141 = call double @llvm.fmuladd.f64(double %140, double %87, double %137)
  %142 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 1, i64 2
  %143 = load double, double* %142, align 8, !tbaa !8
  %144 = fsub double -0.000000e+00, %143
  %145 = call double @llvm.fmuladd.f64(double %144, double %88, double %141)
  %146 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 2, i64 2
  %147 = load double, double* %146, align 8, !tbaa !8
  %148 = fsub double -0.000000e+00, %147
  %149 = call double @llvm.fmuladd.f64(double %148, double %89, double %145)
  %150 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 3, i64 2
  %151 = load double, double* %150, align 8, !tbaa !8
  %152 = fsub double -0.000000e+00, %151
  %153 = call double @llvm.fmuladd.f64(double %152, double %90, double %149)
  %154 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 4, i64 2
  %155 = load double, double* %154, align 8, !tbaa !8
  %156 = fsub double -0.000000e+00, %155
  %157 = call double @llvm.fmuladd.f64(double %156, double %91, double %153)
  store double %157, double* %82, align 16, !tbaa !8
  store double %157, double* %136, align 8, !tbaa !8
  %158 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %86, i64 3
  %159 = load double, double* %158, align 8, !tbaa !8
  %160 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 0, i64 3
  %161 = load double, double* %160, align 8, !tbaa !8
  %162 = fsub double -0.000000e+00, %161
  %163 = call double @llvm.fmuladd.f64(double %162, double %87, double %159)
  %164 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 1, i64 3
  %165 = load double, double* %164, align 8, !tbaa !8
  %166 = fsub double -0.000000e+00, %165
  %167 = call double @llvm.fmuladd.f64(double %166, double %88, double %163)
  %168 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 2, i64 3
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = fsub double -0.000000e+00, %169
  %171 = call double @llvm.fmuladd.f64(double %170, double %89, double %167)
  %172 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 3, i64 3
  %173 = load double, double* %172, align 8, !tbaa !8
  %174 = fsub double -0.000000e+00, %173
  %175 = call double @llvm.fmuladd.f64(double %174, double %90, double %171)
  %176 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 4, i64 3
  %177 = load double, double* %176, align 8, !tbaa !8
  %178 = fsub double -0.000000e+00, %177
  %179 = call double @llvm.fmuladd.f64(double %178, double %91, double %175)
  store double %179, double* %83, align 8, !tbaa !8
  store double %179, double* %158, align 8, !tbaa !8
  %180 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %30, i64 %48, i64 %50, i64 %86, i64 4
  %181 = load double, double* %180, align 8, !tbaa !8
  %182 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 0, i64 4
  %183 = load double, double* %182, align 8, !tbaa !8
  %184 = fsub double -0.000000e+00, %183
  %185 = call double @llvm.fmuladd.f64(double %184, double %87, double %181)
  %186 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 1, i64 4
  %187 = load double, double* %186, align 8, !tbaa !8
  %188 = fsub double -0.000000e+00, %187
  %189 = call double @llvm.fmuladd.f64(double %188, double %88, double %185)
  %190 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 2, i64 4
  %191 = load double, double* %190, align 8, !tbaa !8
  %192 = fsub double -0.000000e+00, %191
  %193 = call double @llvm.fmuladd.f64(double %192, double %89, double %189)
  %194 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 3, i64 4
  %195 = load double, double* %194, align 8, !tbaa !8
  %196 = fsub double -0.000000e+00, %195
  %197 = call double @llvm.fmuladd.f64(double %196, double %90, double %193)
  %198 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %86, i64 2, i64 4, i64 4
  %199 = load double, double* %198, align 8, !tbaa !8
  %200 = fsub double -0.000000e+00, %199
  %201 = call double @llvm.fmuladd.f64(double %200, double %91, double %197)
  store double %201, double* %84, align 16, !tbaa !8
  store double %201, double* %180, align 8, !tbaa !8
  call void @copy_vector(double* nonnull %46, double* nonnull %55) #5
  %202 = add nsw i64 %86, -1
  %203 = icmp sgt i64 %86, 0
  br i1 %203, label %85, label %204

; <label>:204:                                    ; preds = %85, %67, %5, %26
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %17) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #5
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %15) #5
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %14) #5
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %13) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @load_matrix([5 x double]*, [5 x double]*) local_unnamed_addr #3

declare void @load_vector(double*, double*) local_unnamed_addr #3

declare void @p_binvcrhs([5 x double]*, [5 x double]*, double*) local_unnamed_addr #3

declare void @save_matrix([5 x double]*, [5 x double]*) local_unnamed_addr #3

declare void @save_vector(double*, double*) local_unnamed_addr #3

declare void @copy_matrix([5 x double]*, [5 x double]*) local_unnamed_addr #3

declare void @copy_vector(double*, double*) local_unnamed_addr #3

declare void @p_matvec_sub([5 x double]*, double*, double*) local_unnamed_addr #3

declare void @p_matmul_sub([5 x double]*, [5 x double]*, [5 x double]*) local_unnamed_addr #3

declare void @p_binvrhs([5 x double]*, double*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
