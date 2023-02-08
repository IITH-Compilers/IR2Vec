; ModuleID = 'npb-SP-compute_rhs3.cl'
source_filename = "npb-SP-compute_rhs3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_rhs3(double* readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
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
  %22 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %26 = add i64 %25, 1
  %27 = icmp sgt i32 %24, %10
  %28 = trunc i64 %26 to i32
  %29 = icmp sgt i32 %28, %9
  %30 = or i1 %27, %29
  br i1 %30, label %999, label %31

; <label>:31:                                     ; preds = %11
  %32 = bitcast double* %0 to [37 x [37 x [5 x double]]]*
  %33 = bitcast double* %1 to [37 x [37 x double]]*
  %34 = bitcast double* %2 to [37 x [37 x double]]*
  %35 = bitcast double* %3 to [37 x [37 x double]]*
  %36 = bitcast double* %4 to [37 x [37 x double]]*
  %37 = bitcast double* %5 to [37 x [37 x double]]*
  %38 = bitcast double* %6 to [37 x [37 x double]]*
  %39 = bitcast double* %7 to [37 x [37 x [5 x double]]]*
  %40 = shl i64 %23, 32
  %41 = ashr exact i64 %40, 32
  %42 = shl i64 %26, 32
  %43 = ashr exact i64 %42, 32
  %44 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43
  %45 = bitcast [37 x [5 x double]]* %44 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !8
  %47 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %48 = bitcast [5 x double]* %12 to i64*
  store i64 %46, i64* %48, align 16, !tbaa !8
  %49 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 0, i64 1
  %50 = bitcast double* %49 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !8
  %52 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 1
  %53 = bitcast double* %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !8
  %54 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 0, i64 2
  %55 = bitcast double* %54 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !8
  %57 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 2
  %58 = bitcast double* %57 to i64*
  store i64 %56, i64* %58, align 16, !tbaa !8
  %59 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 0, i64 3
  %60 = bitcast double* %59 to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !8
  %62 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 3
  %63 = bitcast double* %62 to i64*
  store i64 %61, i64* %63, align 8, !tbaa !8
  %64 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 0, i64 4
  %65 = bitcast double* %64 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !8
  %67 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 4
  %68 = bitcast double* %67 to i64*
  store i64 %66, i64* %68, align 16, !tbaa !8
  %69 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 1
  %70 = bitcast [5 x double]* %69 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !8
  %72 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %73 = bitcast [5 x double]* %13 to i64*
  store i64 %71, i64* %73, align 16, !tbaa !8
  %74 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 1, i64 1
  %75 = bitcast double* %74 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !8
  %77 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 1
  %78 = bitcast double* %77 to i64*
  store i64 %76, i64* %78, align 8, !tbaa !8
  %79 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 1, i64 2
  %80 = bitcast double* %79 to i64*
  %81 = load i64, i64* %80, align 8, !tbaa !8
  %82 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 2
  %83 = bitcast double* %82 to i64*
  store i64 %81, i64* %83, align 16, !tbaa !8
  %84 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 1, i64 3
  %85 = bitcast double* %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !8
  %87 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 3
  %88 = bitcast double* %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !8
  %89 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 1, i64 4
  %90 = bitcast double* %89 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 4
  %93 = bitcast double* %92 to i64*
  %94 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 2
  %95 = bitcast [5 x double]* %94 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !8
  %97 = bitcast [5 x double]* %14 to i64*
  %98 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 2, i64 1
  %99 = bitcast double* %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !8
  %101 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 1
  %102 = bitcast double* %101 to i64*
  %103 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 2, i64 2
  %104 = bitcast double* %103 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 2
  %107 = bitcast double* %106 to i64*
  %108 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 2, i64 3
  %109 = bitcast double* %108 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !8
  %111 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 3
  %112 = bitcast double* %111 to i64*
  %113 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 2, i64 4
  %114 = bitcast double* %113 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 4
  %117 = bitcast double* %116 to i64*
  %118 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 0
  %119 = load double, double* %118, align 8, !tbaa !8
  %120 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 1
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 0
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 1
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 0
  %127 = load double, double* %126, align 8, !tbaa !8
  %128 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 1
  %129 = load double, double* %128, align 8, !tbaa !8
  %130 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 0
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 1
  %133 = load double, double* %132, align 8, !tbaa !8
  %134 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 0
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 1
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 0
  %139 = load double, double* %138, align 8, !tbaa !8
  %140 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 1
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %143 = bitcast [5 x double]* %15 to i64*
  %144 = load i64, i64* %143, align 16, !tbaa !8
  %145 = bitcast [5 x double]* %16 to i64*
  store i64 %144, i64* %145, align 16, !tbaa !8
  %146 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 1
  %147 = bitcast double* %146 to i64*
  %148 = load i64, i64* %147, align 8, !tbaa !8
  %149 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %150 = bitcast double* %149 to i64*
  store i64 %148, i64* %150, align 8, !tbaa !8
  %151 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 2
  %152 = bitcast double* %151 to i64*
  %153 = load i64, i64* %152, align 16, !tbaa !8
  %154 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  %155 = bitcast double* %154 to i64*
  store i64 %153, i64* %155, align 16, !tbaa !8
  %156 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 3
  %157 = bitcast double* %156 to i64*
  %158 = load i64, i64* %157, align 8, !tbaa !8
  %159 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  %160 = bitcast double* %159 to i64*
  store i64 %158, i64* %160, align 8, !tbaa !8
  %161 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 4
  %162 = bitcast double* %161 to i64*
  %163 = load i64, i64* %162, align 16, !tbaa !8
  %164 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  %165 = bitcast double* %164 to i64*
  store i64 %163, i64* %165, align 16, !tbaa !8
  store i64 %46, i64* %143, align 16, !tbaa !8
  store i64 %51, i64* %147, align 8, !tbaa !8
  store i64 %56, i64* %152, align 16, !tbaa !8
  store i64 %61, i64* %157, align 8, !tbaa !8
  store i64 %66, i64* %162, align 16, !tbaa !8
  store i64 %71, i64* %48, align 16, !tbaa !8
  store i64 %76, i64* %53, align 8, !tbaa !8
  store i64 %81, i64* %58, align 16, !tbaa !8
  store i64 %86, i64* %63, align 8, !tbaa !8
  store i64 %91, i64* %68, align 16, !tbaa !8
  store i64 %96, i64* %73, align 16, !tbaa !8
  store i64 %100, i64* %78, align 8, !tbaa !8
  store i64 %105, i64* %83, align 16, !tbaa !8
  store i64 %110, i64* %88, align 8, !tbaa !8
  store i64 %115, i64* %93, align 16, !tbaa !8
  %166 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 3
  %167 = bitcast [5 x double]* %166 to i64*
  %168 = load i64, i64* %167, align 8, !tbaa !8
  store i64 %168, i64* %97, align 16, !tbaa !8
  %169 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 3, i64 1
  %170 = bitcast double* %169 to i64*
  %171 = load i64, i64* %170, align 8, !tbaa !8
  store i64 %171, i64* %102, align 8, !tbaa !8
  %172 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 3, i64 2
  %173 = bitcast double* %172 to i64*
  %174 = load i64, i64* %173, align 8, !tbaa !8
  store i64 %174, i64* %107, align 16, !tbaa !8
  %175 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 3, i64 3
  %176 = bitcast double* %175 to i64*
  %177 = load i64, i64* %176, align 8, !tbaa !8
  store i64 %177, i64* %112, align 8, !tbaa !8
  %178 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 3, i64 4
  %179 = bitcast double* %178 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !8
  store i64 %180, i64* %117, align 16, !tbaa !8
  %181 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 2
  %182 = load double, double* %181, align 8, !tbaa !8
  %183 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 2
  %184 = load double, double* %183, align 8, !tbaa !8
  %185 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 2
  %186 = load double, double* %185, align 8, !tbaa !8
  %187 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 2
  %188 = load double, double* %187, align 8, !tbaa !8
  %189 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 2
  %190 = load double, double* %189, align 8, !tbaa !8
  %191 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 2
  %192 = load double, double* %191, align 8, !tbaa !8
  %193 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 1, i64 0
  %194 = load double, double* %193, align 8, !tbaa !8
  %195 = bitcast i64 %96 to double
  %196 = bitcast i64 %71 to double
  %197 = tail call double @llvm.fmuladd.f64(double %196, double -2.000000e+00, double %195)
  %198 = bitcast i64 %46 to double
  %199 = fadd double %197, %198
  %200 = tail call double @llvm.fmuladd.f64(double %199, double 0x408CB60000000002, double %194)
  %201 = bitcast i64 %100 to double
  %202 = bitcast i64 %51 to double
  %203 = fsub double %201, %202
  %204 = tail call double @llvm.fmuladd.f64(double %203, double -1.750000e+01, double %200)
  %205 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 1, i64 1
  %206 = load double, double* %205, align 8, !tbaa !8
  %207 = bitcast i64 %76 to double
  %208 = tail call double @llvm.fmuladd.f64(double %207, double -2.000000e+00, double %201)
  %209 = fadd double %208, %202
  %210 = tail call double @llvm.fmuladd.f64(double %209, double 0x408CB60000000002, double %206)
  %211 = tail call double @llvm.fmuladd.f64(double %121, double -2.000000e+00, double %182)
  %212 = fadd double %119, %211
  %213 = tail call double @llvm.fmuladd.f64(double %212, double 0x40646AAAAAAAAAAA, double %210)
  %214 = fmul double %119, %202
  %215 = fsub double -0.000000e+00, %214
  %216 = tail call double @llvm.fmuladd.f64(double %201, double %182, double %215)
  %217 = bitcast i64 %115 to double
  %218 = fsub double %217, %192
  %219 = bitcast i64 %66 to double
  %220 = fsub double %218, %219
  %221 = fadd double %139, %220
  %222 = tail call double @llvm.fmuladd.f64(double %221, double 4.000000e-01, double %216)
  %223 = tail call double @llvm.fmuladd.f64(double %222, double -1.750000e+01, double %213)
  %224 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 1, i64 2
  %225 = load double, double* %224, align 8, !tbaa !8
  %226 = bitcast i64 %105 to double
  %227 = bitcast i64 %81 to double
  %228 = tail call double @llvm.fmuladd.f64(double %227, double -2.000000e+00, double %226)
  %229 = bitcast i64 %56 to double
  %230 = fadd double %228, %229
  %231 = tail call double @llvm.fmuladd.f64(double %230, double 0x408CB60000000002, double %225)
  %232 = tail call double @llvm.fmuladd.f64(double %125, double -2.000000e+00, double %184)
  %233 = fadd double %123, %232
  %234 = tail call double @llvm.fmuladd.f64(double %233, double 1.225000e+02, double %231)
  %235 = fmul double %119, %229
  %236 = fsub double -0.000000e+00, %235
  %237 = tail call double @llvm.fmuladd.f64(double %226, double %182, double %236)
  %238 = tail call double @llvm.fmuladd.f64(double %237, double -1.750000e+01, double %234)
  %239 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 1, i64 3
  %240 = load double, double* %239, align 8, !tbaa !8
  %241 = bitcast i64 %110 to double
  %242 = bitcast i64 %86 to double
  %243 = tail call double @llvm.fmuladd.f64(double %242, double -2.000000e+00, double %241)
  %244 = load double, double* %156, align 8, !tbaa !8
  %245 = fadd double %243, %244
  %246 = tail call double @llvm.fmuladd.f64(double %245, double 0x408CB60000000002, double %240)
  %247 = tail call double @llvm.fmuladd.f64(double %129, double -2.000000e+00, double %186)
  %248 = fadd double %127, %247
  %249 = tail call double @llvm.fmuladd.f64(double %248, double 1.225000e+02, double %246)
  %250 = fmul double %119, %244
  %251 = fsub double -0.000000e+00, %250
  %252 = tail call double @llvm.fmuladd.f64(double %241, double %182, double %251)
  %253 = tail call double @llvm.fmuladd.f64(double %252, double -1.750000e+01, double %249)
  %254 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 1, i64 4
  %255 = load double, double* %254, align 8, !tbaa !8
  %256 = load double, double* %67, align 16, !tbaa !8
  %257 = tail call double @llvm.fmuladd.f64(double %256, double -2.000000e+00, double %217)
  %258 = fadd double %257, %219
  %259 = tail call double @llvm.fmuladd.f64(double %258, double 0x408CB60000000002, double %255)
  %260 = tail call double @llvm.fmuladd.f64(double %133, double -2.000000e+00, double %188)
  %261 = fadd double %131, %260
  %262 = tail call double @llvm.fmuladd.f64(double %261, double 0xC05D666666666664, double %259)
  %263 = fmul double %121, 2.000000e+00
  %264 = fmul double %121, %263
  %265 = fsub double -0.000000e+00, %264
  %266 = tail call double @llvm.fmuladd.f64(double %182, double %182, double %265)
  %267 = tail call double @llvm.fmuladd.f64(double %119, double %119, double %266)
  %268 = tail call double @llvm.fmuladd.f64(double %267, double 0x40346AAAAAAAAAAA, double %262)
  %269 = fmul double %256, 2.000000e+00
  %270 = fmul double %137, %269
  %271 = fsub double -0.000000e+00, %270
  %272 = tail call double @llvm.fmuladd.f64(double %217, double %190, double %271)
  %273 = tail call double @llvm.fmuladd.f64(double %219, double %135, double %272)
  %274 = tail call double @llvm.fmuladd.f64(double %273, double 0x406E033333333332, double %268)
  %275 = fmul double %192, 4.000000e-01
  %276 = fsub double -0.000000e+00, %275
  %277 = tail call double @llvm.fmuladd.f64(double %217, double 1.400000e+00, double %276)
  %278 = fmul double %139, 4.000000e-01
  %279 = fsub double -0.000000e+00, %278
  %280 = tail call double @llvm.fmuladd.f64(double %219, double 1.400000e+00, double %279)
  %281 = fmul double %119, %280
  %282 = fsub double -0.000000e+00, %281
  %283 = tail call double @llvm.fmuladd.f64(double %277, double %182, double %282)
  %284 = tail call double @llvm.fmuladd.f64(double %283, double -1.750000e+01, double %274)
  %285 = load double, double* %47, align 16, !tbaa !8
  %286 = load double, double* %72, align 16, !tbaa !8
  %287 = fmul double %286, 4.000000e+00
  %288 = fsub double -0.000000e+00, %287
  %289 = tail call double @llvm.fmuladd.f64(double %285, double 5.000000e+00, double %288)
  %290 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 0
  %291 = load double, double* %290, align 16, !tbaa !8
  %292 = fadd double %291, %289
  %293 = tail call double @llvm.fmuladd.f64(double %292, double -2.500000e-01, double %204)
  store double %293, double* %193, align 8, !tbaa !8
  %294 = load double, double* %52, align 8, !tbaa !8
  %295 = load double, double* %77, align 8, !tbaa !8
  %296 = fmul double %295, 4.000000e+00
  %297 = fsub double -0.000000e+00, %296
  %298 = tail call double @llvm.fmuladd.f64(double %294, double 5.000000e+00, double %297)
  %299 = load double, double* %101, align 8, !tbaa !8
  %300 = fadd double %299, %298
  %301 = tail call double @llvm.fmuladd.f64(double %300, double -2.500000e-01, double %223)
  store double %301, double* %205, align 8, !tbaa !8
  %302 = load double, double* %57, align 16, !tbaa !8
  %303 = load double, double* %82, align 16, !tbaa !8
  %304 = fmul double %303, 4.000000e+00
  %305 = fsub double -0.000000e+00, %304
  %306 = tail call double @llvm.fmuladd.f64(double %302, double 5.000000e+00, double %305)
  %307 = load double, double* %106, align 16, !tbaa !8
  %308 = fadd double %307, %306
  %309 = tail call double @llvm.fmuladd.f64(double %308, double -2.500000e-01, double %238)
  store double %309, double* %224, align 8, !tbaa !8
  %310 = load double, double* %62, align 8, !tbaa !8
  %311 = load double, double* %87, align 8, !tbaa !8
  %312 = fmul double %311, 4.000000e+00
  %313 = fsub double -0.000000e+00, %312
  %314 = tail call double @llvm.fmuladd.f64(double %310, double 5.000000e+00, double %313)
  %315 = load double, double* %111, align 8, !tbaa !8
  %316 = fadd double %315, %314
  %317 = tail call double @llvm.fmuladd.f64(double %316, double -2.500000e-01, double %253)
  store double %317, double* %239, align 8, !tbaa !8
  %318 = load double, double* %92, align 16, !tbaa !8
  %319 = fmul double %318, 4.000000e+00
  %320 = fsub double -0.000000e+00, %319
  %321 = tail call double @llvm.fmuladd.f64(double %256, double 5.000000e+00, double %320)
  %322 = load double, double* %116, align 16, !tbaa !8
  %323 = fadd double %322, %321
  %324 = tail call double @llvm.fmuladd.f64(double %323, double -2.500000e-01, double %284)
  store double %324, double* %254, align 8, !tbaa !8
  store i64 %46, i64* %145, align 16, !tbaa !8
  store i64 %51, i64* %150, align 8, !tbaa !8
  store i64 %56, i64* %155, align 16, !tbaa !8
  store i64 %61, i64* %160, align 8, !tbaa !8
  store i64 %66, i64* %165, align 16, !tbaa !8
  store i64 %71, i64* %143, align 16, !tbaa !8
  store i64 %76, i64* %147, align 8, !tbaa !8
  store i64 %81, i64* %152, align 16, !tbaa !8
  store i64 %86, i64* %157, align 8, !tbaa !8
  store i64 %91, i64* %162, align 16, !tbaa !8
  store i64 %96, i64* %48, align 16, !tbaa !8
  store i64 %100, i64* %53, align 8, !tbaa !8
  store i64 %105, i64* %58, align 16, !tbaa !8
  store i64 %110, i64* %63, align 8, !tbaa !8
  store i64 %115, i64* %68, align 16, !tbaa !8
  store i64 %168, i64* %73, align 16, !tbaa !8
  store i64 %171, i64* %78, align 8, !tbaa !8
  store i64 %174, i64* %83, align 16, !tbaa !8
  store i64 %177, i64* %88, align 8, !tbaa !8
  store i64 %180, i64* %93, align 16, !tbaa !8
  %325 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 4
  %326 = bitcast [5 x double]* %325 to i64*
  %327 = load i64, i64* %326, align 8, !tbaa !8
  store i64 %327, i64* %97, align 16, !tbaa !8
  %328 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 4, i64 1
  %329 = bitcast double* %328 to i64*
  %330 = load i64, i64* %329, align 8, !tbaa !8
  store i64 %330, i64* %102, align 8, !tbaa !8
  %331 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 4, i64 2
  %332 = bitcast double* %331 to i64*
  %333 = load i64, i64* %332, align 8, !tbaa !8
  store i64 %333, i64* %107, align 16, !tbaa !8
  %334 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 4, i64 3
  %335 = bitcast double* %334 to i64*
  %336 = load i64, i64* %335, align 8, !tbaa !8
  store i64 %336, i64* %112, align 8, !tbaa !8
  %337 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 4, i64 4
  %338 = bitcast double* %337 to i64*
  %339 = load i64, i64* %338, align 8, !tbaa !8
  store i64 %339, i64* %117, align 16, !tbaa !8
  %340 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 3
  %341 = load double, double* %340, align 8, !tbaa !8
  %342 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 3
  %343 = load double, double* %342, align 8, !tbaa !8
  %344 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 3
  %345 = load double, double* %344, align 8, !tbaa !8
  %346 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 3
  %347 = load double, double* %346, align 8, !tbaa !8
  %348 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 3
  %349 = load double, double* %348, align 8, !tbaa !8
  %350 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 3
  %351 = load double, double* %350, align 8, !tbaa !8
  %352 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 2, i64 0
  %353 = load double, double* %352, align 8, !tbaa !8
  %354 = bitcast i64 %168 to double
  %355 = tail call double @llvm.fmuladd.f64(double %195, double -2.000000e+00, double %354)
  %356 = fadd double %355, %196
  %357 = tail call double @llvm.fmuladd.f64(double %356, double 0x408CB60000000002, double %353)
  %358 = bitcast i64 %171 to double
  %359 = fsub double %358, %207
  %360 = tail call double @llvm.fmuladd.f64(double %359, double -1.750000e+01, double %357)
  %361 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 2, i64 1
  %362 = load double, double* %361, align 8, !tbaa !8
  %363 = tail call double @llvm.fmuladd.f64(double %201, double -2.000000e+00, double %358)
  %364 = fadd double %363, %207
  %365 = tail call double @llvm.fmuladd.f64(double %364, double 0x408CB60000000002, double %362)
  %366 = tail call double @llvm.fmuladd.f64(double %182, double -2.000000e+00, double %341)
  %367 = fadd double %121, %366
  %368 = tail call double @llvm.fmuladd.f64(double %367, double 0x40646AAAAAAAAAAA, double %365)
  %369 = fmul double %121, %207
  %370 = fsub double -0.000000e+00, %369
  %371 = tail call double @llvm.fmuladd.f64(double %358, double %341, double %370)
  %372 = bitcast i64 %180 to double
  %373 = fsub double %372, %351
  %374 = bitcast i64 %91 to double
  %375 = fsub double %373, %374
  %376 = fadd double %141, %375
  %377 = tail call double @llvm.fmuladd.f64(double %376, double 4.000000e-01, double %371)
  %378 = tail call double @llvm.fmuladd.f64(double %377, double -1.750000e+01, double %368)
  %379 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 2, i64 2
  %380 = load double, double* %379, align 8, !tbaa !8
  %381 = bitcast i64 %174 to double
  %382 = tail call double @llvm.fmuladd.f64(double %226, double -2.000000e+00, double %381)
  %383 = fadd double %382, %227
  %384 = tail call double @llvm.fmuladd.f64(double %383, double 0x408CB60000000002, double %380)
  %385 = tail call double @llvm.fmuladd.f64(double %184, double -2.000000e+00, double %343)
  %386 = fadd double %125, %385
  %387 = tail call double @llvm.fmuladd.f64(double %386, double 1.225000e+02, double %384)
  %388 = fmul double %121, %227
  %389 = fsub double -0.000000e+00, %388
  %390 = tail call double @llvm.fmuladd.f64(double %381, double %341, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %390, double -1.750000e+01, double %387)
  %392 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 2, i64 3
  %393 = load double, double* %392, align 8, !tbaa !8
  %394 = bitcast i64 %177 to double
  %395 = tail call double @llvm.fmuladd.f64(double %241, double -2.000000e+00, double %394)
  %396 = fadd double %395, %242
  %397 = tail call double @llvm.fmuladd.f64(double %396, double 0x408CB60000000002, double %393)
  %398 = tail call double @llvm.fmuladd.f64(double %186, double -2.000000e+00, double %345)
  %399 = fadd double %129, %398
  %400 = tail call double @llvm.fmuladd.f64(double %399, double 1.225000e+02, double %397)
  %401 = fmul double %121, %242
  %402 = fsub double -0.000000e+00, %401
  %403 = tail call double @llvm.fmuladd.f64(double %394, double %341, double %402)
  %404 = tail call double @llvm.fmuladd.f64(double %403, double -1.750000e+01, double %400)
  %405 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 2, i64 4
  %406 = load double, double* %405, align 8, !tbaa !8
  %407 = tail call double @llvm.fmuladd.f64(double %217, double -2.000000e+00, double %372)
  %408 = fadd double %407, %374
  %409 = tail call double @llvm.fmuladd.f64(double %408, double 0x408CB60000000002, double %406)
  %410 = tail call double @llvm.fmuladd.f64(double %188, double -2.000000e+00, double %347)
  %411 = fadd double %133, %410
  %412 = tail call double @llvm.fmuladd.f64(double %411, double 0xC05D666666666664, double %409)
  %413 = fmul double %182, 2.000000e+00
  %414 = fmul double %182, %413
  %415 = fsub double -0.000000e+00, %414
  %416 = tail call double @llvm.fmuladd.f64(double %341, double %341, double %415)
  %417 = tail call double @llvm.fmuladd.f64(double %121, double %121, double %416)
  %418 = tail call double @llvm.fmuladd.f64(double %417, double 0x40346AAAAAAAAAAA, double %412)
  %419 = fmul double %217, 2.000000e+00
  %420 = fmul double %190, %419
  %421 = fsub double -0.000000e+00, %420
  %422 = tail call double @llvm.fmuladd.f64(double %372, double %349, double %421)
  %423 = tail call double @llvm.fmuladd.f64(double %374, double %137, double %422)
  %424 = tail call double @llvm.fmuladd.f64(double %423, double 0x406E033333333332, double %418)
  %425 = fmul double %351, 4.000000e-01
  %426 = fsub double -0.000000e+00, %425
  %427 = tail call double @llvm.fmuladd.f64(double %372, double 1.400000e+00, double %426)
  %428 = fmul double %141, 4.000000e-01
  %429 = fsub double -0.000000e+00, %428
  %430 = tail call double @llvm.fmuladd.f64(double %374, double 1.400000e+00, double %429)
  %431 = fmul double %121, %430
  %432 = fsub double -0.000000e+00, %431
  %433 = tail call double @llvm.fmuladd.f64(double %427, double %341, double %432)
  %434 = tail call double @llvm.fmuladd.f64(double %433, double -1.750000e+01, double %424)
  %435 = load double, double* %142, align 16, !tbaa !8
  %436 = load double, double* %47, align 16, !tbaa !8
  %437 = fmul double %436, 6.000000e+00
  %438 = tail call double @llvm.fmuladd.f64(double %435, double -4.000000e+00, double %437)
  %439 = load double, double* %72, align 16, !tbaa !8
  %440 = tail call double @llvm.fmuladd.f64(double %439, double -4.000000e+00, double %438)
  %441 = load double, double* %290, align 16, !tbaa !8
  %442 = fadd double %441, %440
  %443 = tail call double @llvm.fmuladd.f64(double %442, double -2.500000e-01, double %360)
  store double %443, double* %352, align 8, !tbaa !8
  %444 = load double, double* %146, align 8, !tbaa !8
  %445 = load double, double* %52, align 8, !tbaa !8
  %446 = fmul double %445, 6.000000e+00
  %447 = tail call double @llvm.fmuladd.f64(double %444, double -4.000000e+00, double %446)
  %448 = load double, double* %77, align 8, !tbaa !8
  %449 = tail call double @llvm.fmuladd.f64(double %448, double -4.000000e+00, double %447)
  %450 = load double, double* %101, align 8, !tbaa !8
  %451 = fadd double %450, %449
  %452 = tail call double @llvm.fmuladd.f64(double %451, double -2.500000e-01, double %378)
  store double %452, double* %361, align 8, !tbaa !8
  %453 = load double, double* %151, align 16, !tbaa !8
  %454 = load double, double* %57, align 16, !tbaa !8
  %455 = fmul double %454, 6.000000e+00
  %456 = tail call double @llvm.fmuladd.f64(double %453, double -4.000000e+00, double %455)
  %457 = load double, double* %82, align 16, !tbaa !8
  %458 = tail call double @llvm.fmuladd.f64(double %457, double -4.000000e+00, double %456)
  %459 = load double, double* %106, align 16, !tbaa !8
  %460 = fadd double %459, %458
  %461 = tail call double @llvm.fmuladd.f64(double %460, double -2.500000e-01, double %391)
  store double %461, double* %379, align 8, !tbaa !8
  %462 = load double, double* %156, align 8, !tbaa !8
  %463 = load double, double* %62, align 8, !tbaa !8
  %464 = fmul double %463, 6.000000e+00
  %465 = tail call double @llvm.fmuladd.f64(double %462, double -4.000000e+00, double %464)
  %466 = load double, double* %87, align 8, !tbaa !8
  %467 = tail call double @llvm.fmuladd.f64(double %466, double -4.000000e+00, double %465)
  %468 = load double, double* %111, align 8, !tbaa !8
  %469 = fadd double %468, %467
  %470 = tail call double @llvm.fmuladd.f64(double %469, double -2.500000e-01, double %404)
  store double %470, double* %392, align 8, !tbaa !8
  %471 = load double, double* %161, align 16, !tbaa !8
  %472 = fmul double %217, 6.000000e+00
  %473 = tail call double @llvm.fmuladd.f64(double %471, double -4.000000e+00, double %472)
  %474 = load double, double* %92, align 16, !tbaa !8
  %475 = tail call double @llvm.fmuladd.f64(double %474, double -4.000000e+00, double %473)
  %476 = load double, double* %116, align 16, !tbaa !8
  %477 = fadd double %476, %475
  %478 = tail call double @llvm.fmuladd.f64(double %477, double -2.500000e-01, double %434)
  store double %478, double* %405, align 8, !tbaa !8
  %479 = icmp slt i32 %8, 5
  %480 = bitcast double %435 to i64
  %481 = bitcast double %444 to i64
  %482 = bitcast double %453 to i64
  %483 = bitcast double %462 to i64
  %484 = bitcast double %471 to i64
  %485 = bitcast double %463 to i64
  %486 = bitcast double %474 to i64
  %487 = add i32 %8, -1
  br i1 %479, label %488, label %490

