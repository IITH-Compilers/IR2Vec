; ModuleID = 'PE-benchmarks/ugly-numbers.cpp'
source_filename = "PE-benchmarks/ugly-numbers.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"150th ugly no. is %d \00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z9maxDivideii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %10, %2
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %4, align 4
  %8 = srem i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr %4, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, ptr %3, align 4
  br label %5, !llvm.loop !6

14:                                               ; preds = %5
  %15 = load i32, ptr %3, align 4
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z6isUglyi(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call noundef i32 @_Z9maxDivideii(i32 noundef %3, i32 noundef 2)
  store i32 %4, ptr %2, align 4
  %5 = load i32, ptr %2, align 4
  %6 = call noundef i32 @_Z9maxDivideii(i32 noundef %5, i32 noundef 3)
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = call noundef i32 @_Z9maxDivideii(i32 noundef %7, i32 noundef 5)
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z12getNthUglyNoi(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, ptr %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 4
  %12 = load i32, ptr %3, align 4
  %13 = call noundef i32 @_Z6isUglyi(i32 noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, ptr %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %4, align 4
  br label %18

18:                                               ; preds = %15, %9
  br label %5, !llvm.loop !8

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 4
  ret i32 %20
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %3 = call noundef i32 @_Z12getNthUglyNoi(i32 noundef 150)
  store i32 %3, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %6 = call i32 @getchar()
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

declare i32 @getchar() #2

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
