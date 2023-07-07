; ModuleID = 'PE-benchmarks/min-cost-path.cpp'
source_filename = "PE-benchmarks/min-cost-path.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.cost = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 8, i32 2], [3 x i32] [i32 1, i32 5, i32 3]], align 16
@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z7minCostPA3_iii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  store i32 2147483647, ptr %4, align 4
  br label %56

14:                                               ; preds = %10
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], ptr %21, i64 %23
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], ptr %24, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %4, align 4
  br label %56

29:                                               ; preds = %17, %14
  %30 = load ptr, ptr %5, align 8
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], ptr %30, i64 %32
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i32], ptr %33, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %5, align 8
  %39 = load i32, ptr %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, ptr %7, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call noundef i32 @_Z7minCostPA3_iii(ptr noundef %38, i32 noundef %40, i32 noundef %42)
  %44 = load ptr, ptr %5, align 8
  %45 = load i32, ptr %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, ptr %7, align 4
  %48 = call noundef i32 @_Z7minCostPA3_iii(ptr noundef %44, i32 noundef %46, i32 noundef %47)
  %49 = load ptr, ptr %5, align 8
  %50 = load i32, ptr %6, align 4
  %51 = load i32, ptr %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call noundef i32 @_Z7minCostPA3_iii(ptr noundef %49, i32 noundef %50, i32 noundef %52)
  %54 = call noundef i32 @_Z3miniii(i32 noundef %43, i32 noundef %48, i32 noundef %53)
  %55 = add nsw i32 %37, %54
  store i32 %55, ptr %4, align 4
  br label %56

56:                                               ; preds = %29, %20, %13
  %57 = load i32, ptr %4, align 4
  ret i32 %57
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3miniii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, ptr %5, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, ptr %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, ptr %4, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i32, ptr %6, align 4
  %23 = load i32, ptr %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, ptr %7, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, ptr %4, align 4
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, ptr %4, align 4
  ret i32 %32
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x [3 x i32]], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.cost, i64 36, i1 false)
  %3 = getelementptr inbounds [3 x [3 x i32]], ptr %2, i64 0, i64 0
  %4 = call noundef i32 @_Z7minCostPA3_iii(ptr noundef %3, i32 noundef 2, i32 noundef 2)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230610113410+7cbf1a259152-1~exp1~20230610233423.102)"}
