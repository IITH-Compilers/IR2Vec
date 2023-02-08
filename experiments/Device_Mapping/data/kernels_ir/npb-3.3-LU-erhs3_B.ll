; ModuleID = 'npb-LU-erhs3.cl'
source_filename = "npb-LU-erhs3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @erhs3(double* readonly, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %8 = add i64 %7, 1
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = add i64 %10, 1
  %12 = add nsw i32 %5, -1
  %13 = icmp sgt i32 %12, %9
  br i1 %13, label %14, label %638

; <label>:14:                                     ; preds = %6
  %15 = trunc i64 %11 to i32
  %16 = add nsw i32 %3, -1
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %18, label %638

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
  %28 = icmp sgt i32 %4, 0
  br i1 %28, label %29, label %197

; <label>:29:                                     ; preds = %18
  %30 = shl i64 %8, 32
  %31 = ashr exact i64 %30, 32
  %32 = shl i64 %11, 32
  %33 = ashr exact i64 %32, 32
  %34 = zext i32 %4 to i64
  br label %35

; <label>:35:                                     ; preds = %35, %29
  %36 = phi i64 [ 0, %29 ], [ %73, %35 ]
  %37 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %31, i64 %36, i64 %33, i64 2
  %38 = bitcast double* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !8
  %40 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36
  %41 = bitcast [5 x double]* %40 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !8
  %42 = load double, double* %37, align 8, !tbaa !8
  %43 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %31, i64 %36, i64 %33, i64 0
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = fdiv double %42, %44
  %46 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %31, i64 %36, i64 %33, i64 1
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = fmul double %42, %42
  %49 = tail call double @llvm.fmuladd.f64(double %47, double %47, double %48)
  %50 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %31, i64 %36, i64 %33, i64 3
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %51, double %49)
  %53 = fmul double %52, 5.000000e-01
  %54 = fdiv double %53, %44
  %55 = fmul double %47, %45
  %56 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 1
  store double %55, double* %56, align 8, !tbaa !8
  %57 = load double, double* %37, align 8, !tbaa !8
  %58 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %31, i64 %36, i64 %33, i64 4
  %59 = load double, double* %58, align 8, !tbaa !8
  %60 = fsub double %59, %54
  %61 = fmul double %60, 4.000000e-01
  %62 = tail call double @llvm.fmuladd.f64(double %57, double %45, double %61)
  %63 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 2
  store double %62, double* %63, align 8, !tbaa !8
  %64 = load double, double* %50, align 8, !tbaa !8
  %65 = fmul double %45, %64
  %66 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 3
  store double %65, double* %66, align 8, !tbaa !8
  %67 = load double, double* %58, align 8, !tbaa !8
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
  %76 = add nsw i32 %4, -1
  %77 = icmp sgt i32 %4, 2
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
  %88 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %80, i64 %85, i64 %82, i64 0
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 0
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 0
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fsub double %91, %93
  %95 = tail call double @llvm.fmuladd.f64(double %94, double -5.050000e+01, double %89)
  store double %95, double* %88, align 8, !tbaa !8
  %96 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %80, i64 %85, i64 %82, i64 1
  %97 = load double, double* %96, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 1
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 1
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = fsub double %99, %101
  %103 = tail call double @llvm.fmuladd.f64(double %102, double -5.050000e+01, double %97)
  store double %103, double* %96, align 8, !tbaa !8
  %104 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %80, i64 %85, i64 %82, i64 2
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 2
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 2
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fsub double %107, %109
  %111 = tail call double @llvm.fmuladd.f64(double %110, double -5.050000e+01, double %105)
  store double %111, double* %104, align 8, !tbaa !8
  %112 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %80, i64 %85, i64 %82, i64 3
  %113 = load double, double* %112, align 8, !tbaa !8
  %114 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 3
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 3
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fsub double %115, %117
  %119 = tail call double @llvm.fmuladd.f64(double %118, double -5.050000e+01, double %113)
  store double %119, double* %112, align 8, !tbaa !8
  %120 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %80, i64 %85, i64 %82, i64 4
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
  %131 = icmp sgt i32 %4, 1
  br i1 %131, label %132, label %196

; <label>:132:                                    ; preds = %129
  %133 = shl i64 %8, 32
  %134 = ashr exact i64 %133, 32
  %135 = shl i64 %11, 32
  %136 = ashr exact i64 %135, 32
  %137 = zext i32 %4 to i64
  br label %138

