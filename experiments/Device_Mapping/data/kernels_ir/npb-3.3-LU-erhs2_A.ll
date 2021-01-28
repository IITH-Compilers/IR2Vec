; ModuleID = 'npb-LU-erhs2.cl'
source_filename = "npb-LU-erhs2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @erhs2(double* readonly, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %8 = add i64 %7, 1
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 %5, -1
  %14 = icmp sgt i32 %13, %9
  %15 = add nsw i32 %4, -1
  %16 = icmp sgt i32 %15, %12
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %639

; <label>:18:                                     ; preds = %6
  %19 = bitcast double* %0 to [65 x [65 x [5 x double]]]*
  %20 = bitcast double* %1 to [65 x [65 x [5 x double]]]*
  %21 = shl i32 %9, 6
  %22 = add i32 %21, %12
  %23 = mul i32 %22, 320
  %24 = add i32 %23, -20800
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %2, i64 %25
  %27 = bitcast double* %26 to [5 x double]*
  %28 = icmp sgt i32 %3, 0
  br i1 %28, label %29, label %198

; <label>:29:                                     ; preds = %18
  %30 = shl i64 %8, 32
  %31 = ashr exact i64 %30, 32
  %32 = shl i64 %11, 32
  %33 = ashr exact i64 %32, 32
  %34 = zext i32 %3 to i64
  br label %35

; <label>:35:                                     ; preds = %35, %29
  %36 = phi i64 [ 0, %29 ], [ %73, %35 ]
  %37 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %31, i64 %33, i64 %36, i64 1
  %38 = bitcast double* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !8
  %40 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36
  %41 = bitcast [5 x double]* %40 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !8
  %42 = load double, double* %37, align 8, !tbaa !8
  %43 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %31, i64 %33, i64 %36, i64 0
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = fdiv double %42, %44
  %46 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %31, i64 %33, i64 %36, i64 2
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = fmul double %47, %47
  %49 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %48)
  %50 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %31, i64 %33, i64 %36, i64 3
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %51, double %49)
  %53 = fmul double %52, 5.000000e-01
  %54 = fdiv double %53, %44
  %55 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %31, i64 %33, i64 %36, i64 4
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = fsub double %56, %54
  %58 = fmul double %57, 4.000000e-01
  %59 = tail call double @llvm.fmuladd.f64(double %42, double %45, double %58)
  %60 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 1
  store double %59, double* %60, align 8, !tbaa !8
  %61 = load double, double* %46, align 8, !tbaa !8
  %62 = fmul double %45, %61
  %63 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 2
  store double %62, double* %63, align 8, !tbaa !8
  %64 = load double, double* %50, align 8, !tbaa !8
  %65 = fmul double %45, %64
  %66 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %36, i64 3
  store double %65, double* %66, align 8, !tbaa !8
  %67 = load double, double* %55, align 8, !tbaa !8
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
  %76 = add nsw i32 %3, -1
  %77 = icmp sgt i32 %3, 2
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
  %88 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %80, i64 %82, i64 %85, i64 0
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 0
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 0
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fsub double %91, %93
  %95 = tail call double @llvm.fmuladd.f64(double %94, double -3.150000e+01, double %89)
  store double %95, double* %88, align 8, !tbaa !8
  %96 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %80, i64 %82, i64 %85, i64 1
  %97 = load double, double* %96, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 1
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 1
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = fsub double %99, %101
  %103 = tail call double @llvm.fmuladd.f64(double %102, double -3.150000e+01, double %97)
  store double %103, double* %96, align 8, !tbaa !8
  %104 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %80, i64 %82, i64 %85, i64 2
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 2
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 2
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fsub double %107, %109
  %111 = tail call double @llvm.fmuladd.f64(double %110, double -3.150000e+01, double %105)
  store double %111, double* %104, align 8, !tbaa !8
  %112 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %80, i64 %82, i64 %85, i64 3
  %113 = load double, double* %112, align 8, !tbaa !8
  %114 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 3
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 3
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fsub double %115, %117
  %119 = tail call double @llvm.fmuladd.f64(double %118, double -3.150000e+01, double %113)
  store double %119, double* %112, align 8, !tbaa !8
  %120 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %80, i64 %82, i64 %85, i64 4
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %86, i64 4
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %87, i64 4
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = fsub double %123, %125
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -3.150000e+01, double %121)
  store double %127, double* %120, align 8, !tbaa !8
  %128 = icmp eq i64 %86, %83
  br i1 %128, label %129, label %84

