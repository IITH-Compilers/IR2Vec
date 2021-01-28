; ModuleID = 'rodinia-3.1-cfd-compute_flux.cl'
source_filename = "rodinia-3.1-cfd-compute_flux.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.FLOAT3 = type { float, float, float }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_flux(i32* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture, %struct.FLOAT3* nocapture readonly, %struct.FLOAT3* nocapture readonly, %struct.FLOAT3* nocapture readonly, %struct.FLOAT3* nocapture readonly, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = alloca %struct.FLOAT3, align 8
  %12 = alloca %struct.FLOAT3, align 4
  %13 = alloca %struct.FLOAT3, align 4
  %14 = alloca %struct.FLOAT3, align 4
  %15 = alloca %struct.FLOAT3, align 4
  %16 = alloca %struct.FLOAT3, align 8
  %17 = alloca %struct.FLOAT3, align 4
  %18 = alloca %struct.FLOAT3, align 4
  %19 = alloca %struct.FLOAT3, align 4
  %20 = alloca %struct.FLOAT3, align 4
  %21 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, %9
  br i1 %23, label %24, label %320

; <label>:24:                                     ; preds = %10
  %25 = shl i64 %21, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !8
  %29 = add nsw i32 %22, %9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %2, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !8
  %33 = insertelement <2 x float> undef, float %32, i32 0
  %34 = shl nsw i32 %9, 1
  %35 = add nsw i32 %34, %22
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %2, i64 %36
  %38 = load float, float* %37, align 4, !tbaa !8
  %39 = insertelement <2 x float> %33, float %38, i32 1
  %40 = mul nsw i32 %9, 3
  %41 = add nsw i32 %40, %22
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %2, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !8
  %45 = shl nsw i32 %9, 2
  %46 = add nsw i32 %45, %22
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %2, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !8
  %50 = bitcast %struct.FLOAT3* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %50) #6
  call void @compute_velocity(float %28, <2 x float> %39, float %44, %struct.FLOAT3* nonnull %11) #6
  %51 = bitcast %struct.FLOAT3* %11 to <2 x float>*
  %52 = load <2 x float>, <2 x float>* %51, align 8
  %53 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %11, i64 0, i32 2
  %54 = load float, float* %53, align 8
  %55 = call float @compute_speed_sqd(<2 x float> %52, float %54) #6
  %56 = call float @_Z4sqrtf(float %55) #5
  %57 = call float @compute_pressure(float %28, float %49, float %55) #6
  %58 = call float @compute_speed_of_sound(float %28, float %57) #6
  %59 = bitcast %struct.FLOAT3* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %59) #6
  %60 = bitcast %struct.FLOAT3* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %60) #6
  %61 = bitcast %struct.FLOAT3* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %61) #6
  %62 = bitcast %struct.FLOAT3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %62) #6
  %63 = load <2 x float>, <2 x float>* %51, align 8
  %64 = load float, float* %53, align 8
  call void @compute_flux_contribution(float %28, <2 x float> %39, float %44, float %49, float %57, <2 x float> %63, float %64, %struct.FLOAT3* nonnull %12, %struct.FLOAT3* nonnull %13, %struct.FLOAT3* nonnull %14, %struct.FLOAT3* nonnull %15) #6
  %65 = bitcast %struct.FLOAT3* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %65) #6
  %66 = bitcast %struct.FLOAT3* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %66) #6
  %67 = bitcast %struct.FLOAT3* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %67) #6
  %68 = bitcast %struct.FLOAT3* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %68) #6
  %69 = bitcast %struct.FLOAT3* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %69) #6
  %70 = bitcast %struct.FLOAT3* %16 to <2 x float>*
  %71 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %16, i64 0, i32 2
  %72 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %20, i64 0, i32 0
  %73 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %15, i64 0, i32 0
  %74 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %17, i64 0, i32 0
  %75 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %12, i64 0, i32 0
  %76 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %18, i64 0, i32 0
  %77 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %13, i64 0, i32 0
  %78 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %19, i64 0, i32 0
  %79 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %14, i64 0, i32 0
  %80 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %20, i64 0, i32 1
  %81 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %15, i64 0, i32 1
  %82 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %17, i64 0, i32 1
  %83 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %12, i64 0, i32 1
  %84 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %18, i64 0, i32 1
  %85 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %13, i64 0, i32 1
  %86 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %19, i64 0, i32 1
  %87 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %14, i64 0, i32 1
  %88 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %20, i64 0, i32 2
  %89 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %15, i64 0, i32 2
  %90 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %17, i64 0, i32 2
  %91 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %12, i64 0, i32 2
  %92 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %18, i64 0, i32 2
  %93 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %13, i64 0, i32 2
  %94 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %19, i64 0, i32 2
  %95 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %14, i64 0, i32 2
  %96 = getelementptr inbounds float, float* %3, i64 1
  %97 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %5, i64 0, i32 0
  %98 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %6, i64 0, i32 0
  %99 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %7, i64 0, i32 0
  %100 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %8, i64 0, i32 0
  %101 = getelementptr inbounds float, float* %3, i64 2
  %102 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %5, i64 0, i32 1
  %103 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %6, i64 0, i32 1
  %104 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %7, i64 0, i32 1
  %105 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %8, i64 0, i32 1
  %106 = getelementptr inbounds float, float* %3, i64 3
  %107 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %5, i64 0, i32 2
  %108 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %6, i64 0, i32 2
  %109 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %7, i64 0, i32 2
  %110 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %8, i64 0, i32 2
  %111 = sext i32 %9 to i64
  %112 = shl i64 %21, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds i32, i32* %0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !12
  %116 = getelementptr inbounds float, float* %1, i64 %113
  %117 = load float, float* %116, align 4, !tbaa !8
  %118 = shl nsw i64 %111, 2
  %119 = add nsw i64 %118, %113
  %120 = getelementptr inbounds float, float* %1, i64 %119
  %121 = load float, float* %120, align 4, !tbaa !8
  %122 = shl nsw i64 %111, 3
  %123 = add nsw i64 %122, %113
  %124 = getelementptr inbounds float, float* %1, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !8
  %126 = icmp sgt i32 %115, -1
  br i1 %126, label %127, label %234

