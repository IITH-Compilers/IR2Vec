; ModuleID = 'PE-benchmarks/boruvkas-algorithm.cpp'
source_filename = "PE-benchmarks/boruvkas-algorithm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Graph = type { i32, i32, %struct.Edge* }
%struct.Edge = type { i32, i32, i32 }
%struct.subset = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Edge %d-%d included in MST\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Weight of MST is %d\0A\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z10boruvkaMSTP5Graph(%struct.Graph* noundef %0) #0 {
  %2 = alloca %struct.Graph*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Edge*, align 8
  %6 = alloca %struct.subset*, align 8
  %7 = alloca i32*, align 8
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
  store %struct.Graph* %0, %struct.Graph** %2, align 8
  %18 = load %struct.Graph*, %struct.Graph** %2, align 8
  %19 = getelementptr inbounds %struct.Graph, %struct.Graph* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  %21 = load %struct.Graph*, %struct.Graph** %2, align 8
  %22 = getelementptr inbounds %struct.Graph, %struct.Graph* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.Graph*, %struct.Graph** %2, align 8
  %25 = getelementptr inbounds %struct.Graph, %struct.Graph* %24, i32 0, i32 2
  %26 = load %struct.Edge*, %struct.Edge** %25, align 8
  store %struct.Edge* %26, %struct.Edge** %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %28, i64 8)
  %30 = extractvalue { i64, i1 } %29, 1
  %31 = extractvalue { i64, i1 } %29, 0
  %32 = select i1 %30, i64 -1, i64 %31
  %33 = call noalias noundef nonnull i8* @_Znam(i64 noundef %32) #5
  %34 = bitcast i8* %33 to %struct.subset*
  store %struct.subset* %34, %struct.subset** %6, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %36, i64 4)
  %38 = extractvalue { i64, i1 } %37, 1
  %39 = extractvalue { i64, i1 } %37, 0
  %40 = select i1 %38, i64 -1, i64 %39
  %41 = call noalias noundef nonnull i8* @_Znam(i64 noundef %40) #5
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %63, %1
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.subset*, %struct.subset** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.subset, %struct.subset* %49, i64 %51
  %53 = getelementptr inbounds %struct.subset, %struct.subset* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load %struct.subset*, %struct.subset** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.subset, %struct.subset* %54, i64 %56
  %58 = getelementptr inbounds %struct.subset, %struct.subset* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %43, !llvm.loop !6

66:                                               ; preds = %43
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %261, %66
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %262

71:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 -1, i32* %80, align 4
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %72, !llvm.loop !8

84:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %174, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %177

89:                                               ; preds = %85
  %90 = load %struct.subset*, %struct.subset** %6, align 8
  %91 = load %struct.Edge*, %struct.Edge** %5, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Edge, %struct.Edge* %91, i64 %93
  %95 = getelementptr inbounds %struct.Edge, %struct.Edge* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %90, i32 noundef %96)
  store i32 %97, i32* %13, align 4
  %98 = load %struct.subset*, %struct.subset** %6, align 8
  %99 = load %struct.Edge*, %struct.Edge** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.Edge, %struct.Edge* %99, i64 %101
  %103 = getelementptr inbounds %struct.Edge, %struct.Edge* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %98, i32 noundef %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %89
  br label %174

110:                                              ; preds = %89
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %135, label %117

117:                                              ; preds = %110
  %118 = load %struct.Edge*, %struct.Edge** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.Edge, %struct.Edge* %118, i64 %124
  %126 = getelementptr inbounds %struct.Edge, %struct.Edge* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.Edge*, %struct.Edge** %5, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.Edge, %struct.Edge* %128, i64 %130
  %132 = getelementptr inbounds %struct.Edge, %struct.Edge* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %127, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %117, %110
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %135, %117
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %166, label %148

148:                                              ; preds = %141
  %149 = load %struct.Edge*, %struct.Edge** %5, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.Edge, %struct.Edge* %149, i64 %155
  %157 = getelementptr inbounds %struct.Edge, %struct.Edge* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.Edge*, %struct.Edge** %5, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.Edge, %struct.Edge* %159, i64 %161
  %163 = getelementptr inbounds %struct.Edge, %struct.Edge* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %158, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %148, %141
  %167 = load i32, i32* %12, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %148
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173, %109
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %85, !llvm.loop !9

177:                                              ; preds = %85
  store i32 0, i32* %15, align 4
  br label %178

