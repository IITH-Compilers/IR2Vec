; ModuleID = 'PE-benchmarks/quicksort-on-singly-linked-list.cpp'
source_filename = "PE-benchmarks/quicksort-on-singly-linked-list.cpp"
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
%struct.Node = type { i32, %struct.Node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Linked List after sorting \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_quicksort_on_singly_linked_list.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z4pushPP4Nodei(%struct.Node** noundef %0, i32 noundef %1) #4 {
  %3 = alloca %struct.Node**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Node*, align 8
  store %struct.Node** %0, %struct.Node*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #8
  %7 = bitcast i8* %6 to %struct.Node*
  store %struct.Node* %7, %struct.Node** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.Node*, %struct.Node** %5, align 8
  %10 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.Node**, %struct.Node*** %3, align 8
  %12 = load %struct.Node*, %struct.Node** %11, align 8
  %13 = load %struct.Node*, %struct.Node** %5, align 8
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  store %struct.Node* %12, %struct.Node** %14, align 8
  %15 = load %struct.Node*, %struct.Node** %5, align 8
  %16 = load %struct.Node**, %struct.Node*** %3, align 8
  store %struct.Node* %15, %struct.Node** %16, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #5

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9printListP4Node(%struct.Node* noundef %0) #4 {
  %2 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = load %struct.Node*, %struct.Node** %2, align 8
  %5 = icmp ne %struct.Node* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load %struct.Node*, %struct.Node** %2, align 8
  %8 = getelementptr inbounds %struct.Node, %struct.Node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %9)
  %11 = load %struct.Node*, %struct.Node** %2, align 8
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 1
  %13 = load %struct.Node*, %struct.Node** %12, align 8
  store %struct.Node* %13, %struct.Node** %2, align 8
  br label %3, !llvm.loop !6

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef %struct.Node* @_Z7getTailP4Node(%struct.Node* noundef %0) #6 {
  %2 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load %struct.Node*, %struct.Node** %2, align 8
  %5 = icmp ne %struct.Node* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load %struct.Node*, %struct.Node** %2, align 8
  %8 = getelementptr inbounds %struct.Node, %struct.Node* %7, i32 0, i32 1
  %9 = load %struct.Node*, %struct.Node** %8, align 8
  %10 = icmp ne %struct.Node* %9, null
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i1 [ false, %3 ], [ %10, %6 ]
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load %struct.Node*, %struct.Node** %2, align 8
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  %16 = load %struct.Node*, %struct.Node** %15, align 8
  store %struct.Node* %16, %struct.Node** %2, align 8
  br label %3, !llvm.loop !8

17:                                               ; preds = %11
  %18 = load %struct.Node*, %struct.Node** %2, align 8
  ret %struct.Node* %18
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef %struct.Node* @_Z9partitionP4NodeS0_PS0_S1_(%struct.Node* noundef %0, %struct.Node* noundef %1, %struct.Node** noundef %2, %struct.Node** noundef %3) #6 {
  %5 = alloca %struct.Node*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca %struct.Node**, align 8
  %8 = alloca %struct.Node**, align 8
  %9 = alloca %struct.Node*, align 8
  %10 = alloca %struct.Node*, align 8
  %11 = alloca %struct.Node*, align 8
  %12 = alloca %struct.Node*, align 8
  %13 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %5, align 8
  store %struct.Node* %1, %struct.Node** %6, align 8
  store %struct.Node** %2, %struct.Node*** %7, align 8
  store %struct.Node** %3, %struct.Node*** %8, align 8
  %14 = load %struct.Node*, %struct.Node** %6, align 8
  store %struct.Node* %14, %struct.Node** %9, align 8
  store %struct.Node* null, %struct.Node** %10, align 8
  %15 = load %struct.Node*, %struct.Node** %5, align 8
  store %struct.Node* %15, %struct.Node** %11, align 8
  %16 = load %struct.Node*, %struct.Node** %9, align 8
  store %struct.Node* %16, %struct.Node** %12, align 8
  br label %17

