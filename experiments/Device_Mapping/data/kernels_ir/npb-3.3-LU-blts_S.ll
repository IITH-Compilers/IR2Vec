; ModuleID = 'npb-LU-blts.cl'
source_filename = "npb-LU-blts.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @blts(double*, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = alloca [5 x [5 x double]], align 16
  %12 = alloca [5 x [5 x double]], align 16
  %13 = alloca [5 x [5 x double]], align 16
  %14 = alloca [5 x [5 x double]], align 16
  %15 = alloca [5 x [5 x double]], align 16
  %16 = alloca [5 x double], align 16
  %17 = bitcast [5 x [5 x double]]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %17) #4
  %18 = bitcast [5 x [5 x double]]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %18) #4
  %19 = bitcast [5 x [5 x double]]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %19) #4
  %20 = bitcast [5 x [5 x double]]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %20) #4
  %21 = bitcast [5 x [5 x double]]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %21) #4
  %22 = bitcast [5 x double]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #4
  %23 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %24 = sext i32 %8 to i64
  %25 = add nsw i64 %24, 1
  %26 = add i64 %25, %23
  %27 = trunc i64 %26 to i32
  %28 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %29 = sext i32 %9 to i64
  %30 = add nsw i64 %29, 1
  %31 = add i64 %30, %28
  %32 = sext i32 %7 to i64
  %33 = add nsw i64 %32, 1
  %34 = sub nsw i64 %33, %24
  %35 = sub nsw i64 %34, %29
  %36 = sub i64 %35, %23
  %37 = sub i64 %36, %28
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %4, -1
  %40 = icmp sgt i32 %39, %27
  br i1 %40, label %41, label %914

; <label>:41:                                     ; preds = %10
  %42 = trunc i64 %31 to i32
  %43 = add nsw i32 %5, -1
  %44 = icmp sgt i32 %43, %42
  %45 = icmp sgt i32 %38, 0
  %46 = and i1 %44, %45
  %47 = add nsw i32 %6, -1
  %48 = icmp sgt i32 %47, %38
  %49 = and i1 %48, %46
  br i1 %49, label %50, label %914

