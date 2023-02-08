; ModuleID = 'rodinia-3.1-lud-lud_perimeter.cl'
source_filename = "rodinia-3.1-lud-lud_perimeter.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @lud_perimeter(float* nocapture, float* nocapture, float* nocapture, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %12, label %75

; <label>:12:                                     ; preds = %6
  %13 = mul nsw i32 %5, %4
  %14 = add nsw i32 %13, %5
  %15 = shl i64 %9, 32
  %16 = ashr exact i64 %15, 32
  %17 = sext i32 %14 to i64
  %18 = sext i32 %4 to i64
  br label %19

; <label>:19:                                     ; preds = %19, %12
  %20 = phi i64 [ %17, %12 ], [ %40, %19 ]
  %21 = phi i64 [ 0, %12 ], [ %41, %19 ]
  %22 = add nsw i64 %20, %16
  %23 = getelementptr inbounds float, float* %0, i64 %22
  %24 = bitcast float* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !8
  %26 = shl i64 %21, 6
  %27 = add nsw i64 %26, %16
  %28 = getelementptr inbounds float, float* %1, i64 %27
  %29 = bitcast float* %28 to i32*
  store i32 %25, i32* %29, align 4, !tbaa !8
  %30 = add nsw i64 %20, %18
  %31 = add nsw i64 %30, %16
  %32 = getelementptr inbounds float, float* %0, i64 %31
  %33 = bitcast float* %32 to i32*
  %34 = load i32, i32* %33, align 4, !tbaa !8
  %35 = shl i64 %21, 6
  %36 = or i64 %35, 64
  %37 = add nsw i64 %36, %16
  %38 = getelementptr inbounds float, float* %1, i64 %37
  %39 = bitcast float* %38 to i32*
  store i32 %34, i32* %39, align 4, !tbaa !8
  %40 = add nsw i64 %30, %18
  %41 = add nsw i64 %21, 2
  %42 = icmp eq i64 %41, 32
  br i1 %42, label %43, label %19

; <label>:43:                                     ; preds = %19
  %44 = shl i32 %8, 6
  %45 = add i32 %44, 64
  %46 = add i32 %45, %10
  br label %47

; <label>:47:                                     ; preds = %47, %43
  %48 = phi i64 [ %17, %43 ], [ %72, %47 ]
  %49 = phi i64 [ 0, %43 ], [ %73, %47 ]
  %50 = trunc i64 %48 to i32
  %51 = add i32 %46, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %0, i64 %52
  %54 = bitcast float* %53 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !8
  %56 = shl i64 %49, 6
  %57 = add nsw i64 %56, %16
  %58 = getelementptr inbounds float, float* %2, i64 %57
  %59 = bitcast float* %58 to i32*
  store i32 %55, i32* %59, align 4, !tbaa !8
  %60 = add nsw i64 %48, %18
  %61 = trunc i64 %60 to i32
  %62 = add i32 %46, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %0, i64 %63
  %65 = bitcast float* %64 to i32*
  %66 = load i32, i32* %65, align 4, !tbaa !8
  %67 = shl i64 %49, 6
  %68 = or i64 %67, 64
  %69 = add nsw i64 %68, %16
  %70 = getelementptr inbounds float, float* %2, i64 %69
  %71 = bitcast float* %70 to i32*
  store i32 %66, i32* %71, align 4, !tbaa !8
  %72 = add nsw i64 %60, %18
  %73 = add nsw i64 %49, 2
  %74 = icmp eq i64 %73, 64
  br i1 %74, label %139, label %47

; <label>:75:                                     ; preds = %6
  %76 = add nsw i32 %5, 32
  %77 = mul nsw i32 %76, %4
  %78 = add nsw i32 %77, %5
  %79 = shl i64 %9, 32
  %80 = add i64 %79, -274877906944
  %81 = ashr exact i64 %80, 32
  %82 = sext i32 %78 to i64
  %83 = sext i32 %4 to i64
  br label %84

