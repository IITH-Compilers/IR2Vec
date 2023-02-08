; ModuleID = 'npb-LU-erhs4.cl'
source_filename = "npb-LU-erhs4.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @erhs4(double* readonly, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %8 = add i64 %7, 1
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = add i64 %10, 1
  %12 = add nsw i32 %4, -1
  %13 = icmp sgt i32 %12, %9
  br i1 %13, label %14, label %651

; <label>:14:                                     ; preds = %6
  %15 = trunc i64 %11 to i32
  %16 = add nsw i32 %3, -1
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %18, label %651

; <label>:18:                                     ; preds = %14
  %19 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %20 = bitcast double* %1 to [103 x [103 x [5 x double]]]*
  %21 = mul i64 %8, 102
  %22 = add i64 %21, %11
  %23 = mul i64 %22, 2190433320960
  %24 = add i64 %23, -225614632058880
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds double, double* %2, i64 %25
  %27 = bitcast double* %26 to [5 x double]*
  %28 = icmp sgt i32 %5, 0
  br i1 %28, label %29, label %198

; <label>:29:                                     ; preds = %18
  %30 = shl i64 %8, 32
  %31 = ashr exact i64 %30, 32
  %32 = shl i64 %11, 32
  %33 = ashr exact i64 %32, 32
  %34 = zext i32 %5 to i64
  br label %35

; <label>:35:                                     ; preds = %35, %29
  %36 = phi i64 [ 0, %29 ], [ %73, %35 ]
  %37 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %36, i64 %31, i64 %33, i64 3
  %38 = bitcast double* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !8
  %40 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36
  %41 = bitcast [5 x double]* %40 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !8
  %42 = load double, double* %37, align 8, !tbaa !8
  %43 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %36, i64 %31, i64 %33, i64 0
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = fdiv double %42, %44
  %46 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %36, i64 %31, i64 %33, i64 1
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %36, i64 %31, i64 %33, i64 2
  %49 = load double, double* %48, align 8, !tbaa !8
  %50 = fmul double %49, %49
  %51 = tail call double @llvm.fmuladd.f64(double %47, double %47, double %50)
  %52 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %51)
  %53 = fmul double %52, 5.000000e-01
  %54 = fdiv double %53, %44
  %55 = fmul double %47, %45
  %56 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 1
  store double %55, double* %56, align 8, !tbaa !8
  %57 = load double, double* %48, align 8, !tbaa !8
  %58 = fmul double %45, %57
  %59 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 2
  store double %58, double* %59, align 8, !tbaa !8
  %60 = load double, double* %37, align 8, !tbaa !8
  %61 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %36, i64 %31, i64 %33, i64 4
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fsub double %62, %54
  %64 = fmul double %63, 4.000000e-01
  %65 = tail call double @llvm.fmuladd.f64(double %60, double %45, double %64)
  %66 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 3
  store double %65, double* %66, align 8, !tbaa !8
  %67 = load double, double* %61, align 8, !tbaa !8
  %68 = fmul double %54, 4.000000e-01
  %69 = fsub double -0.000000e+00, %68
  %70 = tail call double @llvm.fmuladd.f64(double %67, double 1.400000e+00, double %69)
  %71 = fmul double %45, %70
  %72 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 4
  store double %71, double* %72, align 8, !tbaa !8
  %73 = add nuw nsw i64 %36, 1
  %74 = icmp eq i64 %73, %34
  br i1 %74, label %75, label %35

; <label>:75:                                     ; preds = %35
  %76 = add nsw i32 %5, -1
  %77 = icmp sgt i32 %5, 2
  br i1 %77, label %78, label %129

; <label>:78:                                     ; preds = %75
  %79 = shl i64 %8, 32
  %80 = ashr exact i64 %79, 32
  %81 = shl i64 %11, 32
  %82 = ashr exact i64 %81, 32
  %83 = zext i32 %76 to i64
  br label %84

; <label>:84:                                     ; preds = %84, %78
  %85 = phi i64 [ 1, %78 ], [ %86, %84 ]
  %86 = add nuw nsw i64 %85, 1
  %87 = add nsw i64 %85, -1
  %88 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %85, i64 %80, i64 %82, i64 0
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 0
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 0
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fsub double %91, %93
  %95 = tail call double @llvm.fmuladd.f64(double %94, double -5.050000e+01, double %89)
  store double %95, double* %88, align 8, !tbaa !8
  %96 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %85, i64 %80, i64 %82, i64 1
  %97 = load double, double* %96, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 1
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 1
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = fsub double %99, %101
  %103 = tail call double @llvm.fmuladd.f64(double %102, double -5.050000e+01, double %97)
  store double %103, double* %96, align 8, !tbaa !8
  %104 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %85, i64 %80, i64 %82, i64 2
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 2
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 2
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fsub double %107, %109
  %111 = tail call double @llvm.fmuladd.f64(double %110, double -5.050000e+01, double %105)
  store double %111, double* %104, align 8, !tbaa !8
  %112 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %85, i64 %80, i64 %82, i64 3
  %113 = load double, double* %112, align 8, !tbaa !8
  %114 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 3
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 3
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fsub double %115, %117
  %119 = tail call double @llvm.fmuladd.f64(double %118, double -5.050000e+01, double %113)
  store double %119, double* %112, align 8, !tbaa !8
  %120 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %85, i64 %80, i64 %82, i64 4
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 4
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 4
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = fsub double %123, %125
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -5.050000e+01, double %121)
  store double %127, double* %120, align 8, !tbaa !8
  %128 = icmp eq i64 %86, %83
  br i1 %128, label %129, label %84

