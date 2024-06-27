; ModuleID = 'PE-benchmarks/mobile-numeric-keypad-problem_space_optm.cpp'
source_filename = "PE-benchmarks/mobile-numeric-keypad-problem_space_optm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.keypad = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"456", [3 x i8] c"789", [3 x i8] c"*0#"], align 1
@.str = private unnamed_addr constant [36 x i8] c"Count for numbers of length %d: %dn\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z8getCountPA3_ci(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [10 x i32], align 16
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, ptr %3, align 4
  br label %300

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 10, ptr %3, align 4
  br label %300

22:                                               ; preds = %18
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %8, align 4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load i32, ptr %8, align 4
  %25 = icmp sle i32 %24, 9
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 %28
  store i32 1, ptr %29, align 4
  br label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %8, align 4
  br label %23, !llvm.loop !6

33:                                               ; preds = %23
  store i32 2, ptr %9, align 4
  br label %34

34:                                               ; preds = %262, %33
  %35 = load i32, ptr %9, align 4
  %36 = load i32, ptr %5, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %265

38:                                               ; preds = %34
  %39 = load i32, ptr %10, align 4
  %40 = sub nsw i32 1, %39
  store i32 %40, ptr %10, align 4
  %41 = load i32, ptr %10, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %152

43:                                               ; preds = %38
  %44 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 0
  %45 = load i32, ptr %44, align 16
  %46 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 8
  %47 = load i32, ptr %46, align 16
  %48 = add nsw i32 %45, %47
  %49 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 0
  store i32 %48, ptr %49, align 16
  %50 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 2
  %53 = load i32, ptr %52, align 8
  %54 = add nsw i32 %51, %53
  %55 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 4
  %56 = load i32, ptr %55, align 16
  %57 = add nsw i32 %54, %56
  %58 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 2
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 1
  %62 = load i32, ptr %61, align 4
  %63 = add nsw i32 %60, %62
  %64 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 3
  %65 = load i32, ptr %64, align 4
  %66 = add nsw i32 %63, %65
  %67 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 5
  %68 = load i32, ptr %67, align 4
  %69 = add nsw i32 %66, %68
  %70 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 2
  store i32 %69, ptr %70, align 8
  %71 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 2
  %74 = load i32, ptr %73, align 8
  %75 = add nsw i32 %72, %74
  %76 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 6
  %77 = load i32, ptr %76, align 8
  %78 = add nsw i32 %75, %77
  %79 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 3
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 4
  %81 = load i32, ptr %80, align 16
  %82 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 1
  %83 = load i32, ptr %82, align 4
  %84 = add nsw i32 %81, %83
  %85 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 5
  %86 = load i32, ptr %85, align 4
  %87 = add nsw i32 %84, %86
  %88 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 7
  %89 = load i32, ptr %88, align 4
  %90 = add nsw i32 %87, %89
  %91 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 4
  store i32 %90, ptr %91, align 16
  %92 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 5
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 2
  %95 = load i32, ptr %94, align 8
  %96 = add nsw i32 %93, %95
  %97 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 4
  %98 = load i32, ptr %97, align 16
  %99 = add nsw i32 %96, %98
  %100 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 8
  %101 = load i32, ptr %100, align 16
  %102 = add nsw i32 %99, %101
  %103 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 6
  %104 = load i32, ptr %103, align 8
  %105 = add nsw i32 %102, %104
  %106 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 5
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 6
  %108 = load i32, ptr %107, align 8
  %109 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 3
  %110 = load i32, ptr %109, align 4
  %111 = add nsw i32 %108, %110
  %112 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 5
  %113 = load i32, ptr %112, align 4
  %114 = add nsw i32 %111, %113
  %115 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 9
  %116 = load i32, ptr %115, align 4
  %117 = add nsw i32 %114, %116
  %118 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 6
  store i32 %117, ptr %118, align 8
  %119 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 7
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 4
  %122 = load i32, ptr %121, align 16
  %123 = add nsw i32 %120, %122
  %124 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 8
  %125 = load i32, ptr %124, align 16
  %126 = add nsw i32 %123, %125
  %127 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 7
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 8
  %129 = load i32, ptr %128, align 16
  %130 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 0
  %131 = load i32, ptr %130, align 16
  %132 = add nsw i32 %129, %131
  %133 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 5
  %134 = load i32, ptr %133, align 4
  %135 = add nsw i32 %132, %134
  %136 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 7
  %137 = load i32, ptr %136, align 4
  %138 = add nsw i32 %135, %137
  %139 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 9
  %140 = load i32, ptr %139, align 4
  %141 = add nsw i32 %138, %140
  %142 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 8
  store i32 %141, ptr %142, align 16
  %143 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 9
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 6
  %146 = load i32, ptr %145, align 8
  %147 = add nsw i32 %144, %146
  %148 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 8
  %149 = load i32, ptr %148, align 16
  %150 = add nsw i32 %147, %149
  %151 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 9
  store i32 %150, ptr %151, align 4
  br label %261

