; ModuleID = 'npb-BT-compute_rhs4_B.cl'
source_filename = "npb-BT-compute_rhs4_B.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_rhs4(double* readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %12 = alloca [5 x double], align 16
  %13 = alloca [5 x double], align 16
  %14 = alloca [5 x double], align 16
  %15 = alloca [5 x double], align 16
  %16 = alloca [5 x double], align 16
  %17 = bitcast [5 x double]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #4
  %18 = bitcast [5 x double]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #4
  %19 = bitcast [5 x double]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %19) #4
  %20 = bitcast [5 x double]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #4
  %21 = bitcast [5 x double]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %21) #4
  call void @llvm.memset.p0i8.i64(i8* nonnull %21, i8 0, i64 40, i32 16, i1 false)
  %22 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %26 = add i64 %25, 1
  %27 = add nsw i32 %10, -2
  %28 = icmp slt i32 %27, %24
  br i1 %28, label %1006, label %29

; <label>:29:                                     ; preds = %11
  %30 = trunc i64 %26 to i32
  %31 = add nsw i32 %8, -2
  %32 = icmp slt i32 %31, %30
  br i1 %32, label %1006, label %33

; <label>:33:                                     ; preds = %29
  %34 = bitcast double* %1 to [103 x [103 x double]]*
  %35 = bitcast double* %2 to [103 x [103 x double]]*
  %36 = bitcast double* %3 to [103 x [103 x double]]*
  %37 = bitcast double* %4 to [103 x [103 x double]]*
  %38 = bitcast double* %5 to [103 x [103 x double]]*
  %39 = bitcast double* %6 to [103 x [103 x double]]*
  %40 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %41 = bitcast double* %7 to [103 x [103 x [5 x double]]]*
  %42 = shl i64 %23, 32
  %43 = ashr exact i64 %42, 32
  %44 = shl i64 %26, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 0, i64 %45
  %47 = bitcast [5 x double]* %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !8
  %49 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %50 = bitcast [5 x double]* %12 to i64*
  store i64 %48, i64* %50, align 16, !tbaa !8
  %51 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 0, i64 %45, i64 1
  %52 = bitcast double* %51 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 1
  %55 = bitcast double* %54 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !8
  %56 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 0, i64 %45, i64 2
  %57 = bitcast double* %56 to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !8
  %59 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 2
  %60 = bitcast double* %59 to i64*
  store i64 %58, i64* %60, align 16, !tbaa !8
  %61 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 0, i64 %45, i64 3
  %62 = bitcast double* %61 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !8
  %64 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 3
  %65 = bitcast double* %64 to i64*
  store i64 %63, i64* %65, align 8, !tbaa !8
  %66 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 0, i64 %45, i64 4
  %67 = bitcast double* %66 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !8
  %69 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 4
  %70 = bitcast double* %69 to i64*
  store i64 %68, i64* %70, align 16, !tbaa !8
  %71 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 1, i64 %45
  %72 = bitcast [5 x double]* %71 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !8
  %74 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %75 = bitcast [5 x double]* %13 to i64*
  store i64 %73, i64* %75, align 16, !tbaa !8
  %76 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 1, i64 %45, i64 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8, !tbaa !8
  %79 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 1
  %80 = bitcast double* %79 to i64*
  store i64 %78, i64* %80, align 8, !tbaa !8
  %81 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 1, i64 %45, i64 2
  %82 = bitcast double* %81 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !8
  %84 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 2
  %85 = bitcast double* %84 to i64*
  store i64 %83, i64* %85, align 16, !tbaa !8
  %86 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 1, i64 %45, i64 3
  %87 = bitcast double* %86 to i64*
  %88 = load i64, i64* %87, align 8, !tbaa !8
  %89 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 3
  %90 = bitcast double* %89 to i64*
  store i64 %88, i64* %90, align 8, !tbaa !8
  %91 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 1, i64 %45, i64 4
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !8
  %94 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 4
  %95 = bitcast double* %94 to i64*
  %96 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 2, i64 %45
  %97 = bitcast [5 x double]* %96 to i64*
  %98 = load i64, i64* %97, align 8, !tbaa !8
  %99 = bitcast [5 x double]* %14 to i64*
  %100 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 2, i64 %45, i64 1
  %101 = bitcast double* %100 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !8
  %103 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 1
  %104 = bitcast double* %103 to i64*
  %105 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 2, i64 %45, i64 2
  %106 = bitcast double* %105 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !8
  %108 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 2
  %109 = bitcast double* %108 to i64*
  %110 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 2, i64 %45, i64 3
  %111 = bitcast double* %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !8
  %113 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 3
  %114 = bitcast double* %113 to i64*
  %115 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 2, i64 %45, i64 4
  %116 = bitcast double* %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !8
  %118 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 4
  %119 = bitcast double* %118 to i64*
  %120 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 0, i64 %45
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 1, i64 %45
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 0, i64 %45
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 1, i64 %45
  %127 = load double, double* %126, align 8, !tbaa !8
  %128 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 0, i64 %45
  %129 = load double, double* %128, align 8, !tbaa !8
  %130 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 1, i64 %45
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 0, i64 %45
  %133 = load double, double* %132, align 8, !tbaa !8
  %134 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 1, i64 %45
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 0, i64 %45
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 1, i64 %45
  %139 = load double, double* %138, align 8, !tbaa !8
  %140 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 0, i64 %45
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 1, i64 %45
  %143 = load double, double* %142, align 8, !tbaa !8
  %144 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %145 = bitcast [5 x double]* %16 to i64*
  %146 = load i64, i64* %145, align 16, !tbaa !8
  %147 = bitcast [5 x double]* %15 to i64*
  store i64 %146, i64* %147, align 16, !tbaa !8
  %148 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %149 = bitcast double* %148 to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !8
  %151 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 1
  %152 = bitcast double* %151 to i64*
  store i64 %150, i64* %152, align 8, !tbaa !8
  %153 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  %154 = bitcast double* %153 to i64*
  %155 = load i64, i64* %154, align 16, !tbaa !8
  %156 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 2
  %157 = bitcast double* %156 to i64*
  store i64 %155, i64* %157, align 16, !tbaa !8
  %158 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  %159 = bitcast double* %158 to i64*
  %160 = load i64, i64* %159, align 8, !tbaa !8
  %161 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 3
  %162 = bitcast double* %161 to i64*
  store i64 %160, i64* %162, align 8, !tbaa !8
  %163 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  %164 = bitcast double* %163 to i64*
  %165 = load i64, i64* %164, align 16, !tbaa !8
  %166 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 4
  %167 = bitcast double* %166 to i64*
  store i64 %165, i64* %167, align 16, !tbaa !8
  store i64 %48, i64* %145, align 16, !tbaa !8
  store i64 %53, i64* %149, align 8, !tbaa !8
  store i64 %58, i64* %154, align 16, !tbaa !8
  store i64 %63, i64* %159, align 8, !tbaa !8
  store i64 %68, i64* %164, align 16, !tbaa !8
  store i64 %73, i64* %50, align 16, !tbaa !8
  store i64 %78, i64* %55, align 8, !tbaa !8
  store i64 %83, i64* %60, align 16, !tbaa !8
  store i64 %88, i64* %65, align 8, !tbaa !8
  store i64 %93, i64* %70, align 16, !tbaa !8
  store i64 %98, i64* %75, align 16, !tbaa !8
  store i64 %102, i64* %80, align 8, !tbaa !8
  store i64 %107, i64* %85, align 16, !tbaa !8
  store i64 %112, i64* %90, align 8, !tbaa !8
  store i64 %117, i64* %95, align 16, !tbaa !8
  %168 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 3, i64 %45
  %169 = bitcast [5 x double]* %168 to i64*
  %170 = load i64, i64* %169, align 8, !tbaa !8
  store i64 %170, i64* %99, align 16, !tbaa !8
  %171 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 3, i64 %45, i64 1
  %172 = bitcast double* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !8
  store i64 %173, i64* %104, align 8, !tbaa !8
  %174 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 3, i64 %45, i64 2
  %175 = bitcast double* %174 to i64*
  %176 = load i64, i64* %175, align 8, !tbaa !8
  store i64 %176, i64* %109, align 16, !tbaa !8
  %177 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 3, i64 %45, i64 3
  %178 = bitcast double* %177 to i64*
  %179 = load i64, i64* %178, align 8, !tbaa !8
  store i64 %179, i64* %114, align 8, !tbaa !8
  %180 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 3, i64 %45, i64 4
  %181 = bitcast double* %180 to i64*
  %182 = load i64, i64* %181, align 8, !tbaa !8
  store i64 %182, i64* %119, align 16, !tbaa !8
  %183 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 2, i64 %45
  %184 = load double, double* %183, align 8, !tbaa !8
  %185 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 2, i64 %45
  %186 = load double, double* %185, align 8, !tbaa !8
  %187 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 2, i64 %45
  %188 = load double, double* %187, align 8, !tbaa !8
  %189 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 2, i64 %45
  %190 = load double, double* %189, align 8, !tbaa !8
  %191 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 2, i64 %45
  %192 = load double, double* %191, align 8, !tbaa !8
  %193 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 2, i64 %45
  %194 = load double, double* %193, align 8, !tbaa !8
  %195 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 1, i64 %45, i64 0
  %196 = load double, double* %195, align 8, !tbaa !8
  %197 = bitcast i64 %98 to double
  %198 = bitcast i64 %73 to double
  %199 = tail call double @llvm.fmuladd.f64(double %198, double -2.000000e+00, double %197)
  %200 = bitcast i64 %48 to double
  %201 = fadd double %199, %200
  %202 = tail call double @llvm.fmuladd.f64(double %201, double 7.650750e+03, double %196)
  %203 = bitcast i64 %107 to double
  %204 = bitcast i64 %58 to double
  %205 = fsub double %203, %204
  %206 = tail call double @llvm.fmuladd.f64(double %205, double -5.050000e+01, double %202)
  %207 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 1, i64 %45, i64 1
  %208 = load double, double* %207, align 8, !tbaa !8
  %209 = bitcast i64 %102 to double
  %210 = bitcast i64 %78 to double
  %211 = tail call double @llvm.fmuladd.f64(double %210, double -2.000000e+00, double %209)
  %212 = bitcast i64 %53 to double
  %213 = fadd double %211, %212
  %214 = tail call double @llvm.fmuladd.f64(double %213, double 7.650750e+03, double %208)
  %215 = tail call double @llvm.fmuladd.f64(double %123, double -2.000000e+00, double %184)
  %216 = fadd double %121, %215
  %217 = tail call double @llvm.fmuladd.f64(double %216, double 0x408FE0CCCCCCCCCE, double %214)
  %218 = fmul double %125, %212
  %219 = fsub double -0.000000e+00, %218
  %220 = tail call double @llvm.fmuladd.f64(double %209, double %186, double %219)
  %221 = tail call double @llvm.fmuladd.f64(double %220, double -5.050000e+01, double %217)
  %222 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 1, i64 %45, i64 2
  %223 = load double, double* %222, align 8, !tbaa !8
  %224 = bitcast i64 %83 to double
  %225 = tail call double @llvm.fmuladd.f64(double %224, double -2.000000e+00, double %203)
  %226 = fadd double %225, %204
  %227 = tail call double @llvm.fmuladd.f64(double %226, double 7.650750e+03, double %223)
  %228 = tail call double @llvm.fmuladd.f64(double %127, double -2.000000e+00, double %186)
  %229 = fadd double %125, %228
  %230 = tail call double @llvm.fmuladd.f64(double %229, double 0x4095408888888889, double %227)
  %231 = fmul double %125, %204
  %232 = fsub double -0.000000e+00, %231
  %233 = tail call double @llvm.fmuladd.f64(double %203, double %186, double %232)
  %234 = bitcast i64 %117 to double
  %235 = fsub double %234, %194
  %236 = bitcast i64 %68 to double
  %237 = fsub double %235, %236
  %238 = fadd double %141, %237
  %239 = tail call double @llvm.fmuladd.f64(double %238, double 4.000000e-01, double %233)
  %240 = tail call double @llvm.fmuladd.f64(double %239, double -5.050000e+01, double %230)
  %241 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 1, i64 %45, i64 3
  %242 = load double, double* %241, align 8, !tbaa !8
  %243 = bitcast i64 %112 to double
  %244 = bitcast i64 %88 to double
  %245 = tail call double @llvm.fmuladd.f64(double %244, double -2.000000e+00, double %243)
  %246 = load double, double* %158, align 8, !tbaa !8
  %247 = fadd double %245, %246
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 7.650750e+03, double %242)
  %249 = tail call double @llvm.fmuladd.f64(double %131, double -2.000000e+00, double %188)
  %250 = fadd double %129, %249
  %251 = tail call double @llvm.fmuladd.f64(double %250, double 0x408FE0CCCCCCCCCE, double %248)
  %252 = fmul double %125, %246
  %253 = fsub double -0.000000e+00, %252
  %254 = tail call double @llvm.fmuladd.f64(double %243, double %186, double %253)
  %255 = tail call double @llvm.fmuladd.f64(double %254, double -5.050000e+01, double %251)
  %256 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 1, i64 %45, i64 4
  %257 = load double, double* %256, align 8, !tbaa !8
  %258 = load double, double* %69, align 16, !tbaa !8
  %259 = tail call double @llvm.fmuladd.f64(double %258, double -2.000000e+00, double %234)
  %260 = fadd double %259, %236
  %261 = tail call double @llvm.fmuladd.f64(double %260, double 7.650750e+03, double %257)
  %262 = tail call double @llvm.fmuladd.f64(double %135, double -2.000000e+00, double %190)
  %263 = fadd double %133, %262
  %264 = tail call double @llvm.fmuladd.f64(double %263, double 0xC08E9A5E353F7CEC, double %261)
  %265 = fmul double %127, 2.000000e+00
  %266 = fmul double %127, %265
  %267 = fsub double -0.000000e+00, %266
  %268 = tail call double @llvm.fmuladd.f64(double %186, double %186, double %267)
  %269 = tail call double @llvm.fmuladd.f64(double %125, double %125, double %268)
  %270 = tail call double @llvm.fmuladd.f64(double %269, double 0x4065408888888889, double %264)
  %271 = fmul double %258, 2.000000e+00
  %272 = fmul double %139, %271
  %273 = fsub double -0.000000e+00, %272
  %274 = tail call double @llvm.fmuladd.f64(double %234, double %192, double %273)
  %275 = tail call double @llvm.fmuladd.f64(double %236, double %137, double %274)
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 0x409F3D95810624DD, double %270)
  %277 = fmul double %194, 4.000000e-01
  %278 = fsub double -0.000000e+00, %277
  %279 = tail call double @llvm.fmuladd.f64(double %234, double 1.400000e+00, double %278)
  %280 = fmul double %141, 4.000000e-01
  %281 = fsub double -0.000000e+00, %280
  %282 = tail call double @llvm.fmuladd.f64(double %236, double 1.400000e+00, double %281)
  %283 = fmul double %125, %282
  %284 = fsub double -0.000000e+00, %283
  %285 = tail call double @llvm.fmuladd.f64(double %279, double %186, double %284)
  %286 = tail call double @llvm.fmuladd.f64(double %285, double -5.050000e+01, double %276)
  %287 = tail call double @_Z3maxdd(double 7.500000e-01, double 1.000000e+00) #5
  %288 = tail call double @_Z3maxdd(double 7.500000e-01, double %287) #5
  %289 = fmul double %288, 2.500000e-01
  %290 = fsub double -0.000000e+00, %289
  %291 = load double, double* %49, align 16, !tbaa !8
  %292 = load double, double* %74, align 16, !tbaa !8
  %293 = fmul double %292, 4.000000e+00
  %294 = fsub double -0.000000e+00, %293
  %295 = tail call double @llvm.fmuladd.f64(double %291, double 5.000000e+00, double %294)
  %296 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 0
  %297 = load double, double* %296, align 16, !tbaa !8
  %298 = fadd double %297, %295
  %299 = tail call double @llvm.fmuladd.f64(double %290, double %298, double %206)
  store double %299, double* %195, align 8, !tbaa !8
  %300 = load double, double* %54, align 8, !tbaa !8
  %301 = load double, double* %79, align 8, !tbaa !8
  %302 = fmul double %301, 4.000000e+00
  %303 = fsub double -0.000000e+00, %302
  %304 = tail call double @llvm.fmuladd.f64(double %300, double 5.000000e+00, double %303)
  %305 = load double, double* %103, align 8, !tbaa !8
  %306 = fadd double %305, %304
  %307 = tail call double @llvm.fmuladd.f64(double %290, double %306, double %221)
  store double %307, double* %207, align 8, !tbaa !8
  %308 = load double, double* %59, align 16, !tbaa !8
  %309 = load double, double* %84, align 16, !tbaa !8
  %310 = fmul double %309, 4.000000e+00
  %311 = fsub double -0.000000e+00, %310
  %312 = tail call double @llvm.fmuladd.f64(double %308, double 5.000000e+00, double %311)
  %313 = load double, double* %108, align 16, !tbaa !8
  %314 = fadd double %313, %312
  %315 = tail call double @llvm.fmuladd.f64(double %290, double %314, double %240)
  store double %315, double* %222, align 8, !tbaa !8
  %316 = load double, double* %64, align 8, !tbaa !8
  %317 = load double, double* %89, align 8, !tbaa !8
  %318 = fmul double %317, 4.000000e+00
  %319 = fsub double -0.000000e+00, %318
  %320 = tail call double @llvm.fmuladd.f64(double %316, double 5.000000e+00, double %319)
  %321 = load double, double* %113, align 8, !tbaa !8
  %322 = fadd double %321, %320
  %323 = tail call double @llvm.fmuladd.f64(double %290, double %322, double %255)
  store double %323, double* %241, align 8, !tbaa !8
  %324 = load double, double* %94, align 16, !tbaa !8
  %325 = fmul double %324, 4.000000e+00
  %326 = fsub double -0.000000e+00, %325
  %327 = tail call double @llvm.fmuladd.f64(double %258, double 5.000000e+00, double %326)
  %328 = load double, double* %118, align 16, !tbaa !8
  %329 = fadd double %328, %327
  %330 = tail call double @llvm.fmuladd.f64(double %290, double %329, double %286)
  store double %330, double* %256, align 8, !tbaa !8
  store i64 %48, i64* %147, align 16, !tbaa !8
  store i64 %53, i64* %152, align 8, !tbaa !8
  store i64 %58, i64* %157, align 16, !tbaa !8
  store i64 %63, i64* %162, align 8, !tbaa !8
  store i64 %68, i64* %167, align 16, !tbaa !8
  store i64 %73, i64* %145, align 16, !tbaa !8
  store i64 %78, i64* %149, align 8, !tbaa !8
  store i64 %83, i64* %154, align 16, !tbaa !8
  store i64 %88, i64* %159, align 8, !tbaa !8
  store i64 %93, i64* %164, align 16, !tbaa !8
  store i64 %98, i64* %50, align 16, !tbaa !8
  store i64 %102, i64* %55, align 8, !tbaa !8
  store i64 %107, i64* %60, align 16, !tbaa !8
  store i64 %112, i64* %65, align 8, !tbaa !8
  store i64 %117, i64* %70, align 16, !tbaa !8
  store i64 %170, i64* %75, align 16, !tbaa !8
  store i64 %173, i64* %80, align 8, !tbaa !8
  store i64 %176, i64* %85, align 16, !tbaa !8
  store i64 %179, i64* %90, align 8, !tbaa !8
  store i64 %182, i64* %95, align 16, !tbaa !8
  %331 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 4, i64 %45
  %332 = bitcast [5 x double]* %331 to i64*
  %333 = load i64, i64* %332, align 8, !tbaa !8
  store i64 %333, i64* %99, align 16, !tbaa !8
  %334 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 4, i64 %45, i64 1
  %335 = bitcast double* %334 to i64*
  %336 = load i64, i64* %335, align 8, !tbaa !8
  store i64 %336, i64* %104, align 8, !tbaa !8
  %337 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 4, i64 %45, i64 2
  %338 = bitcast double* %337 to i64*
  %339 = load i64, i64* %338, align 8, !tbaa !8
  store i64 %339, i64* %109, align 16, !tbaa !8
  %340 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 4, i64 %45, i64 3
  %341 = bitcast double* %340 to i64*
  %342 = load i64, i64* %341, align 8, !tbaa !8
  store i64 %342, i64* %114, align 8, !tbaa !8
  %343 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 4, i64 %45, i64 4
  %344 = bitcast double* %343 to i64*
  %345 = load i64, i64* %344, align 8, !tbaa !8
  store i64 %345, i64* %119, align 16, !tbaa !8
  %346 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 3, i64 %45
  %347 = load double, double* %346, align 8, !tbaa !8
  %348 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 3, i64 %45
  %349 = load double, double* %348, align 8, !tbaa !8
  %350 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 3, i64 %45
  %351 = load double, double* %350, align 8, !tbaa !8
  %352 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 3, i64 %45
  %353 = load double, double* %352, align 8, !tbaa !8
  %354 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 3, i64 %45
  %355 = load double, double* %354, align 8, !tbaa !8
  %356 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 3, i64 %45
  %357 = load double, double* %356, align 8, !tbaa !8
  %358 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 2, i64 %45, i64 0
  %359 = load double, double* %358, align 8, !tbaa !8
  %360 = bitcast i64 %170 to double
  %361 = tail call double @llvm.fmuladd.f64(double %197, double -2.000000e+00, double %360)
  %362 = fadd double %361, %198
  %363 = tail call double @llvm.fmuladd.f64(double %362, double 7.650750e+03, double %359)
  %364 = bitcast i64 %176 to double
  %365 = fsub double %364, %224
  %366 = tail call double @llvm.fmuladd.f64(double %365, double -5.050000e+01, double %363)
  %367 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 2, i64 %45, i64 1
  %368 = load double, double* %367, align 8, !tbaa !8
  %369 = bitcast i64 %173 to double
  %370 = tail call double @llvm.fmuladd.f64(double %209, double -2.000000e+00, double %369)
  %371 = fadd double %370, %210
  %372 = tail call double @llvm.fmuladd.f64(double %371, double 7.650750e+03, double %368)
  %373 = tail call double @llvm.fmuladd.f64(double %184, double -2.000000e+00, double %347)
  %374 = fadd double %123, %373
  %375 = tail call double @llvm.fmuladd.f64(double %374, double 0x408FE0CCCCCCCCCE, double %372)
  %376 = fmul double %127, %210
  %377 = fsub double -0.000000e+00, %376
  %378 = tail call double @llvm.fmuladd.f64(double %369, double %349, double %377)
  %379 = tail call double @llvm.fmuladd.f64(double %378, double -5.050000e+01, double %375)
  %380 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 2, i64 %45, i64 2
  %381 = load double, double* %380, align 8, !tbaa !8
  %382 = tail call double @llvm.fmuladd.f64(double %203, double -2.000000e+00, double %364)
  %383 = fadd double %382, %224
  %384 = tail call double @llvm.fmuladd.f64(double %383, double 7.650750e+03, double %381)
  %385 = tail call double @llvm.fmuladd.f64(double %186, double -2.000000e+00, double %349)
  %386 = fadd double %127, %385
  %387 = tail call double @llvm.fmuladd.f64(double %386, double 0x4095408888888889, double %384)
  %388 = fmul double %127, %224
  %389 = fsub double -0.000000e+00, %388
  %390 = tail call double @llvm.fmuladd.f64(double %364, double %349, double %389)
  %391 = bitcast i64 %182 to double
  %392 = fsub double %391, %357
  %393 = bitcast i64 %93 to double
  %394 = fsub double %392, %393
  %395 = fadd double %143, %394
  %396 = tail call double @llvm.fmuladd.f64(double %395, double 4.000000e-01, double %390)
  %397 = tail call double @llvm.fmuladd.f64(double %396, double -5.050000e+01, double %387)
  %398 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 2, i64 %45, i64 3
  %399 = load double, double* %398, align 8, !tbaa !8
  %400 = bitcast i64 %179 to double
  %401 = tail call double @llvm.fmuladd.f64(double %243, double -2.000000e+00, double %400)
  %402 = fadd double %401, %244
  %403 = tail call double @llvm.fmuladd.f64(double %402, double 7.650750e+03, double %399)
  %404 = tail call double @llvm.fmuladd.f64(double %188, double -2.000000e+00, double %351)
  %405 = fadd double %131, %404
  %406 = tail call double @llvm.fmuladd.f64(double %405, double 0x408FE0CCCCCCCCCE, double %403)
  %407 = fmul double %127, %244
  %408 = fsub double -0.000000e+00, %407
  %409 = tail call double @llvm.fmuladd.f64(double %400, double %349, double %408)
  %410 = tail call double @llvm.fmuladd.f64(double %409, double -5.050000e+01, double %406)
  %411 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 2, i64 %45, i64 4
  %412 = load double, double* %411, align 8, !tbaa !8
  %413 = tail call double @llvm.fmuladd.f64(double %234, double -2.000000e+00, double %391)
  %414 = fadd double %413, %393
  %415 = tail call double @llvm.fmuladd.f64(double %414, double 7.650750e+03, double %412)
  %416 = tail call double @llvm.fmuladd.f64(double %190, double -2.000000e+00, double %353)
  %417 = fadd double %135, %416
  %418 = tail call double @llvm.fmuladd.f64(double %417, double 0xC08E9A5E353F7CEC, double %415)
  %419 = fmul double %186, 2.000000e+00
  %420 = fmul double %186, %419
  %421 = fsub double -0.000000e+00, %420
  %422 = tail call double @llvm.fmuladd.f64(double %349, double %349, double %421)
  %423 = tail call double @llvm.fmuladd.f64(double %127, double %127, double %422)
  %424 = tail call double @llvm.fmuladd.f64(double %423, double 0x4065408888888889, double %418)
  %425 = fmul double %234, 2.000000e+00
  %426 = fmul double %192, %425
  %427 = fsub double -0.000000e+00, %426
  %428 = tail call double @llvm.fmuladd.f64(double %391, double %355, double %427)
  %429 = tail call double @llvm.fmuladd.f64(double %393, double %139, double %428)
  %430 = tail call double @llvm.fmuladd.f64(double %429, double 0x409F3D95810624DD, double %424)
  %431 = fmul double %357, 4.000000e-01
  %432 = fsub double -0.000000e+00, %431
  %433 = tail call double @llvm.fmuladd.f64(double %391, double 1.400000e+00, double %432)
  %434 = fmul double %143, 4.000000e-01
  %435 = fsub double -0.000000e+00, %434
  %436 = tail call double @llvm.fmuladd.f64(double %393, double 1.400000e+00, double %435)
  %437 = fmul double %127, %436
  %438 = fsub double -0.000000e+00, %437
  %439 = tail call double @llvm.fmuladd.f64(double %433, double %349, double %438)
  %440 = tail call double @llvm.fmuladd.f64(double %439, double -5.050000e+01, double %430)
  %441 = load double, double* %144, align 16, !tbaa !8
  %442 = load double, double* %49, align 16, !tbaa !8
  %443 = fmul double %442, 6.000000e+00
  %444 = tail call double @llvm.fmuladd.f64(double %441, double -4.000000e+00, double %443)
  %445 = load double, double* %74, align 16, !tbaa !8
  %446 = tail call double @llvm.fmuladd.f64(double %445, double -4.000000e+00, double %444)
  %447 = load double, double* %296, align 16, !tbaa !8
  %448 = fadd double %447, %446
  %449 = tail call double @llvm.fmuladd.f64(double %290, double %448, double %366)
  store double %449, double* %358, align 8, !tbaa !8
  %450 = load double, double* %148, align 8, !tbaa !8
  %451 = load double, double* %54, align 8, !tbaa !8
  %452 = fmul double %451, 6.000000e+00
  %453 = tail call double @llvm.fmuladd.f64(double %450, double -4.000000e+00, double %452)
  %454 = load double, double* %79, align 8, !tbaa !8
  %455 = tail call double @llvm.fmuladd.f64(double %454, double -4.000000e+00, double %453)
  %456 = load double, double* %103, align 8, !tbaa !8
  %457 = fadd double %456, %455
  %458 = tail call double @llvm.fmuladd.f64(double %290, double %457, double %379)
  store double %458, double* %367, align 8, !tbaa !8
  %459 = load double, double* %153, align 16, !tbaa !8
  %460 = load double, double* %59, align 16, !tbaa !8
  %461 = fmul double %460, 6.000000e+00
  %462 = tail call double @llvm.fmuladd.f64(double %459, double -4.000000e+00, double %461)
  %463 = load double, double* %84, align 16, !tbaa !8
  %464 = tail call double @llvm.fmuladd.f64(double %463, double -4.000000e+00, double %462)
  %465 = load double, double* %108, align 16, !tbaa !8
  %466 = fadd double %465, %464
  %467 = tail call double @llvm.fmuladd.f64(double %290, double %466, double %397)
  store double %467, double* %380, align 8, !tbaa !8
  %468 = load double, double* %158, align 8, !tbaa !8
  %469 = load double, double* %64, align 8, !tbaa !8
  %470 = fmul double %469, 6.000000e+00
  %471 = tail call double @llvm.fmuladd.f64(double %468, double -4.000000e+00, double %470)
  %472 = load double, double* %89, align 8, !tbaa !8
  %473 = tail call double @llvm.fmuladd.f64(double %472, double -4.000000e+00, double %471)
  %474 = load double, double* %113, align 8, !tbaa !8
  %475 = fadd double %474, %473
  %476 = tail call double @llvm.fmuladd.f64(double %290, double %475, double %410)
  store double %476, double* %398, align 8, !tbaa !8
  %477 = load double, double* %163, align 16, !tbaa !8
  %478 = fmul double %234, 6.000000e+00
  %479 = tail call double @llvm.fmuladd.f64(double %477, double -4.000000e+00, double %478)
  %480 = load double, double* %94, align 16, !tbaa !8
  %481 = tail call double @llvm.fmuladd.f64(double %480, double -4.000000e+00, double %479)
  %482 = load double, double* %118, align 16, !tbaa !8
  %483 = fadd double %482, %481
  %484 = tail call double @llvm.fmuladd.f64(double %290, double %483, double %440)
  store double %484, double* %411, align 8, !tbaa !8
  %485 = icmp slt i32 %9, 7
  %486 = bitcast double %441 to i64
  %487 = bitcast double %450 to i64
  %488 = bitcast double %459 to i64
  %489 = bitcast double %468 to i64
  %490 = bitcast double %477 to i64
  %491 = bitcast double %469 to i64
  %492 = bitcast double %480 to i64
  %493 = add i32 %9, -3
  br i1 %485, label %494, label %496

