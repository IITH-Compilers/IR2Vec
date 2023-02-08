; ModuleID = 'PE-benchmarks/merge-sort-for-doubly-linked-list.cpp'
source_filename = "PE-benchmarks/merge-sort-for-doubly-linked-list.cpp"
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
%class.Node = type { i32, %class.Node*, %class.Node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [38 x i8] c"Forward Traversal using next poitner\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\0ABackward Traversal using prev pointer\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Linked List after sorting\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_merge_sort_for_doubly_linked_list.cpp, i8* null }]

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
define dso_local %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %0, %class.Node* %1) #4 {
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  %5 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %4, align 8
  store %class.Node* %1, %class.Node** %5, align 8
  %6 = load %class.Node*, %class.Node** %4, align 8
  %7 = icmp ne %class.Node* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %class.Node*, %class.Node** %5, align 8
  store %class.Node* %9, %class.Node** %3, align 8
  br label %55

10:                                               ; preds = %2
  %11 = load %class.Node*, %class.Node** %5, align 8
  %12 = icmp ne %class.Node* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %class.Node*, %class.Node** %4, align 8
  store %class.Node* %14, %class.Node** %3, align 8
  br label %55

15:                                               ; preds = %10
  %16 = load %class.Node*, %class.Node** %4, align 8
  %17 = getelementptr inbounds %class.Node, %class.Node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %class.Node*, %class.Node** %5, align 8
  %20 = getelementptr inbounds %class.Node, %class.Node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %class.Node*, %class.Node** %4, align 8
  %25 = getelementptr inbounds %class.Node, %class.Node* %24, i32 0, i32 1
  %26 = load %class.Node*, %class.Node** %25, align 8
  %27 = load %class.Node*, %class.Node** %5, align 8
  %28 = call %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %26, %class.Node* %27)
  %29 = load %class.Node*, %class.Node** %4, align 8
  %30 = getelementptr inbounds %class.Node, %class.Node* %29, i32 0, i32 1
  store %class.Node* %28, %class.Node** %30, align 8
  %31 = load %class.Node*, %class.Node** %4, align 8
  %32 = load %class.Node*, %class.Node** %4, align 8
  %33 = getelementptr inbounds %class.Node, %class.Node* %32, i32 0, i32 1
  %34 = load %class.Node*, %class.Node** %33, align 8
  %35 = getelementptr inbounds %class.Node, %class.Node* %34, i32 0, i32 2
  store %class.Node* %31, %class.Node** %35, align 8
  %36 = load %class.Node*, %class.Node** %4, align 8
  %37 = getelementptr inbounds %class.Node, %class.Node* %36, i32 0, i32 2
  store %class.Node* null, %class.Node** %37, align 8
  %38 = load %class.Node*, %class.Node** %4, align 8
  store %class.Node* %38, %class.Node** %3, align 8
  br label %55

39:                                               ; preds = %15
  %40 = load %class.Node*, %class.Node** %4, align 8
  %41 = load %class.Node*, %class.Node** %5, align 8
  %42 = getelementptr inbounds %class.Node, %class.Node* %41, i32 0, i32 1
  %43 = load %class.Node*, %class.Node** %42, align 8
  %44 = call %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %40, %class.Node* %43)
  %45 = load %class.Node*, %class.Node** %5, align 8
  %46 = getelementptr inbounds %class.Node, %class.Node* %45, i32 0, i32 1
  store %class.Node* %44, %class.Node** %46, align 8
  %47 = load %class.Node*, %class.Node** %5, align 8
  %48 = load %class.Node*, %class.Node** %5, align 8
  %49 = getelementptr inbounds %class.Node, %class.Node* %48, i32 0, i32 1
  %50 = load %class.Node*, %class.Node** %49, align 8
  %51 = getelementptr inbounds %class.Node, %class.Node* %50, i32 0, i32 2
  store %class.Node* %47, %class.Node** %51, align 8
  %52 = load %class.Node*, %class.Node** %5, align 8
  %53 = getelementptr inbounds %class.Node, %class.Node* %52, i32 0, i32 2
  store %class.Node* null, %class.Node** %53, align 8
  %54 = load %class.Node*, %class.Node** %5, align 8
  store %class.Node* %54, %class.Node** %3, align 8
  br label %55

55:                                               ; preds = %39, %23, %13, %8
  %56 = load %class.Node*, %class.Node** %3, align 8
  ret %class.Node* %56
}

