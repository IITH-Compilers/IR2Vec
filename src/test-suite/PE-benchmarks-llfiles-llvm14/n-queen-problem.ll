; ModuleID = 'PE-benchmarks/n-queen-problem.cpp'
source_filename = "PE-benchmarks/n-queen-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ld = dso_local global [30 x i32] zeroinitializer, align 16
@rd = dso_local global [30 x i32] zeroinitializer, align 16
@cl = dso_local global [30 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1

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

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z11solveNQUtilPA4_ii([4 x i32]* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca [4 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i1 true, i1* %3, align 1
  br label %94

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %90, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %93

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [30 x i32], [30 x i32]* @ld, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %89

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [30 x i32], [30 x i32]* @rd, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %89

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [30 x i32], [30 x i32]* @cl, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %89

38:                                               ; preds = %32
  %39 = load [4 x i32]*, [4 x i32]** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 %41
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 %44
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [30 x i32], [30 x i32]* @cl, i64 0, i64 %47
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [30 x i32], [30 x i32]* @rd, i64 0, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [30 x i32], [30 x i32]* @ld, i64 0, i64 %59
  store i32 1, i32* %60, align 4
  %61 = load [4 x i32]*, [4 x i32]** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  %64 = call noundef zeroext i1 @_Z11solveNQUtilPA4_ii([4 x i32]* noundef %61, i32 noundef %63)
  br i1 %64, label %65, label %66

65:                                               ; preds = %38
  store i1 true, i1* %3, align 1
  br label %94

66:                                               ; preds = %38
  %67 = load [4 x i32]*, [4 x i32]** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i64 %69
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i64 0, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [30 x i32], [30 x i32]* @cl, i64 0, i64 %75
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [30 x i32], [30 x i32]* @rd, i64 0, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %82, %83
  %85 = add nsw i32 %84, 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [30 x i32], [30 x i32]* @ld, i64 0, i64 %87
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %66, %32, %24, %14
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %11, !llvm.loop !9

93:                                               ; preds = %11
  store i1 false, i1* %3, align 1
  br label %94

94:                                               ; preds = %93, %65, %9
  %95 = load i1, i1* %3, align 1
  ret i1 %95
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z7solveNQv() #0 {
  %1 = alloca i1, align 1
  %2 = alloca [4 x [4 x i32]], align 16
  %3 = bitcast [4 x [4 x i32]]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 64, i1 false)
  %4 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %2, i64 0, i64 0
  %5 = call noundef zeroext i1 @_Z11solveNQUtilPA4_ii([4 x i32]* noundef %4, i32 noundef 0)
  %6 = zext i1 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i1 false, i1* %1, align 1
  br label %12

10:                                               ; preds = %0
  %11 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %2, i64 0, i64 0
  call void @_Z13printSolutionPA4_i([4 x i32]* noundef %11)
  store i1 true, i1* %1, align 1
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i1, i1* %1, align 1
  ret i1 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call noundef zeroext i1 @_Z7solveNQv()
  ret i32 0
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
