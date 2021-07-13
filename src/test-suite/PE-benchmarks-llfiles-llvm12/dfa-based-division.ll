; ModuleID = 'PE-benchmarks/dfa-based-division.cpp'
source_filename = "PE-benchmarks/dfa-based-division.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Divisible\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Not Divisible: Remainder is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local void @_Z10preprocessiPA2_i(i32 %0, [2 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store [2 x i32]* %1, [2 x i32]** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %21, %22
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = load [2 x i32]*, [2 x i32]** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 %28
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 1
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  br label %43

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %40, %41
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %38, %37 ], [ %42, %39 ]
  %45 = load [2 x i32]*, [2 x i32]** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 %47
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 1
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %8, !llvm.loop !2

53:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z15isDivisibleUtiliPiPA2_i(i32 %0, i32* %1, [2 x i32]* %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32]*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store [2 x i32]* %2, [2 x i32]** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 1
  %12 = load i32*, i32** %5, align 8
  %13 = load [2 x i32]*, [2 x i32]** %6, align 8
  call void @_Z15isDivisibleUtiliPiPA2_i(i32 %11, i32* %12, [2 x i32]* %13)
  %14 = load [2 x i32]*, [2 x i32]** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 %17
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z11isDivisibleii(i32 %0, i32 %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32]*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = call noalias i8* @malloc(i64 %9) #5
  %11 = bitcast i8* %10 to [2 x i32]*
  store [2 x i32]* %11, [2 x i32]** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load [2 x i32]*, [2 x i32]** %5, align 8
  call void @_Z10preprocessiPA2_i(i32 %12, [2 x i32]* %13)
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load [2 x i32]*, [2 x i32]** %5, align 8
  call void @_Z15isDivisibleUtiliPiPA2_i(i32 %14, i32* %6, [2 x i32]* %15)
  %16 = load i32, i32* %6, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 47, i32* %2, align 4
  store i32 5, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @_Z11isDivisibleii(i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %10
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
