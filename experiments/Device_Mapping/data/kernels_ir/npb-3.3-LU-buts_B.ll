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
  br i1 %40, label %41, label %917

; <label>:41:                                     ; preds = %10
  %42 = trunc i64 %31 to i32
  %43 = add nsw i32 %5, -1
  %44 = icmp sgt i32 %43, %42
  %45 = icmp sgt i32 %38, 0
  %46 = and i1 %44, %45
  %47 = add nsw i32 %6, -1
  %48 = icmp sgt i32 %47, %38
  %49 = and i1 %48, %46
  br i1 %49, label %50, label %917

; <label>:50:                                     ; preds = %41
  %51 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %52 = bitcast double* %1 to [103 x [103 x [5 x double]]]*
  %53 = bitcast double* %2 to [103 x [103 x double]]*
  %54 = bitcast double* %3 to [103 x [103 x double]]*
  %55 = shl i64 %26, 32
  %56 = ashr exact i64 %55, 32
  %57 = shl i64 %31, 32
  %58 = ashr exact i64 %57, 32
  %59 = shl i64 %37, 32
  %60 = ashr exact i64 %59, 32
  %61 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %54, i64 %56, i64 %58, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fmul double %62, %62
  %64 = fmul double %62, %63
  %65 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 0
  store double 1.020110e+05, double* %65, align 16, !tbaa !8
  %66 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %67, align 16, !tbaa !8
  %68 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %69, align 16, !tbaa !8
  %70 = fmul double %63, 1.000000e-01
  %71 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 1
  %72 = load double, double* %71, align 8, !tbaa !8
  %73 = fmul double %70, %72
  %74 = fmul double %73, 0xC1009A6AAAAAAAAA
  %75 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 1
  store double %74, double* %75, align 8, !tbaa !8
  %76 = fmul double %62, 4.000000e-01
  %77 = tail call double @llvm.fmuladd.f64(double %76, double 0x40E09A6AAAAAAAAA, double 1.000000e+00)
  %78 = fadd double %77, 1.020100e+05
  %79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 1
  store double %78, double* %79, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %80, align 8, !tbaa !8
  %81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 2
  %84 = load double, double* %83, align 8, !tbaa !8
  %85 = fmul double %70, %84
  %86 = fmul double %85, 0xC1009A6AAAAAAAAA
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
  %92 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 3
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fmul double %70, %93
  %95 = fmul double %94, 0xC1009A6AAAAAAAAB
  %96 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 3
  store double %95, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %97, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %98, align 8, !tbaa !8
  %99 = tail call double @llvm.fmuladd.f64(double %76, double 0x40E09A6AAAAAAAAB, double 1.000000e+00)
  %100 = fadd double %99, 1.020100e+05
  %101 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 3
  store double %100, double* %101, align 8, !tbaa !8
  %102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %102, align 8, !tbaa !8
  %103 = fmul double %72, %72
  %104 = fmul double %84, %84
  %105 = fmul double %104, 0xC0A44BB596DE8CA0
  %106 = tail call double @llvm.fmuladd.f64(double %103, double 0xC0A44BB596DE8C9F, double %105)
  %107 = fmul double %93, %93
  %108 = tail call double @llvm.fmuladd.f64(double %107, double 0xC0A44BB596DE8C9F, double %106)
  %109 = fmul double %63, 0x40B76E3020C49BA5
  %110 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 4
  %111 = load double, double* %110, align 8, !tbaa !8
  %112 = fmul double %109, %111
  %113 = tail call double @llvm.fmuladd.f64(double %108, double %64, double %112)
  %114 = fmul double %113, -4.000000e+00
  %115 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 4
  store double %114, double* %115, align 16, !tbaa !8
  %116 = fmul double %63, 0xC0C44BB596DE8C9F
  %117 = fmul double %116, %72
  %118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 4
  store double %117, double* %118, align 8, !tbaa !8
  %119 = fmul double %63, 0xC0C44BB596DE8CA0
  %120 = fmul double %119, %84
  %121 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 4
  store double %120, double* %121, align 16, !tbaa !8
  %122 = fmul double %116, %93
  %123 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 4
  store double %122, double* %123, align 8, !tbaa !8
  %124 = tail call double @llvm.fmuladd.f64(double %62, double 0x40D76E3020C49BA5, double 1.000000e+00)
  %125 = fadd double %124, 1.020100e+05
  %126 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 4
  store double %125, double* %126, align 16, !tbaa !8
  %127 = add i64 %59, 4294967296
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %54, i64 %56, i64 %58, i64 %128
  %130 = load double, double* %129, align 8, !tbaa !8
  %131 = fmul double %130, %130
  %132 = fmul double %130, %131
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 0
  store double -1.530150e+04, double* %133, align 16, !tbaa !8
  %134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 0
  store double 1.010000e+02, double* %134, align 8, !tbaa !8
  %135 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %135, align 16, !tbaa !8
  %136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %136, align 8, !tbaa !8
  %137 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %137, align 16, !tbaa !8
  %138 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %128, i64 1
  %139 = load double, double* %138, align 8, !tbaa !8
  %140 = fmul double %130, %139
  %141 = fsub double -0.000000e+00, %140
  %142 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %53, i64 %56, i64 %58, i64 %128
  %143 = load double, double* %142, align 8, !tbaa !8
  %144 = fmul double %143, 4.000000e-01
  %145 = fmul double %130, %144
  %146 = tail call double @llvm.fmuladd.f64(double %141, double %140, double %145)
  %147 = fmul double %131, 0xBFC1111111111111
  %148 = fmul double %147, %139
  %149 = fmul double %148, 2.040200e+04
  %150 = fsub double -0.000000e+00, %149
  %151 = tail call double @llvm.fmuladd.f64(double %146, double 1.010000e+02, double %150)
  %152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 1
  store double %151, double* %152, align 8, !tbaa !8
  %153 = fmul double %140, 1.600000e+00
  %154 = fmul double %130, 0x3FC1111111111111
  %155 = fmul double %154, 2.040200e+04
  %156 = fsub double -0.000000e+00, %155
  %157 = tail call double @llvm.fmuladd.f64(double %153, double 1.010000e+02, double %156)
  %158 = fadd double %157, -1.530150e+04
  %159 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 1
  store double %158, double* %159, align 8, !tbaa !8
  %160 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %128, i64 2
  %161 = load double, double* %160, align 8, !tbaa !8
  %162 = fmul double %130, %161
  %163 = fmul double %162, -4.000000e-01
  %164 = fmul double %163, 1.010000e+02
  %165 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 1
  store double %164, double* %165, align 8, !tbaa !8
  %166 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %128, i64 3
  %167 = load double, double* %166, align 8, !tbaa !8
  %168 = fmul double %130, %167
  %169 = fmul double %168, -4.000000e-01
  %170 = fmul double %169, 1.010000e+02
  %171 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 1
  store double %170, double* %171, align 8, !tbaa !8
  %172 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 1
  store double 0x4044333333333334, double* %172, align 8, !tbaa !8
  %173 = fmul double %139, %161
  %174 = fmul double %131, %173
  %175 = fsub double -0.000000e+00, %174
  %176 = fmul double %131, -1.000000e-01
  %177 = fmul double %176, %161
  %178 = fmul double %177, 2.040200e+04
  %179 = fsub double -0.000000e+00, %178
  %180 = tail call double @llvm.fmuladd.f64(double %175, double 1.010000e+02, double %179)
  %181 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 2
  store double %180, double* %181, align 16, !tbaa !8
  %182 = fmul double %162, 1.010000e+02
  %183 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 2
  store double %182, double* %183, align 8, !tbaa !8
  %184 = fmul double %130, 1.000000e-01
  %185 = fmul double %184, 2.040200e+04
  %186 = fsub double -0.000000e+00, %185
  %187 = tail call double @llvm.fmuladd.f64(double %140, double 1.010000e+02, double %186)
  %188 = fadd double %187, -1.530150e+04
  %189 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 2
  store double %188, double* %189, align 16, !tbaa !8
  %190 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %190, align 8, !tbaa !8
  %191 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %191, align 16, !tbaa !8
  %192 = fmul double %139, %167
  %193 = fmul double %131, %192
  %194 = fsub double -0.000000e+00, %193
  %195 = fmul double %176, %167
  %196 = fmul double %195, 2.040200e+04
  %197 = fsub double -0.000000e+00, %196
  %198 = tail call double @llvm.fmuladd.f64(double %194, double 1.010000e+02, double %197)
  %199 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 3
  store double %198, double* %199, align 8, !tbaa !8
  %200 = fmul double %168, 1.010000e+02
  %201 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 3
  store double %200, double* %201, align 8, !tbaa !8
  %202 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %202, align 8, !tbaa !8
  %203 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 3
  store double %188, double* %203, align 8, !tbaa !8
  %204 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %204, align 8, !tbaa !8
  %205 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %128, i64 4
  %206 = load double, double* %205, align 8, !tbaa !8
  %207 = fmul double %206, 1.400000e+00
  %208 = fsub double -0.000000e+00, %207
  %209 = tail call double @llvm.fmuladd.f64(double %143, double 8.000000e-01, double %208)
  %210 = fmul double %131, %139
  %211 = fmul double %210, %209
  %212 = fmul double %132, 0x3FB00AEC33E1F670
  %213 = fmul double %139, %139
  %214 = fmul double %132, 0xBFB89374BC6A7EF8
  %215 = fmul double %161, %161
  %216 = fmul double %214, %215
  %217 = fsub double -0.000000e+00, %216
  %218 = tail call double @llvm.fmuladd.f64(double %212, double %213, double %217)
  %219 = fmul double %167, %167
  %220 = fsub double -0.000000e+00, %214
  %221 = tail call double @llvm.fmuladd.f64(double %220, double %219, double %218)
  %222 = fmul double %131, 0x3FC916872B020C49
  %223 = fsub double -0.000000e+00, %222
  %224 = tail call double @llvm.fmuladd.f64(double %223, double %206, double %221)
  %225 = fmul double %224, 2.040200e+04
  %226 = fsub double -0.000000e+00, %225
  %227 = tail call double @llvm.fmuladd.f64(double %211, double 1.010000e+02, double %226)
  %228 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 4
  store double %227, double* %228, align 16, !tbaa !8
  %229 = fmul double %130, %206
  %230 = fmul double %130, %143
  %231 = tail call double @llvm.fmuladd.f64(double %213, double %131, double %230)
  %232 = fmul double %231, 4.000000e-01
  %233 = fsub double -0.000000e+00, %232
  %234 = tail call double @llvm.fmuladd.f64(double %229, double 1.400000e+00, double %233)
  %235 = fmul double %131, 0xC093FA19F0FB38A8
  %236 = fmul double %235, %139
  %237 = fsub double -0.000000e+00, %236
  %238 = tail call double @llvm.fmuladd.f64(double %234, double 1.010000e+02, double %237)
  %239 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 4
  store double %238, double* %239, align 8, !tbaa !8
  %240 = fmul double %173, -4.000000e-01
  %241 = fmul double %131, %240
  %242 = fmul double %131, 0xC09E9A5E353F7CEB
  %243 = fmul double %242, %161
  %244 = fsub double -0.000000e+00, %243
  %245 = tail call double @llvm.fmuladd.f64(double %241, double 1.010000e+02, double %244)
  %246 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 4
  store double %245, double* %246, align 16, !tbaa !8
  %247 = fmul double %192, -4.000000e-01
  %248 = fmul double %131, %247
  %249 = fmul double %242, %167
  %250 = fsub double -0.000000e+00, %249
  %251 = tail call double @llvm.fmuladd.f64(double %248, double 1.010000e+02, double %250)
  %252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 4
  store double %251, double* %252, align 8, !tbaa !8
  %253 = fmul double %140, 1.400000e+00
  %254 = fmul double %130, 0x40AF3D95810624DC
  %255 = fsub double -0.000000e+00, %254
  %256 = tail call double @llvm.fmuladd.f64(double %253, double 1.010000e+02, double %255)
  %257 = fadd double %256, -1.530150e+04
  %258 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 4
  store double %257, double* %258, align 16, !tbaa !8
  %259 = add i64 %57, 4294967296
  %260 = ashr exact i64 %259, 32
  %261 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %54, i64 %56, i64 %260, i64 %60
  %262 = load double, double* %261, align 8, !tbaa !8
  %263 = fmul double %262, %262
  %264 = fmul double %262, %263
  %265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 0
  store double -1.530150e+04, double* %265, align 16, !tbaa !8
  %266 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %266, align 8, !tbaa !8
  %267 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 0
  store double 1.010000e+02, double* %267, align 16, !tbaa !8
  %268 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %268, align 8, !tbaa !8
  %269 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %269, align 16, !tbaa !8
  %270 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %260, i64 %60, i64 1
  %271 = load double, double* %270, align 8, !tbaa !8
  %272 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %260, i64 %60, i64 2
  %273 = load double, double* %272, align 8, !tbaa !8
  %274 = fmul double %271, %273
  %275 = fmul double %263, %274
  %276 = fsub double -0.000000e+00, %275
  %277 = fmul double %263, -1.000000e-01
  %278 = fmul double %277, %271
  %279 = fmul double %278, 2.040200e+04
  %280 = fsub double -0.000000e+00, %279
  %281 = tail call double @llvm.fmuladd.f64(double %276, double 1.010000e+02, double %280)
  %282 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 1
  store double %281, double* %282, align 8, !tbaa !8
  %283 = fmul double %262, %273
  %284 = fmul double %262, 1.000000e-01
  %285 = fmul double %284, 2.040200e+04
  %286 = fsub double -0.000000e+00, %285
  %287 = tail call double @llvm.fmuladd.f64(double %283, double 1.010000e+02, double %286)
  %288 = fadd double %287, -1.530150e+04
  %289 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 1
  store double %288, double* %289, align 8, !tbaa !8
  %290 = fmul double %262, %271
  %291 = fmul double %290, 1.010000e+02
  %292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 1
  store double %291, double* %292, align 8, !tbaa !8
  %293 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %293, align 8, !tbaa !8
  %294 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %294, align 8, !tbaa !8
  %295 = fsub double -0.000000e+00, %283
  %296 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %53, i64 %56, i64 %260, i64 %60
  %297 = load double, double* %296, align 8, !tbaa !8
  %298 = fmul double %262, %297
  %299 = fmul double %298, 4.000000e-01
  %300 = tail call double @llvm.fmuladd.f64(double %295, double %283, double %299)
  %301 = fmul double %263, 0xBFC1111111111111
  %302 = fmul double %301, %273
  %303 = fmul double %302, 2.040200e+04
  %304 = fsub double -0.000000e+00, %303
  %305 = tail call double @llvm.fmuladd.f64(double %300, double 1.010000e+02, double %304)
  %306 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 2
  store double %305, double* %306, align 16, !tbaa !8
  %307 = fmul double %290, -4.000000e-01
  %308 = fmul double %307, 1.010000e+02
  %309 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 2
  store double %308, double* %309, align 8, !tbaa !8
  %310 = fmul double %283, 1.600000e+00
  %311 = fmul double %262, 0x3FC1111111111111
  %312 = fmul double %311, 2.040200e+04
  %313 = fsub double -0.000000e+00, %312
  %314 = tail call double @llvm.fmuladd.f64(double %310, double 1.010000e+02, double %313)
  %315 = fadd double %314, -1.530150e+04
  %316 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 2
  store double %315, double* %316, align 16, !tbaa !8
  %317 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %260, i64 %60, i64 3
  %318 = load double, double* %317, align 8, !tbaa !8
  %319 = fmul double %262, %318
  %320 = fmul double %319, -4.000000e-01
  %321 = fmul double %320, 1.010000e+02
  %322 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 2
  store double %321, double* %322, align 8, !tbaa !8
  %323 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 2
  store double 0x4044333333333334, double* %323, align 16, !tbaa !8
  %324 = fmul double %273, %318
  %325 = fmul double %263, %324
  %326 = fsub double -0.000000e+00, %325
  %327 = fmul double %277, %318
  %328 = fmul double %327, 2.040200e+04
  %329 = fsub double -0.000000e+00, %328
  %330 = tail call double @llvm.fmuladd.f64(double %326, double 1.010000e+02, double %329)
  %331 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 3
  store double %330, double* %331, align 8, !tbaa !8
  %332 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %332, align 8, !tbaa !8
  %333 = fmul double %319, 1.010000e+02
  %334 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 3
  store double %333, double* %334, align 8, !tbaa !8
  %335 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 3
  store double %288, double* %335, align 8, !tbaa !8
  %336 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %336, align 8, !tbaa !8
  %337 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %56, i64 %260, i64 %60, i64 4
  %338 = load double, double* %337, align 8, !tbaa !8
  %339 = fmul double %338, 1.400000e+00
  %340 = fsub double -0.000000e+00, %339
  %341 = tail call double @llvm.fmuladd.f64(double %297, double 8.000000e-01, double %340)
  %342 = fmul double %263, %273
  %343 = fmul double %342, %341
  %344 = fmul double %264, 0x3FB89374BC6A7EF8
  %345 = fmul double %271, %271
  %346 = fmul double %264, 0xBFB00AEC33E1F670
  %347 = fmul double %273, %273
  %348 = fmul double %346, %347
  %349 = fsub double -0.000000e+00, %348
  %350 = tail call double @llvm.fmuladd.f64(double %344, double %345, double %349)
  %351 = fmul double %318, %318
  %352 = tail call double @llvm.fmuladd.f64(double %344, double %351, double %350)
  %353 = fmul double %263, 0x3FC916872B020C49
  %354 = fsub double -0.000000e+00, %353
  %355 = tail call double @llvm.fmuladd.f64(double %354, double %338, double %352)
  %356 = fmul double %355, 2.040200e+04
  %357 = fsub double -0.000000e+00, %356
  %358 = tail call double @llvm.fmuladd.f64(double %343, double 1.010000e+02, double %357)
  %359 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 4
  store double %358, double* %359, align 16, !tbaa !8
  %360 = fmul double %274, -4.000000e-01
  %361 = fmul double %263, %360
  %362 = fmul double %263, 0xC09E9A5E353F7CEB
  %363 = fmul double %362, %271
  %364 = fsub double -0.000000e+00, %363
  %365 = tail call double @llvm.fmuladd.f64(double %361, double 1.010000e+02, double %364)
  %366 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 4
  store double %365, double* %366, align 8, !tbaa !8
  %367 = fmul double %262, %338
  %368 = fmul double %263, %347
  %369 = tail call double @llvm.fmuladd.f64(double %297, double %262, double %368)
  %370 = fmul double %369, 4.000000e-01
  %371 = fsub double -0.000000e+00, %370
  %372 = tail call double @llvm.fmuladd.f64(double %367, double 1.400000e+00, double %371)
  %373 = fmul double %263, 0xC093FA19F0FB38A8
  %374 = fmul double %373, %273
  %375 = fsub double -0.000000e+00, %374
  %376 = tail call double @llvm.fmuladd.f64(double %372, double 1.010000e+02, double %375)
  %377 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 4
  store double %376, double* %377, align 16, !tbaa !8
  %378 = fmul double %324, -4.000000e-01
  %379 = fmul double %263, %378
  %380 = fmul double %362, %318
  %381 = fsub double -0.000000e+00, %380
  %382 = tail call double @llvm.fmuladd.f64(double %379, double 1.010000e+02, double %381)
  %383 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 4
  store double %382, double* %383, align 8, !tbaa !8
  %384 = fmul double %283, 1.400000e+00
  %385 = fmul double %262, 0x40AF3D95810624DC
  %386 = fsub double -0.000000e+00, %385
  %387 = tail call double @llvm.fmuladd.f64(double %384, double 1.010000e+02, double %386)
  %388 = fadd double %387, -1.530150e+04
  %389 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 4
  store double %388, double* %389, align 16, !tbaa !8
  %390 = add i64 %55, 4294967296
  %391 = ashr exact i64 %390, 32
  %392 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %54, i64 %391, i64 %58, i64 %60
  %393 = load double, double* %392, align 8, !tbaa !8
  %394 = fmul double %393, %393
  %395 = fmul double %393, %394
  %396 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 0
  store double -2.040200e+04, double* %396, align 16, !tbaa !8
  %397 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %397, align 8, !tbaa !8
  %398 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %398, align 16, !tbaa !8
  %399 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 0
  store double 1.010000e+02, double* %399, align 8, !tbaa !8
  %400 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %400, align 16, !tbaa !8
  %401 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %391, i64 %58, i64 %60, i64 1
  %402 = load double, double* %401, align 8, !tbaa !8
  %403 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %391, i64 %58, i64 %60, i64 3
  %404 = load double, double* %403, align 8, !tbaa !8
  %405 = fmul double %402, %404
  %406 = fmul double %394, %405
  %407 = fsub double -0.000000e+00, %406
  %408 = fmul double %394, -1.000000e-01
  %409 = fmul double %408, %402
  %410 = fmul double %409, 2.040200e+04
  %411 = fsub double -0.000000e+00, %410
  %412 = tail call double @llvm.fmuladd.f64(double %407, double 1.010000e+02, double %411)
  %413 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 1
  store double %412, double* %413, align 8, !tbaa !8
  %414 = fmul double %393, %404
  %415 = fmul double %393, 2.040200e+03
  %416 = fsub double -0.000000e+00, %415
  %417 = tail call double @llvm.fmuladd.f64(double %414, double 1.010000e+02, double %416)
  %418 = fadd double %417, -2.040200e+04
  %419 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 1
  store double %418, double* %419, align 8, !tbaa !8
  %420 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %420, align 8, !tbaa !8
  %421 = fmul double %393, %402
  %422 = fmul double %421, 1.010000e+02
  %423 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 1
  store double %422, double* %423, align 8, !tbaa !8
  %424 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %424, align 8, !tbaa !8
  %425 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %391, i64 %58, i64 %60, i64 2
  %426 = load double, double* %425, align 8, !tbaa !8
  %427 = fmul double %404, %426
  %428 = fmul double %394, %427
  %429 = fsub double -0.000000e+00, %428
  %430 = fmul double %408, %426
  %431 = fmul double %430, 2.040200e+04
  %432 = fsub double -0.000000e+00, %431
  %433 = tail call double @llvm.fmuladd.f64(double %429, double 1.010000e+02, double %432)
  %434 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 2
  store double %433, double* %434, align 16, !tbaa !8
  %435 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %435, align 8, !tbaa !8
  %436 = fmul double %393, 1.000000e-01
  %437 = fmul double %436, 2.040200e+04
  %438 = fsub double -0.000000e+00, %437
  %439 = tail call double @llvm.fmuladd.f64(double %414, double 1.010000e+02, double %438)
  %440 = fadd double %439, -2.040200e+04
  %441 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 2
  store double %440, double* %441, align 16, !tbaa !8
  %442 = fmul double %393, %426
  %443 = fmul double %442, 1.010000e+02
  %444 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 2
  store double %443, double* %444, align 8, !tbaa !8
  %445 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %445, align 16, !tbaa !8
  %446 = fsub double -0.000000e+00, %414
  %447 = getelementptr inbounds [103 x [103 x double]], [103 x [103 x double]]* %53, i64 %391, i64 %58, i64 %60
  %448 = load double, double* %447, align 8, !tbaa !8
  %449 = fmul double %393, %448
  %450 = fmul double %449, 4.000000e-01
  %451 = tail call double @llvm.fmuladd.f64(double %446, double %414, double %450)
  %452 = fmul double %394, 0xBFC1111111111111
  %453 = fmul double %452, %404
  %454 = fmul double %453, 2.040200e+04
  %455 = fsub double -0.000000e+00, %454
  %456 = tail call double @llvm.fmuladd.f64(double %451, double 1.010000e+02, double %455)
  %457 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 3
  store double %456, double* %457, align 8, !tbaa !8
  %458 = fmul double %421, -4.000000e-01
  %459 = fmul double %458, 1.010000e+02
  %460 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 3
  store double %459, double* %460, align 8, !tbaa !8
  %461 = fmul double %442, -4.000000e-01
  %462 = fmul double %461, 1.010000e+02
  %463 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 3
  store double %462, double* %463, align 8, !tbaa !8
  %464 = fmul double %393, 0x3FC1111111111111
  %465 = fmul double %464, 2.040200e+04
  %466 = fsub double -0.000000e+00, %465
  %467 = tail call double @llvm.fmuladd.f64(double %414, double 0x4064333333333334, double %466)
  %468 = fadd double %467, -2.040200e+04
  %469 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 3
  store double %468, double* %469, align 8, !tbaa !8
  %470 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 3
  store double 0x4044333333333334, double* %470, align 8, !tbaa !8
  %471 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %52, i64 %391, i64 %58, i64 %60, i64 4
  %472 = load double, double* %471, align 8, !tbaa !8
  %473 = fmul double %472, 1.400000e+00
  %474 = fsub double -0.000000e+00, %473
  %475 = tail call double @llvm.fmuladd.f64(double %448, double 8.000000e-01, double %474)
  %476 = fmul double %394, %404
  %477 = fmul double %476, %475
  %478 = fmul double %395, 0x3FB89374BC6A7EF8
  %479 = fmul double %402, %402
  %480 = fmul double %395, 0xBFB89374BC6A7EF8
  %481 = fmul double %426, %426
  %482 = fmul double %480, %481
  %483 = fsub double -0.000000e+00, %482
  %484 = tail call double @llvm.fmuladd.f64(double %478, double %479, double %483)
  %485 = fmul double %395, 0x3FB00AEC33E1F670
  %486 = fmul double %404, %404
  %487 = tail call double @llvm.fmuladd.f64(double %485, double %486, double %484)
  %488 = fmul double %394, 0x3FC916872B020C49
  %489 = fsub double -0.000000e+00, %488
  %490 = tail call double @llvm.fmuladd.f64(double %489, double %472, double %487)
  %491 = fmul double %490, 2.040200e+04
  %492 = fsub double -0.000000e+00, %491
  %493 = tail call double @llvm.fmuladd.f64(double %477, double 1.010000e+02, double %492)
  %494 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 4
  store double %493, double* %494, align 16, !tbaa !8
  %495 = fmul double %405, -4.000000e-01
  %496 = fmul double %394, %495
  %497 = fmul double %394, 0xC09E9A5E353F7CEB
  %498 = fmul double %497, %402
  %499 = fsub double -0.000000e+00, %498
  %500 = tail call double @llvm.fmuladd.f64(double %496, double 1.010000e+02, double %499)
  %501 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 4
  store double %500, double* %501, align 8, !tbaa !8
  %502 = fmul double %427, -4.000000e-01
  %503 = fmul double %394, %502
  %504 = fmul double %497, %426
  %505 = fsub double -0.000000e+00, %504
  %506 = tail call double @llvm.fmuladd.f64(double %503, double 1.010000e+02, double %505)
  %507 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 4
  store double %506, double* %507, align 16, !tbaa !8
  %508 = fmul double %393, %472
  %509 = fmul double %394, %486
  %510 = tail call double @llvm.fmuladd.f64(double %448, double %393, double %509)
  %511 = fmul double %510, 4.000000e-01
  %512 = fsub double -0.000000e+00, %511
  %513 = tail call double @llvm.fmuladd.f64(double %508, double 1.400000e+00, double %512)
  %514 = fmul double %394, 0xC093FA19F0FB38A8
  %515 = fmul double %514, %404
  %516 = fsub double -0.000000e+00, %515
  %517 = tail call double @llvm.fmuladd.f64(double %513, double 1.010000e+02, double %516)
  %518 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 4
  store double %517, double* %518, align 8, !tbaa !8
  %519 = fmul double %414, 1.400000e+00
  %520 = fmul double %393, 0x40AF3D95810624DC
  %521 = fsub double -0.000000e+00, %520
  %522 = tail call double @llvm.fmuladd.f64(double %519, double 1.010000e+02, double %521)
  %523 = fadd double %522, -2.040200e+04
  %524 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 4
  store double %523, double* %524, align 16, !tbaa !8
  %525 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %391, i64 %58, i64 %60, i64 0
  %526 = load double, double* %525, align 8, !tbaa !8
  %527 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %391, i64 %58, i64 %60, i64 1
  %528 = load double, double* %527, align 8, !tbaa !8
  %529 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %391, i64 %58, i64 %60, i64 2
  %530 = load double, double* %529, align 8, !tbaa !8
  %531 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %391, i64 %58, i64 %60, i64 3
  %532 = load double, double* %531, align 8, !tbaa !8
  %533 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %391, i64 %58, i64 %60, i64 4
  %534 = load double, double* %533, align 8, !tbaa !8
  %535 = load double, double* %396, align 16, !tbaa !8
  %536 = load double, double* %397, align 8, !tbaa !8
  %537 = fmul double %536, %528
  %538 = tail call double @llvm.fmuladd.f64(double %535, double %526, double %537)
  %539 = load double, double* %398, align 16, !tbaa !8
  %540 = tail call double @llvm.fmuladd.f64(double %539, double %530, double %538)
  %541 = load double, double* %399, align 8, !tbaa !8
  %542 = tail call double @llvm.fmuladd.f64(double %541, double %532, double %540)
  %543 = load double, double* %400, align 16, !tbaa !8
  %544 = tail call double @llvm.fmuladd.f64(double %543, double %534, double %542)
  %545 = fmul double %544, 1.200000e+00
  %546 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %547 = load double, double* %413, align 8, !tbaa !8
  %548 = load double, double* %419, align 8, !tbaa !8
  %549 = fmul double %548, %528
  %550 = tail call double @llvm.fmuladd.f64(double %547, double %526, double %549)
  %551 = load double, double* %420, align 8, !tbaa !8
  %552 = tail call double @llvm.fmuladd.f64(double %551, double %530, double %550)
  %553 = load double, double* %423, align 8, !tbaa !8
  %554 = tail call double @llvm.fmuladd.f64(double %553, double %532, double %552)
  %555 = load double, double* %424, align 8, !tbaa !8
  %556 = tail call double @llvm.fmuladd.f64(double %555, double %534, double %554)
  %557 = fmul double %556, 1.200000e+00
  %558 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %559 = load double, double* %434, align 16, !tbaa !8
  %560 = load double, double* %435, align 8, !tbaa !8
  %561 = fmul double %560, %528
  %562 = tail call double @llvm.fmuladd.f64(double %559, double %526, double %561)
  %563 = load double, double* %441, align 16, !tbaa !8
  %564 = tail call double @llvm.fmuladd.f64(double %563, double %530, double %562)
  %565 = load double, double* %444, align 8, !tbaa !8
  %566 = tail call double @llvm.fmuladd.f64(double %565, double %532, double %564)
  %567 = load double, double* %445, align 16, !tbaa !8
  %568 = tail call double @llvm.fmuladd.f64(double %567, double %534, double %566)
  %569 = fmul double %568, 1.200000e+00
  %570 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  store double %569, double* %570, align 16, !tbaa !8
  %571 = load double, double* %457, align 8, !tbaa !8
  %572 = load double, double* %460, align 8, !tbaa !8
  %573 = fmul double %572, %528
  %574 = tail call double @llvm.fmuladd.f64(double %571, double %526, double %573)
  %575 = load double, double* %463, align 8, !tbaa !8
  %576 = tail call double @llvm.fmuladd.f64(double %575, double %530, double %574)
  %577 = load double, double* %469, align 8, !tbaa !8
  %578 = tail call double @llvm.fmuladd.f64(double %577, double %532, double %576)
  %579 = load double, double* %470, align 8, !tbaa !8
  %580 = tail call double @llvm.fmuladd.f64(double %579, double %534, double %578)
  %581 = fmul double %580, 1.200000e+00
  %582 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  store double %581, double* %582, align 8, !tbaa !8
  %583 = fmul double %500, %528
  %584 = tail call double @llvm.fmuladd.f64(double %493, double %526, double %583)
  %585 = tail call double @llvm.fmuladd.f64(double %506, double %530, double %584)
  %586 = tail call double @llvm.fmuladd.f64(double %517, double %532, double %585)
  %587 = tail call double @llvm.fmuladd.f64(double %523, double %534, double %586)
  %588 = fmul double %587, 1.200000e+00
  %589 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  store double %588, double* %589, align 16, !tbaa !8
  %590 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %260, i64 %60, i64 0
  %591 = load double, double* %590, align 8, !tbaa !8
  %592 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %128, i64 0
  %593 = load double, double* %592, align 8, !tbaa !8
  %594 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %260, i64 %60, i64 1
  %595 = load double, double* %594, align 8, !tbaa !8
  %596 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %128, i64 1
  %597 = load double, double* %596, align 8, !tbaa !8
  %598 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %260, i64 %60, i64 2
  %599 = load double, double* %598, align 8, !tbaa !8
  %600 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %128, i64 2
  %601 = load double, double* %600, align 8, !tbaa !8
  %602 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %260, i64 %60, i64 3
  %603 = load double, double* %602, align 8, !tbaa !8
  %604 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %128, i64 3
  %605 = load double, double* %604, align 8, !tbaa !8
  %606 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %260, i64 %60, i64 4
  %607 = load double, double* %606, align 8, !tbaa !8
  %608 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %128, i64 4
  %609 = load double, double* %608, align 8, !tbaa !8
  %610 = load double, double* %265, align 16, !tbaa !8
  %611 = load double, double* %133, align 16, !tbaa !8
  %612 = fmul double %611, %593
  %613 = tail call double @llvm.fmuladd.f64(double %610, double %591, double %612)
  %614 = load double, double* %266, align 8, !tbaa !8
  %615 = tail call double @llvm.fmuladd.f64(double %614, double %595, double %613)
  %616 = load double, double* %134, align 8, !tbaa !8
  %617 = tail call double @llvm.fmuladd.f64(double %616, double %597, double %615)
  %618 = load double, double* %267, align 16, !tbaa !8
  %619 = tail call double @llvm.fmuladd.f64(double %618, double %599, double %617)
  %620 = load double, double* %135, align 16, !tbaa !8
  %621 = tail call double @llvm.fmuladd.f64(double %620, double %601, double %619)
  %622 = load double, double* %268, align 8, !tbaa !8
  %623 = tail call double @llvm.fmuladd.f64(double %622, double %603, double %621)
  %624 = load double, double* %136, align 8, !tbaa !8
  %625 = tail call double @llvm.fmuladd.f64(double %624, double %605, double %623)
  %626 = load double, double* %269, align 16, !tbaa !8
  %627 = tail call double @llvm.fmuladd.f64(double %626, double %607, double %625)
  %628 = load double, double* %137, align 16, !tbaa !8
  %629 = tail call double @llvm.fmuladd.f64(double %628, double %609, double %627)
  %630 = tail call double @llvm.fmuladd.f64(double %629, double 1.200000e+00, double %545)
  store double %630, double* %546, align 16, !tbaa !8
  %631 = load double, double* %282, align 8, !tbaa !8
  %632 = load double, double* %152, align 8, !tbaa !8
  %633 = fmul double %632, %593
  %634 = tail call double @llvm.fmuladd.f64(double %631, double %591, double %633)
  %635 = load double, double* %289, align 8, !tbaa !8
  %636 = tail call double @llvm.fmuladd.f64(double %635, double %595, double %634)
  %637 = load double, double* %159, align 8, !tbaa !8
  %638 = tail call double @llvm.fmuladd.f64(double %637, double %597, double %636)
  %639 = load double, double* %292, align 8, !tbaa !8
  %640 = tail call double @llvm.fmuladd.f64(double %639, double %599, double %638)
  %641 = load double, double* %165, align 8, !tbaa !8
  %642 = tail call double @llvm.fmuladd.f64(double %641, double %601, double %640)
  %643 = load double, double* %293, align 8, !tbaa !8
  %644 = tail call double @llvm.fmuladd.f64(double %643, double %603, double %642)
  %645 = load double, double* %171, align 8, !tbaa !8
  %646 = tail call double @llvm.fmuladd.f64(double %645, double %605, double %644)
  %647 = load double, double* %294, align 8, !tbaa !8
  %648 = tail call double @llvm.fmuladd.f64(double %647, double %607, double %646)
  %649 = load double, double* %172, align 8, !tbaa !8
  %650 = tail call double @llvm.fmuladd.f64(double %649, double %609, double %648)
  %651 = tail call double @llvm.fmuladd.f64(double %650, double 1.200000e+00, double %557)
  store double %651, double* %558, align 8, !tbaa !8
  %652 = load double, double* %306, align 16, !tbaa !8
  %653 = load double, double* %181, align 16, !tbaa !8
  %654 = fmul double %653, %593
  %655 = tail call double @llvm.fmuladd.f64(double %652, double %591, double %654)
  %656 = load double, double* %309, align 8, !tbaa !8
  %657 = tail call double @llvm.fmuladd.f64(double %656, double %595, double %655)
  %658 = load double, double* %183, align 8, !tbaa !8
  %659 = tail call double @llvm.fmuladd.f64(double %658, double %597, double %657)
  %660 = load double, double* %316, align 16, !tbaa !8
  %661 = tail call double @llvm.fmuladd.f64(double %660, double %599, double %659)
  %662 = load double, double* %189, align 16, !tbaa !8
  %663 = tail call double @llvm.fmuladd.f64(double %662, double %601, double %661)
  %664 = load double, double* %322, align 8, !tbaa !8
  %665 = tail call double @llvm.fmuladd.f64(double %664, double %603, double %663)
  %666 = load double, double* %190, align 8, !tbaa !8
  %667 = tail call double @llvm.fmuladd.f64(double %666, double %605, double %665)
  %668 = load double, double* %323, align 16, !tbaa !8
  %669 = tail call double @llvm.fmuladd.f64(double %668, double %607, double %667)
  %670 = load double, double* %191, align 16, !tbaa !8
  %671 = tail call double @llvm.fmuladd.f64(double %670, double %609, double %669)
  %672 = tail call double @llvm.fmuladd.f64(double %671, double 1.200000e+00, double %569)
  store double %672, double* %570, align 16, !tbaa !8
  %673 = load double, double* %331, align 8, !tbaa !8
  %674 = load double, double* %199, align 8, !tbaa !8
  %675 = fmul double %674, %593
  %676 = tail call double @llvm.fmuladd.f64(double %673, double %591, double %675)
  %677 = load double, double* %332, align 8, !tbaa !8
  %678 = tail call double @llvm.fmuladd.f64(double %677, double %595, double %676)
  %679 = load double, double* %201, align 8, !tbaa !8
  %680 = tail call double @llvm.fmuladd.f64(double %679, double %597, double %678)
  %681 = load double, double* %334, align 8, !tbaa !8
  %682 = tail call double @llvm.fmuladd.f64(double %681, double %599, double %680)
  %683 = load double, double* %202, align 8, !tbaa !8
  %684 = tail call double @llvm.fmuladd.f64(double %683, double %601, double %682)
  %685 = load double, double* %335, align 8, !tbaa !8
  %686 = tail call double @llvm.fmuladd.f64(double %685, double %603, double %684)
  %687 = load double, double* %203, align 8, !tbaa !8
  %688 = tail call double @llvm.fmuladd.f64(double %687, double %605, double %686)
  %689 = load double, double* %336, align 8, !tbaa !8
  %690 = tail call double @llvm.fmuladd.f64(double %689, double %607, double %688)
  %691 = load double, double* %204, align 8, !tbaa !8
  %692 = tail call double @llvm.fmuladd.f64(double %691, double %609, double %690)
  %693 = tail call double @llvm.fmuladd.f64(double %692, double 1.200000e+00, double %581)
  store double %693, double* %582, align 8, !tbaa !8
  %694 = load double, double* %589, align 16, !tbaa !8
  %695 = load double, double* %359, align 16, !tbaa !8
  %696 = load double, double* %228, align 16, !tbaa !8
  %697 = fmul double %696, %593
  %698 = tail call double @llvm.fmuladd.f64(double %695, double %591, double %697)
  %699 = load double, double* %366, align 8, !tbaa !8
  %700 = tail call double @llvm.fmuladd.f64(double %699, double %595, double %698)
  %701 = load double, double* %239, align 8, !tbaa !8
  %702 = tail call double @llvm.fmuladd.f64(double %701, double %597, double %700)
  %703 = load double, double* %377, align 16, !tbaa !8
  %704 = tail call double @llvm.fmuladd.f64(double %703, double %599, double %702)
  %705 = load double, double* %246, align 16, !tbaa !8
  %706 = tail call double @llvm.fmuladd.f64(double %705, double %601, double %704)
  %707 = load double, double* %383, align 8, !tbaa !8
  %708 = tail call double @llvm.fmuladd.f64(double %707, double %603, double %706)
  %709 = load double, double* %252, align 8, !tbaa !8
  %710 = tail call double @llvm.fmuladd.f64(double %709, double %605, double %708)
  %711 = load double, double* %389, align 16, !tbaa !8
  %712 = tail call double @llvm.fmuladd.f64(double %711, double %607, double %710)
  %713 = load double, double* %258, align 16, !tbaa !8
  %714 = tail call double @llvm.fmuladd.f64(double %713, double %609, double %712)
  %715 = tail call double @llvm.fmuladd.f64(double %714, double 1.200000e+00, double %694)
  store double %715, double* %589, align 16, !tbaa !8
  %716 = bitcast [5 x [5 x double]]* %14 to i64*
  %717 = load i64, i64* %716, align 16, !tbaa !8
  %718 = bitcast [5 x [5 x double]]* %15 to i64*
  store i64 %717, i64* %718, align 16, !tbaa !8
  %719 = bitcast double* %66 to i64*
  %720 = load i64, i64* %719, align 8, !tbaa !8
  %721 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 1
  %722 = bitcast double* %721 to i64*
  store i64 %720, i64* %722, align 8, !tbaa !8
  %723 = bitcast double* %67 to i64*
  %724 = load i64, i64* %723, align 16, !tbaa !8
  %725 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 2
  %726 = bitcast double* %725 to i64*
  store i64 %724, i64* %726, align 16, !tbaa !8
  %727 = bitcast double* %68 to i64*
  %728 = load i64, i64* %727, align 8, !tbaa !8
  %729 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 3
  %730 = bitcast double* %729 to i64*
  store i64 %728, i64* %730, align 8, !tbaa !8
  %731 = bitcast double* %69 to i64*
  %732 = load i64, i64* %731, align 16, !tbaa !8
  %733 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 4
  %734 = bitcast double* %733 to i64*
  store i64 %732, i64* %734, align 16, !tbaa !8
  %735 = bitcast double* %75 to i64*
  %736 = load i64, i64* %735, align 8, !tbaa !8
  %737 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1
  %738 = bitcast [5 x double]* %737 to i64*
  store i64 %736, i64* %738, align 8, !tbaa !8
  %739 = bitcast double* %79 to i64*
  %740 = load i64, i64* %739, align 8, !tbaa !8
  %741 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 1
  %742 = bitcast double* %741 to i64*
  store i64 %740, i64* %742, align 8, !tbaa !8
  %743 = bitcast double* %80 to i64*
  %744 = load i64, i64* %743, align 8, !tbaa !8
  %745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 2
  %746 = bitcast double* %745 to i64*
  store i64 %744, i64* %746, align 8, !tbaa !8
  %747 = load double, double* %81, align 8, !tbaa !8
  %748 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 3
  %749 = load double, double* %82, align 8, !tbaa !8
  %750 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 4
  %751 = bitcast double* %87 to i64*
  %752 = load i64, i64* %751, align 16, !tbaa !8
  %753 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2
  %754 = bitcast [5 x double]* %753 to i64*
  store i64 %752, i64* %754, align 16, !tbaa !8
  %755 = bitcast double* %88 to i64*
  %756 = load i64, i64* %755, align 8, !tbaa !8
  %757 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 1
  %758 = bitcast double* %757 to i64*
  store i64 %756, i64* %758, align 8, !tbaa !8
  %759 = load double, double* %89, align 16, !tbaa !8
  %760 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 2
  %761 = load double, double* %90, align 8, !tbaa !8
  %762 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 3
  %763 = load double, double* %91, align 16, !tbaa !8
  %764 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 4
  %765 = bitcast double* %96 to i64*
  %766 = load i64, i64* %765, align 8, !tbaa !8
  %767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3
  %768 = bitcast [5 x double]* %767 to i64*
  store i64 %766, i64* %768, align 8, !tbaa !8
  %769 = load double, double* %97, align 8, !tbaa !8
  %770 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 1
  %771 = load double, double* %98, align 8, !tbaa !8
  %772 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 2
  %773 = load double, double* %101, align 8, !tbaa !8
  %774 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 3
  %775 = load double, double* %102, align 8, !tbaa !8
  %776 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 4
  %777 = bitcast double* %115 to i64*
  %778 = load i64, i64* %777, align 16, !tbaa !8
  %779 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4
  %780 = bitcast [5 x double]* %779 to i64*
  store i64 %778, i64* %780, align 16, !tbaa !8
  %781 = load double, double* %118, align 8, !tbaa !8
  %782 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 1
  %783 = load double, double* %121, align 16, !tbaa !8
  %784 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 2
  %785 = load double, double* %123, align 8, !tbaa !8
  %786 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 3
  %787 = load double, double* %126, align 16, !tbaa !8
  %788 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 4
  %789 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 0
  %790 = load double, double* %789, align 16, !tbaa !8
  %791 = fdiv double 1.000000e+00, %790
  %792 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 0
  %793 = load double, double* %792, align 8, !tbaa !8
  %794 = fmul double %791, %793
  %795 = bitcast i64 %740 to double
  %796 = load double, double* %721, align 8, !tbaa !8
  %797 = fsub double -0.000000e+00, %794
  %798 = tail call double @llvm.fmuladd.f64(double %797, double %796, double %795)
  store double %798, double* %741, align 8, !tbaa !8
  %799 = bitcast i64 %744 to double
  %800 = load double, double* %725, align 16, !tbaa !8
  %801 = tail call double @llvm.fmuladd.f64(double %797, double %800, double %799)
  store double %801, double* %745, align 8, !tbaa !8
  %802 = load double, double* %729, align 8, !tbaa !8
  %803 = tail call double @llvm.fmuladd.f64(double %797, double %802, double %747)
  store double %803, double* %748, align 8, !tbaa !8
  %804 = load double, double* %733, align 16, !tbaa !8
  %805 = tail call double @llvm.fmuladd.f64(double %797, double %804, double %749)
  store double %805, double* %750, align 8, !tbaa !8
  %806 = load double, double* %558, align 8, !tbaa !8
  %807 = load double, double* %546, align 16, !tbaa !8
  %808 = fsub double -0.000000e+00, %807
  %809 = tail call double @llvm.fmuladd.f64(double %808, double %794, double %806)
  store double %809, double* %558, align 8, !tbaa !8
  %810 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 0
  %811 = load double, double* %810, align 16, !tbaa !8
  %812 = fmul double %791, %811
  %813 = bitcast i64 %756 to double
  %814 = fsub double -0.000000e+00, %812
  %815 = tail call double @llvm.fmuladd.f64(double %814, double %796, double %813)
  store double %815, double* %757, align 8, !tbaa !8
  %816 = tail call double @llvm.fmuladd.f64(double %814, double %800, double %759)
  %817 = tail call double @llvm.fmuladd.f64(double %814, double %802, double %761)
  %818 = tail call double @llvm.fmuladd.f64(double %814, double %804, double %763)
  %819 = load double, double* %570, align 16, !tbaa !8
  %820 = tail call double @llvm.fmuladd.f64(double %808, double %812, double %819)
  %821 = bitcast i64 %766 to double
  %822 = fmul double %791, %821
  %823 = fsub double -0.000000e+00, %822
  %824 = tail call double @llvm.fmuladd.f64(double %823, double %796, double %769)
  store double %824, double* %770, align 8, !tbaa !8
  %825 = tail call double @llvm.fmuladd.f64(double %823, double %800, double %771)
  %826 = tail call double @llvm.fmuladd.f64(double %823, double %802, double %773)
  %827 = tail call double @llvm.fmuladd.f64(double %823, double %804, double %775)
  %828 = load double, double* %582, align 8, !tbaa !8
  %829 = tail call double @llvm.fmuladd.f64(double %808, double %822, double %828)
  %830 = bitcast i64 %778 to double
  %831 = fmul double %791, %830
  %832 = fsub double -0.000000e+00, %831
  %833 = tail call double @llvm.fmuladd.f64(double %832, double %796, double %781)
  store double %833, double* %782, align 8, !tbaa !8
  %834 = tail call double @llvm.fmuladd.f64(double %832, double %800, double %783)
  %835 = tail call double @llvm.fmuladd.f64(double %832, double %802, double %785)
  %836 = tail call double @llvm.fmuladd.f64(double %832, double %804, double %787)
  %837 = load double, double* %589, align 16, !tbaa !8
  %838 = tail call double @llvm.fmuladd.f64(double %808, double %831, double %837)
  %839 = fdiv double 1.000000e+00, %798
  %840 = fmul double %839, %815
  %841 = fsub double -0.000000e+00, %840
  %842 = tail call double @llvm.fmuladd.f64(double %841, double %801, double %816)
  store double %842, double* %760, align 16, !tbaa !8
  %843 = tail call double @llvm.fmuladd.f64(double %841, double %803, double %817)
  store double %843, double* %762, align 8, !tbaa !8
  %844 = tail call double @llvm.fmuladd.f64(double %841, double %805, double %818)
  store double %844, double* %764, align 16, !tbaa !8
  %845 = fsub double -0.000000e+00, %809
  %846 = tail call double @llvm.fmuladd.f64(double %845, double %840, double %820)
  %847 = fmul double %839, %824
  %848 = fsub double -0.000000e+00, %847
  %849 = tail call double @llvm.fmuladd.f64(double %848, double %801, double %825)
  store double %849, double* %772, align 8, !tbaa !8
  %850 = tail call double @llvm.fmuladd.f64(double %848, double %803, double %826)
  %851 = tail call double @llvm.fmuladd.f64(double %848, double %805, double %827)
  %852 = tail call double @llvm.fmuladd.f64(double %845, double %847, double %829)
  %853 = fmul double %839, %833
  %854 = fsub double -0.000000e+00, %853
  %855 = tail call double @llvm.fmuladd.f64(double %854, double %801, double %834)
  store double %855, double* %784, align 16, !tbaa !8
  %856 = tail call double @llvm.fmuladd.f64(double %854, double %803, double %835)
  %857 = tail call double @llvm.fmuladd.f64(double %854, double %805, double %836)
  %858 = tail call double @llvm.fmuladd.f64(double %845, double %853, double %838)
  %859 = fdiv double 1.000000e+00, %842
  %860 = fmul double %859, %849
  %861 = fsub double -0.000000e+00, %860
  %862 = tail call double @llvm.fmuladd.f64(double %861, double %843, double %850)
  store double %862, double* %774, align 8, !tbaa !8
  %863 = tail call double @llvm.fmuladd.f64(double %861, double %844, double %851)
  store double %863, double* %776, align 8, !tbaa !8
  %864 = fsub double -0.000000e+00, %846
  %865 = tail call double @llvm.fmuladd.f64(double %864, double %860, double %852)
  %866 = fmul double %859, %855
  %867 = fsub double -0.000000e+00, %866
  %868 = tail call double @llvm.fmuladd.f64(double %867, double %843, double %856)
  store double %868, double* %786, align 8, !tbaa !8
  %869 = tail call double @llvm.fmuladd.f64(double %867, double %844, double %857)
  %870 = tail call double @llvm.fmuladd.f64(double %864, double %866, double %858)
  %871 = fdiv double 1.000000e+00, %862
  %872 = fmul double %871, %868
  %873 = fsub double -0.000000e+00, %872
  %874 = tail call double @llvm.fmuladd.f64(double %873, double %863, double %869)
  store double %874, double* %788, align 16, !tbaa !8
  %875 = fsub double -0.000000e+00, %865
  %876 = tail call double @llvm.fmuladd.f64(double %875, double %872, double %870)
  %877 = fdiv double %876, %874
  store double %877, double* %589, align 16, !tbaa !8
  %878 = fsub double -0.000000e+00, %863
  %879 = tail call double @llvm.fmuladd.f64(double %878, double %877, double %865)
  %880 = fdiv double %879, %862
  store double %880, double* %582, align 8, !tbaa !8
  %881 = fsub double -0.000000e+00, %843
  %882 = tail call double @llvm.fmuladd.f64(double %881, double %880, double %846)
  %883 = fsub double -0.000000e+00, %844
  %884 = tail call double @llvm.fmuladd.f64(double %883, double %877, double %882)
  %885 = fdiv double %884, %842
  store double %885, double* %570, align 16, !tbaa !8
  %886 = fsub double -0.000000e+00, %801
  %887 = tail call double @llvm.fmuladd.f64(double %886, double %885, double %809)
  %888 = fsub double -0.000000e+00, %803
  %889 = tail call double @llvm.fmuladd.f64(double %888, double %880, double %887)
  %890 = fsub double -0.000000e+00, %805
  %891 = tail call double @llvm.fmuladd.f64(double %890, double %877, double %889)
  %892 = fdiv double %891, %798
  store double %892, double* %558, align 8, !tbaa !8
  %893 = fsub double -0.000000e+00, %796
  %894 = tail call double @llvm.fmuladd.f64(double %893, double %892, double %807)
  %895 = fsub double -0.000000e+00, %800
  %896 = tail call double @llvm.fmuladd.f64(double %895, double %885, double %894)
  %897 = fsub double -0.000000e+00, %802
  %898 = tail call double @llvm.fmuladd.f64(double %897, double %880, double %896)
  %899 = fsub double -0.000000e+00, %804
  %900 = tail call double @llvm.fmuladd.f64(double %899, double %877, double %898)
  %901 = fdiv double %900, %790
  store double %901, double* %546, align 16, !tbaa !8
  %902 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 0
  %903 = load double, double* %902, align 8, !tbaa !8
  %904 = fsub double %903, %901
  store double %904, double* %902, align 8, !tbaa !8
  %905 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 1
  %906 = load double, double* %905, align 8, !tbaa !8
  %907 = fsub double %906, %892
  store double %907, double* %905, align 8, !tbaa !8
  %908 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 2
  %909 = load double, double* %908, align 8, !tbaa !8
  %910 = fsub double %909, %885
  store double %910, double* %908, align 8, !tbaa !8
  %911 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 3
  %912 = load double, double* %911, align 8, !tbaa !8
  %913 = fsub double %912, %880
  store double %913, double* %911, align 8, !tbaa !8
  %914 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 4
  %915 = load double, double* %914, align 8, !tbaa !8
  %916 = fsub double %915, %877
  store double %916, double* %914, align 8, !tbaa !8
  br label %917

; <label>:917:                                    ; preds = %10, %41, %50
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