; <label>:129:                                    ; preds = %84, %75
  %130 = phi i1 [ false, %75 ], [ %77, %84 ]
  %131 = icmp sgt i32 %3, 1
  br i1 %131, label %132, label %197

; <label>:132:                                    ; preds = %129
  %133 = shl i64 %8, 32
  %134 = ashr exact i64 %133, 32
  %135 = shl i64 %11, 32
  %136 = ashr exact i64 %135, 32
  %137 = zext i32 %3 to i64
  br label %138

; <label>:138:                                    ; preds = %138, %132
  %139 = phi i64 [ 1, %132 ], [ %195, %138 ]
  %140 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %139, i64 0
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = fdiv double 1.000000e+00, %141
  %143 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %139, i64 1
  %144 = load double, double* %143, align 8, !tbaa !8
  %145 = fmul double %142, %144
  %146 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %139, i64 2
  %147 = load double, double* %146, align 8, !tbaa !8
  %148 = fmul double %142, %147
  %149 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %139, i64 3
  %150 = load double, double* %149, align 8, !tbaa !8
  %151 = fmul double %142, %150
  %152 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %139, i64 4
  %153 = load double, double* %152, align 8, !tbaa !8
  %154 = fmul double %142, %153
  %155 = add nsw i64 %139, -1
  %156 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %155, i64 0
  %157 = load double, double* %156, align 8, !tbaa !8
  %158 = fdiv double 1.000000e+00, %157
  %159 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %155, i64 1
  %160 = load double, double* %159, align 8, !tbaa !8
  %161 = fmul double %158, %160
  %162 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %155, i64 2
  %163 = load double, double* %162, align 8, !tbaa !8
  %164 = fmul double %158, %163
  %165 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %155, i64 3
  %166 = load double, double* %165, align 8, !tbaa !8
  %167 = fmul double %158, %166
  %168 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %134, i64 %136, i64 %155, i64 4
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = fmul double %158, %169
  %171 = fsub double %145, %161
  %172 = fmul double %171, 8.400000e+01
  %173 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 1
  store double %172, double* %173, align 8, !tbaa !8
  %174 = fsub double %148, %164
  %175 = fmul double %174, 6.300000e+01
  %176 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 2
  store double %175, double* %176, align 8, !tbaa !8
  %177 = fsub double %151, %167
  %178 = fmul double %177, 6.300000e+01
  %179 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %139, i64 3
  store double %178, double* %179, align 8, !tbaa !8
  %180 = fmul double %148, %148
  %181 = tail call double @llvm.fmuladd.f64(double %145, double %145, double %180)
  %182 = tail call double @llvm.fmuladd.f64(double %151, double %151, double %181)
  %183 = fmul double %164, %164
  %184 = tail call double @llvm.fmuladd.f64(double %161, double %161, double %183)
  %185 = tail call double @llvm.fmuladd.f64(double %167, double %167, double %184)
  %186 = fsub double %182, %185
  %187 = fmul double %161, %161
  %188 = fsub double -0.000000e+00, %187
  %189 = tail call double @llvm.fmuladd.f64(double %145, double %145, double %188)
  %190 = fmul double %189, 1.050000e+01
  %191 = tail call double @llvm.fmuladd.f64(double %186, double 0xC03E3D70A3D70A3B, double %190)
  %192 = fsub double %154, %170
  %193 = tail call double @llvm.fmuladd.f64(double %192, double 0x405EDEB851EB851E, double %191)
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
  %210 = phi i64 [ 1, %203 ], [ %219, %209 ]
  %211 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %205, i64 %207, i64 %210, i64 0
  %212 = load double, double* %211, align 8, !tbaa !8
  %213 = add nsw i64 %210, -1
  %214 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %213, i64 0
  %215 = load double, double* %214, align 8, !tbaa !8
  %216 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %210, i64 0
  %217 = load double, double* %216, align 8, !tbaa !8
  %218 = tail call double @llvm.fmuladd.f64(double %217, double -2.000000e+00, double %215)
  %219 = add nuw nsw i64 %210, 1
  %220 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %219, i64 0
  %221 = load double, double* %220, align 8, !tbaa !8
  %222 = fadd double %218, %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double 0x40A7418000000001, double %212)
  store double %223, double* %211, align 8, !tbaa !8
  %224 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %205, i64 %207, i64 %210, i64 1
  %225 = load double, double* %224, align 8, !tbaa !8
  %226 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %219, i64 1
  %227 = load double, double* %226, align 8, !tbaa !8
  %228 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 1
  %229 = load double, double* %228, align 8, !tbaa !8
  %230 = fsub double %227, %229
  %231 = tail call double @llvm.fmuladd.f64(double %230, double 0x4019333333333334, double %225)
  %232 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %213, i64 1
  %233 = load double, double* %232, align 8, !tbaa !8
  %234 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %210, i64 1
  %235 = load double, double* %234, align 8, !tbaa !8
  %236 = tail call double @llvm.fmuladd.f64(double %235, double -2.000000e+00, double %233)
  %237 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %219, i64 1
  %238 = load double, double* %237, align 8, !tbaa !8
  %239 = fadd double %236, %238
  %240 = tail call double @llvm.fmuladd.f64(double %239, double 0x40A7418000000001, double %231)
  store double %240, double* %224, align 8, !tbaa !8
  %241 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %205, i64 %207, i64 %210, i64 2
  %242 = load double, double* %241, align 8, !tbaa !8
  %243 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %219, i64 2
  %244 = load double, double* %243, align 8, !tbaa !8
  %245 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 2
  %246 = load double, double* %245, align 8, !tbaa !8
  %247 = fsub double %244, %246
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 0x4019333333333334, double %242)
  %249 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %213, i64 2
  %250 = load double, double* %249, align 8, !tbaa !8
  %251 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %210, i64 2
  %252 = load double, double* %251, align 8, !tbaa !8
  %253 = tail call double @llvm.fmuladd.f64(double %252, double -2.000000e+00, double %250)
  %254 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %219, i64 2
  %255 = load double, double* %254, align 8, !tbaa !8
  %256 = fadd double %253, %255
  %257 = tail call double @llvm.fmuladd.f64(double %256, double 0x40A7418000000001, double %248)
  store double %257, double* %241, align 8, !tbaa !8
  %258 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %205, i64 %207, i64 %210, i64 3
  %259 = load double, double* %258, align 8, !tbaa !8
  %260 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %219, i64 3
  %261 = load double, double* %260, align 8, !tbaa !8
  %262 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 3
  %263 = load double, double* %262, align 8, !tbaa !8
  %264 = fsub double %261, %263
  %265 = tail call double @llvm.fmuladd.f64(double %264, double 0x4019333333333334, double %259)
  %266 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %213, i64 3
  %267 = load double, double* %266, align 8, !tbaa !8
  %268 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %210, i64 3
  %269 = load double, double* %268, align 8, !tbaa !8
  %270 = tail call double @llvm.fmuladd.f64(double %269, double -2.000000e+00, double %267)
  %271 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %219, i64 3
  %272 = load double, double* %271, align 8, !tbaa !8
  %273 = fadd double %270, %272
  %274 = tail call double @llvm.fmuladd.f64(double %273, double 0x40A7418000000001, double %265)
  store double %274, double* %258, align 8, !tbaa !8
  %275 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %205, i64 %207, i64 %210, i64 4
  %276 = load double, double* %275, align 8, !tbaa !8
  %277 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %219, i64 4
  %278 = load double, double* %277, align 8, !tbaa !8
  %279 = getelementptr inbounds [5 x double], [5 x double]* %27, i64 %210, i64 4
  %280 = load double, double* %279, align 8, !tbaa !8
  %281 = fsub double %278, %280
  %282 = tail call double @llvm.fmuladd.f64(double %281, double 0x4019333333333334, double %276)
  %283 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %213, i64 4
  %284 = load double, double* %283, align 8, !tbaa !8
  %285 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %210, i64 4
  %286 = load double, double* %285, align 8, !tbaa !8
  %287 = tail call double @llvm.fmuladd.f64(double %286, double -2.000000e+00, double %284)
  %288 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %205, i64 %207, i64 %219, i64 4
  %289 = load double, double* %288, align 8, !tbaa !8
  %290 = fadd double %287, %289
  %291 = tail call double @llvm.fmuladd.f64(double %290, double 0x40A7418000000001, double %282)
  store double %291, double* %275, align 8, !tbaa !8
  %292 = icmp eq i64 %219, %208
  br i1 %292, label %293, label %209