; <label>:127:                                    ; preds = %24
  %128 = fmul float %121, %121
  %129 = call float @llvm.fmuladd.f32(float %117, float %117, float %128)
  %130 = call float @llvm.fmuladd.f32(float %125, float %125, float %129)
  %131 = call float @_Z4sqrtf(float %130) #5
  %132 = sext i32 %115 to i64
  %133 = getelementptr inbounds float, float* %2, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !8
  %135 = add nsw i32 %115, %9
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = load float, float* %137, align 4, !tbaa !8
  %139 = insertelement <2 x float> undef, float %138, i32 0
  %140 = add nsw i32 %115, %34
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %2, i64 %141
  %143 = load float, float* %142, align 4, !tbaa !8
  %144 = insertelement <2 x float> %139, float %143, i32 1
  %145 = add nsw i32 %115, %40
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %2, i64 %146
  %148 = load float, float* %147, align 4, !tbaa !8
  %149 = add nsw i32 %115, %45
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %2, i64 %150
  %152 = load float, float* %151, align 4, !tbaa !8
  call void @compute_velocity(float %134, <2 x float> %144, float %148, %struct.FLOAT3* nonnull %16) #6
  %153 = load <2 x float>, <2 x float>* %70, align 8
  %154 = load float, float* %71, align 8
  %155 = call float @compute_speed_sqd(<2 x float> %153, float %154) #6
  %156 = call float @compute_pressure(float %134, float %152, float %155) #6
  %157 = call float @compute_speed_of_sound(float %134, float %156) #6
  %158 = load <2 x float>, <2 x float>* %70, align 8
  %159 = load float, float* %71, align 8
  call void @compute_flux_contribution(float %134, <2 x float> %144, float %148, float %152, float %156, <2 x float> %158, float %159, %struct.FLOAT3* nonnull %17, %struct.FLOAT3* nonnull %18, %struct.FLOAT3* nonnull %19, %struct.FLOAT3* nonnull %20) #6
  %160 = fmul float %131, 0xBFC99999A0000000
  %161 = fmul float %160, 5.000000e-01
  %162 = call float @_Z4sqrtf(float %155) #5
  %163 = fadd float %56, %162
  %164 = fadd float %58, %163
  %165 = fadd float %157, %164
  %166 = fmul float %161, %165
  %167 = fsub float %28, %134
  %168 = call float @llvm.fmuladd.f32(float %166, float %167, float 0.000000e+00)
  %169 = fsub float %49, %152
  %170 = call float @llvm.fmuladd.f32(float %166, float %169, float 0.000000e+00)
  %171 = fsub float %32, %138
  %172 = call float @llvm.fmuladd.f32(float %166, float %171, float 0.000000e+00)
  %173 = fsub float %38, %143
  %174 = call float @llvm.fmuladd.f32(float %166, float %173, float 0.000000e+00)
  %175 = fsub float %44, %148
  %176 = call float @llvm.fmuladd.f32(float %166, float %175, float 0.000000e+00)
  %177 = fmul float %117, 5.000000e-01
  %178 = fadd float %32, %138
  %179 = call float @llvm.fmuladd.f32(float %177, float %178, float %168)
  %180 = load float, float* %72, align 4, !tbaa !14
  %181 = load float, float* %73, align 4, !tbaa !14
  %182 = fadd float %180, %181
  %183 = call float @llvm.fmuladd.f32(float %177, float %182, float %170)
  %184 = load float, float* %74, align 4, !tbaa !14
  %185 = load float, float* %75, align 4, !tbaa !14
  %186 = fadd float %184, %185
  %187 = call float @llvm.fmuladd.f32(float %177, float %186, float %172)
  %188 = load float, float* %76, align 4, !tbaa !14
  %189 = load float, float* %77, align 4, !tbaa !14
  %190 = fadd float %188, %189
  %191 = call float @llvm.fmuladd.f32(float %177, float %190, float %174)
  %192 = load float, float* %78, align 4, !tbaa !14
  %193 = load float, float* %79, align 4, !tbaa !14
  %194 = fadd float %192, %193
  %195 = call float @llvm.fmuladd.f32(float %177, float %194, float %176)
  %196 = fmul float %121, 5.000000e-01
  %197 = fadd float %38, %143
  %198 = call float @llvm.fmuladd.f32(float %196, float %197, float %179)
  %199 = load float, float* %80, align 4, !tbaa !16
  %200 = load float, float* %81, align 4, !tbaa !16
  %201 = fadd float %199, %200
  %202 = call float @llvm.fmuladd.f32(float %196, float %201, float %183)
  %203 = load float, float* %82, align 4, !tbaa !16
  %204 = load float, float* %83, align 4, !tbaa !16
  %205 = fadd float %203, %204
  %206 = call float @llvm.fmuladd.f32(float %196, float %205, float %187)
  %207 = load float, float* %84, align 4, !tbaa !16
  %208 = load float, float* %85, align 4, !tbaa !16
  %209 = fadd float %207, %208
  %210 = call float @llvm.fmuladd.f32(float %196, float %209, float %191)
  %211 = load float, float* %86, align 4, !tbaa !16
  %212 = load float, float* %87, align 4, !tbaa !16
  %213 = fadd float %211, %212
  %214 = call float @llvm.fmuladd.f32(float %196, float %213, float %195)
  %215 = fmul float %125, 5.000000e-01
  %216 = fadd float %44, %148
  %217 = call float @llvm.fmuladd.f32(float %215, float %216, float %198)
  %218 = load float, float* %88, align 4, !tbaa !17
  %219 = load float, float* %89, align 4, !tbaa !17
  %220 = fadd float %218, %219
  %221 = call float @llvm.fmuladd.f32(float %215, float %220, float %202)
  %222 = load float, float* %90, align 4, !tbaa !17
  %223 = load float, float* %91, align 4, !tbaa !17
  %224 = fadd float %222, %223
  %225 = call float @llvm.fmuladd.f32(float %215, float %224, float %206)
  %226 = load float, float* %92, align 4, !tbaa !17
  %227 = load float, float* %93, align 4, !tbaa !17
  %228 = fadd float %226, %227
  %229 = call float @llvm.fmuladd.f32(float %215, float %228, float %210)
  %230 = load float, float* %94, align 4, !tbaa !17
  %231 = load float, float* %95, align 4, !tbaa !17
  %232 = fadd float %230, %231
  %233 = call float @llvm.fmuladd.f32(float %215, float %232, float %214)
  br label %300

; <label>:234:                                    ; preds = %24
  switch i32 %115, label %300 [
    i32 -1, label %235
    i32 -2, label %239
  ]

; <label>:235:                                    ; preds = %234
  %236 = call float @llvm.fmuladd.f32(float %117, float %57, float 0.000000e+00)
  %237 = call float @llvm.fmuladd.f32(float %121, float %57, float 0.000000e+00)
  %238 = call float @llvm.fmuladd.f32(float %125, float %57, float 0.000000e+00)
  br label %300