152:                                              ; preds = %38
  %153 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 0
  %154 = load i32, ptr %153, align 16
  %155 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 8
  %156 = load i32, ptr %155, align 16
  %157 = add nsw i32 %154, %156
  %158 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 0
  store i32 %157, ptr %158, align 16
  %159 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 1
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 2
  %162 = load i32, ptr %161, align 8
  %163 = add nsw i32 %160, %162
  %164 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 4
  %165 = load i32, ptr %164, align 16
  %166 = add nsw i32 %163, %165
  %167 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 1
  store i32 %166, ptr %167, align 4
  %168 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 2
  %169 = load i32, ptr %168, align 8
  %170 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 1
  %171 = load i32, ptr %170, align 4
  %172 = add nsw i32 %169, %171
  %173 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 3
  %174 = load i32, ptr %173, align 4
  %175 = add nsw i32 %172, %174
  %176 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 5
  %177 = load i32, ptr %176, align 4
  %178 = add nsw i32 %175, %177
  %179 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 2
  store i32 %178, ptr %179, align 8
  %180 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 3
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 2
  %183 = load i32, ptr %182, align 8
  %184 = add nsw i32 %181, %183
  %185 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 6
  %186 = load i32, ptr %185, align 8
  %187 = add nsw i32 %184, %186
  %188 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 3
  store i32 %187, ptr %188, align 4
  %189 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 4
  %190 = load i32, ptr %189, align 16
  %191 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 1
  %192 = load i32, ptr %191, align 4
  %193 = add nsw i32 %190, %192
  %194 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 5
  %195 = load i32, ptr %194, align 4
  %196 = add nsw i32 %193, %195
  %197 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 7
  %198 = load i32, ptr %197, align 4
  %199 = add nsw i32 %196, %198
  %200 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 4
  store i32 %199, ptr %200, align 16
  %201 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 5
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 2
  %204 = load i32, ptr %203, align 8
  %205 = add nsw i32 %202, %204
  %206 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 4
  %207 = load i32, ptr %206, align 16
  %208 = add nsw i32 %205, %207
  %209 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 8
  %210 = load i32, ptr %209, align 16
  %211 = add nsw i32 %208, %210
  %212 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 6
  %213 = load i32, ptr %212, align 8
  %214 = add nsw i32 %211, %213
  %215 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 5
  store i32 %214, ptr %215, align 4
  %216 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 6
  %217 = load i32, ptr %216, align 8
  %218 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 3
  %219 = load i32, ptr %218, align 4
  %220 = add nsw i32 %217, %219
  %221 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 5
  %222 = load i32, ptr %221, align 4
  %223 = add nsw i32 %220, %222
  %224 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 9
  %225 = load i32, ptr %224, align 4
  %226 = add nsw i32 %223, %225
  %227 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 6
  store i32 %226, ptr %227, align 8
  %228 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 7
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 4
  %231 = load i32, ptr %230, align 16
  %232 = add nsw i32 %229, %231
  %233 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 8
  %234 = load i32, ptr %233, align 16
  %235 = add nsw i32 %232, %234
  %236 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 7
  store i32 %235, ptr %236, align 4
  %237 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 8
  %238 = load i32, ptr %237, align 16
  %239 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 0
  %240 = load i32, ptr %239, align 16
  %241 = add nsw i32 %238, %240
  %242 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 5
  %243 = load i32, ptr %242, align 4
  %244 = add nsw i32 %241, %243
  %245 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 7
  %246 = load i32, ptr %245, align 4
  %247 = add nsw i32 %244, %246
  %248 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 9
  %249 = load i32, ptr %248, align 4
  %250 = add nsw i32 %247, %249
  %251 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 8
  store i32 %250, ptr %251, align 16
  %252 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 9
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 6
  %255 = load i32, ptr %254, align 8
  %256 = add nsw i32 %253, %255
  %257 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 8
  %258 = load i32, ptr %257, align 16
  %259 = add nsw i32 %256, %258
  %260 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 9
  store i32 %259, ptr %260, align 4
  br label %261