; <label>:488:                                    ; preds = %31
  %489 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  br label %685

; <label>:490:                                    ; preds = %31
  %491 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %492 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %493 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %494 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %495 = zext i32 %487 to i64
  br label %496

; <label>:496:                                    ; preds = %496, %490
  %497 = phi double [ %672, %496 ], [ %476, %490 ]
  %498 = phi double [ %664, %496 ], [ %468, %490 ]
  %499 = phi double [ %657, %496 ], [ %459, %490 ]
  %500 = phi double [ %650, %496 ], [ %450, %490 ]
  %501 = phi double [ %643, %496 ], [ %441, %490 ]
  %502 = phi i64 [ %683, %496 ], [ %486, %490 ]
  %503 = phi double [ %498, %496 ], [ %466, %490 ]
  %504 = phi double [ %499, %496 ], [ %457, %490 ]
  %505 = phi double [ %500, %496 ], [ %448, %490 ]
  %506 = phi double [ %501, %496 ], [ %439, %490 ]
  %507 = phi i64 [ %682, %496 ], [ %115, %490 ]
  %508 = phi i64 [ %681, %496 ], [ %485, %490 ]
  %509 = phi double [ %504, %496 ], [ %454, %490 ]
  %510 = phi double [ %505, %496 ], [ %445, %490 ]
  %511 = phi double [ %506, %496 ], [ %436, %490 ]
  %512 = phi i64 [ %680, %496 ], [ %484, %490 ]
  %513 = phi i64 [ %679, %496 ], [ %483, %490 ]
  %514 = phi i64 [ %678, %496 ], [ %482, %490 ]
  %515 = phi i64 [ %677, %496 ], [ %481, %490 ]
  %516 = phi i64 [ %676, %496 ], [ %480, %490 ]
  %517 = phi i64 [ %546, %496 ], [ 3, %490 ]
  %518 = phi double [ %519, %496 ], [ %182, %490 ]
  %519 = phi double [ %548, %496 ], [ %341, %490 ]
  %520 = phi double [ %521, %496 ], [ %184, %490 ]
  %521 = phi double [ %550, %496 ], [ %343, %490 ]
  %522 = phi double [ %558, %496 ], [ %351, %490 ]
  %523 = phi double [ %522, %496 ], [ %192, %490 ]
  %524 = phi double [ %556, %496 ], [ %349, %490 ]
  %525 = phi double [ %524, %496 ], [ %190, %490 ]
  %526 = phi double [ %554, %496 ], [ %347, %490 ]
  %527 = phi double [ %526, %496 ], [ %188, %490 ]
  %528 = phi double [ %552, %496 ], [ %345, %490 ]
  %529 = phi double [ %528, %496 ], [ %186, %490 ]
  store i64 %516, i64* %145, align 16, !tbaa !8
  store i64 %515, i64* %150, align 8, !tbaa !8
  store i64 %514, i64* %155, align 16, !tbaa !8
  store i64 %513, i64* %160, align 8, !tbaa !8
  store i64 %512, i64* %165, align 16, !tbaa !8
  store i64 %508, i64* %157, align 8, !tbaa !8
  store i64 %507, i64* %162, align 16, !tbaa !8
  store i64 %502, i64* %68, align 16, !tbaa !8
  %530 = add nuw nsw i64 %517, 2
  %531 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %530
  %532 = bitcast [5 x double]* %531 to i64*
  %533 = load i64, i64* %532, align 8, !tbaa !8
  store i64 %533, i64* %97, align 16, !tbaa !8
  %534 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %530, i64 1
  %535 = bitcast double* %534 to i64*
  %536 = load i64, i64* %535, align 8, !tbaa !8
  store i64 %536, i64* %102, align 8, !tbaa !8
  %537 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %530, i64 2
  %538 = bitcast double* %537 to i64*
  %539 = load i64, i64* %538, align 8, !tbaa !8
  store i64 %539, i64* %107, align 16, !tbaa !8
  %540 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %530, i64 3
  %541 = bitcast double* %540 to i64*
  %542 = load i64, i64* %541, align 8, !tbaa !8
  store i64 %542, i64* %112, align 8, !tbaa !8
  %543 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %530, i64 4
  %544 = bitcast double* %543 to i64*
  %545 = load i64, i64* %544, align 8, !tbaa !8
  store i64 %545, i64* %117, align 16, !tbaa !8
  %546 = add nuw nsw i64 %517, 1
  %547 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 %546
  %548 = load double, double* %547, align 8, !tbaa !8
  %549 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 %546
  %550 = load double, double* %549, align 8, !tbaa !8
  %551 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 %546
  %552 = load double, double* %551, align 8, !tbaa !8
  %553 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 %546
  %554 = load double, double* %553, align 8, !tbaa !8
  %555 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 %546
  %556 = load double, double* %555, align 8, !tbaa !8
  %557 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 %546
  %558 = load double, double* %557, align 8, !tbaa !8
  %559 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %517, i64 0
  %560 = load double, double* %559, align 8, !tbaa !8
  %561 = tail call double @llvm.fmuladd.f64(double %506, double -2.000000e+00, double %501)
  %562 = fadd double %561, %511
  %563 = tail call double @llvm.fmuladd.f64(double %562, double 0x408CB60000000002, double %560)
  %564 = fsub double %500, %510
  %565 = tail call double @llvm.fmuladd.f64(double %564, double -1.750000e+01, double %563)
  %566 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %517, i64 1
  %567 = load double, double* %566, align 8, !tbaa !8
  %568 = tail call double @llvm.fmuladd.f64(double %505, double -2.000000e+00, double %500)
  %569 = fadd double %510, %568
  %570 = tail call double @llvm.fmuladd.f64(double %569, double 0x408CB60000000002, double %567)
  %571 = tail call double @llvm.fmuladd.f64(double %519, double -2.000000e+00, double %548)
  %572 = fadd double %518, %571
  %573 = tail call double @llvm.fmuladd.f64(double %572, double 0x40646AAAAAAAAAAA, double %570)
  %574 = fmul double %518, %510
  %575 = fsub double -0.000000e+00, %574
  %576 = tail call double @llvm.fmuladd.f64(double %500, double %548, double %575)
  %577 = fsub double %497, %558
  %578 = bitcast i64 %507 to double
  %579 = fsub double %577, %578
  %580 = fadd double %523, %579
  %581 = tail call double @llvm.fmuladd.f64(double %580, double 4.000000e-01, double %576)
  %582 = tail call double @llvm.fmuladd.f64(double %581, double -1.750000e+01, double %573)
  %583 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %517, i64 2
  %584 = load double, double* %583, align 8, !tbaa !8
  %585 = tail call double @llvm.fmuladd.f64(double %504, double -2.000000e+00, double %499)
  %586 = fadd double %585, %509
  %587 = tail call double @llvm.fmuladd.f64(double %586, double 0x408CB60000000002, double %584)
  %588 = tail call double @llvm.fmuladd.f64(double %521, double -2.000000e+00, double %550)
  %589 = fadd double %520, %588
  %590 = tail call double @llvm.fmuladd.f64(double %589, double 1.225000e+02, double %587)
  %591 = fmul double %518, %509
  %592 = fsub double -0.000000e+00, %591
  %593 = tail call double @llvm.fmuladd.f64(double %499, double %548, double %592)
  %594 = tail call double @llvm.fmuladd.f64(double %593, double -1.750000e+01, double %590)
  %595 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %517, i64 3
  %596 = load double, double* %595, align 8, !tbaa !8
  %597 = tail call double @llvm.fmuladd.f64(double %503, double -2.000000e+00, double %498)
  %598 = load double, double* %156, align 8, !tbaa !8
  %599 = fadd double %597, %598
  %600 = tail call double @llvm.fmuladd.f64(double %599, double 0x408CB60000000002, double %596)
  %601 = tail call double @llvm.fmuladd.f64(double %528, double -2.000000e+00, double %552)
  %602 = fadd double %529, %601
  %603 = tail call double @llvm.fmuladd.f64(double %602, double 1.225000e+02, double %600)
  %604 = fmul double %518, %598
  %605 = fsub double -0.000000e+00, %604
  %606 = tail call double @llvm.fmuladd.f64(double %498, double %548, double %605)
  %607 = tail call double @llvm.fmuladd.f64(double %606, double -1.750000e+01, double %603)
  %608 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %517, i64 4
  %609 = load double, double* %608, align 8, !tbaa !8
  %610 = load double, double* %67, align 16, !tbaa !8
  %611 = tail call double @llvm.fmuladd.f64(double %610, double -2.000000e+00, double %497)
  %612 = fadd double %611, %578
  %613 = tail call double @llvm.fmuladd.f64(double %612, double 0x408CB60000000002, double %609)
  %614 = tail call double @llvm.fmuladd.f64(double %526, double -2.000000e+00, double %554)
  %615 = fadd double %527, %614
  %616 = tail call double @llvm.fmuladd.f64(double %615, double 0xC05D666666666664, double %613)
  %617 = fmul double %519, 2.000000e+00
  %618 = fmul double %519, %617
  %619 = fsub double -0.000000e+00, %618
  %620 = tail call double @llvm.fmuladd.f64(double %548, double %548, double %619)
  %621 = tail call double @llvm.fmuladd.f64(double %518, double %518, double %620)
  %622 = tail call double @llvm.fmuladd.f64(double %621, double 0x40346AAAAAAAAAAA, double %616)
  %623 = fmul double %610, 2.000000e+00
  %624 = fmul double %524, %623
  %625 = fsub double -0.000000e+00, %624
  %626 = tail call double @llvm.fmuladd.f64(double %497, double %556, double %625)
  %627 = tail call double @llvm.fmuladd.f64(double %578, double %525, double %626)
  %628 = tail call double @llvm.fmuladd.f64(double %627, double 0x406E033333333332, double %622)
  %629 = fmul double %558, 4.000000e-01
  %630 = fsub double -0.000000e+00, %629
  %631 = tail call double @llvm.fmuladd.f64(double %497, double 1.400000e+00, double %630)
  %632 = fmul double %523, 4.000000e-01
  %633 = fsub double -0.000000e+00, %632
  %634 = tail call double @llvm.fmuladd.f64(double %578, double 1.400000e+00, double %633)
  %635 = fmul double %518, %634
  %636 = fsub double -0.000000e+00, %635
  %637 = tail call double @llvm.fmuladd.f64(double %631, double %548, double %636)
  %638 = tail call double @llvm.fmuladd.f64(double %637, double -1.750000e+01, double %628)
  %639 = load double, double* %494, align 16, !tbaa !8
  %640 = tail call double @llvm.fmuladd.f64(double %511, double -4.000000e+00, double %639)
  %641 = tail call double @llvm.fmuladd.f64(double %506, double 6.000000e+00, double %640)
  %642 = tail call double @llvm.fmuladd.f64(double %501, double -4.000000e+00, double %641)
  %643 = load double, double* %290, align 16, !tbaa !8
  %644 = fadd double %642, %643
  %645 = tail call double @llvm.fmuladd.f64(double %644, double -2.500000e-01, double %565)
  store double %645, double* %559, align 8, !tbaa !8
  %646 = load double, double* %149, align 8, !tbaa !8
  %647 = tail call double @llvm.fmuladd.f64(double %510, double -4.000000e+00, double %646)
  %648 = tail call double @llvm.fmuladd.f64(double %505, double 6.000000e+00, double %647)
  %649 = tail call double @llvm.fmuladd.f64(double %500, double -4.000000e+00, double %648)
  %650 = load double, double* %101, align 8, !tbaa !8
  %651 = fadd double %649, %650
  %652 = tail call double @llvm.fmuladd.f64(double %651, double -2.500000e-01, double %582)
  store double %652, double* %566, align 8, !tbaa !8
  %653 = load double, double* %154, align 16, !tbaa !8
  %654 = tail call double @llvm.fmuladd.f64(double %509, double -4.000000e+00, double %653)
  %655 = tail call double @llvm.fmuladd.f64(double %504, double 6.000000e+00, double %654)
  %656 = tail call double @llvm.fmuladd.f64(double %499, double -4.000000e+00, double %655)
  %657 = load double, double* %106, align 16, !tbaa !8
  %658 = fadd double %656, %657
  %659 = tail call double @llvm.fmuladd.f64(double %658, double -2.500000e-01, double %594)
  store double %659, double* %583, align 8, !tbaa !8
  %660 = load double, double* %159, align 8, !tbaa !8
  %661 = tail call double @llvm.fmuladd.f64(double %598, double -4.000000e+00, double %660)
  %662 = tail call double @llvm.fmuladd.f64(double %503, double 6.000000e+00, double %661)
  %663 = tail call double @llvm.fmuladd.f64(double %498, double -4.000000e+00, double %662)
  %664 = load double, double* %111, align 8, !tbaa !8
  %665 = fadd double %663, %664
  %666 = tail call double @llvm.fmuladd.f64(double %665, double -2.500000e-01, double %607)
  store double %666, double* %595, align 8, !tbaa !8
  %667 = load double, double* %164, align 16, !tbaa !8
  %668 = load double, double* %161, align 16, !tbaa !8
  %669 = tail call double @llvm.fmuladd.f64(double %668, double -4.000000e+00, double %667)
  %670 = tail call double @llvm.fmuladd.f64(double %610, double 6.000000e+00, double %669)
  %671 = tail call double @llvm.fmuladd.f64(double %497, double -4.000000e+00, double %670)
  %672 = load double, double* %116, align 16, !tbaa !8
  %673 = fadd double %671, %672
  %674 = tail call double @llvm.fmuladd.f64(double %673, double -2.500000e-01, double %638)
  store double %674, double* %608, align 8, !tbaa !8
  %675 = icmp eq i64 %546, %495
  %676 = bitcast double %511 to i64
  %677 = bitcast double %510 to i64
  %678 = bitcast double %509 to i64
  %679 = bitcast double %598 to i64
  %680 = bitcast double %668 to i64
  %681 = bitcast double %503 to i64
  %682 = bitcast double %610 to i64
  %683 = bitcast double %497 to i64
  br i1 %675, label %684, label %496

