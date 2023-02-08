; ModuleID = 'PE-benchmarks/box-stacking.cpp'
source_filename = "PE-benchmarks/box-stacking.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Box = type { i32, i32, i32 }

@__const.main.arr = private unnamed_addr constant [4 x %struct.Box] [%struct.Box { i32 4, i32 6, i32 7 }, %struct.Box { i32 1, i32 2, i32 3 }, %struct.Box { i32 4, i32 5, i32 6 }, %struct.Box { i32 10, i32 12, i32 32 }], align 16
@.str = private unnamed_addr constant [44 x i8] c"The maximum possible height of stack is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local i32 @_Z3minii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local i32 @_Z3maxii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local i32 @_Z7comparePKvS0_(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.Box*
  %7 = getelementptr inbounds %struct.Box, %struct.Box* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.Box*
  %11 = getelementptr inbounds %struct.Box, %struct.Box* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %8, %12
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.Box*
  %16 = getelementptr inbounds %struct.Box, %struct.Box* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.Box*
  %20 = getelementptr inbounds %struct.Box, %struct.Box* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %17, %21
  %23 = sub nsw i32 %13, %22
  ret i32 %23
}

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z14maxStackHeightP3Boxi(%struct.Box* %0, i32 %1) #1 {
  %3 = alloca %struct.Box*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.Box* %0, %struct.Box** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 3, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca %struct.Box, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %163, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %166