; <label>:84:                                     ; preds = %84, %75
  %85 = phi i64 [ %82, %75 ], [ %105, %84 ]
  %86 = phi i64 [ 32, %75 ], [ %106, %84 ]
  %87 = add nsw i64 %85, %81
  %88 = getelementptr inbounds float, float* %0, i64 %87
  %89 = bitcast float* %88 to i32*
  %90 = load i32, i32* %89, align 4, !tbaa !8
  %91 = shl i64 %86, 6
  %92 = add nsw i64 %91, %81
  %93 = getelementptr inbounds float, float* %1, i64 %92
  %94 = bitcast float* %93 to i32*
  store i32 %90, i32* %94, align 4, !tbaa !8
  %95 = add nsw i64 %85, %83
  %96 = add nsw i64 %95, %81
  %97 = getelementptr inbounds float, float* %0, i64 %96
  %98 = bitcast float* %97 to i32*
  %99 = load i32, i32* %98, align 4, !tbaa !8
  %100 = shl i64 %86, 6
  %101 = or i64 %100, 64
  %102 = add nsw i64 %101, %81
  %103 = getelementptr inbounds float, float* %1, i64 %102
  %104 = bitcast float* %103 to i32*
  store i32 %99, i32* %104, align 4, !tbaa !8
  %105 = add nsw i64 %95, %83
  %106 = add nsw i64 %86, 2
  %107 = icmp eq i64 %106, 64
  br i1 %107, label %108, label %84

; <label>:108:                                    ; preds = %84
  %109 = shl i32 %8, 6
  %110 = add i32 %5, 64
  %111 = add i32 %110, %109
  %112 = mul nsw i32 %111, %4
  %113 = add nsw i32 %112, %5
  %114 = sext i32 %113 to i64
  br label %115

; <label>:115:                                    ; preds = %115, %108
  %116 = phi i64 [ %114, %108 ], [ %136, %115 ]
  %117 = phi i64 [ 0, %108 ], [ %137, %115 ]
  %118 = add nsw i64 %116, %81
  %119 = getelementptr inbounds float, float* %0, i64 %118
  %120 = bitcast float* %119 to i32*
  %121 = load i32, i32* %120, align 4, !tbaa !8
  %122 = shl i64 %117, 6
  %123 = add nsw i64 %122, %81
  %124 = getelementptr inbounds float, float* %3, i64 %123
  %125 = bitcast float* %124 to i32*
  store i32 %121, i32* %125, align 4, !tbaa !8
  %126 = add nsw i64 %116, %83
  %127 = add nsw i64 %126, %81
  %128 = getelementptr inbounds float, float* %0, i64 %127
  %129 = bitcast float* %128 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !8
  %131 = shl i64 %117, 6
  %132 = or i64 %131, 64
  %133 = add nsw i64 %132, %81
  %134 = getelementptr inbounds float, float* %3, i64 %133
  %135 = bitcast float* %134 to i32*
  store i32 %130, i32* %135, align 4, !tbaa !8
  %136 = add nsw i64 %126, %83
  %137 = add nsw i64 %117, 2
  %138 = icmp eq i64 %137, 64
  br i1 %138, label %139, label %115

; <label>:139:                                    ; preds = %115, %47
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %11, label %140, label %199

; <label>:140:                                    ; preds = %139
  %141 = shl i64 %9, 32
  %142 = ashr exact i64 %141, 32
  br label %143

; <label>:143:                                    ; preds = %140, %195
  %144 = phi i64 [ 0, %140 ], [ %198, %195 ]
  %145 = phi i64 [ 1, %140 ], [ %196, %195 ]
  %146 = add i64 %144, 1
  %147 = shl nsw i64 %145, 6
  %148 = add nsw i64 %147, %142
  %149 = getelementptr inbounds float, float* %2, i64 %148
  %150 = load float, float* %149, align 4, !tbaa !8
  %151 = and i64 %146, 1
  %152 = icmp eq i64 %144, 0
  br i1 %152, label %181, label %153