; <label>:239:                                    ; preds = %234
  %240 = fmul float %117, 5.000000e-01
  %241 = load float, float* %96, align 4, !tbaa !8
  %242 = fadd float %32, %241
  %243 = call float @llvm.fmuladd.f32(float %240, float %242, float 0.000000e+00)
  %244 = load float, float* %97, align 4, !tbaa !14
  %245 = load float, float* %73, align 4, !tbaa !14
  %246 = fadd float %244, %245
  %247 = call float @llvm.fmuladd.f32(float %240, float %246, float 0.000000e+00)
  %248 = load float, float* %98, align 4, !tbaa !14
  %249 = load float, float* %75, align 4, !tbaa !14
  %250 = fadd float %248, %249
  %251 = call float @llvm.fmuladd.f32(float %240, float %250, float 0.000000e+00)
  %252 = load float, float* %99, align 4, !tbaa !14
  %253 = load float, float* %77, align 4, !tbaa !14
  %254 = fadd float %252, %253
  %255 = call float @llvm.fmuladd.f32(float %240, float %254, float 0.000000e+00)
  %256 = load float, float* %100, align 4, !tbaa !14
  %257 = load float, float* %79, align 4, !tbaa !14
  %258 = fadd float %256, %257
  %259 = call float @llvm.fmuladd.f32(float %240, float %258, float 0.000000e+00)
  %260 = fmul float %121, 5.000000e-01
  %261 = load float, float* %101, align 4, !tbaa !8
  %262 = fadd float %38, %261
  %263 = call float @llvm.fmuladd.f32(float %260, float %262, float %243)
  %264 = load float, float* %102, align 4, !tbaa !16
  %265 = load float, float* %81, align 4, !tbaa !16
  %266 = fadd float %264, %265
  %267 = call float @llvm.fmuladd.f32(float %260, float %266, float %247)
  %268 = load float, float* %103, align 4, !tbaa !16
  %269 = load float, float* %83, align 4, !tbaa !16
  %270 = fadd float %268, %269
  %271 = call float @llvm.fmuladd.f32(float %260, float %270, float %251)
  %272 = load float, float* %104, align 4, !tbaa !16
  %273 = load float, float* %85, align 4, !tbaa !16
  %274 = fadd float %272, %273
  %275 = call float @llvm.fmuladd.f32(float %260, float %274, float %255)
  %276 = load float, float* %105, align 4, !tbaa !16
  %277 = load float, float* %87, align 4, !tbaa !16
  %278 = fadd float %276, %277
  %279 = call float @llvm.fmuladd.f32(float %260, float %278, float %259)
  %280 = fmul float %125, 5.000000e-01
  %281 = load float, float* %106, align 4, !tbaa !8
  %282 = fadd float %44, %281
  %283 = call float @llvm.fmuladd.f32(float %280, float %282, float %263)
  %284 = load float, float* %107, align 4, !tbaa !17
  %285 = load float, float* %89, align 4, !tbaa !17
  %286 = fadd float %284, %285
  %287 = call float @llvm.fmuladd.f32(float %280, float %286, float %267)
  %288 = load float, float* %108, align 4, !tbaa !17
  %289 = load float, float* %91, align 4, !tbaa !17
  %290 = fadd float %288, %289
  %291 = call float @llvm.fmuladd.f32(float %280, float %290, float %271)
  %292 = load float, float* %109, align 4, !tbaa !17
  %293 = load float, float* %93, align 4, !tbaa !17
  %294 = fadd float %292, %293
  %295 = call float @llvm.fmuladd.f32(float %280, float %294, float %275)
  %296 = load float, float* %110, align 4, !tbaa !17
  %297 = load float, float* %95, align 4, !tbaa !17
  %298 = fadd float %296, %297
  %299 = call float @llvm.fmuladd.f32(float %280, float %298, float %279)
  br label %300

; <label>:300:                                    ; preds = %239, %235, %234, %127
  %301 = phi float [ %221, %127 ], [ 0.000000e+00, %234 ], [ 0.000000e+00, %235 ], [ %287, %239 ]
  %302 = phi float [ %225, %127 ], [ 0.000000e+00, %234 ], [ %236, %235 ], [ %291, %239 ]
  %303 = phi float [ %229, %127 ], [ 0.000000e+00, %234 ], [ %237, %235 ], [ %295, %239 ]
  %304 = phi float [ %233, %127 ], [ 0.000000e+00, %234 ], [ %238, %235 ], [ %299, %239 ]
  %305 = phi float [ %217, %127 ], [ 0.000000e+00, %234 ], [ 0.000000e+00, %235 ], [ %283, %239 ]
  %306 = add nsw i64 %113, %111
  %307 = getelementptr inbounds i32, i32* %0, i64 %306
  %308 = load i32, i32* %307, align 4, !tbaa !12
  %309 = getelementptr inbounds float, float* %1, i64 %306
  %310 = load float, float* %309, align 4, !tbaa !8
  %311 = mul nsw i64 %111, 5
  %312 = add nsw i64 %311, %113
  %313 = getelementptr inbounds float, float* %1, i64 %312
  %314 = load float, float* %313, align 4, !tbaa !8
  %315 = mul nsw i64 %111, 9
  %316 = add nsw i64 %315, %113
  %317 = getelementptr inbounds float, float* %1, i64 %316
  %318 = load float, float* %317, align 4, !tbaa !8
  %319 = icmp sgt i32 %308, -1
  br i1 %319, label %387, label %321

; <label>:320:                                    ; preds = %10, %882
  ret void

; <label>:321:                                    ; preds = %300
  switch i32 %308, label %494 [
    i32 -1, label %383
    i32 -2, label %322
  ]

; <label>:322:                                    ; preds = %321
  %323 = fmul float %310, 5.000000e-01
  %324 = load float, float* %96, align 4, !tbaa !8
  %325 = fadd float %32, %324
  %326 = call float @llvm.fmuladd.f32(float %323, float %325, float %305)
  %327 = load float, float* %97, align 4, !tbaa !14
  %328 = load float, float* %73, align 4, !tbaa !14
  %329 = fadd float %327, %328
  %330 = call float @llvm.fmuladd.f32(float %323, float %329, float %301)
  %331 = load float, float* %98, align 4, !tbaa !14
  %332 = load float, float* %75, align 4, !tbaa !14
  %333 = fadd float %331, %332
  %334 = call float @llvm.fmuladd.f32(float %323, float %333, float %302)
  %335 = load float, float* %99, align 4, !tbaa !14
  %336 = load float, float* %77, align 4, !tbaa !14
  %337 = fadd float %335, %336
  %338 = call float @llvm.fmuladd.f32(float %323, float %337, float %303)
  %339 = load float, float* %100, align 4, !tbaa !14
  %340 = load float, float* %79, align 4, !tbaa !14
  %341 = fadd float %339, %340
  %342 = call float @llvm.fmuladd.f32(float %323, float %341, float %304)
  %343 = fmul float %314, 5.000000e-01
  %344 = load float, float* %101, align 4, !tbaa !8
  %345 = fadd float %38, %344
  %346 = call float @llvm.fmuladd.f32(float %343, float %345, float %326)
  %347 = load float, float* %102, align 4, !tbaa !16
  %348 = load float, float* %81, align 4, !tbaa !16
  %349 = fadd float %347, %348
  %350 = call float @llvm.fmuladd.f32(float %343, float %349, float %330)
  %351 = load float, float* %103, align 4, !tbaa !16
  %352 = load float, float* %83, align 4, !tbaa !16
  %353 = fadd float %351, %352
  %354 = call float @llvm.fmuladd.f32(float %343, float %353, float %334)
  %355 = load float, float* %104, align 4, !tbaa !16
  %356 = load float, float* %85, align 4, !tbaa !16
  %357 = fadd float %355, %356
  %358 = call float @llvm.fmuladd.f32(float %343, float %357, float %338)
  %359 = load float, float* %105, align 4, !tbaa !16
  %360 = load float, float* %87, align 4, !tbaa !16
  %361 = fadd float %359, %360
  %362 = call float @llvm.fmuladd.f32(float %343, float %361, float %342)
  %363 = fmul float %318, 5.000000e-01
  %364 = load float, float* %106, align 4, !tbaa !8
  %365 = fadd float %44, %364
  %366 = call float @llvm.fmuladd.f32(float %363, float %365, float %346)
  %367 = load float, float* %107, align 4, !tbaa !17
  %368 = load float, float* %89, align 4, !tbaa !17
  %369 = fadd float %367, %368
  %370 = call float @llvm.fmuladd.f32(float %363, float %369, float %350)
  %371 = load float, float* %108, align 4, !tbaa !17
  %372 = load float, float* %91, align 4, !tbaa !17
  %373 = fadd float %371, %372
  %374 = call float @llvm.fmuladd.f32(float %363, float %373, float %354)
  %375 = load float, float* %109, align 4, !tbaa !17
  %376 = load float, float* %93, align 4, !tbaa !17
  %377 = fadd float %375, %376
  %378 = call float @llvm.fmuladd.f32(float %363, float %377, float %358)
  %379 = load float, float* %110, align 4, !tbaa !17
  %380 = load float, float* %95, align 4, !tbaa !17
  %381 = fadd float %379, %380
  %382 = call float @llvm.fmuladd.f32(float %363, float %381, float %362)
  br label %494