; <label>:138:                                    ; preds = %138, %132
  %139 = phi i64 [ 1, %132 ], [ %194, %138 ]
  %140 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %139, i64 %136, i64 0
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = fdiv double 1.000000e+00, %141
  %143 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %139, i64 %136, i64 1
  %144 = load double, double* %143, align 8, !tbaa !8
  %145 = fmul double %142, %144
  %146 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %139, i64 %136, i64 2
  %147 = load double, double* %146, align 8, !tbaa !8
  %148 = fmul double %142, %147
  %149 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %139, i64 %136, i64 3
  %150 = load double, double* %149, align 8, !tbaa !8
  %151 = fmul double %142, %150
  %152 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %139, i64 %136, i64 4
  %153 = load double, double* %152, align 8, !tbaa !8
  %154 = fmul double %142, %153
  %155 = add nsw i64 %139, -1
  %156 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %155, i64 %136, i64 0
  %157 = load double, double* %156, align 8, !tbaa !8
  %158 = fdiv double 1.000000e+00, %157
  %159 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %155, i64 %136, i64 1
  %160 = load double, double* %159, align 8, !tbaa !8
  %161 = fmul double %158, %160
  %162 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %155, i64 %136, i64 2
  %163 = load double, double* %162, align 8, !tbaa !8
  %164 = fmul double %158, %163
  %165 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %155, i64 %136, i64 3
  %166 = load double, double* %165, align 8, !tbaa !8
  %167 = fmul double %158, %166
  %168 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %134, i64 %155, i64 %136, i64 4
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = fmul double %158, %169
  %171 = fsub double %145, %161
  %172 = fmul double %171, 1.010000e+02
  %173 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 1
  store double %172, double* %173, align 8, !tbaa !8
  %174 = fsub double %148, %164
  %175 = fmul double %174, 0x4060D55555555555
  %176 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 2
  store double %175, double* %176, align 8, !tbaa !8
  %177 = fsub double %151, %167
  %178 = fmul double %177, 1.010000e+02
  %179 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 3
  store double %178, double* %179, align 8, !tbaa !8
  %180 = fmul double %148, %148
  %181 = tail call double @llvm.fmuladd.f64(double %145, double %145, double %180)
  %182 = tail call double @llvm.fmuladd.f64(double %151, double %151, double %181)
  %183 = fmul double %164, %164
  %184 = tail call double @llvm.fmuladd.f64(double %161, double %161, double %183)
  %185 = tail call double @llvm.fmuladd.f64(double %167, double %167, double %184)
  %186 = fsub double %182, %185
  %187 = fsub double -0.000000e+00, %183
  %188 = tail call double @llvm.fmuladd.f64(double %148, double %148, double %187)
  %189 = fmul double %188, 0x4030D55555555555
  %190 = tail call double @llvm.fmuladd.f64(double %186, double 0xC0483D70A3D70A3C, double %189)
  %191 = fsub double %154, %170
  %192 = tail call double @llvm.fmuladd.f64(double %191, double 0x4068BEB851EB851E, double %190)
  %193 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 4
  store double %192, double* %193, align 8, !tbaa !8
  %194 = add nuw nsw i64 %139, 1
  %195 = icmp eq i64 %194, %137
  br i1 %195, label %196, label %138

; <label>:196:                                    ; preds = %138, %129
  br i1 %130, label %202, label %197

; <label>:197:                                    ; preds = %18, %196
  %198 = shl i64 %8, 32
  %199 = ashr exact i64 %198, 32
  %200 = shl i64 %11, 32
  %201 = ashr exact i64 %200, 32
  br label %292

; <label>:202:                                    ; preds = %196
  %203 = shl i64 %8, 32
  %204 = ashr exact i64 %203, 32
  %205 = shl i64 %11, 32
  %206 = ashr exact i64 %205, 32
  %207 = zext i32 %76 to i64
  br label %208

