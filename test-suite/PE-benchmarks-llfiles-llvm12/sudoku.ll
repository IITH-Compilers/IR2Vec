; ModuleID = 'PE-benchmarks/sudoku.cpp'
source_filename = "PE-benchmarks/sudoku.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.grid = private unnamed_addr constant [9 x [9 x i32]] [[9 x i32] [i32 3, i32 0, i32 6, i32 5, i32 0, i32 8, i32 4, i32 0, i32 0], [9 x i32] [i32 5, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 8, i32 7, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1], [9 x i32] [i32 0, i32 0, i32 3, i32 0, i32 1, i32 0, i32 0, i32 8, i32 0], [9 x i32] [i32 9, i32 0, i32 0, i32 8, i32 6, i32 3, i32 0, i32 0, i32 5], [9 x i32] [i32 0, i32 5, i32 0, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0], [9 x i32] [i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 5, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 4], [9 x i32] [i32 0, i32 0, i32 5, i32 2, i32 0, i32 6, i32 3, i32 0, i32 0]], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"No solution exists\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sudoku.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable mustprogress
define dso_local zeroext i1 @_Z11SolveSudokuPA9_i([9 x i32]* %0) #4 {
  %2 = alloca i1, align 1
  %3 = alloca [9 x i32]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [9 x i32]* %0, [9 x i32]** %3, align 8
  %7 = load [9 x i32]*, [9 x i32]** %3, align 8
  %8 = call zeroext i1 @_Z22FindUnassignedLocationPA9_iRiS1_([9 x i32]* %7, i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5)
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i1 true, i1* %2, align 1
  br label %45

10:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 9
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load [9 x i32]*, [9 x i32]** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call zeroext i1 @_Z6isSafePA9_iiii([9 x i32]* %15, i32 %16, i32 %17, i32 %18)
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load [9 x i32]*, [9 x i32]** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %22, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load [9 x i32]*, [9 x i32]** %3, align 8
  %30 = call zeroext i1 @_Z11SolveSudokuPA9_i([9 x i32]* %29)
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i1 true, i1* %2, align 1
  br label %45

32:                                               ; preds = %20
  %33 = load [9 x i32]*, [9 x i32]** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i64 0, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %11, !llvm.loop !2

44:                                               ; preds = %11
  store i1 false, i1* %2, align 1
  br label %45

45:                                               ; preds = %44, %31, %9
  %46 = load i1, i1* %2, align 1
  ret i1 %46
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z22FindUnassignedLocationPA9_iRiS1_([9 x i32]* %0, i32* nonnull align 4 dereferenceable(4) %1, i32* nonnull align 4 dereferenceable(4) %2) #5 {
  %4 = alloca i1, align 1
  %5 = alloca [9 x i32]*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store [9 x i32]* %0, [9 x i32]** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %38, %3
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 9
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %33, %13
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 9
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load [9 x i32]*, [9 x i32]** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %20, i64 %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %24, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i1 true, i1* %4, align 1
  br label %43

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %15, !llvm.loop !4

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %9, !llvm.loop !5

42:                                               ; preds = %9
  store i1 false, i1* %4, align 1
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i1, i1* %4, align 1
  ret i1 %44
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z6isSafePA9_iiii([9 x i32]* %0, i32 %1, i32 %2, i32 %3) #5 {
  %5 = alloca [9 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [9 x i32]* %0, [9 x i32]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load [9 x i32]*, [9 x i32]** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call zeroext i1 @_Z9UsedInRowPA9_iii([9 x i32]* %9, i32 %10, i32 %11)
  br i1 %12, label %40, label %13

13:                                               ; preds = %4
  %14 = load [9 x i32]*, [9 x i32]** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call zeroext i1 @_Z9UsedInColPA9_iii([9 x i32]* %14, i32 %15, i32 %16)
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = load [9 x i32]*, [9 x i32]** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = srem i32 %21, 3
  %23 = sub nsw i32 %20, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = srem i32 %25, 3
  %27 = sub nsw i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = call zeroext i1 @_Z9UsedInBoxPA9_iiii([9 x i32]* %19, i32 %23, i32 %27, i32 %28)
  br i1 %29, label %40, label %30

30:                                               ; preds = %18
  %31 = load [9 x i32]*, [9 x i32]** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %31, i64 %33
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %34, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %30, %18, %13, %4
  %41 = phi i1 [ false, %18 ], [ false, %13 ], [ false, %4 ], [ %39, %30 ]
  ret i1 %41
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z9UsedInRowPA9_iii([9 x i32]* %0, i32 %1, i32 %2) #5 {
  %4 = alloca i1, align 1
  %5 = alloca [9 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [9 x i32]* %0, [9 x i32]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 9
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load [9 x i32]*, [9 x i32]** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 %15
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i1 true, i1* %4, align 1
  br label %29

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %9, !llvm.loop !6

28:                                               ; preds = %9
  store i1 false, i1* %4, align 1
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i1, i1* %4, align 1
  ret i1 %30
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z9UsedInColPA9_iii([9 x i32]* %0, i32 %1, i32 %2) #5 {
  %4 = alloca i1, align 1
  %5 = alloca [9 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [9 x i32]* %0, [9 x i32]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 9
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load [9 x i32]*, [9 x i32]** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 %15
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i1 true, i1* %4, align 1
  br label %29

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %9, !llvm.loop !7

28:                                               ; preds = %9
  store i1 false, i1* %4, align 1
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i1, i1* %4, align 1
  ret i1 %30
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z9UsedInBoxPA9_iiii([9 x i32]* %0, i32 %1, i32 %2, i32 %3) #5 {
  %5 = alloca i1, align 1
  %6 = alloca [9 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store [9 x i32]* %0, [9 x i32]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %40, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load [9 x i32]*, [9 x i32]** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %20, i64 %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %25, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store i1 true, i1* %5, align 1
  br label %44

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %16, !llvm.loop !8

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %12, !llvm.loop !9

43:                                               ; preds = %12
  store i1 false, i1* %5, align 1
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i1, i1* %5, align 1
  ret i1 %45
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z9printGridPA9_i([9 x i32]* %0) #4 {
  %2 = alloca [9 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [9 x i32]* %0, [9 x i32]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 9
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 9
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load [9 x i32]*, [9 x i32]** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %20)
  %22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9, !llvm.loop !10

26:                                               ; preds = %9
  %27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5, !llvm.loop !11

31:                                               ; preds = %5
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #6 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x [9 x i32]], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [9 x [9 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([9 x [9 x i32]]* @__const.main.grid to i8*), i64 324, i1 false)
  %4 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %2, i64 0, i64 0
  %5 = call zeroext i1 @_Z11SolveSudokuPA9_i([9 x i32]* %4)
  %6 = zext i1 %5 to i32
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %2, i64 0, i64 0
  call void @_Z9printGridPA9_i([9 x i32]* %9)
  br label %12

10:                                               ; preds = %0
  %11 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %8
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_sudoku.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }

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
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
