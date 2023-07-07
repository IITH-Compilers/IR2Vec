; ModuleID = 'PE-benchmarks/finite-automata-algorithm.cpp'
source_filename = "PE-benchmarks/finite-automata-algorithm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\0A Pattern found at index %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"AABAACAADAABAAABAA\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AABA\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z12getNextStatePciii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %12 = load i32, ptr %8, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32, ptr %9, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %17, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, ptr %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %5, align 4
  br label %85

27:                                               ; preds = %15, %4
  %28 = load i32, ptr %8, align 4
  store i32 %28, ptr %10, align 4
  br label %29

29:                                               ; preds = %81, %27
  %30 = load i32, ptr %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %10, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i32, ptr %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %32
  store i32 0, ptr %11, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, ptr %11, align 4
  %45 = load i32, ptr %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 8
  %50 = load i32, ptr %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %8, align 4
  %57 = load i32, ptr %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, ptr %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %55, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %54, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %48
  br label %72

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %11, align 4
  br label %43, !llvm.loop !6

72:                                               ; preds = %67, %43
  %73 = load i32, ptr %11, align 4
  %74 = load i32, ptr %10, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, ptr %10, align 4
  store i32 %78, ptr %5, align 4
  br label %85

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %32
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %10, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, ptr %10, align 4
  br label %29, !llvm.loop !8

84:                                               ; preds = %29
  store i32 0, ptr %5, align 4
  br label %85

85:                                               ; preds = %84, %77, %24
  %86 = load i32, ptr %5, align 4
  ret i32 %86
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z9computeTFPciPA256_i(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %5, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  store i32 0, ptr %8, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, ptr %8, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %5, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %8, align 4
  %22 = call noundef i32 @_Z12getNextStatePciii(ptr noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21)
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i32], ptr %23, i64 %25
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i32], ptr %26, i64 0, i64 %28
  store i32 %22, ptr %29, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %8, align 4
  br label %14, !llvm.loop !9

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %7, align 4
  br label %9, !llvm.loop !10

37:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z6searchPcS_(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = call i64 @strlen(ptr noundef %11) #6
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %5, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = call i64 @strlen(ptr noundef %14) #6
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call ptr @llvm.stacksave()
  store ptr %20, ptr %7, align 8
  %21 = alloca [256 x i32], i64 %19, align 16
  store i64 %19, ptr %8, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %5, align 4
  call void @_Z9computeTFPciPA256_i(ptr noundef %22, i32 noundef %23, ptr noundef %21)
  store i32 0, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %24

24:                                               ; preds = %50, %2
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i32, ptr %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x i32], ptr %21, i64 %30
  %32 = load ptr, ptr %4, align 8
  %33 = load i32, ptr %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i32], ptr %31, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %10, align 4
  %40 = load i32, ptr %10, align 4
  %41 = load i32, ptr %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load i32, ptr %9, align 4
  %45 = load i32, ptr %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %47)
  br label %49

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %9, align 4
  br label %24, !llvm.loop !11

53:                                               ; preds = %24
  %54 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore(ptr %54)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #3

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #5 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store ptr @.str.1, ptr %2, align 8
  store ptr @.str.2, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  call void @_Z6searchPcS_(ptr noundef %4, ptr noundef %5)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }

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