; <label>:494:                                    ; preds = %33
  %495 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  br label %691

; <label>:496:                                    ; preds = %33
  %497 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %498 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %499 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %500 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %501 = zext i32 %493 to i64
  br label %502

; <label>:502:                                    ; preds = %502, %496
  %503 = phi double [ %678, %502 ], [ %482, %496 ]
  %504 = phi double [ %670, %502 ], [ %474, %496 ]
  %505 = phi double [ %663, %502 ], [ %465, %496 ]
  %506 = phi double [ %656, %502 ], [ %456, %496 ]
  %507 = phi double [ %649, %502 ], [ %447, %496 ]
  %508 = phi i64 [ %689, %502 ], [ %492, %496 ]
  %509 = phi double [ %504, %502 ], [ %472, %496 ]
  %510 = phi double [ %505, %502 ], [ %463, %496 ]
  %511 = phi double [ %506, %502 ], [ %454, %496 ]
  %512 = phi double [ %507, %502 ], [ %445, %496 ]
  %513 = phi i64 [ %688, %502 ], [ %117, %496 ]
  %514 = phi i64 [ %687, %502 ], [ %491, %496 ]
  %515 = phi double [ %510, %502 ], [ %460, %496 ]
  %516 = phi double [ %511, %502 ], [ %451, %496 ]
  %517 = phi double [ %512, %502 ], [ %442, %496 ]
  %518 = phi i64 [ %686, %502 ], [ %490, %496 ]
  %519 = phi i64 [ %685, %502 ], [ %489, %496 ]
  %520 = phi i64 [ %684, %502 ], [ %488, %496 ]
  %521 = phi i64 [ %683, %502 ], [ %487, %496 ]
  %522 = phi i64 [ %682, %502 ], [ %486, %496 ]
  %523 = phi i64 [ %552, %502 ], [ 3, %496 ]
  %524 = phi double [ %525, %502 ], [ %184, %496 ]
  %525 = phi double [ %554, %502 ], [ %347, %496 ]
  %526 = phi double [ %527, %502 ], [ %186, %496 ]
  %527 = phi double [ %556, %502 ], [ %349, %496 ]
  %528 = phi double [ %564, %502 ], [ %357, %496 ]
  %529 = phi double [ %528, %502 ], [ %194, %496 ]
  %530 = phi double [ %562, %502 ], [ %355, %496 ]
  %531 = phi double [ %530, %502 ], [ %192, %496 ]
  %532 = phi double [ %560, %502 ], [ %353, %496 ]
  %533 = phi double [ %532, %502 ], [ %190, %496 ]
  %534 = phi double [ %558, %502 ], [ %351, %496 ]
  %535 = phi double [ %534, %502 ], [ %188, %496 ]
  store i64 %522, i64* %147, align 16, !tbaa !8
  store i64 %521, i64* %152, align 8, !tbaa !8
  store i64 %520, i64* %157, align 16, !tbaa !8
  store i64 %519, i64* %162, align 8, !tbaa !8
  store i64 %518, i64* %167, align 16, !tbaa !8
  store i64 %514, i64* %159, align 8, !tbaa !8
  store i64 %513, i64* %164, align 16, !tbaa !8
  store i64 %508, i64* %70, align 16, !tbaa !8
  %536 = add nuw nsw i64 %523, 2
  %537 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %536, i64 %45
  %538 = bitcast [5 x double]* %537 to i64*
  %539 = load i64, i64* %538, align 8, !tbaa !8
  store i64 %539, i64* %99, align 16, !tbaa !8
  %540 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %536, i64 %45, i64 1
  %541 = bitcast double* %540 to i64*
  %542 = load i64, i64* %541, align 8, !tbaa !8
  store i64 %542, i64* %104, align 8, !tbaa !8
  %543 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %536, i64 %45, i64 2
  %544 = bitcast double* %543 to i64*
  %545 = load i64, i64* %544, align 8, !tbaa !8
  store i64 %545, i64* %109, align 16, !tbaa !8
  %546 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %536, i64 %45, i64 3
  %547 = bitcast double* %546 to i64*
  %548 = load i64, i64* %547, align 8, !tbaa !8
  store i64 %548, i64* %114, align 8, !tbaa !8
  %549 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %536, i64 %45, i64 4
  %550 = bitcast double* %549 to i64*
  %551 = load i64, i64* %550, align 8, !tbaa !8
  store i64 %551, i64* %119, align 16, !tbaa !8
  %552 = add nuw nsw i64 %523, 1
  %553 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 %552, i64 %45
  %554 = load double, double* %553, align 8, !tbaa !8
  %555 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 %552, i64 %45
  %556 = load double, double* %555, align 8, !tbaa !8
  %557 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 %552, i64 %45
  %558 = load double, double* %557, align 8, !tbaa !8
  %559 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 %552, i64 %45
  %560 = load double, double* %559, align 8, !tbaa !8
  %561 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 %552, i64 %45
  %562 = load double, double* %561, align 8, !tbaa !8
  %563 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 %552, i64 %45
  %564 = load double, double* %563, align 8, !tbaa !8
  %565 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %523, i64 %45, i64 0
  %566 = load double, double* %565, align 8, !tbaa !8
  %567 = tail call double @llvm.fmuladd.f64(double %512, double -2.000000e+00, double %507)
  %568 = fadd double %567, %517
  %569 = tail call double @llvm.fmuladd.f64(double %568, double 7.650750e+03, double %566)
  %570 = fsub double %505, %515
  %571 = tail call double @llvm.fmuladd.f64(double %570, double -5.050000e+01, double %569)
  %572 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %523, i64 %45, i64 1
  %573 = load double, double* %572, align 8, !tbaa !8
  %574 = tail call double @llvm.fmuladd.f64(double %511, double -2.000000e+00, double %506)
  %575 = fadd double %574, %516
  %576 = tail call double @llvm.fmuladd.f64(double %575, double 7.650750e+03, double %573)
  %577 = tail call double @llvm.fmuladd.f64(double %525, double -2.000000e+00, double %554)
  %578 = fadd double %524, %577
  %579 = tail call double @llvm.fmuladd.f64(double %578, double 0x408FE0CCCCCCCCCE, double %576)
  %580 = fmul double %526, %516
  %581 = fsub double -0.000000e+00, %580
  %582 = tail call double @llvm.fmuladd.f64(double %506, double %556, double %581)
  %583 = tail call double @llvm.fmuladd.f64(double %582, double -5.050000e+01, double %579)
  %584 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %523, i64 %45, i64 2
  %585 = load double, double* %584, align 8, !tbaa !8
  %586 = tail call double @llvm.fmuladd.f64(double %510, double -2.000000e+00, double %505)
  %587 = fadd double %515, %586
  %588 = tail call double @llvm.fmuladd.f64(double %587, double 7.650750e+03, double %585)
  %589 = tail call double @llvm.fmuladd.f64(double %527, double -2.000000e+00, double %556)
  %590 = fadd double %526, %589
  %591 = tail call double @llvm.fmuladd.f64(double %590, double 0x4095408888888889, double %588)
  %592 = fmul double %526, %515
  %593 = fsub double -0.000000e+00, %592
  %594 = tail call double @llvm.fmuladd.f64(double %505, double %556, double %593)
  %595 = fsub double %503, %564
  %596 = bitcast i64 %513 to double
  %597 = fsub double %595, %596
  %598 = fadd double %529, %597
  %599 = tail call double @llvm.fmuladd.f64(double %598, double 4.000000e-01, double %594)
  %600 = tail call double @llvm.fmuladd.f64(double %599, double -5.050000e+01, double %591)
  %601 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %523, i64 %45, i64 3
  %602 = load double, double* %601, align 8, !tbaa !8
  %603 = tail call double @llvm.fmuladd.f64(double %509, double -2.000000e+00, double %504)
  %604 = load double, double* %158, align 8, !tbaa !8
  %605 = fadd double %603, %604
  %606 = tail call double @llvm.fmuladd.f64(double %605, double 7.650750e+03, double %602)
  %607 = tail call double @llvm.fmuladd.f64(double %534, double -2.000000e+00, double %558)
  %608 = fadd double %535, %607
  %609 = tail call double @llvm.fmuladd.f64(double %608, double 0x408FE0CCCCCCCCCE, double %606)
  %610 = fmul double %526, %604
  %611 = fsub double -0.000000e+00, %610
  %612 = tail call double @llvm.fmuladd.f64(double %504, double %556, double %611)
  %613 = tail call double @llvm.fmuladd.f64(double %612, double -5.050000e+01, double %609)
  %614 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %523, i64 %45, i64 4
  %615 = load double, double* %614, align 8, !tbaa !8
  %616 = load double, double* %69, align 16, !tbaa !8
  %617 = tail call double @llvm.fmuladd.f64(double %616, double -2.000000e+00, double %503)
  %618 = fadd double %617, %596
  %619 = tail call double @llvm.fmuladd.f64(double %618, double 7.650750e+03, double %615)
  %620 = tail call double @llvm.fmuladd.f64(double %532, double -2.000000e+00, double %560)
  %621 = fadd double %533, %620
  %622 = tail call double @llvm.fmuladd.f64(double %621, double 0xC08E9A5E353F7CEC, double %619)
  %623 = fmul double %527, 2.000000e+00
  %624 = fmul double %527, %623
  %625 = fsub double -0.000000e+00, %624
  %626 = tail call double @llvm.fmuladd.f64(double %556, double %556, double %625)
  %627 = tail call double @llvm.fmuladd.f64(double %526, double %526, double %626)
  %628 = tail call double @llvm.fmuladd.f64(double %627, double 0x4065408888888889, double %622)
  %629 = fmul double %616, 2.000000e+00
  %630 = fmul double %530, %629
  %631 = fsub double -0.000000e+00, %630
  %632 = tail call double @llvm.fmuladd.f64(double %503, double %562, double %631)
  %633 = tail call double @llvm.fmuladd.f64(double %596, double %531, double %632)
  %634 = tail call double @llvm.fmuladd.f64(double %633, double 0x409F3D95810624DD, double %628)
  %635 = fmul double %564, 4.000000e-01
  %636 = fsub double -0.000000e+00, %635
  %637 = tail call double @llvm.fmuladd.f64(double %503, double 1.400000e+00, double %636)
  %638 = fmul double %529, 4.000000e-01
  %639 = fsub double -0.000000e+00, %638
  %640 = tail call double @llvm.fmuladd.f64(double %596, double 1.400000e+00, double %639)
  %641 = fmul double %526, %640
  %642 = fsub double -0.000000e+00, %641
  %643 = tail call double @llvm.fmuladd.f64(double %637, double %556, double %642)
  %644 = tail call double @llvm.fmuladd.f64(double %643, double -5.050000e+01, double %634)
  %645 = load double, double* %500, align 16, !tbaa !8
  %646 = tail call double @llvm.fmuladd.f64(double %517, double -4.000000e+00, double %645)
  %647 = tail call double @llvm.fmuladd.f64(double %512, double 6.000000e+00, double %646)
  %648 = tail call double @llvm.fmuladd.f64(double %507, double -4.000000e+00, double %647)
  %649 = load double, double* %296, align 16, !tbaa !8
  %650 = fadd double %648, %649
  %651 = tail call double @llvm.fmuladd.f64(double %290, double %650, double %571)
  store double %651, double* %565, align 8, !tbaa !8
  %652 = load double, double* %151, align 8, !tbaa !8
  %653 = tail call double @llvm.fmuladd.f64(double %516, double -4.000000e+00, double %652)
  %654 = tail call double @llvm.fmuladd.f64(double %511, double 6.000000e+00, double %653)
  %655 = tail call double @llvm.fmuladd.f64(double %506, double -4.000000e+00, double %654)
  %656 = load double, double* %103, align 8, !tbaa !8
  %657 = fadd double %655, %656
  %658 = tail call double @llvm.fmuladd.f64(double %290, double %657, double %583)
  store double %658, double* %572, align 8, !tbaa !8
  %659 = load double, double* %156, align 16, !tbaa !8
  %660 = tail call double @llvm.fmuladd.f64(double %515, double -4.000000e+00, double %659)
  %661 = tail call double @llvm.fmuladd.f64(double %510, double 6.000000e+00, double %660)
  %662 = tail call double @llvm.fmuladd.f64(double %505, double -4.000000e+00, double %661)
  %663 = load double, double* %108, align 16, !tbaa !8
  %664 = fadd double %662, %663
  %665 = tail call double @llvm.fmuladd.f64(double %290, double %664, double %600)
  store double %665, double* %584, align 8, !tbaa !8
  %666 = load double, double* %161, align 8, !tbaa !8
  %667 = tail call double @llvm.fmuladd.f64(double %604, double -4.000000e+00, double %666)
  %668 = tail call double @llvm.fmuladd.f64(double %509, double 6.000000e+00, double %667)
  %669 = tail call double @llvm.fmuladd.f64(double %504, double -4.000000e+00, double %668)
  %670 = load double, double* %113, align 8, !tbaa !8
  %671 = fadd double %669, %670
  %672 = tail call double @llvm.fmuladd.f64(double %290, double %671, double %613)
  store double %672, double* %601, align 8, !tbaa !8
  %673 = load double, double* %166, align 16, !tbaa !8
  %674 = load double, double* %163, align 16, !tbaa !8
  %675 = tail call double @llvm.fmuladd.f64(double %674, double -4.000000e+00, double %673)
  %676 = tail call double @llvm.fmuladd.f64(double %616, double 6.000000e+00, double %675)
  %677 = tail call double @llvm.fmuladd.f64(double %503, double -4.000000e+00, double %676)
  %678 = load double, double* %118, align 16, !tbaa !8
  %679 = fadd double %677, %678
  %680 = tail call double @llvm.fmuladd.f64(double %290, double %679, double %644)
  store double %680, double* %614, align 8, !tbaa !8
  %681 = icmp eq i64 %552, %501
  %682 = bitcast double %517 to i64
  %683 = bitcast double %516 to i64
  %684 = bitcast double %515 to i64
  %685 = bitcast double %604 to i64
  %686 = bitcast double %674 to i64
  %687 = bitcast double %509 to i64
  %688 = bitcast double %616 to i64
  %689 = bitcast double %503 to i64
  br i1 %681, label %690, label %502