17:                                               ; preds = %61, %4
  %18 = load %struct.Node*, %struct.Node** %11, align 8
  %19 = load %struct.Node*, %struct.Node** %9, align 8
  %20 = icmp ne %struct.Node* %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load %struct.Node*, %struct.Node** %11, align 8
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.Node*, %struct.Node** %9, align 8
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load %struct.Node**, %struct.Node*** %7, align 8
  %31 = load %struct.Node*, %struct.Node** %30, align 8
  %32 = icmp eq %struct.Node* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.Node*, %struct.Node** %11, align 8
  %35 = load %struct.Node**, %struct.Node*** %7, align 8
  store %struct.Node* %34, %struct.Node** %35, align 8
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.Node*, %struct.Node** %11, align 8
  store %struct.Node* %37, %struct.Node** %10, align 8
  %38 = load %struct.Node*, %struct.Node** %11, align 8
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %38, i32 0, i32 1
  %40 = load %struct.Node*, %struct.Node** %39, align 8
  store %struct.Node* %40, %struct.Node** %11, align 8
  br label %61

41:                                               ; preds = %21
  %42 = load %struct.Node*, %struct.Node** %10, align 8
  %43 = icmp ne %struct.Node* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.Node*, %struct.Node** %11, align 8
  %46 = getelementptr inbounds %struct.Node, %struct.Node* %45, i32 0, i32 1
  %47 = load %struct.Node*, %struct.Node** %46, align 8
  %48 = load %struct.Node*, %struct.Node** %10, align 8
  %49 = getelementptr inbounds %struct.Node, %struct.Node* %48, i32 0, i32 1
  store %struct.Node* %47, %struct.Node** %49, align 8
  br label %50

50:                                               ; preds = %44, %41
  %51 = load %struct.Node*, %struct.Node** %11, align 8
  %52 = getelementptr inbounds %struct.Node, %struct.Node* %51, i32 0, i32 1
  %53 = load %struct.Node*, %struct.Node** %52, align 8
  store %struct.Node* %53, %struct.Node** %13, align 8
  %54 = load %struct.Node*, %struct.Node** %11, align 8
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %54, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %55, align 8
  %56 = load %struct.Node*, %struct.Node** %11, align 8
  %57 = load %struct.Node*, %struct.Node** %12, align 8
  %58 = getelementptr inbounds %struct.Node, %struct.Node* %57, i32 0, i32 1
  store %struct.Node* %56, %struct.Node** %58, align 8
  %59 = load %struct.Node*, %struct.Node** %11, align 8
  store %struct.Node* %59, %struct.Node** %12, align 8
  %60 = load %struct.Node*, %struct.Node** %13, align 8
  store %struct.Node* %60, %struct.Node** %11, align 8
  br label %61

61:                                               ; preds = %50, %36
  br label %17, !llvm.loop !9

62:                                               ; preds = %17
  %63 = load %struct.Node**, %struct.Node*** %7, align 8
  %64 = load %struct.Node*, %struct.Node** %63, align 8
  %65 = icmp eq %struct.Node* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.Node*, %struct.Node** %9, align 8
  %68 = load %struct.Node**, %struct.Node*** %7, align 8
  store %struct.Node* %67, %struct.Node** %68, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.Node*, %struct.Node** %12, align 8
  %71 = load %struct.Node**, %struct.Node*** %8, align 8
  store %struct.Node* %70, %struct.Node** %71, align 8
  %72 = load %struct.Node*, %struct.Node** %9, align 8
  ret %struct.Node* %72
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* noundef %0, %struct.Node* noundef %1) #4 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  %5 = alloca %struct.Node*, align 8
  %6 = alloca %struct.Node*, align 8
  %7 = alloca %struct.Node*, align 8
  %8 = alloca %struct.Node*, align 8
  %9 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %4, align 8
  store %struct.Node* %1, %struct.Node** %5, align 8
  %10 = load %struct.Node*, %struct.Node** %4, align 8
  %11 = icmp ne %struct.Node* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.Node*, %struct.Node** %4, align 8
  %14 = load %struct.Node*, %struct.Node** %5, align 8
  %15 = icmp eq %struct.Node* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load %struct.Node*, %struct.Node** %4, align 8
  store %struct.Node* %17, %struct.Node** %3, align 8
  br label %57

18:                                               ; preds = %12
  store %struct.Node* null, %struct.Node** %6, align 8
  store %struct.Node* null, %struct.Node** %7, align 8
  %19 = load %struct.Node*, %struct.Node** %4, align 8
  %20 = load %struct.Node*, %struct.Node** %5, align 8
  %21 = call noundef %struct.Node* @_Z9partitionP4NodeS0_PS0_S1_(%struct.Node* noundef %19, %struct.Node* noundef %20, %struct.Node** noundef %6, %struct.Node** noundef %7)
  store %struct.Node* %21, %struct.Node** %8, align 8
  %22 = load %struct.Node*, %struct.Node** %6, align 8
  %23 = load %struct.Node*, %struct.Node** %8, align 8
  %24 = icmp ne %struct.Node* %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load %struct.Node*, %struct.Node** %6, align 8
  store %struct.Node* %26, %struct.Node** %9, align 8
  br label %27