; <label>:208:                                    ; preds = %208, %202
  %209 = phi i64 [ 1, %202 ], [ %218, %208 ]
  %210 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %204, i64 %209, i64 %206, i64 0
  %211 = load double, double* %210, align 8, !tbaa !8
  %212 = add nsw i64 %209, -1
  %213 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %212, i64 %206, i64 0
  %214 = load double, double* %213, align 8, !tbaa !8
  %215 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %209, i64 %206, i64 0
  %216 = load double, double* %215, align 8, !tbaa !8
  %217 = tail call double @llvm.fmuladd.f64(double %216, double -2.000000e+00, double %214)
  %218 = add nuw nsw i64 %209, 1
  %219 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %218, i64 %206, i64 0
  %220 = load double, double* %219, align 8, !tbaa !8
  %221 = fadd double %217, %220
  %222 = tail call double @llvm.fmuladd.f64(double %221, double 7.650750e+03, double %211)
  store double %222, double* %210, align 8, !tbaa !8
  %223 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %204, i64 %209, i64 %206, i64 1
  %224 = load double, double* %223, align 8, !tbaa !8
  %225 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %218, i64 1
  %226 = load double, double* %225, align 8, !tbaa !8
  %227 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %209, i64 1
  %228 = load double, double* %227, align 8, !tbaa !8
  %229 = fsub double %226, %228
  %230 = tail call double @llvm.fmuladd.f64(double %229, double 0x4024333333333334, double %224)
  %231 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %212, i64 %206, i64 1
  %232 = load double, double* %231, align 8, !tbaa !8
  %233 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %209, i64 %206, i64 1
  %234 = load double, double* %233, align 8, !tbaa !8
  %235 = tail call double @llvm.fmuladd.f64(double %234, double -2.000000e+00, double %232)
  %236 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %218, i64 %206, i64 1
  %237 = load double, double* %236, align 8, !tbaa !8
  %238 = fadd double %235, %237
  %239 = tail call double @llvm.fmuladd.f64(double %238, double 7.650750e+03, double %230)
  store double %239, double* %223, align 8, !tbaa !8
  %240 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %204, i64 %209, i64 %206, i64 2
  %241 = load double, double* %240, align 8, !tbaa !8
  %242 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %218, i64 2
  %243 = load double, double* %242, align 8, !tbaa !8
  %244 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %209, i64 2
  %245 = load double, double* %244, align 8, !tbaa !8
  %246 = fsub double %243, %245
  %247 = tail call double @llvm.fmuladd.f64(double %246, double 0x4024333333333334, double %241)
  %248 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %212, i64 %206, i64 2
  %249 = load double, double* %248, align 8, !tbaa !8
  %250 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %209, i64 %206, i64 2
  %251 = load double, double* %250, align 8, !tbaa !8
  %252 = tail call double @llvm.fmuladd.f64(double %251, double -2.000000e+00, double %249)
  %253 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %218, i64 %206, i64 2
  %254 = load double, double* %253, align 8, !tbaa !8
  %255 = fadd double %252, %254
  %256 = tail call double @llvm.fmuladd.f64(double %255, double 7.650750e+03, double %247)
  store double %256, double* %240, align 8, !tbaa !8
  %257 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %204, i64 %209, i64 %206, i64 3
  %258 = load double, double* %257, align 8, !tbaa !8
  %259 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %218, i64 3
  %260 = load double, double* %259, align 8, !tbaa !8
  %261 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %209, i64 3
  %262 = load double, double* %261, align 8, !tbaa !8
  %263 = fsub double %260, %262
  %264 = tail call double @llvm.fmuladd.f64(double %263, double 0x4024333333333334, double %258)
  %265 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %212, i64 %206, i64 3
  %266 = load double, double* %265, align 8, !tbaa !8
  %267 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %209, i64 %206, i64 3
  %268 = load double, double* %267, align 8, !tbaa !8
  %269 = tail call double @llvm.fmuladd.f64(double %268, double -2.000000e+00, double %266)
  %270 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %218, i64 %206, i64 3
  %271 = load double, double* %270, align 8, !tbaa !8
  %272 = fadd double %269, %271
  %273 = tail call double @llvm.fmuladd.f64(double %272, double 7.650750e+03, double %264)
  store double %273, double* %257, align 8, !tbaa !8
  %274 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %204, i64 %209, i64 %206, i64 4
  %275 = load double, double* %274, align 8, !tbaa !8
  %276 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %218, i64 4
  %277 = load double, double* %276, align 8, !tbaa !8
  %278 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %209, i64 4
  %279 = load double, double* %278, align 8, !tbaa !8
  %280 = fsub double %277, %279
  %281 = tail call double @llvm.fmuladd.f64(double %280, double 0x4024333333333334, double %275)
  %282 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %212, i64 %206, i64 4
  %283 = load double, double* %282, align 8, !tbaa !8
  %284 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %209, i64 %206, i64 4
  %285 = load double, double* %284, align 8, !tbaa !8
  %286 = tail call double @llvm.fmuladd.f64(double %285, double -2.000000e+00, double %283)
  %287 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %204, i64 %218, i64 %206, i64 4
  %288 = load double, double* %287, align 8, !tbaa !8
  %289 = fadd double %286, %288
  %290 = tail call double @llvm.fmuladd.f64(double %289, double 7.650750e+03, double %281)
  store double %290, double* %274, align 8, !tbaa !8
  %291 = icmp eq i64 %218, %207
  br i1 %291, label %292, label %208