; <label>:383:                                    ; preds = %321
  %384 = call float @llvm.fmuladd.f32(float %310, float %57, float %302)
  %385 = call float @llvm.fmuladd.f32(float %314, float %57, float %303)
  %386 = call float @llvm.fmuladd.f32(float %318, float %57, float %304)
  br label %494

; <label>:387:                                    ; preds = %300
  %388 = fmul float %314, %314
  %389 = call float @llvm.fmuladd.f32(float %310, float %310, float %388)
  %390 = call float @llvm.fmuladd.f32(float %318, float %318, float %389)
  %391 = call float @_Z4sqrtf(float %390) #5
  %392 = sext i32 %308 to i64
  %393 = getelementptr inbounds float, float* %2, i64 %392
  %394 = load float, float* %393, align 4, !tbaa !8
  %395 = add nsw i32 %308, %9
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %2, i64 %396
  %398 = load float, float* %397, align 4, !tbaa !8
  %399 = insertelement <2 x float> undef, float %398, i32 0
  %400 = add nsw i32 %308, %34
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds float, float* %2, i64 %401
  %403 = load float, float* %402, align 4, !tbaa !8
  %404 = insertelement <2 x float> %399, float %403, i32 1
  %405 = add nsw i32 %308, %40
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %2, i64 %406
  %408 = load float, float* %407, align 4, !tbaa !8
  %409 = add nsw i32 %308, %45
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float, float* %2, i64 %410
  %412 = load float, float* %411, align 4, !tbaa !8
  call void @compute_velocity(float %394, <2 x float> %404, float %408, %struct.FLOAT3* nonnull %16) #6
  %413 = load <2 x float>, <2 x float>* %70, align 8
  %414 = load float, float* %71, align 8
  %415 = call float @compute_speed_sqd(<2 x float> %413, float %414) #6
  %416 = call float @compute_pressure(float %394, float %412, float %415) #6
  %417 = call float @compute_speed_of_sound(float %394, float %416) #6
  %418 = load <2 x float>, <2 x float>* %70, align 8
  %419 = load float, float* %71, align 8
  call void @compute_flux_contribution(float %394, <2 x float> %404, float %408, float %412, float %416, <2 x float> %418, float %419, %struct.FLOAT3* nonnull %17, %struct.FLOAT3* nonnull %18, %struct.FLOAT3* nonnull %19, %struct.FLOAT3* nonnull %20) #6
  %420 = fmul float %391, 0xBFC99999A0000000
  %421 = fmul float %420, 5.000000e-01
  %422 = call float @_Z4sqrtf(float %415) #5
  %423 = fadd float %56, %422
  %424 = fadd float %58, %423
  %425 = fadd float %417, %424
  %426 = fmul float %421, %425
  %427 = fsub float %28, %394
  %428 = call float @llvm.fmuladd.f32(float %426, float %427, float %305)
  %429 = fsub float %49, %412
  %430 = call float @llvm.fmuladd.f32(float %426, float %429, float %301)
  %431 = fsub float %32, %398
  %432 = call float @llvm.fmuladd.f32(float %426, float %431, float %302)
  %433 = fsub float %38, %403
  %434 = call float @llvm.fmuladd.f32(float %426, float %433, float %303)
  %435 = fsub float %44, %408
  %436 = call float @llvm.fmuladd.f32(float %426, float %435, float %304)
  %437 = fmul float %310, 5.000000e-01
  %438 = fadd float %32, %398
  %439 = call float @llvm.fmuladd.f32(float %437, float %438, float %428)
  %440 = load float, float* %72, align 4, !tbaa !14
  %441 = load float, float* %73, align 4, !tbaa !14
  %442 = fadd float %440, %441
  %443 = call float @llvm.fmuladd.f32(float %437, float %442, float %430)
  %444 = load float, float* %74, align 4, !tbaa !14
  %445 = load float, float* %75, align 4, !tbaa !14
  %446 = fadd float %444, %445
  %447 = call float @llvm.fmuladd.f32(float %437, float %446, float %432)
  %448 = load float, float* %76, align 4, !tbaa !14
  %449 = load float, float* %77, align 4, !tbaa !14
  %450 = fadd float %448, %449
  %451 = call float @llvm.fmuladd.f32(float %437, float %450, float %434)
  %452 = load float, float* %78, align 4, !tbaa !14
  %453 = load float, float* %79, align 4, !tbaa !14
  %454 = fadd float %452, %453
  %455 = call float @llvm.fmuladd.f32(float %437, float %454, float %436)
  %456 = fmul float %314, 5.000000e-01
  %457 = fadd float %38, %403
  %458 = call float @llvm.fmuladd.f32(float %456, float %457, float %439)
  %459 = load float, float* %80, align 4, !tbaa !16
  %460 = load float, float* %81, align 4, !tbaa !16
  %461 = fadd float %459, %460
  %462 = call float @llvm.fmuladd.f32(float %456, float %461, float %443)
  %463 = load float, float* %82, align 4, !tbaa !16
  %464 = load float, float* %83, align 4, !tbaa !16
  %465 = fadd float %463, %464
  %466 = call float @llvm.fmuladd.f32(float %456, float %465, float %447)
  %467 = load float, float* %84, align 4, !tbaa !16
  %468 = load float, float* %85, align 4, !tbaa !16
  %469 = fadd float %467, %468
  %470 = call float @llvm.fmuladd.f32(float %456, float %469, float %451)
  %471 = load float, float* %86, align 4, !tbaa !16
  %472 = load float, float* %87, align 4, !tbaa !16
  %473 = fadd float %471, %472
  %474 = call float @llvm.fmuladd.f32(float %456, float %473, float %455)
  %475 = fmul float %318, 5.000000e-01
  %476 = fadd float %44, %408
  %477 = call float @llvm.fmuladd.f32(float %475, float %476, float %458)
  %478 = load float, float* %88, align 4, !tbaa !17
  %479 = load float, float* %89, align 4, !tbaa !17
  %480 = fadd float %478, %479
  %481 = call float @llvm.fmuladd.f32(float %475, float %480, float %462)
  %482 = load float, float* %90, align 4, !tbaa !17
  %483 = load float, float* %91, align 4, !tbaa !17
  %484 = fadd float %482, %483
  %485 = call float @llvm.fmuladd.f32(float %475, float %484, float %466)
  %486 = load float, float* %92, align 4, !tbaa !17
  %487 = load float, float* %93, align 4, !tbaa !17
  %488 = fadd float %486, %487
  %489 = call float @llvm.fmuladd.f32(float %475, float %488, float %470)
  %490 = load float, float* %94, align 4, !tbaa !17
  %491 = load float, float* %95, align 4, !tbaa !17
  %492 = fadd float %490, %491
  %493 = call float @llvm.fmuladd.f32(float %475, float %492, float %474)
  br label %494