; <label>:153:                                    ; preds = %143
  %154 = sub i64 %146, %151
  br label %155

; <label>:155:                                    ; preds = %155, %153
  %156 = phi float [ %150, %153 ], [ %177, %155 ]
  %157 = phi i64 [ 0, %153 ], [ %178, %155 ]
  %158 = phi i64 [ %154, %153 ], [ %179, %155 ]
  %159 = add nuw nsw i64 %157, %147
  %160 = getelementptr inbounds float, float* %1, i64 %159
  %161 = load float, float* %160, align 4, !tbaa !8
  %162 = shl i64 %157, 6
  %163 = add nsw i64 %162, %142
  %164 = getelementptr inbounds float, float* %2, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !8
  %166 = fsub float -0.000000e+00, %161
  %167 = tail call float @llvm.fmuladd.f32(float %166, float %165, float %156)
  store float %167, float* %149, align 4, !tbaa !8
  %168 = or i64 %157, 1
  %169 = add nuw nsw i64 %168, %147
  %170 = getelementptr inbounds float, float* %1, i64 %169
  %171 = load float, float* %170, align 4, !tbaa !8
  %172 = shl i64 %168, 6
  %173 = add nsw i64 %172, %142
  %174 = getelementptr inbounds float, float* %2, i64 %173
  %175 = load float, float* %174, align 4, !tbaa !8
  %176 = fsub float -0.000000e+00, %171
  %177 = tail call float @llvm.fmuladd.f32(float %176, float %175, float %167)
  store float %177, float* %149, align 4, !tbaa !8
  %178 = add nsw i64 %157, 2
  %179 = add i64 %158, -2
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %155

; <label>:181:                                    ; preds = %155, %143
  %182 = phi float [ %150, %143 ], [ %177, %155 ]
  %183 = phi i64 [ 0, %143 ], [ %178, %155 ]
  %184 = icmp eq i64 %151, 0
  br i1 %184, label %195, label %185

; <label>:185:                                    ; preds = %181
  %186 = add nuw nsw i64 %183, %147
  %187 = getelementptr inbounds float, float* %1, i64 %186
  %188 = load float, float* %187, align 4, !tbaa !8
  %189 = shl i64 %183, 6
  %190 = add nsw i64 %189, %142
  %191 = getelementptr inbounds float, float* %2, i64 %190
  %192 = load float, float* %191, align 4, !tbaa !8
  %193 = fsub float -0.000000e+00, %188
  %194 = tail call float @llvm.fmuladd.f32(float %193, float %192, float %182)
  store float %194, float* %149, align 4, !tbaa !8
  br label %195

; <label>:195:                                    ; preds = %181, %185
  %196 = add nuw nsw i64 %145, 1
  %197 = icmp eq i64 %196, 64
  %198 = add i64 %144, 1
  br i1 %197, label %262, label %143

; <label>:199:                                    ; preds = %139
  %200 = shl i32 %10, 6
  %201 = add i32 %200, -4096
  %202 = sext i32 %201 to i64
  br label %203

; <label>:203:                                    ; preds = %254, %199
  %204 = phi i64 [ 0, %199 ], [ %260, %254 ]
  %205 = icmp eq i64 %204, 0
  %206 = add nsw i64 %204, %202
  %207 = getelementptr inbounds float, float* %3, i64 %206
  br i1 %205, label %254, label %208

; <label>:208:                                    ; preds = %203
  %209 = load float, float* %207, align 4, !tbaa !8
  %210 = and i64 %204, 1
  %211 = icmp eq i64 %204, 1
  br i1 %211, label %240, label %212

; <label>:212:                                    ; preds = %208
  %213 = sub i64 %204, %210
  br label %214

