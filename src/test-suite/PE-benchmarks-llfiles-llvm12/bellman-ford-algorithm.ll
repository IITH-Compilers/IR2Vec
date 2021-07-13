; ModuleID = 'PE-benchmarks/bellman-ford-algorithm.cpp'
source_filename = "PE-benchmarks/bellman-ford-algorithm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.Graph = type { i32, i32, %struct.Edge* }
%struct.Edge = type { i32, i32, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [29 x i8] c"Vertex Distance from Source\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d \09\09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Graph contains negative weight cycle\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_bellman_ford_algorithm.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable mustprogress
define dso_local %struct.Graph* @_Z11createGraphii(i32 %0, i32 %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Graph*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call noalias nonnull i8* @_Znwm(i64 16) #9
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
  %20 = call noalias nonnull i8* @_Znam(i64 %19) #9
  %21 = bitcast i8* %20 to %struct.Edge*
  %22 = load %struct.Graph*, %struct.Graph** %5, align 8
  %23 = getelementptr inbounds %struct.Graph, %struct.Graph* %22, i32 0, i32 2
  store %struct.Edge* %21, %struct.Edge** %23, align 8
  %24 = load %struct.Graph*, %struct.Graph** %5, align 8
  ret %struct.Graph* %24
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) #5

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z8printArrPii(i32* %0, i32 %1) #4 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7, !llvm.loop !2

22:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z11BellmanFordP5Graphi(%struct.Graph* %0, i32 %1) #4 {
  %3 = alloca %struct.Graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.Graph* %0, %struct.Graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.Graph*, %struct.Graph** %3, align 8
  %21 = getelementptr inbounds %struct.Graph, %struct.Graph* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.Graph*, %struct.Graph** %3, align 8
  %24 = getelementptr inbounds %struct.Graph, %struct.Graph* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %7, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %38, %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  store i32 2147483647, i32* %37, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %30, !llvm.loop !4

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %29, i64 %43
  store i32 0, i32* %44, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %112, %41
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp sle i32 %46, %48
  br i1 %49, label %50, label %115

50:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %108, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %51
  %56 = load %struct.Graph*, %struct.Graph** %3, align 8
  %57 = getelementptr inbounds %struct.Graph, %struct.Graph* %56, i32 0, i32 2
  %58 = load %struct.Edge*, %struct.Edge** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Edge, %struct.Edge* %58, i64 %60
  %62 = getelementptr inbounds %struct.Edge, %struct.Edge* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.Graph*, %struct.Graph** %3, align 8
  %65 = getelementptr inbounds %struct.Graph, %struct.Graph* %64, i32 0, i32 2
  %66 = load %struct.Edge*, %struct.Edge** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Edge, %struct.Edge* %66, i64 %68
  %70 = getelementptr inbounds %struct.Edge, %struct.Edge* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load %struct.Graph*, %struct.Graph** %3, align 8
  %73 = getelementptr inbounds %struct.Graph, %struct.Graph* %72, i32 0, i32 2
  %74 = load %struct.Edge*, %struct.Edge** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Edge, %struct.Edge* %74, i64 %76
  %78 = getelementptr inbounds %struct.Edge, %struct.Edge* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %29, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 2147483647
  br i1 %84, label %85, label %107

85:                                               ; preds = %55
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %29, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %29, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %29, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %29, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %97, %85, %55
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %51, !llvm.loop !5

111:                                              ; preds = %51
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %45, !llvm.loop !6

115:                                              ; preds = %45
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %165, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %168

120:                                              ; preds = %116
  %121 = load %struct.Graph*, %struct.Graph** %3, align 8
  %122 = getelementptr inbounds %struct.Graph, %struct.Graph* %121, i32 0, i32 2
  %123 = load %struct.Edge*, %struct.Edge** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.Edge, %struct.Edge* %123, i64 %125
  %127 = getelementptr inbounds %struct.Edge, %struct.Edge* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %16, align 4
  %129 = load %struct.Graph*, %struct.Graph** %3, align 8
  %130 = getelementptr inbounds %struct.Graph, %struct.Graph* %129, i32 0, i32 2
  %131 = load %struct.Edge*, %struct.Edge** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Edge, %struct.Edge* %131, i64 %133
  %135 = getelementptr inbounds %struct.Edge, %struct.Edge* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %17, align 4
  %137 = load %struct.Graph*, %struct.Graph** %3, align 8
  %138 = getelementptr inbounds %struct.Graph, %struct.Graph* %137, i32 0, i32 2
  %139 = load %struct.Edge*, %struct.Edge** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Edge, %struct.Edge* %139, i64 %141
  %143 = getelementptr inbounds %struct.Edge, %struct.Edge* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %29, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 2147483647
  br i1 %149, label %150, label %164

150:                                              ; preds = %120
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %29, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %29, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %156, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %170

164:                                              ; preds = %150, %120
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %116, !llvm.loop !7

168:                                              ; preds = %116
  %169 = load i32, i32* %5, align 4
  call void @_Z8printArrPii(i32* %29, i32 %169)
  store i32 1, i32* %19, align 4
  br label %170

170:                                              ; preds = %168, %162
  %171 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %171)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.Graph*, align 8
  store i32 0, i32* %1, align 4
  store i32 5, i32* %2, align 4
  store i32 8, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.Graph* @_Z11createGraphii(i32 %5, i32 %6)
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
  store i32 -1, i32* %22, align 4
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
  store i32 4, i32* %37, align 4
  %38 = load %struct.Graph*, %struct.Graph** %4, align 8
  %39 = getelementptr inbounds %struct.Graph, %struct.Graph* %38, i32 0, i32 2
  %40 = load %struct.Edge*, %struct.Edge** %39, align 8
  %41 = getelementptr inbounds %struct.Edge, %struct.Edge* %40, i64 2
  %42 = getelementptr inbounds %struct.Edge, %struct.Edge* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.Graph*, %struct.Graph** %4, align 8
  %44 = getelementptr inbounds %struct.Graph, %struct.Graph* %43, i32 0, i32 2
  %45 = load %struct.Edge*, %struct.Edge** %44, align 8
  %46 = getelementptr inbounds %struct.Edge, %struct.Edge* %45, i64 2
  %47 = getelementptr inbounds %struct.Edge, %struct.Edge* %46, i32 0, i32 1
  store i32 2, i32* %47, align 4
  %48 = load %struct.Graph*, %struct.Graph** %4, align 8
  %49 = getelementptr inbounds %struct.Graph, %struct.Graph* %48, i32 0, i32 2
  %50 = load %struct.Edge*, %struct.Edge** %49, align 8
  %51 = getelementptr inbounds %struct.Edge, %struct.Edge* %50, i64 2
  %52 = getelementptr inbounds %struct.Edge, %struct.Edge* %51, i32 0, i32 2
  store i32 3, i32* %52, align 4
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
  store i32 2, i32* %67, align 4
  %68 = load %struct.Graph*, %struct.Graph** %4, align 8
  %69 = getelementptr inbounds %struct.Graph, %struct.Graph* %68, i32 0, i32 2
  %70 = load %struct.Edge*, %struct.Edge** %69, align 8
  %71 = getelementptr inbounds %struct.Edge, %struct.Edge* %70, i64 4
  %72 = getelementptr inbounds %struct.Edge, %struct.Edge* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.Graph*, %struct.Graph** %4, align 8
  %74 = getelementptr inbounds %struct.Graph, %struct.Graph* %73, i32 0, i32 2
  %75 = load %struct.Edge*, %struct.Edge** %74, align 8
  %76 = getelementptr inbounds %struct.Edge, %struct.Edge* %75, i64 4
  %77 = getelementptr inbounds %struct.Edge, %struct.Edge* %76, i32 0, i32 1
  store i32 4, i32* %77, align 4
  %78 = load %struct.Graph*, %struct.Graph** %4, align 8
  %79 = getelementptr inbounds %struct.Graph, %struct.Graph* %78, i32 0, i32 2
  %80 = load %struct.Edge*, %struct.Edge** %79, align 8
  %81 = getelementptr inbounds %struct.Edge, %struct.Edge* %80, i64 4
  %82 = getelementptr inbounds %struct.Edge, %struct.Edge* %81, i32 0, i32 2
  store i32 2, i32* %82, align 4
  %83 = load %struct.Graph*, %struct.Graph** %4, align 8
  %84 = getelementptr inbounds %struct.Graph, %struct.Graph* %83, i32 0, i32 2
  %85 = load %struct.Edge*, %struct.Edge** %84, align 8
  %86 = getelementptr inbounds %struct.Edge, %struct.Edge* %85, i64 5
  %87 = getelementptr inbounds %struct.Edge, %struct.Edge* %86, i32 0, i32 0
  store i32 3, i32* %87, align 4
  %88 = load %struct.Graph*, %struct.Graph** %4, align 8
  %89 = getelementptr inbounds %struct.Graph, %struct.Graph* %88, i32 0, i32 2
  %90 = load %struct.Edge*, %struct.Edge** %89, align 8
  %91 = getelementptr inbounds %struct.Edge, %struct.Edge* %90, i64 5
  %92 = getelementptr inbounds %struct.Edge, %struct.Edge* %91, i32 0, i32 1
  store i32 2, i32* %92, align 4
  %93 = load %struct.Graph*, %struct.Graph** %4, align 8
  %94 = getelementptr inbounds %struct.Graph, %struct.Graph* %93, i32 0, i32 2
  %95 = load %struct.Edge*, %struct.Edge** %94, align 8
  %96 = getelementptr inbounds %struct.Edge, %struct.Edge* %95, i64 5
  %97 = getelementptr inbounds %struct.Edge, %struct.Edge* %96, i32 0, i32 2
  store i32 5, i32* %97, align 4
  %98 = load %struct.Graph*, %struct.Graph** %4, align 8
  %99 = getelementptr inbounds %struct.Graph, %struct.Graph* %98, i32 0, i32 2
  %100 = load %struct.Edge*, %struct.Edge** %99, align 8
  %101 = getelementptr inbounds %struct.Edge, %struct.Edge* %100, i64 6
  %102 = getelementptr inbounds %struct.Edge, %struct.Edge* %101, i32 0, i32 0
  store i32 3, i32* %102, align 4
  %103 = load %struct.Graph*, %struct.Graph** %4, align 8
  %104 = getelementptr inbounds %struct.Graph, %struct.Graph* %103, i32 0, i32 2
  %105 = load %struct.Edge*, %struct.Edge** %104, align 8
  %106 = getelementptr inbounds %struct.Edge, %struct.Edge* %105, i64 6
  %107 = getelementptr inbounds %struct.Edge, %struct.Edge* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.Graph*, %struct.Graph** %4, align 8
  %109 = getelementptr inbounds %struct.Graph, %struct.Graph* %108, i32 0, i32 2
  %110 = load %struct.Edge*, %struct.Edge** %109, align 8
  %111 = getelementptr inbounds %struct.Edge, %struct.Edge* %110, i64 6
  %112 = getelementptr inbounds %struct.Edge, %struct.Edge* %111, i32 0, i32 2
  store i32 1, i32* %112, align 4
  %113 = load %struct.Graph*, %struct.Graph** %4, align 8
  %114 = getelementptr inbounds %struct.Graph, %struct.Graph* %113, i32 0, i32 2
  %115 = load %struct.Edge*, %struct.Edge** %114, align 8
  %116 = getelementptr inbounds %struct.Edge, %struct.Edge* %115, i64 7
  %117 = getelementptr inbounds %struct.Edge, %struct.Edge* %116, i32 0, i32 0
  store i32 4, i32* %117, align 4
  %118 = load %struct.Graph*, %struct.Graph** %4, align 8
  %119 = getelementptr inbounds %struct.Graph, %struct.Graph* %118, i32 0, i32 2
  %120 = load %struct.Edge*, %struct.Edge** %119, align 8
  %121 = getelementptr inbounds %struct.Edge, %struct.Edge* %120, i64 7
  %122 = getelementptr inbounds %struct.Edge, %struct.Edge* %121, i32 0, i32 1
  store i32 3, i32* %122, align 4
  %123 = load %struct.Graph*, %struct.Graph** %4, align 8
  %124 = getelementptr inbounds %struct.Graph, %struct.Graph* %123, i32 0, i32 2
  %125 = load %struct.Edge*, %struct.Edge** %124, align 8
  %126 = getelementptr inbounds %struct.Edge, %struct.Edge* %125, i64 7
  %127 = getelementptr inbounds %struct.Edge, %struct.Edge* %126, i32 0, i32 2
  store i32 -3, i32* %127, align 4
  %128 = load %struct.Graph*, %struct.Graph** %4, align 8
  call void @_Z11BellmanFordP5Graphi(%struct.Graph* %128, i32 0)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_bellman_ford_algorithm.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin allocsize(0) }

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