; <label>:494:                                    ; preds = %387, %383, %322, %321
  %495 = phi float [ %481, %387 ], [ %301, %321 ], [ %301, %383 ], [ %370, %322 ]
  %496 = phi float [ %485, %387 ], [ %302, %321 ], [ %384, %383 ], [ %374, %322 ]
  %497 = phi float [ %489, %387 ], [ %303, %321 ], [ %385, %383 ], [ %378, %322 ]
  %498 = phi float [ %493, %387 ], [ %304, %321 ], [ %386, %383 ], [ %382, %322 ]
  %499 = phi float [ %477, %387 ], [ %305, %321 ], [ %305, %383 ], [ %366, %322 ]
  %500 = shl nsw i64 %111, 1
  %501 = add nsw i64 %500, %113
  %502 = getelementptr inbounds i32, i32* %0, i64 %501
  %503 = load i32, i32* %502, align 4, !tbaa !12
  %504 = getelementptr inbounds float, float* %1, i64 %501
  %505 = load float, float* %504, align 4, !tbaa !8
  %506 = mul nsw i64 %111, 6
  %507 = add nsw i64 %506, %113
  %508 = getelementptr inbounds float, float* %1, i64 %507
  %509 = load float, float* %508, align 4, !tbaa !8
  %510 = mul nsw i64 %111, 10
  %511 = add nsw i64 %510, %113
  %512 = getelementptr inbounds float, float* %1, i64 %511
  %513 = load float, float* %512, align 4, !tbaa !8
  %514 = icmp sgt i32 %503, -1
  br i1 %514, label %581, label %515

; <label>:515:                                    ; preds = %494
  switch i32 %503, label %688 [
    i32 -1, label %577
    i32 -2, label %516
  ]

; <label>:516:                                    ; preds = %515
  %517 = fmul float %505, 5.000000e-01
  %518 = load float, float* %96, align 4, !tbaa !8
  %519 = fadd float %32, %518
  %520 = call float @llvm.fmuladd.f32(float %517, float %519, float %499)
  %521 = load float, float* %97, align 4, !tbaa !14
  %522 = load float, float* %73, align 4, !tbaa !14
  %523 = fadd float %521, %522
  %524 = call float @llvm.fmuladd.f32(float %517, float %523, float %495)
  %525 = load float, float* %98, align 4, !tbaa !14
  %526 = load float, float* %75, align 4, !tbaa !14
  %527 = fadd float %525, %526
  %528 = call float @llvm.fmuladd.f32(float %517, float %527, float %496)
  %529 = load float, float* %99, align 4, !tbaa !14
  %530 = load float, float* %77, align 4, !tbaa !14
  %531 = fadd float %529, %530
  %532 = call float @llvm.fmuladd.f32(float %517, float %531, float %497)
  %533 = load float, float* %100, align 4, !tbaa !14
  %534 = load float, float* %79, align 4, !tbaa !14
  %535 = fadd float %533, %534
  %536 = call float @llvm.fmuladd.f32(float %517, float %535, float %498)
  %537 = fmul float %509, 5.000000e-01
  %538 = load float, float* %101, align 4, !tbaa !8
  %539 = fadd float %38, %538
  %540 = call float @llvm.fmuladd.f32(float %537, float %539, float %520)
  %541 = load float, float* %102, align 4, !tbaa !16
  %542 = load float, float* %81, align 4, !tbaa !16
  %543 = fadd float %541, %542
  %544 = call float @llvm.fmuladd.f32(float %537, float %543, float %524)
  %545 = load float, float* %103, align 4, !tbaa !16
  %546 = load float, float* %83, align 4, !tbaa !16
  %547 = fadd float %545, %546
  %548 = call float @llvm.fmuladd.f32(float %537, float %547, float %528)
  %549 = load float, float* %104, align 4, !tbaa !16
  %550 = load float, float* %85, align 4, !tbaa !16
  %551 = fadd float %549, %550
  %552 = call float @llvm.fmuladd.f32(float %537, float %551, float %532)
  %553 = load float, float* %105, align 4, !tbaa !16
  %554 = load float, float* %87, align 4, !tbaa !16
  %555 = fadd float %553, %554
  %556 = call float @llvm.fmuladd.f32(float %537, float %555, float %536)
  %557 = fmul float %513, 5.000000e-01
  %558 = load float, float* %106, align 4, !tbaa !8
  %559 = fadd float %44, %558
  %560 = call float @llvm.fmuladd.f32(float %557, float %559, float %540)
  %561 = load float, float* %107, align 4, !tbaa !17
  %562 = load float, float* %89, align 4, !tbaa !17
  %563 = fadd float %561, %562
  %564 = call float @llvm.fmuladd.f32(float %557, float %563, float %544)
  %565 = load float, float* %108, align 4, !tbaa !17
  %566 = load float, float* %91, align 4, !tbaa !17
  %567 = fadd float %565, %566
  %568 = call float @llvm.fmuladd.f32(float %557, float %567, float %548)
  %569 = load float, float* %109, align 4, !tbaa !17
  %570 = load float, float* %93, align 4, !tbaa !17
  %571 = fadd float %569, %570
  %572 = call float @llvm.fmuladd.f32(float %557, float %571, float %552)
  %573 = load float, float* %110, align 4, !tbaa !17
  %574 = load float, float* %95, align 4, !tbaa !17
  %575 = fadd float %573, %574
  %576 = call float @llvm.fmuladd.f32(float %557, float %575, float %556)
  br label %688

; <label>:577:                                    ; preds = %515
  %578 = call float @llvm.fmuladd.f32(float %505, float %57, float %496)
  %579 = call float @llvm.fmuladd.f32(float %509, float %57, float %497)
  %580 = call float @llvm.fmuladd.f32(float %513, float %57, float %498)
  br label %688

