; ModuleID = 'PE-benchmarks/bellman-ford-algorithm.cpp'
source_filename = "PE-benchmarks/bellman-ford-algorithm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.Graph = type { i32, i32, ptr }
%struct.Edge = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Vertex Distance from Source\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d \09\09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Graph contains negative weight cycle\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_Z11createGraphii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #6
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
  %19 = call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #6
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.Graph, ptr %20, i32 0, i32 2
  store ptr %19, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z8printArrPii(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, ptr %5, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12, i32 noundef %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %7, !llvm.loop !6

22:                                               ; preds = %7
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z11BellmanFordP5Graphi(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
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
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.Graph, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %5, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.Graph, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %6, align 4
  %26 = load i32, ptr %5, align 4
  %27 = zext i32 %26 to i64
  %28 = call ptr @llvm.stacksave.p0()
  store ptr %28, ptr %7, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %30

30:                                               ; preds = %38, %2
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %29, i64 %36
  store i32 2147483647, ptr %37, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %9, align 4
  br label %30, !llvm.loop !8

41:                                               ; preds = %30
  %42 = load i32, ptr %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %29, i64 %43
  store i32 0, ptr %44, align 4
  store i32 1, ptr %10, align 4
  br label %45

45:                                               ; preds = %112, %41
  %46 = load i32, ptr %10, align 4
  %47 = load i32, ptr %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp sle i32 %46, %48
  br i1 %49, label %50, label %115

50:                                               ; preds = %45
  store i32 0, ptr %11, align 4
  br label %51

51:                                               ; preds = %108, %50
  %52 = load i32, ptr %11, align 4
  %53 = load i32, ptr %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct.Graph, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = load i32, ptr %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Edge, ptr %58, i64 %60
  %62 = getelementptr inbounds %struct.Edge, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %12, align 4
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.Graph, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = load i32, ptr %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Edge, ptr %66, i64 %68
  %70 = getelementptr inbounds %struct.Edge, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %13, align 4
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.Graph, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = load i32, ptr %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Edge, ptr %74, i64 %76
  %78 = getelementptr inbounds %struct.Edge, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %14, align 4
  %80 = load i32, ptr %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %29, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = icmp ne i32 %83, 2147483647
  br i1 %84, label %85, label %107

85:                                               ; preds = %55
  %86 = load i32, ptr %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %29, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %14, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, ptr %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %29, i64 %93
  %95 = load i32, ptr %94, align 4
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = load i32, ptr %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %29, i64 %99
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, ptr %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %29, i64 %105
  store i32 %103, ptr %106, align 4
  br label %107

107:                                              ; preds = %97, %85, %55
  br label %108

108:                                              ; preds = %107
  %109 = load i32, ptr %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %11, align 4
  br label %51, !llvm.loop !9

111:                                              ; preds = %51
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %10, align 4
  br label %45, !llvm.loop !10

115:                                              ; preds = %45
  store i32 0, ptr %15, align 4
  br label %116

116:                                              ; preds = %165, %115
  %117 = load i32, ptr %15, align 4
  %118 = load i32, ptr %6, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %168

120:                                              ; preds = %116
  %121 = load ptr, ptr %3, align 8
  %122 = getelementptr inbounds %struct.Graph, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8
  %124 = load i32, ptr %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.Edge, ptr %123, i64 %125
  %127 = getelementptr inbounds %struct.Edge, ptr %126, i32 0, i32 0
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %16, align 4
  %129 = load ptr, ptr %3, align 8
  %130 = getelementptr inbounds %struct.Graph, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8
  %132 = load i32, ptr %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Edge, ptr %131, i64 %133
  %135 = getelementptr inbounds %struct.Edge, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %17, align 4
  %137 = load ptr, ptr %3, align 8
  %138 = getelementptr inbounds %struct.Graph, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  %140 = load i32, ptr %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Edge, ptr %139, i64 %141
  %143 = getelementptr inbounds %struct.Edge, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  store i32 %144, ptr %18, align 4
  %145 = load i32, ptr %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %29, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = icmp ne i32 %148, 2147483647
  br i1 %149, label %150, label %164

150:                                              ; preds = %120
  %151 = load i32, ptr %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %29, i64 %152
  %154 = load i32, ptr %153, align 4
  %155 = load i32, ptr %18, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, ptr %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %29, i64 %158
  %160 = load i32, ptr %159, align 4
  %161 = icmp slt i32 %156, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 1, ptr %19, align 4
  br label %170

164:                                              ; preds = %150, %120
  br label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %15, align 4
  br label %116, !llvm.loop !11

168:                                              ; preds = %116
  %169 = load i32, ptr %5, align 4
  call void @_Z8printArrPii(ptr noundef %29, i32 noundef %169)
  store i32 1, ptr %19, align 4
  br label %170

170:                                              ; preds = %168, %162
  %171 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore.p0(ptr %171)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #4

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #5 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store i32 5, ptr %2, align 4
  store i32 8, ptr %3, align 4
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
  store i32 -1, ptr %22, align 4
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
  store i32 4, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.Graph, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.Edge, ptr %40, i64 2
  %42 = getelementptr inbounds %struct.Edge, ptr %41, i32 0, i32 0
  store i32 1, ptr %42, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.Graph, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.Edge, ptr %45, i64 2
  %47 = getelementptr inbounds %struct.Edge, ptr %46, i32 0, i32 1
  store i32 2, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.Graph, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.Edge, ptr %50, i64 2
  %52 = getelementptr inbounds %struct.Edge, ptr %51, i32 0, i32 2
  store i32 3, ptr %52, align 4
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
  store i32 2, ptr %67, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.Graph, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.Edge, ptr %70, i64 4
  %72 = getelementptr inbounds %struct.Edge, ptr %71, i32 0, i32 0
  store i32 1, ptr %72, align 4
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.Graph, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.Edge, ptr %75, i64 4
  %77 = getelementptr inbounds %struct.Edge, ptr %76, i32 0, i32 1
  store i32 4, ptr %77, align 4
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds %struct.Graph, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.Edge, ptr %80, i64 4
  %82 = getelementptr inbounds %struct.Edge, ptr %81, i32 0, i32 2
  store i32 2, ptr %82, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct.Graph, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.Edge, ptr %85, i64 5
  %87 = getelementptr inbounds %struct.Edge, ptr %86, i32 0, i32 0
  store i32 3, ptr %87, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.Graph, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.Edge, ptr %90, i64 5
  %92 = getelementptr inbounds %struct.Edge, ptr %91, i32 0, i32 1
  store i32 2, ptr %92, align 4
  %93 = load ptr, ptr %4, align 8
  %94 = getelementptr inbounds %struct.Graph, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.Edge, ptr %95, i64 5
  %97 = getelementptr inbounds %struct.Edge, ptr %96, i32 0, i32 2
  store i32 5, ptr %97, align 4
  %98 = load ptr, ptr %4, align 8
  %99 = getelementptr inbounds %struct.Graph, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.Edge, ptr %100, i64 6
  %102 = getelementptr inbounds %struct.Edge, ptr %101, i32 0, i32 0
  store i32 3, ptr %102, align 4
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds %struct.Graph, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.Edge, ptr %105, i64 6
  %107 = getelementptr inbounds %struct.Edge, ptr %106, i32 0, i32 1
  store i32 1, ptr %107, align 4
  %108 = load ptr, ptr %4, align 8
  %109 = getelementptr inbounds %struct.Graph, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.Edge, ptr %110, i64 6
  %112 = getelementptr inbounds %struct.Edge, ptr %111, i32 0, i32 2
  store i32 1, ptr %112, align 4
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct.Graph, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.Edge, ptr %115, i64 7
  %117 = getelementptr inbounds %struct.Edge, ptr %116, i32 0, i32 0
  store i32 4, ptr %117, align 4
  %118 = load ptr, ptr %4, align 8
  %119 = getelementptr inbounds %struct.Graph, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.Edge, ptr %120, i64 7
  %122 = getelementptr inbounds %struct.Edge, ptr %121, i32 0, i32 1
  store i32 3, ptr %122, align 4
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds %struct.Graph, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.Edge, ptr %125, i64 7
  %127 = getelementptr inbounds %struct.Edge, ptr %126, i32 0, i32 2
  store i32 -3, ptr %127, align 4
  %128 = load ptr, ptr %4, align 8
  call void @_Z11BellmanFordP5Graphi(ptr noundef %128, i32 noundef 0)
  ret i32 0
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git d097f430a172a5d798a39b416b1af84f4ec572e1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