; <label>:293:                                    ; preds = %209, %198
  %294 = phi i64 [ %202, %198 ], [ %207, %209 ]
  %295 = phi i64 [ %200, %198 ], [ %205, %209 ]
  %296 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #3
  %297 = tail call double @_Z3maxdd(double %296, double 1.000000e+00) #3
  %298 = fmul double %297, 2.500000e-01
  %299 = fsub double -0.000000e+00, %298
  %300 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 1, i64 0
  %301 = load double, double* %300, align 8, !tbaa !8
  %302 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 1, i64 0
  %303 = load double, double* %302, align 8, !tbaa !8
  %304 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 2, i64 0
  %305 = load double, double* %304, align 8, !tbaa !8
  %306 = fmul double %305, 4.000000e+00
  %307 = fsub double -0.000000e+00, %306
  %308 = tail call double @llvm.fmuladd.f64(double %303, double 5.000000e+00, double %307)
  %309 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 3, i64 0
  %310 = load double, double* %309, align 8, !tbaa !8
  %311 = fadd double %310, %308
  %312 = tail call double @llvm.fmuladd.f64(double %299, double %311, double %301)
  store double %312, double* %300, align 8, !tbaa !8
  %313 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 2, i64 0
  %314 = load double, double* %313, align 8, !tbaa !8
  %315 = load double, double* %302, align 8, !tbaa !8
  %316 = load double, double* %304, align 8, !tbaa !8
  %317 = fmul double %316, 6.000000e+00
  %318 = tail call double @llvm.fmuladd.f64(double %315, double -4.000000e+00, double %317)
  %319 = load double, double* %309, align 8, !tbaa !8
  %320 = tail call double @llvm.fmuladd.f64(double %319, double -4.000000e+00, double %318)
  %321 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 4, i64 0
  %322 = load double, double* %321, align 8, !tbaa !8
  %323 = fadd double %322, %320
  %324 = tail call double @llvm.fmuladd.f64(double %299, double %323, double %314)
  store double %324, double* %313, align 8, !tbaa !8
  %325 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 1, i64 1
  %326 = load double, double* %325, align 8, !tbaa !8
  %327 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 1, i64 1
  %328 = load double, double* %327, align 8, !tbaa !8
  %329 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 2, i64 1
  %330 = load double, double* %329, align 8, !tbaa !8
  %331 = fmul double %330, 4.000000e+00
  %332 = fsub double -0.000000e+00, %331
  %333 = tail call double @llvm.fmuladd.f64(double %328, double 5.000000e+00, double %332)
  %334 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 3, i64 1
  %335 = load double, double* %334, align 8, !tbaa !8
  %336 = fadd double %335, %333
  %337 = tail call double @llvm.fmuladd.f64(double %299, double %336, double %326)
  store double %337, double* %325, align 8, !tbaa !8
  %338 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 2, i64 1
  %339 = load double, double* %338, align 8, !tbaa !8
  %340 = load double, double* %327, align 8, !tbaa !8
  %341 = load double, double* %329, align 8, !tbaa !8
  %342 = fmul double %341, 6.000000e+00
  %343 = tail call double @llvm.fmuladd.f64(double %340, double -4.000000e+00, double %342)
  %344 = load double, double* %334, align 8, !tbaa !8
  %345 = tail call double @llvm.fmuladd.f64(double %344, double -4.000000e+00, double %343)
  %346 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 4, i64 1
  %347 = load double, double* %346, align 8, !tbaa !8
  %348 = fadd double %347, %345
  %349 = tail call double @llvm.fmuladd.f64(double %299, double %348, double %339)
  store double %349, double* %338, align 8, !tbaa !8
  %350 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 1, i64 2
  %351 = load double, double* %350, align 8, !tbaa !8
  %352 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 1, i64 2
  %353 = load double, double* %352, align 8, !tbaa !8
  %354 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 2, i64 2
  %355 = load double, double* %354, align 8, !tbaa !8
  %356 = fmul double %355, 4.000000e+00
  %357 = fsub double -0.000000e+00, %356
  %358 = tail call double @llvm.fmuladd.f64(double %353, double 5.000000e+00, double %357)
  %359 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 3, i64 2
  %360 = load double, double* %359, align 8, !tbaa !8
  %361 = fadd double %360, %358
  %362 = tail call double @llvm.fmuladd.f64(double %299, double %361, double %351)
  store double %362, double* %350, align 8, !tbaa !8
  %363 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 2, i64 2
  %364 = load double, double* %363, align 8, !tbaa !8
  %365 = load double, double* %352, align 8, !tbaa !8
  %366 = load double, double* %354, align 8, !tbaa !8
  %367 = fmul double %366, 6.000000e+00
  %368 = tail call double @llvm.fmuladd.f64(double %365, double -4.000000e+00, double %367)
  %369 = load double, double* %359, align 8, !tbaa !8
  %370 = tail call double @llvm.fmuladd.f64(double %369, double -4.000000e+00, double %368)
  %371 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 4, i64 2
  %372 = load double, double* %371, align 8, !tbaa !8
  %373 = fadd double %372, %370
  %374 = tail call double @llvm.fmuladd.f64(double %299, double %373, double %364)
  store double %374, double* %363, align 8, !tbaa !8
  %375 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 1, i64 3
  %376 = load double, double* %375, align 8, !tbaa !8
  %377 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 1, i64 3
  %378 = load double, double* %377, align 8, !tbaa !8
  %379 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 2, i64 3
  %380 = load double, double* %379, align 8, !tbaa !8
  %381 = fmul double %380, 4.000000e+00
  %382 = fsub double -0.000000e+00, %381
  %383 = tail call double @llvm.fmuladd.f64(double %378, double 5.000000e+00, double %382)
  %384 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 3, i64 3
  %385 = load double, double* %384, align 8, !tbaa !8
  %386 = fadd double %385, %383
  %387 = tail call double @llvm.fmuladd.f64(double %299, double %386, double %376)
  store double %387, double* %375, align 8, !tbaa !8
  %388 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 2, i64 3
  %389 = load double, double* %388, align 8, !tbaa !8
  %390 = load double, double* %377, align 8, !tbaa !8
  %391 = load double, double* %379, align 8, !tbaa !8
  %392 = fmul double %391, 6.000000e+00
  %393 = tail call double @llvm.fmuladd.f64(double %390, double -4.000000e+00, double %392)
  %394 = load double, double* %384, align 8, !tbaa !8
  %395 = tail call double @llvm.fmuladd.f64(double %394, double -4.000000e+00, double %393)
  %396 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 4, i64 3
  %397 = load double, double* %396, align 8, !tbaa !8
  %398 = fadd double %397, %395
  %399 = tail call double @llvm.fmuladd.f64(double %299, double %398, double %389)
  store double %399, double* %388, align 8, !tbaa !8
  %400 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 1, i64 4
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 1, i64 4
  %403 = load double, double* %402, align 8, !tbaa !8
  %404 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 2, i64 4
  %405 = load double, double* %404, align 8, !tbaa !8
  %406 = fmul double %405, 4.000000e+00
  %407 = fsub double -0.000000e+00, %406
  %408 = tail call double @llvm.fmuladd.f64(double %403, double 5.000000e+00, double %407)
  %409 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 3, i64 4
  %410 = load double, double* %409, align 8, !tbaa !8
  %411 = fadd double %410, %408
  %412 = tail call double @llvm.fmuladd.f64(double %299, double %411, double %401)
  store double %412, double* %400, align 8, !tbaa !8
  %413 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 2, i64 4
  %414 = load double, double* %413, align 8, !tbaa !8
  %415 = load double, double* %402, align 8, !tbaa !8
  %416 = load double, double* %404, align 8, !tbaa !8
  %417 = fmul double %416, 6.000000e+00
  %418 = tail call double @llvm.fmuladd.f64(double %415, double -4.000000e+00, double %417)
  %419 = load double, double* %409, align 8, !tbaa !8
  %420 = tail call double @llvm.fmuladd.f64(double %419, double -4.000000e+00, double %418)
  %421 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 4, i64 4
  %422 = load double, double* %421, align 8, !tbaa !8
  %423 = fadd double %422, %420
  %424 = tail call double @llvm.fmuladd.f64(double %299, double %423, double %414)
  store double %424, double* %413, align 8, !tbaa !8
  %425 = add nsw i32 %3, -3
  %426 = icmp sgt i32 %3, 6
  br i1 %426, label %427, label %521

