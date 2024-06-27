; ModuleID = 'PE-benchmarks/boolean-parenthesization-problem.cpp'
source_filename = "PE-benchmarks/boolean-parenthesization-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.symbols = private unnamed_addr constant [5 x i8] c"TTFT\00", align 1
@__const.main.operators = private unnamed_addr constant [4 x i8] c"|&^\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_boolean_parenthesization_problem.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z12countParenthPcS_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %20 = load i32, ptr %6, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, ptr %6, align 4
  %23 = zext i32 %22 to i64
  %24 = call ptr @llvm.stacksave()
  store ptr %24, ptr %7, align 8
  %25 = mul nuw i64 %21, %23
  %26 = alloca i32, i64 %25, align 16
  store i64 %21, ptr %8, align 8
  store i64 %23, ptr %9, align 8
  %27 = load i32, ptr %6, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, ptr %6, align 4
  %30 = zext i32 %29 to i64
  %31 = mul nuw i64 %28, %30
  %32 = alloca i32, i64 %31, align 16
  store i64 %28, ptr %10, align 8
  store i64 %30, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %33

33:                                               ; preds = %70, %3
  %34 = load i32, ptr %12, align 4
  %35 = load i32, ptr %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8
  %39 = load i32, ptr %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 70
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i32, ptr %12, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %23
  %50 = getelementptr inbounds i32, ptr %26, i64 %49
  %51 = load i32, ptr %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %50, i64 %52
  store i32 %46, ptr %53, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 84
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load i32, ptr %12, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %30
  %66 = getelementptr inbounds i32, ptr %32, i64 %65
  %67 = load i32, ptr %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %66, i64 %68
  store i32 %62, ptr %69, align 4
  br label %70

70:                                               ; preds = %37
  %71 = load i32, ptr %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %12, align 4
  br label %33, !llvm.loop !6

73:                                               ; preds = %33
  store i32 1, ptr %13, align 4
  br label %74

74:                                               ; preds = %388, %73
  %75 = load i32, ptr %13, align 4
  %76 = load i32, ptr %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %391

78:                                               ; preds = %74
  store i32 0, ptr %14, align 4
  %79 = load i32, ptr %13, align 4
  store i32 %79, ptr %15, align 4
  br label %80

80:                                               ; preds = %382, %78
  %81 = load i32, ptr %15, align 4
  %82 = load i32, ptr %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %387

84:                                               ; preds = %80
  %85 = load i32, ptr %14, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, %23
  %88 = getelementptr inbounds i32, ptr %26, i64 %87
  %89 = load i32, ptr %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %88, i64 %90
  store i32 0, ptr %91, align 4
  %92 = load i32, ptr %14, align 4
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %93, %30
  %95 = getelementptr inbounds i32, ptr %32, i64 %94
  %96 = load i32, ptr %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %95, i64 %97
  store i32 0, ptr %98, align 4
  store i32 0, ptr %16, align 4
  br label %99

99:                                               ; preds = %378, %84
  %100 = load i32, ptr %16, align 4
  %101 = load i32, ptr %13, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %381

103:                                              ; preds = %99
  %104 = load i32, ptr %14, align 4
  %105 = load i32, ptr %16, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, ptr %17, align 4
  %107 = load i32, ptr %14, align 4
  %108 = sext i32 %107 to i64
  %109 = mul nsw i64 %108, %30
  %110 = getelementptr inbounds i32, ptr %32, i64 %109
  %111 = load i32, ptr %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %110, i64 %112
  %114 = load i32, ptr %113, align 4
  %115 = load i32, ptr %14, align 4
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, %23
  %118 = getelementptr inbounds i32, ptr %26, i64 %117
  %119 = load i32, ptr %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %118, i64 %120
  %122 = load i32, ptr %121, align 4
  %123 = add nsw i32 %114, %122
  store i32 %123, ptr %18, align 4
  %124 = load i32, ptr %17, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, %30
  %128 = getelementptr inbounds i32, ptr %32, i64 %127
  %129 = load i32, ptr %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %128, i64 %130
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %17, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %23
  %137 = getelementptr inbounds i32, ptr %26, i64 %136
  %138 = load i32, ptr %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %137, i64 %139
  %141 = load i32, ptr %140, align 4
  %142 = add nsw i32 %132, %141
  store i32 %142, ptr %19, align 4
  %143 = load ptr, ptr %5, align 8
  %144 = load i32, ptr %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %143, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 38
  br i1 %149, label %150, label %209