24:                                               ; preds = %20
  %25 = load %struct.Box*, %struct.Box** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.Box, %struct.Box* %25, i64 %27
  %29 = getelementptr inbounds %struct.Box, %struct.Box* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %32
  %34 = getelementptr inbounds %struct.Box, %struct.Box* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.Box*, %struct.Box** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Box, %struct.Box* %35, i64 %37
  %39 = getelementptr inbounds %struct.Box, %struct.Box* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.Box*, %struct.Box** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Box, %struct.Box* %41, i64 %43
  %45 = getelementptr inbounds %struct.Box, %struct.Box* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_Z3maxii(i32 %40, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %49
  %51 = getelementptr inbounds %struct.Box, %struct.Box* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.Box*, %struct.Box** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Box, %struct.Box* %52, i64 %54
  %56 = getelementptr inbounds %struct.Box, %struct.Box* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.Box*, %struct.Box** %3, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Box, %struct.Box* %58, i64 %60
  %62 = getelementptr inbounds %struct.Box, %struct.Box* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_Z3minii(i32 %57, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %66
  %68 = getelementptr inbounds %struct.Box, %struct.Box* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load %struct.Box*, %struct.Box** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Box, %struct.Box* %71, i64 %73
  %75 = getelementptr inbounds %struct.Box, %struct.Box* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %78
  %80 = getelementptr inbounds %struct.Box, %struct.Box* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.Box*, %struct.Box** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Box, %struct.Box* %81, i64 %83
  %85 = getelementptr inbounds %struct.Box, %struct.Box* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.Box*, %struct.Box** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Box, %struct.Box* %87, i64 %89
  %91 = getelementptr inbounds %struct.Box, %struct.Box* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @_Z3maxii(i32 %86, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %95
  %97 = getelementptr inbounds %struct.Box, %struct.Box* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.Box*, %struct.Box** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Box, %struct.Box* %98, i64 %100
  %102 = getelementptr inbounds %struct.Box, %struct.Box* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.Box*, %struct.Box** %3, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.Box, %struct.Box* %104, i64 %106
  %108 = getelementptr inbounds %struct.Box, %struct.Box* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @_Z3minii(i32 %103, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %112
  %114 = getelementptr inbounds %struct.Box, %struct.Box* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = load %struct.Box*, %struct.Box** %3, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.Box, %struct.Box* %117, i64 %119
  %121 = getelementptr inbounds %struct.Box, %struct.Box* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %124
  %126 = getelementptr inbounds %struct.Box, %struct.Box* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.Box*, %struct.Box** %3, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.Box, %struct.Box* %127, i64 %129
  %131 = getelementptr inbounds %struct.Box, %struct.Box* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.Box*, %struct.Box** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.Box, %struct.Box* %133, i64 %135
  %137 = getelementptr inbounds %struct.Box, %struct.Box* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @_Z3maxii(i32 %132, i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %141
  %143 = getelementptr inbounds %struct.Box, %struct.Box* %142, i32 0, i32 2
  store i32 %139, i32* %143, align 4
  %144 = load %struct.Box*, %struct.Box** %3, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Box, %struct.Box* %144, i64 %146
  %148 = getelementptr inbounds %struct.Box, %struct.Box* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.Box*, %struct.Box** %3, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.Box, %struct.Box* %150, i64 %152
  %154 = getelementptr inbounds %struct.Box, %struct.Box* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @_Z3minii(i32 %149, i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %158
  %160 = getelementptr inbounds %struct.Box, %struct.Box* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %24
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %20, !llvm.loop !2

166:                                              ; preds = %20
  %167 = load i32, i32* %4, align 4
  %168 = mul nsw i32 3, %167
  store i32 %168, i32* %4, align 4
  %169 = bitcast %struct.Box* %19 to i8*
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  call void @qsort(i8* %169, i64 %171, i64 12, i32 (i8*, i8*)* @_Z7comparePKvS0_)
  %172 = load i32, i32* %4, align 4
  %173 = zext i32 %172 to i64
  %174 = alloca i32, i64 %173, align 16
  store i64 %173, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %188, %166
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %181
  %183 = getelementptr inbounds %struct.Box, %struct.Box* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %174, i64 %186
  store i32 %184, i32* %187, align 4
  br label %188

188:                                              ; preds = %179
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %175, !llvm.loop !4

191:                                              ; preds = %175
  store i32 1, i32* %11, align 4
  br label %192

192:                                              ; preds = %260, %191
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %263

196:                                              ; preds = %192
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %256, %196
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %259

201:                                              ; preds = %197
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %203
  %205 = getelementptr inbounds %struct.Box, %struct.Box* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %208
  %210 = getelementptr inbounds %struct.Box, %struct.Box* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %206, %211
  br i1 %212, label %213, label %255

213:                                              ; preds = %201
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %215
  %217 = getelementptr inbounds %struct.Box, %struct.Box* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %220
  %222 = getelementptr inbounds %struct.Box, %struct.Box* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %218, %223
  br i1 %224, label %225, label %255

225:                                              ; preds = %213
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %174, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %174, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %235
  %237 = getelementptr inbounds %struct.Box, %struct.Box* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %233, %238
  %240 = icmp slt i32 %229, %239
  br i1 %240, label %241, label %255

241:                                              ; preds = %225
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %174, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %247
  %249 = getelementptr inbounds %struct.Box, %struct.Box* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %245, %250
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %174, i64 %253
  store i32 %251, i32* %254, align 4
  br label %255

255:                                              ; preds = %241, %225, %213, %201
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %197, !llvm.loop !5

259:                                              ; preds = %197
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %192, !llvm.loop !6

263:                                              ; preds = %192
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %264

264:                                              ; preds = %281, %263
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %4, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %284

268:                                              ; preds = %264
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %174, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %269, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %268
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %174, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %13, align 4
  br label %280

280:                                              ; preds = %275, %268
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %14, align 4
  br label %264, !llvm.loop !7

284:                                              ; preds = %264
  %285 = load i32, i32* %13, align 4
  %286 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %286)
  ret i32 %285
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x %struct.Box], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [4 x %struct.Box]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x %struct.Box]* @__const.main.arr to i8*), i64 48, i1 false)
  store i32 4, i32* %3, align 4
  %5 = getelementptr inbounds [4 x %struct.Box], [4 x %struct.Box]* %2, i64 0, i64 0
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @_Z14maxStackHeightP3Boxi(%struct.Box* %5, i32 %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %7)
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