; <label>:427:                                    ; preds = %293
  %428 = zext i32 %425 to i64
  br label %429

; <label>:429:                                    ; preds = %429, %427
  %430 = phi i64 [ 3, %427 ], [ %433, %429 ]
  %431 = add nsw i64 %430, -2
  %432 = add nsw i64 %430, -1
  %433 = add nuw nsw i64 %430, 1
  %434 = add nuw nsw i64 %430, 2
  %435 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %430, i64 0
  %436 = load double, double* %435, align 8, !tbaa !8
  %437 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %431, i64 0
  %438 = load double, double* %437, align 8, !tbaa !8
  %439 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %432, i64 0
  %440 = load double, double* %439, align 8, !tbaa !8
  %441 = tail call double @llvm.fmuladd.f64(double %440, double -4.000000e+00, double %438)
  %442 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %430, i64 0
  %443 = load double, double* %442, align 8, !tbaa !8
  %444 = tail call double @llvm.fmuladd.f64(double %443, double 6.000000e+00, double %441)
  %445 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %433, i64 0
  %446 = load double, double* %445, align 8, !tbaa !8
  %447 = tail call double @llvm.fmuladd.f64(double %446, double -4.000000e+00, double %444)
  %448 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %434, i64 0
  %449 = load double, double* %448, align 8, !tbaa !8
  %450 = fadd double %447, %449
  %451 = tail call double @llvm.fmuladd.f64(double %299, double %450, double %436)
  store double %451, double* %435, align 8, !tbaa !8
  %452 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %430, i64 1
  %453 = load double, double* %452, align 8, !tbaa !8
  %454 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %431, i64 1
  %455 = load double, double* %454, align 8, !tbaa !8
  %456 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %432, i64 1
  %457 = load double, double* %456, align 8, !tbaa !8
  %458 = tail call double @llvm.fmuladd.f64(double %457, double -4.000000e+00, double %455)
  %459 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %430, i64 1
  %460 = load double, double* %459, align 8, !tbaa !8
  %461 = tail call double @llvm.fmuladd.f64(double %460, double 6.000000e+00, double %458)
  %462 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %433, i64 1
  %463 = load double, double* %462, align 8, !tbaa !8
  %464 = tail call double @llvm.fmuladd.f64(double %463, double -4.000000e+00, double %461)
  %465 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %434, i64 1
  %466 = load double, double* %465, align 8, !tbaa !8
  %467 = fadd double %464, %466
  %468 = tail call double @llvm.fmuladd.f64(double %299, double %467, double %453)
  store double %468, double* %452, align 8, !tbaa !8
  %469 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %430, i64 2
  %470 = load double, double* %469, align 8, !tbaa !8
  %471 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %431, i64 2
  %472 = load double, double* %471, align 8, !tbaa !8
  %473 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %432, i64 2
  %474 = load double, double* %473, align 8, !tbaa !8
  %475 = tail call double @llvm.fmuladd.f64(double %474, double -4.000000e+00, double %472)
  %476 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %430, i64 2
  %477 = load double, double* %476, align 8, !tbaa !8
  %478 = tail call double @llvm.fmuladd.f64(double %477, double 6.000000e+00, double %475)
  %479 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %433, i64 2
  %480 = load double, double* %479, align 8, !tbaa !8
  %481 = tail call double @llvm.fmuladd.f64(double %480, double -4.000000e+00, double %478)
  %482 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %434, i64 2
  %483 = load double, double* %482, align 8, !tbaa !8
  %484 = fadd double %481, %483
  %485 = tail call double @llvm.fmuladd.f64(double %299, double %484, double %470)
  store double %485, double* %469, align 8, !tbaa !8
  %486 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %430, i64 3
  %487 = load double, double* %486, align 8, !tbaa !8
  %488 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %431, i64 3
  %489 = load double, double* %488, align 8, !tbaa !8
  %490 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %432, i64 3
  %491 = load double, double* %490, align 8, !tbaa !8
  %492 = tail call double @llvm.fmuladd.f64(double %491, double -4.000000e+00, double %489)
  %493 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %430, i64 3
  %494 = load double, double* %493, align 8, !tbaa !8
  %495 = tail call double @llvm.fmuladd.f64(double %494, double 6.000000e+00, double %492)
  %496 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %433, i64 3
  %497 = load double, double* %496, align 8, !tbaa !8
  %498 = tail call double @llvm.fmuladd.f64(double %497, double -4.000000e+00, double %495)
  %499 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %434, i64 3
  %500 = load double, double* %499, align 8, !tbaa !8
  %501 = fadd double %498, %500
  %502 = tail call double @llvm.fmuladd.f64(double %299, double %501, double %487)
  store double %502, double* %486, align 8, !tbaa !8
  %503 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %430, i64 4
  %504 = load double, double* %503, align 8, !tbaa !8
  %505 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %431, i64 4
  %506 = load double, double* %505, align 8, !tbaa !8
  %507 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %432, i64 4
  %508 = load double, double* %507, align 8, !tbaa !8
  %509 = tail call double @llvm.fmuladd.f64(double %508, double -4.000000e+00, double %506)
  %510 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %430, i64 4
  %511 = load double, double* %510, align 8, !tbaa !8
  %512 = tail call double @llvm.fmuladd.f64(double %511, double 6.000000e+00, double %509)
  %513 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %433, i64 4
  %514 = load double, double* %513, align 8, !tbaa !8
  %515 = tail call double @llvm.fmuladd.f64(double %514, double -4.000000e+00, double %512)
  %516 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %434, i64 4
  %517 = load double, double* %516, align 8, !tbaa !8
  %518 = fadd double %515, %517
  %519 = tail call double @llvm.fmuladd.f64(double %299, double %518, double %504)
  store double %519, double* %503, align 8, !tbaa !8
  %520 = icmp eq i64 %433, %428
  br i1 %520, label %521, label %429

