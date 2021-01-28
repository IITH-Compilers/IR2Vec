; ModuleID = 'shoc-1.1.5-S3D-qssab_kernel.cl'
source_filename = "shoc-1.1.5-S3D-qssab_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @qssab_kernel(float* nocapture readnone, float* nocapture readnone, float*) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %5 = add i64 %4, 696
  %6 = getelementptr inbounds float, float* %2, i64 %5
  %7 = load float, float* %6, align 4, !tbaa !8
  %8 = add i64 %4, 776
  %9 = getelementptr inbounds float, float* %2, i64 %8
  %10 = load float, float* %9, align 4, !tbaa !8
  %11 = add i64 %4, 872
  %12 = getelementptr inbounds float, float* %2, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !8
  %14 = tail call float @llvm.fmuladd.f32(float %10, float %13, float %7)
  %15 = add i64 %4, 936
  %16 = getelementptr inbounds float, float* %2, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !8
  %18 = fsub float -0.000000e+00, %10
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %17, float 1.000000e+00)
  %20 = fdiv float 1.000000e+00, %19, !fpmath !12
  %21 = fmul float %14, %20
  store float %21, float* %6, align 4, !tbaa !8
  %22 = add i64 %4, 728
  %23 = getelementptr inbounds float, float* %2, i64 %22
  %24 = load float, float* %23, align 4, !tbaa !8
  %25 = fmul float %24, %20
  store float %25, float* %23, align 4, !tbaa !8
  %26 = add i64 %4, 720
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !8
  %29 = fmul float %20, %28
  store float %29, float* %27, align 4, !tbaa !8
  %30 = add i64 %4, 256
  %31 = getelementptr inbounds float, float* %2, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !8
  %33 = add i64 %4, 296
  %34 = getelementptr inbounds float, float* %2, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !8
  %36 = add i64 %4, 432
  %37 = getelementptr inbounds float, float* %2, i64 %36
  %38 = load float, float* %37, align 4, !tbaa !8
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %32)
  %40 = add i64 %4, 456
  %41 = getelementptr inbounds float, float* %2, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !8
  %43 = fsub float -0.000000e+00, %35
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %42, float 1.000000e+00)
  %45 = fdiv float 1.000000e+00, %44, !fpmath !12
  %46 = fmul float %39, %45
  store float %46, float* %31, align 4, !tbaa !8
  %47 = add i64 %4, 288
  %48 = getelementptr inbounds float, float* %2, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !8
  %50 = fmul float %49, %45
  store float %50, float* %48, align 4, !tbaa !8
  %51 = add i64 %4, 272
  %52 = getelementptr inbounds float, float* %2, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !8
  %54 = fmul float %45, %53
  store float %54, float* %52, align 4, !tbaa !8
  %55 = add i64 %4, 264
  %56 = getelementptr inbounds float, float* %2, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !8
  %58 = fmul float %45, %57
  store float %58, float* %56, align 4, !tbaa !8
  %59 = add i64 %4, 320
  %60 = getelementptr inbounds float, float* %2, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !8
  %62 = fmul float %45, %61
  store float %62, float* %60, align 4, !tbaa !8
  %63 = add i64 %4, 304
  %64 = getelementptr inbounds float, float* %2, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !8
  %66 = fmul float %45, %65
  store float %66, float* %64, align 4, !tbaa !8
  %67 = add i64 %4, 344
  %68 = getelementptr inbounds float, float* %2, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !8
  %70 = add i64 %4, 416
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !8
  %73 = add i64 %4, 784
  %74 = getelementptr inbounds float, float* %2, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !8
  %76 = tail call float @llvm.fmuladd.f32(float %72, float %75, float %69)
  %77 = add i64 %4, 400
  %78 = getelementptr inbounds float, float* %2, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !8
  %80 = add i64 %4, 840
  %81 = getelementptr inbounds float, float* %2, i64 %80
  %82 = load float, float* %81, align 4, !tbaa !8
  %83 = tail call float @llvm.fmuladd.f32(float %72, float %82, float %79)
  %84 = add i64 %4, 816
  %85 = getelementptr inbounds float, float* %2, i64 %84
  %86 = load float, float* %85, align 4, !tbaa !8
  %87 = fsub float -0.000000e+00, %72
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %86, float 1.000000e+00)
  %89 = fdiv float 1.000000e+00, %88, !fpmath !12
  %90 = fmul float %76, %89
  store float %90, float* %68, align 4, !tbaa !8
  %91 = add i64 %4, 368
  %92 = getelementptr inbounds float, float* %2, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !8
  %94 = fmul float %93, %89
  store float %94, float* %92, align 4, !tbaa !8
  %95 = fmul float %83, %89
  store float %95, float* %78, align 4, !tbaa !8
  %96 = add i64 %4, 360
  %97 = getelementptr inbounds float, float* %2, i64 %96
  %98 = load float, float* %97, align 4, !tbaa !8
  %99 = fmul float %89, %98
  store float %99, float* %97, align 4, !tbaa !8
  %100 = add i64 %4, 352
  %101 = getelementptr inbounds float, float* %2, i64 %100
  %102 = load float, float* %101, align 4, !tbaa !8
  %103 = fmul float %89, %102
  store float %103, float* %101, align 4, !tbaa !8
  %104 = add i64 %4, 408
  %105 = getelementptr inbounds float, float* %2, i64 %104
  %106 = load float, float* %105, align 4, !tbaa !8
  %107 = fmul float %89, %106
  store float %107, float* %105, align 4, !tbaa !8
  %108 = add i64 %4, 608
  %109 = getelementptr inbounds float, float* %2, i64 %108
  %110 = load float, float* %109, align 4, !tbaa !8
  %111 = add i64 %4, 680
  %112 = getelementptr inbounds float, float* %2, i64 %111
  %113 = load float, float* %112, align 4, !tbaa !8
  %114 = tail call float @llvm.fmuladd.f32(float %113, float %75, float %110)
  %115 = add i64 %4, 640
  %116 = getelementptr inbounds float, float* %2, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !8
  %118 = tail call float @llvm.fmuladd.f32(float %113, float %86, float %117)
  %119 = fsub float -0.000000e+00, %113
  %120 = tail call float @llvm.fmuladd.f32(float %119, float %82, float 1.000000e+00)
  %121 = fdiv float 1.000000e+00, %120, !fpmath !12
  %122 = fmul float %114, %121
  %123 = fmul float %121, %118
  %124 = add i64 %4, 624
  %125 = getelementptr inbounds float, float* %2, i64 %124
  %126 = load float, float* %125, align 4, !tbaa !8
  %127 = fmul float %121, %126
  %128 = add i64 %4, 616
  %129 = getelementptr inbounds float, float* %2, i64 %128
  %130 = load float, float* %129, align 4, !tbaa !8
  %131 = fmul float %121, %130
  %132 = add i64 %4, 656
  %133 = getelementptr inbounds float, float* %2, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !8
  %135 = fmul float %121, %134
  store float %135, float* %133, align 4, !tbaa !8
  %136 = add i64 %4, 520
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = load float, float* %137, align 4, !tbaa !8
  %139 = tail call float @llvm.fmuladd.f32(float %66, float %138, float %46)
  %140 = add i64 %4, 576
  %141 = getelementptr inbounds float, float* %2, i64 %140
  %142 = load float, float* %141, align 4, !tbaa !8
  %143 = fmul float %66, %142
  %144 = add i64 %4, 312
  %145 = getelementptr inbounds float, float* %2, i64 %144
  %146 = add i64 %4, 536
  %147 = getelementptr inbounds float, float* %2, i64 %146
  %148 = load float, float* %147, align 4, !tbaa !8
  %149 = tail call float @llvm.fmuladd.f32(float %66, float %148, float %54)
  %150 = add i64 %4, 544
  %151 = getelementptr inbounds float, float* %2, i64 %150
  %152 = load float, float* %151, align 4, !tbaa !8
  %153 = fsub float -0.000000e+00, %66
  %154 = tail call float @llvm.fmuladd.f32(float %153, float %152, float 1.000000e+00)
  %155 = fdiv float 1.000000e+00, %154, !fpmath !12
  %156 = fmul float %139, %155
  %157 = fmul float %50, %155
  %158 = fmul float %143, %155
  %159 = fmul float %149, %155
  %160 = fmul float %58, %155
  %161 = fmul float %62, %155
  store float %161, float* %60, align 4, !tbaa !8
  %162 = tail call float @llvm.fmuladd.f32(float %135, float %138, float %122)
  %163 = fmul float %135, %152
  %164 = add i64 %4, 632
  %165 = getelementptr inbounds float, float* %2, i64 %164
  %166 = tail call float @llvm.fmuladd.f32(float %135, float %148, float %127)
  %167 = fsub float -0.000000e+00, %135
  %168 = tail call float @llvm.fmuladd.f32(float %167, float %142, float 1.000000e+00)
  %169 = fdiv float 1.000000e+00, %168, !fpmath !12
  %170 = fmul float %162, %169
  store float %170, float* %109, align 4, !tbaa !8
  %171 = fmul float %123, %169
  store float %171, float* %116, align 4, !tbaa !8
  %172 = fmul float %169, %163
  store float %172, float* %165, align 4, !tbaa !8
  %173 = fmul float %169, %166
  store float %173, float* %125, align 4, !tbaa !8
  %174 = fmul float %131, %169
  store float %174, float* %129, align 4, !tbaa !8
  %175 = add i64 %4, 168
  %176 = getelementptr inbounds float, float* %2, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !8
  %178 = add i64 %4, 216
  %179 = getelementptr inbounds float, float* %2, i64 %178
  %180 = load float, float* %179, align 4, !tbaa !8
  %181 = tail call float @llvm.fmuladd.f32(float %180, float %138, float %177)
  %182 = add i64 %4, 192
  %183 = getelementptr inbounds float, float* %2, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !8
  %185 = tail call float @llvm.fmuladd.f32(float %180, float %152, float %184)
  %186 = add i64 %4, 224
  %187 = getelementptr inbounds float, float* %2, i64 %186
  %188 = load float, float* %187, align 4, !tbaa !8
  %189 = tail call float @llvm.fmuladd.f32(float %180, float %142, float %188)
  %190 = fsub float -0.000000e+00, %180
  %191 = tail call float @llvm.fmuladd.f32(float %190, float %148, float 1.000000e+00)
  %192 = fdiv float 1.000000e+00, %191, !fpmath !12
  %193 = fmul float %181, %192
  %194 = add i64 %4, 200
  %195 = getelementptr inbounds float, float* %2, i64 %194
  %196 = load float, float* %195, align 4, !tbaa !8
  %197 = fmul float %192, %196
  %198 = fmul float %192, %185
  %199 = fmul float %192, %189
  %200 = add i64 %4, 176
  %201 = getelementptr inbounds float, float* %2, i64 %200
  %202 = load float, float* %201, align 4, !tbaa !8
  %203 = fmul float %192, %202
  store float %203, float* %201, align 4, !tbaa !8
  %204 = tail call float @llvm.fmuladd.f32(float %107, float %21, float %90)
  %205 = tail call float @llvm.fmuladd.f32(float %107, float %29, float %94)
  %206 = fsub float -0.000000e+00, %107
  %207 = tail call float @llvm.fmuladd.f32(float %206, float %25, float 1.000000e+00)
  %208 = fdiv float 1.000000e+00, %207, !fpmath !12
  %209 = fmul float %204, %208
  %210 = fmul float %205, %208
  %211 = fmul float %95, %208
  %212 = fmul float %99, %208
  %213 = fmul float %103, %208
  store float %213, float* %101, align 4, !tbaa !8
  %214 = tail call float @llvm.fmuladd.f32(float %161, float %21, float %156)
  %215 = tail call float @llvm.fmuladd.f32(float %161, float %25, float %157)
  %216 = fsub float -0.000000e+00, %161
  %217 = tail call float @llvm.fmuladd.f32(float %216, float %29, float 1.000000e+00)
  %218 = fdiv float 1.000000e+00, %217, !fpmath !12
  %219 = fmul float %214, %218
  %220 = fmul float %215, %218
  %221 = fmul float %158, %218
  %222 = fmul float %159, %218
  %223 = fmul float %160, %218
  store float %223, float* %56, align 4, !tbaa !8
  %224 = add i64 %4, 80
  %225 = getelementptr inbounds float, float* %2, i64 %224
  %226 = load float, float* %225, align 4, !tbaa !8
  %227 = tail call float @llvm.fmuladd.f32(float %213, float %226, float %209)
  %228 = add i64 %4, 104
  %229 = getelementptr inbounds float, float* %2, i64 %228
  %230 = load float, float* %229, align 4, !tbaa !8
  %231 = tail call float @llvm.fmuladd.f32(float %213, float %230, float %210)
  %232 = add i64 %4, 136
  %233 = getelementptr inbounds float, float* %2, i64 %232
  %234 = load float, float* %233, align 4, !tbaa !8
  %235 = tail call float @llvm.fmuladd.f32(float %213, float %234, float %211)
  %236 = add i64 %4, 96
  %237 = getelementptr inbounds float, float* %2, i64 %236
  %238 = load float, float* %237, align 4, !tbaa !8
  %239 = tail call float @llvm.fmuladd.f32(float %213, float %238, float %212)
  %240 = add i64 %4, 112
  %241 = getelementptr inbounds float, float* %2, i64 %240
  %242 = load float, float* %241, align 4, !tbaa !8
  %243 = fsub float -0.000000e+00, %213
  %244 = tail call float @llvm.fmuladd.f32(float %243, float %242, float 1.000000e+00)
  %245 = fdiv float 1.000000e+00, %244, !fpmath !12
  %246 = fmul float %227, %245
  %247 = fmul float %231, %245
  %248 = fmul float %235, %245
  %249 = fmul float %239, %245
  store float %249, float* %97, align 4, !tbaa !8
  %250 = tail call float @llvm.fmuladd.f32(float %223, float %226, float %219)
  %251 = tail call float @llvm.fmuladd.f32(float %223, float %242, float %220)
  %252 = tail call float @llvm.fmuladd.f32(float %223, float %234, float %221)
  %253 = tail call float @llvm.fmuladd.f32(float %223, float %238, float %222)
  %254 = fsub float -0.000000e+00, %223
  %255 = tail call float @llvm.fmuladd.f32(float %254, float %230, float 1.000000e+00)
  %256 = fdiv float 1.000000e+00, %255, !fpmath !12
  %257 = fmul float %250, %256
  %258 = fmul float %256, %251
  %259 = fmul float %256, %252
  %260 = fmul float %256, %253
  store float %260, float* %52, align 4, !tbaa !8
  %261 = tail call float @llvm.fmuladd.f32(float %174, float %226, float %170)
  %262 = tail call float @llvm.fmuladd.f32(float %174, float %242, float %171)
  %263 = tail call float @llvm.fmuladd.f32(float %174, float %230, float %172)
  %264 = tail call float @llvm.fmuladd.f32(float %174, float %238, float %173)
  %265 = fsub float -0.000000e+00, %174
  %266 = tail call float @llvm.fmuladd.f32(float %265, float %234, float 1.000000e+00)
  %267 = fdiv float 1.000000e+00, %266, !fpmath !12
  %268 = fmul float %261, %267
  %269 = fmul float %267, %262
  %270 = fmul float %263, %267
  %271 = fmul float %267, %264
  store float %271, float* %125, align 4, !tbaa !8
  %272 = tail call float @llvm.fmuladd.f32(float %203, float %226, float %193)
  %273 = tail call float @llvm.fmuladd.f32(float %203, float %242, float %197)
  %274 = tail call float @llvm.fmuladd.f32(float %203, float %230, float %198)
  %275 = tail call float @llvm.fmuladd.f32(float %203, float %234, float %199)
  %276 = fsub float -0.000000e+00, %203
  %277 = tail call float @llvm.fmuladd.f32(float %276, float %238, float 1.000000e+00)
  %278 = fdiv float 1.000000e+00, %277, !fpmath !12
  %279 = fmul float %272, %278
  store float %279, float* %176, align 4, !tbaa !8
  %280 = fmul float %278, %273
  store float %280, float* %195, align 4, !tbaa !8
  %281 = fmul float %274, %278
  store float %281, float* %183, align 4, !tbaa !8
  %282 = fmul float %275, %278
  store float %282, float* %187, align 4, !tbaa !8
  %283 = tail call float @llvm.fmuladd.f32(float %249, float %279, float %246)
  %284 = tail call float @llvm.fmuladd.f32(float %249, float %281, float %247)
  %285 = tail call float @llvm.fmuladd.f32(float %249, float %282, float %248)
  %286 = fsub float -0.000000e+00, %249
  %287 = tail call float @llvm.fmuladd.f32(float %286, float %280, float 1.000000e+00)
  %288 = fdiv float 1.000000e+00, %287, !fpmath !12
  %289 = fmul float %283, %288
  %290 = fmul float %284, %288
  %291 = fmul float %285, %288
  store float %291, float* %78, align 4, !tbaa !8
  %292 = tail call float @llvm.fmuladd.f32(float %260, float %279, float %257)
  %293 = tail call float @llvm.fmuladd.f32(float %260, float %280, float %258)
  %294 = tail call float @llvm.fmuladd.f32(float %260, float %282, float %259)
  %295 = fsub float -0.000000e+00, %260
  %296 = tail call float @llvm.fmuladd.f32(float %295, float %281, float 1.000000e+00)
  %297 = fdiv float 1.000000e+00, %296, !fpmath !12
  %298 = fmul float %292, %297
  %299 = fmul float %293, %297
  %300 = fmul float %294, %297
  store float %300, float* %145, align 4, !tbaa !8
  %301 = tail call float @llvm.fmuladd.f32(float %271, float %279, float %268)
  %302 = tail call float @llvm.fmuladd.f32(float %271, float %280, float %269)
  %303 = tail call float @llvm.fmuladd.f32(float %271, float %281, float %270)
  %304 = fsub float -0.000000e+00, %271
  %305 = tail call float @llvm.fmuladd.f32(float %304, float %282, float 1.000000e+00)
  %306 = fdiv float 1.000000e+00, %305, !fpmath !12
  %307 = fmul float %301, %306
  store float %307, float* %109, align 4, !tbaa !8
  %308 = fmul float %302, %306
  store float %308, float* %116, align 4, !tbaa !8
  %309 = fmul float %303, %306
  store float %309, float* %165, align 4, !tbaa !8
  %310 = tail call float @llvm.fmuladd.f32(float %291, float %307, float %289)
  %311 = tail call float @llvm.fmuladd.f32(float %291, float %309, float %290)
  %312 = fsub float -0.000000e+00, %291
  %313 = tail call float @llvm.fmuladd.f32(float %312, float %308, float 1.000000e+00)
  %314 = fdiv float 1.000000e+00, %313, !fpmath !12
  %315 = fmul float %310, %314
  %316 = fmul float %311, %314
  store float %316, float* %92, align 4, !tbaa !8
  %317 = tail call float @llvm.fmuladd.f32(float %300, float %307, float %298)
  %318 = tail call float @llvm.fmuladd.f32(float %300, float %308, float %299)
  %319 = fsub float -0.000000e+00, %300
  %320 = tail call float @llvm.fmuladd.f32(float %319, float %309, float 1.000000e+00)
  %321 = fdiv float 1.000000e+00, %320, !fpmath !12
  %322 = fmul float %317, %321
  store float %322, float* %31, align 4, !tbaa !8
  %323 = fmul float %318, %321
  store float %323, float* %48, align 4, !tbaa !8
  %324 = tail call float @llvm.fmuladd.f32(float %316, float %322, float %315)
  %325 = fsub float -0.000000e+00, %316
  %326 = tail call float @llvm.fmuladd.f32(float %325, float %323, float 1.000000e+00)
  %327 = fdiv float 1.000000e+00, %326, !fpmath !12
  %328 = fmul float %324, %327
  store float %328, float* %68, align 4, !tbaa !8
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
!7 = !{!"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