; <label>:684:                                    ; preds = %496
  store double %511, double* %491, align 16, !tbaa !8
  store double %510, double* %146, align 8, !tbaa !8
  store double %509, double* %151, align 16, !tbaa !8
  store double %506, double* %492, align 16, !tbaa !8
  store double %505, double* %52, align 8, !tbaa !8
  store double %504, double* %57, align 16, !tbaa !8
  store double %503, double* %62, align 8, !tbaa !8
  store double %501, double* %493, align 16, !tbaa !8
  store double %500, double* %77, align 8, !tbaa !8
  store double %499, double* %82, align 16, !tbaa !8
  store double %498, double* %87, align 8, !tbaa !8
  store double %497, double* %92, align 16, !tbaa !8
  br label %685

; <label>:685:                                    ; preds = %684, %488
  %686 = phi double* [ %489, %488 ], [ %494, %684 ]
  %687 = phi double [ %476, %488 ], [ %672, %684 ]
  %688 = phi double [ %468, %488 ], [ %664, %684 ]
  %689 = phi double [ %459, %488 ], [ %657, %684 ]
  %690 = phi double [ %450, %488 ], [ %650, %684 ]
  %691 = phi double [ %441, %488 ], [ %643, %684 ]
  %692 = phi double [ %474, %488 ], [ %497, %684 ]
  %693 = phi i64 [ %486, %488 ], [ %683, %684 ]
  %694 = phi double [ %466, %488 ], [ %498, %684 ]
  %695 = phi double [ %457, %488 ], [ %499, %684 ]
  %696 = phi double [ %448, %488 ], [ %500, %684 ]
  %697 = phi double [ %439, %488 ], [ %501, %684 ]
  %698 = phi i64 [ %115, %488 ], [ %682, %684 ]
  %699 = phi i64 [ %485, %488 ], [ %681, %684 ]
  %700 = phi double [ %454, %488 ], [ %504, %684 ]
  %701 = phi double [ %445, %488 ], [ %505, %684 ]
  %702 = phi double [ %436, %488 ], [ %506, %684 ]
  %703 = phi i64 [ %484, %488 ], [ %680, %684 ]
  %704 = phi i64 [ %483, %488 ], [ %679, %684 ]
  %705 = phi i64 [ %482, %488 ], [ %678, %684 ]
  %706 = phi i64 [ %481, %488 ], [ %677, %684 ]
  %707 = phi i64 [ %480, %488 ], [ %676, %684 ]
  %708 = phi double [ %186, %488 ], [ %528, %684 ]
  %709 = phi double [ %345, %488 ], [ %552, %684 ]
  %710 = phi double [ %188, %488 ], [ %526, %684 ]
  %711 = phi double [ %347, %488 ], [ %554, %684 ]
  %712 = phi double [ %190, %488 ], [ %524, %684 ]
  %713 = phi double [ %349, %488 ], [ %556, %684 ]
  %714 = phi double [ %192, %488 ], [ %522, %684 ]
  %715 = phi double [ %351, %488 ], [ %558, %684 ]
  %716 = phi double [ %343, %488 ], [ %550, %684 ]
  %717 = phi double [ %184, %488 ], [ %521, %684 ]
  %718 = phi double [ %341, %488 ], [ %548, %684 ]
  %719 = phi double [ %182, %488 ], [ %519, %684 ]
  store i64 %707, i64* %145, align 16, !tbaa !8
  store i64 %706, i64* %150, align 8, !tbaa !8
  store i64 %705, i64* %155, align 16, !tbaa !8
  store i64 %704, i64* %160, align 8, !tbaa !8
  store i64 %703, i64* %165, align 16, !tbaa !8
  %720 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  store double %702, double* %720, align 16, !tbaa !8
  store double %701, double* %146, align 8, !tbaa !8
  store double %700, double* %151, align 16, !tbaa !8
  store i64 %699, i64* %157, align 8, !tbaa !8
  store i64 %698, i64* %162, align 16, !tbaa !8
  %721 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %697, double* %721, align 16, !tbaa !8
  store double %696, double* %52, align 8, !tbaa !8
  store double %695, double* %57, align 16, !tbaa !8
  store double %694, double* %62, align 8, !tbaa !8
  store double %692, double* %67, align 16, !tbaa !8
  %722 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  store double %691, double* %722, align 16, !tbaa !8
  store double %690, double* %77, align 8, !tbaa !8
  store double %689, double* %82, align 16, !tbaa !8
  store double %688, double* %87, align 8, !tbaa !8
  store double %687, double* %92, align 16, !tbaa !8
  %723 = add nsw i32 %8, 1
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %724
  %726 = bitcast [5 x double]* %725 to i64*
  %727 = load i64, i64* %726, align 8, !tbaa !8
  store i64 %727, i64* %97, align 16, !tbaa !8
  %728 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %724, i64 1
  %729 = bitcast double* %728 to i64*
  %730 = load i64, i64* %729, align 8, !tbaa !8
  store i64 %730, i64* %102, align 8, !tbaa !8
  %731 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %724, i64 2
  %732 = bitcast double* %731 to i64*
  %733 = load i64, i64* %732, align 8, !tbaa !8
  store i64 %733, i64* %107, align 16, !tbaa !8
  %734 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %724, i64 3
  %735 = bitcast double* %734 to i64*
  %736 = load i64, i64* %735, align 8, !tbaa !8
  store i64 %736, i64* %112, align 8, !tbaa !8
  %737 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %32, i64 %41, i64 %43, i64 %724, i64 4
  %738 = bitcast double* %737 to i64*
  %739 = load i64, i64* %738, align 8, !tbaa !8
  store i64 %739, i64* %117, align 16, !tbaa !8
  %740 = sext i32 %8 to i64
  %741 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 %740
  %742 = load double, double* %741, align 8, !tbaa !8
  %743 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 %740
  %744 = load double, double* %743, align 8, !tbaa !8
  %745 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 %740
  %746 = load double, double* %745, align 8, !tbaa !8
  %747 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 %740
  %748 = load double, double* %747, align 8, !tbaa !8
  %749 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 %740
  %750 = load double, double* %749, align 8, !tbaa !8
  %751 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 %740
  %752 = load double, double* %751, align 8, !tbaa !8
  %753 = sext i32 %487 to i64
  %754 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %753, i64 0
  %755 = load double, double* %754, align 8, !tbaa !8
  %756 = tail call double @llvm.fmuladd.f64(double %697, double -2.000000e+00, double %691)
  %757 = fadd double %756, %702
  %758 = tail call double @llvm.fmuladd.f64(double %757, double 0x408CB60000000002, double %755)
  %759 = fsub double %690, %701
  %760 = tail call double @llvm.fmuladd.f64(double %759, double -1.750000e+01, double %758)
  %761 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %753, i64 1
  %762 = load double, double* %761, align 8, !tbaa !8
  %763 = tail call double @llvm.fmuladd.f64(double %696, double -2.000000e+00, double %690)
  %764 = fadd double %701, %763
  %765 = tail call double @llvm.fmuladd.f64(double %764, double 0x408CB60000000002, double %762)
  %766 = tail call double @llvm.fmuladd.f64(double %718, double -2.000000e+00, double %742)
  %767 = fadd double %719, %766
  %768 = tail call double @llvm.fmuladd.f64(double %767, double 0x40646AAAAAAAAAAA, double %765)
  %769 = fmul double %719, %701
  %770 = fsub double -0.000000e+00, %769
  %771 = tail call double @llvm.fmuladd.f64(double %690, double %742, double %770)
  %772 = fsub double %687, %752
  %773 = bitcast i64 %698 to double
  %774 = fsub double %772, %773
  %775 = fadd double %714, %774
  %776 = tail call double @llvm.fmuladd.f64(double %775, double 4.000000e-01, double %771)
  %777 = tail call double @llvm.fmuladd.f64(double %776, double -1.750000e+01, double %768)
  %778 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %753, i64 2
  %779 = load double, double* %778, align 8, !tbaa !8
  %780 = tail call double @llvm.fmuladd.f64(double %695, double -2.000000e+00, double %689)
  %781 = fadd double %780, %700
  %782 = tail call double @llvm.fmuladd.f64(double %781, double 0x408CB60000000002, double %779)
  %783 = tail call double @llvm.fmuladd.f64(double %716, double -2.000000e+00, double %744)
  %784 = fadd double %717, %783
  %785 = tail call double @llvm.fmuladd.f64(double %784, double 1.225000e+02, double %782)
  %786 = fmul double %719, %700
  %787 = fsub double -0.000000e+00, %786
  %788 = tail call double @llvm.fmuladd.f64(double %689, double %742, double %787)
  %789 = tail call double @llvm.fmuladd.f64(double %788, double -1.750000e+01, double %785)
  %790 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %753, i64 3
  %791 = load double, double* %790, align 8, !tbaa !8
  %792 = tail call double @llvm.fmuladd.f64(double %694, double -2.000000e+00, double %688)
  %793 = load double, double* %156, align 8, !tbaa !8
  %794 = fadd double %792, %793
  %795 = tail call double @llvm.fmuladd.f64(double %794, double 0x408CB60000000002, double %791)
  %796 = tail call double @llvm.fmuladd.f64(double %709, double -2.000000e+00, double %746)
  %797 = fadd double %708, %796
  %798 = tail call double @llvm.fmuladd.f64(double %797, double 1.225000e+02, double %795)
  %799 = fmul double %719, %793
  %800 = fsub double -0.000000e+00, %799
  %801 = tail call double @llvm.fmuladd.f64(double %688, double %742, double %800)
  %802 = tail call double @llvm.fmuladd.f64(double %801, double -1.750000e+01, double %798)
  %803 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %753, i64 4
  %804 = load double, double* %803, align 8, !tbaa !8
  %805 = load double, double* %67, align 16, !tbaa !8
  %806 = tail call double @llvm.fmuladd.f64(double %805, double -2.000000e+00, double %687)
  %807 = fadd double %806, %773
  %808 = tail call double @llvm.fmuladd.f64(double %807, double 0x408CB60000000002, double %804)
  %809 = tail call double @llvm.fmuladd.f64(double %711, double -2.000000e+00, double %748)
  %810 = fadd double %710, %809
  %811 = tail call double @llvm.fmuladd.f64(double %810, double 0xC05D666666666664, double %808)
  %812 = fmul double %718, 2.000000e+00
  %813 = fmul double %718, %812
  %814 = fsub double -0.000000e+00, %813
  %815 = tail call double @llvm.fmuladd.f64(double %742, double %742, double %814)
  %816 = tail call double @llvm.fmuladd.f64(double %719, double %719, double %815)
  %817 = tail call double @llvm.fmuladd.f64(double %816, double 0x40346AAAAAAAAAAA, double %811)
  %818 = fmul double %805, 2.000000e+00
  %819 = fmul double %713, %818
  %820 = fsub double -0.000000e+00, %819
  %821 = tail call double @llvm.fmuladd.f64(double %687, double %750, double %820)
  %822 = tail call double @llvm.fmuladd.f64(double %773, double %712, double %821)
  %823 = tail call double @llvm.fmuladd.f64(double %822, double 0x406E033333333332, double %817)
  %824 = fmul double %752, 4.000000e-01
  %825 = fsub double -0.000000e+00, %824
  %826 = tail call double @llvm.fmuladd.f64(double %687, double 1.400000e+00, double %825)
  %827 = fmul double %714, 4.000000e-01
  %828 = fsub double -0.000000e+00, %827
  %829 = tail call double @llvm.fmuladd.f64(double %773, double 1.400000e+00, double %828)
  %830 = fmul double %719, %829
  %831 = fsub double -0.000000e+00, %830
  %832 = tail call double @llvm.fmuladd.f64(double %826, double %742, double %831)
  %833 = tail call double @llvm.fmuladd.f64(double %832, double -1.750000e+01, double %823)
  %834 = load double, double* %686, align 8, !tbaa !8
  %835 = load double, double* %142, align 16, !tbaa !8
  %836 = tail call double @llvm.fmuladd.f64(double %835, double -4.000000e+00, double %834)
  %837 = load double, double* %47, align 16, !tbaa !8
  %838 = tail call double @llvm.fmuladd.f64(double %837, double 6.000000e+00, double %836)
  %839 = load double, double* %72, align 16, !tbaa !8
  %840 = tail call double @llvm.fmuladd.f64(double %839, double -4.000000e+00, double %838)
  %841 = tail call double @llvm.fmuladd.f64(double %840, double -2.500000e-01, double %760)
  store double %841, double* %754, align 8, !tbaa !8
  %842 = load double, double* %149, align 8, !tbaa !8
  %843 = load double, double* %146, align 8, !tbaa !8
  %844 = tail call double @llvm.fmuladd.f64(double %843, double -4.000000e+00, double %842)
  %845 = load double, double* %52, align 8, !tbaa !8
  %846 = tail call double @llvm.fmuladd.f64(double %845, double 6.000000e+00, double %844)
  %847 = load double, double* %77, align 8, !tbaa !8
  %848 = tail call double @llvm.fmuladd.f64(double %847, double -4.000000e+00, double %846)
  %849 = tail call double @llvm.fmuladd.f64(double %848, double -2.500000e-01, double %777)
  store double %849, double* %761, align 8, !tbaa !8
  %850 = load double, double* %154, align 16, !tbaa !8
  %851 = load double, double* %151, align 16, !tbaa !8
  %852 = tail call double @llvm.fmuladd.f64(double %851, double -4.000000e+00, double %850)
  %853 = load double, double* %57, align 16, !tbaa !8
  %854 = tail call double @llvm.fmuladd.f64(double %853, double 6.000000e+00, double %852)
  %855 = load double, double* %82, align 16, !tbaa !8
  %856 = tail call double @llvm.fmuladd.f64(double %855, double -4.000000e+00, double %854)
  %857 = tail call double @llvm.fmuladd.f64(double %856, double -2.500000e-01, double %789)
  store double %857, double* %778, align 8, !tbaa !8
  %858 = load double, double* %159, align 8, !tbaa !8
  %859 = tail call double @llvm.fmuladd.f64(double %793, double -4.000000e+00, double %858)
  %860 = load double, double* %62, align 8, !tbaa !8
  %861 = tail call double @llvm.fmuladd.f64(double %860, double 6.000000e+00, double %859)
  %862 = load double, double* %87, align 8, !tbaa !8
  %863 = tail call double @llvm.fmuladd.f64(double %862, double -4.000000e+00, double %861)
  %864 = tail call double @llvm.fmuladd.f64(double %863, double -2.500000e-01, double %802)
  store double %864, double* %790, align 8, !tbaa !8
  %865 = load double, double* %164, align 16, !tbaa !8
  %866 = load double, double* %161, align 16, !tbaa !8
  %867 = tail call double @llvm.fmuladd.f64(double %866, double -4.000000e+00, double %865)
  %868 = tail call double @llvm.fmuladd.f64(double %805, double 6.000000e+00, double %867)
  %869 = load double, double* %92, align 16, !tbaa !8
  %870 = tail call double @llvm.fmuladd.f64(double %869, double -4.000000e+00, double %868)
  %871 = tail call double @llvm.fmuladd.f64(double %870, double -2.500000e-01, double %833)
  store double %871, double* %803, align 8, !tbaa !8
  %872 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %702, double* %872, align 16, !tbaa !8
  store double %701, double* %149, align 8, !tbaa !8
  store double %700, double* %154, align 16, !tbaa !8
  store i64 %699, i64* %160, align 8, !tbaa !8
  store i64 %698, i64* %165, align 16, !tbaa !8
  %873 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  store double %697, double* %873, align 16, !tbaa !8
  store double %696, double* %146, align 8, !tbaa !8
  store double %695, double* %151, align 16, !tbaa !8
  store double %694, double* %156, align 8, !tbaa !8
  store i64 %693, i64* %162, align 16, !tbaa !8
  %874 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %691, double* %874, align 16, !tbaa !8
  store double %690, double* %52, align 8, !tbaa !8
  store double %689, double* %57, align 16, !tbaa !8
  store double %688, double* %62, align 8, !tbaa !8
  store double %687, double* %67, align 16, !tbaa !8
  store i64 %727, i64* %73, align 16, !tbaa !8
  store i64 %730, i64* %78, align 8, !tbaa !8
  store i64 %733, i64* %83, align 16, !tbaa !8
  store i64 %736, i64* %88, align 8, !tbaa !8
  store i64 %739, i64* %93, align 16, !tbaa !8
  %875 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %33, i64 %41, i64 %43, i64 %724
  %876 = load double, double* %875, align 8, !tbaa !8
  %877 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %34, i64 %41, i64 %43, i64 %724
  %878 = load double, double* %877, align 8, !tbaa !8
  %879 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %35, i64 %41, i64 %43, i64 %724
  %880 = load double, double* %879, align 8, !tbaa !8
  %881 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %36, i64 %41, i64 %43, i64 %724
  %882 = load double, double* %881, align 8, !tbaa !8
  %883 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %37, i64 %41, i64 %43, i64 %724
  %884 = load double, double* %883, align 8, !tbaa !8
  %885 = getelementptr inbounds [37 x [37 x double]], [37 x [37 x double]]* %38, i64 %41, i64 %43, i64 %724
  %886 = load double, double* %885, align 8, !tbaa !8
  %887 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %740, i64 0
  %888 = load double, double* %887, align 8, !tbaa !8
  %889 = bitcast i64 %727 to double
  %890 = tail call double @llvm.fmuladd.f64(double %691, double -2.000000e+00, double %889)
  %891 = fadd double %890, %697
  %892 = tail call double @llvm.fmuladd.f64(double %891, double 0x408CB60000000002, double %888)
  %893 = bitcast i64 %730 to double
  %894 = fsub double %893, %696
  %895 = tail call double @llvm.fmuladd.f64(double %894, double -1.750000e+01, double %892)
  %896 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %740, i64 1
  %897 = load double, double* %896, align 8, !tbaa !8
  %898 = tail call double @llvm.fmuladd.f64(double %690, double -2.000000e+00, double %893)
  %899 = fadd double %696, %898
  %900 = tail call double @llvm.fmuladd.f64(double %899, double 0x408CB60000000002, double %897)
  %901 = tail call double @llvm.fmuladd.f64(double %742, double -2.000000e+00, double %876)
  %902 = fadd double %718, %901
  %903 = tail call double @llvm.fmuladd.f64(double %902, double 0x40646AAAAAAAAAAA, double %900)
  %904 = fmul double %718, %696
  %905 = fsub double -0.000000e+00, %904
  %906 = tail call double @llvm.fmuladd.f64(double %893, double %876, double %905)
  %907 = bitcast i64 %739 to double
  %908 = fsub double %907, %886
  %909 = fsub double %908, %692
  %910 = fadd double %715, %909
  %911 = tail call double @llvm.fmuladd.f64(double %910, double 4.000000e-01, double %906)
  %912 = tail call double @llvm.fmuladd.f64(double %911, double -1.750000e+01, double %903)
  %913 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %740, i64 2
  %914 = load double, double* %913, align 8, !tbaa !8
  %915 = bitcast i64 %733 to double
  %916 = tail call double @llvm.fmuladd.f64(double %689, double -2.000000e+00, double %915)
  %917 = fadd double %916, %695
  %918 = tail call double @llvm.fmuladd.f64(double %917, double 0x408CB60000000002, double %914)
  %919 = tail call double @llvm.fmuladd.f64(double %744, double -2.000000e+00, double %878)
  %920 = fadd double %716, %919
  %921 = tail call double @llvm.fmuladd.f64(double %920, double 1.225000e+02, double %918)
  %922 = fmul double %718, %695
  %923 = fsub double -0.000000e+00, %922
  %924 = tail call double @llvm.fmuladd.f64(double %915, double %876, double %923)
  %925 = tail call double @llvm.fmuladd.f64(double %924, double -1.750000e+01, double %921)
  %926 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %740, i64 3
  %927 = load double, double* %926, align 8, !tbaa !8
  %928 = bitcast i64 %736 to double
  %929 = tail call double @llvm.fmuladd.f64(double %688, double -2.000000e+00, double %928)
  %930 = fadd double %929, %694
  %931 = tail call double @llvm.fmuladd.f64(double %930, double 0x408CB60000000002, double %927)
  %932 = tail call double @llvm.fmuladd.f64(double %746, double -2.000000e+00, double %880)
  %933 = fadd double %709, %932
  %934 = tail call double @llvm.fmuladd.f64(double %933, double 1.225000e+02, double %931)
  %935 = fmul double %718, %694
  %936 = fsub double -0.000000e+00, %935
  %937 = tail call double @llvm.fmuladd.f64(double %928, double %876, double %936)
  %938 = tail call double @llvm.fmuladd.f64(double %937, double -1.750000e+01, double %934)
  %939 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %39, i64 %41, i64 %43, i64 %740, i64 4
  %940 = load double, double* %939, align 8, !tbaa !8
  %941 = tail call double @llvm.fmuladd.f64(double %687, double -2.000000e+00, double %907)
  %942 = fadd double %692, %941
  %943 = tail call double @llvm.fmuladd.f64(double %942, double 0x408CB60000000002, double %940)
  %944 = tail call double @llvm.fmuladd.f64(double %748, double -2.000000e+00, double %882)
  %945 = fadd double %711, %944
  %946 = tail call double @llvm.fmuladd.f64(double %945, double 0xC05D666666666664, double %943)
  %947 = fmul double %742, 2.000000e+00
  %948 = fmul double %742, %947
  %949 = fsub double -0.000000e+00, %948
  %950 = tail call double @llvm.fmuladd.f64(double %876, double %876, double %949)
  %951 = tail call double @llvm.fmuladd.f64(double %718, double %718, double %950)
  %952 = tail call double @llvm.fmuladd.f64(double %951, double 0x40346AAAAAAAAAAA, double %946)
  %953 = fmul double %687, 2.000000e+00
  %954 = fmul double %750, %953
  %955 = fsub double -0.000000e+00, %954
  %956 = tail call double @llvm.fmuladd.f64(double %907, double %884, double %955)
  %957 = tail call double @llvm.fmuladd.f64(double %692, double %713, double %956)
  %958 = tail call double @llvm.fmuladd.f64(double %957, double 0x406E033333333332, double %952)
  %959 = fmul double %886, 4.000000e-01
  %960 = fsub double -0.000000e+00, %959
  %961 = tail call double @llvm.fmuladd.f64(double %907, double 1.400000e+00, double %960)
  %962 = fmul double %715, 4.000000e-01
  %963 = fsub double -0.000000e+00, %962
  %964 = tail call double @llvm.fmuladd.f64(double %692, double 1.400000e+00, double %963)
  %965 = fmul double %718, %964
  %966 = fsub double -0.000000e+00, %965
  %967 = tail call double @llvm.fmuladd.f64(double %961, double %876, double %966)
  %968 = tail call double @llvm.fmuladd.f64(double %967, double -1.750000e+01, double %958)
  %969 = load double, double* %686, align 8, !tbaa !8
  %970 = load double, double* %142, align 16, !tbaa !8
  %971 = tail call double @llvm.fmuladd.f64(double %970, double -4.000000e+00, double %969)
  %972 = load double, double* %47, align 16, !tbaa !8
  %973 = tail call double @llvm.fmuladd.f64(double %972, double 5.000000e+00, double %971)
  %974 = tail call double @llvm.fmuladd.f64(double %973, double -2.500000e-01, double %895)
  store double %974, double* %887, align 8, !tbaa !8
  %975 = load double, double* %149, align 8, !tbaa !8
  %976 = load double, double* %146, align 8, !tbaa !8
  %977 = tail call double @llvm.fmuladd.f64(double %976, double -4.000000e+00, double %975)
  %978 = load double, double* %52, align 8, !tbaa !8
  %979 = tail call double @llvm.fmuladd.f64(double %978, double 5.000000e+00, double %977)
  %980 = tail call double @llvm.fmuladd.f64(double %979, double -2.500000e-01, double %912)
  store double %980, double* %896, align 8, !tbaa !8
  %981 = load double, double* %154, align 16, !tbaa !8
  %982 = load double, double* %151, align 16, !tbaa !8
  %983 = tail call double @llvm.fmuladd.f64(double %982, double -4.000000e+00, double %981)
  %984 = load double, double* %57, align 16, !tbaa !8
  %985 = tail call double @llvm.fmuladd.f64(double %984, double 5.000000e+00, double %983)
  %986 = tail call double @llvm.fmuladd.f64(double %985, double -2.500000e-01, double %925)
  store double %986, double* %913, align 8, !tbaa !8
  %987 = load double, double* %159, align 8, !tbaa !8
  %988 = load double, double* %156, align 8, !tbaa !8
  %989 = tail call double @llvm.fmuladd.f64(double %988, double -4.000000e+00, double %987)
  %990 = load double, double* %62, align 8, !tbaa !8
  %991 = tail call double @llvm.fmuladd.f64(double %990, double 5.000000e+00, double %989)
  %992 = tail call double @llvm.fmuladd.f64(double %991, double -2.500000e-01, double %938)
  store double %992, double* %926, align 8, !tbaa !8
  %993 = load double, double* %164, align 16, !tbaa !8
  %994 = load double, double* %161, align 16, !tbaa !8
  %995 = tail call double @llvm.fmuladd.f64(double %994, double -4.000000e+00, double %993)
  %996 = load double, double* %67, align 16, !tbaa !8
  %997 = tail call double @llvm.fmuladd.f64(double %996, double 5.000000e+00, double %995)
  %998 = tail call double @llvm.fmuladd.f64(double %997, double -2.500000e-01, double %968)
  store double %998, double* %939, align 8, !tbaa !8
  br label %999

; <label>:999:                                    ; preds = %685, %11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #3

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
