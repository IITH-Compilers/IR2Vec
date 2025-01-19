; ModuleID = 'PE-benchmarks/binary-insertion-sort.cpp'
source_filename = "PE-benchmarks/binary-insertion-sort.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [11 x i32] [i32 37, i32 23, i32 0, i32 17, i32 12, i32 72, i32 31, i32 46, i32 100, i32 88, i32 54], align 16
@.str = private unnamed_addr constant [16 x i8] c"Sorted array: \0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z12binarySearchPiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %11 = load i32, ptr %9, align 4
  %12 = load i32, ptr %8, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i32, ptr %7, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = load i32, ptr %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, ptr %8, align 4
  %24 = add nsw i32 %23, 1
  br label %27

25:                                               ; preds = %14
  %26 = load i32, ptr %8, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  store i32 %28, ptr %5, align 4
  br label %66

29:                                               ; preds = %4
  %30 = load i32, ptr %8, align 4
  %31 = load i32, ptr %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, ptr %10, align 4
  %34 = load i32, ptr %7, align 4
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, ptr %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %5, align 4
  br label %66

44:                                               ; preds = %29
  %45 = load i32, ptr %7, align 4
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %46, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %45, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %7, align 4
  %55 = load i32, ptr %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, ptr %9, align 4
  %58 = call noundef i32 @_Z12binarySearchPiiii(ptr noundef %53, i32 noundef %54, i32 noundef %56, i32 noundef %57)
  store i32 %58, ptr %5, align 4
  br label %66

59:                                               ; preds = %44
  %60 = load ptr, ptr %6, align 8
  %61 = load i32, ptr %7, align 4
  %62 = load i32, ptr %8, align 4
  %63 = load i32, ptr %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = call noundef i32 @_Z12binarySearchPiiii(ptr noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %64)
  store i32 %65, ptr %5, align 4
  br label %66

66:                                               ; preds = %59, %52, %41, %27
  %67 = load i32, ptr %5, align 4
  ret i32 %67
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13insertionSortPii(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 1, ptr %5, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, ptr %7, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %9, align 4
  %24 = load i32, ptr %7, align 4
  %25 = call noundef i32 @_Z12binarySearchPiiii(ptr noundef %22, i32 noundef %23, i32 noundef 0, i32 noundef %24)
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %30, %14
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %3, align 8
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %36, i64 %39
  store i32 %35, ptr %40, align 4
  %41 = load i32, ptr %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr %7, align 4
  br label %26, !llvm.loop !6

43:                                               ; preds = %26
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %3, align 8
  %46 = load i32, ptr %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %45, i64 %48
  store i32 %44, ptr %49, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  br label %10, !llvm.loop !8

53:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.a, i64 44, i1 false)
  store i32 11, ptr %3, align 4
  %5 = getelementptr inbounds [11 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %3, align 4
  call void @_Z13insertionSortPii(ptr noundef %5, i32 noundef %6)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %4, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, ptr %4, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [11 x i32], ptr %2, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %4, align 4
  br label %8, !llvm.loop !9

21:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