; <label>:292:                                    ; preds = %208, %197
  %293 = phi i64 [ %201, %197 ], [ %206, %208 ]
  %294 = phi i64 [ %199, %197 ], [ %204, %208 ]
  %295 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #3
  %296 = tail call double @_Z3maxdd(double %295, double 1.000000e+00) #3
  %297 = fmul double %296, 2.500000e-01
  %298 = fsub double -0.000000e+00, %297
  %299 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 1, i64 %293, i64 0
  %300 = load double, double* %299, align 8, !tbaa !8
  %301 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 1, i64 %293, i64 0
  %302 = load double, double* %301, align 8, !tbaa !8
  %303 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 2, i64 %293, i64 0
  %304 = load double, double* %303, align 8, !tbaa !8
  %305 = fmul double %304, 4.000000e+00
  %306 = fsub double -0.000000e+00, %305
  %307 = tail call double @llvm.fmuladd.f64(double %302, double 5.000000e+00, double %306)
  %308 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 3, i64 %293, i64 0
  %309 = load double, double* %308, align 8, !tbaa !8
  %310 = fadd double %309, %307
  %311 = tail call double @llvm.fmuladd.f64(double %298, double %310, double %300)
  store double %311, double* %299, align 8, !tbaa !8
  %312 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 2, i64 %293, i64 0
  %313 = load double, double* %312, align 8, !tbaa !8
  %314 = load double, double* %301, align 8, !tbaa !8
  %315 = load double, double* %303, align 8, !tbaa !8
  %316 = fmul double %315, 6.000000e+00
  %317 = tail call double @llvm.fmuladd.f64(double %314, double -4.000000e+00, double %316)
  %318 = load double, double* %308, align 8, !tbaa !8
  %319 = tail call double @llvm.fmuladd.f64(double %318, double -4.000000e+00, double %317)
  %320 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 4, i64 %293, i64 0
  %321 = load double, double* %320, align 8, !tbaa !8
  %322 = fadd double %321, %319
  %323 = tail call double @llvm.fmuladd.f64(double %298, double %322, double %313)
  store double %323, double* %312, align 8, !tbaa !8
  %324 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 1, i64 %293, i64 1
  %325 = load double, double* %324, align 8, !tbaa !8
  %326 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 1, i64 %293, i64 1
  %327 = load double, double* %326, align 8, !tbaa !8
  %328 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 2, i64 %293, i64 1
  %329 = load double, double* %328, align 8, !tbaa !8
  %330 = fmul double %329, 4.000000e+00
  %331 = fsub double -0.000000e+00, %330
  %332 = tail call double @llvm.fmuladd.f64(double %327, double 5.000000e+00, double %331)
  %333 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 3, i64 %293, i64 1
  %334 = load double, double* %333, align 8, !tbaa !8
  %335 = fadd double %334, %332
  %336 = tail call double @llvm.fmuladd.f64(double %298, double %335, double %325)
  store double %336, double* %324, align 8, !tbaa !8
  %337 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 2, i64 %293, i64 1
  %338 = load double, double* %337, align 8, !tbaa !8
  %339 = load double, double* %326, align 8, !tbaa !8
  %340 = load double, double* %328, align 8, !tbaa !8
  %341 = fmul double %340, 6.000000e+00
  %342 = tail call double @llvm.fmuladd.f64(double %339, double -4.000000e+00, double %341)
  %343 = load double, double* %333, align 8, !tbaa !8
  %344 = tail call double @llvm.fmuladd.f64(double %343, double -4.000000e+00, double %342)
  %345 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 4, i64 %293, i64 1
  %346 = load double, double* %345, align 8, !tbaa !8
  %347 = fadd double %346, %344
  %348 = tail call double @llvm.fmuladd.f64(double %298, double %347, double %338)
  store double %348, double* %337, align 8, !tbaa !8
  %349 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 1, i64 %293, i64 2
  %350 = load double, double* %349, align 8, !tbaa !8
  %351 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 1, i64 %293, i64 2
  %352 = load double, double* %351, align 8, !tbaa !8
  %353 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 2, i64 %293, i64 2
  %354 = load double, double* %353, align 8, !tbaa !8
  %355 = fmul double %354, 4.000000e+00
  %356 = fsub double -0.000000e+00, %355
  %357 = tail call double @llvm.fmuladd.f64(double %352, double 5.000000e+00, double %356)
  %358 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 3, i64 %293, i64 2
  %359 = load double, double* %358, align 8, !tbaa !8
  %360 = fadd double %359, %357
  %361 = tail call double @llvm.fmuladd.f64(double %298, double %360, double %350)
  store double %361, double* %349, align 8, !tbaa !8
  %362 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 2, i64 %293, i64 2
  %363 = load double, double* %362, align 8, !tbaa !8
  %364 = load double, double* %351, align 8, !tbaa !8
  %365 = load double, double* %353, align 8, !tbaa !8
  %366 = fmul double %365, 6.000000e+00
  %367 = tail call double @llvm.fmuladd.f64(double %364, double -4.000000e+00, double %366)
  %368 = load double, double* %358, align 8, !tbaa !8
  %369 = tail call double @llvm.fmuladd.f64(double %368, double -4.000000e+00, double %367)
  %370 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 4, i64 %293, i64 2
  %371 = load double, double* %370, align 8, !tbaa !8
  %372 = fadd double %371, %369
  %373 = tail call double @llvm.fmuladd.f64(double %298, double %372, double %363)
  store double %373, double* %362, align 8, !tbaa !8
  %374 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 1, i64 %293, i64 3
  %375 = load double, double* %374, align 8, !tbaa !8
  %376 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 1, i64 %293, i64 3
  %377 = load double, double* %376, align 8, !tbaa !8
  %378 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 2, i64 %293, i64 3
  %379 = load double, double* %378, align 8, !tbaa !8
  %380 = fmul double %379, 4.000000e+00
  %381 = fsub double -0.000000e+00, %380
  %382 = tail call double @llvm.fmuladd.f64(double %377, double 5.000000e+00, double %381)
  %383 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 3, i64 %293, i64 3
  %384 = load double, double* %383, align 8, !tbaa !8
  %385 = fadd double %384, %382
  %386 = tail call double @llvm.fmuladd.f64(double %298, double %385, double %375)
  store double %386, double* %374, align 8, !tbaa !8
  %387 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 2, i64 %293, i64 3
  %388 = load double, double* %387, align 8, !tbaa !8
  %389 = load double, double* %376, align 8, !tbaa !8
  %390 = load double, double* %378, align 8, !tbaa !8
  %391 = fmul double %390, 6.000000e+00
  %392 = tail call double @llvm.fmuladd.f64(double %389, double -4.000000e+00, double %391)
  %393 = load double, double* %383, align 8, !tbaa !8
  %394 = tail call double @llvm.fmuladd.f64(double %393, double -4.000000e+00, double %392)
  %395 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 4, i64 %293, i64 3
  %396 = load double, double* %395, align 8, !tbaa !8
  %397 = fadd double %396, %394
  %398 = tail call double @llvm.fmuladd.f64(double %298, double %397, double %388)
  store double %398, double* %387, align 8, !tbaa !8
  %399 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 1, i64 %293, i64 4
  %400 = load double, double* %399, align 8, !tbaa !8
  %401 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 1, i64 %293, i64 4
  %402 = load double, double* %401, align 8, !tbaa !8
  %403 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 2, i64 %293, i64 4
  %404 = load double, double* %403, align 8, !tbaa !8
  %405 = fmul double %404, 4.000000e+00
  %406 = fsub double -0.000000e+00, %405
  %407 = tail call double @llvm.fmuladd.f64(double %402, double 5.000000e+00, double %406)
  %408 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 3, i64 %293, i64 4
  %409 = load double, double* %408, align 8, !tbaa !8
  %410 = fadd double %409, %407
  %411 = tail call double @llvm.fmuladd.f64(double %298, double %410, double %400)
  store double %411, double* %399, align 8, !tbaa !8
  %412 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 2, i64 %293, i64 4
  %413 = load double, double* %412, align 8, !tbaa !8
  %414 = load double, double* %401, align 8, !tbaa !8
  %415 = load double, double* %403, align 8, !tbaa !8
  %416 = fmul double %415, 6.000000e+00
  %417 = tail call double @llvm.fmuladd.f64(double %414, double -4.000000e+00, double %416)
  %418 = load double, double* %408, align 8, !tbaa !8
  %419 = tail call double @llvm.fmuladd.f64(double %418, double -4.000000e+00, double %417)
  %420 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 4, i64 %293, i64 4
  %421 = load double, double* %420, align 8, !tbaa !8
  %422 = fadd double %421, %419
  %423 = tail call double @llvm.fmuladd.f64(double %298, double %422, double %413)
  store double %423, double* %412, align 8, !tbaa !8
  %424 = add nsw i32 %4, -3
  %425 = icmp sgt i32 %4, 6
  br i1 %425, label %426, label %520