; <label>:129:                                    ; preds = %84, %75
  %130 = phi i1 [ false, %75 ], [ %77, %84 ]
  %131 = icmp sgt i32 %5, 1
  br i1 %131, label %132, label %197

; <label>:132:                                    ; preds = %129
  %133 = shl i64 %8, 32
  %134 = ashr exact i64 %133, 32
  %135 = shl i64 %11, 32
  %136 = ashr exact i64 %135, 32
  %137 = zext i32 %5 to i64
  br label %138

; <label>:138:                                    ; preds = %138, %132
  %139 = phi i64 [ 1, %132 ], [ %195, %138 ]
  %140 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %139, i64 %134, i64 %136, i64 0
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = fdiv double 1.000000e+00, %141
  %143 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %139, i64 %134, i64 %136, i64 1
  %144 = load double, double* %143, align 8, !tbaa !8
  %145 = fmul double %142, %144
  %146 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %139, i64 %134, i64 %136, i64 2
  %147 = load double, double* %146, align 8, !tbaa !8
  %148 = fmul double %142, %147
  %149 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %139, i64 %134, i64 %136, i64 3
  %150 = load double, double* %149, align 8, !tbaa !8
  %151 = fmul double %142, %150
  %152 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %139, i64 %134, i64 %136, i64 4
  %153 = load double, double* %152, align 8, !tbaa !8
  %154 = fmul double %142, %153
  %155 = add nsw i64 %139, -1
  %156 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %155, i64 %134, i64 %136, i64 0
  %157 = load double, double* %156, align 8, !tbaa !8
  %158 = fdiv double 1.000000e+00, %157
  %159 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %155, i64 %134, i64 %136, i64 1
  %160 = load double, double* %159, align 8, !tbaa !8
  %161 = fmul double %158, %160
  %162 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %155, i64 %134, i64 %136, i64 2
  %163 = load double, double* %162, align 8, !tbaa !8
  %164 = fmul double %158, %163
  %165 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %155, i64 %134, i64 %136, i64 3
  %166 = load double, double* %165, align 8, !tbaa !8
  %167 = fmul double %158, %166
  %168 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %155, i64 %134, i64 %136, i64 4
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = fmul double %158, %169
  %171 = fsub double %145, %161
  %172 = fmul double %171, 1.010000e+02
  %173 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 1
  store double %172, double* %173, align 8, !tbaa !8
  %174 = fsub double %148, %164
  %175 = fmul double %174, 1.010000e+02
  %176 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 2
  store double %175, double* %176, align 8, !tbaa !8
  %177 = fsub double %151, %167
  %178 = fmul double %177, 0x4060D55555555555
  %179 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 3
  store double %178, double* %179, align 8, !tbaa !8
  %180 = fmul double %148, %148
  %181 = tail call double @llvm.fmuladd.f64(double %145, double %145, double %180)
  %182 = tail call double @llvm.fmuladd.f64(double %151, double %151, double %181)
  %183 = fmul double %164, %164
  %184 = tail call double @llvm.fmuladd.f64(double %161, double %161, double %183)
  %185 = tail call double @llvm.fmuladd.f64(double %167, double %167, double %184)
  %186 = fsub double %182, %185
  %187 = fmul double %167, %167
  %188 = fsub double -0.000000e+00, %187
  %189 = tail call double @llvm.fmuladd.f64(double %151, double %151, double %188)
  %190 = fmul double %189, 0x4030D55555555555
  %191 = tail call double @llvm.fmuladd.f64(double %186, double 0xC0483D70A3D70A3C, double %190)
  %192 = fsub double %154, %170
  %193 = tail call double @llvm.fmuladd.f64(double %192, double 0x4068BEB851EB851E, double %191)
  %194 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 4
  store double %193, double* %194, align 8, !tbaa !8
  %195 = add nuw nsw i64 %139, 1
  %196 = icmp eq i64 %195, %137
  br i1 %196, label %197, label %138

; <label>:197:                                    ; preds = %138, %129
  br i1 %130, label %203, label %198

; <label>:198:                                    ; preds = %18, %197
  %199 = shl i64 %8, 32
  %200 = ashr exact i64 %199, 32
  %201 = shl i64 %11, 32
  %202 = ashr exact i64 %201, 32
  br label %293

; <label>:203:                                    ; preds = %197
  %204 = shl i64 %8, 32
  %205 = ashr exact i64 %204, 32
  %206 = shl i64 %11, 32
  %207 = ashr exact i64 %206, 32
  %208 = zext i32 %76 to i64
  br label %209