; <label>:581:                                    ; preds = %494
  %582 = fmul float %509, %509
  %583 = call float @llvm.fmuladd.f32(float %505, float %505, float %582)
  %584 = call float @llvm.fmuladd.f32(float %513, float %513, float %583)
  %585 = call float @_Z4sqrtf(float %584) #5
  %586 = sext i32 %503 to i64
  %587 = getelementptr inbounds float, float* %2, i64 %586
  %588 = load float, float* %587, align 4, !tbaa !8
  %589 = add nsw i32 %503, %9
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds float, float* %2, i64 %590
  %592 = load float, float* %591, align 4, !tbaa !8
  %593 = insertelement <2 x float> undef, float %592, i32 0
  %594 = add nsw i32 %503, %34
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds float, float* %2, i64 %595
  %597 = load float, float* %596, align 4, !tbaa !8
  %598 = insertelement <2 x float> %593, float %597, i32 1
  %599 = add nsw i32 %503, %40
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds float, float* %2, i64 %600
  %602 = load float, float* %601, align 4, !tbaa !8
  %603 = add nsw i32 %503, %45
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds float, float* %2, i64 %604
  %606 = load float, float* %605, align 4, !tbaa !8
  call void @compute_velocity(float %588, <2 x float> %598, float %602, %struct.FLOAT3* nonnull %16) #6
  %607 = load <2 x float>, <2 x float>* %70, align 8
  %608 = load float, float* %71, align 8
  %609 = call float @compute_speed_sqd(<2 x float> %607, float %608) #6
  %610 = call float @compute_pressure(float %588, float %606, float %609) #6
  %611 = call float @compute_speed_of_sound(float %588, float %610) #6
  %612 = load <2 x float>, <2 x float>* %70, align 8
  %613 = load float, float* %71, align 8
  call void @compute_flux_contribution(float %588, <2 x float> %598, float %602, float %606, float %610, <2 x float> %612, float %613, %struct.FLOAT3* nonnull %17, %struct.FLOAT3* nonnull %18, %struct.FLOAT3* nonnull %19, %struct.FLOAT3* nonnull %20) #6
  %614 = fmul float %585, 0xBFC99999A0000000
  %615 = fmul float %614, 5.000000e-01
  %616 = call float @_Z4sqrtf(float %609) #5
  %617 = fadd float %56, %616
  %618 = fadd float %58, %617
  %619 = fadd float %611, %618
  %620 = fmul float %615, %619
  %621 = fsub float %28, %588
  %622 = call float @llvm.fmuladd.f32(float %620, float %621, float %499)
  %623 = fsub float %49, %606
  %624 = call float @llvm.fmuladd.f32(float %620, float %623, float %495)
  %625 = fsub float %32, %592
  %626 = call float @llvm.fmuladd.f32(float %620, float %625, float %496)
  %627 = fsub float %38, %597
  %628 = call float @llvm.fmuladd.f32(float %620, float %627, float %497)
  %629 = fsub float %44, %602
  %630 = call float @llvm.fmuladd.f32(float %620, float %629, float %498)
  %631 = fmul float %505, 5.000000e-01
  %632 = fadd float %32, %592
  %633 = call float @llvm.fmuladd.f32(float %631, float %632, float %622)
  %634 = load float, float* %72, align 4, !tbaa !14
  %635 = load float, float* %73, align 4, !tbaa !14
  %636 = fadd float %634, %635
  %637 = call float @llvm.fmuladd.f32(float %631, float %636, float %624)
  %638 = load float, float* %74, align 4, !tbaa !14
  %639 = load float, float* %75, align 4, !tbaa !14
  %640 = fadd float %638, %639
  %641 = call float @llvm.fmuladd.f32(float %631, float %640, float %626)
  %642 = load float, float* %76, align 4, !tbaa !14
  %643 = load float, float* %77, align 4, !tbaa !14
  %644 = fadd float %642, %643
  %645 = call float @llvm.fmuladd.f32(float %631, float %644, float %628)
  %646 = load float, float* %78, align 4, !tbaa !14
  %647 = load float, float* %79, align 4, !tbaa !14
  %648 = fadd float %646, %647
  %649 = call float @llvm.fmuladd.f32(float %631, float %648, float %630)
  %650 = fmul float %509, 5.000000e-01
  %651 = fadd float %38, %597
  %652 = call float @llvm.fmuladd.f32(float %650, float %651, float %633)
  %653 = load float, float* %80, align 4, !tbaa !16
  %654 = load float, float* %81, align 4, !tbaa !16
  %655 = fadd float %653, %654
  %656 = call float @llvm.fmuladd.f32(float %650, float %655, float %637)
  %657 = load float, float* %82, align 4, !tbaa !16
  %658 = load float, float* %83, align 4, !tbaa !16
  %659 = fadd float %657, %658
  %660 = call float @llvm.fmuladd.f32(float %650, float %659, float %641)
  %661 = load float, float* %84, align 4, !tbaa !16
  %662 = load float, float* %85, align 4, !tbaa !16
  %663 = fadd float %661, %662
  %664 = call float @llvm.fmuladd.f32(float %650, float %663, float %645)
  %665 = load float, float* %86, align 4, !tbaa !16
  %666 = load float, float* %87, align 4, !tbaa !16
  %667 = fadd float %665, %666
  %668 = call float @llvm.fmuladd.f32(float %650, float %667, float %649)
  %669 = fmul float %513, 5.000000e-01
  %670 = fadd float %44, %602
  %671 = call float @llvm.fmuladd.f32(float %669, float %670, float %652)
  %672 = load float, float* %88, align 4, !tbaa !17
  %673 = load float, float* %89, align 4, !tbaa !17
  %674 = fadd float %672, %673
  %675 = call float @llvm.fmuladd.f32(float %669, float %674, float %656)
  %676 = load float, float* %90, align 4, !tbaa !17
  %677 = load float, float* %91, align 4, !tbaa !17
  %678 = fadd float %676, %677
  %679 = call float @llvm.fmuladd.f32(float %669, float %678, float %660)
  %680 = load float, float* %92, align 4, !tbaa !17
  %681 = load float, float* %93, align 4, !tbaa !17
  %682 = fadd float %680, %681
  %683 = call float @llvm.fmuladd.f32(float %669, float %682, float %664)
  %684 = load float, float* %94, align 4, !tbaa !17
  %685 = load float, float* %95, align 4, !tbaa !17
  %686 = fadd float %684, %685
  %687 = call float @llvm.fmuladd.f32(float %669, float %686, float %668)
  br label %688