; Function Attrs: noinline uwtable mustprogress
define dso_local %class.Node* @_Z9mergeSortP4Node(%class.Node* %0) #4 {
  %2 = alloca %class.Node*, align 8
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %3, align 8
  %5 = load %class.Node*, %class.Node** %3, align 8
  %6 = icmp ne %class.Node* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %class.Node*, %class.Node** %3, align 8
  %9 = getelementptr inbounds %class.Node, %class.Node* %8, i32 0, i32 1
  %10 = load %class.Node*, %class.Node** %9, align 8
  %11 = icmp ne %class.Node* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %1
  %13 = load %class.Node*, %class.Node** %3, align 8
  store %class.Node* %13, %class.Node** %2, align 8
  br label %24

14:                                               ; preds = %7
  %15 = load %class.Node*, %class.Node** %3, align 8
  %16 = call %class.Node* @_Z5splitP4Node(%class.Node* %15)
  store %class.Node* %16, %class.Node** %4, align 8
  %17 = load %class.Node*, %class.Node** %3, align 8
  %18 = call %class.Node* @_Z9mergeSortP4Node(%class.Node* %17)
  store %class.Node* %18, %class.Node** %3, align 8
  %19 = load %class.Node*, %class.Node** %4, align 8
  %20 = call %class.Node* @_Z9mergeSortP4Node(%class.Node* %19)
  store %class.Node* %20, %class.Node** %4, align 8
  %21 = load %class.Node*, %class.Node** %3, align 8
  %22 = load %class.Node*, %class.Node** %4, align 8
  %23 = call %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %21, %class.Node* %22)
  store %class.Node* %23, %class.Node** %2, align 8
  br label %24

24:                                               ; preds = %14, %12
  %25 = load %class.Node*, %class.Node** %2, align 8
  ret %class.Node* %25
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local %class.Node* @_Z5splitP4Node(%class.Node* %0) #5 {
  %2 = alloca %class.Node*, align 8
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  %5 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %2, align 8
  %6 = load %class.Node*, %class.Node** %2, align 8
  store %class.Node* %6, %class.Node** %3, align 8
  %7 = load %class.Node*, %class.Node** %2, align 8
  store %class.Node* %7, %class.Node** %4, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load %class.Node*, %class.Node** %3, align 8
  %10 = getelementptr inbounds %class.Node, %class.Node* %9, i32 0, i32 1
  %11 = load %class.Node*, %class.Node** %10, align 8
  %12 = icmp ne %class.Node* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %class.Node*, %class.Node** %3, align 8
  %15 = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 1
  %16 = load %class.Node*, %class.Node** %15, align 8
  %17 = getelementptr inbounds %class.Node, %class.Node* %16, i32 0, i32 1
  %18 = load %class.Node*, %class.Node** %17, align 8
  %19 = icmp ne %class.Node* %18, null
  br label %20

20:                                               ; preds = %13, %8
  %21 = phi i1 [ false, %8 ], [ %19, %13 ]
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = load %class.Node*, %class.Node** %3, align 8
  %24 = getelementptr inbounds %class.Node, %class.Node* %23, i32 0, i32 1
  %25 = load %class.Node*, %class.Node** %24, align 8
  %26 = getelementptr inbounds %class.Node, %class.Node* %25, i32 0, i32 1
  %27 = load %class.Node*, %class.Node** %26, align 8
  store %class.Node* %27, %class.Node** %3, align 8
  %28 = load %class.Node*, %class.Node** %4, align 8
  %29 = getelementptr inbounds %class.Node, %class.Node* %28, i32 0, i32 1
  %30 = load %class.Node*, %class.Node** %29, align 8
  store %class.Node* %30, %class.Node** %4, align 8
  br label %8, !llvm.loop !2

31:                                               ; preds = %20
  %32 = load %class.Node*, %class.Node** %4, align 8
  %33 = getelementptr inbounds %class.Node, %class.Node* %32, i32 0, i32 1
  %34 = load %class.Node*, %class.Node** %33, align 8
  store %class.Node* %34, %class.Node** %5, align 8
  %35 = load %class.Node*, %class.Node** %4, align 8
  %36 = getelementptr inbounds %class.Node, %class.Node* %35, i32 0, i32 1
  store %class.Node* null, %class.Node** %36, align 8
  %37 = load %class.Node*, %class.Node** %5, align 8
  ret %class.Node* %37
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z6insertPP4Nodei(%class.Node** %0, i32 %1) #4 {
  %3 = alloca %class.Node**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %class.Node*, align 8
  store %class.Node** %0, %class.Node*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias nonnull i8* @_Znwm(i64 24) #9
  %7 = bitcast i8* %6 to %class.Node*
  %8 = bitcast %class.Node* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 24, i1 false)
  store %class.Node* %7, %class.Node** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %class.Node*, %class.Node** %5, align 8
  %11 = getelementptr inbounds %class.Node, %class.Node* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %class.Node*, %class.Node** %5, align 8
  %13 = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 2
  store %class.Node* null, %class.Node** %13, align 8
  %14 = load %class.Node*, %class.Node** %5, align 8
  %15 = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 1
  store %class.Node* null, %class.Node** %15, align 8
  %16 = load %class.Node**, %class.Node*** %3, align 8
  %17 = load %class.Node*, %class.Node** %16, align 8
  %18 = icmp ne %class.Node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %class.Node*, %class.Node** %5, align 8
  %21 = load %class.Node**, %class.Node*** %3, align 8
  store %class.Node* %20, %class.Node** %21, align 8
  br label %33

