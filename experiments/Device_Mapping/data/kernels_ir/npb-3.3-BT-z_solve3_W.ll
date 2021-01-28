; ModuleID = 'npb-BT-z_solve3.cl'
source_filename = "npb-BT-z_solve3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @z_solve3(double* readonly, double* readonly, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %8 = add i64 %7, 1
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %14 = add i64 %13, 1
  %15 = add nsw i32 %4, -2
  %16 = icmp slt i32 %15, %9
  br i1 %16, label %560, label %17

; <label>:17:                                     ; preds = %6
  %18 = trunc i64 %14 to i32
  %19 = add nsw i32 %3, -2
  %20 = icmp slt i32 %19, %12
  %21 = add nsw i32 %5, -2
  %22 = icmp slt i32 %21, %18
  %23 = or i1 %20, %22
  br i1 %23, label %560, label %24

; <label>:24:                                     ; preds = %17
  %25 = add nsw i32 %9, -1
  %26 = mul nsw i32 %25, %19
  %27 = add nsw i32 %12, -1
  %28 = add nsw i32 %27, %26
  %29 = mul i32 %28, 625
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %0, i64 %30
  %32 = bitcast double* %31 to [5 x [5 x double]]*
  %33 = getelementptr inbounds double, double* %1, i64 %30
  %34 = bitcast double* %33 to [5 x [5 x double]]*
  %35 = mul i32 %28, 1875
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %2, i64 %36
  %38 = bitcast double* %37 to [3 x [5 x [5 x double]]]*
  %39 = shl i64 %14, 32
  %40 = add i64 %39, -4294967296
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 0, i64 0
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 0, i64 0
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = fmul double %45, 4.232000e-01
  %47 = fsub double -0.000000e+00, %46
  %48 = tail call double @llvm.fmuladd.f64(double %43, double 0xBF82D77318FC5048, double %47)
  %49 = fadd double %48, -4.232000e-01
  %50 = ashr exact i64 %39, 32
  %51 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 0, i64 0
  store double %49, double* %51, align 8, !tbaa !8
  %52 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 1, i64 0
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 1, i64 0
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = fmul double %55, 4.232000e-01
  %57 = fsub double -0.000000e+00, %56
  %58 = tail call double @llvm.fmuladd.f64(double %53, double 0xBF82D77318FC5048, double %57)
  %59 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 1, i64 0
  store double %58, double* %59, align 8, !tbaa !8
  %60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 2, i64 0
  %61 = load double, double* %60, align 8, !tbaa !8
  %62 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 2, i64 0
  %63 = load double, double* %62, align 8, !tbaa !8
  %64 = fmul double %63, 4.232000e-01
  %65 = fsub double -0.000000e+00, %64
  %66 = tail call double @llvm.fmuladd.f64(double %61, double 0xBF82D77318FC5048, double %65)
  %67 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 2, i64 0
  store double %66, double* %67, align 8, !tbaa !8
  %68 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 3, i64 0
  %69 = load double, double* %68, align 8, !tbaa !8
  %70 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 3, i64 0
  %71 = load double, double* %70, align 8, !tbaa !8
  %72 = fmul double %71, 4.232000e-01
  %73 = fsub double -0.000000e+00, %72
  %74 = tail call double @llvm.fmuladd.f64(double %69, double 0xBF82D77318FC5048, double %73)
  %75 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 3, i64 0
  store double %74, double* %75, align 8, !tbaa !8
  %76 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 4, i64 0
  %77 = load double, double* %76, align 8, !tbaa !8
  %78 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 4, i64 0
  %79 = load double, double* %78, align 8, !tbaa !8
  %80 = fmul double %79, 4.232000e-01
  %81 = fsub double -0.000000e+00, %80
  %82 = tail call double @llvm.fmuladd.f64(double %77, double 0xBF82D77318FC5048, double %81)
  %83 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 4, i64 0
  store double %82, double* %83, align 8, !tbaa !8
  %84 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 0, i64 1
  %85 = load double, double* %84, align 8, !tbaa !8
  %86 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 0, i64 1
  %87 = load double, double* %86, align 8, !tbaa !8
  %88 = fmul double %87, 4.232000e-01
  %89 = fsub double -0.000000e+00, %88
  %90 = tail call double @llvm.fmuladd.f64(double %85, double 0xBF82D77318FC5048, double %89)
  %91 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 0, i64 1
  store double %90, double* %91, align 8, !tbaa !8
  %92 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 1, i64 1
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 1, i64 1
  %95 = load double, double* %94, align 8, !tbaa !8
  %96 = fmul double %95, 4.232000e-01
  %97 = fsub double -0.000000e+00, %96
  %98 = tail call double @llvm.fmuladd.f64(double %93, double 0xBF82D77318FC5048, double %97)
  %99 = fadd double %98, -4.232000e-01
  %100 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 1, i64 1
  store double %99, double* %100, align 8, !tbaa !8
  %101 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 2, i64 1
  %102 = load double, double* %101, align 8, !tbaa !8
  %103 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 2, i64 1
  %104 = load double, double* %103, align 8, !tbaa !8
  %105 = fmul double %104, 4.232000e-01
  %106 = fsub double -0.000000e+00, %105
  %107 = tail call double @llvm.fmuladd.f64(double %102, double 0xBF82D77318FC5048, double %106)
  %108 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 2, i64 1
  store double %107, double* %108, align 8, !tbaa !8
  %109 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 3, i64 1
  %110 = load double, double* %109, align 8, !tbaa !8
  %111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 3, i64 1
  %112 = load double, double* %111, align 8, !tbaa !8
  %113 = fmul double %112, 4.232000e-01
  %114 = fsub double -0.000000e+00, %113
  %115 = tail call double @llvm.fmuladd.f64(double %110, double 0xBF82D77318FC5048, double %114)
  %116 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 3, i64 1
  store double %115, double* %116, align 8, !tbaa !8
  %117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 4, i64 1
  %118 = load double, double* %117, align 8, !tbaa !8
  %119 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 4, i64 1
  %120 = load double, double* %119, align 8, !tbaa !8
  %121 = fmul double %120, 4.232000e-01
  %122 = fsub double -0.000000e+00, %121
  %123 = tail call double @llvm.fmuladd.f64(double %118, double 0xBF82D77318FC5048, double %122)
  %124 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 4, i64 1
  store double %123, double* %124, align 8, !tbaa !8
  %125 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 0, i64 2
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 0, i64 2
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = fmul double %128, 4.232000e-01
  %130 = fsub double -0.000000e+00, %129
  %131 = tail call double @llvm.fmuladd.f64(double %126, double 0xBF82D77318FC5048, double %130)
  %132 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 0, i64 2
  store double %131, double* %132, align 8, !tbaa !8
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 1, i64 2
  %134 = load double, double* %133, align 8, !tbaa !8
  %135 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 1, i64 2
  %136 = load double, double* %135, align 8, !tbaa !8
  %137 = fmul double %136, 4.232000e-01
  %138 = fsub double -0.000000e+00, %137
  %139 = tail call double @llvm.fmuladd.f64(double %134, double 0xBF82D77318FC5048, double %138)
  %140 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 1, i64 2
  store double %139, double* %140, align 8, !tbaa !8
  %141 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 2, i64 2
  %142 = load double, double* %141, align 8, !tbaa !8
  %143 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 2, i64 2
  %144 = load double, double* %143, align 8, !tbaa !8
  %145 = fmul double %144, 4.232000e-01
  %146 = fsub double -0.000000e+00, %145
  %147 = tail call double @llvm.fmuladd.f64(double %142, double 0xBF82D77318FC5048, double %146)
  %148 = fadd double %147, -4.232000e-01
  %149 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 2, i64 2
  store double %148, double* %149, align 8, !tbaa !8
  %150 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 3, i64 2
  %151 = load double, double* %150, align 8, !tbaa !8
  %152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 3, i64 2
  %153 = load double, double* %152, align 8, !tbaa !8
  %154 = fmul double %153, 4.232000e-01
  %155 = fsub double -0.000000e+00, %154
  %156 = tail call double @llvm.fmuladd.f64(double %151, double 0xBF82D77318FC5048, double %155)
  %157 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 3, i64 2
  store double %156, double* %157, align 8, !tbaa !8
  %158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 4, i64 2
  %159 = load double, double* %158, align 8, !tbaa !8
  %160 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 4, i64 2
  %161 = load double, double* %160, align 8, !tbaa !8
  %162 = fmul double %161, 4.232000e-01
  %163 = fsub double -0.000000e+00, %162
  %164 = tail call double @llvm.fmuladd.f64(double %159, double 0xBF82D77318FC5048, double %163)
  %165 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 4, i64 2
  store double %164, double* %165, align 8, !tbaa !8
  %166 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 0, i64 3
  %167 = load double, double* %166, align 8, !tbaa !8
  %168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 0, i64 3
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = fmul double %169, 4.232000e-01
  %171 = fsub double -0.000000e+00, %170
  %172 = tail call double @llvm.fmuladd.f64(double %167, double 0xBF82D77318FC5048, double %171)
  %173 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 0, i64 3
  store double %172, double* %173, align 8, !tbaa !8
  %174 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 1, i64 3
  %175 = load double, double* %174, align 8, !tbaa !8
  %176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 1, i64 3
  %177 = load double, double* %176, align 8, !tbaa !8
  %178 = fmul double %177, 4.232000e-01
  %179 = fsub double -0.000000e+00, %178
  %180 = tail call double @llvm.fmuladd.f64(double %175, double 0xBF82D77318FC5048, double %179)
  %181 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 1, i64 3
  store double %180, double* %181, align 8, !tbaa !8
  %182 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 2, i64 3
  %183 = load double, double* %182, align 8, !tbaa !8
  %184 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 2, i64 3
  %185 = load double, double* %184, align 8, !tbaa !8
  %186 = fmul double %185, 4.232000e-01
  %187 = fsub double -0.000000e+00, %186
  %188 = tail call double @llvm.fmuladd.f64(double %183, double 0xBF82D77318FC5048, double %187)
  %189 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 2, i64 3
  store double %188, double* %189, align 8, !tbaa !8
  %190 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 3, i64 3
  %191 = load double, double* %190, align 8, !tbaa !8
  %192 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 3, i64 3
  %193 = load double, double* %192, align 8, !tbaa !8
  %194 = fmul double %193, 4.232000e-01
  %195 = fsub double -0.000000e+00, %194
  %196 = tail call double @llvm.fmuladd.f64(double %191, double 0xBF82D77318FC5048, double %195)
  %197 = fadd double %196, -4.232000e-01
  %198 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 3, i64 3
  store double %197, double* %198, align 8, !tbaa !8
  %199 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 4, i64 3
  %200 = load double, double* %199, align 8, !tbaa !8
  %201 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 4, i64 3
  %202 = load double, double* %201, align 8, !tbaa !8
  %203 = fmul double %202, 4.232000e-01
  %204 = fsub double -0.000000e+00, %203
  %205 = tail call double @llvm.fmuladd.f64(double %200, double 0xBF82D77318FC5048, double %204)
  %206 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 4, i64 3
  store double %205, double* %206, align 8, !tbaa !8
  %207 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 0, i64 4
  %208 = load double, double* %207, align 8, !tbaa !8
  %209 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 0, i64 4
  %210 = load double, double* %209, align 8, !tbaa !8
  %211 = fmul double %210, 4.232000e-01
  %212 = fsub double -0.000000e+00, %211
  %213 = tail call double @llvm.fmuladd.f64(double %208, double 0xBF82D77318FC5048, double %212)
  %214 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 0, i64 4
  store double %213, double* %214, align 8, !tbaa !8
  %215 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 1, i64 4
  %216 = load double, double* %215, align 8, !tbaa !8
  %217 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 1, i64 4
  %218 = load double, double* %217, align 8, !tbaa !8
  %219 = fmul double %218, 4.232000e-01
  %220 = fsub double -0.000000e+00, %219
  %221 = tail call double @llvm.fmuladd.f64(double %216, double 0xBF82D77318FC5048, double %220)
  %222 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 1, i64 4
  store double %221, double* %222, align 8, !tbaa !8
  %223 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 2, i64 4
  %224 = load double, double* %223, align 8, !tbaa !8
  %225 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 2, i64 4
  %226 = load double, double* %225, align 8, !tbaa !8
  %227 = fmul double %226, 4.232000e-01
  %228 = fsub double -0.000000e+00, %227
  %229 = tail call double @llvm.fmuladd.f64(double %224, double 0xBF82D77318FC5048, double %228)
  %230 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 2, i64 4
  store double %229, double* %230, align 8, !tbaa !8
  %231 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 3, i64 4
  %232 = load double, double* %231, align 8, !tbaa !8
  %233 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 3, i64 4
  %234 = load double, double* %233, align 8, !tbaa !8
  %235 = fmul double %234, 4.232000e-01
  %236 = fsub double -0.000000e+00, %235
  %237 = tail call double @llvm.fmuladd.f64(double %232, double 0xBF82D77318FC5048, double %236)
  %238 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 3, i64 4
  store double %237, double* %238, align 8, !tbaa !8
  %239 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %41, i64 4, i64 4
  %240 = load double, double* %239, align 8, !tbaa !8
  %241 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %41, i64 4, i64 4
  %242 = load double, double* %241, align 8, !tbaa !8
  %243 = fmul double %242, 4.232000e-01
  %244 = fsub double -0.000000e+00, %243
  %245 = tail call double @llvm.fmuladd.f64(double %240, double 0xBF82D77318FC5048, double %244)
  %246 = fadd double %245, -4.232000e-01
  %247 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 0, i64 4, i64 4
  store double %246, double* %247, align 8, !tbaa !8
  %248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 0, i64 0
  %249 = load double, double* %248, align 8, !tbaa !8
  %250 = tail call double @llvm.fmuladd.f64(double %249, double 8.464000e-01, double 1.000000e+00)
  %251 = fadd double %250, 8.464000e-01
  %252 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 0, i64 0
  store double %251, double* %252, align 8, !tbaa !8
  %253 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 1, i64 0
  %254 = load double, double* %253, align 8, !tbaa !8
  %255 = fmul double %254, 8.464000e-01
  %256 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 1, i64 0
  store double %255, double* %256, align 8, !tbaa !8
  %257 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 2, i64 0
  %258 = load double, double* %257, align 8, !tbaa !8
  %259 = fmul double %258, 8.464000e-01
  %260 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 2, i64 0
  store double %259, double* %260, align 8, !tbaa !8
  %261 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 3, i64 0
  %262 = load double, double* %261, align 8, !tbaa !8
  %263 = fmul double %262, 8.464000e-01
  %264 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 3, i64 0
  store double %263, double* %264, align 8, !tbaa !8
  %265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 4, i64 0
  %266 = load double, double* %265, align 8, !tbaa !8
  %267 = fmul double %266, 8.464000e-01
  %268 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 4, i64 0
  store double %267, double* %268, align 8, !tbaa !8
  %269 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 0, i64 1
  %270 = load double, double* %269, align 8, !tbaa !8
  %271 = fmul double %270, 8.464000e-01
  %272 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 0, i64 1
  store double %271, double* %272, align 8, !tbaa !8
  %273 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 1, i64 1
  %274 = load double, double* %273, align 8, !tbaa !8
  %275 = tail call double @llvm.fmuladd.f64(double %274, double 8.464000e-01, double 1.000000e+00)
  %276 = fadd double %275, 8.464000e-01
  %277 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 1, i64 1
  store double %276, double* %277, align 8, !tbaa !8
  %278 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 2, i64 1
  %279 = load double, double* %278, align 8, !tbaa !8
  %280 = fmul double %279, 8.464000e-01
  %281 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 2, i64 1
  store double %280, double* %281, align 8, !tbaa !8
  %282 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 3, i64 1
  %283 = load double, double* %282, align 8, !tbaa !8
  %284 = fmul double %283, 8.464000e-01
  %285 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 3, i64 1
  store double %284, double* %285, align 8, !tbaa !8
  %286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 4, i64 1
  %287 = load double, double* %286, align 8, !tbaa !8
  %288 = fmul double %287, 8.464000e-01
  %289 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 4, i64 1
  store double %288, double* %289, align 8, !tbaa !8
  %290 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 0, i64 2
  %291 = load double, double* %290, align 8, !tbaa !8
  %292 = fmul double %291, 8.464000e-01
  %293 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 0, i64 2
  store double %292, double* %293, align 8, !tbaa !8
  %294 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 1, i64 2
  %295 = load double, double* %294, align 8, !tbaa !8
  %296 = fmul double %295, 8.464000e-01
  %297 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 1, i64 2
  store double %296, double* %297, align 8, !tbaa !8
  %298 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 2, i64 2
  %299 = load double, double* %298, align 8, !tbaa !8
  %300 = tail call double @llvm.fmuladd.f64(double %299, double 8.464000e-01, double 1.000000e+00)
  %301 = fadd double %300, 8.464000e-01
  %302 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 2, i64 2
  store double %301, double* %302, align 8, !tbaa !8
  %303 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 3, i64 2
  %304 = load double, double* %303, align 8, !tbaa !8
  %305 = fmul double %304, 8.464000e-01
  %306 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 3, i64 2
  store double %305, double* %306, align 8, !tbaa !8
  %307 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 4, i64 2
  %308 = load double, double* %307, align 8, !tbaa !8
  %309 = fmul double %308, 8.464000e-01
  %310 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 4, i64 2
  store double %309, double* %310, align 8, !tbaa !8
  %311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 0, i64 3
  %312 = load double, double* %311, align 8, !tbaa !8
  %313 = fmul double %312, 8.464000e-01
  %314 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 0, i64 3
  store double %313, double* %314, align 8, !tbaa !8
  %315 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 1, i64 3
  %316 = load double, double* %315, align 8, !tbaa !8
  %317 = fmul double %316, 8.464000e-01
  %318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 1, i64 3
  store double %317, double* %318, align 8, !tbaa !8
  %319 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 2, i64 3
  %320 = load double, double* %319, align 8, !tbaa !8
  %321 = fmul double %320, 8.464000e-01
  %322 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 2, i64 3
  store double %321, double* %322, align 8, !tbaa !8
  %323 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 3, i64 3
  %324 = load double, double* %323, align 8, !tbaa !8
  %325 = tail call double @llvm.fmuladd.f64(double %324, double 8.464000e-01, double 1.000000e+00)
  %326 = fadd double %325, 8.464000e-01
  %327 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 3, i64 3
  store double %326, double* %327, align 8, !tbaa !8
  %328 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 4, i64 3
  %329 = load double, double* %328, align 8, !tbaa !8
  %330 = fmul double %329, 8.464000e-01
  %331 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 4, i64 3
  store double %330, double* %331, align 8, !tbaa !8
  %332 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 0, i64 4
  %333 = load double, double* %332, align 8, !tbaa !8
  %334 = fmul double %333, 8.464000e-01
  %335 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 0, i64 4
  store double %334, double* %335, align 8, !tbaa !8
  %336 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 1, i64 4
  %337 = load double, double* %336, align 8, !tbaa !8
  %338 = fmul double %337, 8.464000e-01
  %339 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 1, i64 4
  store double %338, double* %339, align 8, !tbaa !8
  %340 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 2, i64 4
  %341 = load double, double* %340, align 8, !tbaa !8
  %342 = fmul double %341, 8.464000e-01
  %343 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 2, i64 4
  store double %342, double* %343, align 8, !tbaa !8
  %344 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 3, i64 4
  %345 = load double, double* %344, align 8, !tbaa !8
  %346 = fmul double %345, 8.464000e-01
  %347 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 3, i64 4
  store double %346, double* %347, align 8, !tbaa !8
  %348 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %50, i64 4, i64 4
  %349 = load double, double* %348, align 8, !tbaa !8
  %350 = tail call double @llvm.fmuladd.f64(double %349, double 8.464000e-01, double 1.000000e+00)
  %351 = fadd double %350, 8.464000e-01
  %352 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 1, i64 4, i64 4
  store double %351, double* %352, align 8, !tbaa !8
  %353 = add i64 %39, 4294967296
  %354 = ashr exact i64 %353, 32
  %355 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 0, i64 0
  %356 = load double, double* %355, align 8, !tbaa !8
  %357 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 0, i64 0
  %358 = load double, double* %357, align 8, !tbaa !8
  %359 = fmul double %358, 4.232000e-01
  %360 = fsub double -0.000000e+00, %359
  %361 = tail call double @llvm.fmuladd.f64(double %356, double 0x3F82D77318FC5048, double %360)
  %362 = fadd double %361, -4.232000e-01
  %363 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 0, i64 0
  store double %362, double* %363, align 8, !tbaa !8
  %364 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 1, i64 0
  %365 = load double, double* %364, align 8, !tbaa !8
  %366 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 1, i64 0
  %367 = load double, double* %366, align 8, !tbaa !8
  %368 = fmul double %367, 4.232000e-01
  %369 = fsub double -0.000000e+00, %368
  %370 = tail call double @llvm.fmuladd.f64(double %365, double 0x3F82D77318FC5048, double %369)
  %371 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 1, i64 0
  store double %370, double* %371, align 8, !tbaa !8
  %372 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 2, i64 0
  %373 = load double, double* %372, align 8, !tbaa !8
  %374 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 2, i64 0
  %375 = load double, double* %374, align 8, !tbaa !8
  %376 = fmul double %375, 4.232000e-01
  %377 = fsub double -0.000000e+00, %376
  %378 = tail call double @llvm.fmuladd.f64(double %373, double 0x3F82D77318FC5048, double %377)
  %379 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 2, i64 0
  store double %378, double* %379, align 8, !tbaa !8
  %380 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 3, i64 0
  %381 = load double, double* %380, align 8, !tbaa !8
  %382 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 3, i64 0
  %383 = load double, double* %382, align 8, !tbaa !8
  %384 = fmul double %383, 4.232000e-01
  %385 = fsub double -0.000000e+00, %384
  %386 = tail call double @llvm.fmuladd.f64(double %381, double 0x3F82D77318FC5048, double %385)
  %387 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 3, i64 0
  store double %386, double* %387, align 8, !tbaa !8
  %388 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 4, i64 0
  %389 = load double, double* %388, align 8, !tbaa !8
  %390 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 4, i64 0
  %391 = load double, double* %390, align 8, !tbaa !8
  %392 = fmul double %391, 4.232000e-01
  %393 = fsub double -0.000000e+00, %392
  %394 = tail call double @llvm.fmuladd.f64(double %389, double 0x3F82D77318FC5048, double %393)
  %395 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 4, i64 0
  store double %394, double* %395, align 8, !tbaa !8
  %396 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 0, i64 1
  %397 = load double, double* %396, align 8, !tbaa !8
  %398 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 0, i64 1
  %399 = load double, double* %398, align 8, !tbaa !8
  %400 = fmul double %399, 4.232000e-01
  %401 = fsub double -0.000000e+00, %400
  %402 = tail call double @llvm.fmuladd.f64(double %397, double 0x3F82D77318FC5048, double %401)
  %403 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 0, i64 1
  store double %402, double* %403, align 8, !tbaa !8
  %404 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 1, i64 1
  %405 = load double, double* %404, align 8, !tbaa !8
  %406 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 1, i64 1
  %407 = load double, double* %406, align 8, !tbaa !8
  %408 = fmul double %407, 4.232000e-01
  %409 = fsub double -0.000000e+00, %408
  %410 = tail call double @llvm.fmuladd.f64(double %405, double 0x3F82D77318FC5048, double %409)
  %411 = fadd double %410, -4.232000e-01
  %412 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 1, i64 1
  store double %411, double* %412, align 8, !tbaa !8
  %413 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 2, i64 1
  %414 = load double, double* %413, align 8, !tbaa !8
  %415 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 2, i64 1
  %416 = load double, double* %415, align 8, !tbaa !8
  %417 = fmul double %416, 4.232000e-01
  %418 = fsub double -0.000000e+00, %417
  %419 = tail call double @llvm.fmuladd.f64(double %414, double 0x3F82D77318FC5048, double %418)
  %420 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 2, i64 1
  store double %419, double* %420, align 8, !tbaa !8
  %421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 3, i64 1
  %422 = load double, double* %421, align 8, !tbaa !8
  %423 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 3, i64 1
  %424 = load double, double* %423, align 8, !tbaa !8
  %425 = fmul double %424, 4.232000e-01
  %426 = fsub double -0.000000e+00, %425
  %427 = tail call double @llvm.fmuladd.f64(double %422, double 0x3F82D77318FC5048, double %426)
  %428 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 3, i64 1
  store double %427, double* %428, align 8, !tbaa !8
  %429 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 4, i64 1
  %430 = load double, double* %429, align 8, !tbaa !8
  %431 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 4, i64 1
  %432 = load double, double* %431, align 8, !tbaa !8
  %433 = fmul double %432, 4.232000e-01
  %434 = fsub double -0.000000e+00, %433
  %435 = tail call double @llvm.fmuladd.f64(double %430, double 0x3F82D77318FC5048, double %434)
  %436 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 4, i64 1
  store double %435, double* %436, align 8, !tbaa !8
  %437 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 0, i64 2
  %438 = load double, double* %437, align 8, !tbaa !8
  %439 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 0, i64 2
  %440 = load double, double* %439, align 8, !tbaa !8
  %441 = fmul double %440, 4.232000e-01
  %442 = fsub double -0.000000e+00, %441
  %443 = tail call double @llvm.fmuladd.f64(double %438, double 0x3F82D77318FC5048, double %442)
  %444 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 0, i64 2
  store double %443, double* %444, align 8, !tbaa !8
  %445 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 1, i64 2
  %446 = load double, double* %445, align 8, !tbaa !8
  %447 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 1, i64 2
  %448 = load double, double* %447, align 8, !tbaa !8
  %449 = fmul double %448, 4.232000e-01
  %450 = fsub double -0.000000e+00, %449
  %451 = tail call double @llvm.fmuladd.f64(double %446, double 0x3F82D77318FC5048, double %450)
  %452 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 1, i64 2
  store double %451, double* %452, align 8, !tbaa !8
  %453 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 2, i64 2
  %454 = load double, double* %453, align 8, !tbaa !8
  %455 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 2, i64 2
  %456 = load double, double* %455, align 8, !tbaa !8
  %457 = fmul double %456, 4.232000e-01
  %458 = fsub double -0.000000e+00, %457
  %459 = tail call double @llvm.fmuladd.f64(double %454, double 0x3F82D77318FC5048, double %458)
  %460 = fadd double %459, -4.232000e-01
  %461 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 2, i64 2
  store double %460, double* %461, align 8, !tbaa !8
  %462 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 3, i64 2
  %463 = load double, double* %462, align 8, !tbaa !8
  %464 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 3, i64 2
  %465 = load double, double* %464, align 8, !tbaa !8
  %466 = fmul double %465, 4.232000e-01
  %467 = fsub double -0.000000e+00, %466
  %468 = tail call double @llvm.fmuladd.f64(double %463, double 0x3F82D77318FC5048, double %467)
  %469 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 3, i64 2
  store double %468, double* %469, align 8, !tbaa !8
  %470 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 4, i64 2
  %471 = load double, double* %470, align 8, !tbaa !8
  %472 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 4, i64 2
  %473 = load double, double* %472, align 8, !tbaa !8
  %474 = fmul double %473, 4.232000e-01
  %475 = fsub double -0.000000e+00, %474
  %476 = tail call double @llvm.fmuladd.f64(double %471, double 0x3F82D77318FC5048, double %475)
  %477 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 4, i64 2
  store double %476, double* %477, align 8, !tbaa !8
  %478 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 0, i64 3
  %479 = load double, double* %478, align 8, !tbaa !8
  %480 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 0, i64 3
  %481 = load double, double* %480, align 8, !tbaa !8
  %482 = fmul double %481, 4.232000e-01
  %483 = fsub double -0.000000e+00, %482
  %484 = tail call double @llvm.fmuladd.f64(double %479, double 0x3F82D77318FC5048, double %483)
  %485 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 0, i64 3
  store double %484, double* %485, align 8, !tbaa !8
  %486 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 1, i64 3
  %487 = load double, double* %486, align 8, !tbaa !8
  %488 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 1, i64 3
  %489 = load double, double* %488, align 8, !tbaa !8
  %490 = fmul double %489, 4.232000e-01
  %491 = fsub double -0.000000e+00, %490
  %492 = tail call double @llvm.fmuladd.f64(double %487, double 0x3F82D77318FC5048, double %491)
  %493 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 1, i64 3
  store double %492, double* %493, align 8, !tbaa !8
  %494 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 2, i64 3
  %495 = load double, double* %494, align 8, !tbaa !8
  %496 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 2, i64 3
  %497 = load double, double* %496, align 8, !tbaa !8
  %498 = fmul double %497, 4.232000e-01
  %499 = fsub double -0.000000e+00, %498
  %500 = tail call double @llvm.fmuladd.f64(double %495, double 0x3F82D77318FC5048, double %499)
  %501 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 2, i64 3
  store double %500, double* %501, align 8, !tbaa !8
  %502 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 3, i64 3
  %503 = load double, double* %502, align 8, !tbaa !8
  %504 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 3, i64 3
  %505 = load double, double* %504, align 8, !tbaa !8
  %506 = fmul double %505, 4.232000e-01
  %507 = fsub double -0.000000e+00, %506
  %508 = tail call double @llvm.fmuladd.f64(double %503, double 0x3F82D77318FC5048, double %507)
  %509 = fadd double %508, -4.232000e-01
  %510 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 3, i64 3
  store double %509, double* %510, align 8, !tbaa !8
  %511 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 4, i64 3
  %512 = load double, double* %511, align 8, !tbaa !8
  %513 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 4, i64 3
  %514 = load double, double* %513, align 8, !tbaa !8
  %515 = fmul double %514, 4.232000e-01
  %516 = fsub double -0.000000e+00, %515
  %517 = tail call double @llvm.fmuladd.f64(double %512, double 0x3F82D77318FC5048, double %516)
  %518 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 4, i64 3
  store double %517, double* %518, align 8, !tbaa !8
  %519 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 0, i64 4
  %520 = load double, double* %519, align 8, !tbaa !8
  %521 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 0, i64 4
  %522 = load double, double* %521, align 8, !tbaa !8
  %523 = fmul double %522, 4.232000e-01
  %524 = fsub double -0.000000e+00, %523
  %525 = tail call double @llvm.fmuladd.f64(double %520, double 0x3F82D77318FC5048, double %524)
  %526 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 0, i64 4
  store double %525, double* %526, align 8, !tbaa !8
  %527 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 1, i64 4
  %528 = load double, double* %527, align 8, !tbaa !8
  %529 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 1, i64 4
  %530 = load double, double* %529, align 8, !tbaa !8
  %531 = fmul double %530, 4.232000e-01
  %532 = fsub double -0.000000e+00, %531
  %533 = tail call double @llvm.fmuladd.f64(double %528, double 0x3F82D77318FC5048, double %532)
  %534 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 1, i64 4
  store double %533, double* %534, align 8, !tbaa !8
  %535 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 2, i64 4
  %536 = load double, double* %535, align 8, !tbaa !8
  %537 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 2, i64 4
  %538 = load double, double* %537, align 8, !tbaa !8
  %539 = fmul double %538, 4.232000e-01
  %540 = fsub double -0.000000e+00, %539
  %541 = tail call double @llvm.fmuladd.f64(double %536, double 0x3F82D77318FC5048, double %540)
  %542 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 2, i64 4
  store double %541, double* %542, align 8, !tbaa !8
  %543 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 3, i64 4
  %544 = load double, double* %543, align 8, !tbaa !8
  %545 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 3, i64 4
  %546 = load double, double* %545, align 8, !tbaa !8
  %547 = fmul double %546, 4.232000e-01
  %548 = fsub double -0.000000e+00, %547
  %549 = tail call double @llvm.fmuladd.f64(double %544, double 0x3F82D77318FC5048, double %548)
  %550 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 3, i64 4
  store double %549, double* %550, align 8, !tbaa !8
  %551 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %32, i64 %354, i64 4, i64 4
  %552 = load double, double* %551, align 8, !tbaa !8
  %553 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %34, i64 %354, i64 4, i64 4
  %554 = load double, double* %553, align 8, !tbaa !8
  %555 = fmul double %554, 4.232000e-01
  %556 = fsub double -0.000000e+00, %555
  %557 = tail call double @llvm.fmuladd.f64(double %552, double 0x3F82D77318FC5048, double %556)
  %558 = fadd double %557, -4.232000e-01
  %559 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %38, i64 %50, i64 2, i64 4, i64 4
  store double %558, double* %559, align 8, !tbaa !8
  br label %560

; <label>:560:                                    ; preds = %6, %17, %24
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
