; ModuleID = 'PE-benchmarks/rat-in-a-maze.cpp'
source_filename = "PE-benchmarks/rat-in-a-maze.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Solution doesn't exist\00", align 1
@__const.main.maze = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 1, i32 1]], align 16

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13printSolutionPA4_i([4 x i32]* noundef %0) #0 {
  %2 = alloca [4 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load [4 x i32]*, [4 x i32]** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %9, !llvm.loop !6

25:                                               ; preds = %9
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5, !llvm.loop !8

30:                                               ; preds = %5
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z6isSafePA4_iii([4 x i32]* noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i1, align 1
  %5 = alloca [4 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load [4 x i32]*, [4 x i32]** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i1 true, i1* %4, align 1
  br label %31

30:                                               ; preds = %19, %16, %13, %10, %3
  store i1 false, i1* %4, align 1
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i1, i1* %4, align 1
  ret i1 %32
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z9solveMazePA4_i([4 x i32]* noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca [4 x i32]*, align 8
  %4 = alloca [4 x [4 x i32]], align 16
  store [4 x i32]* %0, [4 x i32]** %3, align 8
  %5 = bitcast [4 x [4 x i32]]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 64, i1 false)
  %6 = load [4 x i32]*, [4 x i32]** %3, align 8
  %7 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %4, i64 0, i64 0
  %8 = call noundef zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* noundef %6, i32 noundef 0, i32 noundef 0, [4 x i32]* noundef %7)
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i1 false, i1* %2, align 1
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %4, i64 0, i64 0
  call void @_Z13printSolutionPA4_i([4 x i32]* noundef %14)
  store i1 true, i1* %2, align 1
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i1, i1* %2, align 1
  ret i1 %16
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* noundef %0, i32 noundef %1, i32 noundef %2, [4 x i32]* noundef %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca [4 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32]*, align 8
  store [4 x i32]* %0, [4 x i32]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store [4 x i32]* %3, [4 x i32]** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load [4 x i32]*, [4 x i32]** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 %18
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %21
  store i32 1, i32* %22, align 4
  store i1 true, i1* %5, align 1
  br label %66

23:                                               ; preds = %12, %4
  %24 = load [4 x i32]*, [4 x i32]** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call noundef zeroext i1 @_Z6isSafePA4_iii([4 x i32]* noundef %24, i32 noundef %25, i32 noundef %26)
  %28 = zext i1 %27 to i32
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %65

30:                                               ; preds = %23
  %31 = load [4 x i32]*, [4 x i32]** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 %36
  store i32 1, i32* %37, align 4
  %38 = load [4 x i32]*, [4 x i32]** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %8, align 4
  %42 = load [4 x i32]*, [4 x i32]** %9, align 8
  %43 = call noundef zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* noundef %38, i32 noundef %40, i32 noundef %41, [4 x i32]* noundef %42)
  %44 = zext i1 %43 to i32
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  store i1 true, i1* %5, align 1
  br label %66

47:                                               ; preds = %30
  %48 = load [4 x i32]*, [4 x i32]** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = load [4 x i32]*, [4 x i32]** %9, align 8
  %53 = call noundef zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* noundef %48, i32 noundef %49, i32 noundef %51, [4 x i32]* noundef %52)
  %54 = zext i1 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i1 true, i1* %5, align 1
  br label %66

57:                                               ; preds = %47
  %58 = load [4 x i32]*, [4 x i32]** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i64 0, i64 %63
  store i32 0, i32* %64, align 4
  store i1 false, i1* %5, align 1
  br label %66

65:                                               ; preds = %23
  store i1 false, i1* %5, align 1
  br label %66

66:                                               ; preds = %65, %57, %56, %46, %15
  %67 = load i1, i1* %5, align 1
  ret i1 %67
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [4 x i32]], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [4 x [4 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([4 x [4 x i32]]* @__const.main.maze to i8*), i64 64, i1 false)
  %4 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %2, i64 0, i64 0
  %5 = call noundef zeroext i1 @_Z9solveMazePA4_i([4 x i32]* noundef %4)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }

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
