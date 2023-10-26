; ModuleID = 'PE-benchmarks/m-coloring-problem.cpp'
source_filename = "PE-benchmarks/m-coloring-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Solution Exists: Following are the assigned colors \0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\00\01\01\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\01\00\01", [4 x i8] c"\01\00\01\00"], align 16

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z6isSafeiPA4_bPii(i32 noundef %0, [4 x i8]* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store [4 x i8]* %1, [4 x i8]** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %34, %4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load [4 x i8]*, [4 x i8]** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 %17
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i1 false, i1* %5, align 1
  br label %38

33:                                               ; preds = %24, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %11, !llvm.loop !6

37:                                               ; preds = %11
  store i1 true, i1* %5, align 1
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i1, i1* %5, align 1
  ret i1 %39
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #1 {
  %5 = alloca i1, align 1
  %6 = alloca [4 x i8]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [4 x i8]* %0, [4 x i8]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i1 true, i1* %5, align 1
  br label %50

14:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load [4 x i8]*, [4 x i8]** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call noundef zeroext i1 @_Z6isSafeiPA4_bPii(i32 noundef %20, [4 x i8]* noundef %21, i32* noundef %22, i32 noundef %23)
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load [4 x i8]*, [4 x i8]** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  %36 = call noundef zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* noundef %31, i32 noundef %32, i32* noundef %33, i32 noundef %35)
  %37 = zext i1 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i1 true, i1* %5, align 1
  br label %50

40:                                               ; preds = %25
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %19
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %15, !llvm.loop !8

49:                                               ; preds = %15
  store i1 false, i1* %5, align 1
  br label %50

50:                                               ; preds = %49, %39, %13
  %51 = load i1, i1* %5, align 1
  ret i1 %51
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z13graphColoringPA4_bi([4 x i8]* noundef %0, i32 noundef %1) #1 {
  %3 = alloca i1, align 1
  %4 = alloca [4 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store [4 x i8]* %0, [4 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %15, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %13
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %8, !llvm.loop !9

18:                                               ; preds = %8
  %19 = load [4 x i8]*, [4 x i8]** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call noundef zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* noundef %19, i32 noundef %20, i32* noundef %21, i32 noundef 0)
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %29

27:                                               ; preds = %18
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  call void @_Z13printSolutionPi(i32* noundef %28)
  store i1 true, i1* %3, align 1
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i1, i1* %3, align 1
  ret i1 %30
}

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13printSolutionPi(i32* noundef %0) #1 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %5, !llvm.loop !10

18:                                               ; preds = %5
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [4 x i8]], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [4 x [4 x i8]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([4 x [4 x i8]], [4 x [4 x i8]]* @__const.main.graph, i32 0, i32 0, i32 0), i64 16, i1 false)
  store i32 3, i32* %3, align 4
  %5 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %2, i64 0, i64 0
  %6 = load i32, i32* %3, align 4
  %7 = call noundef zeroext i1 @_Z13graphColoringPA4_bi([4 x i8]* noundef %5, i32 noundef %6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.1-++20220402053234+23d08271a4b2-1~exp1~20220402053315.111"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