150:                                              ; preds = %103
  %151 = load i32, ptr %14, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %30
  %154 = getelementptr inbounds i32, ptr %32, i64 %153
  %155 = load i32, ptr %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %154, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %17, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, %30
  %163 = getelementptr inbounds i32, ptr %32, i64 %162
  %164 = load i32, ptr %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %163, i64 %165
  %167 = load i32, ptr %166, align 4
  %168 = mul nsw i32 %158, %167
  %169 = load i32, ptr %14, align 4
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, %30
  %172 = getelementptr inbounds i32, ptr %32, i64 %171
  %173 = load i32, ptr %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %172, i64 %174
  %176 = load i32, ptr %175, align 4
  %177 = add nsw i32 %176, %168
  store i32 %177, ptr %175, align 4
  %178 = load i32, ptr %18, align 4
  %179 = load i32, ptr %19, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, ptr %14, align 4
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 %182, %30
  %184 = getelementptr inbounds i32, ptr %32, i64 %183
  %185 = load i32, ptr %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, ptr %184, i64 %186
  %188 = load i32, ptr %187, align 4
  %189 = load i32, ptr %17, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %30
  %193 = getelementptr inbounds i32, ptr %32, i64 %192
  %194 = load i32, ptr %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %193, i64 %195
  %197 = load i32, ptr %196, align 4
  %198 = mul nsw i32 %188, %197
  %199 = sub nsw i32 %180, %198
  %200 = load i32, ptr %14, align 4
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %201, %23
  %203 = getelementptr inbounds i32, ptr %26, i64 %202
  %204 = load i32, ptr %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %203, i64 %205
  %207 = load i32, ptr %206, align 4
  %208 = add nsw i32 %207, %199
  store i32 %208, ptr %206, align 4
  br label %209

209:                                              ; preds = %150, %103
  %210 = load ptr, ptr %5, align 8
  %211 = load i32, ptr %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %210, i64 %212
  %214 = load i8, ptr %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 124
  br i1 %216, label %217, label %276

217:                                              ; preds = %209
  %218 = load i32, ptr %14, align 4
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %219, %23
  %221 = getelementptr inbounds i32, ptr %26, i64 %220
  %222 = load i32, ptr %17, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %221, i64 %223
  %225 = load i32, ptr %224, align 4
  %226 = load i32, ptr %17, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, %23
  %230 = getelementptr inbounds i32, ptr %26, i64 %229
  %231 = load i32, ptr %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %230, i64 %232
  %234 = load i32, ptr %233, align 4
  %235 = mul nsw i32 %225, %234
  %236 = load i32, ptr %14, align 4
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %237, %23
  %239 = getelementptr inbounds i32, ptr %26, i64 %238
  %240 = load i32, ptr %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, ptr %239, i64 %241
  %243 = load i32, ptr %242, align 4
  %244 = add nsw i32 %243, %235
  store i32 %244, ptr %242, align 4
  %245 = load i32, ptr %18, align 4
  %246 = load i32, ptr %19, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, ptr %14, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, %23
  %251 = getelementptr inbounds i32, ptr %26, i64 %250
  %252 = load i32, ptr %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %251, i64 %253
  %255 = load i32, ptr %254, align 4
  %256 = load i32, ptr %17, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, %23
  %260 = getelementptr inbounds i32, ptr %26, i64 %259
  %261 = load i32, ptr %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, ptr %260, i64 %262
  %264 = load i32, ptr %263, align 4
  %265 = mul nsw i32 %255, %264
  %266 = sub nsw i32 %247, %265
  %267 = load i32, ptr %14, align 4
  %268 = sext i32 %267 to i64
  %269 = mul nsw i64 %268, %30
  %270 = getelementptr inbounds i32, ptr %32, i64 %269
  %271 = load i32, ptr %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, ptr %270, i64 %272
  %274 = load i32, ptr %273, align 4
  %275 = add nsw i32 %274, %266
  store i32 %275, ptr %273, align 4
  br label %276

276:                                              ; preds = %217, %209
  %277 = load ptr, ptr %5, align 8
  %278 = load i32, ptr %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %277, i64 %279
  %281 = load i8, ptr %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 94
  br i1 %283, label %284, label %377