; <label>:214:                                    ; preds = %214, %212
  %215 = phi float [ %209, %212 ], [ %236, %214 ]
  %216 = phi i64 [ 0, %212 ], [ %237, %214 ]
  %217 = phi i64 [ %213, %212 ], [ %238, %214 ]
  %218 = add nuw nsw i64 %216, %202
  %219 = getelementptr inbounds float, float* %3, i64 %218
  %220 = load float, float* %219, align 4, !tbaa !8
  %221 = shl i64 %216, 6
  %222 = add nuw nsw i64 %221, %204
  %223 = getelementptr inbounds float, float* %1, i64 %222
  %224 = load float, float* %223, align 4, !tbaa !8
  %225 = fsub float -0.000000e+00, %220
  %226 = tail call float @llvm.fmuladd.f32(float %225, float %224, float %215)
  store float %226, float* %207, align 4, !tbaa !8
  %227 = or i64 %216, 1
  %228 = add nuw nsw i64 %227, %202
  %229 = getelementptr inbounds float, float* %3, i64 %228
  %230 = load float, float* %229, align 4, !tbaa !8
  %231 = shl i64 %227, 6
  %232 = add nuw nsw i64 %231, %204
  %233 = getelementptr inbounds float, float* %1, i64 %232
  %234 = load float, float* %233, align 4, !tbaa !8
  %235 = fsub float -0.000000e+00, %230
  %236 = tail call float @llvm.fmuladd.f32(float %235, float %234, float %226)
  store float %236, float* %207, align 4, !tbaa !8
  %237 = add nsw i64 %216, 2
  %238 = add i64 %217, -2
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %214

; <label>:240:                                    ; preds = %214, %208
  %241 = phi float [ %209, %208 ], [ %236, %214 ]
  %242 = phi i64 [ 0, %208 ], [ %237, %214 ]
  %243 = icmp eq i64 %210, 0
  br i1 %243, label %254, label %244

; <label>:244:                                    ; preds = %240
  %245 = add nuw nsw i64 %242, %202
  %246 = getelementptr inbounds float, float* %3, i64 %245
  %247 = load float, float* %246, align 4, !tbaa !8
  %248 = shl i64 %242, 6
  %249 = add nuw nsw i64 %248, %204
  %250 = getelementptr inbounds float, float* %1, i64 %249
  %251 = load float, float* %250, align 4, !tbaa !8
  %252 = fsub float -0.000000e+00, %247
  %253 = tail call float @llvm.fmuladd.f32(float %252, float %251, float %241)
  store float %253, float* %207, align 4, !tbaa !8
  br label %254

; <label>:254:                                    ; preds = %244, %240, %203
  %255 = mul nuw nsw i64 %204, 65
  %256 = getelementptr inbounds float, float* %1, i64 %255
  %257 = load float, float* %256, align 4, !tbaa !8
  %258 = load float, float* %207, align 4, !tbaa !8
  %259 = fdiv float %258, %257, !fpmath !12
  store float %259, float* %207, align 4, !tbaa !8
  %260 = add nuw nsw i64 %204, 1
  %261 = icmp eq i64 %260, 64
  br i1 %261, label %262, label %203

; <label>:262:                                    ; preds = %254, %195
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %11, label %263, label %314

; <label>:263:                                    ; preds = %262
  %264 = add nsw i32 %5, 1
  %265 = mul nsw i32 %264, %4
  %266 = add nsw i32 %265, %5
  %267 = shl i32 %8, 6
  %268 = add i32 %267, 64
  %269 = add i32 %268, %10
  %270 = shl i64 %9, 32
  %271 = ashr exact i64 %270, 32
  %272 = sext i32 %266 to i64
  %273 = sext i32 %4 to i64
  br label %274