22:                                               ; preds = %2
  %23 = load %class.Node**, %class.Node*** %3, align 8
  %24 = load %class.Node*, %class.Node** %23, align 8
  %25 = load %class.Node*, %class.Node** %5, align 8
  %26 = getelementptr inbounds %class.Node, %class.Node* %25, i32 0, i32 1
  store %class.Node* %24, %class.Node** %26, align 8
  %27 = load %class.Node*, %class.Node** %5, align 8
  %28 = load %class.Node**, %class.Node*** %3, align 8
  %29 = load %class.Node*, %class.Node** %28, align 8
  %30 = getelementptr inbounds %class.Node, %class.Node* %29, i32 0, i32 2
  store %class.Node* %27, %class.Node** %30, align 8
  %31 = load %class.Node*, %class.Node** %5, align 8
  %32 = load %class.Node**, %class.Node*** %3, align 8
  store %class.Node* %31, %class.Node** %32, align 8
  br label %33

33:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z5printP4Node(%class.Node* %0) #4 {
  %2 = alloca %class.Node*, align 8
  %3 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %2, align 8
  %4 = load %class.Node*, %class.Node** %2, align 8
  store %class.Node* %4, %class.Node** %3, align 8
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %class.Node*, %class.Node** %2, align 8
  %8 = icmp ne %class.Node* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %class.Node*, %class.Node** %2, align 8
  %11 = getelementptr inbounds %class.Node, %class.Node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %12)
  %14 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %class.Node*, %class.Node** %2, align 8
  store %class.Node* %15, %class.Node** %3, align 8
  %16 = load %class.Node*, %class.Node** %2, align 8
  %17 = getelementptr inbounds %class.Node, %class.Node* %16, i32 0, i32 1
  %18 = load %class.Node*, %class.Node** %17, align 8
  store %class.Node* %18, %class.Node** %2, align 8
  br label %6, !llvm.loop !4

19:                                               ; preds = %6
  %20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %24, %19
  %22 = load %class.Node*, %class.Node** %3, align 8
  %23 = icmp ne %class.Node* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %class.Node*, %class.Node** %3, align 8
  %26 = getelementptr inbounds %class.Node, %class.Node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %27)
  %29 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %class.Node*, %class.Node** %3, align 8
  %31 = getelementptr inbounds %class.Node, %class.Node* %30, i32 0, i32 2
  %32 = load %class.Node*, %class.Node** %31, align 8
  store %class.Node* %32, %class.Node** %3, align 8
  br label %21, !llvm.loop !5

33:                                               ; preds = %21
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local void @_Z4swapPiS_(i32* %0, i32* %1) #5 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  ret void
}

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #8 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Node*, align 8
  store i32 0, i32* %1, align 4
  store %class.Node* null, %class.Node** %2, align 8
  call void @_Z6insertPP4Nodei(%class.Node** %2, i32 5)
  call void @_Z6insertPP4Nodei(%class.Node** %2, i32 20)
  call void @_Z6insertPP4Nodei(%class.Node** %2, i32 4)
  call void @_Z6insertPP4Nodei(%class.Node** %2, i32 3)
  call void @_Z6insertPP4Nodei(%class.Node** %2, i32 30)
  call void @_Z6insertPP4Nodei(%class.Node** %2, i32 10)
  %3 = load %class.Node*, %class.Node** %2, align 8
  %4 = call %class.Node* @_Z9mergeSortP4Node(%class.Node* %3)
  store %class.Node* %4, %class.Node** %2, align 8
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %6 = load %class.Node*, %class.Node** %2, align 8
  call void @_Z5printP4Node(%class.Node* %6)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_merge_sort_for_doubly_linked_list.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