; <label>:209:                                    ; preds = %209, %203
  %210 = phi i64 [ 1, %203 ], [ %213, %209 ]
  %211 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %210, i64 %205, i64 %207, i64 0
  %212 = load double, double* %211, align 8, !tbaa !8
  %213 = add nuw nsw i64 %210, 1
  %214 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %213, i64 %205, i64 %207, i64 0
  %215 = load double, double* %214, align 8, !tbaa !8
  %216 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %210, i64 %205, i64 %207, i64 0
  %217 = load double, double* %216, align 8, !tbaa !8
  %218 = tail call double @llvm.fmuladd.f64(double %217, double -2.000000e+00, double %215)
  %219 = add nsw i64 %210, -1
  %220 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %219, i64 %205, i64 %207, i64 0
  %221 = load double, double* %220, align 8, !tbaa !8
  %222 = fadd double %218, %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double 1.020100e+04, double %212)
  store double %223, double* %211, align 8, !tbaa !8
  %224 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %210, i64 %205, i64 %207, i64 1
  %225 = load double, double* %224, align 8, !tbaa !8
  %226 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %213, i64 1
  %227 = load double, double* %226, align 8, !tbaa !8
  %228 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 1
  %229 = load double, double* %228, align 8, !tbaa !8
  %230 = fsub double %227, %229
  %231 = tail call double @llvm.fmuladd.f64(double %230, double 0x4024333333333334, double %225)
  %232 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %213, i64 %205, i64 %207, i64 1
  %233 = load double, double* %232, align 8, !tbaa !8
  %234 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %210, i64 %205, i64 %207, i64 1
  %235 = load double, double* %234, align 8, !tbaa !8
  %236 = tail call double @llvm.fmuladd.f64(double %235, double -2.000000e+00, double %233)
  %237 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %219, i64 %205, i64 %207, i64 1
  %238 = load double, double* %237, align 8, !tbaa !8
  %239 = fadd double %236, %238
  %240 = tail call double @llvm.fmuladd.f64(double %239, double 1.020100e+04, double %231)
  store double %240, double* %224, align 8, !tbaa !8
  %241 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %210, i64 %205, i64 %207, i64 2
  %242 = load double, double* %241, align 8, !tbaa !8
  %243 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %213, i64 2
  %244 = load double, double* %243, align 8, !tbaa !8
  %245 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 2
  %246 = load double, double* %245, align 8, !tbaa !8
  %247 = fsub double %244, %246
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 0x4024333333333334, double %242)
  %249 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %213, i64 %205, i64 %207, i64 2
  %250 = load double, double* %249, align 8, !tbaa !8
  %251 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %210, i64 %205, i64 %207, i64 2
  %252 = load double, double* %251, align 8, !tbaa !8
  %253 = tail call double @llvm.fmuladd.f64(double %252, double -2.000000e+00, double %250)
  %254 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %219, i64 %205, i64 %207, i64 2
  %255 = load double, double* %254, align 8, !tbaa !8
  %256 = fadd double %253, %255
  %257 = tail call double @llvm.fmuladd.f64(double %256, double 1.020100e+04, double %248)
  store double %257, double* %241, align 8, !tbaa !8
  %258 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %210, i64 %205, i64 %207, i64 3
  %259 = load double, double* %258, align 8, !tbaa !8
  %260 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %213, i64 3
  %261 = load double, double* %260, align 8, !tbaa !8
  %262 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 3
  %263 = load double, double* %262, align 8, !tbaa !8
  %264 = fsub double %261, %263
  %265 = tail call double @llvm.fmuladd.f64(double %264, double 0x4024333333333334, double %259)
  %266 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %213, i64 %205, i64 %207, i64 3
  %267 = load double, double* %266, align 8, !tbaa !8
  %268 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %210, i64 %205, i64 %207, i64 3
  %269 = load double, double* %268, align 8, !tbaa !8
  %270 = tail call double @llvm.fmuladd.f64(double %269, double -2.000000e+00, double %267)
  %271 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %219, i64 %205, i64 %207, i64 3
  %272 = load double, double* %271, align 8, !tbaa !8
  %273 = fadd double %270, %272
  %274 = tail call double @llvm.fmuladd.f64(double %273, double 1.020100e+04, double %265)
  store double %274, double* %258, align 8, !tbaa !8
  %275 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %210, i64 %205, i64 %207, i64 4
  %276 = load double, double* %275, align 8, !tbaa !8
  %277 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %213, i64 4
  %278 = load double, double* %277, align 8, !tbaa !8
  %279 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 4
  %280 = load double, double* %279, align 8, !tbaa !8
  %281 = fsub double %278, %280
  %282 = tail call double @llvm.fmuladd.f64(double %281, double 0x4024333333333334, double %276)
  %283 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %213, i64 %205, i64 %207, i64 4
  %284 = load double, double* %283, align 8, !tbaa !8
  %285 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %210, i64 %205, i64 %207, i64 4
  %286 = load double, double* %285, align 8, !tbaa !8
  %287 = tail call double @llvm.fmuladd.f64(double %286, double -2.000000e+00, double %284)
  %288 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %219, i64 %205, i64 %207, i64 4
  %289 = load double, double* %288, align 8, !tbaa !8
  %290 = fadd double %287, %289
  %291 = tail call double @llvm.fmuladd.f64(double %290, double 1.020100e+04, double %282)
  store double %291, double* %275, align 8, !tbaa !8
  %292 = icmp eq i64 %213, %208
  br i1 %292, label %293, label %209