; <label>:426:                                    ; preds = %292
  %427 = zext i32 %424 to i64
  br label %428

; <label>:428:                                    ; preds = %428, %426
  %429 = phi i64 [ 3, %426 ], [ %432, %428 ]
  %430 = add nsw i64 %429, -2
  %431 = add nsw i64 %429, -1
  %432 = add nuw nsw i64 %429, 1
  %433 = add nuw nsw i64 %429, 2
  %434 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %429, i64 %293, i64 0
  %435 = load double, double* %434, align 8, !tbaa !8
  %436 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %430, i64 %293, i64 0
  %437 = load double, double* %436, align 8, !tbaa !8
  %438 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %431, i64 %293, i64 0
  %439 = load double, double* %438, align 8, !tbaa !8
  %440 = tail call double @llvm.fmuladd.f64(double %439, double -4.000000e+00, double %437)
  %441 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %429, i64 %293, i64 0
  %442 = load double, double* %441, align 8, !tbaa !8
  %443 = tail call double @llvm.fmuladd.f64(double %442, double 6.000000e+00, double %440)
  %444 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %432, i64 %293, i64 0
  %445 = load double, double* %444, align 8, !tbaa !8
  %446 = tail call double @llvm.fmuladd.f64(double %445, double -4.000000e+00, double %443)
  %447 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %433, i64 %293, i64 0
  %448 = load double, double* %447, align 8, !tbaa !8
  %449 = fadd double %446, %448
  %450 = tail call double @llvm.fmuladd.f64(double %298, double %449, double %435)
  store double %450, double* %434, align 8, !tbaa !8
  %451 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %429, i64 %293, i64 1
  %452 = load double, double* %451, align 8, !tbaa !8
  %453 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %430, i64 %293, i64 1
  %454 = load double, double* %453, align 8, !tbaa !8
  %455 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %431, i64 %293, i64 1
  %456 = load double, double* %455, align 8, !tbaa !8
  %457 = tail call double @llvm.fmuladd.f64(double %456, double -4.000000e+00, double %454)
  %458 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %429, i64 %293, i64 1
  %459 = load double, double* %458, align 8, !tbaa !8
  %460 = tail call double @llvm.fmuladd.f64(double %459, double 6.000000e+00, double %457)
  %461 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %432, i64 %293, i64 1
  %462 = load double, double* %461, align 8, !tbaa !8
  %463 = tail call double @llvm.fmuladd.f64(double %462, double -4.000000e+00, double %460)
  %464 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %433, i64 %293, i64 1
  %465 = load double, double* %464, align 8, !tbaa !8
  %466 = fadd double %463, %465
  %467 = tail call double @llvm.fmuladd.f64(double %298, double %466, double %452)
  store double %467, double* %451, align 8, !tbaa !8
  %468 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %429, i64 %293, i64 2
  %469 = load double, double* %468, align 8, !tbaa !8
  %470 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %430, i64 %293, i64 2
  %471 = load double, double* %470, align 8, !tbaa !8
  %472 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %431, i64 %293, i64 2
  %473 = load double, double* %472, align 8, !tbaa !8
  %474 = tail call double @llvm.fmuladd.f64(double %473, double -4.000000e+00, double %471)
  %475 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %429, i64 %293, i64 2
  %476 = load double, double* %475, align 8, !tbaa !8
  %477 = tail call double @llvm.fmuladd.f64(double %476, double 6.000000e+00, double %474)
  %478 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %432, i64 %293, i64 2
  %479 = load double, double* %478, align 8, !tbaa !8
  %480 = tail call double @llvm.fmuladd.f64(double %479, double -4.000000e+00, double %477)
  %481 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %433, i64 %293, i64 2
  %482 = load double, double* %481, align 8, !tbaa !8
  %483 = fadd double %480, %482
  %484 = tail call double @llvm.fmuladd.f64(double %298, double %483, double %469)
  store double %484, double* %468, align 8, !tbaa !8
  %485 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %429, i64 %293, i64 3
  %486 = load double, double* %485, align 8, !tbaa !8
  %487 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %430, i64 %293, i64 3
  %488 = load double, double* %487, align 8, !tbaa !8
  %489 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %431, i64 %293, i64 3
  %490 = load double, double* %489, align 8, !tbaa !8
  %491 = tail call double @llvm.fmuladd.f64(double %490, double -4.000000e+00, double %488)
  %492 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %429, i64 %293, i64 3
  %493 = load double, double* %492, align 8, !tbaa !8
  %494 = tail call double @llvm.fmuladd.f64(double %493, double 6.000000e+00, double %491)
  %495 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %432, i64 %293, i64 3
  %496 = load double, double* %495, align 8, !tbaa !8
  %497 = tail call double @llvm.fmuladd.f64(double %496, double -4.000000e+00, double %494)
  %498 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %433, i64 %293, i64 3
  %499 = load double, double* %498, align 8, !tbaa !8
  %500 = fadd double %497, %499
  %501 = tail call double @llvm.fmuladd.f64(double %298, double %500, double %486)
  store double %501, double* %485, align 8, !tbaa !8
  %502 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %429, i64 %293, i64 4
  %503 = load double, double* %502, align 8, !tbaa !8
  %504 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %430, i64 %293, i64 4
  %505 = load double, double* %504, align 8, !tbaa !8
  %506 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %431, i64 %293, i64 4
  %507 = load double, double* %506, align 8, !tbaa !8
  %508 = tail call double @llvm.fmuladd.f64(double %507, double -4.000000e+00, double %505)
  %509 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %429, i64 %293, i64 4
  %510 = load double, double* %509, align 8, !tbaa !8
  %511 = tail call double @llvm.fmuladd.f64(double %510, double 6.000000e+00, double %508)
  %512 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %432, i64 %293, i64 4
  %513 = load double, double* %512, align 8, !tbaa !8
  %514 = tail call double @llvm.fmuladd.f64(double %513, double -4.000000e+00, double %511)
  %515 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %433, i64 %293, i64 4
  %516 = load double, double* %515, align 8, !tbaa !8
  %517 = fadd double %514, %516
  %518 = tail call double @llvm.fmuladd.f64(double %298, double %517, double %503)
  store double %518, double* %502, align 8, !tbaa !8
  %519 = icmp eq i64 %432, %427
  br i1 %519, label %520, label %428