; <label>:688:                                    ; preds = %581, %577, %516, %515
  %689 = phi float [ %675, %581 ], [ %495, %515 ], [ %495, %577 ], [ %564, %516 ]
  %690 = phi float [ %679, %581 ], [ %496, %515 ], [ %578, %577 ], [ %568, %516 ]
  %691 = phi float [ %683, %581 ], [ %497, %515 ], [ %579, %577 ], [ %572, %516 ]
  %692 = phi float [ %687, %581 ], [ %498, %515 ], [ %580, %577 ], [ %576, %516 ]
  %693 = phi float [ %671, %581 ], [ %499, %515 ], [ %499, %577 ], [ %560, %516 ]
  %694 = mul nsw i64 %111, 3
  %695 = add nsw i64 %694, %113
  %696 = getelementptr inbounds i32, i32* %0, i64 %695
  %697 = load i32, i32* %696, align 4, !tbaa !12
  %698 = getelementptr inbounds float, float* %1, i64 %695
  %699 = load float, float* %698, align 4, !tbaa !8
  %700 = mul nsw i64 %111, 7
  %701 = add nsw i64 %700, %113
  %702 = getelementptr inbounds float, float* %1, i64 %701
  %703 = load float, float* %702, align 4, !tbaa !8
  %704 = mul nsw i64 %111, 11
  %705 = add nsw i64 %704, %113
  %706 = getelementptr inbounds float, float* %1, i64 %705
  %707 = load float, float* %706, align 4, !tbaa !8
  %708 = icmp sgt i32 %697, -1
  br i1 %708, label %775, label %709

; <label>:709:                                    ; preds = %688
  switch i32 %697, label %882 [
    i32 -1, label %771
    i32 -2, label %710
  ]

; <label>:710:                                    ; preds = %709
  %711 = fmul float %699, 5.000000e-01
  %712 = load float, float* %96, align 4, !tbaa !8
  %713 = fadd float %32, %712
  %714 = call float @llvm.fmuladd.f32(float %711, float %713, float %693)
  %715 = load float, float* %97, align 4, !tbaa !14
  %716 = load float, float* %73, align 4, !tbaa !14
  %717 = fadd float %715, %716
  %718 = call float @llvm.fmuladd.f32(float %711, float %717, float %689)
  %719 = load float, float* %98, align 4, !tbaa !14
  %720 = load float, float* %75, align 4, !tbaa !14
  %721 = fadd float %719, %720
  %722 = call float @llvm.fmuladd.f32(float %711, float %721, float %690)
  %723 = load float, float* %99, align 4, !tbaa !14
  %724 = load float, float* %77, align 4, !tbaa !14
  %725 = fadd float %723, %724
  %726 = call float @llvm.fmuladd.f32(float %711, float %725, float %691)
  %727 = load float, float* %100, align 4, !tbaa !14
  %728 = load float, float* %79, align 4, !tbaa !14
  %729 = fadd float %727, %728
  %730 = call float @llvm.fmuladd.f32(float %711, float %729, float %692)
  %731 = fmul float %703, 5.000000e-01
  %732 = load float, float* %101, align 4, !tbaa !8
  %733 = fadd float %38, %732
  %734 = call float @llvm.fmuladd.f32(float %731, float %733, float %714)
  %735 = load float, float* %102, align 4, !tbaa !16
  %736 = load float, float* %81, align 4, !tbaa !16
  %737 = fadd float %735, %736
  %738 = call float @llvm.fmuladd.f32(float %731, float %737, float %718)
  %739 = load float, float* %103, align 4, !tbaa !16
  %740 = load float, float* %83, align 4, !tbaa !16
  %741 = fadd float %739, %740
  %742 = call float @llvm.fmuladd.f32(float %731, float %741, float %722)
  %743 = load float, float* %104, align 4, !tbaa !16
  %744 = load float, float* %85, align 4, !tbaa !16
  %745 = fadd float %743, %744
  %746 = call float @llvm.fmuladd.f32(float %731, float %745, float %726)
  %747 = load float, float* %105, align 4, !tbaa !16
  %748 = load float, float* %87, align 4, !tbaa !16
  %749 = fadd float %747, %748
  %750 = call float @llvm.fmuladd.f32(float %731, float %749, float %730)
  %751 = fmul float %707, 5.000000e-01
  %752 = load float, float* %106, align 4, !tbaa !8
  %753 = fadd float %44, %752
  %754 = call float @llvm.fmuladd.f32(float %751, float %753, float %734)
  %755 = load float, float* %107, align 4, !tbaa !17
  %756 = load float, float* %89, align 4, !tbaa !17
  %757 = fadd float %755, %756
  %758 = call float @llvm.fmuladd.f32(float %751, float %757, float %738)
  %759 = load float, float* %108, align 4, !tbaa !17
  %760 = load float, float* %91, align 4, !tbaa !17
  %761 = fadd float %759, %760
  %762 = call float @llvm.fmuladd.f32(float %751, float %761, float %742)
  %763 = load float, float* %109, align 4, !tbaa !17
  %764 = load float, float* %93, align 4, !tbaa !17
  %765 = fadd float %763, %764
  %766 = call float @llvm.fmuladd.f32(float %751, float %765, float %746)
  %767 = load float, float* %110, align 4, !tbaa !17
  %768 = load float, float* %95, align 4, !tbaa !17
  %769 = fadd float %767, %768
  %770 = call float @llvm.fmuladd.f32(float %751, float %769, float %750)
  br label %882

; <label>:771:                                    ; preds = %709
  %772 = call float @llvm.fmuladd.f32(float %699, float %57, float %690)
  %773 = call float @llvm.fmuladd.f32(float %703, float %57, float %691)
  %774 = call float @llvm.fmuladd.f32(float %707, float %57, float %692)
  br label %882

