; ModuleID = 'PE-benchmarks/the-knights-tour.cpp'
source_filename = "PE-benchmarks/the-knights-tour.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %2d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const._Z7solveKTv.xMove = private unnamed_addr constant [8 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -2, i32 -1, i32 1, i32 2], align 16
@__const._Z7solveKTv.yMove = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 2, i32 1, i32 -1, i32 -2, i32 -2, i32 -1], align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z6isSafeiiPA8_i(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %7 = load i32, ptr %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], ptr %19, i64 %21
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], ptr %22, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  br label %28

28:                                               ; preds = %18, %15, %12, %9, %3
  %29 = phi i1 [ false, %15 ], [ false, %12 ], [ false, %9 ], [ false, %3 ], [ %27, %18 ]
  ret i1 %29
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13printSolutionPA8_i(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], ptr %13, i64 %15
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], ptr %16, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %4, align 4
  br label %9, !llvm.loop !6

25:                                               ; preds = %9
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %3, align 4
  br label %5, !llvm.loop !8

30:                                               ; preds = %5
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_Z7solveKTv() #1 {
  %1 = alloca i1, align 1
  %2 = alloca [8 x [8 x i32]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %25, %0
  %8 = load i32, ptr %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  store i32 0, ptr %4, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, ptr %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x [8 x i32]], ptr %2, i64 0, i64 %16
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], ptr %17, i64 0, i64 %19
  store i32 -1, ptr %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %4, align 4
  br label %11, !llvm.loop !9

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %3, align 4
  br label %7, !llvm.loop !10

28:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %5, ptr align 16 @__const._Z7solveKTv.xMove, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const._Z7solveKTv.yMove, i64 32, i1 false)
  %29 = getelementptr inbounds [8 x [8 x i32]], ptr %2, i64 0, i64 0
  %30 = getelementptr inbounds [8 x i32], ptr %29, i64 0, i64 0
  store i32 0, ptr %30, align 16
  %31 = getelementptr inbounds [8 x [8 x i32]], ptr %2, i64 0, i64 0
  %32 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 0
  %33 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 0
  %34 = call noundef i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i1 false, ptr %1, align 1
  br label %41

38:                                               ; preds = %28
  %39 = getelementptr inbounds [8 x [8 x i32]], ptr %2, i64 0, i64 0
  call void @_Z13printSolutionPA8_i(ptr noundef %39)
  br label %40

40:                                               ; preds = %38
  store i1 true, ptr %1, align 1
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i1, ptr %1, align 1
  ret i1 %42
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %17 = load i32, ptr %10, align 4
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 1, ptr %7, align 4
  br label %76

20:                                               ; preds = %6
  store i32 0, ptr %14, align 4
  br label %21

21:                                               ; preds = %72, %20
  %22 = load i32, ptr %14, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %75

24:                                               ; preds = %21
  %25 = load i32, ptr %8, align 4
  %26 = load ptr, ptr %12, align 8
  %27 = load i32, ptr %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = add nsw i32 %25, %30
  store i32 %31, ptr %15, align 4
  %32 = load i32, ptr %9, align 4
  %33 = load ptr, ptr %13, align 8
  %34 = load i32, ptr %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %32, %37
  store i32 %38, ptr %16, align 4
  %39 = load i32, ptr %15, align 4
  %40 = load i32, ptr %16, align 4
  %41 = load ptr, ptr %11, align 8
  %42 = call noundef zeroext i1 @_Z6isSafeiiPA8_i(i32 noundef %39, i32 noundef %40, ptr noundef %41)
  br i1 %42, label %43, label %71

43:                                               ; preds = %24
  %44 = load i32, ptr %10, align 4
  %45 = load ptr, ptr %11, align 8
  %46 = load i32, ptr %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], ptr %45, i64 %47
  %49 = load i32, ptr %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], ptr %48, i64 0, i64 %50
  store i32 %44, ptr %51, align 4
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %16, align 4
  %54 = load i32, ptr %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = load ptr, ptr %11, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = call noundef i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 noundef %52, i32 noundef %53, i32 noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 1, ptr %7, align 4
  br label %76

62:                                               ; preds = %43
  %63 = load ptr, ptr %11, align 8
  %64 = load i32, ptr %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i32], ptr %63, i64 %65
  %67 = load i32, ptr %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], ptr %66, i64 0, i64 %68
  store i32 -1, ptr %69, align 4
  br label %70

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %14, align 4
  br label %21, !llvm.loop !11

75:                                               ; preds = %21
  store i32 0, ptr %7, align 4
  br label %76

76:                                               ; preds = %75, %61, %19
  %77 = load i32, ptr %7, align 4
  ret i32 %77
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call noundef zeroext i1 @_Z7solveKTv()
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.0 (++20250204023448+d185bd94ff77-1~exp1~20250204023606.14)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