; <label>:521:                                    ; preds = %429, %293
  %522 = sext i32 %425 to i64
  %523 = add nsw i32 %3, -5
  %524 = sext i32 %523 to i64
  %525 = add nsw i32 %3, -4
  %526 = sext i32 %525 to i64
  %527 = add nsw i32 %3, -2
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %522, i64 0
  %530 = load double, double* %529, align 8, !tbaa !8
  %531 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %524, i64 0
  %532 = load double, double* %531, align 8, !tbaa !8
  %533 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %526, i64 0
  %534 = load double, double* %533, align 8, !tbaa !8
  %535 = tail call double @llvm.fmuladd.f64(double %534, double -4.000000e+00, double %532)
  %536 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %522, i64 0
  %537 = load double, double* %536, align 8, !tbaa !8
  %538 = tail call double @llvm.fmuladd.f64(double %537, double 6.000000e+00, double %535)
  %539 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %528, i64 0
  %540 = load double, double* %539, align 8, !tbaa !8
  %541 = tail call double @llvm.fmuladd.f64(double %540, double -4.000000e+00, double %538)
  %542 = tail call double @llvm.fmuladd.f64(double %299, double %541, double %530)
  store double %542, double* %529, align 8, !tbaa !8
  %543 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %528, i64 0
  %544 = load double, double* %543, align 8, !tbaa !8
  %545 = load double, double* %533, align 8, !tbaa !8
  %546 = load double, double* %536, align 8, !tbaa !8
  %547 = tail call double @llvm.fmuladd.f64(double %546, double -4.000000e+00, double %545)
  %548 = load double, double* %539, align 8, !tbaa !8
  %549 = tail call double @llvm.fmuladd.f64(double %548, double 5.000000e+00, double %547)
  %550 = tail call double @llvm.fmuladd.f64(double %299, double %549, double %544)
  store double %550, double* %543, align 8, !tbaa !8
  %551 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %522, i64 1
  %552 = load double, double* %551, align 8, !tbaa !8
  %553 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %524, i64 1
  %554 = load double, double* %553, align 8, !tbaa !8
  %555 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %526, i64 1
  %556 = load double, double* %555, align 8, !tbaa !8
  %557 = tail call double @llvm.fmuladd.f64(double %556, double -4.000000e+00, double %554)
  %558 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %522, i64 1
  %559 = load double, double* %558, align 8, !tbaa !8
  %560 = tail call double @llvm.fmuladd.f64(double %559, double 6.000000e+00, double %557)
  %561 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %528, i64 1
  %562 = load double, double* %561, align 8, !tbaa !8
  %563 = tail call double @llvm.fmuladd.f64(double %562, double -4.000000e+00, double %560)
  %564 = tail call double @llvm.fmuladd.f64(double %299, double %563, double %552)
  store double %564, double* %551, align 8, !tbaa !8
  %565 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %528, i64 1
  %566 = load double, double* %565, align 8, !tbaa !8
  %567 = load double, double* %555, align 8, !tbaa !8
  %568 = load double, double* %558, align 8, !tbaa !8
  %569 = tail call double @llvm.fmuladd.f64(double %568, double -4.000000e+00, double %567)
  %570 = load double, double* %561, align 8, !tbaa !8
  %571 = tail call double @llvm.fmuladd.f64(double %570, double 5.000000e+00, double %569)
  %572 = tail call double @llvm.fmuladd.f64(double %299, double %571, double %566)
  store double %572, double* %565, align 8, !tbaa !8
  %573 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %522, i64 2
  %574 = load double, double* %573, align 8, !tbaa !8
  %575 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %524, i64 2
  %576 = load double, double* %575, align 8, !tbaa !8
  %577 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %526, i64 2
  %578 = load double, double* %577, align 8, !tbaa !8
  %579 = tail call double @llvm.fmuladd.f64(double %578, double -4.000000e+00, double %576)
  %580 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %522, i64 2
  %581 = load double, double* %580, align 8, !tbaa !8
  %582 = tail call double @llvm.fmuladd.f64(double %581, double 6.000000e+00, double %579)
  %583 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %528, i64 2
  %584 = load double, double* %583, align 8, !tbaa !8
  %585 = tail call double @llvm.fmuladd.f64(double %584, double -4.000000e+00, double %582)
  %586 = tail call double @llvm.fmuladd.f64(double %299, double %585, double %574)
  store double %586, double* %573, align 8, !tbaa !8
  %587 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %528, i64 2
  %588 = load double, double* %587, align 8, !tbaa !8
  %589 = load double, double* %577, align 8, !tbaa !8
  %590 = load double, double* %580, align 8, !tbaa !8
  %591 = tail call double @llvm.fmuladd.f64(double %590, double -4.000000e+00, double %589)
  %592 = load double, double* %583, align 8, !tbaa !8
  %593 = tail call double @llvm.fmuladd.f64(double %592, double 5.000000e+00, double %591)
  %594 = tail call double @llvm.fmuladd.f64(double %299, double %593, double %588)
  store double %594, double* %587, align 8, !tbaa !8
  %595 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %522, i64 3
  %596 = load double, double* %595, align 8, !tbaa !8
  %597 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %524, i64 3
  %598 = load double, double* %597, align 8, !tbaa !8
  %599 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %526, i64 3
  %600 = load double, double* %599, align 8, !tbaa !8
  %601 = tail call double @llvm.fmuladd.f64(double %600, double -4.000000e+00, double %598)
  %602 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %522, i64 3
  %603 = load double, double* %602, align 8, !tbaa !8
  %604 = tail call double @llvm.fmuladd.f64(double %603, double 6.000000e+00, double %601)
  %605 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %528, i64 3
  %606 = load double, double* %605, align 8, !tbaa !8
  %607 = tail call double @llvm.fmuladd.f64(double %606, double -4.000000e+00, double %604)
  %608 = tail call double @llvm.fmuladd.f64(double %299, double %607, double %596)
  store double %608, double* %595, align 8, !tbaa !8
  %609 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %528, i64 3
  %610 = load double, double* %609, align 8, !tbaa !8
  %611 = load double, double* %599, align 8, !tbaa !8
  %612 = load double, double* %602, align 8, !tbaa !8
  %613 = tail call double @llvm.fmuladd.f64(double %612, double -4.000000e+00, double %611)
  %614 = load double, double* %605, align 8, !tbaa !8
  %615 = tail call double @llvm.fmuladd.f64(double %614, double 5.000000e+00, double %613)
  %616 = tail call double @llvm.fmuladd.f64(double %299, double %615, double %610)
  store double %616, double* %609, align 8, !tbaa !8
  %617 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %522, i64 4
  %618 = load double, double* %617, align 8, !tbaa !8
  %619 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %524, i64 4
  %620 = load double, double* %619, align 8, !tbaa !8
  %621 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %526, i64 4
  %622 = load double, double* %621, align 8, !tbaa !8
  %623 = tail call double @llvm.fmuladd.f64(double %622, double -4.000000e+00, double %620)
  %624 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %522, i64 4
  %625 = load double, double* %624, align 8, !tbaa !8
  %626 = tail call double @llvm.fmuladd.f64(double %625, double 6.000000e+00, double %623)
  %627 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %19, i64 %295, i64 %294, i64 %528, i64 4
  %628 = load double, double* %627, align 8, !tbaa !8
  %629 = tail call double @llvm.fmuladd.f64(double %628, double -4.000000e+00, double %626)
  %630 = tail call double @llvm.fmuladd.f64(double %299, double %629, double %618)
  store double %630, double* %617, align 8, !tbaa !8
  %631 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %20, i64 %295, i64 %294, i64 %528, i64 4
  %632 = load double, double* %631, align 8, !tbaa !8
  %633 = load double, double* %621, align 8, !tbaa !8
  %634 = load double, double* %624, align 8, !tbaa !8
  %635 = tail call double @llvm.fmuladd.f64(double %634, double -4.000000e+00, double %633)
  %636 = load double, double* %627, align 8, !tbaa !8
  %637 = tail call double @llvm.fmuladd.f64(double %636, double 5.000000e+00, double %635)
  %638 = tail call double @llvm.fmuladd.f64(double %299, double %637, double %632)
  store double %638, double* %631, align 8, !tbaa !8
  br label %639

; <label>:639:                                    ; preds = %521, %6
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
