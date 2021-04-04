; ModuleID = 'PE-benchmarks/the-knights-tour.cpp'
source_filename = "PE-benchmarks/the-knights-tour.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %2d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const._Z7solveKTv.xMove = private unnamed_addr constant [8 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -2, i32 -1, i32 1, i32 2], align 16
@__const._Z7solveKTv.yMove = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 2, i32 1, i32 -1, i32 -2, i32 -2, i32 -1], align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z6isSafeiiPA8_i(i32 %0, i32 %1, [8 x i32]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32]*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store [8 x i32]* %2, [8 x i32]** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load [8 x i32]*, [8 x i32]** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 %21
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br label %28

28:                                               ; preds = %18, %15, %12, %9, %3
  %29 = phi i1 [ false, %15 ], [ false, %12 ], [ false, %9 ], [ false, %3 ], [ %27, %18 ]
  ret i1 %29
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z13printSolutionPA8_i([8 x i32]* %0) #1 {
  %2 = alloca [8 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [8 x i32]* %0, [8 x i32]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load [8 x i32]*, [8 x i32]** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %9, !llvm.loop !2

25:                                               ; preds = %9
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5, !llvm.loop !4

30:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable mustprogress
define dso_local zeroext i1 @_Z7solveKTv() #1 {
  %1 = alloca i1, align 1
  %2 = alloca [8 x [8 x i32]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %25, %0
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %2, i64 0, i64 %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %19
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %11, !llvm.loop !5

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %7, !llvm.loop !6

28:                                               ; preds = %7
  %29 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([8 x i32]* @__const._Z7solveKTv.xMove to i8*), i64 32, i1 false)
  %30 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([8 x i32]* @__const._Z7solveKTv.yMove to i8*), i64 32, i1 false)
  %31 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %2, i64 0, i64 0
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 0
  store i32 0, i32* %32, align 16
  %33 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %2, i64 0, i64 0
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %36 = call i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 0, i32 0, i32 1, [8 x i32]* %33, i32* %34, i32* %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i1 false, i1* %1, align 1
  br label %43

40:                                               ; preds = %28
  %41 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %2, i64 0, i64 0
  call void @_Z13printSolutionPA8_i([8 x i32]* %41)
  br label %42

42:                                               ; preds = %40
  store i1 true, i1* %1, align 1
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i1, i1* %1, align 1
  ret i1 %44
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 %0, i32 %1, i32 %2, [8 x i32]* %3, i32* %4, i32* %5) #1 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32]*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store [8 x i32]* %3, [8 x i32]** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %76

20:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %72, %20
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %75

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load [8 x i32]*, [8 x i32]** %11, align 8
  %42 = call zeroext i1 @_Z6isSafeiiPA8_i(i32 %39, i32 %40, [8 x i32]* %41)
  br i1 %42, label %43, label %71

43:                                               ; preds = %24
  %44 = load i32, i32* %10, align 4
  %45 = load [8 x i32]*, [8 x i32]** %11, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %45, i64 %47
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %48, i64 0, i64 %50
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = load [8 x i32]*, [8 x i32]** %11, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 %52, i32 %53, i32 %55, [8 x i32]* %56, i32* %57, i32* %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %76

62:                                               ; preds = %43
  %63 = load [8 x i32]*, [8 x i32]** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 %65
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 0, i64 %68
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %21, !llvm.loop !7

75:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %61, %19
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call zeroext i1 @_Z7solveKTv()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
