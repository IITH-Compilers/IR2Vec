; ModuleID = 'npb-LU-buts.cl'
source_filename = "npb-LU-buts.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @buts(double* nocapture, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
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
  %70 = fmul double %63, 1.000000e-01
  %71 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 1
  %72 = load double, double* %71, align 8, !tbaa !8
  %73 = fmul double %70, %72
  %74 = fmul double %73, 0xC079355555555555
  %75 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 1
  store double %74, double* %75, align 8, !tbaa !8
  %76 = fmul double %62, 1.000000e-01
  %77 = tail call double @llvm.fmuladd.f64(double %76, double 0x4079355555555555, double 1.000000e+00)
  %78 = fadd double %77, 3.025000e+02
  %79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 1
  store double %78, double* %79, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %80, align 8, !tbaa !8
  %81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 2
  %84 = load double, double* %83, align 8, !tbaa !8
  %85 = fmul double %70, %84
  %86 = fmul double %85, 0xC079355555555555
  %87 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 2
  store double %86, double* %87, align 16, !tbaa !8
  %88 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %88, align 8, !tbaa !8
  %89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 2
  store double %78, double* %89, align 16, !tbaa !8
  %90 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %90, align 8, !tbaa !8
  %91 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %91, align 16, !tbaa !8
  %92 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 3
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fmul double %70, %93
  %95 = fmul double %94, 0xC079355555555555
  %96 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 3
  store double %95, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %97, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %98, align 8, !tbaa !8
  %99 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 3
  store double %78, double* %99, align 8, !tbaa !8
  %100 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %100, align 8, !tbaa !8
  %101 = fmul double %72, %72
  %102 = fmul double %84, %84
  %103 = fmul double %102, 0xC03ED08DFEA27981
  %104 = tail call double @llvm.fmuladd.f64(double %101, double 0xC03ED08DFEA27981, double %103)
  %105 = fmul double %93, %93
  %106 = tail call double @llvm.fmuladd.f64(double %105, double 0xC03ED08DFEA27981, double %104)
  %107 = fmul double %63, 7.114800e+01
  %108 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 4
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fmul double %107, %109
  %111 = tail call double @llvm.fmuladd.f64(double %106, double %64, double %110)
  %112 = fsub double -0.000000e+00, %111
  %113 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 4
  store double %112, double* %113, align 16, !tbaa !8
  %114 = fmul double %63, 0xC03ED08DFEA27981
  %115 = fmul double %114, %72
  %116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 4
  store double %115, double* %116, align 8, !tbaa !8
  %117 = fmul double %114, %84
  %118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 4
  store double %117, double* %118, align 16, !tbaa !8
  %119 = fmul double %114, %93
  %120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 4
  store double %119, double* %120, align 8, !tbaa !8
  %121 = tail call double @llvm.fmuladd.f64(double %62, double 7.114800e+01, double 1.000000e+00)
  %122 = fadd double %121, 3.025000e+02
  %123 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 4
  store double %122, double* %123, align 16, !tbaa !8
  %124 = add i64 %59, 4294967296
  %125 = ashr exact i64 %124, 32
  %126 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %56, i64 %58, i64 %125
  %127 = load double, double* %126, align 8, !tbaa !8
  %128 = fmul double %127, %127
  %129 = fmul double %127, %128
  %130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %130, align 16, !tbaa !8
  %131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 0
  store double 2.750000e+00, double* %131, align 8, !tbaa !8
  %132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %132, align 16, !tbaa !8
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %133, align 8, !tbaa !8
  %134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %134, align 16, !tbaa !8
  %135 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %125, i64 1
  %136 = load double, double* %135, align 8, !tbaa !8
  %137 = fmul double %127, %136
  %138 = fsub double -0.000000e+00, %137
  %139 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %53, i64 %56, i64 %58, i64 %125
  %140 = load double, double* %139, align 8, !tbaa !8
  %141 = fmul double %140, 4.000000e-01
  %142 = fmul double %127, %141
  %143 = tail call double @llvm.fmuladd.f64(double %138, double %137, double %142)
  %144 = fmul double %128, 0xBFC1111111111111
  %145 = fmul double %144, %136
  %146 = fmul double %145, 6.050000e+01
  %147 = fsub double -0.000000e+00, %146
  %148 = tail call double @llvm.fmuladd.f64(double %143, double 2.750000e+00, double %147)
  %149 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 1
  store double %148, double* %149, align 8, !tbaa !8
  %150 = fmul double %137, 1.600000e+00
  %151 = fmul double %127, 0x3FC1111111111111
  %152 = fmul double %151, 6.050000e+01
  %153 = fsub double -0.000000e+00, %152
  %154 = tail call double @llvm.fmuladd.f64(double %150, double 2.750000e+00, double %153)
  %155 = fadd double %154, -4.537500e+01
  %156 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 1
  store double %155, double* %156, align 8, !tbaa !8
  %157 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %125, i64 2
  %158 = load double, double* %157, align 8, !tbaa !8
  %159 = fmul double %127, %158
  %160 = fmul double %159, -4.000000e-01
  %161 = fmul double %160, 2.750000e+00
  %162 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 1
  store double %161, double* %162, align 8, !tbaa !8
  %163 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %125, i64 3
  %164 = load double, double* %163, align 8, !tbaa !8
  %165 = fmul double %127, %164
  %166 = fmul double %165, -4.000000e-01
  %167 = fmul double %166, 2.750000e+00
  %168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 1
  store double %167, double* %168, align 8, !tbaa !8
  %169 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 1
  store double 1.100000e+00, double* %169, align 8, !tbaa !8
  %170 = fmul double %136, %158
  %171 = fmul double %128, %170
  %172 = fsub double -0.000000e+00, %171
  %173 = fmul double %128, -1.000000e-01
  %174 = fmul double %173, %158
  %175 = fmul double %174, 6.050000e+01
  %176 = fsub double -0.000000e+00, %175
  %177 = tail call double @llvm.fmuladd.f64(double %172, double 2.750000e+00, double %176)
  %178 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 2
  store double %177, double* %178, align 16, !tbaa !8
  %179 = fmul double %159, 2.750000e+00
  %180 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 2
  store double %179, double* %180, align 8, !tbaa !8
  %181 = fmul double %127, 1.000000e-01
  %182 = fmul double %181, 6.050000e+01
  %183 = fsub double -0.000000e+00, %182
  %184 = tail call double @llvm.fmuladd.f64(double %137, double 2.750000e+00, double %183)
  %185 = fadd double %184, -4.537500e+01
  %186 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 2
  store double %185, double* %186, align 16, !tbaa !8
  %187 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %187, align 8, !tbaa !8
  %188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %188, align 16, !tbaa !8
  %189 = fmul double %136, %164
  %190 = fmul double %128, %189
  %191 = fsub double -0.000000e+00, %190
  %192 = fmul double %173, %164
  %193 = fmul double %192, 6.050000e+01
  %194 = fsub double -0.000000e+00, %193
  %195 = tail call double @llvm.fmuladd.f64(double %191, double 2.750000e+00, double %194)
  %196 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 3
  store double %195, double* %196, align 8, !tbaa !8
  %197 = fmul double %165, 2.750000e+00
  %198 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 3
  store double %197, double* %198, align 8, !tbaa !8
  %199 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %199, align 8, !tbaa !8
  %200 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 3
  store double %185, double* %200, align 8, !tbaa !8
  %201 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %201, align 8, !tbaa !8
  %202 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %125, i64 4
  %203 = load double, double* %202, align 8, !tbaa !8
  %204 = fmul double %203, 1.400000e+00
  %205 = fsub double -0.000000e+00, %204
  %206 = tail call double @llvm.fmuladd.f64(double %140, double 8.000000e-01, double %205)
  %207 = fmul double %128, %136
  %208 = fmul double %207, %206
  %209 = fmul double %129, 0x3FB00AEC33E1F670
  %210 = fmul double %136, %136
  %211 = fmul double %129, 0xBFB89374BC6A7EF8
  %212 = fmul double %158, %158
  %213 = fmul double %211, %212
  %214 = fsub double -0.000000e+00, %213
  %215 = tail call double @llvm.fmuladd.f64(double %209, double %210, double %214)
  %216 = fmul double %164, %164
  %217 = fsub double -0.000000e+00, %211
  %218 = tail call double @llvm.fmuladd.f64(double %217, double %216, double %215)
  %219 = fmul double %128, 0x3FC916872B020C49
  %220 = fsub double -0.000000e+00, %219
  %221 = tail call double @llvm.fmuladd.f64(double %220, double %203, double %218)
  %222 = fmul double %221, 6.050000e+01
  %223 = fsub double -0.000000e+00, %222
  %224 = tail call double @llvm.fmuladd.f64(double %208, double 2.750000e+00, double %223)
  %225 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 4
  store double %224, double* %225, align 16, !tbaa !8
  %226 = fmul double %127, %203
  %227 = fmul double %127, %140
  %228 = tail call double @llvm.fmuladd.f64(double %210, double %128, double %227)
  %229 = fmul double %228, 4.000000e-01
  %230 = fsub double -0.000000e+00, %229
  %231 = tail call double @llvm.fmuladd.f64(double %226, double 1.400000e+00, double %230)
  %232 = fmul double %128, 0xC00E54A6921735EC
  %233 = fmul double %232, %136
  %234 = fsub double -0.000000e+00, %233
  %235 = tail call double @llvm.fmuladd.f64(double %231, double 2.750000e+00, double %234)
  %236 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 4
  store double %235, double* %236, align 8, !tbaa !8
  %237 = fmul double %170, -4.000000e-01
  %238 = fmul double %128, %237
  %239 = fmul double %128, 0xC0173B645A1CAC06
  %240 = fmul double %239, %158
  %241 = fsub double -0.000000e+00, %240
  %242 = tail call double @llvm.fmuladd.f64(double %238, double 2.750000e+00, double %241)
  %243 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 4
  store double %242, double* %243, align 16, !tbaa !8
  %244 = fmul double %189, -4.000000e-01
  %245 = fmul double %128, %244
  %246 = fmul double %239, %164
  %247 = fsub double -0.000000e+00, %246
  %248 = tail call double @llvm.fmuladd.f64(double %245, double 2.750000e+00, double %247)
  %249 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 4
  store double %248, double* %249, align 8, !tbaa !8
  %250 = fmul double %137, 1.400000e+00
  %251 = fmul double %127, 0x4027B74BC6A7EF9D
  %252 = fsub double -0.000000e+00, %251
  %253 = tail call double @llvm.fmuladd.f64(double %250, double 2.750000e+00, double %252)
  %254 = fadd double %253, -4.537500e+01
  %255 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 4
  store double %254, double* %255, align 16, !tbaa !8
  %256 = add i64 %57, 4294967296
  %257 = ashr exact i64 %256, 32
  %258 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %56, i64 %257, i64 %60
  %259 = load double, double* %258, align 8, !tbaa !8
  %260 = fmul double %259, %259
  %261 = fmul double %259, %260
  %262 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %262, align 16, !tbaa !8
  %263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %263, align 8, !tbaa !8
  %264 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 0
  store double 2.750000e+00, double* %264, align 16, !tbaa !8
  %265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %265, align 8, !tbaa !8
  %266 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %266, align 16, !tbaa !8
  %267 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %257, i64 %60, i64 1
  %268 = load double, double* %267, align 8, !tbaa !8
  %269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %257, i64 %60, i64 2
  %270 = load double, double* %269, align 8, !tbaa !8
  %271 = fmul double %268, %270
  %272 = fmul double %260, %271
  %273 = fsub double -0.000000e+00, %272
  %274 = fmul double %260, -1.000000e-01
  %275 = fmul double %274, %268
  %276 = fmul double %275, 6.050000e+01
  %277 = fsub double -0.000000e+00, %276
  %278 = tail call double @llvm.fmuladd.f64(double %273, double 2.750000e+00, double %277)
  %279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 1
  store double %278, double* %279, align 8, !tbaa !8
  %280 = fmul double %259, %270
  %281 = fmul double %259, 1.000000e-01
  %282 = fmul double %281, 6.050000e+01
  %283 = fsub double -0.000000e+00, %282
  %284 = tail call double @llvm.fmuladd.f64(double %280, double 2.750000e+00, double %283)
  %285 = fadd double %284, -4.537500e+01
  %286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 1
  store double %285, double* %286, align 8, !tbaa !8
  %287 = fmul double %259, %268
  %288 = fmul double %287, 2.750000e+00
  %289 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 1
  store double %288, double* %289, align 8, !tbaa !8
  %290 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %290, align 8, !tbaa !8
  %291 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %291, align 8, !tbaa !8
  %292 = fsub double -0.000000e+00, %280
  %293 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %53, i64 %56, i64 %257, i64 %60
  %294 = load double, double* %293, align 8, !tbaa !8
  %295 = fmul double %259, %294
  %296 = fmul double %295, 4.000000e-01
  %297 = tail call double @llvm.fmuladd.f64(double %292, double %280, double %296)
  %298 = fmul double %260, 0xBFC1111111111111
  %299 = fmul double %298, %270
  %300 = fmul double %299, 6.050000e+01
  %301 = fsub double -0.000000e+00, %300
  %302 = tail call double @llvm.fmuladd.f64(double %297, double 2.750000e+00, double %301)
  %303 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 2
  store double %302, double* %303, align 16, !tbaa !8
  %304 = fmul double %287, -4.000000e-01
  %305 = fmul double %304, 2.750000e+00
  %306 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 2
  store double %305, double* %306, align 8, !tbaa !8
  %307 = fmul double %280, 1.600000e+00
  %308 = fmul double %259, 0x3FC1111111111111
  %309 = fmul double %308, 6.050000e+01
  %310 = fsub double -0.000000e+00, %309
  %311 = tail call double @llvm.fmuladd.f64(double %307, double 2.750000e+00, double %310)
  %312 = fadd double %311, -4.537500e+01
  %313 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 2
  store double %312, double* %313, align 16, !tbaa !8
  %314 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %257, i64 %60, i64 3
  %315 = load double, double* %314, align 8, !tbaa !8
  %316 = fmul double %259, %315
  %317 = fmul double %316, -4.000000e-01
  %318 = fmul double %317, 2.750000e+00
  %319 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 2
  store double %318, double* %319, align 8, !tbaa !8
  %320 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 2
  store double 1.100000e+00, double* %320, align 16, !tbaa !8
  %321 = fmul double %270, %315
  %322 = fmul double %260, %321
  %323 = fsub double -0.000000e+00, %322
  %324 = fmul double %274, %315
  %325 = fmul double %324, 6.050000e+01
  %326 = fsub double -0.000000e+00, %325
  %327 = tail call double @llvm.fmuladd.f64(double %323, double 2.750000e+00, double %326)
  %328 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 3
  store double %327, double* %328, align 8, !tbaa !8
  %329 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %329, align 8, !tbaa !8
  %330 = fmul double %316, 2.750000e+00
  %331 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 3
  store double %330, double* %331, align 8, !tbaa !8
  %332 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 3
  store double %285, double* %332, align 8, !tbaa !8
  %333 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %333, align 8, !tbaa !8
  %334 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %56, i64 %257, i64 %60, i64 4
  %335 = load double, double* %334, align 8, !tbaa !8
  %336 = fmul double %335, 1.400000e+00
  %337 = fsub double -0.000000e+00, %336
  %338 = tail call double @llvm.fmuladd.f64(double %294, double 8.000000e-01, double %337)
  %339 = fmul double %260, %270
  %340 = fmul double %339, %338
  %341 = fmul double %261, 0x3FB89374BC6A7EF8
  %342 = fmul double %268, %268
  %343 = fmul double %261, 0xBFB00AEC33E1F670
  %344 = fmul double %270, %270
  %345 = fmul double %343, %344
  %346 = fsub double -0.000000e+00, %345
  %347 = tail call double @llvm.fmuladd.f64(double %341, double %342, double %346)
  %348 = fmul double %315, %315
  %349 = tail call double @llvm.fmuladd.f64(double %341, double %348, double %347)
  %350 = fmul double %260, 0x3FC916872B020C49
  %351 = fsub double -0.000000e+00, %350
  %352 = tail call double @llvm.fmuladd.f64(double %351, double %335, double %349)
  %353 = fmul double %352, 6.050000e+01
  %354 = fsub double -0.000000e+00, %353
  %355 = tail call double @llvm.fmuladd.f64(double %340, double 2.750000e+00, double %354)
  %356 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 4
  store double %355, double* %356, align 16, !tbaa !8
  %357 = fmul double %271, -4.000000e-01
  %358 = fmul double %260, %357
  %359 = fmul double %260, 0xC0173B645A1CAC06
  %360 = fmul double %359, %268
  %361 = fsub double -0.000000e+00, %360
  %362 = tail call double @llvm.fmuladd.f64(double %358, double 2.750000e+00, double %361)
  %363 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 4
  store double %362, double* %363, align 8, !tbaa !8
  %364 = fmul double %259, %335
  %365 = fmul double %260, %344
  %366 = tail call double @llvm.fmuladd.f64(double %294, double %259, double %365)
  %367 = fmul double %366, 4.000000e-01
  %368 = fsub double -0.000000e+00, %367
  %369 = tail call double @llvm.fmuladd.f64(double %364, double 1.400000e+00, double %368)
  %370 = fmul double %260, 0xC00E54A6921735EC
  %371 = fmul double %370, %270
  %372 = fsub double -0.000000e+00, %371
  %373 = tail call double @llvm.fmuladd.f64(double %369, double 2.750000e+00, double %372)
  %374 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 4
  store double %373, double* %374, align 16, !tbaa !8
  %375 = fmul double %321, -4.000000e-01
  %376 = fmul double %260, %375
  %377 = fmul double %359, %315
  %378 = fsub double -0.000000e+00, %377
  %379 = tail call double @llvm.fmuladd.f64(double %376, double 2.750000e+00, double %378)
  %380 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 4
  store double %379, double* %380, align 8, !tbaa !8
  %381 = fmul double %280, 1.400000e+00
  %382 = fmul double %259, 0x4027B74BC6A7EF9D
  %383 = fsub double -0.000000e+00, %382
  %384 = tail call double @llvm.fmuladd.f64(double %381, double 2.750000e+00, double %383)
  %385 = fadd double %384, -4.537500e+01
  %386 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 4
  store double %385, double* %386, align 16, !tbaa !8
  %387 = add i64 %55, 4294967296
  %388 = ashr exact i64 %387, 32
  %389 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %54, i64 %388, i64 %58, i64 %60
  %390 = load double, double* %389, align 8, !tbaa !8
  %391 = fmul double %390, %390
  %392 = fmul double %390, %391
  %393 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 0
  store double -6.050000e+01, double* %393, align 16, !tbaa !8
  %394 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %394, align 8, !tbaa !8
  %395 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %395, align 16, !tbaa !8
  %396 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 0
  store double 2.750000e+00, double* %396, align 8, !tbaa !8
  %397 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %397, align 16, !tbaa !8
  %398 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %388, i64 %58, i64 %60, i64 1
  %399 = load double, double* %398, align 8, !tbaa !8
  %400 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %388, i64 %58, i64 %60, i64 3
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = fmul double %399, %401
  %403 = fmul double %391, %402
  %404 = fsub double -0.000000e+00, %403
  %405 = fmul double %391, -1.000000e-01
  %406 = fmul double %405, %399
  %407 = fmul double %406, 6.050000e+01
  %408 = fsub double -0.000000e+00, %407
  %409 = tail call double @llvm.fmuladd.f64(double %404, double 2.750000e+00, double %408)
  %410 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 1
  store double %409, double* %410, align 8, !tbaa !8
  %411 = fmul double %390, %401
  %412 = fmul double %390, 0x4018333333333334
  %413 = fsub double -0.000000e+00, %412
  %414 = tail call double @llvm.fmuladd.f64(double %411, double 2.750000e+00, double %413)
  %415 = fadd double %414, -6.050000e+01
  %416 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 1
  store double %415, double* %416, align 8, !tbaa !8
  %417 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %417, align 8, !tbaa !8
  %418 = fmul double %390, %399
  %419 = fmul double %418, 2.750000e+00
  %420 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 1
  store double %419, double* %420, align 8, !tbaa !8
  %421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %421, align 8, !tbaa !8
  %422 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %388, i64 %58, i64 %60, i64 2
  %423 = load double, double* %422, align 8, !tbaa !8
  %424 = fmul double %401, %423
  %425 = fmul double %391, %424
  %426 = fsub double -0.000000e+00, %425
  %427 = fmul double %405, %423
  %428 = fmul double %427, 6.050000e+01
  %429 = fsub double -0.000000e+00, %428
  %430 = tail call double @llvm.fmuladd.f64(double %426, double 2.750000e+00, double %429)
  %431 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 2
  store double %430, double* %431, align 16, !tbaa !8
  %432 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %432, align 8, !tbaa !8
  %433 = fmul double %390, 1.000000e-01
  %434 = fmul double %433, 6.050000e+01
  %435 = fsub double -0.000000e+00, %434
  %436 = tail call double @llvm.fmuladd.f64(double %411, double 2.750000e+00, double %435)
  %437 = fadd double %436, -6.050000e+01
  %438 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 2
  store double %437, double* %438, align 16, !tbaa !8
  %439 = fmul double %390, %423
  %440 = fmul double %439, 2.750000e+00
  %441 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 2
  store double %440, double* %441, align 8, !tbaa !8
  %442 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %442, align 16, !tbaa !8
  %443 = fsub double -0.000000e+00, %411
  %444 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %53, i64 %388, i64 %58, i64 %60
  %445 = load double, double* %444, align 8, !tbaa !8
  %446 = fmul double %390, %445
  %447 = fmul double %446, 4.000000e-01
  %448 = tail call double @llvm.fmuladd.f64(double %443, double %411, double %447)
  %449 = fmul double %391, 0xBFC1111111111111
  %450 = fmul double %449, %401
  %451 = fmul double %450, 6.050000e+01
  %452 = fsub double -0.000000e+00, %451
  %453 = tail call double @llvm.fmuladd.f64(double %448, double 2.750000e+00, double %452)
  %454 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 3
  store double %453, double* %454, align 8, !tbaa !8
  %455 = fmul double %418, -4.000000e-01
  %456 = fmul double %455, 2.750000e+00
  %457 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 3
  store double %456, double* %457, align 8, !tbaa !8
  %458 = fmul double %439, -4.000000e-01
  %459 = fmul double %458, 2.750000e+00
  %460 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 3
  store double %459, double* %460, align 8, !tbaa !8
  %461 = fmul double %390, 0x3FC1111111111111
  %462 = fmul double %461, 6.050000e+01
  %463 = fsub double -0.000000e+00, %462
  %464 = tail call double @llvm.fmuladd.f64(double %411, double 4.400000e+00, double %463)
  %465 = fadd double %464, -6.050000e+01
  %466 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 3
  store double %465, double* %466, align 8, !tbaa !8
  %467 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 3
  store double 1.100000e+00, double* %467, align 8, !tbaa !8
  %468 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %52, i64 %388, i64 %58, i64 %60, i64 4
  %469 = load double, double* %468, align 8, !tbaa !8
  %470 = fmul double %469, 1.400000e+00
  %471 = fsub double -0.000000e+00, %470
  %472 = tail call double @llvm.fmuladd.f64(double %445, double 8.000000e-01, double %471)
  %473 = fmul double %391, %401
  %474 = fmul double %473, %472
  %475 = fmul double %392, 0x3FB89374BC6A7EF8
  %476 = fmul double %399, %399
  %477 = fmul double %392, 0xBFB89374BC6A7EF8
  %478 = fmul double %423, %423
  %479 = fmul double %477, %478
  %480 = fsub double -0.000000e+00, %479
  %481 = tail call double @llvm.fmuladd.f64(double %475, double %476, double %480)
  %482 = fmul double %392, 0x3FB00AEC33E1F670
  %483 = fmul double %401, %401
  %484 = tail call double @llvm.fmuladd.f64(double %482, double %483, double %481)
  %485 = fmul double %391, 0x3FC916872B020C49
  %486 = fsub double -0.000000e+00, %485
  %487 = tail call double @llvm.fmuladd.f64(double %486, double %469, double %484)
  %488 = fmul double %487, 6.050000e+01
  %489 = fsub double -0.000000e+00, %488
  %490 = tail call double @llvm.fmuladd.f64(double %474, double 2.750000e+00, double %489)
  %491 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 4
  store double %490, double* %491, align 16, !tbaa !8
  %492 = fmul double %402, -4.000000e-01
  %493 = fmul double %391, %492
  %494 = fmul double %391, 0xC0173B645A1CAC06
  %495 = fmul double %494, %399
  %496 = fsub double -0.000000e+00, %495
  %497 = tail call double @llvm.fmuladd.f64(double %493, double 2.750000e+00, double %496)
  %498 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 4
  store double %497, double* %498, align 8, !tbaa !8
  %499 = fmul double %424, -4.000000e-01
  %500 = fmul double %391, %499
  %501 = fmul double %494, %423
  %502 = fsub double -0.000000e+00, %501
  %503 = tail call double @llvm.fmuladd.f64(double %500, double 2.750000e+00, double %502)
  %504 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 4
  store double %503, double* %504, align 16, !tbaa !8
  %505 = fmul double %390, %469
  %506 = fmul double %391, %483
  %507 = tail call double @llvm.fmuladd.f64(double %445, double %390, double %506)
  %508 = fmul double %507, 4.000000e-01
  %509 = fsub double -0.000000e+00, %508
  %510 = tail call double @llvm.fmuladd.f64(double %505, double 1.400000e+00, double %509)
  %511 = fmul double %391, 0xC00E54A6921735EC
  %512 = fmul double %511, %401
  %513 = fsub double -0.000000e+00, %512
  %514 = tail call double @llvm.fmuladd.f64(double %510, double 2.750000e+00, double %513)
  %515 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 4
  store double %514, double* %515, align 8, !tbaa !8
  %516 = fmul double %411, 1.400000e+00
  %517 = fmul double %390, 0x4027B74BC6A7EF9D
  %518 = fsub double -0.000000e+00, %517
  %519 = tail call double @llvm.fmuladd.f64(double %516, double 2.750000e+00, double %518)
  %520 = fadd double %519, -6.050000e+01
  %521 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 4
  store double %520, double* %521, align 16, !tbaa !8
  %522 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %388, i64 %58, i64 %60, i64 0
  %523 = load double, double* %522, align 8, !tbaa !8
  %524 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %388, i64 %58, i64 %60, i64 1
  %525 = load double, double* %524, align 8, !tbaa !8
  %526 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %388, i64 %58, i64 %60, i64 2
  %527 = load double, double* %526, align 8, !tbaa !8
  %528 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %388, i64 %58, i64 %60, i64 3
  %529 = load double, double* %528, align 8, !tbaa !8
  %530 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %388, i64 %58, i64 %60, i64 4
  %531 = load double, double* %530, align 8, !tbaa !8
  %532 = load double, double* %393, align 16, !tbaa !8
  %533 = load double, double* %394, align 8, !tbaa !8
  %534 = fmul double %533, %525
  %535 = tail call double @llvm.fmuladd.f64(double %532, double %523, double %534)
  %536 = load double, double* %395, align 16, !tbaa !8
  %537 = tail call double @llvm.fmuladd.f64(double %536, double %527, double %535)
  %538 = load double, double* %396, align 8, !tbaa !8
  %539 = tail call double @llvm.fmuladd.f64(double %538, double %529, double %537)
  %540 = load double, double* %397, align 16, !tbaa !8
  %541 = tail call double @llvm.fmuladd.f64(double %540, double %531, double %539)
  %542 = fmul double %541, 1.200000e+00
  %543 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %544 = load double, double* %410, align 8, !tbaa !8
  %545 = load double, double* %416, align 8, !tbaa !8
  %546 = fmul double %545, %525
  %547 = tail call double @llvm.fmuladd.f64(double %544, double %523, double %546)
  %548 = load double, double* %417, align 8, !tbaa !8
  %549 = tail call double @llvm.fmuladd.f64(double %548, double %527, double %547)
  %550 = load double, double* %420, align 8, !tbaa !8
  %551 = tail call double @llvm.fmuladd.f64(double %550, double %529, double %549)
  %552 = load double, double* %421, align 8, !tbaa !8
  %553 = tail call double @llvm.fmuladd.f64(double %552, double %531, double %551)
  %554 = fmul double %553, 1.200000e+00
  %555 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %556 = load double, double* %431, align 16, !tbaa !8
  %557 = load double, double* %432, align 8, !tbaa !8
  %558 = fmul double %557, %525
  %559 = tail call double @llvm.fmuladd.f64(double %556, double %523, double %558)
  %560 = load double, double* %438, align 16, !tbaa !8
  %561 = tail call double @llvm.fmuladd.f64(double %560, double %527, double %559)
  %562 = load double, double* %441, align 8, !tbaa !8
  %563 = tail call double @llvm.fmuladd.f64(double %562, double %529, double %561)
  %564 = load double, double* %442, align 16, !tbaa !8
  %565 = tail call double @llvm.fmuladd.f64(double %564, double %531, double %563)
  %566 = fmul double %565, 1.200000e+00
  %567 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  store double %566, double* %567, align 16, !tbaa !8
  %568 = load double, double* %454, align 8, !tbaa !8
  %569 = load double, double* %457, align 8, !tbaa !8
  %570 = fmul double %569, %525
  %571 = tail call double @llvm.fmuladd.f64(double %568, double %523, double %570)
  %572 = load double, double* %460, align 8, !tbaa !8
  %573 = tail call double @llvm.fmuladd.f64(double %572, double %527, double %571)
  %574 = load double, double* %466, align 8, !tbaa !8
  %575 = tail call double @llvm.fmuladd.f64(double %574, double %529, double %573)
  %576 = load double, double* %467, align 8, !tbaa !8
  %577 = tail call double @llvm.fmuladd.f64(double %576, double %531, double %575)
  %578 = fmul double %577, 1.200000e+00
  %579 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  store double %578, double* %579, align 8, !tbaa !8
  %580 = fmul double %497, %525
  %581 = tail call double @llvm.fmuladd.f64(double %490, double %523, double %580)
  %582 = tail call double @llvm.fmuladd.f64(double %503, double %527, double %581)
  %583 = tail call double @llvm.fmuladd.f64(double %514, double %529, double %582)
  %584 = tail call double @llvm.fmuladd.f64(double %520, double %531, double %583)
  %585 = fmul double %584, 1.200000e+00
  %586 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  store double %585, double* %586, align 16, !tbaa !8
  %587 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %257, i64 %60, i64 0
  %588 = load double, double* %587, align 8, !tbaa !8
  %589 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %125, i64 0
  %590 = load double, double* %589, align 8, !tbaa !8
  %591 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %257, i64 %60, i64 1
  %592 = load double, double* %591, align 8, !tbaa !8
  %593 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %125, i64 1
  %594 = load double, double* %593, align 8, !tbaa !8
  %595 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %257, i64 %60, i64 2
  %596 = load double, double* %595, align 8, !tbaa !8
  %597 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %125, i64 2
  %598 = load double, double* %597, align 8, !tbaa !8
  %599 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %257, i64 %60, i64 3
  %600 = load double, double* %599, align 8, !tbaa !8
  %601 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %125, i64 3
  %602 = load double, double* %601, align 8, !tbaa !8
  %603 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %257, i64 %60, i64 4
  %604 = load double, double* %603, align 8, !tbaa !8
  %605 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %125, i64 4
  %606 = load double, double* %605, align 8, !tbaa !8
  %607 = load double, double* %262, align 16, !tbaa !8
  %608 = load double, double* %130, align 16, !tbaa !8
  %609 = fmul double %608, %590
  %610 = tail call double @llvm.fmuladd.f64(double %607, double %588, double %609)
  %611 = load double, double* %263, align 8, !tbaa !8
  %612 = tail call double @llvm.fmuladd.f64(double %611, double %592, double %610)
  %613 = load double, double* %131, align 8, !tbaa !8
  %614 = tail call double @llvm.fmuladd.f64(double %613, double %594, double %612)
  %615 = load double, double* %264, align 16, !tbaa !8
  %616 = tail call double @llvm.fmuladd.f64(double %615, double %596, double %614)
  %617 = load double, double* %132, align 16, !tbaa !8
  %618 = tail call double @llvm.fmuladd.f64(double %617, double %598, double %616)
  %619 = load double, double* %265, align 8, !tbaa !8
  %620 = tail call double @llvm.fmuladd.f64(double %619, double %600, double %618)
  %621 = load double, double* %133, align 8, !tbaa !8
  %622 = tail call double @llvm.fmuladd.f64(double %621, double %602, double %620)
  %623 = load double, double* %266, align 16, !tbaa !8
  %624 = tail call double @llvm.fmuladd.f64(double %623, double %604, double %622)
  %625 = load double, double* %134, align 16, !tbaa !8
  %626 = tail call double @llvm.fmuladd.f64(double %625, double %606, double %624)
  %627 = tail call double @llvm.fmuladd.f64(double %626, double 1.200000e+00, double %542)
  store double %627, double* %543, align 16, !tbaa !8
  %628 = load double, double* %279, align 8, !tbaa !8
  %629 = load double, double* %149, align 8, !tbaa !8
  %630 = fmul double %629, %590
  %631 = tail call double @llvm.fmuladd.f64(double %628, double %588, double %630)
  %632 = load double, double* %286, align 8, !tbaa !8
  %633 = tail call double @llvm.fmuladd.f64(double %632, double %592, double %631)
  %634 = load double, double* %156, align 8, !tbaa !8
  %635 = tail call double @llvm.fmuladd.f64(double %634, double %594, double %633)
  %636 = load double, double* %289, align 8, !tbaa !8
  %637 = tail call double @llvm.fmuladd.f64(double %636, double %596, double %635)
  %638 = load double, double* %162, align 8, !tbaa !8
  %639 = tail call double @llvm.fmuladd.f64(double %638, double %598, double %637)
  %640 = load double, double* %290, align 8, !tbaa !8
  %641 = tail call double @llvm.fmuladd.f64(double %640, double %600, double %639)
  %642 = load double, double* %168, align 8, !tbaa !8
  %643 = tail call double @llvm.fmuladd.f64(double %642, double %602, double %641)
  %644 = load double, double* %291, align 8, !tbaa !8
  %645 = tail call double @llvm.fmuladd.f64(double %644, double %604, double %643)
  %646 = load double, double* %169, align 8, !tbaa !8
  %647 = tail call double @llvm.fmuladd.f64(double %646, double %606, double %645)
  %648 = tail call double @llvm.fmuladd.f64(double %647, double 1.200000e+00, double %554)
  store double %648, double* %555, align 8, !tbaa !8
  %649 = load double, double* %303, align 16, !tbaa !8
  %650 = load double, double* %178, align 16, !tbaa !8
  %651 = fmul double %650, %590
  %652 = tail call double @llvm.fmuladd.f64(double %649, double %588, double %651)
  %653 = load double, double* %306, align 8, !tbaa !8
  %654 = tail call double @llvm.fmuladd.f64(double %653, double %592, double %652)
  %655 = load double, double* %180, align 8, !tbaa !8
  %656 = tail call double @llvm.fmuladd.f64(double %655, double %594, double %654)
  %657 = load double, double* %313, align 16, !tbaa !8
  %658 = tail call double @llvm.fmuladd.f64(double %657, double %596, double %656)
  %659 = load double, double* %186, align 16, !tbaa !8
  %660 = tail call double @llvm.fmuladd.f64(double %659, double %598, double %658)
  %661 = load double, double* %319, align 8, !tbaa !8
  %662 = tail call double @llvm.fmuladd.f64(double %661, double %600, double %660)
  %663 = load double, double* %187, align 8, !tbaa !8
  %664 = tail call double @llvm.fmuladd.f64(double %663, double %602, double %662)
  %665 = load double, double* %320, align 16, !tbaa !8
  %666 = tail call double @llvm.fmuladd.f64(double %665, double %604, double %664)
  %667 = load double, double* %188, align 16, !tbaa !8
  %668 = tail call double @llvm.fmuladd.f64(double %667, double %606, double %666)
  %669 = tail call double @llvm.fmuladd.f64(double %668, double 1.200000e+00, double %566)
  store double %669, double* %567, align 16, !tbaa !8
  %670 = load double, double* %328, align 8, !tbaa !8
  %671 = load double, double* %196, align 8, !tbaa !8
  %672 = fmul double %671, %590
  %673 = tail call double @llvm.fmuladd.f64(double %670, double %588, double %672)
  %674 = load double, double* %329, align 8, !tbaa !8
  %675 = tail call double @llvm.fmuladd.f64(double %674, double %592, double %673)
  %676 = load double, double* %198, align 8, !tbaa !8
  %677 = tail call double @llvm.fmuladd.f64(double %676, double %594, double %675)
  %678 = load double, double* %331, align 8, !tbaa !8
  %679 = tail call double @llvm.fmuladd.f64(double %678, double %596, double %677)
  %680 = load double, double* %199, align 8, !tbaa !8
  %681 = tail call double @llvm.fmuladd.f64(double %680, double %598, double %679)
  %682 = load double, double* %332, align 8, !tbaa !8
  %683 = tail call double @llvm.fmuladd.f64(double %682, double %600, double %681)
  %684 = load double, double* %200, align 8, !tbaa !8
  %685 = tail call double @llvm.fmuladd.f64(double %684, double %602, double %683)
  %686 = load double, double* %333, align 8, !tbaa !8
  %687 = tail call double @llvm.fmuladd.f64(double %686, double %604, double %685)
  %688 = load double, double* %201, align 8, !tbaa !8
  %689 = tail call double @llvm.fmuladd.f64(double %688, double %606, double %687)
  %690 = tail call double @llvm.fmuladd.f64(double %689, double 1.200000e+00, double %578)
  store double %690, double* %579, align 8, !tbaa !8
  %691 = load double, double* %586, align 16, !tbaa !8
  %692 = load double, double* %356, align 16, !tbaa !8
  %693 = load double, double* %225, align 16, !tbaa !8
  %694 = fmul double %693, %590
  %695 = tail call double @llvm.fmuladd.f64(double %692, double %588, double %694)
  %696 = load double, double* %363, align 8, !tbaa !8
  %697 = tail call double @llvm.fmuladd.f64(double %696, double %592, double %695)
  %698 = load double, double* %236, align 8, !tbaa !8
  %699 = tail call double @llvm.fmuladd.f64(double %698, double %594, double %697)
  %700 = load double, double* %374, align 16, !tbaa !8
  %701 = tail call double @llvm.fmuladd.f64(double %700, double %596, double %699)
  %702 = load double, double* %243, align 16, !tbaa !8
  %703 = tail call double @llvm.fmuladd.f64(double %702, double %598, double %701)
  %704 = load double, double* %380, align 8, !tbaa !8
  %705 = tail call double @llvm.fmuladd.f64(double %704, double %600, double %703)
  %706 = load double, double* %249, align 8, !tbaa !8
  %707 = tail call double @llvm.fmuladd.f64(double %706, double %602, double %705)
  %708 = load double, double* %386, align 16, !tbaa !8
  %709 = tail call double @llvm.fmuladd.f64(double %708, double %604, double %707)
  %710 = load double, double* %255, align 16, !tbaa !8
  %711 = tail call double @llvm.fmuladd.f64(double %710, double %606, double %709)
  %712 = tail call double @llvm.fmuladd.f64(double %711, double 1.200000e+00, double %691)
  store double %712, double* %586, align 16, !tbaa !8
  %713 = bitcast [5 x [5 x double]]* %14 to i64*
  %714 = load i64, i64* %713, align 16, !tbaa !8
  %715 = bitcast [5 x [5 x double]]* %15 to i64*
  store i64 %714, i64* %715, align 16, !tbaa !8
  %716 = bitcast double* %66 to i64*
  %717 = load i64, i64* %716, align 8, !tbaa !8
  %718 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 1
  %719 = bitcast double* %718 to i64*
  store i64 %717, i64* %719, align 8, !tbaa !8
  %720 = bitcast double* %67 to i64*
  %721 = load i64, i64* %720, align 16, !tbaa !8
  %722 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 2
  %723 = bitcast double* %722 to i64*
  store i64 %721, i64* %723, align 16, !tbaa !8
  %724 = bitcast double* %68 to i64*
  %725 = load i64, i64* %724, align 8, !tbaa !8
  %726 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 3
  %727 = bitcast double* %726 to i64*
  store i64 %725, i64* %727, align 8, !tbaa !8
  %728 = bitcast double* %69 to i64*
  %729 = load i64, i64* %728, align 16, !tbaa !8
  %730 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 4
  %731 = bitcast double* %730 to i64*
  store i64 %729, i64* %731, align 16, !tbaa !8
  %732 = bitcast double* %75 to i64*
  %733 = load i64, i64* %732, align 8, !tbaa !8
  %734 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1
  %735 = bitcast [5 x double]* %734 to i64*
  store i64 %733, i64* %735, align 8, !tbaa !8
  %736 = bitcast double* %79 to i64*
  %737 = load i64, i64* %736, align 8, !tbaa !8
  %738 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 1
  %739 = bitcast double* %738 to i64*
  store i64 %737, i64* %739, align 8, !tbaa !8
  %740 = bitcast double* %80 to i64*
  %741 = load i64, i64* %740, align 8, !tbaa !8
  %742 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 2
  %743 = bitcast double* %742 to i64*
  store i64 %741, i64* %743, align 8, !tbaa !8
  %744 = load double, double* %81, align 8, !tbaa !8
  %745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 3
  %746 = load double, double* %82, align 8, !tbaa !8
  %747 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 4
  %748 = bitcast double* %87 to i64*
  %749 = load i64, i64* %748, align 16, !tbaa !8
  %750 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2
  %751 = bitcast [5 x double]* %750 to i64*
  store i64 %749, i64* %751, align 16, !tbaa !8
  %752 = bitcast double* %88 to i64*
  %753 = load i64, i64* %752, align 8, !tbaa !8
  %754 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 1
  %755 = bitcast double* %754 to i64*
  store i64 %753, i64* %755, align 8, !tbaa !8
  %756 = load double, double* %89, align 16, !tbaa !8
  %757 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 2
  %758 = load double, double* %90, align 8, !tbaa !8
  %759 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 3
  %760 = load double, double* %91, align 16, !tbaa !8
  %761 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 4
  %762 = bitcast double* %96 to i64*
  %763 = load i64, i64* %762, align 8, !tbaa !8
  %764 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3
  %765 = bitcast [5 x double]* %764 to i64*
  store i64 %763, i64* %765, align 8, !tbaa !8
  %766 = load double, double* %97, align 8, !tbaa !8
  %767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 1
  %768 = load double, double* %98, align 8, !tbaa !8
  %769 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 2
  %770 = load double, double* %99, align 8, !tbaa !8
  %771 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 3
  %772 = load double, double* %100, align 8, !tbaa !8
  %773 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 4
  %774 = bitcast double* %113 to i64*
  %775 = load i64, i64* %774, align 16, !tbaa !8
  %776 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4
  %777 = bitcast [5 x double]* %776 to i64*
  store i64 %775, i64* %777, align 16, !tbaa !8
  %778 = load double, double* %116, align 8, !tbaa !8
  %779 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 1
  %780 = load double, double* %118, align 16, !tbaa !8
  %781 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 2
  %782 = load double, double* %120, align 8, !tbaa !8
  %783 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 3
  %784 = load double, double* %123, align 16, !tbaa !8
  %785 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 4
  %786 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 0
  %787 = load double, double* %786, align 16, !tbaa !8
  %788 = fdiv double 1.000000e+00, %787
  %789 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 0
  %790 = load double, double* %789, align 8, !tbaa !8
  %791 = fmul double %788, %790
  %792 = bitcast i64 %737 to double
  %793 = load double, double* %718, align 8, !tbaa !8
  %794 = fsub double -0.000000e+00, %791
  %795 = tail call double @llvm.fmuladd.f64(double %794, double %793, double %792)
  store double %795, double* %738, align 8, !tbaa !8
  %796 = bitcast i64 %741 to double
  %797 = load double, double* %722, align 16, !tbaa !8
  %798 = tail call double @llvm.fmuladd.f64(double %794, double %797, double %796)
  store double %798, double* %742, align 8, !tbaa !8
  %799 = load double, double* %726, align 8, !tbaa !8
  %800 = tail call double @llvm.fmuladd.f64(double %794, double %799, double %744)
  store double %800, double* %745, align 8, !tbaa !8
  %801 = load double, double* %730, align 16, !tbaa !8
  %802 = tail call double @llvm.fmuladd.f64(double %794, double %801, double %746)
  store double %802, double* %747, align 8, !tbaa !8
  %803 = load double, double* %555, align 8, !tbaa !8
  %804 = load double, double* %543, align 16, !tbaa !8
  %805 = fsub double -0.000000e+00, %804
  %806 = tail call double @llvm.fmuladd.f64(double %805, double %791, double %803)
  store double %806, double* %555, align 8, !tbaa !8
  %807 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 0
  %808 = load double, double* %807, align 16, !tbaa !8
  %809 = fmul double %788, %808
  %810 = bitcast i64 %753 to double
  %811 = fsub double -0.000000e+00, %809
  %812 = tail call double @llvm.fmuladd.f64(double %811, double %793, double %810)
  store double %812, double* %754, align 8, !tbaa !8
  %813 = tail call double @llvm.fmuladd.f64(double %811, double %797, double %756)
  %814 = tail call double @llvm.fmuladd.f64(double %811, double %799, double %758)
  %815 = tail call double @llvm.fmuladd.f64(double %811, double %801, double %760)
  %816 = load double, double* %567, align 16, !tbaa !8
  %817 = tail call double @llvm.fmuladd.f64(double %805, double %809, double %816)
  %818 = bitcast i64 %763 to double
  %819 = fmul double %788, %818
  %820 = fsub double -0.000000e+00, %819
  %821 = tail call double @llvm.fmuladd.f64(double %820, double %793, double %766)
  store double %821, double* %767, align 8, !tbaa !8
  %822 = tail call double @llvm.fmuladd.f64(double %820, double %797, double %768)
  %823 = tail call double @llvm.fmuladd.f64(double %820, double %799, double %770)
  %824 = tail call double @llvm.fmuladd.f64(double %820, double %801, double %772)
  %825 = load double, double* %579, align 8, !tbaa !8
  %826 = tail call double @llvm.fmuladd.f64(double %805, double %819, double %825)
  %827 = bitcast i64 %775 to double
  %828 = fmul double %788, %827
  %829 = fsub double -0.000000e+00, %828
  %830 = tail call double @llvm.fmuladd.f64(double %829, double %793, double %778)
  store double %830, double* %779, align 8, !tbaa !8
  %831 = tail call double @llvm.fmuladd.f64(double %829, double %797, double %780)
  %832 = tail call double @llvm.fmuladd.f64(double %829, double %799, double %782)
  %833 = tail call double @llvm.fmuladd.f64(double %829, double %801, double %784)
  %834 = load double, double* %586, align 16, !tbaa !8
  %835 = tail call double @llvm.fmuladd.f64(double %805, double %828, double %834)
  %836 = fdiv double 1.000000e+00, %795
  %837 = fmul double %836, %812
  %838 = fsub double -0.000000e+00, %837
  %839 = tail call double @llvm.fmuladd.f64(double %838, double %798, double %813)
  store double %839, double* %757, align 16, !tbaa !8
  %840 = tail call double @llvm.fmuladd.f64(double %838, double %800, double %814)
  store double %840, double* %759, align 8, !tbaa !8
  %841 = tail call double @llvm.fmuladd.f64(double %838, double %802, double %815)
  store double %841, double* %761, align 16, !tbaa !8
  %842 = fsub double -0.000000e+00, %806
  %843 = tail call double @llvm.fmuladd.f64(double %842, double %837, double %817)
  %844 = fmul double %836, %821
  %845 = fsub double -0.000000e+00, %844
  %846 = tail call double @llvm.fmuladd.f64(double %845, double %798, double %822)
  store double %846, double* %769, align 8, !tbaa !8
  %847 = tail call double @llvm.fmuladd.f64(double %845, double %800, double %823)
  %848 = tail call double @llvm.fmuladd.f64(double %845, double %802, double %824)
  %849 = tail call double @llvm.fmuladd.f64(double %842, double %844, double %826)
  %850 = fmul double %836, %830
  %851 = fsub double -0.000000e+00, %850
  %852 = tail call double @llvm.fmuladd.f64(double %851, double %798, double %831)
  store double %852, double* %781, align 16, !tbaa !8
  %853 = tail call double @llvm.fmuladd.f64(double %851, double %800, double %832)
  %854 = tail call double @llvm.fmuladd.f64(double %851, double %802, double %833)
  %855 = tail call double @llvm.fmuladd.f64(double %842, double %850, double %835)
  %856 = fdiv double 1.000000e+00, %839
  %857 = fmul double %856, %846
  %858 = fsub double -0.000000e+00, %857
  %859 = tail call double @llvm.fmuladd.f64(double %858, double %840, double %847)
  store double %859, double* %771, align 8, !tbaa !8
  %860 = tail call double @llvm.fmuladd.f64(double %858, double %841, double %848)
  store double %860, double* %773, align 8, !tbaa !8
  %861 = fsub double -0.000000e+00, %843
  %862 = tail call double @llvm.fmuladd.f64(double %861, double %857, double %849)
  %863 = fmul double %856, %852
  %864 = fsub double -0.000000e+00, %863
  %865 = tail call double @llvm.fmuladd.f64(double %864, double %840, double %853)
  store double %865, double* %783, align 8, !tbaa !8
  %866 = tail call double @llvm.fmuladd.f64(double %864, double %841, double %854)
  %867 = tail call double @llvm.fmuladd.f64(double %861, double %863, double %855)
  %868 = fdiv double 1.000000e+00, %859
  %869 = fmul double %868, %865
  %870 = fsub double -0.000000e+00, %869
  %871 = tail call double @llvm.fmuladd.f64(double %870, double %860, double %866)
  store double %871, double* %785, align 16, !tbaa !8
  %872 = fsub double -0.000000e+00, %862
  %873 = tail call double @llvm.fmuladd.f64(double %872, double %869, double %867)
  %874 = fdiv double %873, %871
  store double %874, double* %586, align 16, !tbaa !8
  %875 = fsub double -0.000000e+00, %860
  %876 = tail call double @llvm.fmuladd.f64(double %875, double %874, double %862)
  %877 = fdiv double %876, %859
  store double %877, double* %579, align 8, !tbaa !8
  %878 = fsub double -0.000000e+00, %840
  %879 = tail call double @llvm.fmuladd.f64(double %878, double %877, double %843)
  %880 = fsub double -0.000000e+00, %841
  %881 = tail call double @llvm.fmuladd.f64(double %880, double %874, double %879)
  %882 = fdiv double %881, %839
  store double %882, double* %567, align 16, !tbaa !8
  %883 = fsub double -0.000000e+00, %798
  %884 = tail call double @llvm.fmuladd.f64(double %883, double %882, double %806)
  %885 = fsub double -0.000000e+00, %800
  %886 = tail call double @llvm.fmuladd.f64(double %885, double %877, double %884)
  %887 = fsub double -0.000000e+00, %802
  %888 = tail call double @llvm.fmuladd.f64(double %887, double %874, double %886)
  %889 = fdiv double %888, %795
  store double %889, double* %555, align 8, !tbaa !8
  %890 = fsub double -0.000000e+00, %793
  %891 = tail call double @llvm.fmuladd.f64(double %890, double %889, double %804)
  %892 = fsub double -0.000000e+00, %797
  %893 = tail call double @llvm.fmuladd.f64(double %892, double %882, double %891)
  %894 = fsub double -0.000000e+00, %799
  %895 = tail call double @llvm.fmuladd.f64(double %894, double %877, double %893)
  %896 = fsub double -0.000000e+00, %801
  %897 = tail call double @llvm.fmuladd.f64(double %896, double %874, double %895)
  %898 = fdiv double %897, %787
  store double %898, double* %543, align 16, !tbaa !8
  %899 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 0
  %900 = load double, double* %899, align 8, !tbaa !8
  %901 = fsub double %900, %898
  store double %901, double* %899, align 8, !tbaa !8
  %902 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 1
  %903 = load double, double* %902, align 8, !tbaa !8
  %904 = fsub double %903, %889
  store double %904, double* %902, align 8, !tbaa !8
  %905 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 2
  %906 = load double, double* %905, align 8, !tbaa !8
  %907 = fsub double %906, %882
  store double %907, double* %905, align 8, !tbaa !8
  %908 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 3
  %909 = load double, double* %908, align 8, !tbaa !8
  %910 = fsub double %909, %877
  store double %910, double* %908, align 8, !tbaa !8
  %911 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 4
  %912 = load double, double* %911, align 8, !tbaa !8
  %913 = fsub double %912, %874
  store double %913, double* %911, align 8, !tbaa !8
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