261:                                              ; preds = %152, %43
  br label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %9, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %9, align 4
  br label %34, !llvm.loop !8

265:                                              ; preds = %34
  store i32 0, ptr %11, align 4
  %266 = load i32, ptr %10, align 4
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %283

268:                                              ; preds = %265
  store i32 0, ptr %8, align 4
  br label %269

269:                                              ; preds = %279, %268
  %270 = load i32, ptr %8, align 4
  %271 = icmp sle i32 %270, 9
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = load i32, ptr %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [10 x i32], ptr %7, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4
  %277 = load i32, ptr %11, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, ptr %11, align 4
  br label %279

279:                                              ; preds = %272
  %280 = load i32, ptr %8, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %8, align 4
  br label %269, !llvm.loop !9

282:                                              ; preds = %269
  br label %298

283:                                              ; preds = %265
  store i32 0, ptr %8, align 4
  br label %284

284:                                              ; preds = %294, %283
  %285 = load i32, ptr %8, align 4
  %286 = icmp sle i32 %285, 9
  br i1 %286, label %287, label %297

287:                                              ; preds = %284
  %288 = load i32, ptr %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [10 x i32], ptr %6, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4
  %292 = load i32, ptr %11, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, ptr %11, align 4
  br label %294

294:                                              ; preds = %287
  %295 = load i32, ptr %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, ptr %8, align 4
  br label %284, !llvm.loop !10

297:                                              ; preds = %284
  br label %298

298:                                              ; preds = %297, %282
  %299 = load i32, ptr %11, align 4
  store i32 %299, ptr %3, align 4
  br label %300

300:                                              ; preds = %298, %21, %17
  %301 = load i32, ptr %3, align 4
  ret i32 %301
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [3 x i8]], align 1
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.keypad, i64 12, i1 false)
  %3 = getelementptr inbounds [4 x [3 x i8]], ptr %2, i64 0, i64 0
  %4 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %3, i32 noundef 1)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 1, i32 noundef %4)
  %6 = getelementptr inbounds [4 x [3 x i8]], ptr %2, i64 0, i64 0
  %7 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %6, i32 noundef 2)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 2, i32 noundef %7)
  %9 = getelementptr inbounds [4 x [3 x i8]], ptr %2, i64 0, i64 0
  %10 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %9, i32 noundef 3)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 3, i32 noundef %10)
  %12 = getelementptr inbounds [4 x [3 x i8]], ptr %2, i64 0, i64 0
  %13 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %12, i32 noundef 4)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 4, i32 noundef %13)
  %15 = getelementptr inbounds [4 x [3 x i8]], ptr %2, i64 0, i64 0
  %16 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %15, i32 noundef 5)
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 5, i32 noundef %16)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