; <label>:520:                                    ; preds = %428, %292
  %521 = sext i32 %424 to i64
  %522 = add nsw i32 %4, -5
  %523 = sext i32 %522 to i64
  %524 = add nsw i32 %4, -4
  %525 = sext i32 %524 to i64
  %526 = add nsw i32 %4, -2
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %521, i64 %293, i64 0
  %529 = load double, double* %528, align 8, !tbaa !8
  %530 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %523, i64 %293, i64 0
  %531 = load double, double* %530, align 8, !tbaa !8
  %532 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %525, i64 %293, i64 0
  %533 = load double, double* %532, align 8, !tbaa !8
  %534 = tail call double @llvm.fmuladd.f64(double %533, double -4.000000e+00, double %531)
  %535 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %521, i64 %293, i64 0
  %536 = load double, double* %535, align 8, !tbaa !8
  %537 = tail call double @llvm.fmuladd.f64(double %536, double 6.000000e+00, double %534)
  %538 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %527, i64 %293, i64 0
  %539 = load double, double* %538, align 8, !tbaa !8
  %540 = tail call double @llvm.fmuladd.f64(double %539, double -4.000000e+00, double %537)
  %541 = tail call double @llvm.fmuladd.f64(double %298, double %540, double %529)
  store double %541, double* %528, align 8, !tbaa !8
  %542 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %527, i64 %293, i64 0
  %543 = load double, double* %542, align 8, !tbaa !8
  %544 = load double, double* %532, align 8, !tbaa !8
  %545 = load double, double* %535, align 8, !tbaa !8
  %546 = tail call double @llvm.fmuladd.f64(double %545, double -4.000000e+00, double %544)
  %547 = load double, double* %538, align 8, !tbaa !8
  %548 = tail call double @llvm.fmuladd.f64(double %547, double 5.000000e+00, double %546)
  %549 = tail call double @llvm.fmuladd.f64(double %298, double %548, double %543)
  store double %549, double* %542, align 8, !tbaa !8
  %550 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %521, i64 %293, i64 1
  %551 = load double, double* %550, align 8, !tbaa !8
  %552 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %523, i64 %293, i64 1
  %553 = load double, double* %552, align 8, !tbaa !8
  %554 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %525, i64 %293, i64 1
  %555 = load double, double* %554, align 8, !tbaa !8
  %556 = tail call double @llvm.fmuladd.f64(double %555, double -4.000000e+00, double %553)
  %557 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %521, i64 %293, i64 1
  %558 = load double, double* %557, align 8, !tbaa !8
  %559 = tail call double @llvm.fmuladd.f64(double %558, double 6.000000e+00, double %556)
  %560 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %527, i64 %293, i64 1
  %561 = load double, double* %560, align 8, !tbaa !8
  %562 = tail call double @llvm.fmuladd.f64(double %561, double -4.000000e+00, double %559)
  %563 = tail call double @llvm.fmuladd.f64(double %298, double %562, double %551)
  store double %563, double* %550, align 8, !tbaa !8
  %564 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %527, i64 %293, i64 1
  %565 = load double, double* %564, align 8, !tbaa !8
  %566 = load double, double* %554, align 8, !tbaa !8
  %567 = load double, double* %557, align 8, !tbaa !8
  %568 = tail call double @llvm.fmuladd.f64(double %567, double -4.000000e+00, double %566)
  %569 = load double, double* %560, align 8, !tbaa !8
  %570 = tail call double @llvm.fmuladd.f64(double %569, double 5.000000e+00, double %568)
  %571 = tail call double @llvm.fmuladd.f64(double %298, double %570, double %565)
  store double %571, double* %564, align 8, !tbaa !8
  %572 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %521, i64 %293, i64 2
  %573 = load double, double* %572, align 8, !tbaa !8
  %574 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %523, i64 %293, i64 2
  %575 = load double, double* %574, align 8, !tbaa !8
  %576 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %525, i64 %293, i64 2
  %577 = load double, double* %576, align 8, !tbaa !8
  %578 = tail call double @llvm.fmuladd.f64(double %577, double -4.000000e+00, double %575)
  %579 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %521, i64 %293, i64 2
  %580 = load double, double* %579, align 8, !tbaa !8
  %581 = tail call double @llvm.fmuladd.f64(double %580, double 6.000000e+00, double %578)
  %582 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %527, i64 %293, i64 2
  %583 = load double, double* %582, align 8, !tbaa !8
  %584 = tail call double @llvm.fmuladd.f64(double %583, double -4.000000e+00, double %581)
  %585 = tail call double @llvm.fmuladd.f64(double %298, double %584, double %573)
  store double %585, double* %572, align 8, !tbaa !8
  %586 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %527, i64 %293, i64 2
  %587 = load double, double* %586, align 8, !tbaa !8
  %588 = load double, double* %576, align 8, !tbaa !8
  %589 = load double, double* %579, align 8, !tbaa !8
  %590 = tail call double @llvm.fmuladd.f64(double %589, double -4.000000e+00, double %588)
  %591 = load double, double* %582, align 8, !tbaa !8
  %592 = tail call double @llvm.fmuladd.f64(double %591, double 5.000000e+00, double %590)
  %593 = tail call double @llvm.fmuladd.f64(double %298, double %592, double %587)
  store double %593, double* %586, align 8, !tbaa !8
  %594 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %521, i64 %293, i64 3
  %595 = load double, double* %594, align 8, !tbaa !8
  %596 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %523, i64 %293, i64 3
  %597 = load double, double* %596, align 8, !tbaa !8
  %598 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %525, i64 %293, i64 3
  %599 = load double, double* %598, align 8, !tbaa !8
  %600 = tail call double @llvm.fmuladd.f64(double %599, double -4.000000e+00, double %597)
  %601 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %521, i64 %293, i64 3
  %602 = load double, double* %601, align 8, !tbaa !8
  %603 = tail call double @llvm.fmuladd.f64(double %602, double 6.000000e+00, double %600)
  %604 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %527, i64 %293, i64 3
  %605 = load double, double* %604, align 8, !tbaa !8
  %606 = tail call double @llvm.fmuladd.f64(double %605, double -4.000000e+00, double %603)
  %607 = tail call double @llvm.fmuladd.f64(double %298, double %606, double %595)
  store double %607, double* %594, align 8, !tbaa !8
  %608 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %527, i64 %293, i64 3
  %609 = load double, double* %608, align 8, !tbaa !8
  %610 = load double, double* %598, align 8, !tbaa !8
  %611 = load double, double* %601, align 8, !tbaa !8
  %612 = tail call double @llvm.fmuladd.f64(double %611, double -4.000000e+00, double %610)
  %613 = load double, double* %604, align 8, !tbaa !8
  %614 = tail call double @llvm.fmuladd.f64(double %613, double 5.000000e+00, double %612)
  %615 = tail call double @llvm.fmuladd.f64(double %298, double %614, double %609)
  store double %615, double* %608, align 8, !tbaa !8
  %616 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %521, i64 %293, i64 4
  %617 = load double, double* %616, align 8, !tbaa !8
  %618 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %523, i64 %293, i64 4
  %619 = load double, double* %618, align 8, !tbaa !8
  %620 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %525, i64 %293, i64 4
  %621 = load double, double* %620, align 8, !tbaa !8
  %622 = tail call double @llvm.fmuladd.f64(double %621, double -4.000000e+00, double %619)
  %623 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %521, i64 %293, i64 4
  %624 = load double, double* %623, align 8, !tbaa !8
  %625 = tail call double @llvm.fmuladd.f64(double %624, double 6.000000e+00, double %622)
  %626 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %19, i64 %294, i64 %527, i64 %293, i64 4
  %627 = load double, double* %626, align 8, !tbaa !8
  %628 = tail call double @llvm.fmuladd.f64(double %627, double -4.000000e+00, double %625)
  %629 = tail call double @llvm.fmuladd.f64(double %298, double %628, double %617)
  store double %629, double* %616, align 8, !tbaa !8
  %630 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %20, i64 %294, i64 %527, i64 %293, i64 4
  %631 = load double, double* %630, align 8, !tbaa !8
  %632 = load double, double* %620, align 8, !tbaa !8
  %633 = load double, double* %623, align 8, !tbaa !8
  %634 = tail call double @llvm.fmuladd.f64(double %633, double -4.000000e+00, double %632)
  %635 = load double, double* %626, align 8, !tbaa !8
  %636 = tail call double @llvm.fmuladd.f64(double %635, double 5.000000e+00, double %634)
  %637 = tail call double @llvm.fmuladd.f64(double %298, double %636, double %631)
  store double %637, double* %630, align 8, !tbaa !8
  br label %638

; <label>:638:                                    ; preds = %520, %6, %14
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
