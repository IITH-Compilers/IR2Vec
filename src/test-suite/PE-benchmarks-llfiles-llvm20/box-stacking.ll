; ModuleID = 'PE-benchmarks/box-stacking.cpp'
source_filename = "PE-benchmarks/box-stacking.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Box = type { i32, i32, i32 }

@__const.main.arr = private unnamed_addr constant [4 x %struct.Box] [%struct.Box { i32 4, i32 6, i32 7 }, %struct.Box { i32 1, i32 2, i32 3 }, %struct.Box { i32 4, i32 5, i32 6 }, %struct.Box { i32 10, i32 12, i32 32 }], align 16
@.str = private unnamed_addr constant [44 x i8] c"The maximum possible height of stack is %d\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3minii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z7comparePKvS0_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %struct.Box, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds nuw %struct.Box, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.Box, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.Box, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = sub nsw i32 %11, %18
  ret i32 %19
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z14maxStackHeightP3Boxi(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %15 = load i32, ptr %4, align 4
  %16 = mul nsw i32 3, %15
  %17 = zext i32 %16 to i64
  %18 = call ptr @llvm.stacksave.p0()
  store ptr %18, ptr %5, align 8
  %19 = alloca %struct.Box, i64 %17, align 16
  store i64 %17, ptr %6, align 8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %20

20:                                               ; preds = %163, %2
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %166

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8
  %26 = load i32, ptr %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.Box, ptr %25, i64 %27
  %29 = getelementptr inbounds nuw %struct.Box, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Box, ptr %19, i64 %32
  %34 = getelementptr inbounds nuw %struct.Box, ptr %33, i32 0, i32 0
  store i32 %30, ptr %34, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Box, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.Box, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %3, align 8
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Box, ptr %41, i64 %43
  %45 = getelementptr inbounds nuw %struct.Box, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = call noundef i32 @_Z3maxii(i32 noundef %40, i32 noundef %46)
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Box, ptr %19, i64 %49
  %51 = getelementptr inbounds nuw %struct.Box, ptr %50, i32 0, i32 2
  store i32 %47, ptr %51, align 4
  %52 = load ptr, ptr %3, align 8
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Box, ptr %52, i64 %54
  %56 = getelementptr inbounds nuw %struct.Box, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Box, ptr %58, i64 %60
  %62 = getelementptr inbounds nuw %struct.Box, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = call noundef i32 @_Z3minii(i32 noundef %57, i32 noundef %63)
  %65 = load i32, ptr %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.Box, ptr %19, i64 %66
  %68 = getelementptr inbounds nuw %struct.Box, ptr %67, i32 0, i32 1
  store i32 %64, ptr %68, align 4
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %7, align 4
  %71 = load ptr, ptr %3, align 8
  %72 = load i32, ptr %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Box, ptr %71, i64 %73
  %75 = getelementptr inbounds nuw %struct.Box, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.Box, ptr %19, i64 %78
  %80 = getelementptr inbounds nuw %struct.Box, ptr %79, i32 0, i32 0
  store i32 %76, ptr %80, align 4
  %81 = load ptr, ptr %3, align 8
  %82 = load i32, ptr %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Box, ptr %81, i64 %83
  %85 = getelementptr inbounds nuw %struct.Box, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %3, align 8
  %88 = load i32, ptr %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Box, ptr %87, i64 %89
  %91 = getelementptr inbounds nuw %struct.Box, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = call noundef i32 @_Z3maxii(i32 noundef %86, i32 noundef %92)
  %94 = load i32, ptr %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.Box, ptr %19, i64 %95
  %97 = getelementptr inbounds nuw %struct.Box, ptr %96, i32 0, i32 2
  store i32 %93, ptr %97, align 4
  %98 = load ptr, ptr %3, align 8
  %99 = load i32, ptr %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Box, ptr %98, i64 %100
  %102 = getelementptr inbounds nuw %struct.Box, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %3, align 8
  %105 = load i32, ptr %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.Box, ptr %104, i64 %106
  %108 = getelementptr inbounds nuw %struct.Box, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = call noundef i32 @_Z3minii(i32 noundef %103, i32 noundef %109)
  %111 = load i32, ptr %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.Box, ptr %19, i64 %112
  %114 = getelementptr inbounds nuw %struct.Box, ptr %113, i32 0, i32 1
  store i32 %110, ptr %114, align 4
  %115 = load i32, ptr %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %7, align 4
  %117 = load ptr, ptr %3, align 8
  %118 = load i32, ptr %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.Box, ptr %117, i64 %119
  %121 = getelementptr inbounds nuw %struct.Box, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.Box, ptr %19, i64 %124
  %126 = getelementptr inbounds nuw %struct.Box, ptr %125, i32 0, i32 0
  store i32 %122, ptr %126, align 4
  %127 = load ptr, ptr %3, align 8
  %128 = load i32, ptr %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.Box, ptr %127, i64 %129
  %131 = getelementptr inbounds nuw %struct.Box, ptr %130, i32 0, i32 0
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %3, align 8
  %134 = load i32, ptr %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.Box, ptr %133, i64 %135
  %137 = getelementptr inbounds nuw %struct.Box, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = call noundef i32 @_Z3maxii(i32 noundef %132, i32 noundef %138)
  %140 = load i32, ptr %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Box, ptr %19, i64 %141
  %143 = getelementptr inbounds nuw %struct.Box, ptr %142, i32 0, i32 2
  store i32 %139, ptr %143, align 4
  %144 = load ptr, ptr %3, align 8
  %145 = load i32, ptr %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Box, ptr %144, i64 %146
  %148 = getelementptr inbounds nuw %struct.Box, ptr %147, i32 0, i32 0
  %149 = load i32, ptr %148, align 4
  %150 = load ptr, ptr %3, align 8
  %151 = load i32, ptr %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.Box, ptr %150, i64 %152
  %154 = getelementptr inbounds nuw %struct.Box, ptr %153, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = call noundef i32 @_Z3minii(i32 noundef %149, i32 noundef %155)
  %157 = load i32, ptr %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.Box, ptr %19, i64 %158
  %160 = getelementptr inbounds nuw %struct.Box, ptr %159, i32 0, i32 1
  store i32 %156, ptr %160, align 4
  %161 = load i32, ptr %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %7, align 4
  br label %163

163:                                              ; preds = %24
  %164 = load i32, ptr %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %8, align 4
  br label %20, !llvm.loop !6

166:                                              ; preds = %20
  %167 = load i32, ptr %4, align 4
  %168 = mul nsw i32 3, %167
  store i32 %168, ptr %4, align 4
  %169 = load i32, ptr %4, align 4
  %170 = sext i32 %169 to i64
  call void @qsort(ptr noundef %19, i64 noundef %170, i64 noundef 12, ptr noundef @_Z7comparePKvS0_)
  %171 = load i32, ptr %4, align 4
  %172 = zext i32 %171 to i64
  %173 = alloca i32, i64 %172, align 16
  store i64 %172, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %174

174:                                              ; preds = %187, %166
  %175 = load i32, ptr %10, align 4
  %176 = load i32, ptr %4, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %174
  %179 = load i32, ptr %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.Box, ptr %19, i64 %180
  %182 = getelementptr inbounds nuw %struct.Box, ptr %181, i32 0, i32 0
  %183 = load i32, ptr %182, align 4
  %184 = load i32, ptr %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %173, i64 %185
  store i32 %183, ptr %186, align 4
  br label %187

187:                                              ; preds = %178
  %188 = load i32, ptr %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %10, align 4
  br label %174, !llvm.loop !8

190:                                              ; preds = %174
  store i32 1, ptr %11, align 4
  br label %191

191:                                              ; preds = %259, %190
  %192 = load i32, ptr %11, align 4
  %193 = load i32, ptr %4, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %262

195:                                              ; preds = %191
  store i32 0, ptr %12, align 4
  br label %196

196:                                              ; preds = %255, %195
  %197 = load i32, ptr %12, align 4
  %198 = load i32, ptr %11, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %258

200:                                              ; preds = %196
  %201 = load i32, ptr %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.Box, ptr %19, i64 %202
  %204 = getelementptr inbounds nuw %struct.Box, ptr %203, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = load i32, ptr %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.Box, ptr %19, i64 %207
  %209 = getelementptr inbounds nuw %struct.Box, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp slt i32 %205, %210
  br i1 %211, label %212, label %254

212:                                              ; preds = %200
  %213 = load i32, ptr %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.Box, ptr %19, i64 %214
  %216 = getelementptr inbounds nuw %struct.Box, ptr %215, i32 0, i32 2
  %217 = load i32, ptr %216, align 4
  %218 = load i32, ptr %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.Box, ptr %19, i64 %219
  %221 = getelementptr inbounds nuw %struct.Box, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = icmp slt i32 %217, %222
  br i1 %223, label %224, label %254

224:                                              ; preds = %212
  %225 = load i32, ptr %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, ptr %173, i64 %226
  %228 = load i32, ptr %227, align 4
  %229 = load i32, ptr %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, ptr %173, i64 %230
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.Box, ptr %19, i64 %234
  %236 = getelementptr inbounds nuw %struct.Box, ptr %235, i32 0, i32 0
  %237 = load i32, ptr %236, align 4
  %238 = add nsw i32 %232, %237
  %239 = icmp slt i32 %228, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %224
  %241 = load i32, ptr %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %173, i64 %242
  %244 = load i32, ptr %243, align 4
  %245 = load i32, ptr %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.Box, ptr %19, i64 %246
  %248 = getelementptr inbounds nuw %struct.Box, ptr %247, i32 0, i32 0
  %249 = load i32, ptr %248, align 4
  %250 = add nsw i32 %244, %249
  %251 = load i32, ptr %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, ptr %173, i64 %252
  store i32 %250, ptr %253, align 4
  br label %254

254:                                              ; preds = %240, %224, %212, %200
  br label %255

255:                                              ; preds = %254
  %256 = load i32, ptr %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %12, align 4
  br label %196, !llvm.loop !9

258:                                              ; preds = %196
  br label %259

259:                                              ; preds = %258
  %260 = load i32, ptr %11, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %11, align 4
  br label %191, !llvm.loop !10

262:                                              ; preds = %191
  store i32 -1, ptr %13, align 4
  store i32 0, ptr %14, align 4
  br label %263

263:                                              ; preds = %280, %262
  %264 = load i32, ptr %14, align 4
  %265 = load i32, ptr %4, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %283

267:                                              ; preds = %263
  %268 = load i32, ptr %13, align 4
  %269 = load i32, ptr %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, ptr %173, i64 %270
  %272 = load i32, ptr %271, align 4
  %273 = icmp slt i32 %268, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %267
  %275 = load i32, ptr %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, ptr %173, i64 %276
  %278 = load i32, ptr %277, align 4
  store i32 %278, ptr %13, align 4
  br label %279

279:                                              ; preds = %274, %267
  br label %280

280:                                              ; preds = %279
  %281 = load i32, ptr %14, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %14, align 4
  br label %263, !llvm.loop !11

283:                                              ; preds = %263
  %284 = load i32, ptr %13, align 4
  %285 = load ptr, ptr %5, align 8
  call void @llvm.stackrestore.p0(ptr %285)
  ret i32 %284
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x %struct.Box], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 48, i1 false)
  store i32 4, ptr %3, align 4
  %4 = getelementptr inbounds [4 x %struct.Box], ptr %2, i64 0, i64 0
  %5 = load i32, ptr %3, align 4
  %6 = call noundef i32 @_Z14maxStackHeightP3Boxi(ptr noundef %4, i32 noundef %5)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.0 (++20250204023448+d185bd94ff77-1~exp1~20250204023606.14)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