; <label>:775:                                    ; preds = %688
  %776 = fmul float %703, %703
  %777 = call float @llvm.fmuladd.f32(float %699, float %699, float %776)
  %778 = call float @llvm.fmuladd.f32(float %707, float %707, float %777)
  %779 = call float @_Z4sqrtf(float %778) #5
  %780 = sext i32 %697 to i64
  %781 = getelementptr inbounds float, float* %2, i64 %780
  %782 = load float, float* %781, align 4, !tbaa !8
  %783 = add nsw i32 %697, %9
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds float, float* %2, i64 %784
  %786 = load float, float* %785, align 4, !tbaa !8
  %787 = insertelement <2 x float> undef, float %786, i32 0
  %788 = add nsw i32 %697, %34
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds float, float* %2, i64 %789
  %791 = load float, float* %790, align 4, !tbaa !8
  %792 = insertelement <2 x float> %787, float %791, i32 1
  %793 = add nsw i32 %697, %40
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds float, float* %2, i64 %794
  %796 = load float, float* %795, align 4, !tbaa !8
  %797 = add nsw i32 %697, %45
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds float, float* %2, i64 %798
  %800 = load float, float* %799, align 4, !tbaa !8
  call void @compute_velocity(float %782, <2 x float> %792, float %796, %struct.FLOAT3* nonnull %16) #6
  %801 = load <2 x float>, <2 x float>* %70, align 8
  %802 = load float, float* %71, align 8
  %803 = call float @compute_speed_sqd(<2 x float> %801, float %802) #6
  %804 = call float @compute_pressure(float %782, float %800, float %803) #6
  %805 = call float @compute_speed_of_sound(float %782, float %804) #6
  %806 = load <2 x float>, <2 x float>* %70, align 8
  %807 = load float, float* %71, align 8
  call void @compute_flux_contribution(float %782, <2 x float> %792, float %796, float %800, float %804, <2 x float> %806, float %807, %struct.FLOAT3* nonnull %17, %struct.FLOAT3* nonnull %18, %struct.FLOAT3* nonnull %19, %struct.FLOAT3* nonnull %20) #6
  %808 = fmul float %779, 0xBFC99999A0000000
  %809 = fmul float %808, 5.000000e-01
  %810 = call float @_Z4sqrtf(float %803) #5
  %811 = fadd float %56, %810
  %812 = fadd float %58, %811
  %813 = fadd float %805, %812
  %814 = fmul float %809, %813
  %815 = fsub float %28, %782
  %816 = call float @llvm.fmuladd.f32(float %814, float %815, float %693)
  %817 = fsub float %49, %800
  %818 = call float @llvm.fmuladd.f32(float %814, float %817, float %689)
  %819 = fsub float %32, %786
  %820 = call float @llvm.fmuladd.f32(float %814, float %819, float %690)
  %821 = fsub float %38, %791
  %822 = call float @llvm.fmuladd.f32(float %814, float %821, float %691)
  %823 = fsub float %44, %796
  %824 = call float @llvm.fmuladd.f32(float %814, float %823, float %692)
  %825 = fmul float %699, 5.000000e-01
  %826 = fadd float %32, %786
  %827 = call float @llvm.fmuladd.f32(float %825, float %826, float %816)
  %828 = load float, float* %72, align 4, !tbaa !14
  %829 = load float, float* %73, align 4, !tbaa !14
  %830 = fadd float %828, %829
  %831 = call float @llvm.fmuladd.f32(float %825, float %830, float %818)
  %832 = load float, float* %74, align 4, !tbaa !14
  %833 = load float, float* %75, align 4, !tbaa !14
  %834 = fadd float %832, %833
  %835 = call float @llvm.fmuladd.f32(float %825, float %834, float %820)
  %836 = load float, float* %76, align 4, !tbaa !14
  %837 = load float, float* %77, align 4, !tbaa !14
  %838 = fadd float %836, %837
  %839 = call float @llvm.fmuladd.f32(float %825, float %838, float %822)
  %840 = load float, float* %78, align 4, !tbaa !14
  %841 = load float, float* %79, align 4, !tbaa !14
  %842 = fadd float %840, %841
  %843 = call float @llvm.fmuladd.f32(float %825, float %842, float %824)
  %844 = fmul float %703, 5.000000e-01
  %845 = fadd float %38, %791
  %846 = call float @llvm.fmuladd.f32(float %844, float %845, float %827)
  %847 = load float, float* %80, align 4, !tbaa !16
  %848 = load float, float* %81, align 4, !tbaa !16
  %849 = fadd float %847, %848
  %850 = call float @llvm.fmuladd.f32(float %844, float %849, float %831)
  %851 = load float, float* %82, align 4, !tbaa !16
  %852 = load float, float* %83, align 4, !tbaa !16
  %853 = fadd float %851, %852
  %854 = call float @llvm.fmuladd.f32(float %844, float %853, float %835)
  %855 = load float, float* %84, align 4, !tbaa !16
  %856 = load float, float* %85, align 4, !tbaa !16
  %857 = fadd float %855, %856
  %858 = call float @llvm.fmuladd.f32(float %844, float %857, float %839)
  %859 = load float, float* %86, align 4, !tbaa !16
  %860 = load float, float* %87, align 4, !tbaa !16
  %861 = fadd float %859, %860
  %862 = call float @llvm.fmuladd.f32(float %844, float %861, float %843)
  %863 = fmul float %707, 5.000000e-01
  %864 = fadd float %44, %796
  %865 = call float @llvm.fmuladd.f32(float %863, float %864, float %846)
  %866 = load float, float* %88, align 4, !tbaa !17
  %867 = load float, float* %89, align 4, !tbaa !17
  %868 = fadd float %866, %867
  %869 = call float @llvm.fmuladd.f32(float %863, float %868, float %850)
  %870 = load float, float* %90, align 4, !tbaa !17
  %871 = load float, float* %91, align 4, !tbaa !17
  %872 = fadd float %870, %871
  %873 = call float @llvm.fmuladd.f32(float %863, float %872, float %854)
  %874 = load float, float* %92, align 4, !tbaa !17
  %875 = load float, float* %93, align 4, !tbaa !17
  %876 = fadd float %874, %875
  %877 = call float @llvm.fmuladd.f32(float %863, float %876, float %858)
  %878 = load float, float* %94, align 4, !tbaa !17
  %879 = load float, float* %95, align 4, !tbaa !17
  %880 = fadd float %878, %879
  %881 = call float @llvm.fmuladd.f32(float %863, float %880, float %862)
  br label %882

; <label>:882:                                    ; preds = %775, %771, %710, %709
  %883 = phi float [ %869, %775 ], [ %689, %709 ], [ %689, %771 ], [ %758, %710 ]
  %884 = phi float [ %873, %775 ], [ %690, %709 ], [ %772, %771 ], [ %762, %710 ]
  %885 = phi float [ %877, %775 ], [ %691, %709 ], [ %773, %771 ], [ %766, %710 ]
  %886 = phi float [ %881, %775 ], [ %692, %709 ], [ %774, %771 ], [ %770, %710 ]
  %887 = phi float [ %865, %775 ], [ %693, %709 ], [ %693, %771 ], [ %754, %710 ]
  %888 = getelementptr inbounds float, float* %4, i64 %26
  store float %887, float* %888, align 4, !tbaa !8
  %889 = getelementptr inbounds float, float* %4, i64 %30
  store float %884, float* %889, align 4, !tbaa !8
  %890 = getelementptr inbounds float, float* %4, i64 %36
  store float %885, float* %890, align 4, !tbaa !8
  %891 = getelementptr inbounds float, float* %4, i64 %42
  store float %886, float* %891, align 4, !tbaa !8
  %892 = getelementptr inbounds float, float* %4, i64 %47
  store float %883, float* %892, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %69) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %68) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %67) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %66) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %65) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %62) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %61) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %60) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %59) #6
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %50) #6
  br label %320
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @compute_velocity(float, <2 x float>, float, %struct.FLOAT3*) local_unnamed_addr #3

declare float @compute_speed_sqd(<2 x float>, float) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #2

declare float @compute_pressure(float, float, float) local_unnamed_addr #3

declare float @compute_speed_of_sound(float, float) local_unnamed_addr #3

declare void @compute_flux_contribution(float, <2 x float>, float, float, float, <2 x float>, float, %struct.FLOAT3*, %struct.FLOAT3*, %struct.FLOAT3*, %struct.FLOAT3*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"float*", !"float*", !"float*", !"float*", !"FLOAT3*", !"FLOAT3*", !"FLOAT3*", !"FLOAT3*", !"int"}
!7 = !{!"", !"", !"", !"const", !"", !"const", !"const", !"const", !"const", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!16 = !{!15, !9, i64 4}
!17 = !{!15, !9, i64 8}