; <label>:293:                                    ; preds = %209, %198
  %294 = phi i64 [ %202, %198 ], [ %207, %209 ]
  %295 = phi i64 [ %200, %198 ], [ %205, %209 ]
  %296 = getelementptr inbounds double, double* %1, i64 53045
  %297 = bitcast double* %296 to [103 x [103 x [5 x double]]]*
  %298 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #3
  %299 = tail call double @_Z3maxdd(double %298, double 1.000000e+00) #3
  %300 = fmul double %299, 2.500000e-01
  %301 = getelementptr inbounds double, double* %0, i64 53045
  %302 = bitcast double* %301 to [103 x [103 x [5 x double]]]*
  %303 = getelementptr inbounds double, double* %0, i64 106090
  %304 = bitcast double* %303 to [103 x [103 x [5 x double]]]*
  %305 = getelementptr inbounds double, double* %0, i64 159135
  %306 = bitcast double* %305 to [103 x [103 x [5 x double]]]*
  %307 = fsub double -0.000000e+00, %300
  %308 = getelementptr inbounds double, double* %1, i64 106090
  %309 = bitcast double* %308 to [103 x [103 x [5 x double]]]*
  %310 = getelementptr inbounds double, double* %0, i64 212180
  %311 = bitcast double* %310 to [103 x [103 x [5 x double]]]*
  %312 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %297, i64 0, i64 %295, i64 %294, i64 0
  %313 = load double, double* %312, align 8, !tbaa !8
  %314 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %302, i64 0, i64 %295, i64 %294, i64 0
  %315 = load double, double* %314, align 8, !tbaa !8
  %316 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %304, i64 0, i64 %295, i64 %294, i64 0
  %317 = load double, double* %316, align 8, !tbaa !8
  %318 = fmul double %317, 4.000000e+00
  %319 = fsub double -0.000000e+00, %318
  %320 = tail call double @llvm.fmuladd.f64(double %315, double 5.000000e+00, double %319)
  %321 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %306, i64 0, i64 %295, i64 %294, i64 0
  %322 = load double, double* %321, align 8, !tbaa !8
  %323 = fadd double %322, %320
  %324 = tail call double @llvm.fmuladd.f64(double %307, double %323, double %313)
  store double %324, double* %312, align 8, !tbaa !8
  %325 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %309, i64 0, i64 %295, i64 %294, i64 0
  %326 = load double, double* %325, align 8, !tbaa !8
  %327 = load double, double* %314, align 8, !tbaa !8
  %328 = load double, double* %316, align 8, !tbaa !8
  %329 = fmul double %328, 6.000000e+00
  %330 = tail call double @llvm.fmuladd.f64(double %327, double -4.000000e+00, double %329)
  %331 = load double, double* %321, align 8, !tbaa !8
  %332 = tail call double @llvm.fmuladd.f64(double %331, double -4.000000e+00, double %330)
  %333 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %311, i64 0, i64 %295, i64 %294, i64 0
  %334 = load double, double* %333, align 8, !tbaa !8
  %335 = fadd double %334, %332
  %336 = tail call double @llvm.fmuladd.f64(double %307, double %335, double %326)
  store double %336, double* %325, align 8, !tbaa !8
  %337 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %297, i64 0, i64 %295, i64 %294, i64 1
  %338 = load double, double* %337, align 8, !tbaa !8
  %339 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %302, i64 0, i64 %295, i64 %294, i64 1
  %340 = load double, double* %339, align 8, !tbaa !8
  %341 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %304, i64 0, i64 %295, i64 %294, i64 1
  %342 = load double, double* %341, align 8, !tbaa !8
  %343 = fmul double %342, 4.000000e+00
  %344 = fsub double -0.000000e+00, %343
  %345 = tail call double @llvm.fmuladd.f64(double %340, double 5.000000e+00, double %344)
  %346 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %306, i64 0, i64 %295, i64 %294, i64 1
  %347 = load double, double* %346, align 8, !tbaa !8
  %348 = fadd double %347, %345
  %349 = tail call double @llvm.fmuladd.f64(double %307, double %348, double %338)
  store double %349, double* %337, align 8, !tbaa !8
  %350 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %309, i64 0, i64 %295, i64 %294, i64 1
  %351 = load double, double* %350, align 8, !tbaa !8
  %352 = load double, double* %339, align 8, !tbaa !8
  %353 = load double, double* %341, align 8, !tbaa !8
  %354 = fmul double %353, 6.000000e+00
  %355 = tail call double @llvm.fmuladd.f64(double %352, double -4.000000e+00, double %354)
  %356 = load double, double* %346, align 8, !tbaa !8
  %357 = tail call double @llvm.fmuladd.f64(double %356, double -4.000000e+00, double %355)
  %358 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %311, i64 0, i64 %295, i64 %294, i64 1
  %359 = load double, double* %358, align 8, !tbaa !8
  %360 = fadd double %359, %357
  %361 = tail call double @llvm.fmuladd.f64(double %307, double %360, double %351)
  store double %361, double* %350, align 8, !tbaa !8
  %362 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %297, i64 0, i64 %295, i64 %294, i64 2
  %363 = load double, double* %362, align 8, !tbaa !8
  %364 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %302, i64 0, i64 %295, i64 %294, i64 2
  %365 = load double, double* %364, align 8, !tbaa !8
  %366 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %304, i64 0, i64 %295, i64 %294, i64 2
  %367 = load double, double* %366, align 8, !tbaa !8
  %368 = fmul double %367, 4.000000e+00
  %369 = fsub double -0.000000e+00, %368
  %370 = tail call double @llvm.fmuladd.f64(double %365, double 5.000000e+00, double %369)
  %371 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %306, i64 0, i64 %295, i64 %294, i64 2
  %372 = load double, double* %371, align 8, !tbaa !8
  %373 = fadd double %372, %370
  %374 = tail call double @llvm.fmuladd.f64(double %307, double %373, double %363)
  store double %374, double* %362, align 8, !tbaa !8
  %375 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %309, i64 0, i64 %295, i64 %294, i64 2
  %376 = load double, double* %375, align 8, !tbaa !8
  %377 = load double, double* %364, align 8, !tbaa !8
  %378 = load double, double* %366, align 8, !tbaa !8
  %379 = fmul double %378, 6.000000e+00
  %380 = tail call double @llvm.fmuladd.f64(double %377, double -4.000000e+00, double %379)
  %381 = load double, double* %371, align 8, !tbaa !8
  %382 = tail call double @llvm.fmuladd.f64(double %381, double -4.000000e+00, double %380)
  %383 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %311, i64 0, i64 %295, i64 %294, i64 2
  %384 = load double, double* %383, align 8, !tbaa !8
  %385 = fadd double %384, %382
  %386 = tail call double @llvm.fmuladd.f64(double %307, double %385, double %376)
  store double %386, double* %375, align 8, !tbaa !8
  %387 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %297, i64 0, i64 %295, i64 %294, i64 3
  %388 = load double, double* %387, align 8, !tbaa !8
  %389 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %302, i64 0, i64 %295, i64 %294, i64 3
  %390 = load double, double* %389, align 8, !tbaa !8
  %391 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %304, i64 0, i64 %295, i64 %294, i64 3
  %392 = load double, double* %391, align 8, !tbaa !8
  %393 = fmul double %392, 4.000000e+00
  %394 = fsub double -0.000000e+00, %393
  %395 = tail call double @llvm.fmuladd.f64(double %390, double 5.000000e+00, double %394)
  %396 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %306, i64 0, i64 %295, i64 %294, i64 3
  %397 = load double, double* %396, align 8, !tbaa !8
  %398 = fadd double %397, %395
  %399 = tail call double @llvm.fmuladd.f64(double %307, double %398, double %388)
  store double %399, double* %387, align 8, !tbaa !8
  %400 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %309, i64 0, i64 %295, i64 %294, i64 3
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = load double, double* %389, align 8, !tbaa !8
  %403 = load double, double* %391, align 8, !tbaa !8
  %404 = fmul double %403, 6.000000e+00
  %405 = tail call double @llvm.fmuladd.f64(double %402, double -4.000000e+00, double %404)
  %406 = load double, double* %396, align 8, !tbaa !8
  %407 = tail call double @llvm.fmuladd.f64(double %406, double -4.000000e+00, double %405)
  %408 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %311, i64 0, i64 %295, i64 %294, i64 3
  %409 = load double, double* %408, align 8, !tbaa !8
  %410 = fadd double %409, %407
  %411 = tail call double @llvm.fmuladd.f64(double %307, double %410, double %401)
  store double %411, double* %400, align 8, !tbaa !8
  %412 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %297, i64 0, i64 %295, i64 %294, i64 4
  %413 = load double, double* %412, align 8, !tbaa !8
  %414 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %302, i64 0, i64 %295, i64 %294, i64 4
  %415 = load double, double* %414, align 8, !tbaa !8
  %416 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %304, i64 0, i64 %295, i64 %294, i64 4
  %417 = load double, double* %416, align 8, !tbaa !8
  %418 = fmul double %417, 4.000000e+00
  %419 = fsub double -0.000000e+00, %418
  %420 = tail call double @llvm.fmuladd.f64(double %415, double 5.000000e+00, double %419)
  %421 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %306, i64 0, i64 %295, i64 %294, i64 4
  %422 = load double, double* %421, align 8, !tbaa !8
  %423 = fadd double %422, %420
  %424 = tail call double @llvm.fmuladd.f64(double %307, double %423, double %413)
  store double %424, double* %412, align 8, !tbaa !8
  %425 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %309, i64 0, i64 %295, i64 %294, i64 4
  %426 = load double, double* %425, align 8, !tbaa !8
  %427 = load double, double* %414, align 8, !tbaa !8
  %428 = load double, double* %416, align 8, !tbaa !8
  %429 = fmul double %428, 6.000000e+00
  %430 = tail call double @llvm.fmuladd.f64(double %427, double -4.000000e+00, double %429)
  %431 = load double, double* %421, align 8, !tbaa !8
  %432 = tail call double @llvm.fmuladd.f64(double %431, double -4.000000e+00, double %430)
  %433 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %311, i64 0, i64 %295, i64 %294, i64 4
  %434 = load double, double* %433, align 8, !tbaa !8
  %435 = fadd double %434, %432
  %436 = tail call double @llvm.fmuladd.f64(double %307, double %435, double %426)
  store double %436, double* %425, align 8, !tbaa !8
  %437 = add nsw i32 %5, -3
  %438 = icmp sgt i32 %5, 6
  br i1 %438, label %439, label %533

