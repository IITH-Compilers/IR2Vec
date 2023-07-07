; ModuleID = 'PE-benchmarks/transitive-closure-of-a-graph.cpp'
source_filename = "PE-benchmarks/transitive-closure-of-a-graph.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Following matrix is transitive closure of the given graph\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 0, i32 1]], align 16

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z17transitiveClosurePA4_i(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x [4 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %4, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], ptr %15, i64 %17
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], ptr %18, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %24
  %26 = load i32, ptr %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %27
  store i32 %22, ptr %28, align 4
  br label %29

29:                                               ; preds = %14
  %30 = load i32, ptr %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %5, align 4
  br label %11, !llvm.loop !6

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %4, align 4
  br label %7, !llvm.loop !8

36:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %37

37:                                               ; preds = %94, %36
  %38 = load i32, ptr %6, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %97

40:                                               ; preds = %37
  store i32 0, ptr %4, align 4
  br label %41

41:                                               ; preds = %90, %40
  %42 = load i32, ptr %4, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %93

44:                                               ; preds = %41
  store i32 0, ptr %5, align 4
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i32, ptr %5, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  %49 = load i32, ptr %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %50
  %52 = load i32, ptr %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr %51, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %48
  %58 = load i32, ptr %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %59
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], ptr %60, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load i32, ptr %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %68
  %70 = load i32, ptr %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], ptr %69, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %66, %57
  %76 = phi i1 [ false, %57 ], [ %74, %66 ]
  br label %77

77:                                               ; preds = %75, %48
  %78 = phi i1 [ true, %48 ], [ %76, %75 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, ptr %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 %81
  %83 = load i32, ptr %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], ptr %82, i64 0, i64 %84
  store i32 %79, ptr %85, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, ptr %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %5, align 4
  br label %45, !llvm.loop !9

89:                                               ; preds = %45
  br label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %4, align 4
  br label %41, !llvm.loop !10

93:                                               ; preds = %41
  br label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %6, align 4
  br label %37, !llvm.loop !11

97:                                               ; preds = %37
  %98 = getelementptr inbounds [4 x [4 x i32]], ptr %3, i64 0, i64 0
  call void @_Z13printSolutionPA4_i(ptr noundef %98)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13printSolutionPA4_i(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %3, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, ptr %3, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  store i32 0, ptr %4, align 4
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, ptr %4, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32], ptr %14, i64 %16
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], ptr %17, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %4, align 4
  br label %10, !llvm.loop !12

26:                                               ; preds = %10
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %3, align 4
  br label %6, !llvm.loop !13

31:                                               ; preds = %6
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [4 x i32]], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.graph, i64 64, i1 false)
  %3 = getelementptr inbounds [4 x [4 x i32]], ptr %2, i64 0, i64 0
  call void @_Z17transitiveClosurePA4_i(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230610113410+7cbf1a259152-1~exp1~20230610233423.102)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