178:                                              ; preds = %258, %177
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %3, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %261

182:                                              ; preds = %178
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, -1
  br i1 %188, label %189, label %257

189:                                              ; preds = %182
  %190 = load %struct.subset*, %struct.subset** %6, align 8
  %191 = load %struct.Edge*, %struct.Edge** %5, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.Edge, %struct.Edge* %191, i64 %197
  %199 = getelementptr inbounds %struct.Edge, %struct.Edge* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %190, i32 noundef %200)
  store i32 %201, i32* %16, align 4
  %202 = load %struct.subset*, %struct.subset** %6, align 8
  %203 = load %struct.Edge*, %struct.Edge** %5, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.Edge, %struct.Edge* %203, i64 %209
  %211 = getelementptr inbounds %struct.Edge, %struct.Edge* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %202, i32 noundef %212)
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %189
  br label %258

218:                                              ; preds = %189
  %219 = load %struct.Edge*, %struct.Edge** %5, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.Edge, %struct.Edge* %219, i64 %225
  %227 = getelementptr inbounds %struct.Edge, %struct.Edge* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %10, align 4
  %231 = load %struct.Edge*, %struct.Edge** %5, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.Edge, %struct.Edge* %231, i64 %237
  %239 = getelementptr inbounds %struct.Edge, %struct.Edge* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.Edge*, %struct.Edge** %5, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.Edge, %struct.Edge* %241, i64 %247
  %249 = getelementptr inbounds %struct.Edge, %struct.Edge* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef %240, i32 noundef %250)
  %252 = load %struct.subset*, %struct.subset** %6, align 8
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %17, align 4
  call void @_Z5UnionP6subsetii(%struct.subset* noundef %252, i32 noundef %253, i32 noundef %254)
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %218, %182
  br label %258

258:                                              ; preds = %257, %217
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %15, align 4
  br label %178, !llvm.loop !10

261:                                              ; preds = %178
  br label %68, !llvm.loop !11