; <label>:50:                                     ; preds = %41
  %51 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %52 = bitcast double* %1 to [13 x [13 x [5 x double]]]*
  %53 = bitcast double* %2 to [13 x [13 x double]]*
  %54 = bitcast double* %3 to [13 x [13 x double]]*
  %55 = shl i64 %26, 32
  %56 = ashr exact i64 %55, 32
  %57 = shl i64 %31, 32
  %58 = ashr exact i64 %57, 32
  %59 = shl i64 %37, 32
  %60 = ashr exact i64 %59, 32
  %61 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %56, i64 %58, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fmul double %62, %62
  %64 = fmul double %62, %63
  %65 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 0
  store double 3.035000e+02, double* %65, align 16, !tbaa !8
  %66 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %67, align 16, !tbaa !8
  %68 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %69, align 16, !tbaa !8
  %70 = fmul double %63, 0xC0442AAAAAAAAAAB
  %71 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 1
  %72 = load double, double* %71, align 8, !tbaa !8
  %73 = fmul double %70, %72
  %74 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 1
  store double %73, double* %74, align 8, !tbaa !8
  %75 = fmul double %62, 1.000000e-01
  %76 = tail call double @llvm.fmuladd.f64(double %75, double 0x4079355555555555, double 1.000000e+00)
  %77 = fadd double %76, 3.025000e+02
  %78 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 1
  store double %77, double* %78, align 8, !tbaa !8
  %79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %79, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %80, align 8, !tbaa !8
  %81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 2
  %83 = load double, double* %82, align 8, !tbaa !8
  %84 = fmul double %70, %83
  %85 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 2
  store double %84, double* %85, align 16, !tbaa !8
  %86 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %86, align 8, !tbaa !8
  %87 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 2
  store double %77, double* %87, align 16, !tbaa !8
  %88 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %88, align 8, !tbaa !8
  %89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %89, align 16, !tbaa !8
  %90 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 3
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = fmul double %70, %91
  %93 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 3
  store double %92, double* %93, align 8, !tbaa !8
  %94 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %94, align 8, !tbaa !8
  %95 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %95, align 8, !tbaa !8
  %96 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 3
  store double %77, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %97, align 8, !tbaa !8
  %98 = fmul double %72, %72
  %99 = fmul double %83, %83
  %100 = fmul double %99, 0xC03ED08DFEA27981
  %101 = tail call double @llvm.fmuladd.f64(double %98, double 0xC03ED08DFEA27981, double %100)
  %102 = fmul double %91, %91
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 0xC03ED08DFEA27981, double %101)
  %104 = fmul double %63, 7.114800e+01
  %105 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 4
  %106 = load double, double* %105, align 8, !tbaa !8
  %107 = fmul double %104, %106
  %108 = tail call double @llvm.fmuladd.f64(double %103, double %64, double %107)
  %109 = fsub double -0.000000e+00, %108
  %110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 4
  store double %109, double* %110, align 16, !tbaa !8
  %111 = fmul double %63, %72
  %112 = fmul double %111, 0xC03ED08DFEA27981
  %113 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 4
  store double %112, double* %113, align 8, !tbaa !8
  %114 = fmul double %63, %83
  %115 = fmul double %114, 0xC03ED08DFEA27981
  %116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 4
  store double %115, double* %116, align 16, !tbaa !8
  %117 = fmul double %63, %91
  %118 = fmul double %117, 0xC03ED08DFEA27981
  %119 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 4
  store double %118, double* %119, align 8, !tbaa !8
  %120 = tail call double @llvm.fmuladd.f64(double %62, double 7.114800e+01, double 1.000000e+00)
  %121 = fadd double %120, 3.025000e+02
  %122 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 4
  store double %121, double* %122, align 16, !tbaa !8
  %123 = add i64 %55, -4294967296
  %124 = ashr exact i64 %123, 32
  %125 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %124, i64 %58, i64 %60
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = fmul double %126, %126
  %128 = fmul double %126, %127
  %129 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 0
  store double -6.050000e+01, double* %129, align 16, !tbaa !8
  %130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %130, align 8, !tbaa !8
  %131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %131, align 16, !tbaa !8
  %132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 0
  store double -2.750000e+00, double* %132, align 8, !tbaa !8
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %133, align 16, !tbaa !8
  %134 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %124, i64 %58, i64 %60, i64 1
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %124, i64 %58, i64 %60, i64 3
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = fmul double %135, %137
  %139 = fmul double %127, %138
  %140 = fsub double -0.000000e+00, %139
  %141 = fmul double %127, -1.000000e-01
  %142 = fmul double %141, %135
  %143 = fmul double %142, 6.050000e+01
  %144 = fsub double -0.000000e+00, %143
  %145 = tail call double @llvm.fmuladd.f64(double %140, double -2.750000e+00, double %144)
  %146 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 1
  store double %145, double* %146, align 8, !tbaa !8
  %147 = fmul double %126, %137
  %148 = fmul double %126, 0x4018333333333334
  %149 = fsub double -0.000000e+00, %148
  %150 = tail call double @llvm.fmuladd.f64(double %147, double -2.750000e+00, double %149)
  %151 = fadd double %150, -6.050000e+01
  %152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 1
  store double %151, double* %152, align 8, !tbaa !8
  %153 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %153, align 8, !tbaa !8
  %154 = fmul double %126, %135
  %155 = fmul double %154, -2.750000e+00
  %156 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 1
  store double %155, double* %156, align 8, !tbaa !8
  %157 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %157, align 8, !tbaa !8
  %158 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %124, i64 %58, i64 %60, i64 2
  %159 = load double, double* %158, align 8, !tbaa !8
  %160 = fmul double %137, %159
  %161 = fmul double %127, %160
  %162 = fsub double -0.000000e+00, %161
  %163 = fmul double %141, %159
  %164 = fmul double %163, 6.050000e+01
  %165 = fsub double -0.000000e+00, %164
  %166 = tail call double @llvm.fmuladd.f64(double %162, double -2.750000e+00, double %165)
  %167 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 2
  store double %166, double* %167, align 16, !tbaa !8
  %168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %168, align 8, !tbaa !8
  %169 = fmul double %126, 1.000000e-01
  %170 = fmul double %169, 6.050000e+01
  %171 = fsub double -0.000000e+00, %170
  %172 = tail call double @llvm.fmuladd.f64(double %147, double -2.750000e+00, double %171)
  %173 = fadd double %172, -6.050000e+01
  %174 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 2
  store double %173, double* %174, align 16, !tbaa !8
  %175 = fmul double %126, %159
  %176 = fmul double %175, -2.750000e+00
  %177 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 2
  store double %176, double* %177, align 8, !tbaa !8
  %178 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %178, align 16, !tbaa !8
  %179 = fsub double -0.000000e+00, %147
  %180 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %53, i64 %124, i64 %58, i64 %60
  %181 = load double, double* %180, align 8, !tbaa !8
  %182 = fmul double %181, 4.000000e-01
  %183 = fmul double %126, %182
  %184 = tail call double @llvm.fmuladd.f64(double %179, double %147, double %183)
  %185 = fmul double %127, 0xBFC1111111111111
  %186 = fmul double %185, %137
  %187 = fmul double %186, 6.050000e+01
  %188 = fsub double -0.000000e+00, %187
  %189 = tail call double @llvm.fmuladd.f64(double %184, double -2.750000e+00, double %188)
  %190 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 3
  store double %189, double* %190, align 8, !tbaa !8
  %191 = fmul double %154, -4.000000e-01
  %192 = fmul double %191, -2.750000e+00
  %193 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 3
  store double %192, double* %193, align 8, !tbaa !8
  %194 = fmul double %175, -4.000000e-01
  %195 = fmul double %194, -2.750000e+00
  %196 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 3
  store double %195, double* %196, align 8, !tbaa !8
  %197 = fmul double %126, 0x3FC1111111111111
  %198 = fmul double %197, 6.050000e+01
  %199 = fsub double -0.000000e+00, %198
  %200 = tail call double @llvm.fmuladd.f64(double %147, double -4.400000e+00, double %199)
  %201 = fadd double %200, -6.050000e+01
  %202 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 3
  store double %201, double* %202, align 8, !tbaa !8
  %203 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 3
  store double -1.100000e+00, double* %203, align 8, !tbaa !8
  %204 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %124, i64 %58, i64 %60, i64 4
  %205 = load double, double* %204, align 8, !tbaa !8
  %206 = fmul double %205, 1.400000e+00
  %207 = fsub double -0.000000e+00, %206
  %208 = tail call double @llvm.fmuladd.f64(double %181, double 8.000000e-01, double %207)
  %209 = fmul double %137, %208
  %210 = fmul double %127, %209
  %211 = fmul double %128, 0x3FB89374BC6A7EF8
  %212 = fmul double %135, %135
  %213 = fmul double %128, 0xBFB89374BC6A7EF8
  %214 = fmul double %159, %159
  %215 = fmul double %213, %214
  %216 = fsub double -0.000000e+00, %215
  %217 = tail call double @llvm.fmuladd.f64(double %211, double %212, double %216)
  %218 = fmul double %128, 0x3FB00AEC33E1F670
  %219 = fmul double %137, %137
  %220 = tail call double @llvm.fmuladd.f64(double %218, double %219, double %217)
  %221 = fmul double %127, 0x3FC916872B020C49
  %222 = fsub double -0.000000e+00, %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %205, double %220)
  %224 = fmul double %223, 6.050000e+01
  %225 = fsub double -0.000000e+00, %224
  %226 = tail call double @llvm.fmuladd.f64(double %210, double -2.750000e+00, double %225)
  %227 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 4
  store double %226, double* %227, align 16, !tbaa !8
  %228 = fmul double %138, -4.000000e-01
  %229 = fmul double %127, %228
  %230 = fmul double %127, 0xC0173B645A1CAC06
  %231 = fmul double %230, %135
  %232 = fsub double -0.000000e+00, %231
  %233 = tail call double @llvm.fmuladd.f64(double %229, double -2.750000e+00, double %232)
  %234 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 4
  store double %233, double* %234, align 8, !tbaa !8
  %235 = fmul double %160, -4.000000e-01
  %236 = fmul double %127, %235
  %237 = fmul double %230, %159
  %238 = fsub double -0.000000e+00, %237
  %239 = tail call double @llvm.fmuladd.f64(double %236, double -2.750000e+00, double %238)
  %240 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 4
  store double %239, double* %240, align 16, !tbaa !8
  %241 = fmul double %126, %205
  %242 = fmul double %127, %219
  %243 = tail call double @llvm.fmuladd.f64(double %181, double %126, double %242)
  %244 = fmul double %243, 4.000000e-01
  %245 = fsub double -0.000000e+00, %244
  %246 = tail call double @llvm.fmuladd.f64(double %241, double 1.400000e+00, double %245)
  %247 = fmul double %127, 0xC00E54A6921735EC
  %248 = fmul double %247, %137
  %249 = fsub double -0.000000e+00, %248
  %250 = tail call double @llvm.fmuladd.f64(double %246, double -2.750000e+00, double %249)
  %251 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 4
  store double %250, double* %251, align 8, !tbaa !8
  %252 = fmul double %147, 1.400000e+00
  %253 = fmul double %126, 0x4027B74BC6A7EF9D
  %254 = fsub double -0.000000e+00, %253
  %255 = tail call double @llvm.fmuladd.f64(double %252, double -2.750000e+00, double %254)
  %256 = fadd double %255, -6.050000e+01
  %257 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 4
  store double %256, double* %257, align 16, !tbaa !8
  %258 = add i64 %57, -4294967296
  %259 = ashr exact i64 %258, 32
  %260 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %56, i64 %259, i64 %60
  %261 = load double, double* %260, align 8, !tbaa !8
  %262 = fmul double %261, %261
  %263 = fmul double %261, %262
  %264 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %264, align 16, !tbaa !8
  %265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %265, align 8, !tbaa !8
  %266 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 0
  store double -2.750000e+00, double* %266, align 16, !tbaa !8
  %267 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %267, align 8, !tbaa !8
  %268 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %268, align 16, !tbaa !8
  %269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %259, i64 %60, i64 1
  %270 = load double, double* %269, align 8, !tbaa !8
  %271 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %259, i64 %60, i64 2
  %272 = load double, double* %271, align 8, !tbaa !8
  %273 = fmul double %270, %272
  %274 = fmul double %262, %273
  %275 = fsub double -0.000000e+00, %274
  %276 = fmul double %262, -1.000000e-01
  %277 = fmul double %276, %270
  %278 = fmul double %277, 6.050000e+01
  %279 = fsub double -0.000000e+00, %278
  %280 = tail call double @llvm.fmuladd.f64(double %275, double -2.750000e+00, double %279)
  %281 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 1
  store double %280, double* %281, align 8, !tbaa !8
  %282 = fmul double %261, %272
  %283 = fmul double %261, 1.000000e-01
  %284 = fmul double %283, 6.050000e+01
  %285 = fsub double -0.000000e+00, %284
  %286 = tail call double @llvm.fmuladd.f64(double %282, double -2.750000e+00, double %285)
  %287 = fadd double %286, -4.537500e+01
  %288 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 1
  store double %287, double* %288, align 8, !tbaa !8
  %289 = fmul double %261, %270
  %290 = fmul double %289, -2.750000e+00
  %291 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 1
  store double %290, double* %291, align 8, !tbaa !8
  %292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %292, align 8, !tbaa !8
  %293 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %293, align 8, !tbaa !8
  %294 = fsub double -0.000000e+00, %282
  %295 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %53, i64 %56, i64 %259, i64 %60
  %296 = load double, double* %295, align 8, !tbaa !8
  %297 = fmul double %261, %296
  %298 = fmul double %297, 4.000000e-01
  %299 = tail call double @llvm.fmuladd.f64(double %294, double %282, double %298)
  %300 = fmul double %262, 0xBFC1111111111111
  %301 = fmul double %300, %272
  %302 = fmul double %301, 6.050000e+01
  %303 = fsub double -0.000000e+00, %302
  %304 = tail call double @llvm.fmuladd.f64(double %299, double -2.750000e+00, double %303)
  %305 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 2
  store double %304, double* %305, align 16, !tbaa !8
  %306 = fmul double %289, -4.000000e-01
  %307 = fmul double %306, -2.750000e+00
  %308 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 2
  store double %307, double* %308, align 8, !tbaa !8
  %309 = fmul double %282, 1.600000e+00
  %310 = fmul double %261, 0x3FC1111111111111
  %311 = fmul double %310, 6.050000e+01
  %312 = fsub double -0.000000e+00, %311
  %313 = tail call double @llvm.fmuladd.f64(double %309, double -2.750000e+00, double %312)
  %314 = fadd double %313, -4.537500e+01
  %315 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 2
  store double %314, double* %315, align 16, !tbaa !8
  %316 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %259, i64 %60, i64 3
  %317 = load double, double* %316, align 8, !tbaa !8
  %318 = fmul double %261, %317
  %319 = fmul double %318, -4.000000e-01
  %320 = fmul double %319, -2.750000e+00
  %321 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 2
  store double %320, double* %321, align 8, !tbaa !8
  %322 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 2
  store double -1.100000e+00, double* %322, align 16, !tbaa !8
  %323 = fmul double %272, %317
  %324 = fmul double %262, %323
  %325 = fsub double -0.000000e+00, %324
  %326 = fmul double %276, %317
  %327 = fmul double %326, 6.050000e+01
  %328 = fsub double -0.000000e+00, %327
  %329 = tail call double @llvm.fmuladd.f64(double %325, double -2.750000e+00, double %328)
  %330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 3
  store double %329, double* %330, align 8, !tbaa !8
  %331 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %331, align 8, !tbaa !8
  %332 = fmul double %318, -2.750000e+00
  %333 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 3
  store double %332, double* %333, align 8, !tbaa !8
  %334 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 3
  store double %287, double* %334, align 8, !tbaa !8
  %335 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %335, align 8, !tbaa !8
  %336 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %259, i64 %60, i64 4
  %337 = load double, double* %336, align 8, !tbaa !8
  %338 = fmul double %337, 1.400000e+00
  %339 = fsub double -0.000000e+00, %338
  %340 = tail call double @llvm.fmuladd.f64(double %296, double 8.000000e-01, double %339)
  %341 = fmul double %262, %272
  %342 = fmul double %341, %340
  %343 = fmul double %263, 0x3FB89374BC6A7EF8
  %344 = fmul double %270, %270
  %345 = fmul double %263, 0xBFB00AEC33E1F670
  %346 = fmul double %272, %272
  %347 = fmul double %345, %346
  %348 = fsub double -0.000000e+00, %347
  %349 = tail call double @llvm.fmuladd.f64(double %343, double %344, double %348)
  %350 = fmul double %317, %317
  %351 = tail call double @llvm.fmuladd.f64(double %343, double %350, double %349)
  %352 = fmul double %262, 0x3FC916872B020C49
  %353 = fsub double -0.000000e+00, %352
  %354 = tail call double @llvm.fmuladd.f64(double %353, double %337, double %351)
  %355 = fmul double %354, 6.050000e+01
  %356 = fsub double -0.000000e+00, %355
  %357 = tail call double @llvm.fmuladd.f64(double %342, double -2.750000e+00, double %356)
  %358 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 4
  store double %357, double* %358, align 16, !tbaa !8
  %359 = fmul double %273, -4.000000e-01
  %360 = fmul double %262, %359
  %361 = fmul double %262, 0xC0173B645A1CAC06
  %362 = fmul double %361, %270
  %363 = fsub double -0.000000e+00, %362
  %364 = tail call double @llvm.fmuladd.f64(double %360, double -2.750000e+00, double %363)
  %365 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 4
  store double %364, double* %365, align 8, !tbaa !8
  %366 = fmul double %261, %337
  %367 = fmul double %262, %346
  %368 = tail call double @llvm.fmuladd.f64(double %296, double %261, double %367)
  %369 = fmul double %368, 4.000000e-01
  %370 = fsub double -0.000000e+00, %369
  %371 = tail call double @llvm.fmuladd.f64(double %366, double 1.400000e+00, double %370)
  %372 = fmul double %262, 0xC00E54A6921735EC
  %373 = fmul double %372, %272
  %374 = fsub double -0.000000e+00, %373
  %375 = tail call double @llvm.fmuladd.f64(double %371, double -2.750000e+00, double %374)
  %376 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 4
  store double %375, double* %376, align 16, !tbaa !8
  %377 = fmul double %323, -4.000000e-01
  %378 = fmul double %262, %377
  %379 = fmul double %361, %317
  %380 = fsub double -0.000000e+00, %379
  %381 = tail call double @llvm.fmuladd.f64(double %378, double -2.750000e+00, double %380)
  %382 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 4
  store double %381, double* %382, align 8, !tbaa !8
  %383 = fmul double %282, 1.400000e+00
  %384 = fmul double %261, 0x4027B74BC6A7EF9D
  %385 = fsub double -0.000000e+00, %384
  %386 = tail call double @llvm.fmuladd.f64(double %383, double -2.750000e+00, double %385)
  %387 = fadd double %386, -4.537500e+01
  %388 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 4
  store double %387, double* %388, align 16, !tbaa !8
  %389 = add i64 %59, -4294967296
  %390 = ashr exact i64 %389, 32
  %391 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %56, i64 %58, i64 %390
  %392 = load double, double* %391, align 8, !tbaa !8
  %393 = fmul double %392, %392
  %394 = fmul double %392, %393
  %395 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %395, align 16, !tbaa !8
  %396 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 0
  store double -2.750000e+00, double* %396, align 8, !tbaa !8
  %397 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %397, align 16, !tbaa !8
  %398 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %398, align 8, !tbaa !8
  %399 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %399, align 16, !tbaa !8
  %400 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %390, i64 1
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = fmul double %392, %401
  %403 = fsub double -0.000000e+00, %402
  %404 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %53, i64 %56, i64 %58, i64 %390
  %405 = load double, double* %404, align 8, !tbaa !8
  %406 = fmul double %405, 4.000000e-01
  %407 = fmul double %392, %406
  %408 = tail call double @llvm.fmuladd.f64(double %403, double %402, double %407)
  %409 = fmul double %393, 0xBFC1111111111111
  %410 = fmul double %409, %401
  %411 = fmul double %410, 6.050000e+01
  %412 = fsub double -0.000000e+00, %411
  %413 = tail call double @llvm.fmuladd.f64(double %408, double -2.750000e+00, double %412)
  %414 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 1
  store double %413, double* %414, align 8, !tbaa !8
  %415 = fmul double %402, 1.600000e+00
  %416 = fmul double %392, 0x3FC1111111111111
  %417 = fmul double %416, 6.050000e+01
  %418 = fsub double -0.000000e+00, %417
  %419 = tail call double @llvm.fmuladd.f64(double %415, double -2.750000e+00, double %418)
  %420 = fadd double %419, -4.537500e+01
  %421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 1
  store double %420, double* %421, align 8, !tbaa !8
  %422 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %390, i64 2
  %423 = load double, double* %422, align 8, !tbaa !8
  %424 = fmul double %392, %423
  %425 = fmul double %424, -4.000000e-01
  %426 = fmul double %425, -2.750000e+00
  %427 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 1
  store double %426, double* %427, align 8, !tbaa !8
  %428 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %390, i64 3
  %429 = load double, double* %428, align 8, !tbaa !8
  %430 = fmul double %392, %429
  %431 = fmul double %430, -4.000000e-01
  %432 = fmul double %431, -2.750000e+00
  %433 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 1
  store double %432, double* %433, align 8, !tbaa !8
  %434 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 1
  store double -1.100000e+00, double* %434, align 8, !tbaa !8
  %435 = fmul double %401, %423
  %436 = fmul double %393, %435
  %437 = fsub double -0.000000e+00, %436
  %438 = fmul double %393, -1.000000e-01
  %439 = fmul double %438, %423
  %440 = fmul double %439, 6.050000e+01
  %441 = fsub double -0.000000e+00, %440
  %442 = tail call double @llvm.fmuladd.f64(double %437, double -2.750000e+00, double %441)
  %443 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 2
  store double %442, double* %443, align 16, !tbaa !8
  %444 = fmul double %424, -2.750000e+00
  %445 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 2
  store double %444, double* %445, align 8, !tbaa !8
  %446 = fmul double %392, 1.000000e-01
  %447 = fmul double %446, 6.050000e+01
  %448 = fsub double -0.000000e+00, %447
  %449 = tail call double @llvm.fmuladd.f64(double %402, double -2.750000e+00, double %448)
  %450 = fadd double %449, -4.537500e+01
  %451 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 2
  store double %450, double* %451, align 16, !tbaa !8
  %452 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %452, align 8, !tbaa !8
  %453 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %453, align 16, !tbaa !8
  %454 = fmul double %401, %429
  %455 = fmul double %393, %454
  %456 = fsub double -0.000000e+00, %455
  %457 = fmul double %438, %429
  %458 = fmul double %457, 6.050000e+01
  %459 = fsub double -0.000000e+00, %458
  %460 = tail call double @llvm.fmuladd.f64(double %456, double -2.750000e+00, double %459)
  %461 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 3
  store double %460, double* %461, align 8, !tbaa !8
  %462 = fmul double %430, -2.750000e+00
  %463 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 3
  store double %462, double* %463, align 8, !tbaa !8
  %464 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %464, align 8, !tbaa !8
  %465 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 3
  store double %450, double* %465, align 8, !tbaa !8
  %466 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %466, align 8, !tbaa !8
  %467 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %390, i64 4
  %468 = load double, double* %467, align 8, !tbaa !8
  %469 = fmul double %468, 1.400000e+00
  %470 = fsub double -0.000000e+00, %469
  %471 = tail call double @llvm.fmuladd.f64(double %405, double 8.000000e-01, double %470)
  %472 = fmul double %401, %471
  %473 = fmul double %393, %472
  %474 = fmul double %394, 0x3FB00AEC33E1F670
  %475 = fmul double %401, %401
  %476 = fmul double %394, 0xBFB89374BC6A7EF8
  %477 = fmul double %423, %423
  %478 = fmul double %476, %477
  %479 = fsub double -0.000000e+00, %478
  %480 = tail call double @llvm.fmuladd.f64(double %474, double %475, double %479)
  %481 = fmul double %429, %429
  %482 = fsub double -0.000000e+00, %476
  %483 = tail call double @llvm.fmuladd.f64(double %482, double %481, double %480)
  %484 = fmul double %393, 0x3FC916872B020C49
  %485 = fsub double -0.000000e+00, %484
  %486 = tail call double @llvm.fmuladd.f64(double %485, double %468, double %483)
  %487 = fmul double %486, 6.050000e+01
  %488 = fsub double -0.000000e+00, %487
  %489 = tail call double @llvm.fmuladd.f64(double %473, double -2.750000e+00, double %488)
  %490 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 4
  store double %489, double* %490, align 16, !tbaa !8
  %491 = fmul double %392, %468
  %492 = fmul double %392, %405
  %493 = tail call double @llvm.fmuladd.f64(double %475, double %393, double %492)
  %494 = fmul double %493, 4.000000e-01
  %495 = fsub double -0.000000e+00, %494
  %496 = tail call double @llvm.fmuladd.f64(double %491, double 1.400000e+00, double %495)
  %497 = fmul double %393, 0xC00E54A6921735EC
  %498 = fmul double %497, %401
  %499 = fsub double -0.000000e+00, %498
  %500 = tail call double @llvm.fmuladd.f64(double %496, double -2.750000e+00, double %499)
  %501 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 4
  store double %500, double* %501, align 8, !tbaa !8
  %502 = fmul double %435, -4.000000e-01
  %503 = fmul double %393, %502
  %504 = fmul double %393, 0xC0173B645A1CAC06
  %505 = fmul double %504, %423
  %506 = fsub double -0.000000e+00, %505
  %507 = tail call double @llvm.fmuladd.f64(double %503, double -2.750000e+00, double %506)
  %508 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 4
  store double %507, double* %508, align 16, !tbaa !8
  %509 = fmul double %454, -4.000000e-01
  %510 = fmul double %393, %509
  %511 = fmul double %504, %429
  %512 = fsub double -0.000000e+00, %511
  %513 = tail call double @llvm.fmuladd.f64(double %510, double -2.750000e+00, double %512)
  %514 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 4
  store double %513, double* %514, align 8, !tbaa !8
  %515 = fmul double %402, 1.400000e+00
  %516 = fmul double %392, 0x4027B74BC6A7EF9D
  %517 = fsub double -0.000000e+00, %516
  %518 = tail call double @llvm.fmuladd.f64(double %515, double -2.750000e+00, double %517)
  %519 = fadd double %518, -4.537500e+01
  %520 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 4
  store double %519, double* %520, align 16, !tbaa !8
  %521 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %124, i64 %58, i64 %60, i64 0
  %522 = load double, double* %521, align 8, !tbaa !8
  %523 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %124, i64 %58, i64 %60, i64 1
  %524 = load double, double* %523, align 8, !tbaa !8
  %525 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %124, i64 %58, i64 %60, i64 2
  %526 = load double, double* %525, align 8, !tbaa !8
  %527 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %124, i64 %58, i64 %60, i64 3
  %528 = load double, double* %527, align 8, !tbaa !8
  %529 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %124, i64 %58, i64 %60, i64 4
  %530 = load double, double* %529, align 8, !tbaa !8
  %531 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 0
  %532 = load double, double* %531, align 8, !tbaa !8
  %533 = load double, double* %129, align 16, !tbaa !8
  %534 = load double, double* %130, align 8, !tbaa !8
  %535 = fmul double %534, %524
  %536 = tail call double @llvm.fmuladd.f64(double %533, double %522, double %535)
  %537 = load double, double* %131, align 16, !tbaa !8
  %538 = tail call double @llvm.fmuladd.f64(double %537, double %526, double %536)
  %539 = load double, double* %132, align 8, !tbaa !8
  %540 = tail call double @llvm.fmuladd.f64(double %539, double %528, double %538)
  %541 = load double, double* %133, align 16, !tbaa !8
  %542 = tail call double @llvm.fmuladd.f64(double %541, double %530, double %540)
  %543 = tail call double @llvm.fmuladd.f64(double %542, double -1.200000e+00, double %532)
  %544 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %543, double* %544, align 16, !tbaa !8
  %545 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 1
  %546 = load double, double* %545, align 8, !tbaa !8
  %547 = load double, double* %146, align 8, !tbaa !8
  %548 = load double, double* %152, align 8, !tbaa !8
  %549 = fmul double %548, %524
  %550 = tail call double @llvm.fmuladd.f64(double %547, double %522, double %549)
  %551 = load double, double* %153, align 8, !tbaa !8
  %552 = tail call double @llvm.fmuladd.f64(double %551, double %526, double %550)
  %553 = load double, double* %156, align 8, !tbaa !8
  %554 = tail call double @llvm.fmuladd.f64(double %553, double %528, double %552)
  %555 = load double, double* %157, align 8, !tbaa !8
  %556 = tail call double @llvm.fmuladd.f64(double %555, double %530, double %554)
  %557 = tail call double @llvm.fmuladd.f64(double %556, double -1.200000e+00, double %546)
  %558 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  store double %557, double* %558, align 8, !tbaa !8
  %559 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 2
  %560 = load double, double* %559, align 8, !tbaa !8
  %561 = load double, double* %167, align 16, !tbaa !8
  %562 = load double, double* %168, align 8, !tbaa !8
  %563 = fmul double %562, %524
  %564 = tail call double @llvm.fmuladd.f64(double %561, double %522, double %563)
  %565 = load double, double* %174, align 16, !tbaa !8
  %566 = tail call double @llvm.fmuladd.f64(double %565, double %526, double %564)
  %567 = load double, double* %177, align 8, !tbaa !8
  %568 = tail call double @llvm.fmuladd.f64(double %567, double %528, double %566)
  %569 = load double, double* %178, align 16, !tbaa !8
  %570 = tail call double @llvm.fmuladd.f64(double %569, double %530, double %568)
  %571 = tail call double @llvm.fmuladd.f64(double %570, double -1.200000e+00, double %560)
  %572 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  store double %571, double* %572, align 16, !tbaa !8
  %573 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 3
  %574 = load double, double* %573, align 8, !tbaa !8
  %575 = load double, double* %190, align 8, !tbaa !8
  %576 = load double, double* %193, align 8, !tbaa !8
  %577 = fmul double %576, %524
  %578 = tail call double @llvm.fmuladd.f64(double %575, double %522, double %577)
  %579 = load double, double* %196, align 8, !tbaa !8
  %580 = tail call double @llvm.fmuladd.f64(double %579, double %526, double %578)
  %581 = load double, double* %202, align 8, !tbaa !8
  %582 = tail call double @llvm.fmuladd.f64(double %581, double %528, double %580)
  %583 = load double, double* %203, align 8, !tbaa !8
  %584 = tail call double @llvm.fmuladd.f64(double %583, double %530, double %582)
  %585 = tail call double @llvm.fmuladd.f64(double %584, double -1.200000e+00, double %574)
  %586 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  store double %585, double* %586, align 8, !tbaa !8
  %587 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 4
  %588 = load double, double* %587, align 8, !tbaa !8
  %589 = load double, double* %227, align 16, !tbaa !8
  %590 = load double, double* %234, align 8, !tbaa !8
  %591 = fmul double %590, %524
  %592 = tail call double @llvm.fmuladd.f64(double %589, double %522, double %591)
  %593 = load double, double* %240, align 16, !tbaa !8
  %594 = tail call double @llvm.fmuladd.f64(double %593, double %526, double %592)
  %595 = load double, double* %251, align 8, !tbaa !8
  %596 = tail call double @llvm.fmuladd.f64(double %595, double %528, double %594)
  %597 = load double, double* %257, align 16, !tbaa !8
  %598 = tail call double @llvm.fmuladd.f64(double %597, double %530, double %596)
  %599 = tail call double @llvm.fmuladd.f64(double %598, double -1.200000e+00, double %588)
  %600 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  store double %599, double* %600, align 16, !tbaa !8
  %601 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %259, i64 %60, i64 0
  %602 = load double, double* %601, align 8, !tbaa !8
  %603 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %390, i64 0
  %604 = load double, double* %603, align 8, !tbaa !8
  %605 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %259, i64 %60, i64 1
  %606 = load double, double* %605, align 8, !tbaa !8
  %607 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %390, i64 1
  %608 = load double, double* %607, align 8, !tbaa !8
  %609 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %259, i64 %60, i64 2
  %610 = load double, double* %609, align 8, !tbaa !8
  %611 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %390, i64 2
  %612 = load double, double* %611, align 8, !tbaa !8
  %613 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %259, i64 %60, i64 3
  %614 = load double, double* %613, align 8, !tbaa !8
  %615 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %390, i64 3
  %616 = load double, double* %615, align 8, !tbaa !8
  %617 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %259, i64 %60, i64 4
  %618 = load double, double* %617, align 8, !tbaa !8
  %619 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %390, i64 4
  %620 = load double, double* %619, align 8, !tbaa !8
  %621 = load double, double* %264, align 16, !tbaa !8
  %622 = load double, double* %395, align 16, !tbaa !8
  %623 = fmul double %622, %604
  %624 = tail call double @llvm.fmuladd.f64(double %621, double %602, double %623)
  %625 = load double, double* %265, align 8, !tbaa !8
  %626 = tail call double @llvm.fmuladd.f64(double %625, double %606, double %624)
  %627 = load double, double* %396, align 8, !tbaa !8
  %628 = tail call double @llvm.fmuladd.f64(double %627, double %608, double %626)
  %629 = load double, double* %266, align 16, !tbaa !8
  %630 = tail call double @llvm.fmuladd.f64(double %629, double %610, double %628)
  %631 = load double, double* %397, align 16, !tbaa !8
  %632 = tail call double @llvm.fmuladd.f64(double %631, double %612, double %630)
  %633 = load double, double* %267, align 8, !tbaa !8
  %634 = tail call double @llvm.fmuladd.f64(double %633, double %614, double %632)
  %635 = load double, double* %398, align 8, !tbaa !8
  %636 = tail call double @llvm.fmuladd.f64(double %635, double %616, double %634)
  %637 = load double, double* %268, align 16, !tbaa !8
  %638 = tail call double @llvm.fmuladd.f64(double %637, double %618, double %636)
  %639 = load double, double* %399, align 16, !tbaa !8
  %640 = tail call double @llvm.fmuladd.f64(double %639, double %620, double %638)
  %641 = tail call double @llvm.fmuladd.f64(double %640, double -1.200000e+00, double %543)
  store double %641, double* %544, align 16, !tbaa !8
  %642 = load double, double* %281, align 8, !tbaa !8
  %643 = load double, double* %414, align 8, !tbaa !8
  %644 = fmul double %643, %604
  %645 = tail call double @llvm.fmuladd.f64(double %642, double %602, double %644)
  %646 = load double, double* %288, align 8, !tbaa !8
  %647 = tail call double @llvm.fmuladd.f64(double %646, double %606, double %645)
  %648 = load double, double* %421, align 8, !tbaa !8
  %649 = tail call double @llvm.fmuladd.f64(double %648, double %608, double %647)
  %650 = load double, double* %291, align 8, !tbaa !8
  %651 = tail call double @llvm.fmuladd.f64(double %650, double %610, double %649)
  %652 = load double, double* %427, align 8, !tbaa !8
  %653 = tail call double @llvm.fmuladd.f64(double %652, double %612, double %651)
  %654 = load double, double* %292, align 8, !tbaa !8
  %655 = tail call double @llvm.fmuladd.f64(double %654, double %614, double %653)
  %656 = load double, double* %433, align 8, !tbaa !8
  %657 = tail call double @llvm.fmuladd.f64(double %656, double %616, double %655)
  %658 = load double, double* %293, align 8, !tbaa !8
  %659 = tail call double @llvm.fmuladd.f64(double %658, double %618, double %657)
  %660 = load double, double* %434, align 8, !tbaa !8
  %661 = tail call double @llvm.fmuladd.f64(double %660, double %620, double %659)
  %662 = tail call double @llvm.fmuladd.f64(double %661, double -1.200000e+00, double %557)
  store double %662, double* %558, align 8, !tbaa !8
  %663 = load double, double* %305, align 16, !tbaa !8
  %664 = load double, double* %443, align 16, !tbaa !8
  %665 = fmul double %664, %604
  %666 = tail call double @llvm.fmuladd.f64(double %663, double %602, double %665)
  %667 = load double, double* %308, align 8, !tbaa !8
  %668 = tail call double @llvm.fmuladd.f64(double %667, double %606, double %666)
  %669 = load double, double* %445, align 8, !tbaa !8
  %670 = tail call double @llvm.fmuladd.f64(double %669, double %608, double %668)
  %671 = load double, double* %315, align 16, !tbaa !8
  %672 = tail call double @llvm.fmuladd.f64(double %671, double %610, double %670)
  %673 = load double, double* %451, align 16, !tbaa !8
  %674 = tail call double @llvm.fmuladd.f64(double %673, double %612, double %672)
  %675 = load double, double* %321, align 8, !tbaa !8
  %676 = tail call double @llvm.fmuladd.f64(double %675, double %614, double %674)
  %677 = load double, double* %452, align 8, !tbaa !8
  %678 = tail call double @llvm.fmuladd.f64(double %677, double %616, double %676)
  %679 = load double, double* %322, align 16, !tbaa !8
  %680 = tail call double @llvm.fmuladd.f64(double %679, double %618, double %678)
  %681 = load double, double* %453, align 16, !tbaa !8
  %682 = tail call double @llvm.fmuladd.f64(double %681, double %620, double %680)
  %683 = tail call double @llvm.fmuladd.f64(double %682, double -1.200000e+00, double %571)
  store double %683, double* %572, align 16, !tbaa !8
  %684 = load double, double* %586, align 8, !tbaa !8
  %685 = load double, double* %330, align 8, !tbaa !8
  %686 = load double, double* %461, align 8, !tbaa !8
  %687 = fmul double %686, %604
  %688 = tail call double @llvm.fmuladd.f64(double %685, double %602, double %687)
  %689 = load double, double* %331, align 8, !tbaa !8
  %690 = tail call double @llvm.fmuladd.f64(double %689, double %606, double %688)
  %691 = load double, double* %463, align 8, !tbaa !8
  %692 = tail call double @llvm.fmuladd.f64(double %691, double %608, double %690)
  %693 = load double, double* %333, align 8, !tbaa !8
  %694 = tail call double @llvm.fmuladd.f64(double %693, double %610, double %692)
  %695 = load double, double* %464, align 8, !tbaa !8
  %696 = tail call double @llvm.fmuladd.f64(double %695, double %612, double %694)
  %697 = load double, double* %334, align 8, !tbaa !8
  %698 = tail call double @llvm.fmuladd.f64(double %697, double %614, double %696)
  %699 = load double, double* %465, align 8, !tbaa !8
  %700 = tail call double @llvm.fmuladd.f64(double %699, double %616, double %698)
  %701 = load double, double* %335, align 8, !tbaa !8
  %702 = tail call double @llvm.fmuladd.f64(double %701, double %618, double %700)
  %703 = load double, double* %466, align 8, !tbaa !8
  %704 = tail call double @llvm.fmuladd.f64(double %703, double %620, double %702)
  %705 = tail call double @llvm.fmuladd.f64(double %704, double -1.200000e+00, double %684)
  store double %705, double* %586, align 8, !tbaa !8
  %706 = load double, double* %600, align 16, !tbaa !8
  %707 = load double, double* %358, align 16, !tbaa !8
  %708 = load double, double* %490, align 16, !tbaa !8
  %709 = fmul double %708, %604
  %710 = tail call double @llvm.fmuladd.f64(double %707, double %602, double %709)
  %711 = load double, double* %365, align 8, !tbaa !8
  %712 = tail call double @llvm.fmuladd.f64(double %711, double %606, double %710)
  %713 = load double, double* %501, align 8, !tbaa !8
  %714 = tail call double @llvm.fmuladd.f64(double %713, double %608, double %712)
  %715 = load double, double* %376, align 16, !tbaa !8
  %716 = tail call double @llvm.fmuladd.f64(double %715, double %610, double %714)
  %717 = load double, double* %508, align 16, !tbaa !8
  %718 = tail call double @llvm.fmuladd.f64(double %717, double %612, double %716)
  %719 = load double, double* %382, align 8, !tbaa !8
  %720 = tail call double @llvm.fmuladd.f64(double %719, double %614, double %718)
  %721 = load double, double* %514, align 8, !tbaa !8
  %722 = tail call double @llvm.fmuladd.f64(double %721, double %616, double %720)
  %723 = load double, double* %388, align 16, !tbaa !8
  %724 = tail call double @llvm.fmuladd.f64(double %723, double %618, double %722)
  %725 = load double, double* %520, align 16, !tbaa !8
  %726 = tail call double @llvm.fmuladd.f64(double %725, double %620, double %724)
  %727 = tail call double @llvm.fmuladd.f64(double %726, double -1.200000e+00, double %706)
  store double %727, double* %600, align 16, !tbaa !8
  %728 = bitcast [5 x [5 x double]]* %14 to i64*
  %729 = load i64, i64* %728, align 16, !tbaa !8
  %730 = bitcast [5 x [5 x double]]* %15 to i64*
  store i64 %729, i64* %730, align 16, !tbaa !8
  %731 = bitcast double* %66 to i64*
  %732 = load i64, i64* %731, align 8, !tbaa !8
  %733 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 1
  %734 = bitcast double* %733 to i64*
  store i64 %732, i64* %734, align 8, !tbaa !8
  %735 = bitcast double* %67 to i64*
  %736 = load i64, i64* %735, align 16, !tbaa !8
  %737 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 2
  %738 = bitcast double* %737 to i64*
  store i64 %736, i64* %738, align 16, !tbaa !8
  %739 = bitcast double* %68 to i64*
  %740 = load i64, i64* %739, align 8, !tbaa !8
  %741 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 3
  %742 = bitcast double* %741 to i64*
  store i64 %740, i64* %742, align 8, !tbaa !8
  %743 = bitcast double* %69 to i64*
  %744 = load i64, i64* %743, align 16, !tbaa !8
  %745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 4
  %746 = bitcast double* %745 to i64*
  store i64 %744, i64* %746, align 16, !tbaa !8
  %747 = bitcast double* %74 to i64*
  %748 = load i64, i64* %747, align 8, !tbaa !8
  %749 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1
  %750 = bitcast [5 x double]* %749 to i64*
  store i64 %748, i64* %750, align 8, !tbaa !8
  %751 = bitcast double* %78 to i64*
  %752 = load i64, i64* %751, align 8, !tbaa !8
  %753 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 1
  %754 = bitcast double* %753 to i64*
  store i64 %752, i64* %754, align 8, !tbaa !8
  %755 = bitcast double* %79 to i64*
  %756 = load i64, i64* %755, align 8, !tbaa !8
  %757 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 2
  %758 = bitcast double* %757 to i64*
  store i64 %756, i64* %758, align 8, !tbaa !8
  %759 = load double, double* %80, align 8, !tbaa !8
  %760 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 3
  %761 = load double, double* %81, align 8, !tbaa !8
  %762 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 4
  %763 = bitcast double* %85 to i64*
  %764 = load i64, i64* %763, align 16, !tbaa !8
  %765 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2
  %766 = bitcast [5 x double]* %765 to i64*
  store i64 %764, i64* %766, align 16, !tbaa !8
  %767 = bitcast double* %86 to i64*
  %768 = load i64, i64* %767, align 8, !tbaa !8
  %769 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 1
  %770 = bitcast double* %769 to i64*
  store i64 %768, i64* %770, align 8, !tbaa !8
  %771 = load double, double* %87, align 16, !tbaa !8
  %772 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 2
  %773 = load double, double* %88, align 8, !tbaa !8
  %774 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 3
  %775 = load double, double* %89, align 16, !tbaa !8
  %776 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 4
  %777 = bitcast double* %93 to i64*
  %778 = load i64, i64* %777, align 8, !tbaa !8
  %779 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3
  %780 = bitcast [5 x double]* %779 to i64*
  store i64 %778, i64* %780, align 8, !tbaa !8
  %781 = load double, double* %94, align 8, !tbaa !8
  %782 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 1
  %783 = load double, double* %95, align 8, !tbaa !8
  %784 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 2
  %785 = load double, double* %96, align 8, !tbaa !8
  %786 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 3
  %787 = load double, double* %97, align 8, !tbaa !8
  %788 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 4
  %789 = bitcast double* %110 to i64*
  %790 = load i64, i64* %789, align 16, !tbaa !8
  %791 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4
  %792 = bitcast [5 x double]* %791 to i64*
  store i64 %790, i64* %792, align 16, !tbaa !8
  %793 = load double, double* %113, align 8, !tbaa !8
  %794 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 1
  %795 = load double, double* %116, align 16, !tbaa !8
  %796 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 2
  %797 = load double, double* %119, align 8, !tbaa !8
  %798 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 3
  %799 = load double, double* %122, align 16, !tbaa !8
  %800 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 4
  %801 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 0
  %802 = load double, double* %801, align 16, !tbaa !8
  %803 = fdiv double 1.000000e+00, %802
  %804 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 0
  %805 = load double, double* %804, align 8, !tbaa !8
  %806 = fmul double %803, %805
  %807 = bitcast i64 %752 to double
  %808 = load double, double* %733, align 8, !tbaa !8
  %809 = fsub double -0.000000e+00, %806
  %810 = tail call double @llvm.fmuladd.f64(double %809, double %808, double %807)
  store double %810, double* %753, align 8, !tbaa !8
  %811 = bitcast i64 %756 to double
  %812 = load double, double* %737, align 16, !tbaa !8
  %813 = tail call double @llvm.fmuladd.f64(double %809, double %812, double %811)
  store double %813, double* %757, align 8, !tbaa !8
  %814 = load double, double* %741, align 8, !tbaa !8
  %815 = tail call double @llvm.fmuladd.f64(double %809, double %814, double %759)
  store double %815, double* %760, align 8, !tbaa !8
  %816 = load double, double* %745, align 16, !tbaa !8
  %817 = tail call double @llvm.fmuladd.f64(double %809, double %816, double %761)
  store double %817, double* %762, align 8, !tbaa !8
  %818 = load double, double* %558, align 8, !tbaa !8
  %819 = load double, double* %544, align 16, !tbaa !8
  %820 = fsub double -0.000000e+00, %819
  %821 = tail call double @llvm.fmuladd.f64(double %820, double %806, double %818)
  store double %821, double* %558, align 8, !tbaa !8
  %822 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 0
  %823 = load double, double* %822, align 16, !tbaa !8
  %824 = fmul double %803, %823
  %825 = bitcast i64 %768 to double
  %826 = fsub double -0.000000e+00, %824
  %827 = tail call double @llvm.fmuladd.f64(double %826, double %808, double %825)
  store double %827, double* %769, align 8, !tbaa !8
  %828 = tail call double @llvm.fmuladd.f64(double %826, double %812, double %771)
  %829 = tail call double @llvm.fmuladd.f64(double %826, double %814, double %773)
  %830 = tail call double @llvm.fmuladd.f64(double %826, double %816, double %775)
  %831 = load double, double* %572, align 16, !tbaa !8
  %832 = tail call double @llvm.fmuladd.f64(double %820, double %824, double %831)
  %833 = bitcast i64 %778 to double
  %834 = fmul double %803, %833
  %835 = fsub double -0.000000e+00, %834
  %836 = tail call double @llvm.fmuladd.f64(double %835, double %808, double %781)
  store double %836, double* %782, align 8, !tbaa !8
  %837 = tail call double @llvm.fmuladd.f64(double %835, double %812, double %783)
  %838 = tail call double @llvm.fmuladd.f64(double %835, double %814, double %785)
  %839 = tail call double @llvm.fmuladd.f64(double %835, double %816, double %787)
  %840 = load double, double* %586, align 8, !tbaa !8
  %841 = tail call double @llvm.fmuladd.f64(double %820, double %834, double %840)
  %842 = bitcast i64 %790 to double
  %843 = fmul double %803, %842
  %844 = fsub double -0.000000e+00, %843
  %845 = tail call double @llvm.fmuladd.f64(double %844, double %808, double %793)
  store double %845, double* %794, align 8, !tbaa !8
  %846 = tail call double @llvm.fmuladd.f64(double %844, double %812, double %795)
  %847 = tail call double @llvm.fmuladd.f64(double %844, double %814, double %797)
  %848 = tail call double @llvm.fmuladd.f64(double %844, double %816, double %799)
  %849 = load double, double* %600, align 16, !tbaa !8
  %850 = tail call double @llvm.fmuladd.f64(double %820, double %843, double %849)
  %851 = fdiv double 1.000000e+00, %810
  %852 = fmul double %851, %827
  %853 = fsub double -0.000000e+00, %852
  %854 = tail call double @llvm.fmuladd.f64(double %853, double %813, double %828)
  store double %854, double* %772, align 16, !tbaa !8
  %855 = tail call double @llvm.fmuladd.f64(double %853, double %815, double %829)
  store double %855, double* %774, align 8, !tbaa !8
  %856 = tail call double @llvm.fmuladd.f64(double %853, double %817, double %830)
  store double %856, double* %776, align 16, !tbaa !8
  %857 = fsub double -0.000000e+00, %821
  %858 = tail call double @llvm.fmuladd.f64(double %857, double %852, double %832)
  %859 = fmul double %851, %836
  %860 = fsub double -0.000000e+00, %859
  %861 = tail call double @llvm.fmuladd.f64(double %860, double %813, double %837)
  store double %861, double* %784, align 8, !tbaa !8
  %862 = tail call double @llvm.fmuladd.f64(double %860, double %815, double %838)
  %863 = tail call double @llvm.fmuladd.f64(double %860, double %817, double %839)
  %864 = tail call double @llvm.fmuladd.f64(double %857, double %859, double %841)
  %865 = fmul double %851, %845
  %866 = fsub double -0.000000e+00, %865
  %867 = tail call double @llvm.fmuladd.f64(double %866, double %813, double %846)
  store double %867, double* %796, align 16, !tbaa !8
  %868 = tail call double @llvm.fmuladd.f64(double %866, double %815, double %847)
  %869 = tail call double @llvm.fmuladd.f64(double %866, double %817, double %848)
  %870 = tail call double @llvm.fmuladd.f64(double %857, double %865, double %850)
  %871 = fdiv double 1.000000e+00, %854
  %872 = fmul double %871, %861
  %873 = fsub double -0.000000e+00, %872
  %874 = tail call double @llvm.fmuladd.f64(double %873, double %855, double %862)
  store double %874, double* %786, align 8, !tbaa !8
  %875 = tail call double @llvm.fmuladd.f64(double %873, double %856, double %863)
  store double %875, double* %788, align 8, !tbaa !8
  %876 = fsub double -0.000000e+00, %858
  %877 = tail call double @llvm.fmuladd.f64(double %876, double %872, double %864)
  %878 = fmul double %871, %867
  %879 = fsub double -0.000000e+00, %878
  %880 = tail call double @llvm.fmuladd.f64(double %879, double %855, double %868)
  store double %880, double* %798, align 8, !tbaa !8
  %881 = tail call double @llvm.fmuladd.f64(double %879, double %856, double %869)
  %882 = tail call double @llvm.fmuladd.f64(double %876, double %878, double %870)
  %883 = fdiv double 1.000000e+00, %874
  %884 = fmul double %883, %880
  %885 = fsub double -0.000000e+00, %884
  %886 = tail call double @llvm.fmuladd.f64(double %885, double %875, double %881)
  store double %886, double* %800, align 16, !tbaa !8
  %887 = fsub double -0.000000e+00, %877
  %888 = tail call double @llvm.fmuladd.f64(double %887, double %884, double %882)
  store double %888, double* %600, align 16, !tbaa !8
  %889 = fdiv double %888, %886
  store double %889, double* %587, align 8, !tbaa !8
  %890 = fsub double -0.000000e+00, %875
  %891 = tail call double @llvm.fmuladd.f64(double %890, double %889, double %877)
  store double %891, double* %586, align 8, !tbaa !8
  %892 = fdiv double %891, %874
  store double %892, double* %573, align 8, !tbaa !8
  %893 = fsub double -0.000000e+00, %855
  %894 = tail call double @llvm.fmuladd.f64(double %893, double %892, double %858)
  %895 = fsub double -0.000000e+00, %856
  %896 = tail call double @llvm.fmuladd.f64(double %895, double %889, double %894)
  store double %896, double* %572, align 16, !tbaa !8
  %897 = fdiv double %896, %854
  store double %897, double* %559, align 8, !tbaa !8
  %898 = fsub double -0.000000e+00, %813
  %899 = tail call double @llvm.fmuladd.f64(double %898, double %897, double %821)
  %900 = fsub double -0.000000e+00, %815
  %901 = tail call double @llvm.fmuladd.f64(double %900, double %892, double %899)
  %902 = fsub double -0.000000e+00, %817
  %903 = tail call double @llvm.fmuladd.f64(double %902, double %889, double %901)
  store double %903, double* %558, align 8, !tbaa !8
  %904 = fdiv double %903, %810
  store double %904, double* %545, align 8, !tbaa !8
  %905 = fsub double -0.000000e+00, %808
  %906 = tail call double @llvm.fmuladd.f64(double %905, double %904, double %819)
  %907 = fsub double -0.000000e+00, %812
  %908 = tail call double @llvm.fmuladd.f64(double %907, double %897, double %906)
  %909 = fsub double -0.000000e+00, %814
  %910 = tail call double @llvm.fmuladd.f64(double %909, double %892, double %908)
  %911 = fsub double -0.000000e+00, %816
  %912 = tail call double @llvm.fmuladd.f64(double %911, double %889, double %910)
  store double %912, double* %544, align 16, !tbaa !8
  %913 = fdiv double %912, %802
  store double %913, double* %531, align 8, !tbaa !8
  br label %914

; <label>:914:                                    ; preds = %10, %41, %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %17) #4
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
