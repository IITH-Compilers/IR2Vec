; ModuleID = 'shoc-1.1.5-S3D-qssa2_kernel.cl'
source_filename = "shoc-1.1.5-S3D-qssa2_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @qssa2_kernel(float*, float*, float* readonly) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %5 = add i64 %4, 344
  %6 = getelementptr inbounds float, float* %2, i64 %5
  %7 = load float, float* %6, align 4, !tbaa !8
  %8 = add i64 %4, 256
  %9 = getelementptr inbounds float, float* %2, i64 %8
  %10 = load float, float* %9, align 4, !tbaa !8
  %11 = add i64 %4, 288
  %12 = getelementptr inbounds float, float* %2, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !8
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %7, float %10)
  %15 = add i64 %4, 608
  %16 = getelementptr inbounds float, float* %2, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !8
  %18 = add i64 %4, 640
  %19 = getelementptr inbounds float, float* %2, i64 %18
  %20 = load float, float* %19, align 4, !tbaa !8
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %7, float %17)
  %22 = add i64 %4, 632
  %23 = getelementptr inbounds float, float* %2, i64 %22
  %24 = load float, float* %23, align 4, !tbaa !8
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %14, float %21)
  %26 = add i64 %4, 168
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !8
  %29 = add i64 %4, 200
  %30 = getelementptr inbounds float, float* %2, i64 %29
  %31 = load float, float* %30, align 4, !tbaa !8
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %7, float %28)
  %33 = add i64 %4, 192
  %34 = getelementptr inbounds float, float* %2, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !8
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %14, float %32)
  %37 = add i64 %4, 224
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !8
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %25, float %36)
  %41 = add i64 %4, 80
  %42 = getelementptr inbounds float, float* %2, i64 %41
  %43 = load float, float* %42, align 4, !tbaa !8
  %44 = add i64 %4, 112
  %45 = getelementptr inbounds float, float* %2, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !8
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %7, float %43)
  %48 = add i64 %4, 104
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !8
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %14, float %47)
  %52 = add i64 %4, 136
  %53 = getelementptr inbounds float, float* %2, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %25, float %51)
  %56 = add i64 %4, 96
  %57 = getelementptr inbounds float, float* %2, i64 %56
  %58 = load float, float* %57, align 4, !tbaa !8
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %55)
  %60 = add i64 %4, 696
  %61 = getelementptr inbounds float, float* %2, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !8
  %63 = add i64 %4, 728
  %64 = getelementptr inbounds float, float* %2, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !8
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %7, float %62)
  %67 = add i64 %4, 720
  %68 = getelementptr inbounds float, float* %2, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !8
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %14, float %66)
  %71 = add i64 %4, 520
  %72 = getelementptr inbounds float, float* %2, i64 %71
  %73 = load float, float* %72, align 4, !tbaa !8
  %74 = add i64 %4, 544
  %75 = getelementptr inbounds float, float* %2, i64 %74
  %76 = load float, float* %75, align 4, !tbaa !8
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %14, float %73)
  %78 = add i64 %4, 576
  %79 = getelementptr inbounds float, float* %2, i64 %78
  %80 = load float, float* %79, align 4, !tbaa !8
  %81 = tail call float @llvm.fmuladd.f32(float %80, float %25, float %77)
  %82 = add i64 %4, 536
  %83 = getelementptr inbounds float, float* %2, i64 %82
  %84 = load float, float* %83, align 4, !tbaa !8
  %85 = tail call float @llvm.fmuladd.f32(float %84, float %40, float %81)
  %86 = add i64 %4, 784
  %87 = getelementptr inbounds float, float* %2, i64 %86
  %88 = load float, float* %87, align 4, !tbaa !8
  %89 = add i64 %4, 816
  %90 = getelementptr inbounds float, float* %2, i64 %89
  %91 = load float, float* %90, align 4, !tbaa !8
  %92 = tail call float @llvm.fmuladd.f32(float %91, float %7, float %88)
  %93 = add i64 %4, 840
  %94 = getelementptr inbounds float, float* %2, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !8
  %96 = tail call float @llvm.fmuladd.f32(float %95, float %25, float %92)
  %97 = add i64 %4, 432
  %98 = getelementptr inbounds float, float* %2, i64 %97
  %99 = load float, float* %98, align 4, !tbaa !8
  %100 = add i64 %4, 456
  %101 = getelementptr inbounds float, float* %2, i64 %100
  %102 = load float, float* %101, align 4, !tbaa !8
  %103 = tail call float @llvm.fmuladd.f32(float %102, float %14, float %99)
  %104 = add i64 %4, 872
  %105 = getelementptr inbounds float, float* %2, i64 %104
  %106 = load float, float* %105, align 4, !tbaa !8
  %107 = add i64 %4, 936
  %108 = getelementptr inbounds float, float* %2, i64 %107
  %109 = load float, float* %108, align 4, !tbaa !8
  %110 = tail call float @llvm.fmuladd.f32(float %109, float %70, float %106)
  %111 = add i64 %4, 264
  %112 = getelementptr inbounds float, float* %0, i64 %111
  %113 = load float, float* %112, align 4, !tbaa !8
  %114 = fmul float %59, %113
  store float %114, float* %112, align 4, !tbaa !8
  %115 = add i64 %4, 272
  %116 = getelementptr inbounds float, float* %0, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !8
  %118 = fmul float %59, %117
  store float %118, float* %116, align 4, !tbaa !8
  %119 = getelementptr inbounds float, float* %1, i64 %115
  %120 = load float, float* %119, align 4, !tbaa !8
  %121 = fmul float %7, %120
  store float %121, float* %119, align 4, !tbaa !8
  %122 = add i64 %4, 280
  %123 = getelementptr inbounds float, float* %0, i64 %122
  %124 = load float, float* %123, align 4, !tbaa !8
  %125 = fmul float %59, %124
  store float %125, float* %123, align 4, !tbaa !8
  %126 = getelementptr inbounds float, float* %1, i64 %122
  %127 = load float, float* %126, align 4, !tbaa !8
  %128 = fmul float %40, %127
  store float %128, float* %126, align 4, !tbaa !8
  %129 = getelementptr inbounds float, float* %0, i64 %11
  %130 = load float, float* %129, align 4, !tbaa !8
  %131 = fmul float %59, %130
  store float %131, float* %129, align 4, !tbaa !8
  %132 = add i64 %4, 296
  %133 = getelementptr inbounds float, float* %0, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !8
  %135 = fmul float %59, %134
  store float %135, float* %133, align 4, !tbaa !8
  %136 = getelementptr inbounds float, float* %1, i64 %132
  %137 = load float, float* %136, align 4, !tbaa !8
  %138 = fmul float %7, %137
  store float %138, float* %136, align 4, !tbaa !8
  %139 = add i64 %4, 304
  %140 = getelementptr inbounds float, float* %0, i64 %139
  %141 = load float, float* %140, align 4, !tbaa !8
  %142 = fmul float %59, %141
  store float %142, float* %140, align 4, !tbaa !8
  %143 = add i64 %4, 312
  %144 = getelementptr inbounds float, float* %0, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !8
  %146 = fmul float %59, %145
  store float %146, float* %144, align 4, !tbaa !8
  %147 = getelementptr inbounds float, float* %1, i64 %143
  %148 = load float, float* %147, align 4, !tbaa !8
  %149 = fmul float %7, %148
  store float %149, float* %147, align 4, !tbaa !8
  %150 = add i64 %4, 320
  %151 = getelementptr inbounds float, float* %0, i64 %150
  %152 = load float, float* %151, align 4, !tbaa !8
  %153 = fmul float %7, %152
  store float %153, float* %151, align 4, !tbaa !8
  %154 = add i64 %4, 328
  %155 = getelementptr inbounds float, float* %0, i64 %154
  %156 = load float, float* %155, align 4, !tbaa !8
  %157 = fmul float %7, %156
  store float %157, float* %155, align 4, !tbaa !8
  %158 = add i64 %4, 336
  %159 = getelementptr inbounds float, float* %0, i64 %158
  %160 = load float, float* %159, align 4, !tbaa !8
  %161 = fmul float %7, %160
  store float %161, float* %159, align 4, !tbaa !8
  %162 = getelementptr inbounds float, float* %0, i64 %5
  %163 = load float, float* %162, align 4, !tbaa !8
  %164 = fmul float %7, %163
  store float %164, float* %162, align 4, !tbaa !8
  %165 = add i64 %4, 352
  %166 = getelementptr inbounds float, float* %0, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !8
  %168 = fmul float %7, %167
  store float %168, float* %166, align 4, !tbaa !8
  %169 = add i64 %4, 360
  %170 = getelementptr inbounds float, float* %0, i64 %169
  %171 = load float, float* %170, align 4, !tbaa !8
  %172 = fmul float %7, %171
  store float %172, float* %170, align 4, !tbaa !8
  %173 = add i64 %4, 368
  %174 = getelementptr inbounds float, float* %0, i64 %173
  %175 = load float, float* %174, align 4, !tbaa !8
  %176 = fmul float %7, %175
  store float %176, float* %174, align 4, !tbaa !8
  %177 = add i64 %4, 376
  %178 = getelementptr inbounds float, float* %0, i64 %177
  %179 = load float, float* %178, align 4, !tbaa !8
  %180 = fmul float %40, %179
  store float %180, float* %178, align 4, !tbaa !8
  %181 = add i64 %4, 384
  %182 = getelementptr inbounds float, float* %0, i64 %181
  %183 = load float, float* %182, align 4, !tbaa !8
  %184 = fmul float %40, %183
  store float %184, float* %182, align 4, !tbaa !8
  %185 = add i64 %4, 392
  %186 = getelementptr inbounds float, float* %0, i64 %185
  %187 = load float, float* %186, align 4, !tbaa !8
  %188 = fmul float %40, %187
  store float %188, float* %186, align 4, !tbaa !8
  %189 = getelementptr inbounds float, float* %1, i64 %185
  %190 = load float, float* %189, align 4, !tbaa !8
  %191 = fmul float %7, %190
  store float %191, float* %189, align 4, !tbaa !8
  %192 = add i64 %4, 400
  %193 = getelementptr inbounds float, float* %0, i64 %192
  %194 = load float, float* %193, align 4, !tbaa !8
  %195 = fmul float %40, %194
  store float %195, float* %193, align 4, !tbaa !8
  %196 = getelementptr inbounds float, float* %1, i64 %192
  %197 = load float, float* %196, align 4, !tbaa !8
  %198 = fmul float %7, %197
  store float %198, float* %196, align 4, !tbaa !8
  %199 = add i64 %4, 408
  %200 = getelementptr inbounds float, float* %0, i64 %199
  %201 = load float, float* %200, align 4, !tbaa !8
  %202 = fmul float %40, %201
  store float %202, float* %200, align 4, !tbaa !8
  %203 = add i64 %4, 416
  %204 = getelementptr inbounds float, float* %0, i64 %203
  %205 = load float, float* %204, align 4, !tbaa !8
  %206 = fmul float %40, %205
  store float %206, float* %204, align 4, !tbaa !8
  %207 = add i64 %4, 424
  %208 = getelementptr inbounds float, float* %0, i64 %207
  %209 = load float, float* %208, align 4, !tbaa !8
  %210 = fmul float %40, %209
  store float %210, float* %208, align 4, !tbaa !8
  %211 = getelementptr inbounds float, float* %1, i64 %207
  %212 = load float, float* %211, align 4, !tbaa !8
  %213 = fmul float %59, %212
  store float %213, float* %211, align 4, !tbaa !8
  %214 = getelementptr inbounds float, float* %0, i64 %97
  %215 = load float, float* %214, align 4, !tbaa !8
  %216 = fmul float %40, %215
  store float %216, float* %214, align 4, !tbaa !8
  %217 = add i64 %4, 440
  %218 = getelementptr inbounds float, float* %0, i64 %217
  %219 = load float, float* %218, align 4, !tbaa !8
  %220 = fmul float %40, %219
  store float %220, float* %218, align 4, !tbaa !8
  %221 = add i64 %4, 464
  %222 = getelementptr inbounds float, float* %0, i64 %221
  %223 = load float, float* %222, align 4, !tbaa !8
  %224 = fmul float %14, %223
  store float %224, float* %222, align 4, !tbaa !8
  %225 = getelementptr inbounds float, float* %1, i64 %221
  %226 = load float, float* %225, align 4, !tbaa !8
  %227 = fmul float %40, %226
  store float %227, float* %225, align 4, !tbaa !8
  %228 = add i64 %4, 472
  %229 = getelementptr inbounds float, float* %0, i64 %228
  %230 = load float, float* %229, align 4, !tbaa !8
  %231 = fmul float %14, %230
  store float %231, float* %229, align 4, !tbaa !8
  %232 = getelementptr inbounds float, float* %1, i64 %228
  %233 = load float, float* %232, align 4, !tbaa !8
  %234 = fmul float %59, %233
  store float %234, float* %232, align 4, !tbaa !8
  %235 = add i64 %4, 480
  %236 = getelementptr inbounds float, float* %0, i64 %235
  %237 = load float, float* %236, align 4, !tbaa !8
  %238 = fmul float %14, %237
  store float %238, float* %236, align 4, !tbaa !8
  %239 = add i64 %4, 488
  %240 = getelementptr inbounds float, float* %0, i64 %239
  %241 = load float, float* %240, align 4, !tbaa !8
  %242 = fmul float %14, %241
  store float %242, float* %240, align 4, !tbaa !8
  %243 = getelementptr inbounds float, float* %1, i64 %239
  %244 = load float, float* %243, align 4, !tbaa !8
  %245 = fmul float %7, %244
  store float %245, float* %243, align 4, !tbaa !8
  %246 = add i64 %4, 496
  %247 = getelementptr inbounds float, float* %0, i64 %246
  %248 = load float, float* %247, align 4, !tbaa !8
  %249 = fmul float %14, %248
  store float %249, float* %247, align 4, !tbaa !8
  %250 = add i64 %4, 504
  %251 = getelementptr inbounds float, float* %0, i64 %250
  %252 = load float, float* %251, align 4, !tbaa !8
  %253 = fmul float %14, %252
  store float %253, float* %251, align 4, !tbaa !8
  %254 = add i64 %4, 512
  %255 = getelementptr inbounds float, float* %0, i64 %254
  %256 = load float, float* %255, align 4, !tbaa !8
  %257 = fmul float %14, %256
  store float %257, float* %255, align 4, !tbaa !8
  %258 = getelementptr inbounds float, float* %0, i64 %71
  %259 = load float, float* %258, align 4, !tbaa !8
  %260 = fmul float %14, %259
  store float %260, float* %258, align 4, !tbaa !8
  %261 = add i64 %4, 528
  %262 = getelementptr inbounds float, float* %0, i64 %261
  %263 = load float, float* %262, align 4, !tbaa !8
  %264 = fmul float %14, %263
  store float %264, float* %262, align 4, !tbaa !8
  %265 = getelementptr inbounds float, float* %1, i64 %261
  %266 = load float, float* %265, align 4, !tbaa !8
  %267 = fmul float %40, %266
  store float %267, float* %265, align 4, !tbaa !8
  %268 = getelementptr inbounds float, float* %0, i64 %82
  %269 = load float, float* %268, align 4, !tbaa !8
  %270 = fmul float %14, %269
  store float %270, float* %268, align 4, !tbaa !8
  %271 = getelementptr inbounds float, float* %1, i64 %82
  %272 = load float, float* %271, align 4, !tbaa !8
  %273 = fmul float %40, %272
  store float %273, float* %271, align 4, !tbaa !8
  %274 = getelementptr inbounds float, float* %0, i64 %74
  %275 = load float, float* %274, align 4, !tbaa !8
  %276 = fmul float %14, %275
  store float %276, float* %274, align 4, !tbaa !8
  %277 = getelementptr inbounds float, float* %1, i64 %74
  %278 = load float, float* %277, align 4, !tbaa !8
  %279 = fmul float %40, %278
  store float %279, float* %277, align 4, !tbaa !8
  %280 = add i64 %4, 552
  %281 = getelementptr inbounds float, float* %0, i64 %280
  %282 = load float, float* %281, align 4, !tbaa !8
  %283 = fmul float %14, %282
  store float %283, float* %281, align 4, !tbaa !8
  %284 = add i64 %4, 560
  %285 = getelementptr inbounds float, float* %1, i64 %284
  %286 = load float, float* %285, align 4, !tbaa !8
  %287 = fmul float %103, %286
  store float %287, float* %285, align 4, !tbaa !8
  %288 = add i64 %4, 568
  %289 = getelementptr inbounds float, float* %1, i64 %288
  %290 = load float, float* %289, align 4, !tbaa !8
  %291 = fmul float %7, %290
  store float %291, float* %289, align 4, !tbaa !8
  %292 = getelementptr inbounds float, float* %1, i64 %78
  %293 = load float, float* %292, align 4, !tbaa !8
  %294 = fmul float %7, %293
  store float %294, float* %292, align 4, !tbaa !8
  %295 = add i64 %4, 584
  %296 = getelementptr inbounds float, float* %1, i64 %295
  %297 = load float, float* %296, align 4, !tbaa !8
  %298 = fmul float %7, %297
  store float %298, float* %296, align 4, !tbaa !8
  %299 = add i64 %4, 592
  %300 = getelementptr inbounds float, float* %1, i64 %299
  %301 = load float, float* %300, align 4, !tbaa !8
  %302 = fmul float %7, %301
  store float %302, float* %300, align 4, !tbaa !8
  %303 = add i64 %4, 600
  %304 = getelementptr inbounds float, float* %1, i64 %303
  %305 = load float, float* %304, align 4, !tbaa !8
  %306 = fmul float %7, %305
  store float %306, float* %304, align 4, !tbaa !8
  %307 = getelementptr inbounds float, float* %0, i64 %15
  %308 = load float, float* %307, align 4, !tbaa !8
  %309 = fmul float %59, %308
  store float %309, float* %307, align 4, !tbaa !8
  %310 = getelementptr inbounds float, float* %1, i64 %22
  %311 = load float, float* %310, align 4, !tbaa !8
  %312 = fmul float %40, %311
  store float %312, float* %310, align 4, !tbaa !8
  %313 = getelementptr inbounds float, float* %1, i64 %18
  %314 = load float, float* %313, align 4, !tbaa !8
  %315 = fmul float %14, %314
  store float %315, float* %313, align 4, !tbaa !8
  %316 = add i64 %4, 648
  %317 = getelementptr inbounds float, float* %1, i64 %316
  %318 = load float, float* %317, align 4, !tbaa !8
  %319 = fmul float %103, %318
  store float %319, float* %317, align 4, !tbaa !8
  %320 = add i64 %4, 672
  %321 = getelementptr inbounds float, float* %1, i64 %320
  %322 = load float, float* %321, align 4, !tbaa !8
  %323 = fmul float %103, %322
  store float %323, float* %321, align 4, !tbaa !8
  %324 = add i64 %4, 688
  %325 = getelementptr inbounds float, float* %0, i64 %324
  %326 = load float, float* %325, align 4, !tbaa !8
  %327 = fmul float %59, %326
  store float %327, float* %325, align 4, !tbaa !8
  %328 = getelementptr inbounds float, float* %1, i64 %324
  %329 = load float, float* %328, align 4, !tbaa !8
  %330 = fmul float %25, %329
  store float %330, float* %328, align 4, !tbaa !8
  %331 = getelementptr inbounds float, float* %0, i64 %60
  %332 = load float, float* %331, align 4, !tbaa !8
  %333 = fmul float %7, %332
  store float %333, float* %331, align 4, !tbaa !8
  %334 = add i64 %4, 704
  %335 = getelementptr inbounds float, float* %0, i64 %334
  %336 = load float, float* %335, align 4, !tbaa !8
  %337 = fmul float %7, %336
  store float %337, float* %335, align 4, !tbaa !8
  %338 = add i64 %4, 712
  %339 = getelementptr inbounds float, float* %1, i64 %338
  %340 = load float, float* %339, align 4, !tbaa !8
  %341 = fmul float %7, %340
  store float %341, float* %339, align 4, !tbaa !8
  %342 = getelementptr inbounds float, float* %0, i64 %67
  %343 = load float, float* %342, align 4, !tbaa !8
  %344 = fmul float %40, %343
  store float %344, float* %342, align 4, !tbaa !8
  %345 = getelementptr inbounds float, float* %0, i64 %63
  %346 = load float, float* %345, align 4, !tbaa !8
  %347 = fmul float %14, %346
  store float %347, float* %345, align 4, !tbaa !8
  %348 = add i64 %4, 744
  %349 = getelementptr inbounds float, float* %1, i64 %348
  %350 = load float, float* %349, align 4, !tbaa !8
  %351 = fmul float %70, %350
  store float %351, float* %349, align 4, !tbaa !8
  %352 = add i64 %4, 760
  %353 = getelementptr inbounds float, float* %0, i64 %352
  %354 = load float, float* %353, align 4, !tbaa !8
  %355 = fmul float %103, %354
  store float %355, float* %353, align 4, !tbaa !8
  %356 = add i64 %4, 768
  %357 = getelementptr inbounds float, float* %0, i64 %356
  %358 = load float, float* %357, align 4, !tbaa !8
  %359 = fmul float %103, %358
  store float %359, float* %357, align 4, !tbaa !8
  %360 = add i64 %4, 776
  %361 = getelementptr inbounds float, float* %0, i64 %360
  %362 = load float, float* %361, align 4, !tbaa !8
  %363 = fmul float %103, %362
  store float %363, float* %361, align 4, !tbaa !8
  %364 = getelementptr inbounds float, float* %1, i64 %360
  %365 = load float, float* %364, align 4, !tbaa !8
  %366 = fmul float %14, %365
  store float %366, float* %364, align 4, !tbaa !8
  %367 = getelementptr inbounds float, float* %0, i64 %86
  %368 = load float, float* %367, align 4, !tbaa !8
  %369 = fmul float %103, %368
  store float %369, float* %367, align 4, !tbaa !8
  %370 = add i64 %4, 792
  %371 = getelementptr inbounds float, float* %0, i64 %370
  %372 = load float, float* %371, align 4, !tbaa !8
  %373 = fmul float %103, %372
  store float %373, float* %371, align 4, !tbaa !8
  %374 = add i64 %4, 800
  %375 = getelementptr inbounds float, float* %0, i64 %374
  %376 = load float, float* %375, align 4, !tbaa !8
  %377 = fmul float %103, %376
  store float %377, float* %375, align 4, !tbaa !8
  %378 = add i64 %4, 832
  %379 = getelementptr inbounds float, float* %0, i64 %378
  %380 = load float, float* %379, align 4, !tbaa !8
  %381 = fmul float %59, %380
  store float %381, float* %379, align 4, !tbaa !8
  %382 = getelementptr inbounds float, float* %0, i64 %93
  %383 = load float, float* %382, align 4, !tbaa !8
  %384 = fmul float %40, %383
  store float %384, float* %382, align 4, !tbaa !8
  %385 = add i64 %4, 848
  %386 = getelementptr inbounds float, float* %0, i64 %385
  %387 = load float, float* %386, align 4, !tbaa !8
  %388 = fmul float %14, %387
  store float %388, float* %386, align 4, !tbaa !8
  %389 = add i64 %4, 856
  %390 = getelementptr inbounds float, float* %1, i64 %389
  %391 = load float, float* %390, align 4, !tbaa !8
  %392 = fmul float %14, %391
  store float %392, float* %390, align 4, !tbaa !8
  %393 = add i64 %4, 880
  %394 = getelementptr inbounds float, float* %0, i64 %393
  %395 = load float, float* %394, align 4, !tbaa !8
  %396 = fmul float %59, %395
  store float %396, float* %394, align 4, !tbaa !8
  %397 = add i64 %4, 888
  %398 = getelementptr inbounds float, float* %0, i64 %397
  %399 = load float, float* %398, align 4, !tbaa !8
  %400 = fmul float %40, %399
  store float %400, float* %398, align 4, !tbaa !8
  %401 = getelementptr inbounds float, float* %1, i64 %397
  %402 = load float, float* %401, align 4, !tbaa !8
  %403 = fmul float %25, %402
  store float %403, float* %401, align 4, !tbaa !8
  %404 = add i64 %4, 904
  %405 = getelementptr inbounds float, float* %1, i64 %404
  %406 = load float, float* %405, align 4, !tbaa !8
  %407 = fmul float %85, %406
  store float %407, float* %405, align 4, !tbaa !8
  %408 = add i64 %4, 912
  %409 = getelementptr inbounds float, float* %0, i64 %408
  %410 = load float, float* %409, align 4, !tbaa !8
  %411 = fmul float %25, %410
  store float %411, float* %409, align 4, !tbaa !8
  %412 = add i64 %4, 928
  %413 = getelementptr inbounds float, float* %1, i64 %412
  %414 = load float, float* %413, align 4, !tbaa !8
  %415 = fmul float %40, %414
  store float %415, float* %413, align 4, !tbaa !8
  %416 = add i64 %4, 952
  %417 = getelementptr inbounds float, float* %0, i64 %416
  %418 = load float, float* %417, align 4, !tbaa !8
  %419 = fmul float %7, %418
  store float %419, float* %417, align 4, !tbaa !8
  %420 = getelementptr inbounds float, float* %1, i64 %416
  %421 = load float, float* %420, align 4, !tbaa !8
  %422 = fmul float %25, %421
  store float %422, float* %420, align 4, !tbaa !8
  %423 = add i64 %4, 968
  %424 = getelementptr inbounds float, float* %0, i64 %423
  %425 = load float, float* %424, align 4, !tbaa !8
  %426 = fmul float %85, %425
  store float %426, float* %424, align 4, !tbaa !8
  %427 = add i64 %4, 976
  %428 = getelementptr inbounds float, float* %0, i64 %427
  %429 = load float, float* %428, align 4, !tbaa !8
  %430 = fmul float %85, %429
  store float %430, float* %428, align 4, !tbaa !8
  %431 = getelementptr inbounds float, float* %1, i64 %427
  %432 = load float, float* %431, align 4, !tbaa !8
  %433 = fmul float %40, %432
  store float %433, float* %431, align 4, !tbaa !8
  %434 = add i64 %4, 984
  %435 = getelementptr inbounds float, float* %0, i64 %434
  %436 = load float, float* %435, align 4, !tbaa !8
  %437 = fmul float %85, %436
  store float %437, float* %435, align 4, !tbaa !8
  %438 = add i64 %4, 992
  %439 = getelementptr inbounds float, float* %0, i64 %438
  %440 = load float, float* %439, align 4, !tbaa !8
  %441 = fmul float %85, %440
  store float %441, float* %439, align 4, !tbaa !8
  %442 = getelementptr inbounds float, float* %1, i64 %438
  %443 = load float, float* %442, align 4, !tbaa !8
  %444 = fmul float %40, %443
  store float %444, float* %442, align 4, !tbaa !8
  %445 = add i64 %4, 1000
  %446 = getelementptr inbounds float, float* %1, i64 %445
  %447 = load float, float* %446, align 4, !tbaa !8
  %448 = fmul float %96, %447
  store float %448, float* %446, align 4, !tbaa !8
  %449 = add i64 %4, 1032
  %450 = getelementptr inbounds float, float* %1, i64 %449
  %451 = load float, float* %450, align 4, !tbaa !8
  %452 = fmul float %40, %451
  store float %452, float* %450, align 4, !tbaa !8
  %453 = add i64 %4, 1048
  %454 = getelementptr inbounds float, float* %0, i64 %453
  %455 = load float, float* %454, align 4, !tbaa !8
  %456 = fmul float %25, %455
  store float %456, float* %454, align 4, !tbaa !8
  %457 = add i64 %4, 1056
  %458 = getelementptr inbounds float, float* %0, i64 %457
  %459 = load float, float* %458, align 4, !tbaa !8
  %460 = fmul float %25, %459
  store float %460, float* %458, align 4, !tbaa !8
  %461 = add i64 %4, 1064
  %462 = getelementptr inbounds float, float* %0, i64 %461
  %463 = load float, float* %462, align 4, !tbaa !8
  %464 = fmul float %25, %463
  store float %464, float* %462, align 4, !tbaa !8
  %465 = getelementptr inbounds float, float* %1, i64 %461
  %466 = load float, float* %465, align 4, !tbaa !8
  %467 = fmul float %85, %466
  store float %467, float* %465, align 4, !tbaa !8
  %468 = add i64 %4, 1072
  %469 = getelementptr inbounds float, float* %0, i64 %468
  %470 = load float, float* %469, align 4, !tbaa !8
  %471 = fmul float %25, %470
  store float %471, float* %469, align 4, !tbaa !8
  %472 = add i64 %4, 1080
  %473 = getelementptr inbounds float, float* %0, i64 %472
  %474 = load float, float* %473, align 4, !tbaa !8
  %475 = fmul float %25, %474
  store float %475, float* %473, align 4, !tbaa !8
  %476 = add i64 %4, 1088
  %477 = getelementptr inbounds float, float* %0, i64 %476
  %478 = load float, float* %477, align 4, !tbaa !8
  %479 = fmul float %25, %478
  store float %479, float* %477, align 4, !tbaa !8
  %480 = add i64 %4, 1096
  %481 = getelementptr inbounds float, float* %0, i64 %480
  %482 = load float, float* %481, align 4, !tbaa !8
  %483 = fmul float %25, %482
  store float %483, float* %481, align 4, !tbaa !8
  %484 = add i64 %4, 1104
  %485 = getelementptr inbounds float, float* %0, i64 %484
  %486 = load float, float* %485, align 4, !tbaa !8
  %487 = fmul float %25, %486
  store float %487, float* %485, align 4, !tbaa !8
  %488 = getelementptr inbounds float, float* %1, i64 %484
  %489 = load float, float* %488, align 4, !tbaa !8
  %490 = fmul float %96, %489
  store float %490, float* %488, align 4, !tbaa !8
  %491 = add i64 %4, 1112
  %492 = getelementptr inbounds float, float* %0, i64 %491
  %493 = load float, float* %492, align 4, !tbaa !8
  %494 = fmul float %25, %493
  store float %494, float* %492, align 4, !tbaa !8
  %495 = getelementptr inbounds float, float* %1, i64 %491
  %496 = load float, float* %495, align 4, !tbaa !8
  %497 = fmul float %7, %496
  store float %497, float* %495, align 4, !tbaa !8
  %498 = add i64 %4, 1120
  %499 = getelementptr inbounds float, float* %0, i64 %498
  %500 = load float, float* %499, align 4, !tbaa !8
  %501 = fmul float %25, %500
  store float %501, float* %499, align 4, !tbaa !8
  %502 = getelementptr inbounds float, float* %1, i64 %498
  %503 = load float, float* %502, align 4, !tbaa !8
  %504 = fmul float %96, %503
  store float %504, float* %502, align 4, !tbaa !8
  %505 = add i64 %4, 1128
  %506 = getelementptr inbounds float, float* %0, i64 %505
  %507 = load float, float* %506, align 4, !tbaa !8
  %508 = fmul float %25, %507
  store float %508, float* %506, align 4, !tbaa !8
  %509 = add i64 %4, 1144
  %510 = getelementptr inbounds float, float* %0, i64 %509
  %511 = load float, float* %510, align 4, !tbaa !8
  %512 = fmul float %25, %511
  store float %512, float* %510, align 4, !tbaa !8
  %513 = add i64 %4, 1152
  %514 = getelementptr inbounds float, float* %0, i64 %513
  %515 = load float, float* %514, align 4, !tbaa !8
  %516 = fmul float %25, %515
  store float %516, float* %514, align 4, !tbaa !8
  %517 = add i64 %4, 1160
  %518 = getelementptr inbounds float, float* %0, i64 %517
  %519 = load float, float* %518, align 4, !tbaa !8
  %520 = fmul float %25, %519
  store float %520, float* %518, align 4, !tbaa !8
  %521 = add i64 %4, 1168
  %522 = getelementptr inbounds float, float* %0, i64 %521
  %523 = load float, float* %522, align 4, !tbaa !8
  %524 = fmul float %96, %523
  store float %524, float* %522, align 4, !tbaa !8
  %525 = add i64 %4, 1176
  %526 = getelementptr inbounds float, float* %0, i64 %525
  %527 = load float, float* %526, align 4, !tbaa !8
  %528 = fmul float %96, %527
  store float %528, float* %526, align 4, !tbaa !8
  %529 = add i64 %4, 1184
  %530 = getelementptr inbounds float, float* %0, i64 %529
  %531 = load float, float* %530, align 4, !tbaa !8
  %532 = fmul float %96, %531
  store float %532, float* %530, align 4, !tbaa !8
  %533 = getelementptr inbounds float, float* %1, i64 %529
  %534 = load float, float* %533, align 4, !tbaa !8
  %535 = fmul float %7, %534
  store float %535, float* %533, align 4, !tbaa !8
  %536 = add i64 %4, 1192
  %537 = getelementptr inbounds float, float* %0, i64 %536
  %538 = load float, float* %537, align 4, !tbaa !8
  %539 = fmul float %96, %538
  store float %539, float* %537, align 4, !tbaa !8
  %540 = add i64 %4, 1200
  %541 = getelementptr inbounds float, float* %0, i64 %540
  %542 = load float, float* %541, align 4, !tbaa !8
  %543 = fmul float %96, %542
  store float %543, float* %541, align 4, !tbaa !8
  %544 = add i64 %4, 1208
  %545 = getelementptr inbounds float, float* %0, i64 %544
  %546 = load float, float* %545, align 4, !tbaa !8
  %547 = fmul float %96, %546
  store float %547, float* %545, align 4, !tbaa !8
  %548 = add i64 %4, 1216
  %549 = getelementptr inbounds float, float* %0, i64 %548
  %550 = load float, float* %549, align 4, !tbaa !8
  %551 = fmul float %96, %550
  store float %551, float* %549, align 4, !tbaa !8
  %552 = add i64 %4, 1224
  %553 = getelementptr inbounds float, float* %0, i64 %552
  %554 = load float, float* %553, align 4, !tbaa !8
  %555 = fmul float %96, %554
  store float %555, float* %553, align 4, !tbaa !8
  %556 = add i64 %4, 1232
  %557 = getelementptr inbounds float, float* %1, i64 %556
  %558 = load float, float* %557, align 4, !tbaa !8
  %559 = fmul float %85, %558
  store float %559, float* %557, align 4, !tbaa !8
  %560 = add i64 %4, 1240
  %561 = getelementptr inbounds float, float* %1, i64 %560
  %562 = load float, float* %561, align 4, !tbaa !8
  %563 = fmul float %70, %562
  store float %563, float* %561, align 4, !tbaa !8
  %564 = add i64 %4, 1248
  %565 = getelementptr inbounds float, float* %1, i64 %564
  %566 = load float, float* %565, align 4, !tbaa !8
  %567 = fmul float %25, %566
  store float %567, float* %565, align 4, !tbaa !8
  %568 = add i64 %4, 1256
  %569 = getelementptr inbounds float, float* %1, i64 %568
  %570 = load float, float* %569, align 4, !tbaa !8
  %571 = fmul float %25, %570
  store float %571, float* %569, align 4, !tbaa !8
  %572 = add i64 %4, 1264
  %573 = getelementptr inbounds float, float* %1, i64 %572
  %574 = load float, float* %573, align 4, !tbaa !8
  %575 = fmul float %7, %574
  store float %575, float* %573, align 4, !tbaa !8
  %576 = add i64 %4, 1272
  %577 = getelementptr inbounds float, float* %1, i64 %576
  %578 = load float, float* %577, align 4, !tbaa !8
  %579 = fmul float %40, %578
  store float %579, float* %577, align 4, !tbaa !8
  %580 = add i64 %4, 1280
  %581 = getelementptr inbounds float, float* %1, i64 %580
  %582 = load float, float* %581, align 4, !tbaa !8
  %583 = fmul float %25, %582
  store float %583, float* %581, align 4, !tbaa !8
  %584 = add i64 %4, 1288
  %585 = getelementptr inbounds float, float* %1, i64 %584
  %586 = load float, float* %585, align 4, !tbaa !8
  %587 = fmul float %25, %586
  store float %587, float* %585, align 4, !tbaa !8
  %588 = add i64 %4, 1304
  %589 = getelementptr inbounds float, float* %0, i64 %588
  %590 = load float, float* %589, align 4, !tbaa !8
  %591 = fmul float %7, %590
  store float %591, float* %589, align 4, !tbaa !8
  %592 = getelementptr inbounds float, float* %1, i64 %588
  %593 = load float, float* %592, align 4, !tbaa !8
  %594 = fmul float %70, %593
  store float %594, float* %592, align 4, !tbaa !8
  %595 = add i64 %4, 1312
  %596 = getelementptr inbounds float, float* %0, i64 %595
  %597 = load float, float* %596, align 4, !tbaa !8
  %598 = fmul float %40, %597
  store float %598, float* %596, align 4, !tbaa !8
  %599 = add i64 %4, 1320
  %600 = getelementptr inbounds float, float* %0, i64 %599
  %601 = load float, float* %600, align 4, !tbaa !8
  %602 = fmul float %14, %601
  store float %602, float* %600, align 4, !tbaa !8
  %603 = getelementptr inbounds float, float* %1, i64 %599
  %604 = load float, float* %603, align 4, !tbaa !8
  %605 = fmul float %85, %604
  store float %605, float* %603, align 4, !tbaa !8
  %606 = add i64 %4, 1328
  %607 = getelementptr inbounds float, float* %0, i64 %606
  %608 = load float, float* %607, align 4, !tbaa !8
  %609 = fmul float %14, %608
  store float %609, float* %607, align 4, !tbaa !8
  %610 = add i64 %4, 1336
  %611 = getelementptr inbounds float, float* %1, i64 %610
  %612 = load float, float* %611, align 4, !tbaa !8
  %613 = fmul float %25, %612
  store float %613, float* %611, align 4, !tbaa !8
  %614 = add i64 %4, 1344
  %615 = getelementptr inbounds float, float* %1, i64 %614
  %616 = load float, float* %615, align 4, !tbaa !8
  %617 = fmul float %110, %616
  store float %617, float* %615, align 4, !tbaa !8
  %618 = add i64 %4, 1352
  %619 = getelementptr inbounds float, float* %0, i64 %618
  %620 = load float, float* %619, align 4, !tbaa !8
  %621 = fmul float %70, %620
  store float %621, float* %619, align 4, !tbaa !8
  %622 = add i64 %4, 1360
  %623 = getelementptr inbounds float, float* %0, i64 %622
  %624 = load float, float* %623, align 4, !tbaa !8
  %625 = fmul float %70, %624
  store float %625, float* %623, align 4, !tbaa !8
  %626 = add i64 %4, 1368
  %627 = getelementptr inbounds float, float* %0, i64 %626
  %628 = load float, float* %627, align 4, !tbaa !8
  %629 = fmul float %70, %628
  store float %629, float* %627, align 4, !tbaa !8
  %630 = add i64 %4, 1376
  %631 = getelementptr inbounds float, float* %0, i64 %630
  %632 = load float, float* %631, align 4, !tbaa !8
  %633 = fmul float %70, %632
  store float %633, float* %631, align 4, !tbaa !8
  %634 = add i64 %4, 1384
  %635 = getelementptr inbounds float, float* %0, i64 %634
  %636 = load float, float* %635, align 4, !tbaa !8
  %637 = fmul float %70, %636
  store float %637, float* %635, align 4, !tbaa !8
  %638 = add i64 %4, 1392
  %639 = getelementptr inbounds float, float* %0, i64 %638
  %640 = load float, float* %639, align 4, !tbaa !8
  %641 = fmul float %70, %640
  store float %641, float* %639, align 4, !tbaa !8
  %642 = add i64 %4, 1400
  %643 = getelementptr inbounds float, float* %0, i64 %642
  %644 = load float, float* %643, align 4, !tbaa !8
  %645 = fmul float %70, %644
  store float %645, float* %643, align 4, !tbaa !8
  %646 = add i64 %4, 1408
  %647 = getelementptr inbounds float, float* %0, i64 %646
  %648 = load float, float* %647, align 4, !tbaa !8
  %649 = fmul float %70, %648
  store float %649, float* %647, align 4, !tbaa !8
  %650 = add i64 %4, 1416
  %651 = getelementptr inbounds float, float* %0, i64 %650
  %652 = load float, float* %651, align 4, !tbaa !8
  %653 = fmul float %70, %652
  store float %653, float* %651, align 4, !tbaa !8
  %654 = add i64 %4, 1432
  %655 = getelementptr inbounds float, float* %1, i64 %654
  %656 = load float, float* %655, align 4, !tbaa !8
  %657 = fmul float %70, %656
  store float %657, float* %655, align 4, !tbaa !8
  %658 = add i64 %4, 1440
  %659 = getelementptr inbounds float, float* %1, i64 %658
  %660 = load float, float* %659, align 4, !tbaa !8
  %661 = fmul float %70, %660
  store float %661, float* %659, align 4, !tbaa !8
  %662 = add i64 %4, 1448
  %663 = getelementptr inbounds float, float* %1, i64 %662
  %664 = load float, float* %663, align 4, !tbaa !8
  %665 = fmul float %70, %664
  store float %665, float* %663, align 4, !tbaa !8
  %666 = add i64 %4, 1456
  %667 = getelementptr inbounds float, float* %0, i64 %666
  %668 = load float, float* %667, align 4, !tbaa !8
  %669 = fmul float %14, %668
  store float %669, float* %667, align 4, !tbaa !8
  %670 = getelementptr inbounds float, float* %1, i64 %666
  %671 = load float, float* %670, align 4, !tbaa !8
  %672 = fmul float %70, %671
  store float %672, float* %670, align 4, !tbaa !8
  %673 = add i64 %4, 1464
  %674 = getelementptr inbounds float, float* %1, i64 %673
  %675 = load float, float* %674, align 4, !tbaa !8
  %676 = fmul float %70, %675
  store float %676, float* %674, align 4, !tbaa !8
  %677 = add i64 %4, 1480
  %678 = getelementptr inbounds float, float* %1, i64 %677
  %679 = load float, float* %678, align 4, !tbaa !8
  %680 = fmul float %85, %679
  store float %680, float* %678, align 4, !tbaa !8
  %681 = add i64 %4, 1496
  %682 = getelementptr inbounds float, float* %1, i64 %681
  %683 = load float, float* %682, align 4, !tbaa !8
  %684 = fmul float %25, %683
  store float %684, float* %682, align 4, !tbaa !8
  %685 = add i64 %4, 1504
  %686 = getelementptr inbounds float, float* %0, i64 %685
  %687 = load float, float* %686, align 4, !tbaa !8
  %688 = fmul float %7, %687
  store float %688, float* %686, align 4, !tbaa !8
  %689 = add i64 %4, 1512
  %690 = getelementptr inbounds float, float* %1, i64 %689
  %691 = load float, float* %690, align 4, !tbaa !8
  %692 = fmul float %110, %691
  store float %692, float* %690, align 4, !tbaa !8
  %693 = add i64 %4, 1584
  %694 = getelementptr inbounds float, float* %0, i64 %693
  %695 = load float, float* %694, align 4, !tbaa !8
  %696 = fmul float %110, %695
  store float %696, float* %694, align 4, !tbaa !8
  %697 = getelementptr inbounds float, float* %1, i64 %693
  %698 = load float, float* %697, align 4, !tbaa !8
  %699 = fmul float %70, %698
  store float %699, float* %697, align 4, !tbaa !8
  %700 = add i64 %4, 1592
  %701 = getelementptr inbounds float, float* %0, i64 %700
  %702 = load float, float* %701, align 4, !tbaa !8
  %703 = fmul float %110, %702
  store float %703, float* %701, align 4, !tbaa !8
  %704 = add i64 %4, 1600
  %705 = getelementptr inbounds float, float* %0, i64 %704
  %706 = load float, float* %705, align 4, !tbaa !8
  %707 = fmul float %110, %706
  store float %707, float* %705, align 4, !tbaa !8
  %708 = getelementptr inbounds float, float* %1, i64 %704
  %709 = load float, float* %708, align 4, !tbaa !8
  %710 = fmul float %70, %709
  store float %710, float* %708, align 4, !tbaa !8
  %711 = add i64 %4, 1608
  %712 = getelementptr inbounds float, float* %0, i64 %711
  %713 = load float, float* %712, align 4, !tbaa !8
  %714 = fmul float %110, %713
  store float %714, float* %712, align 4, !tbaa !8
  %715 = add i64 %4, 1616
  %716 = getelementptr inbounds float, float* %0, i64 %715
  %717 = load float, float* %716, align 4, !tbaa !8
  %718 = fmul float %110, %717
  store float %718, float* %716, align 4, !tbaa !8
  %719 = add i64 %4, 1624
  %720 = getelementptr inbounds float, float* %0, i64 %719
  %721 = load float, float* %720, align 4, !tbaa !8
  %722 = fmul float %110, %721
  store float %722, float* %720, align 4, !tbaa !8
  %723 = getelementptr inbounds float, float* %1, i64 %719
  %724 = load float, float* %723, align 4, !tbaa !8
  %725 = fmul float %70, %724
  store float %725, float* %723, align 4, !tbaa !8
  %726 = add i64 %4, 1632
  %727 = getelementptr inbounds float, float* %0, i64 %726
  %728 = load float, float* %727, align 4, !tbaa !8
  %729 = fmul float %110, %728
  store float %729, float* %727, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

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
!4 = !{i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*"}
!7 = !{!"", !"", !"const"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