; <label>:439:                                    ; preds = %293
  %440 = zext i32 %437 to i64
  br label %441

; <label>:441:                                    ; preds = %441, %439
  %442 = phi i64 [ 3, %439 ], [ %445, %441 ]
  %443 = add nsw i64 %442, -2
  %444 = add nsw i64 %442, -1
  %445 = add nuw nsw i64 %442, 1
  %446 = add nuw nsw i64 %442, 2
  %447 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %442, i64 %295, i64 %294, i64 0
  %448 = load double, double* %447, align 8, !tbaa !8
  %449 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %443, i64 %295, i64 %294, i64 0
  %450 = load double, double* %449, align 8, !tbaa !8
  %451 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %444, i64 %295, i64 %294, i64 0
  %452 = load double, double* %451, align 8, !tbaa !8
  %453 = tail call double @llvm.fmuladd.f64(double %452, double -4.000000e+00, double %450)
  %454 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %442, i64 %295, i64 %294, i64 0
  %455 = load double, double* %454, align 8, !tbaa !8
  %456 = tail call double @llvm.fmuladd.f64(double %455, double 6.000000e+00, double %453)
  %457 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %445, i64 %295, i64 %294, i64 0
  %458 = load double, double* %457, align 8, !tbaa !8
  %459 = tail call double @llvm.fmuladd.f64(double %458, double -4.000000e+00, double %456)
  %460 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %446, i64 %295, i64 %294, i64 0
  %461 = load double, double* %460, align 8, !tbaa !8
  %462 = fadd double %459, %461
  %463 = tail call double @llvm.fmuladd.f64(double %307, double %462, double %448)
  store double %463, double* %447, align 8, !tbaa !8
  %464 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %442, i64 %295, i64 %294, i64 1
  %465 = load double, double* %464, align 8, !tbaa !8
  %466 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %443, i64 %295, i64 %294, i64 1
  %467 = load double, double* %466, align 8, !tbaa !8
  %468 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %444, i64 %295, i64 %294, i64 1
  %469 = load double, double* %468, align 8, !tbaa !8
  %470 = tail call double @llvm.fmuladd.f64(double %469, double -4.000000e+00, double %467)
  %471 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %442, i64 %295, i64 %294, i64 1
  %472 = load double, double* %471, align 8, !tbaa !8
  %473 = tail call double @llvm.fmuladd.f64(double %472, double 6.000000e+00, double %470)
  %474 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %445, i64 %295, i64 %294, i64 1
  %475 = load double, double* %474, align 8, !tbaa !8
  %476 = tail call double @llvm.fmuladd.f64(double %475, double -4.000000e+00, double %473)
  %477 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %446, i64 %295, i64 %294, i64 1
  %478 = load double, double* %477, align 8, !tbaa !8
  %479 = fadd double %476, %478
  %480 = tail call double @llvm.fmuladd.f64(double %307, double %479, double %465)
  store double %480, double* %464, align 8, !tbaa !8
  %481 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %442, i64 %295, i64 %294, i64 2
  %482 = load double, double* %481, align 8, !tbaa !8
  %483 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %443, i64 %295, i64 %294, i64 2
  %484 = load double, double* %483, align 8, !tbaa !8
  %485 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %444, i64 %295, i64 %294, i64 2
  %486 = load double, double* %485, align 8, !tbaa !8
  %487 = tail call double @llvm.fmuladd.f64(double %486, double -4.000000e+00, double %484)
  %488 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %442, i64 %295, i64 %294, i64 2
  %489 = load double, double* %488, align 8, !tbaa !8
  %490 = tail call double @llvm.fmuladd.f64(double %489, double 6.000000e+00, double %487)
  %491 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %445, i64 %295, i64 %294, i64 2
  %492 = load double, double* %491, align 8, !tbaa !8
  %493 = tail call double @llvm.fmuladd.f64(double %492, double -4.000000e+00, double %490)
  %494 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %446, i64 %295, i64 %294, i64 2
  %495 = load double, double* %494, align 8, !tbaa !8
  %496 = fadd double %493, %495
  %497 = tail call double @llvm.fmuladd.f64(double %307, double %496, double %482)
  store double %497, double* %481, align 8, !tbaa !8
  %498 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %442, i64 %295, i64 %294, i64 3
  %499 = load double, double* %498, align 8, !tbaa !8
  %500 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %443, i64 %295, i64 %294, i64 3
  %501 = load double, double* %500, align 8, !tbaa !8
  %502 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %444, i64 %295, i64 %294, i64 3
  %503 = load double, double* %502, align 8, !tbaa !8
  %504 = tail call double @llvm.fmuladd.f64(double %503, double -4.000000e+00, double %501)
  %505 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %442, i64 %295, i64 %294, i64 3
  %506 = load double, double* %505, align 8, !tbaa !8
  %507 = tail call double @llvm.fmuladd.f64(double %506, double 6.000000e+00, double %504)
  %508 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %445, i64 %295, i64 %294, i64 3
  %509 = load double, double* %508, align 8, !tbaa !8
  %510 = tail call double @llvm.fmuladd.f64(double %509, double -4.000000e+00, double %507)
  %511 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %446, i64 %295, i64 %294, i64 3
  %512 = load double, double* %511, align 8, !tbaa !8
  %513 = fadd double %510, %512
  %514 = tail call double @llvm.fmuladd.f64(double %307, double %513, double %499)
  store double %514, double* %498, align 8, !tbaa !8
  %515 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %442, i64 %295, i64 %294, i64 4
  %516 = load double, double* %515, align 8, !tbaa !8
  %517 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %443, i64 %295, i64 %294, i64 4
  %518 = load double, double* %517, align 8, !tbaa !8
  %519 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %444, i64 %295, i64 %294, i64 4
  %520 = load double, double* %519, align 8, !tbaa !8
  %521 = tail call double @llvm.fmuladd.f64(double %520, double -4.000000e+00, double %518)
  %522 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %442, i64 %295, i64 %294, i64 4
  %523 = load double, double* %522, align 8, !tbaa !8
  %524 = tail call double @llvm.fmuladd.f64(double %523, double 6.000000e+00, double %521)
  %525 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %445, i64 %295, i64 %294, i64 4
  %526 = load double, double* %525, align 8, !tbaa !8
  %527 = tail call double @llvm.fmuladd.f64(double %526, double -4.000000e+00, double %524)
  %528 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %446, i64 %295, i64 %294, i64 4
  %529 = load double, double* %528, align 8, !tbaa !8
  %530 = fadd double %527, %529
  %531 = tail call double @llvm.fmuladd.f64(double %307, double %530, double %516)
  store double %531, double* %515, align 8, !tbaa !8
  %532 = icmp eq i64 %445, %440
  br i1 %532, label %533, label %441

