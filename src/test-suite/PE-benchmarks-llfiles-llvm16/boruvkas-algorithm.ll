; ModuleID = 'PE-benchmarks/boruvkas-algorithm.cpp'
source_filename = "PE-benchmarks/boruvkas-algorithm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Graph = type { i32, i32, ptr }
%struct.subset = type { i32, i32 }
%struct.Edge = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Edge %d-%d included in MST\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Weight of MST is %d\0A\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z10boruvkaMSTP5Graph(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.Graph, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8
  store i32 %20, ptr %3, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.Graph, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %4, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.Graph, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %5, align 8
  %27 = load i32, ptr %3, align 4
  %28 = sext i32 %27 to i64
  %29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %28, i64 8)
  %30 = extractvalue { i64, i1 } %29, 1
  %31 = extractvalue { i64, i1 } %29, 0
  %32 = select i1 %30, i64 -1, i64 %31
  %33 = call noalias noundef nonnull ptr @_Znam(i64 noundef %32) #5
  store ptr %33, ptr %6, align 8
  %34 = load i32, ptr %3, align 4
  %35 = sext i32 %34 to i64
  %36 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %35, i64 4)
  %37 = extractvalue { i64, i1 } %36, 1
  %38 = extractvalue { i64, i1 } %36, 0
  %39 = select i1 %37, i64 -1, i64 %38
  %40 = call noalias noundef nonnull ptr @_Znam(i64 noundef %39) #5
  store ptr %40, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %41

41:                                               ; preds = %61, %1
  %42 = load i32, ptr %8, align 4
  %43 = load i32, ptr %3, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, ptr %8, align 4
  %47 = load ptr, ptr %6, align 8
  %48 = load i32, ptr %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.subset, ptr %47, i64 %49
  %51 = getelementptr inbounds %struct.subset, ptr %50, i32 0, i32 0
  store i32 %46, ptr %51, align 4
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.subset, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.subset, ptr %55, i32 0, i32 1
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr %7, align 8
  %58 = load i32, ptr %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  store i32 -1, ptr %60, align 4
  br label %61

61:                                               ; preds = %45
  %62 = load i32, ptr %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %8, align 4
  br label %41, !llvm.loop !6

64:                                               ; preds = %41
  %65 = load i32, ptr %3, align 4
  store i32 %65, ptr %9, align 4
  store i32 0, ptr %10, align 4
  br label %66

66:                                               ; preds = %259, %64
  %67 = load i32, ptr %9, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %260

69:                                               ; preds = %66
  store i32 0, ptr %11, align 4
  br label %70

70:                                               ; preds = %79, %69
  %71 = load i32, ptr %11, align 4
  %72 = load i32, ptr %3, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load ptr, ptr %7, align 8
  %76 = load i32, ptr %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %75, i64 %77
  store i32 -1, ptr %78, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %11, align 4
  br label %70, !llvm.loop !8

82:                                               ; preds = %70
  store i32 0, ptr %12, align 4
  br label %83

83:                                               ; preds = %172, %82
  %84 = load i32, ptr %12, align 4
  %85 = load i32, ptr %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %175

87:                                               ; preds = %83
  %88 = load ptr, ptr %6, align 8
  %89 = load ptr, ptr %5, align 8
  %90 = load i32, ptr %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.Edge, ptr %89, i64 %91
  %93 = getelementptr inbounds %struct.Edge, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 4
  %95 = call noundef i32 @_Z4findP6subseti(ptr noundef %88, i32 noundef %94)
  store i32 %95, ptr %13, align 4
  %96 = load ptr, ptr %6, align 8
  %97 = load ptr, ptr %5, align 8
  %98 = load i32, ptr %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.Edge, ptr %97, i64 %99
  %101 = getelementptr inbounds %struct.Edge, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = call noundef i32 @_Z4findP6subseti(ptr noundef %96, i32 noundef %102)
  store i32 %103, ptr %14, align 4
  %104 = load i32, ptr %13, align 4
  %105 = load i32, ptr %14, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %87
  br label %172

108:                                              ; preds = %87
  %109 = load ptr, ptr %7, align 8
  %110 = load i32, ptr %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %109, i64 %111
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %133, label %115

115:                                              ; preds = %108
  %116 = load ptr, ptr %5, align 8
  %117 = load ptr, ptr %7, align 8
  %118 = load i32, ptr %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %117, i64 %119
  %121 = load i32, ptr %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.Edge, ptr %116, i64 %122
  %124 = getelementptr inbounds %struct.Edge, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %5, align 8
  %127 = load i32, ptr %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.Edge, ptr %126, i64 %128
  %130 = getelementptr inbounds %struct.Edge, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp sgt i32 %125, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %115, %108
  %134 = load i32, ptr %12, align 4
  %135 = load ptr, ptr %7, align 8
  %136 = load i32, ptr %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %135, i64 %137
  store i32 %134, ptr %138, align 4
  br label %139