262:                                              ; preds = %68
  %263 = load i32, i32* %10, align 4
  %264 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %263)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4findP6subseti(%struct.subset* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.subset*, align 8
  %4 = alloca i32, align 4
  store %struct.subset* %0, %struct.subset** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.subset*, %struct.subset** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.subset, %struct.subset* %5, i64 %7
  %9 = getelementptr inbounds %struct.subset, %struct.subset* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.subset*, %struct.subset** %3, align 8
  %15 = load %struct.subset*, %struct.subset** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.subset, %struct.subset* %15, i64 %17
  %19 = getelementptr inbounds %struct.subset, %struct.subset* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %14, i32 noundef %20)
  %22 = load %struct.subset*, %struct.subset** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.subset, %struct.subset* %22, i64 %24
  %26 = getelementptr inbounds %struct.subset, %struct.subset* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load %struct.subset*, %struct.subset** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.subset, %struct.subset* %28, i64 %30
  %32 = getelementptr inbounds %struct.subset, %struct.subset* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z5UnionP6subsetii(%struct.subset* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.subset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.subset* %0, %struct.subset** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.subset*, %struct.subset** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %9, i32 noundef %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.subset*, %struct.subset** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call noundef i32 @_Z4findP6subseti(%struct.subset* noundef %12, i32 noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.subset*, %struct.subset** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.subset, %struct.subset* %15, i64 %17
  %19 = getelementptr inbounds %struct.subset, %struct.subset* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.subset*, %struct.subset** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.subset, %struct.subset* %21, i64 %23
  %25 = getelementptr inbounds %struct.subset, %struct.subset* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.subset*, %struct.subset** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.subset, %struct.subset* %30, i64 %32
  %34 = getelementptr inbounds %struct.subset, %struct.subset* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  br label %71

35:                                               ; preds = %3
  %36 = load %struct.subset*, %struct.subset** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.subset, %struct.subset* %36, i64 %38
  %40 = getelementptr inbounds %struct.subset, %struct.subset* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.subset*, %struct.subset** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.subset, %struct.subset* %42, i64 %44
  %46 = getelementptr inbounds %struct.subset, %struct.subset* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.subset*, %struct.subset** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.subset, %struct.subset* %51, i64 %53
  %55 = getelementptr inbounds %struct.subset, %struct.subset* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  br label %70

56:                                               ; preds = %35
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.subset*, %struct.subset** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.subset, %struct.subset* %58, i64 %60
  %62 = getelementptr inbounds %struct.subset, %struct.subset* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.subset*, %struct.subset** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.subset, %struct.subset* %63, i64 %65
  %67 = getelementptr inbounds %struct.subset, %struct.subset* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %56, %49
  br label %71

71:                                               ; preds = %70, %28
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef %struct.Graph* @_Z11createGraphii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Graph*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #5
  %7 = bitcast i8* %6 to %struct.Graph*
  store %struct.Graph* %7, %struct.Graph** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.Graph*, %struct.Graph** %5, align 8
  %10 = getelementptr inbounds %struct.Graph, %struct.Graph* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.Graph*, %struct.Graph** %5, align 8
  %13 = getelementptr inbounds %struct.Graph, %struct.Graph* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 12)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = call noalias noundef nonnull i8* @_Znam(i64 noundef %19) #5
  %21 = bitcast i8* %20 to %struct.Edge*
  %22 = load %struct.Graph*, %struct.Graph** %5, align 8
  %23 = getelementptr inbounds %struct.Graph, %struct.Graph* %22, i32 0, i32 2
  store %struct.Edge* %21, %struct.Edge** %23, align 8
  %24 = load %struct.Graph*, %struct.Graph** %5, align 8
  ret %struct.Graph* %24
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.Graph*, align 8
  store i32 0, i32* %1, align 4
  store i32 4, i32* %2, align 4
  store i32 5, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call noundef %struct.Graph* @_Z11createGraphii(i32 noundef %5, i32 noundef %6)
  store %struct.Graph* %7, %struct.Graph** %4, align 8
  %8 = load %struct.Graph*, %struct.Graph** %4, align 8
  %9 = getelementptr inbounds %struct.Graph, %struct.Graph* %8, i32 0, i32 2
  %10 = load %struct.Edge*, %struct.Edge** %9, align 8
  %11 = getelementptr inbounds %struct.Edge, %struct.Edge* %10, i64 0
  %12 = getelementptr inbounds %struct.Edge, %struct.Edge* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.Graph*, %struct.Graph** %4, align 8
  %14 = getelementptr inbounds %struct.Graph, %struct.Graph* %13, i32 0, i32 2
  %15 = load %struct.Edge*, %struct.Edge** %14, align 8
  %16 = getelementptr inbounds %struct.Edge, %struct.Edge* %15, i64 0
  %17 = getelementptr inbounds %struct.Edge, %struct.Edge* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.Graph*, %struct.Graph** %4, align 8
  %19 = getelementptr inbounds %struct.Graph, %struct.Graph* %18, i32 0, i32 2
  %20 = load %struct.Edge*, %struct.Edge** %19, align 8
  %21 = getelementptr inbounds %struct.Edge, %struct.Edge* %20, i64 0
  %22 = getelementptr inbounds %struct.Edge, %struct.Edge* %21, i32 0, i32 2
  store i32 10, i32* %22, align 4
  %23 = load %struct.Graph*, %struct.Graph** %4, align 8
  %24 = getelementptr inbounds %struct.Graph, %struct.Graph* %23, i32 0, i32 2
  %25 = load %struct.Edge*, %struct.Edge** %24, align 8
  %26 = getelementptr inbounds %struct.Edge, %struct.Edge* %25, i64 1
  %27 = getelementptr inbounds %struct.Edge, %struct.Edge* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.Graph*, %struct.Graph** %4, align 8
  %29 = getelementptr inbounds %struct.Graph, %struct.Graph* %28, i32 0, i32 2
  %30 = load %struct.Edge*, %struct.Edge** %29, align 8
  %31 = getelementptr inbounds %struct.Edge, %struct.Edge* %30, i64 1
  %32 = getelementptr inbounds %struct.Edge, %struct.Edge* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  %33 = load %struct.Graph*, %struct.Graph** %4, align 8
  %34 = getelementptr inbounds %struct.Graph, %struct.Graph* %33, i32 0, i32 2
  %35 = load %struct.Edge*, %struct.Edge** %34, align 8
  %36 = getelementptr inbounds %struct.Edge, %struct.Edge* %35, i64 1
  %37 = getelementptr inbounds %struct.Edge, %struct.Edge* %36, i32 0, i32 2
  store i32 6, i32* %37, align 4
  %38 = load %struct.Graph*, %struct.Graph** %4, align 8
  %39 = getelementptr inbounds %struct.Graph, %struct.Graph* %38, i32 0, i32 2
  %40 = load %struct.Edge*, %struct.Edge** %39, align 8
  %41 = getelementptr inbounds %struct.Edge, %struct.Edge* %40, i64 2
  %42 = getelementptr inbounds %struct.Edge, %struct.Edge* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.Graph*, %struct.Graph** %4, align 8
  %44 = getelementptr inbounds %struct.Graph, %struct.Graph* %43, i32 0, i32 2
  %45 = load %struct.Edge*, %struct.Edge** %44, align 8
  %46 = getelementptr inbounds %struct.Edge, %struct.Edge* %45, i64 2
  %47 = getelementptr inbounds %struct.Edge, %struct.Edge* %46, i32 0, i32 1
  store i32 3, i32* %47, align 4
  %48 = load %struct.Graph*, %struct.Graph** %4, align 8
  %49 = getelementptr inbounds %struct.Graph, %struct.Graph* %48, i32 0, i32 2
  %50 = load %struct.Edge*, %struct.Edge** %49, align 8
  %51 = getelementptr inbounds %struct.Edge, %struct.Edge* %50, i64 2
  %52 = getelementptr inbounds %struct.Edge, %struct.Edge* %51, i32 0, i32 2
  store i32 5, i32* %52, align 4
  %53 = load %struct.Graph*, %struct.Graph** %4, align 8
  %54 = getelementptr inbounds %struct.Graph, %struct.Graph* %53, i32 0, i32 2
  %55 = load %struct.Edge*, %struct.Edge** %54, align 8
  %56 = getelementptr inbounds %struct.Edge, %struct.Edge* %55, i64 3
  %57 = getelementptr inbounds %struct.Edge, %struct.Edge* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.Graph*, %struct.Graph** %4, align 8
  %59 = getelementptr inbounds %struct.Graph, %struct.Graph* %58, i32 0, i32 2
  %60 = load %struct.Edge*, %struct.Edge** %59, align 8
  %61 = getelementptr inbounds %struct.Edge, %struct.Edge* %60, i64 3
  %62 = getelementptr inbounds %struct.Edge, %struct.Edge* %61, i32 0, i32 1
  store i32 3, i32* %62, align 4
  %63 = load %struct.Graph*, %struct.Graph** %4, align 8
  %64 = getelementptr inbounds %struct.Graph, %struct.Graph* %63, i32 0, i32 2
  %65 = load %struct.Edge*, %struct.Edge** %64, align 8
  %66 = getelementptr inbounds %struct.Edge, %struct.Edge* %65, i64 3
  %67 = getelementptr inbounds %struct.Edge, %struct.Edge* %66, i32 0, i32 2
  store i32 15, i32* %67, align 4
  %68 = load %struct.Graph*, %struct.Graph** %4, align 8
  %69 = getelementptr inbounds %struct.Graph, %struct.Graph* %68, i32 0, i32 2
  %70 = load %struct.Edge*, %struct.Edge** %69, align 8
  %71 = getelementptr inbounds %struct.Edge, %struct.Edge* %70, i64 4
  %72 = getelementptr inbounds %struct.Edge, %struct.Edge* %71, i32 0, i32 0
  store i32 2, i32* %72, align 4
  %73 = load %struct.Graph*, %struct.Graph** %4, align 8
  %74 = getelementptr inbounds %struct.Graph, %struct.Graph* %73, i32 0, i32 2
  %75 = load %struct.Edge*, %struct.Edge** %74, align 8
  %76 = getelementptr inbounds %struct.Edge, %struct.Edge* %75, i64 4
  %77 = getelementptr inbounds %struct.Edge, %struct.Edge* %76, i32 0, i32 1
  store i32 3, i32* %77, align 4
  %78 = load %struct.Graph*, %struct.Graph** %4, align 8
  %79 = getelementptr inbounds %struct.Graph, %struct.Graph* %78, i32 0, i32 2
  %80 = load %struct.Edge*, %struct.Edge** %79, align 8
  %81 = getelementptr inbounds %struct.Edge, %struct.Edge* %80, i64 4
  %82 = getelementptr inbounds %struct.Edge, %struct.Edge* %81, i32 0, i32 2
  store i32 4, i32* %82, align 4
  %83 = load %struct.Graph*, %struct.Graph** %4, align 8
  call void @_Z10boruvkaMSTP5Graph(%struct.Graph* noundef %83)
  ret i32 0
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