; <label>:274:                                    ; preds = %274, %263
  %275 = phi i64 [ %272, %263 ], [ %311, %274 ]
  %276 = phi i64 [ 1, %263 ], [ %312, %274 ]
  %277 = shl i64 %276, 6
  %278 = add nsw i64 %277, %271
  %279 = getelementptr inbounds float, float* %2, i64 %278
  %280 = bitcast float* %279 to i32*
  %281 = load i32, i32* %280, align 4, !tbaa !8
  %282 = trunc i64 %275 to i32
  %283 = add i32 %269, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %0, i64 %284
  %286 = bitcast float* %285 to i32*
  store i32 %281, i32* %286, align 4, !tbaa !8
  %287 = add nsw i64 %275, %273
  %288 = shl i64 %276, 6
  %289 = add i64 %288, 64
  %290 = add nsw i64 %289, %271
  %291 = getelementptr inbounds float, float* %2, i64 %290
  %292 = bitcast float* %291 to i32*
  %293 = load i32, i32* %292, align 4, !tbaa !8
  %294 = trunc i64 %287 to i32
  %295 = add i32 %269, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %0, i64 %296
  %298 = bitcast float* %297 to i32*
  store i32 %293, i32* %298, align 4, !tbaa !8
  %299 = add nsw i64 %287, %273
  %300 = shl i64 %276, 6
  %301 = add i64 %300, 128
  %302 = add nsw i64 %301, %271
  %303 = getelementptr inbounds float, float* %2, i64 %302
  %304 = bitcast float* %303 to i32*
  %305 = load i32, i32* %304, align 4, !tbaa !8
  %306 = trunc i64 %299 to i32
  %307 = add i32 %269, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %0, i64 %308
  %310 = bitcast float* %309 to i32*
  store i32 %305, i32* %310, align 4, !tbaa !8
  %311 = add nsw i64 %299, %273
  %312 = add nsw i64 %276, 3
  %313 = icmp eq i64 %312, 64
  br i1 %313, label %349, label %274

; <label>:314:                                    ; preds = %262
  %315 = shl i32 %8, 6
  %316 = add i32 %5, 64
  %317 = add i32 %316, %315
  %318 = mul nsw i32 %317, %4
  %319 = add nsw i32 %318, %5
  %320 = shl i64 %9, 32
  %321 = add i64 %320, -274877906944
  %322 = ashr exact i64 %321, 32
  %323 = sext i32 %319 to i64
  %324 = sext i32 %4 to i64
  br label %325

; <label>:325:                                    ; preds = %325, %314
  %326 = phi i64 [ %323, %314 ], [ %346, %325 ]
  %327 = phi i64 [ 0, %314 ], [ %347, %325 ]
  %328 = shl i64 %327, 6
  %329 = add nsw i64 %328, %322
  %330 = getelementptr inbounds float, float* %3, i64 %329
  %331 = bitcast float* %330 to i32*
  %332 = load i32, i32* %331, align 4, !tbaa !8
  %333 = add nsw i64 %326, %322
  %334 = getelementptr inbounds float, float* %0, i64 %333
  %335 = bitcast float* %334 to i32*
  store i32 %332, i32* %335, align 4, !tbaa !8
  %336 = add nsw i64 %326, %324
  %337 = shl i64 %327, 6
  %338 = or i64 %337, 64
  %339 = add nsw i64 %338, %322
  %340 = getelementptr inbounds float, float* %3, i64 %339
  %341 = bitcast float* %340 to i32*
  %342 = load i32, i32* %341, align 4, !tbaa !8
  %343 = add nsw i64 %336, %322
  %344 = getelementptr inbounds float, float* %0, i64 %343
  %345 = bitcast float* %344 to i32*
  store i32 %342, i32* %345, align 4, !tbaa !8
  %346 = add nsw i64 %336, %324
  %347 = add nsw i64 %327, 2
  %348 = icmp eq i64 %347, 64
  br i1 %348, label %349, label %325

; <label>:349:                                    ; preds = %325, %274
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 3, i32 3, i32 3, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
