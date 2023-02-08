; ModuleID = 'rodinia-3.1-leukocyte-IMGVF_kernel.cl'
source_filename = "rodinia-3.1-leukocyte-IMGVF_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@IMGVF_kernel.IMGVF = internal unnamed_addr global [3321 x float] undef, align 16
@IMGVF_kernel.buffer = internal unnamed_addr global [256 x float] undef, align 16
@IMGVF_kernel.cell_converged = internal unnamed_addr global i32 undef, align 4

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @IMGVF_kernel(float* nocapture, float* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly, float, float, float, i32, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i32, i32* %2, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %0, i64 %16
  %18 = getelementptr inbounds float, float* %1, i64 %16
  %19 = getelementptr inbounds i32, i32* %3, i64 %13
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = getelementptr inbounds i32, i32* %4, i64 %13
  %22 = load i32, i32* %21, align 4, !tbaa !8
  %23 = mul nsw i32 %22, %20
  %24 = add nsw i32 %23, 255
  %25 = sdiv i32 %24, 256
  %26 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %27 = trunc i64 %26 to i32
  %28 = icmp sgt i32 %23, 0
  br i1 %28, label %29, label %49

; <label>:29:                                     ; preds = %10
  br label %30

; <label>:30:                                     ; preds = %29, %46
  %31 = phi i32 [ %47, %46 ], [ 0, %29 ]
  %32 = shl nsw i32 %31, 8
  %33 = add nsw i32 %32, %27
  %34 = sdiv i32 %33, %22
  %35 = icmp slt i32 %34, %20
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %30
  %37 = srem i32 %33, %22
  %38 = mul nsw i32 %34, %22
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %17, i64 %40
  %42 = bitcast float* %41 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !12
  %44 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %40
  %45 = bitcast float* %44 to i32*
  store i32 %43, i32* %45, align 4, !tbaa !12
  br label %46

; <label>:46:                                     ; preds = %36, %30
  %47 = add nuw nsw i32 %31, 1
  %48 = icmp slt i32 %47, %25
  br i1 %48, label %30, label %49

; <label>:49:                                     ; preds = %46, %10
  %50 = phi i32 [ undef, %10 ], [ %34, %46 ]
  tail call void @_Z7barrierj(i32 1) #6
  %51 = icmp eq i32 %27, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  store i32 0, i32* @IMGVF_kernel.cell_converged, align 4, !tbaa !8
  br label %53

; <label>:53:                                     ; preds = %52, %49
  tail call void @_Z7barrierj(i32 1) #6
  %54 = sitofp i32 %22 to float
  %55 = fdiv float 1.000000e+00, %54, !fpmath !14
  %56 = srem i32 256, %22
  %57 = fdiv float 1.000000e+00, %7, !fpmath !14
  %58 = load i32, i32* @IMGVF_kernel.cell_converged, align 4, !tbaa !8
  %59 = icmp eq i32 %58, 0
  %60 = icmp sgt i32 %8, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %294

; <label>:62:                                     ; preds = %53
  %63 = srem i32 %27, %22
  %64 = sub nsw i32 %63, %56
  %65 = shl i64 %26, 32
  %66 = ashr exact i64 %65, 32
  %67 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %66
  %68 = icmp sgt i32 %27, 255
  %69 = add i64 %65, -1099511627776
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %70
  %72 = sitofp i32 %23 to float
  %73 = add nsw i32 %20, -1
  %74 = add nsw i32 %22, -1
  %75 = fsub float -0.000000e+00, %5
  %76 = fsub float %5, %6
  %77 = fadd float %5, %6
  %78 = fsub float %75, %6
  %79 = fsub float %6, %5
  %80 = bitcast float* %67 to i32*
  %81 = add nsw i32 %25, -1
  %82 = icmp slt i32 %27, 128
  %83 = shl i64 %26, 32
  %84 = add i64 %83, 549755813888
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %85
  %87 = icmp slt i32 %27, 64
  %88 = shl i64 %26, 32
  %89 = add i64 %88, 274877906944
  %90 = ashr exact i64 %89, 32
  %91 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %90
  %92 = icmp slt i32 %27, 32
  %93 = shl i64 %26, 32
  %94 = add i64 %93, 137438953472
  %95 = ashr exact i64 %94, 32
  %96 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %95
  %97 = icmp slt i32 %27, 16
  %98 = shl i64 %26, 32
  %99 = add i64 %98, 68719476736
  %100 = ashr exact i64 %99, 32
  %101 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %100
  %102 = icmp slt i32 %27, 8
  %103 = shl i64 %26, 32
  %104 = add i64 %103, 34359738368
  %105 = ashr exact i64 %104, 32
  %106 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %105
  %107 = icmp slt i32 %27, 4
  %108 = shl i64 %26, 32
  %109 = add i64 %108, 17179869184
  %110 = ashr exact i64 %109, 32
  %111 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %110
  %112 = icmp slt i32 %27, 2
  %113 = shl i64 %26, 32
  %114 = add i64 %113, 8589934592
  %115 = ashr exact i64 %114, 32
  %116 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %115
  %117 = icmp slt i32 %27, 1
  %118 = shl i64 %26, 32
  %119 = add i64 %118, 4294967296
  %120 = ashr exact i64 %119, 32
  %121 = getelementptr inbounds [256 x float], [256 x float]* @IMGVF_kernel.buffer, i64 0, i64 %120
  br label %122

; <label>:122:                                    ; preds = %62, %288
  %123 = phi i32 [ %50, %62 ], [ %272, %288 ]
  %124 = phi i32 [ 0, %62 ], [ %289, %288 ]
  br i1 %28, label %125, label %270

; <label>:125:                                    ; preds = %122
  br label %126

; <label>:126:                                    ; preds = %125, %264
  %127 = phi i32 [ %268, %264 ], [ 0, %125 ]
  %128 = phi i32 [ %135, %264 ], [ %123, %125 ]
  %129 = phi i32 [ %139, %264 ], [ %64, %125 ]
  %130 = phi float [ %267, %264 ], [ 0.000000e+00, %125 ]
  %131 = shl i32 %127, 8
  %132 = add nsw i32 %131, %27
  %133 = sitofp i32 %132 to float
  %134 = fmul float %55, %133
  %135 = fptosi float %134 to i32
  %136 = add nsw i32 %129, %56
  %137 = icmp slt i32 %136, %22
  %138 = select i1 %137, i32 0, i32 %22
  %139 = sub nsw i32 %136, %138
  %140 = icmp sgt i32 %20, %135
  br i1 %140, label %141, label %241

; <label>:141:                                    ; preds = %126
  %142 = icmp eq i32 %135, 0
  %143 = add nsw i32 %135, -1
  %144 = select i1 %142, i32 0, i32 %143
  %145 = icmp eq i32 %73, %135
  %146 = add nsw i32 %135, 1
  %147 = select i1 %145, i32 %73, i32 %146
  %148 = icmp eq i32 %139, 0
  %149 = add nsw i32 %139, -1
  %150 = select i1 %148, i32 0, i32 %149
  %151 = icmp eq i32 %139, %74
  %152 = add nsw i32 %139, 1
  %153 = select i1 %151, i32 %74, i32 %152
  %154 = mul nsw i32 %22, %135
  %155 = add nsw i32 %154, %139
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %156
  %158 = load float, float* %157, align 4, !tbaa !12
  %159 = mul nsw i32 %144, %22
  %160 = add nsw i32 %159, %139
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %161
  %163 = load float, float* %162, align 4, !tbaa !12
  %164 = fsub float %163, %158
  %165 = mul nsw i32 %147, %22
  %166 = add nsw i32 %165, %139
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %167
  %169 = load float, float* %168, align 4, !tbaa !12
  %170 = fsub float %169, %158
  %171 = add nsw i32 %154, %150
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %172
  %174 = load float, float* %173, align 4, !tbaa !12
  %175 = fsub float %174, %158
  %176 = add nsw i32 %154, %153
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %177
  %179 = load float, float* %178, align 4, !tbaa !12
  %180 = fsub float %179, %158
  %181 = add nsw i32 %159, %153
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !12
  %185 = fsub float %184, %158
  %186 = add nsw i32 %165, %153
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !12
  %190 = fsub float %189, %158
  %191 = add nsw i32 %159, %150
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %192
  %194 = load float, float* %193, align 4, !tbaa !12
  %195 = fsub float %194, %158
  %196 = add nsw i32 %165, %150
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !12
  %200 = fsub float %199, %158
  %201 = fmul float %164, %6
  %202 = fmul float %57, %201
  %203 = fsub float -0.000000e+00, %202
  %204 = tail call float @heaviside(float %203) #7
  %205 = fmul float %170, %6
  %206 = fmul float %57, %205
  %207 = tail call float @heaviside(float %206) #7
  %208 = fmul float %175, %75
  %209 = fmul float %57, %208
  %210 = tail call float @heaviside(float %209) #7
  %211 = fmul float %180, %5
  %212 = fmul float %57, %211
  %213 = tail call float @heaviside(float %212) #7
  %214 = fmul float %76, %185
  %215 = fmul float %57, %214
  %216 = tail call float @heaviside(float %215) #7
  %217 = fmul float %77, %190
  %218 = fmul float %57, %217
  %219 = tail call float @heaviside(float %218) #7
  %220 = fmul float %78, %195
  %221 = fmul float %57, %220
  %222 = tail call float @heaviside(float %221) #7
  %223 = fmul float %79, %200
  %224 = fmul float %57, %223
  %225 = tail call float @heaviside(float %224) #7
  %226 = fmul float %170, %207
  %227 = tail call float @llvm.fmuladd.f32(float %204, float %164, float %226)
  %228 = tail call float @llvm.fmuladd.f32(float %210, float %175, float %227)
  %229 = tail call float @llvm.fmuladd.f32(float %213, float %180, float %228)
  %230 = tail call float @llvm.fmuladd.f32(float %216, float %185, float %229)
  %231 = tail call float @llvm.fmuladd.f32(float %219, float %190, float %230)
  %232 = tail call float @llvm.fmuladd.f32(float %222, float %195, float %231)
  %233 = tail call float @llvm.fmuladd.f32(float %225, float %200, float %232)
  %234 = tail call float @llvm.fmuladd.f32(float %233, float 0x3FB99999A0000000, float %158)
  %235 = getelementptr inbounds float, float* %18, i64 %156
  %236 = load float, float* %235, align 4, !tbaa !12
  %237 = fmul float %236, 0x3FC99999A0000000
  %238 = fsub float %234, %236
  %239 = fsub float -0.000000e+00, %237
  %240 = tail call float @llvm.fmuladd.f32(float %239, float %238, float %234)
  br label %241

; <label>:241:                                    ; preds = %141, %126
  %242 = phi float [ %158, %141 ], [ 0.000000e+00, %126 ]
  %243 = phi float [ %240, %141 ], [ 0.000000e+00, %126 ]
  %244 = icmp ne i32 %127, 0
  %245 = icmp slt i32 %128, %20
  %246 = and i1 %245, %244
  br i1 %246, label %247, label %254

; <label>:247:                                    ; preds = %241
  %248 = load i32, i32* %80, align 4, !tbaa !12
  %249 = mul nsw i32 %128, %22
  %250 = add nsw i32 %249, %129
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %251
  %253 = bitcast float* %252 to i32*
  store i32 %248, i32* %253, align 4, !tbaa !12
  br label %254

; <label>:254:                                    ; preds = %247, %241
  %255 = icmp slt i32 %127, %81
  br i1 %255, label %262, label %256

; <label>:256:                                    ; preds = %254
  br i1 %140, label %257, label %264

; <label>:257:                                    ; preds = %256
  %258 = mul nsw i32 %22, %135
  %259 = add nsw i32 %258, %139
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %260
  br label %262

; <label>:262:                                    ; preds = %254, %257
  %263 = phi float* [ %261, %257 ], [ %67, %254 ]
  store float %243, float* %263, align 4, !tbaa !12
  br label %264

; <label>:264:                                    ; preds = %262, %256
  %265 = fsub float %243, %242
  %266 = tail call float @_Z4fabsf(float %265) #5
  %267 = fadd float %130, %266
  tail call void @_Z7barrierj(i32 1) #6
  %268 = add nuw nsw i32 %127, 1
  %269 = icmp slt i32 %268, %25
  br i1 %269, label %126, label %270

; <label>:270:                                    ; preds = %264, %122
  %271 = phi float [ 0.000000e+00, %122 ], [ %267, %264 ]
  %272 = phi i32 [ %123, %122 ], [ %135, %264 ]
  store float %271, float* %67, align 4, !tbaa !12
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %68, label %273, label %277

; <label>:273:                                    ; preds = %270
  %274 = load float, float* %67, align 4, !tbaa !12
  %275 = load float, float* %71, align 4, !tbaa !12
  %276 = fadd float %274, %275
  store float %276, float* %71, align 4, !tbaa !12
  br label %277

; <label>:277:                                    ; preds = %273, %270
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %82, label %278, label %282

; <label>:278:                                    ; preds = %277
  %279 = load float, float* %86, align 4, !tbaa !12
  %280 = load float, float* %67, align 4, !tbaa !12
  %281 = fadd float %279, %280
  store float %281, float* %67, align 4, !tbaa !12
  br label %282

; <label>:282:                                    ; preds = %278, %277
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %87, label %316, label %320

; <label>:283:                                    ; preds = %350
  %284 = load float, float* %67, align 4, !tbaa !12
  %285 = fdiv float %284, %72, !fpmath !14
  %286 = fcmp olt float %285, %9
  br i1 %286, label %287, label %288

; <label>:287:                                    ; preds = %283
  store i32 1, i32* @IMGVF_kernel.cell_converged, align 4, !tbaa !8
  br label %288

; <label>:288:                                    ; preds = %283, %287, %350
  tail call void @_Z7barrierj(i32 1) #6
  %289 = add nuw nsw i32 %124, 1
  %290 = load i32, i32* @IMGVF_kernel.cell_converged, align 4, !tbaa !8
  %291 = icmp eq i32 %290, 0
  %292 = icmp slt i32 %289, %8
  %293 = and i1 %292, %291
  br i1 %293, label %122, label %294

; <label>:294:                                    ; preds = %288, %53
  br i1 %28, label %295, label %315

; <label>:295:                                    ; preds = %294
  br label %296

; <label>:296:                                    ; preds = %295, %312
  %297 = phi i32 [ %313, %312 ], [ 0, %295 ]
  %298 = shl nsw i32 %297, 8
  %299 = add nsw i32 %298, %27
  %300 = sdiv i32 %299, %22
  %301 = icmp slt i32 %300, %20
  br i1 %301, label %302, label %312

; <label>:302:                                    ; preds = %296
  %303 = srem i32 %299, %22
  %304 = mul nsw i32 %300, %22
  %305 = add nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [3321 x float], [3321 x float]* @IMGVF_kernel.IMGVF, i64 0, i64 %306
  %308 = bitcast float* %307 to i32*
  %309 = load i32, i32* %308, align 4, !tbaa !12
  %310 = getelementptr inbounds float, float* %17, i64 %306
  %311 = bitcast float* %310 to i32*
  store i32 %309, i32* %311, align 4, !tbaa !12
  br label %312

; <label>:312:                                    ; preds = %302, %296
  %313 = add nuw nsw i32 %297, 1
  %314 = icmp slt i32 %313, %25
  br i1 %314, label %296, label %315

; <label>:315:                                    ; preds = %312, %294
  ret void

; <label>:316:                                    ; preds = %282
  %317 = load float, float* %91, align 4, !tbaa !12
  %318 = load float, float* %67, align 4, !tbaa !12
  %319 = fadd float %317, %318
  store float %319, float* %67, align 4, !tbaa !12
  br label %320

; <label>:320:                                    ; preds = %316, %282
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %92, label %321, label %325

; <label>:321:                                    ; preds = %320
  %322 = load float, float* %96, align 4, !tbaa !12
  %323 = load float, float* %67, align 4, !tbaa !12
  %324 = fadd float %322, %323
  store float %324, float* %67, align 4, !tbaa !12
  br label %325

; <label>:325:                                    ; preds = %321, %320
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %97, label %326, label %330

; <label>:326:                                    ; preds = %325
  %327 = load float, float* %101, align 4, !tbaa !12
  %328 = load float, float* %67, align 4, !tbaa !12
  %329 = fadd float %327, %328
  store float %329, float* %67, align 4, !tbaa !12
  br label %330

; <label>:330:                                    ; preds = %326, %325
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %102, label %331, label %335

; <label>:331:                                    ; preds = %330
  %332 = load float, float* %106, align 4, !tbaa !12
  %333 = load float, float* %67, align 4, !tbaa !12
  %334 = fadd float %332, %333
  store float %334, float* %67, align 4, !tbaa !12
  br label %335

; <label>:335:                                    ; preds = %331, %330
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %107, label %336, label %340

; <label>:336:                                    ; preds = %335
  %337 = load float, float* %111, align 4, !tbaa !12
  %338 = load float, float* %67, align 4, !tbaa !12
  %339 = fadd float %337, %338
  store float %339, float* %67, align 4, !tbaa !12
  br label %340

; <label>:340:                                    ; preds = %336, %335
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %112, label %341, label %345

; <label>:341:                                    ; preds = %340
  %342 = load float, float* %116, align 4, !tbaa !12
  %343 = load float, float* %67, align 4, !tbaa !12
  %344 = fadd float %342, %343
  store float %344, float* %67, align 4, !tbaa !12
  br label %345

; <label>:345:                                    ; preds = %341, %340
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %117, label %346, label %350

; <label>:346:                                    ; preds = %345
  %347 = load float, float* %121, align 4, !tbaa !12
  %348 = load float, float* %67, align 4, !tbaa !12
  %349 = fadd float %347, %348
  store float %349, float* %67, align 4, !tbaa !12
  br label %350

; <label>:350:                                    ; preds = %346, %345
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %51, label %283, label %288
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

declare float @heaviside(float) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind readnone
declare float @_Z4fabsf(float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind readnone }
attributes #6 = { convergent nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int*", !"int*", !"int*", !"float", !"float", !"float", !"int", !"float"}
!7 = !{!"", !"", !"const", !"const", !"const", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
!14 = !{float 2.500000e+00}