139:                                              ; preds = %133, %115
  %140 = load ptr, ptr %7, align 8
  %141 = load i32, ptr %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %140, i64 %142
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %164, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %5, align 8
  %148 = load ptr, ptr %7, align 8
  %149 = load i32, ptr %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %148, i64 %150
  %152 = load i32, ptr %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.Edge, ptr %147, i64 %153
  %155 = getelementptr inbounds %struct.Edge, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = load ptr, ptr %5, align 8
  %158 = load i32, ptr %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.Edge, ptr %157, i64 %159
  %161 = getelementptr inbounds %struct.Edge, ptr %160, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = icmp sgt i32 %156, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %146, %139
  %165 = load i32, ptr %12, align 4
  %166 = load ptr, ptr %7, align 8
  %167 = load i32, ptr %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, ptr %166, i64 %168
  store i32 %165, ptr %169, align 4
  br label %170

170:                                              ; preds = %164, %146
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %107
  %173 = load i32, ptr %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %12, align 4
  br label %83, !llvm.loop !9

175:                                              ; preds = %83
  store i32 0, ptr %15, align 4
  br label %176

176:                                              ; preds = %256, %175
  %177 = load i32, ptr %15, align 4
  %178 = load i32, ptr %3, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %259

180:                                              ; preds = %176
  %181 = load ptr, ptr %7, align 8
  %182 = load i32, ptr %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %181, i64 %183
  %185 = load i32, ptr %184, align 4
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %255

187:                                              ; preds = %180
  %188 = load ptr, ptr %6, align 8
  %189 = load ptr, ptr %5, align 8
  %190 = load ptr, ptr %7, align 8
  %191 = load i32, ptr %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, ptr %190, i64 %192
  %194 = load i32, ptr %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.Edge, ptr %189, i64 %195
  %197 = getelementptr inbounds %struct.Edge, ptr %196, i32 0, i32 0
  %198 = load i32, ptr %197, align 4
  %199 = call noundef i32 @_Z4findP6subseti(ptr noundef %188, i32 noundef %198)
  store i32 %199, ptr %16, align 4
  %200 = load ptr, ptr %6, align 8
  %201 = load ptr, ptr %5, align 8
  %202 = load ptr, ptr %7, align 8
  %203 = load i32, ptr %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, ptr %202, i64 %204
  %206 = load i32, ptr %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.Edge, ptr %201, i64 %207
  %209 = getelementptr inbounds %struct.Edge, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = call noundef i32 @_Z4findP6subseti(ptr noundef %200, i32 noundef %210)
  store i32 %211, ptr %17, align 4
  %212 = load i32, ptr %16, align 4
  %213 = load i32, ptr %17, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %187
  br label %256

216:                                              ; preds = %187
  %217 = load ptr, ptr %5, align 8
  %218 = load ptr, ptr %7, align 8
  %219 = load i32, ptr %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, ptr %218, i64 %220
  %222 = load i32, ptr %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.Edge, ptr %217, i64 %223
  %225 = getelementptr inbounds %struct.Edge, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = load i32, ptr %10, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, ptr %10, align 4
  %229 = load ptr, ptr %5, align 8
  %230 = load ptr, ptr %7, align 8
  %231 = load i32, ptr %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %230, i64 %232
  %234 = load i32, ptr %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.Edge, ptr %229, i64 %235
  %237 = getelementptr inbounds %struct.Edge, ptr %236, i32 0, i32 0
  %238 = load i32, ptr %237, align 4
  %239 = load ptr, ptr %5, align 8
  %240 = load ptr, ptr %7, align 8
  %241 = load i32, ptr %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %240, i64 %242
  %244 = load i32, ptr %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.Edge, ptr %239, i64 %245
  %247 = getelementptr inbounds %struct.Edge, ptr %246, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %238, i32 noundef %248)
  %250 = load ptr, ptr %6, align 8
  %251 = load i32, ptr %16, align 4
  %252 = load i32, ptr %17, align 4
  call void @_Z5UnionP6subsetii(ptr noundef %250, i32 noundef %251, i32 noundef %252)
  %253 = load i32, ptr %9, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, ptr %9, align 4
  br label %255

255:                                              ; preds = %216, %180
  br label %256

256:                                              ; preds = %255, %215
  %257 = load i32, ptr %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %15, align 4
  br label %176, !llvm.loop !10

259:                                              ; preds = %176
  br label %66, !llvm.loop !11

