; ModuleID = 'shoc-1.1.5-S3D-ratt2_kernel.cl'
source_filename = "shoc-1.1.5-S3D-ratt2_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ratt2_kernel(float* nocapture readonly, float* readonly, float*, float* nocapture readonly, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = getelementptr inbounds float, float* %0, i64 %6
  %8 = load float, float* %7, align 4, !tbaa !8
  %9 = fmul float %8, %4
  %10 = fmul float %9, 0x4193D2C640000000
  %11 = fdiv float 1.000000e+00, %10, !fpmath !12
  %12 = fmul float %11, 1.013250e+06
  %13 = add i64 %6, 8
  %14 = getelementptr inbounds float, float* %3, i64 %13
  %15 = load float, float* %14, align 4, !tbaa !8
  %16 = add i64 %6, 24
  %17 = getelementptr inbounds float, float* %3, i64 %16
  %18 = load float, float* %17, align 4, !tbaa !8
  %19 = fmul float %15, %18
  %20 = add i64 %6, 16
  %21 = getelementptr inbounds float, float* %3, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !8
  %23 = add i64 %6, 32
  %24 = getelementptr inbounds float, float* %3, i64 %23
  %25 = load float, float* %24, align 4, !tbaa !8
  %26 = fmul float %22, %25
  %27 = fdiv float 1.000000e+00, %26, !fpmath !12
  %28 = fmul float %19, %27
  %29 = getelementptr inbounds float, float* %1, i64 %6
  %30 = load float, float* %29, align 4, !tbaa !8
  %31 = tail call float @_Z4fminff(float %28, float 0x4415AF1D80000000) #2
  %32 = fmul float %30, %31
  %33 = getelementptr inbounds float, float* %2, i64 %6
  store float %32, float* %33, align 4, !tbaa !8
  %34 = getelementptr inbounds float, float* %3, i64 %6
  %35 = load float, float* %34, align 4, !tbaa !8
  %36 = load float, float* %21, align 4, !tbaa !8
  %37 = fmul float %35, %36
  %38 = load float, float* %14, align 4, !tbaa !8
  %39 = load float, float* %24, align 4, !tbaa !8
  %40 = fmul float %38, %39
  %41 = fdiv float 1.000000e+00, %40, !fpmath !12
  %42 = fmul float %37, %41
  %43 = getelementptr inbounds float, float* %1, i64 %13
  %44 = load float, float* %43, align 4, !tbaa !8
  %45 = tail call float @_Z4fminff(float %42, float 0x4415AF1D80000000) #2
  %46 = fmul float %44, %45
  %47 = getelementptr inbounds float, float* %2, i64 %13
  store float %46, float* %47, align 4, !tbaa !8
  %48 = load float, float* %34, align 4, !tbaa !8
  %49 = load float, float* %24, align 4, !tbaa !8
  %50 = fmul float %48, %49
  %51 = load float, float* %14, align 4, !tbaa !8
  %52 = add i64 %6, 40
  %53 = getelementptr inbounds float, float* %3, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = fmul float %51, %54
  %56 = fdiv float 1.000000e+00, %55, !fpmath !12
  %57 = fmul float %50, %56
  %58 = getelementptr inbounds float, float* %1, i64 %20
  %59 = load float, float* %58, align 4, !tbaa !8
  %60 = tail call float @_Z4fminff(float %57, float 0x4415AF1D80000000) #2
  %61 = fmul float %59, %60
  %62 = getelementptr inbounds float, float* %2, i64 %20
  store float %61, float* %62, align 4, !tbaa !8
  %63 = load float, float* %24, align 4, !tbaa !8
  %64 = fmul float %63, %63
  %65 = load float, float* %21, align 4, !tbaa !8
  %66 = load float, float* %53, align 4, !tbaa !8
  %67 = fmul float %65, %66
  %68 = fdiv float 1.000000e+00, %67, !fpmath !12
  %69 = fmul float %64, %68
  %70 = getelementptr inbounds float, float* %1, i64 %16
  %71 = load float, float* %70, align 4, !tbaa !8
  %72 = tail call float @_Z4fminff(float %69, float 0x4415AF1D80000000) #2
  %73 = fmul float %71, %72
  %74 = getelementptr inbounds float, float* %2, i64 %16
  store float %73, float* %74, align 4, !tbaa !8
  %75 = load float, float* %14, align 4, !tbaa !8
  %76 = fmul float %75, %75
  %77 = fmul float %12, %76
  %78 = load float, float* %34, align 4, !tbaa !8
  %79 = fdiv float 1.000000e+00, %78, !fpmath !12
  %80 = fmul float %77, %79
  %81 = getelementptr inbounds float, float* %1, i64 %23
  %82 = load float, float* %81, align 4, !tbaa !8
  %83 = tail call float @_Z4fminff(float %80, float 0x4415AF1D80000000) #2
  %84 = fmul float %82, %83
  %85 = getelementptr inbounds float, float* %2, i64 %23
  store float %84, float* %85, align 4, !tbaa !8
  %86 = load float, float* %14, align 4, !tbaa !8
  %87 = fmul float %86, %86
  %88 = fmul float %12, %87
  %89 = load float, float* %34, align 4, !tbaa !8
  %90 = fdiv float 1.000000e+00, %89, !fpmath !12
  %91 = fmul float %88, %90
  %92 = getelementptr inbounds float, float* %1, i64 %52
  %93 = load float, float* %92, align 4, !tbaa !8
  %94 = tail call float @_Z4fminff(float %91, float 0x4415AF1D80000000) #2
  %95 = fmul float %93, %94
  %96 = getelementptr inbounds float, float* %2, i64 %52
  store float %95, float* %96, align 4, !tbaa !8
  %97 = load float, float* %14, align 4, !tbaa !8
  %98 = fmul float %97, %97
  %99 = fmul float %12, %98
  %100 = load float, float* %34, align 4, !tbaa !8
  %101 = fdiv float 1.000000e+00, %100, !fpmath !12
  %102 = fmul float %99, %101
  %103 = add i64 %6, 48
  %104 = getelementptr inbounds float, float* %1, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !8
  %106 = tail call float @_Z4fminff(float %102, float 0x4415AF1D80000000) #2
  %107 = fmul float %105, %106
  %108 = getelementptr inbounds float, float* %2, i64 %103
  store float %107, float* %108, align 4, !tbaa !8
  %109 = load float, float* %14, align 4, !tbaa !8
  %110 = fmul float %109, %109
  %111 = fmul float %12, %110
  %112 = load float, float* %34, align 4, !tbaa !8
  %113 = fdiv float 1.000000e+00, %112, !fpmath !12
  %114 = fmul float %111, %113
  %115 = add i64 %6, 56
  %116 = getelementptr inbounds float, float* %1, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !8
  %118 = tail call float @_Z4fminff(float %114, float 0x4415AF1D80000000) #2
  %119 = fmul float %117, %118
  %120 = getelementptr inbounds float, float* %2, i64 %115
  store float %119, float* %120, align 4, !tbaa !8
  %121 = load float, float* %14, align 4, !tbaa !8
  %122 = load float, float* %24, align 4, !tbaa !8
  %123 = fmul float %121, %122
  %124 = fmul float %12, %123
  %125 = load float, float* %53, align 4, !tbaa !8
  %126 = fdiv float 1.000000e+00, %125, !fpmath !12
  %127 = fmul float %124, %126
  %128 = add i64 %6, 64
  %129 = getelementptr inbounds float, float* %1, i64 %128
  %130 = load float, float* %129, align 4, !tbaa !8
  %131 = tail call float @_Z4fminff(float %127, float 0x4415AF1D80000000) #2
  %132 = fmul float %130, %131
  %133 = getelementptr inbounds float, float* %2, i64 %128
  store float %132, float* %133, align 4, !tbaa !8
  %134 = load float, float* %14, align 4, !tbaa !8
  %135 = load float, float* %21, align 4, !tbaa !8
  %136 = fmul float %134, %135
  %137 = fmul float %12, %136
  %138 = load float, float* %24, align 4, !tbaa !8
  %139 = fdiv float 1.000000e+00, %138, !fpmath !12
  %140 = fmul float %137, %139
  %141 = add i64 %6, 72
  %142 = getelementptr inbounds float, float* %1, i64 %141
  %143 = load float, float* %142, align 4, !tbaa !8
  %144 = tail call float @_Z4fminff(float %140, float 0x4415AF1D80000000) #2
  %145 = fmul float %143, %144
  %146 = getelementptr inbounds float, float* %2, i64 %141
  store float %145, float* %146, align 4, !tbaa !8
  %147 = load float, float* %21, align 4, !tbaa !8
  %148 = fmul float %147, %147
  %149 = fmul float %12, %148
  %150 = load float, float* %17, align 4, !tbaa !8
  %151 = fdiv float 1.000000e+00, %150, !fpmath !12
  %152 = fmul float %149, %151
  %153 = add i64 %6, 80
  %154 = getelementptr inbounds float, float* %1, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !8
  %156 = tail call float @_Z4fminff(float %152, float 0x4415AF1D80000000) #2
  %157 = fmul float %155, %156
  %158 = getelementptr inbounds float, float* %2, i64 %153
  store float %157, float* %158, align 4, !tbaa !8
  %159 = load float, float* %14, align 4, !tbaa !8
  %160 = load float, float* %17, align 4, !tbaa !8
  %161 = fmul float %159, %160
  %162 = fmul float %12, %161
  %163 = getelementptr inbounds float, float* %3, i64 %103
  %164 = load float, float* %163, align 4, !tbaa !8
  %165 = fdiv float 1.000000e+00, %164, !fpmath !12
  %166 = fmul float %162, %165
  %167 = add i64 %6, 88
  %168 = getelementptr inbounds float, float* %1, i64 %167
  %169 = load float, float* %168, align 4, !tbaa !8
  %170 = tail call float @_Z4fminff(float %166, float 0x4415AF1D80000000) #2
  %171 = fmul float %169, %170
  %172 = getelementptr inbounds float, float* %2, i64 %167
  store float %171, float* %172, align 4, !tbaa !8
  %173 = load float, float* %14, align 4, !tbaa !8
  %174 = load float, float* %17, align 4, !tbaa !8
  %175 = fmul float %173, %174
  %176 = fmul float %12, %175
  %177 = load float, float* %163, align 4, !tbaa !8
  %178 = fdiv float 1.000000e+00, %177, !fpmath !12
  %179 = fmul float %176, %178
  %180 = add i64 %6, 96
  %181 = getelementptr inbounds float, float* %1, i64 %180
  %182 = load float, float* %181, align 4, !tbaa !8
  %183 = tail call float @_Z4fminff(float %179, float 0x4415AF1D80000000) #2
  %184 = fmul float %182, %183
  %185 = getelementptr inbounds float, float* %2, i64 %180
  store float %184, float* %185, align 4, !tbaa !8
  %186 = load float, float* %14, align 4, !tbaa !8
  %187 = load float, float* %17, align 4, !tbaa !8
  %188 = fmul float %186, %187
  %189 = fmul float %12, %188
  %190 = load float, float* %163, align 4, !tbaa !8
  %191 = fdiv float 1.000000e+00, %190, !fpmath !12
  %192 = fmul float %189, %191
  %193 = add i64 %6, 104
  %194 = getelementptr inbounds float, float* %1, i64 %193
  %195 = load float, float* %194, align 4, !tbaa !8
  %196 = tail call float @_Z4fminff(float %192, float 0x4415AF1D80000000) #2
  %197 = fmul float %195, %196
  %198 = getelementptr inbounds float, float* %2, i64 %193
  store float %197, float* %198, align 4, !tbaa !8
  %199 = load float, float* %14, align 4, !tbaa !8
  %200 = load float, float* %17, align 4, !tbaa !8
  %201 = fmul float %199, %200
  %202 = fmul float %12, %201
  %203 = load float, float* %163, align 4, !tbaa !8
  %204 = fdiv float 1.000000e+00, %203, !fpmath !12
  %205 = fmul float %202, %204
  %206 = add i64 %6, 112
  %207 = getelementptr inbounds float, float* %1, i64 %206
  %208 = load float, float* %207, align 4, !tbaa !8
  %209 = tail call float @_Z4fminff(float %205, float 0x4415AF1D80000000) #2
  %210 = fmul float %208, %209
  %211 = getelementptr inbounds float, float* %2, i64 %206
  store float %210, float* %211, align 4, !tbaa !8
  %212 = load float, float* %24, align 4, !tbaa !8
  %213 = fmul float %212, %212
  %214 = fmul float %12, %213
  %215 = getelementptr inbounds float, float* %3, i64 %115
  %216 = load float, float* %215, align 4, !tbaa !8
  %217 = fdiv float 1.000000e+00, %216, !fpmath !12
  %218 = fmul float %214, %217
  %219 = add i64 %6, 120
  %220 = getelementptr inbounds float, float* %1, i64 %219
  %221 = load float, float* %220, align 4, !tbaa !8
  %222 = tail call float @_Z4fminff(float %218, float 0x4415AF1D80000000) #2
  %223 = fmul float %221, %222
  %224 = getelementptr inbounds float, float* %2, i64 %219
  store float %223, float* %224, align 4, !tbaa !8
  %225 = load float, float* %14, align 4, !tbaa !8
  %226 = load float, float* %163, align 4, !tbaa !8
  %227 = fmul float %225, %226
  %228 = load float, float* %21, align 4, !tbaa !8
  %229 = load float, float* %53, align 4, !tbaa !8
  %230 = fmul float %228, %229
  %231 = fdiv float 1.000000e+00, %230, !fpmath !12
  %232 = fmul float %227, %231
  %233 = add i64 %6, 128
  %234 = getelementptr inbounds float, float* %1, i64 %233
  %235 = load float, float* %234, align 4, !tbaa !8
  %236 = tail call float @_Z4fminff(float %232, float 0x4415AF1D80000000) #2
  %237 = fmul float %235, %236
  %238 = getelementptr inbounds float, float* %2, i64 %233
  store float %237, float* %238, align 4, !tbaa !8
  %239 = load float, float* %14, align 4, !tbaa !8
  %240 = load float, float* %163, align 4, !tbaa !8
  %241 = fmul float %239, %240
  %242 = load float, float* %34, align 4, !tbaa !8
  %243 = load float, float* %17, align 4, !tbaa !8
  %244 = fmul float %242, %243
  %245 = fdiv float 1.000000e+00, %244, !fpmath !12
  %246 = fmul float %241, %245
  %247 = add i64 %6, 136
  %248 = getelementptr inbounds float, float* %1, i64 %247
  %249 = load float, float* %248, align 4, !tbaa !8
  %250 = tail call float @_Z4fminff(float %246, float 0x4415AF1D80000000) #2
  %251 = fmul float %249, %250
  %252 = getelementptr inbounds float, float* %2, i64 %247
  store float %251, float* %252, align 4, !tbaa !8
  %253 = load float, float* %14, align 4, !tbaa !8
  %254 = load float, float* %163, align 4, !tbaa !8
  %255 = fmul float %253, %254
  %256 = load float, float* %24, align 4, !tbaa !8
  %257 = fmul float %256, %256
  %258 = fdiv float 1.000000e+00, %257, !fpmath !12
  %259 = fmul float %255, %258
  %260 = add i64 %6, 144
  %261 = getelementptr inbounds float, float* %1, i64 %260
  %262 = load float, float* %261, align 4, !tbaa !8
  %263 = tail call float @_Z4fminff(float %259, float 0x4415AF1D80000000) #2
  %264 = fmul float %262, %263
  %265 = getelementptr inbounds float, float* %2, i64 %260
  store float %264, float* %265, align 4, !tbaa !8
  %266 = load float, float* %21, align 4, !tbaa !8
  %267 = load float, float* %163, align 4, !tbaa !8
  %268 = fmul float %266, %267
  %269 = load float, float* %17, align 4, !tbaa !8
  %270 = load float, float* %24, align 4, !tbaa !8
  %271 = fmul float %269, %270
  %272 = fdiv float 1.000000e+00, %271, !fpmath !12
  %273 = fmul float %268, %272
  %274 = add i64 %6, 152
  %275 = getelementptr inbounds float, float* %1, i64 %274
  %276 = load float, float* %275, align 4, !tbaa !8
  %277 = tail call float @_Z4fminff(float %273, float 0x4415AF1D80000000) #2
  %278 = fmul float %276, %277
  %279 = getelementptr inbounds float, float* %2, i64 %274
  store float %278, float* %279, align 4, !tbaa !8
  %280 = load float, float* %24, align 4, !tbaa !8
  %281 = load float, float* %163, align 4, !tbaa !8
  %282 = fmul float %280, %281
  %283 = load float, float* %17, align 4, !tbaa !8
  %284 = load float, float* %53, align 4, !tbaa !8
  %285 = fmul float %283, %284
  %286 = fdiv float 1.000000e+00, %285, !fpmath !12
  %287 = fmul float %282, %286
  %288 = add i64 %6, 160
  %289 = getelementptr inbounds float, float* %1, i64 %288
  %290 = load float, float* %289, align 4, !tbaa !8
  %291 = tail call float @_Z4fminff(float %287, float 0x4415AF1D80000000) #2
  %292 = fmul float %290, %291
  %293 = getelementptr inbounds float, float* %2, i64 %288
  store float %292, float* %293, align 4, !tbaa !8
  %294 = load float, float* %163, align 4, !tbaa !8
  %295 = fmul float %294, %294
  %296 = load float, float* %17, align 4, !tbaa !8
  %297 = load float, float* %215, align 4, !tbaa !8
  %298 = fmul float %296, %297
  %299 = fdiv float 1.000000e+00, %298, !fpmath !12
  %300 = fmul float %295, %299
  %301 = add i64 %6, 168
  %302 = getelementptr inbounds float, float* %1, i64 %301
  %303 = load float, float* %302, align 4, !tbaa !8
  %304 = tail call float @_Z4fminff(float %300, float 0x4415AF1D80000000) #2
  %305 = fmul float %303, %304
  %306 = getelementptr inbounds float, float* %2, i64 %301
  store float %305, float* %306, align 4, !tbaa !8
  %307 = load float, float* %163, align 4, !tbaa !8
  %308 = fmul float %307, %307
  %309 = load float, float* %17, align 4, !tbaa !8
  %310 = load float, float* %215, align 4, !tbaa !8
  %311 = fmul float %309, %310
  %312 = fdiv float 1.000000e+00, %311, !fpmath !12
  %313 = fmul float %308, %312
  %314 = add i64 %6, 176
  %315 = getelementptr inbounds float, float* %1, i64 %314
  %316 = load float, float* %315, align 4, !tbaa !8
  %317 = tail call float @_Z4fminff(float %313, float 0x4415AF1D80000000) #2
  %318 = fmul float %316, %317
  %319 = getelementptr inbounds float, float* %2, i64 %314
  store float %318, float* %319, align 4, !tbaa !8
  %320 = load float, float* %14, align 4, !tbaa !8
  %321 = load float, float* %215, align 4, !tbaa !8
  %322 = fmul float %320, %321
  %323 = load float, float* %34, align 4, !tbaa !8
  %324 = load float, float* %163, align 4, !tbaa !8
  %325 = fmul float %323, %324
  %326 = fdiv float 1.000000e+00, %325, !fpmath !12
  %327 = fmul float %322, %326
  %328 = add i64 %6, 184
  %329 = getelementptr inbounds float, float* %1, i64 %328
  %330 = load float, float* %329, align 4, !tbaa !8
  %331 = tail call float @_Z4fminff(float %327, float 0x4415AF1D80000000) #2
  %332 = fmul float %330, %331
  %333 = getelementptr inbounds float, float* %2, i64 %328
  store float %332, float* %333, align 4, !tbaa !8
  %334 = load float, float* %14, align 4, !tbaa !8
  %335 = load float, float* %215, align 4, !tbaa !8
  %336 = fmul float %334, %335
  %337 = load float, float* %24, align 4, !tbaa !8
  %338 = load float, float* %53, align 4, !tbaa !8
  %339 = fmul float %337, %338
  %340 = fdiv float 1.000000e+00, %339, !fpmath !12
  %341 = fmul float %336, %340
  %342 = add i64 %6, 192
  %343 = getelementptr inbounds float, float* %1, i64 %342
  %344 = load float, float* %343, align 4, !tbaa !8
  %345 = tail call float @_Z4fminff(float %341, float 0x4415AF1D80000000) #2
  %346 = fmul float %344, %345
  %347 = getelementptr inbounds float, float* %2, i64 %342
  store float %346, float* %347, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z4fminff(float, float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"float"}
!7 = !{!"const", !"const", !"", !"const", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