27:                                               ; preds = %33, %25
  %28 = load %struct.Node*, %struct.Node** %9, align 8
  %29 = getelementptr inbounds %struct.Node, %struct.Node* %28, i32 0, i32 1
  %30 = load %struct.Node*, %struct.Node** %29, align 8
  %31 = load %struct.Node*, %struct.Node** %8, align 8
  %32 = icmp ne %struct.Node* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.Node*, %struct.Node** %9, align 8
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %34, i32 0, i32 1
  %36 = load %struct.Node*, %struct.Node** %35, align 8
  store %struct.Node* %36, %struct.Node** %9, align 8
  br label %27, !llvm.loop !10

37:                                               ; preds = %27
  %38 = load %struct.Node*, %struct.Node** %9, align 8
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %38, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %39, align 8
  %40 = load %struct.Node*, %struct.Node** %6, align 8
  %41 = load %struct.Node*, %struct.Node** %9, align 8
  %42 = call noundef %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* noundef %40, %struct.Node* noundef %41)
  store %struct.Node* %42, %struct.Node** %6, align 8
  %43 = load %struct.Node*, %struct.Node** %6, align 8
  %44 = call noundef %struct.Node* @_Z7getTailP4Node(%struct.Node* noundef %43)
  store %struct.Node* %44, %struct.Node** %9, align 8
  %45 = load %struct.Node*, %struct.Node** %8, align 8
  %46 = load %struct.Node*, %struct.Node** %9, align 8
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %46, i32 0, i32 1
  store %struct.Node* %45, %struct.Node** %47, align 8
  br label %48

48:                                               ; preds = %37, %18
  %49 = load %struct.Node*, %struct.Node** %8, align 8
  %50 = getelementptr inbounds %struct.Node, %struct.Node* %49, i32 0, i32 1
  %51 = load %struct.Node*, %struct.Node** %50, align 8
  %52 = load %struct.Node*, %struct.Node** %7, align 8
  %53 = call noundef %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* noundef %51, %struct.Node* noundef %52)
  %54 = load %struct.Node*, %struct.Node** %8, align 8
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %54, i32 0, i32 1
  store %struct.Node* %53, %struct.Node** %55, align 8
  %56 = load %struct.Node*, %struct.Node** %6, align 8
  store %struct.Node* %56, %struct.Node** %3, align 8
  br label %57

57:                                               ; preds = %48, %16
  %58 = load %struct.Node*, %struct.Node** %3, align 8
  ret %struct.Node* %58
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9quickSortPP4Node(%struct.Node** noundef %0) #4 {
  %2 = alloca %struct.Node**, align 8
  store %struct.Node** %0, %struct.Node*** %2, align 8
  %3 = load %struct.Node**, %struct.Node*** %2, align 8
  %4 = load %struct.Node*, %struct.Node** %3, align 8
  %5 = load %struct.Node**, %struct.Node*** %2, align 8
  %6 = load %struct.Node*, %struct.Node** %5, align 8
  %7 = call noundef %struct.Node* @_Z7getTailP4Node(%struct.Node* noundef %6)
  %8 = call noundef %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* noundef %4, %struct.Node* noundef %7)
  %9 = load %struct.Node**, %struct.Node*** %2, align 8
  store %struct.Node* %8, %struct.Node** %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Node*, align 8
  store i32 0, i32* %1, align 4
  store %struct.Node* null, %struct.Node** %2, align 8
  call void @_Z4pushPP4Nodei(%struct.Node** noundef %2, i32 noundef 5)
  call void @_Z4pushPP4Nodei(%struct.Node** noundef %2, i32 noundef 20)
  call void @_Z4pushPP4Nodei(%struct.Node** noundef %2, i32 noundef 4)
  call void @_Z4pushPP4Nodei(%struct.Node** noundef %2, i32 noundef 3)
  call void @_Z4pushPP4Nodei(%struct.Node** noundef %2, i32 noundef 30)
  %3 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %4 = load %struct.Node*, %struct.Node** %2, align 8
  call void @_Z9printListP4Node(%struct.Node* noundef %4)
  call void @_Z9quickSortPP4Node(%struct.Node** noundef %2)
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %6 = load %struct.Node*, %struct.Node** %2, align 8
  call void @_Z9printListP4Node(%struct.Node* noundef %6)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_quicksort_on_singly_linked_list.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