284:                                              ; preds = %276
  %285 = load i32, ptr %14, align 4
  %286 = sext i32 %285 to i64
  %287 = mul nsw i64 %286, %23
  %288 = getelementptr inbounds i32, ptr %26, i64 %287
  %289 = load i32, ptr %17, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %288, i64 %290
  %292 = load i32, ptr %291, align 4
  %293 = load i32, ptr %17, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = mul nsw i64 %295, %30
  %297 = getelementptr inbounds i32, ptr %32, i64 %296
  %298 = load i32, ptr %15, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, ptr %297, i64 %299
  %301 = load i32, ptr %300, align 4
  %302 = mul nsw i32 %292, %301
  %303 = load i32, ptr %14, align 4
  %304 = sext i32 %303 to i64
  %305 = mul nsw i64 %304, %30
  %306 = getelementptr inbounds i32, ptr %32, i64 %305
  %307 = load i32, ptr %17, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, ptr %306, i64 %308
  %310 = load i32, ptr %309, align 4
  %311 = load i32, ptr %17, align 4
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, %23
  %315 = getelementptr inbounds i32, ptr %26, i64 %314
  %316 = load i32, ptr %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, ptr %315, i64 %317
  %319 = load i32, ptr %318, align 4
  %320 = mul nsw i32 %310, %319
  %321 = add nsw i32 %302, %320
  %322 = load i32, ptr %14, align 4
  %323 = sext i32 %322 to i64
  %324 = mul nsw i64 %323, %30
  %325 = getelementptr inbounds i32, ptr %32, i64 %324
  %326 = load i32, ptr %15, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, ptr %325, i64 %327
  %329 = load i32, ptr %328, align 4
  %330 = add nsw i32 %329, %321
  store i32 %330, ptr %328, align 4
  %331 = load i32, ptr %14, align 4
  %332 = sext i32 %331 to i64
  %333 = mul nsw i64 %332, %30
  %334 = getelementptr inbounds i32, ptr %32, i64 %333
  %335 = load i32, ptr %17, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, ptr %334, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = load i32, ptr %17, align 4
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = mul nsw i64 %341, %30
  %343 = getelementptr inbounds i32, ptr %32, i64 %342
  %344 = load i32, ptr %15, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, ptr %343, i64 %345
  %347 = load i32, ptr %346, align 4
  %348 = mul nsw i32 %338, %347
  %349 = load i32, ptr %14, align 4
  %350 = sext i32 %349 to i64
  %351 = mul nsw i64 %350, %23
  %352 = getelementptr inbounds i32, ptr %26, i64 %351
  %353 = load i32, ptr %17, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, ptr %352, i64 %354
  %356 = load i32, ptr %355, align 4
  %357 = load i32, ptr %17, align 4
  %358 = add nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = mul nsw i64 %359, %23
  %361 = getelementptr inbounds i32, ptr %26, i64 %360
  %362 = load i32, ptr %15, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, ptr %361, i64 %363
  %365 = load i32, ptr %364, align 4
  %366 = mul nsw i32 %356, %365
  %367 = add nsw i32 %348, %366
  %368 = load i32, ptr %14, align 4
  %369 = sext i32 %368 to i64
  %370 = mul nsw i64 %369, %23
  %371 = getelementptr inbounds i32, ptr %26, i64 %370
  %372 = load i32, ptr %15, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, ptr %371, i64 %373
  %375 = load i32, ptr %374, align 4
  %376 = add nsw i32 %375, %367
  store i32 %376, ptr %374, align 4
  br label %377

377:                                              ; preds = %284, %276
  br label %378

378:                                              ; preds = %377
  %379 = load i32, ptr %16, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, ptr %16, align 4
  br label %99, !llvm.loop !8

381:                                              ; preds = %99
  br label %382

382:                                              ; preds = %381
  %383 = load i32, ptr %14, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, ptr %14, align 4
  %385 = load i32, ptr %15, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, ptr %15, align 4
  br label %80, !llvm.loop !9

387:                                              ; preds = %80
  br label %388

388:                                              ; preds = %387
  %389 = load i32, ptr %13, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %13, align 4
  br label %74, !llvm.loop !10

391:                                              ; preds = %74
  %392 = mul nsw i64 0, %30
  %393 = getelementptr inbounds i32, ptr %32, i64 %392
  %394 = load i32, ptr %6, align 4
  %395 = sub nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, ptr %393, i64 %396
  %398 = load i32, ptr %397, align 4
  %399 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore(ptr %399)
  ret i32 %398
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #5

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #6 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.symbols, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 @__const.main.operators, i64 4, i1 false)
  %5 = getelementptr inbounds [5 x i8], ptr %2, i64 0, i64 0
  %6 = call i64 @strlen(ptr noundef %5) #9
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds [5 x i8], ptr %2, i64 0, i64 0
  %9 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 0
  %10 = load i32, ptr %4, align 4
  %11 = call noundef i32 @_Z12countParenthPcS_i(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_boolean_parenthesization_problem.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231208085846+6009708b4367-1~exp1~20231208085949.74)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