; <label>:690:                                    ; preds = %502
  store double %517, double* %497, align 16, !tbaa !8
  store double %516, double* %148, align 8, !tbaa !8
  store double %515, double* %153, align 16, !tbaa !8
  store double %512, double* %498, align 16, !tbaa !8
  store double %511, double* %54, align 8, !tbaa !8
  store double %510, double* %59, align 16, !tbaa !8
  store double %509, double* %64, align 8, !tbaa !8
  store double %507, double* %499, align 16, !tbaa !8
  store double %506, double* %79, align 8, !tbaa !8
  store double %505, double* %84, align 16, !tbaa !8
  store double %504, double* %89, align 8, !tbaa !8
  store double %503, double* %94, align 16, !tbaa !8
  br label %691

; <label>:691:                                    ; preds = %690, %494
  %692 = phi double* [ %495, %494 ], [ %500, %690 ]
  %693 = phi double [ %482, %494 ], [ %678, %690 ]
  %694 = phi double [ %474, %494 ], [ %670, %690 ]
  %695 = phi double [ %465, %494 ], [ %663, %690 ]
  %696 = phi double [ %456, %494 ], [ %656, %690 ]
  %697 = phi double [ %447, %494 ], [ %649, %690 ]
  %698 = phi double [ %480, %494 ], [ %503, %690 ]
  %699 = phi i64 [ %492, %494 ], [ %689, %690 ]
  %700 = phi double [ %472, %494 ], [ %504, %690 ]
  %701 = phi double [ %463, %494 ], [ %505, %690 ]
  %702 = phi double [ %454, %494 ], [ %506, %690 ]
  %703 = phi double [ %445, %494 ], [ %507, %690 ]
  %704 = phi i64 [ %117, %494 ], [ %688, %690 ]
  %705 = phi i64 [ %491, %494 ], [ %687, %690 ]
  %706 = phi double [ %460, %494 ], [ %510, %690 ]
  %707 = phi double [ %451, %494 ], [ %511, %690 ]
  %708 = phi double [ %442, %494 ], [ %512, %690 ]
  %709 = phi i64 [ %490, %494 ], [ %686, %690 ]
  %710 = phi i64 [ %489, %494 ], [ %685, %690 ]
  %711 = phi i64 [ %488, %494 ], [ %684, %690 ]
  %712 = phi i64 [ %487, %494 ], [ %683, %690 ]
  %713 = phi i64 [ %486, %494 ], [ %682, %690 ]
  %714 = phi double [ %188, %494 ], [ %534, %690 ]
  %715 = phi double [ %351, %494 ], [ %558, %690 ]
  %716 = phi double [ %190, %494 ], [ %532, %690 ]
  %717 = phi double [ %353, %494 ], [ %560, %690 ]
  %718 = phi double [ %192, %494 ], [ %530, %690 ]
  %719 = phi double [ %355, %494 ], [ %562, %690 ]
  %720 = phi double [ %194, %494 ], [ %528, %690 ]
  %721 = phi double [ %357, %494 ], [ %564, %690 ]
  %722 = phi double [ %349, %494 ], [ %556, %690 ]
  %723 = phi double [ %186, %494 ], [ %527, %690 ]
  %724 = phi double [ %347, %494 ], [ %554, %690 ]
  %725 = phi double [ %184, %494 ], [ %525, %690 ]
  store i64 %713, i64* %147, align 16, !tbaa !8
  store i64 %712, i64* %152, align 8, !tbaa !8
  store i64 %711, i64* %157, align 16, !tbaa !8
  store i64 %710, i64* %162, align 8, !tbaa !8
  store i64 %709, i64* %167, align 16, !tbaa !8
  %726 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %708, double* %726, align 16, !tbaa !8
  store double %707, double* %148, align 8, !tbaa !8
  store double %706, double* %153, align 16, !tbaa !8
  store i64 %705, i64* %159, align 8, !tbaa !8
  store i64 %704, i64* %164, align 16, !tbaa !8
  %727 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %703, double* %727, align 16, !tbaa !8
  store double %702, double* %54, align 8, !tbaa !8
  store double %701, double* %59, align 16, !tbaa !8
  store double %700, double* %64, align 8, !tbaa !8
  store double %698, double* %69, align 16, !tbaa !8
  %728 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  store double %697, double* %728, align 16, !tbaa !8
  store double %696, double* %79, align 8, !tbaa !8
  store double %695, double* %84, align 16, !tbaa !8
  store double %694, double* %89, align 8, !tbaa !8
  store double %693, double* %94, align 16, !tbaa !8
  %729 = add nsw i32 %9, -1
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %730, i64 %45
  %732 = bitcast [5 x double]* %731 to i64*
  %733 = load i64, i64* %732, align 8, !tbaa !8
  store i64 %733, i64* %99, align 16, !tbaa !8
  %734 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %730, i64 %45, i64 1
  %735 = bitcast double* %734 to i64*
  %736 = load i64, i64* %735, align 8, !tbaa !8
  store i64 %736, i64* %104, align 8, !tbaa !8
  %737 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %730, i64 %45, i64 2
  %738 = bitcast double* %737 to i64*
  %739 = load i64, i64* %738, align 8, !tbaa !8
  store i64 %739, i64* %109, align 16, !tbaa !8
  %740 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %730, i64 %45, i64 3
  %741 = bitcast double* %740 to i64*
  %742 = load i64, i64* %741, align 8, !tbaa !8
  store i64 %742, i64* %114, align 8, !tbaa !8
  %743 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %40, i64 %43, i64 %730, i64 %45, i64 4
  %744 = bitcast double* %743 to i64*
  %745 = load i64, i64* %744, align 8, !tbaa !8
  store i64 %745, i64* %119, align 16, !tbaa !8
  %746 = add nsw i32 %9, -2
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 %747, i64 %45
  %749 = load double, double* %748, align 8, !tbaa !8
  %750 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 %747, i64 %45
  %751 = load double, double* %750, align 8, !tbaa !8
  %752 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 %747, i64 %45
  %753 = load double, double* %752, align 8, !tbaa !8
  %754 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 %747, i64 %45
  %755 = load double, double* %754, align 8, !tbaa !8
  %756 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 %747, i64 %45
  %757 = load double, double* %756, align 8, !tbaa !8
  %758 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 %747, i64 %45
  %759 = load double, double* %758, align 8, !tbaa !8
  %760 = sext i32 %493 to i64
  %761 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %760, i64 %45, i64 0
  %762 = load double, double* %761, align 8, !tbaa !8
  %763 = tail call double @llvm.fmuladd.f64(double %703, double -2.000000e+00, double %697)
  %764 = fadd double %763, %708
  %765 = tail call double @llvm.fmuladd.f64(double %764, double 7.650750e+03, double %762)
  %766 = fsub double %695, %706
  %767 = tail call double @llvm.fmuladd.f64(double %766, double -5.050000e+01, double %765)
  %768 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %760, i64 %45, i64 1
  %769 = load double, double* %768, align 8, !tbaa !8
  %770 = tail call double @llvm.fmuladd.f64(double %702, double -2.000000e+00, double %696)
  %771 = fadd double %770, %707
  %772 = tail call double @llvm.fmuladd.f64(double %771, double 7.650750e+03, double %769)
  %773 = tail call double @llvm.fmuladd.f64(double %724, double -2.000000e+00, double %749)
  %774 = fadd double %725, %773
  %775 = tail call double @llvm.fmuladd.f64(double %774, double 0x408FE0CCCCCCCCCE, double %772)
  %776 = fmul double %723, %707
  %777 = fsub double -0.000000e+00, %776
  %778 = tail call double @llvm.fmuladd.f64(double %696, double %751, double %777)
  %779 = tail call double @llvm.fmuladd.f64(double %778, double -5.050000e+01, double %775)
  %780 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %760, i64 %45, i64 2
  %781 = load double, double* %780, align 8, !tbaa !8
  %782 = tail call double @llvm.fmuladd.f64(double %701, double -2.000000e+00, double %695)
  %783 = fadd double %706, %782
  %784 = tail call double @llvm.fmuladd.f64(double %783, double 7.650750e+03, double %781)
  %785 = tail call double @llvm.fmuladd.f64(double %722, double -2.000000e+00, double %751)
  %786 = fadd double %723, %785
  %787 = tail call double @llvm.fmuladd.f64(double %786, double 0x4095408888888889, double %784)
  %788 = fmul double %723, %706
  %789 = fsub double -0.000000e+00, %788
  %790 = tail call double @llvm.fmuladd.f64(double %695, double %751, double %789)
  %791 = fsub double %693, %759
  %792 = bitcast i64 %704 to double
  %793 = fsub double %791, %792
  %794 = fadd double %720, %793
  %795 = tail call double @llvm.fmuladd.f64(double %794, double 4.000000e-01, double %790)
  %796 = tail call double @llvm.fmuladd.f64(double %795, double -5.050000e+01, double %787)
  %797 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %760, i64 %45, i64 3
  %798 = load double, double* %797, align 8, !tbaa !8
  %799 = tail call double @llvm.fmuladd.f64(double %700, double -2.000000e+00, double %694)
  %800 = load double, double* %158, align 8, !tbaa !8
  %801 = fadd double %799, %800
  %802 = tail call double @llvm.fmuladd.f64(double %801, double 7.650750e+03, double %798)
  %803 = tail call double @llvm.fmuladd.f64(double %715, double -2.000000e+00, double %753)
  %804 = fadd double %714, %803
  %805 = tail call double @llvm.fmuladd.f64(double %804, double 0x408FE0CCCCCCCCCE, double %802)
  %806 = fmul double %723, %800
  %807 = fsub double -0.000000e+00, %806
  %808 = tail call double @llvm.fmuladd.f64(double %694, double %751, double %807)
  %809 = tail call double @llvm.fmuladd.f64(double %808, double -5.050000e+01, double %805)
  %810 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %760, i64 %45, i64 4
  %811 = load double, double* %810, align 8, !tbaa !8
  %812 = load double, double* %69, align 16, !tbaa !8
  %813 = tail call double @llvm.fmuladd.f64(double %812, double -2.000000e+00, double %693)
  %814 = fadd double %813, %792
  %815 = tail call double @llvm.fmuladd.f64(double %814, double 7.650750e+03, double %811)
  %816 = tail call double @llvm.fmuladd.f64(double %717, double -2.000000e+00, double %755)
  %817 = fadd double %716, %816
  %818 = tail call double @llvm.fmuladd.f64(double %817, double 0xC08E9A5E353F7CEC, double %815)
  %819 = fmul double %722, 2.000000e+00
  %820 = fmul double %722, %819
  %821 = fsub double -0.000000e+00, %820
  %822 = tail call double @llvm.fmuladd.f64(double %751, double %751, double %821)
  %823 = tail call double @llvm.fmuladd.f64(double %723, double %723, double %822)
  %824 = tail call double @llvm.fmuladd.f64(double %823, double 0x4065408888888889, double %818)
  %825 = fmul double %812, 2.000000e+00
  %826 = fmul double %719, %825
  %827 = fsub double -0.000000e+00, %826
  %828 = tail call double @llvm.fmuladd.f64(double %693, double %757, double %827)
  %829 = tail call double @llvm.fmuladd.f64(double %792, double %718, double %828)
  %830 = tail call double @llvm.fmuladd.f64(double %829, double 0x409F3D95810624DD, double %824)
  %831 = fmul double %759, 4.000000e-01
  %832 = fsub double -0.000000e+00, %831
  %833 = tail call double @llvm.fmuladd.f64(double %693, double 1.400000e+00, double %832)
  %834 = fmul double %720, 4.000000e-01
  %835 = fsub double -0.000000e+00, %834
  %836 = tail call double @llvm.fmuladd.f64(double %792, double 1.400000e+00, double %835)
  %837 = fmul double %723, %836
  %838 = fsub double -0.000000e+00, %837
  %839 = tail call double @llvm.fmuladd.f64(double %833, double %751, double %838)
  %840 = tail call double @llvm.fmuladd.f64(double %839, double -5.050000e+01, double %830)
  %841 = load double, double* %692, align 8, !tbaa !8
  %842 = load double, double* %144, align 16, !tbaa !8
  %843 = tail call double @llvm.fmuladd.f64(double %842, double -4.000000e+00, double %841)
  %844 = load double, double* %49, align 16, !tbaa !8
  %845 = tail call double @llvm.fmuladd.f64(double %844, double 6.000000e+00, double %843)
  %846 = load double, double* %74, align 16, !tbaa !8
  %847 = tail call double @llvm.fmuladd.f64(double %846, double -4.000000e+00, double %845)
  %848 = tail call double @llvm.fmuladd.f64(double %290, double %847, double %767)
  store double %848, double* %761, align 8, !tbaa !8
  %849 = load double, double* %151, align 8, !tbaa !8
  %850 = load double, double* %148, align 8, !tbaa !8
  %851 = tail call double @llvm.fmuladd.f64(double %850, double -4.000000e+00, double %849)
  %852 = load double, double* %54, align 8, !tbaa !8
  %853 = tail call double @llvm.fmuladd.f64(double %852, double 6.000000e+00, double %851)
  %854 = load double, double* %79, align 8, !tbaa !8
  %855 = tail call double @llvm.fmuladd.f64(double %854, double -4.000000e+00, double %853)
  %856 = tail call double @llvm.fmuladd.f64(double %290, double %855, double %779)
  store double %856, double* %768, align 8, !tbaa !8
  %857 = load double, double* %156, align 16, !tbaa !8
  %858 = load double, double* %153, align 16, !tbaa !8
  %859 = tail call double @llvm.fmuladd.f64(double %858, double -4.000000e+00, double %857)
  %860 = load double, double* %59, align 16, !tbaa !8
  %861 = tail call double @llvm.fmuladd.f64(double %860, double 6.000000e+00, double %859)
  %862 = load double, double* %84, align 16, !tbaa !8
  %863 = tail call double @llvm.fmuladd.f64(double %862, double -4.000000e+00, double %861)
  %864 = tail call double @llvm.fmuladd.f64(double %290, double %863, double %796)
  store double %864, double* %780, align 8, !tbaa !8
  %865 = load double, double* %161, align 8, !tbaa !8
  %866 = tail call double @llvm.fmuladd.f64(double %800, double -4.000000e+00, double %865)
  %867 = load double, double* %64, align 8, !tbaa !8
  %868 = tail call double @llvm.fmuladd.f64(double %867, double 6.000000e+00, double %866)
  %869 = load double, double* %89, align 8, !tbaa !8
  %870 = tail call double @llvm.fmuladd.f64(double %869, double -4.000000e+00, double %868)
  %871 = tail call double @llvm.fmuladd.f64(double %290, double %870, double %809)
  store double %871, double* %797, align 8, !tbaa !8
  %872 = load double, double* %166, align 16, !tbaa !8
  %873 = load double, double* %163, align 16, !tbaa !8
  %874 = tail call double @llvm.fmuladd.f64(double %873, double -4.000000e+00, double %872)
  %875 = tail call double @llvm.fmuladd.f64(double %812, double 6.000000e+00, double %874)
  %876 = load double, double* %94, align 16, !tbaa !8
  %877 = tail call double @llvm.fmuladd.f64(double %876, double -4.000000e+00, double %875)
  %878 = tail call double @llvm.fmuladd.f64(double %290, double %877, double %840)
  store double %878, double* %810, align 8, !tbaa !8
  %879 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  store double %708, double* %879, align 16, !tbaa !8
  store double %707, double* %151, align 8, !tbaa !8
  store double %706, double* %156, align 16, !tbaa !8
  store i64 %705, i64* %162, align 8, !tbaa !8
  store i64 %704, i64* %167, align 16, !tbaa !8
  %880 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %703, double* %880, align 16, !tbaa !8
  store double %702, double* %148, align 8, !tbaa !8
  store double %701, double* %153, align 16, !tbaa !8
  store double %700, double* %158, align 8, !tbaa !8
  store i64 %699, i64* %164, align 16, !tbaa !8
  %881 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %697, double* %881, align 16, !tbaa !8
  store double %696, double* %54, align 8, !tbaa !8
  store double %695, double* %59, align 16, !tbaa !8
  store double %694, double* %64, align 8, !tbaa !8
  store double %693, double* %69, align 16, !tbaa !8
  store i64 %733, i64* %75, align 16, !tbaa !8
  store i64 %736, i64* %80, align 8, !tbaa !8
  store i64 %739, i64* %85, align 16, !tbaa !8
  store i64 %742, i64* %90, align 8, !tbaa !8
  store i64 %745, i64* %95, align 16, !tbaa !8
  %882 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %34, i64 %43, i64 %730, i64 %45
  %883 = load double, double* %882, align 8, !tbaa !8
  %884 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %35, i64 %43, i64 %730, i64 %45
  %885 = load double, double* %884, align 8, !tbaa !8
  %886 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %36, i64 %43, i64 %730, i64 %45
  %887 = load double, double* %886, align 8, !tbaa !8
  %888 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %37, i64 %43, i64 %730, i64 %45
  %889 = load double, double* %888, align 8, !tbaa !8
  %890 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %38, i64 %43, i64 %730, i64 %45
  %891 = load double, double* %890, align 8, !tbaa !8
  %892 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %39, i64 %43, i64 %730, i64 %45
  %893 = load double, double* %892, align 8, !tbaa !8
  %894 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %747, i64 %45, i64 0
  %895 = load double, double* %894, align 8, !tbaa !8
  %896 = bitcast i64 %733 to double
  %897 = tail call double @llvm.fmuladd.f64(double %697, double -2.000000e+00, double %896)
  %898 = fadd double %897, %703
  %899 = tail call double @llvm.fmuladd.f64(double %898, double 7.650750e+03, double %895)
  %900 = bitcast i64 %739 to double
  %901 = fsub double %900, %701
  %902 = tail call double @llvm.fmuladd.f64(double %901, double -5.050000e+01, double %899)
  %903 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %747, i64 %45, i64 1
  %904 = load double, double* %903, align 8, !tbaa !8
  %905 = bitcast i64 %736 to double
  %906 = tail call double @llvm.fmuladd.f64(double %696, double -2.000000e+00, double %905)
  %907 = fadd double %906, %702
  %908 = tail call double @llvm.fmuladd.f64(double %907, double 7.650750e+03, double %904)
  %909 = tail call double @llvm.fmuladd.f64(double %749, double -2.000000e+00, double %883)
  %910 = fadd double %724, %909
  %911 = tail call double @llvm.fmuladd.f64(double %910, double 0x408FE0CCCCCCCCCE, double %908)
  %912 = fmul double %722, %702
  %913 = fsub double -0.000000e+00, %912
  %914 = tail call double @llvm.fmuladd.f64(double %905, double %885, double %913)
  %915 = tail call double @llvm.fmuladd.f64(double %914, double -5.050000e+01, double %911)
  %916 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %747, i64 %45, i64 2
  %917 = load double, double* %916, align 8, !tbaa !8
  %918 = tail call double @llvm.fmuladd.f64(double %695, double -2.000000e+00, double %900)
  %919 = fadd double %701, %918
  %920 = tail call double @llvm.fmuladd.f64(double %919, double 7.650750e+03, double %917)
  %921 = tail call double @llvm.fmuladd.f64(double %751, double -2.000000e+00, double %885)
  %922 = fadd double %722, %921
  %923 = tail call double @llvm.fmuladd.f64(double %922, double 0x4095408888888889, double %920)
  %924 = fmul double %722, %701
  %925 = fsub double -0.000000e+00, %924
  %926 = tail call double @llvm.fmuladd.f64(double %900, double %885, double %925)
  %927 = bitcast i64 %745 to double
  %928 = fsub double %927, %893
  %929 = fsub double %928, %698
  %930 = fadd double %721, %929
  %931 = tail call double @llvm.fmuladd.f64(double %930, double 4.000000e-01, double %926)
  %932 = tail call double @llvm.fmuladd.f64(double %931, double -5.050000e+01, double %923)
  %933 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %747, i64 %45, i64 3
  %934 = load double, double* %933, align 8, !tbaa !8
  %935 = bitcast i64 %742 to double
  %936 = tail call double @llvm.fmuladd.f64(double %694, double -2.000000e+00, double %935)
  %937 = fadd double %936, %700
  %938 = tail call double @llvm.fmuladd.f64(double %937, double 7.650750e+03, double %934)
  %939 = tail call double @llvm.fmuladd.f64(double %753, double -2.000000e+00, double %887)
  %940 = fadd double %715, %939
  %941 = tail call double @llvm.fmuladd.f64(double %940, double 0x408FE0CCCCCCCCCE, double %938)
  %942 = fmul double %722, %700
  %943 = fsub double -0.000000e+00, %942
  %944 = tail call double @llvm.fmuladd.f64(double %935, double %885, double %943)
  %945 = tail call double @llvm.fmuladd.f64(double %944, double -5.050000e+01, double %941)
  %946 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %41, i64 %43, i64 %747, i64 %45, i64 4
  %947 = load double, double* %946, align 8, !tbaa !8
  %948 = tail call double @llvm.fmuladd.f64(double %693, double -2.000000e+00, double %927)
  %949 = fadd double %698, %948
  %950 = tail call double @llvm.fmuladd.f64(double %949, double 7.650750e+03, double %947)
  %951 = tail call double @llvm.fmuladd.f64(double %755, double -2.000000e+00, double %889)
  %952 = fadd double %717, %951
  %953 = tail call double @llvm.fmuladd.f64(double %952, double 0xC08E9A5E353F7CEC, double %950)
  %954 = fmul double %751, 2.000000e+00
  %955 = fmul double %751, %954
  %956 = fsub double -0.000000e+00, %955
  %957 = tail call double @llvm.fmuladd.f64(double %885, double %885, double %956)
  %958 = tail call double @llvm.fmuladd.f64(double %722, double %722, double %957)
  %959 = tail call double @llvm.fmuladd.f64(double %958, double 0x4065408888888889, double %953)
  %960 = fmul double %693, 2.000000e+00
  %961 = fmul double %757, %960
  %962 = fsub double -0.000000e+00, %961
  %963 = tail call double @llvm.fmuladd.f64(double %927, double %891, double %962)
  %964 = tail call double @llvm.fmuladd.f64(double %698, double %719, double %963)
  %965 = tail call double @llvm.fmuladd.f64(double %964, double 0x409F3D95810624DD, double %959)
  %966 = fmul double %893, 4.000000e-01
  %967 = fsub double -0.000000e+00, %966
  %968 = tail call double @llvm.fmuladd.f64(double %927, double 1.400000e+00, double %967)
  %969 = fmul double %721, 4.000000e-01
  %970 = fsub double -0.000000e+00, %969
  %971 = tail call double @llvm.fmuladd.f64(double %698, double 1.400000e+00, double %970)
  %972 = fmul double %722, %971
  %973 = fsub double -0.000000e+00, %972
  %974 = tail call double @llvm.fmuladd.f64(double %968, double %885, double %973)
  %975 = tail call double @llvm.fmuladd.f64(double %974, double -5.050000e+01, double %965)
  %976 = load double, double* %692, align 8, !tbaa !8
  %977 = load double, double* %144, align 16, !tbaa !8
  %978 = tail call double @llvm.fmuladd.f64(double %977, double -4.000000e+00, double %976)
  %979 = load double, double* %49, align 16, !tbaa !8
  %980 = tail call double @llvm.fmuladd.f64(double %979, double 5.000000e+00, double %978)
  %981 = tail call double @llvm.fmuladd.f64(double %290, double %980, double %902)
  store double %981, double* %894, align 8, !tbaa !8
  %982 = load double, double* %151, align 8, !tbaa !8
  %983 = load double, double* %148, align 8, !tbaa !8
  %984 = tail call double @llvm.fmuladd.f64(double %983, double -4.000000e+00, double %982)
  %985 = load double, double* %54, align 8, !tbaa !8
  %986 = tail call double @llvm.fmuladd.f64(double %985, double 5.000000e+00, double %984)
  %987 = tail call double @llvm.fmuladd.f64(double %290, double %986, double %915)
  store double %987, double* %903, align 8, !tbaa !8
  %988 = load double, double* %156, align 16, !tbaa !8
  %989 = load double, double* %153, align 16, !tbaa !8
  %990 = tail call double @llvm.fmuladd.f64(double %989, double -4.000000e+00, double %988)
  %991 = load double, double* %59, align 16, !tbaa !8
  %992 = tail call double @llvm.fmuladd.f64(double %991, double 5.000000e+00, double %990)
  %993 = tail call double @llvm.fmuladd.f64(double %290, double %992, double %932)
  store double %993, double* %916, align 8, !tbaa !8
  %994 = load double, double* %161, align 8, !tbaa !8
  %995 = load double, double* %158, align 8, !tbaa !8
  %996 = tail call double @llvm.fmuladd.f64(double %995, double -4.000000e+00, double %994)
  %997 = load double, double* %64, align 8, !tbaa !8
  %998 = tail call double @llvm.fmuladd.f64(double %997, double 5.000000e+00, double %996)
  %999 = tail call double @llvm.fmuladd.f64(double %290, double %998, double %945)
  store double %999, double* %933, align 8, !tbaa !8
  %1000 = load double, double* %166, align 16, !tbaa !8
  %1001 = load double, double* %163, align 16, !tbaa !8
  %1002 = tail call double @llvm.fmuladd.f64(double %1001, double -4.000000e+00, double %1000)
  %1003 = load double, double* %69, align 16, !tbaa !8
  %1004 = tail call double @llvm.fmuladd.f64(double %1003, double 5.000000e+00, double %1002)
  %1005 = tail call double @llvm.fmuladd.f64(double %290, double %1004, double %975)
  store double %1005, double* %946, align 8, !tbaa !8
  br label %1006

; <label>:1006:                                   ; preds = %691, %11, %29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind readnone
declare double @_Z3maxdd(double, double) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"const", !"const", !"const", !"const", !"const", !"const", !"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