; <label>:533:                                    ; preds = %441, %293
  %534 = sext i32 %437 to i64
  %535 = add nsw i32 %5, -5
  %536 = sext i32 %535 to i64
  %537 = add nsw i32 %5, -4
  %538 = sext i32 %537 to i64
  %539 = add nsw i32 %5, -2
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %534, i64 %295, i64 %294, i64 0
  %542 = load double, double* %541, align 8, !tbaa !8
  %543 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %536, i64 %295, i64 %294, i64 0
  %544 = load double, double* %543, align 8, !tbaa !8
  %545 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %538, i64 %295, i64 %294, i64 0
  %546 = load double, double* %545, align 8, !tbaa !8
  %547 = tail call double @llvm.fmuladd.f64(double %546, double -4.000000e+00, double %544)
  %548 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %534, i64 %295, i64 %294, i64 0
  %549 = load double, double* %548, align 8, !tbaa !8
  %550 = tail call double @llvm.fmuladd.f64(double %549, double 6.000000e+00, double %547)
  %551 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %540, i64 %295, i64 %294, i64 0
  %552 = load double, double* %551, align 8, !tbaa !8
  %553 = tail call double @llvm.fmuladd.f64(double %552, double -4.000000e+00, double %550)
  %554 = tail call double @llvm.fmuladd.f64(double %307, double %553, double %542)
  store double %554, double* %541, align 8, !tbaa !8
  %555 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %540, i64 %295, i64 %294, i64 0
  %556 = load double, double* %555, align 8, !tbaa !8
  %557 = load double, double* %545, align 8, !tbaa !8
  %558 = load double, double* %548, align 8, !tbaa !8
  %559 = tail call double @llvm.fmuladd.f64(double %558, double -4.000000e+00, double %557)
  %560 = load double, double* %551, align 8, !tbaa !8
  %561 = tail call double @llvm.fmuladd.f64(double %560, double 5.000000e+00, double %559)
  %562 = tail call double @llvm.fmuladd.f64(double %307, double %561, double %556)
  store double %562, double* %555, align 8, !tbaa !8
  %563 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %534, i64 %295, i64 %294, i64 1
  %564 = load double, double* %563, align 8, !tbaa !8
  %565 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %536, i64 %295, i64 %294, i64 1
  %566 = load double, double* %565, align 8, !tbaa !8
  %567 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %538, i64 %295, i64 %294, i64 1
  %568 = load double, double* %567, align 8, !tbaa !8
  %569 = tail call double @llvm.fmuladd.f64(double %568, double -4.000000e+00, double %566)
  %570 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %534, i64 %295, i64 %294, i64 1
  %571 = load double, double* %570, align 8, !tbaa !8
  %572 = tail call double @llvm.fmuladd.f64(double %571, double 6.000000e+00, double %569)
  %573 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %540, i64 %295, i64 %294, i64 1
  %574 = load double, double* %573, align 8, !tbaa !8
  %575 = tail call double @llvm.fmuladd.f64(double %574, double -4.000000e+00, double %572)
  %576 = tail call double @llvm.fmuladd.f64(double %307, double %575, double %564)
  store double %576, double* %563, align 8, !tbaa !8
  %577 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %540, i64 %295, i64 %294, i64 1
  %578 = load double, double* %577, align 8, !tbaa !8
  %579 = load double, double* %567, align 8, !tbaa !8
  %580 = load double, double* %570, align 8, !tbaa !8
  %581 = tail call double @llvm.fmuladd.f64(double %580, double -4.000000e+00, double %579)
  %582 = load double, double* %573, align 8, !tbaa !8
  %583 = tail call double @llvm.fmuladd.f64(double %582, double 5.000000e+00, double %581)
  %584 = tail call double @llvm.fmuladd.f64(double %307, double %583, double %578)
  store double %584, double* %577, align 8, !tbaa !8
  %585 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %534, i64 %295, i64 %294, i64 2
  %586 = load double, double* %585, align 8, !tbaa !8
  %587 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %536, i64 %295, i64 %294, i64 2
  %588 = load double, double* %587, align 8, !tbaa !8
  %589 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %538, i64 %295, i64 %294, i64 2
  %590 = load double, double* %589, align 8, !tbaa !8
  %591 = tail call double @llvm.fmuladd.f64(double %590, double -4.000000e+00, double %588)
  %592 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %534, i64 %295, i64 %294, i64 2
  %593 = load double, double* %592, align 8, !tbaa !8
  %594 = tail call double @llvm.fmuladd.f64(double %593, double 6.000000e+00, double %591)
  %595 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %540, i64 %295, i64 %294, i64 2
  %596 = load double, double* %595, align 8, !tbaa !8
  %597 = tail call double @llvm.fmuladd.f64(double %596, double -4.000000e+00, double %594)
  %598 = tail call double @llvm.fmuladd.f64(double %307, double %597, double %586)
  store double %598, double* %585, align 8, !tbaa !8
  %599 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %540, i64 %295, i64 %294, i64 2
  %600 = load double, double* %599, align 8, !tbaa !8
  %601 = load double, double* %589, align 8, !tbaa !8
  %602 = load double, double* %592, align 8, !tbaa !8
  %603 = tail call double @llvm.fmuladd.f64(double %602, double -4.000000e+00, double %601)
  %604 = load double, double* %595, align 8, !tbaa !8
  %605 = tail call double @llvm.fmuladd.f64(double %604, double 5.000000e+00, double %603)
  %606 = tail call double @llvm.fmuladd.f64(double %307, double %605, double %600)
  store double %606, double* %599, align 8, !tbaa !8
  %607 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %534, i64 %295, i64 %294, i64 3
  %608 = load double, double* %607, align 8, !tbaa !8
  %609 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %536, i64 %295, i64 %294, i64 3
  %610 = load double, double* %609, align 8, !tbaa !8
  %611 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %538, i64 %295, i64 %294, i64 3
  %612 = load double, double* %611, align 8, !tbaa !8
  %613 = tail call double @llvm.fmuladd.f64(double %612, double -4.000000e+00, double %610)
  %614 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %534, i64 %295, i64 %294, i64 3
  %615 = load double, double* %614, align 8, !tbaa !8
  %616 = tail call double @llvm.fmuladd.f64(double %615, double 6.000000e+00, double %613)
  %617 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %540, i64 %295, i64 %294, i64 3
  %618 = load double, double* %617, align 8, !tbaa !8
  %619 = tail call double @llvm.fmuladd.f64(double %618, double -4.000000e+00, double %616)
  %620 = tail call double @llvm.fmuladd.f64(double %307, double %619, double %608)
  store double %620, double* %607, align 8, !tbaa !8
  %621 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %540, i64 %295, i64 %294, i64 3
  %622 = load double, double* %621, align 8, !tbaa !8
  %623 = load double, double* %611, align 8, !tbaa !8
  %624 = load double, double* %614, align 8, !tbaa !8
  %625 = tail call double @llvm.fmuladd.f64(double %624, double -4.000000e+00, double %623)
  %626 = load double, double* %617, align 8, !tbaa !8
  %627 = tail call double @llvm.fmuladd.f64(double %626, double 5.000000e+00, double %625)
  %628 = tail call double @llvm.fmuladd.f64(double %307, double %627, double %622)
  store double %628, double* %621, align 8, !tbaa !8
  %629 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %534, i64 %295, i64 %294, i64 4
  %630 = load double, double* %629, align 8, !tbaa !8
  %631 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %536, i64 %295, i64 %294, i64 4
  %632 = load double, double* %631, align 8, !tbaa !8
  %633 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %538, i64 %295, i64 %294, i64 4
  %634 = load double, double* %633, align 8, !tbaa !8
  %635 = tail call double @llvm.fmuladd.f64(double %634, double -4.000000e+00, double %632)
  %636 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %534, i64 %295, i64 %294, i64 4
  %637 = load double, double* %636, align 8, !tbaa !8
  %638 = tail call double @llvm.fmuladd.f64(double %637, double 6.000000e+00, double %635)
  %639 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %540, i64 %295, i64 %294, i64 4
  %640 = load double, double* %639, align 8, !tbaa !8
  %641 = tail call double @llvm.fmuladd.f64(double %640, double -4.000000e+00, double %638)
  %642 = tail call double @llvm.fmuladd.f64(double %307, double %641, double %630)
  store double %642, double* %629, align 8, !tbaa !8
  %643 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %540, i64 %295, i64 %294, i64 4
  %644 = load double, double* %643, align 8, !tbaa !8
  %645 = load double, double* %633, align 8, !tbaa !8
  %646 = load double, double* %636, align 8, !tbaa !8
  %647 = tail call double @llvm.fmuladd.f64(double %646, double -4.000000e+00, double %645)
  %648 = load double, double* %639, align 8, !tbaa !8
  %649 = tail call double @llvm.fmuladd.f64(double %648, double 5.000000e+00, double %647)
  %650 = tail call double @llvm.fmuladd.f64(double %307, double %649, double %644)
  store double %650, double* %643, align 8, !tbaa !8
  br label %651

; <label>:651:                                    ; preds = %533, %6, %14
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind readnone
declare double @_Z3maxdd(double, double) local_unnamed_addr #1

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