260:                                              ; preds = %66
  %261 = load i32, ptr %10, align 4
  %262 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %261)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4findP6subseti(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.subset, ptr %5, i64 %7
  %9 = getelementptr inbounds %struct.subset, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.subset, ptr %15, i64 %17
  %19 = getelementptr inbounds %struct.subset, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = call noundef i32 @_Z4findP6subseti(ptr noundef %14, i32 noundef %20)
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.subset, ptr %22, i64 %24
  %26 = getelementptr inbounds %struct.subset, ptr %25, i32 0, i32 0
  store i32 %21, ptr %26, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.subset, ptr %28, i64 %30
  %32 = getelementptr inbounds %struct.subset, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 4
  ret i32 %33
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z5UnionP6subsetii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = call noundef i32 @_Z4findP6subseti(ptr noundef %9, i32 noundef %10)
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 4
  %14 = call noundef i32 @_Z4findP6subseti(ptr noundef %12, i32 noundef %13)
  store i32 %14, ptr %8, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.subset, ptr %15, i64 %17
  %19 = getelementptr inbounds %struct.subset, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.subset, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.subset, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, ptr %8, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.subset, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.subset, ptr %33, i32 0, i32 0
  store i32 %29, ptr %34, align 4
  br label %71

35:                                               ; preds = %3
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.subset, ptr %36, i64 %38
  %40 = getelementptr inbounds %struct.subset, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.subset, ptr %42, i64 %44
  %46 = getelementptr inbounds %struct.subset, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.subset, ptr %51, i64 %53
  %55 = getelementptr inbounds %struct.subset, ptr %54, i32 0, i32 0
  store i32 %50, ptr %55, align 4
  br label %70

56:                                               ; preds = %35
  %57 = load i32, ptr %7, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.subset, ptr %58, i64 %60
  %62 = getelementptr inbounds %struct.subset, ptr %61, i32 0, i32 0
  store i32 %57, ptr %62, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.subset, ptr %63, i64 %65
  %67 = getelementptr inbounds %struct.subset, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %56, %49
  br label %71

71:                                               ; preds = %70, %28
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_Z11createGraphii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #5
  store ptr %6, ptr %5, align 8
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.Graph, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.Graph, ptr %11, i32 0, i32 1
  store i32 %10, ptr %12, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %14, i64 12)
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #5
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.Graph, ptr %20, i32 0, i32 2
  store ptr %19, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 5, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call noundef ptr @_Z11createGraphii(i32 noundef %5, i32 noundef %6)
  store ptr %7, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.Graph, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.Edge, ptr %10, i64 0
  %12 = getelementptr inbounds %struct.Edge, ptr %11, i32 0, i32 0
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.Graph, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.Edge, ptr %15, i64 0
  %17 = getelementptr inbounds %struct.Edge, ptr %16, i32 0, i32 1
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.Graph, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.Edge, ptr %20, i64 0
  %22 = getelementptr inbounds %struct.Edge, ptr %21, i32 0, i32 2
  store i32 10, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.Graph, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.Edge, ptr %25, i64 1
  %27 = getelementptr inbounds %struct.Edge, ptr %26, i32 0, i32 0
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.Graph, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.Edge, ptr %30, i64 1
  %32 = getelementptr inbounds %struct.Edge, ptr %31, i32 0, i32 1
  store i32 2, ptr %32, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.Graph, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.Edge, ptr %35, i64 1
  %37 = getelementptr inbounds %struct.Edge, ptr %36, i32 0, i32 2
  store i32 6, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.Graph, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.Edge, ptr %40, i64 2
  %42 = getelementptr inbounds %struct.Edge, ptr %41, i32 0, i32 0
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.Graph, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.Edge, ptr %45, i64 2
  %47 = getelementptr inbounds %struct.Edge, ptr %46, i32 0, i32 1
  store i32 3, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.Graph, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.Edge, ptr %50, i64 2
  %52 = getelementptr inbounds %struct.Edge, ptr %51, i32 0, i32 2
  store i32 5, ptr %52, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.Graph, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.Edge, ptr %55, i64 3
  %57 = getelementptr inbounds %struct.Edge, ptr %56, i32 0, i32 0
  store i32 1, ptr %57, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.Graph, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.Edge, ptr %60, i64 3
  %62 = getelementptr inbounds %struct.Edge, ptr %61, i32 0, i32 1
  store i32 3, ptr %62, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.Graph, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.Edge, ptr %65, i64 3
  %67 = getelementptr inbounds %struct.Edge, ptr %66, i32 0, i32 2
  store i32 15, ptr %67, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.Graph, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.Edge, ptr %70, i64 4
  %72 = getelementptr inbounds %struct.Edge, ptr %71, i32 0, i32 0
  store i32 2, ptr %72, align 4
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.Graph, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.Edge, ptr %75, i64 4
  %77 = getelementptr inbounds %struct.Edge, ptr %76, i32 0, i32 1
  store i32 3, ptr %77, align 4
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds %struct.Graph, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.Edge, ptr %80, i64 4
  %82 = getelementptr inbounds %struct.Edge, ptr %81, i32 0, i32 2
  store i32 4, ptr %82, align 4
  %83 = load ptr, ptr %4, align 8
  call void @_Z10boruvkaMSTP5Graph(ptr noundef %83)
  ret i32 0
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230710042046+7cbf1a259152-1~exp1~20230710162136.105)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
