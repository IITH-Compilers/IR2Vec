; ModuleID = 'PE-benchmarks/quicksort-for-linked-list.cpp'
source_filename = "PE-benchmarks/quicksort-for-linked-list.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Linked List after sorting \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_quicksort_for_linked_list.cpp, i8* null }]

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

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local void @_Z4swapPiS_(i32* %0, i32* %1) #4 {
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

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local %class.Node* @_Z8lastNodeP4Node(%class.Node* %0) #4 {
  %2 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load %class.Node*, %class.Node** %2, align 8
  %5 = icmp ne %class.Node* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load %class.Node*, %class.Node** %2, align 8
  %8 = getelementptr inbounds %class.Node, %class.Node* %7, i32 0, i32 1
  %9 = load %class.Node*, %class.Node** %8, align 8
  %10 = icmp ne %class.Node* %9, null
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i1 [ false, %3 ], [ %10, %6 ]
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load %class.Node*, %class.Node** %2, align 8
  %15 = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 1
  %16 = load %class.Node*, %class.Node** %15, align 8
  store %class.Node* %16, %class.Node** %2, align 8
  br label %3, !llvm.loop !2

17:                                               ; preds = %11
  %18 = load %class.Node*, %class.Node** %2, align 8
  ret %class.Node* %18
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local %class.Node* @_Z9partitionP4NodeS0_(%class.Node* %0, %class.Node* %1) #4 {
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Node*, align 8
  %7 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %3, align 8
  store %class.Node* %1, %class.Node** %4, align 8
  %8 = load %class.Node*, %class.Node** %4, align 8
  %9 = getelementptr inbounds %class.Node, %class.Node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %class.Node*, %class.Node** %3, align 8
  %12 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 2
  %13 = load %class.Node*, %class.Node** %12, align 8
  store %class.Node* %13, %class.Node** %6, align 8
  %14 = load %class.Node*, %class.Node** %3, align 8
  store %class.Node* %14, %class.Node** %7, align 8
  br label %15

15:                                               ; preds = %41, %2
  %16 = load %class.Node*, %class.Node** %7, align 8
  %17 = load %class.Node*, %class.Node** %4, align 8
  %18 = icmp ne %class.Node* %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %class.Node*, %class.Node** %7, align 8
  %21 = getelementptr inbounds %class.Node, %class.Node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %class.Node*, %class.Node** %6, align 8
  %27 = icmp eq %class.Node* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load %class.Node*, %class.Node** %3, align 8
  br label %34

30:                                               ; preds = %25
  %31 = load %class.Node*, %class.Node** %6, align 8
  %32 = getelementptr inbounds %class.Node, %class.Node* %31, i32 0, i32 1
  %33 = load %class.Node*, %class.Node** %32, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi %class.Node* [ %29, %28 ], [ %33, %30 ]
  store %class.Node* %35, %class.Node** %6, align 8
  %36 = load %class.Node*, %class.Node** %6, align 8
  %37 = getelementptr inbounds %class.Node, %class.Node* %36, i32 0, i32 0
  %38 = load %class.Node*, %class.Node** %7, align 8
  %39 = getelementptr inbounds %class.Node, %class.Node* %38, i32 0, i32 0
  call void @_Z4swapPiS_(i32* %37, i32* %39)
  br label %40

40:                                               ; preds = %34, %19
  br label %41

41:                                               ; preds = %40
  %42 = load %class.Node*, %class.Node** %7, align 8
  %43 = getelementptr inbounds %class.Node, %class.Node* %42, i32 0, i32 1
  %44 = load %class.Node*, %class.Node** %43, align 8
  store %class.Node* %44, %class.Node** %7, align 8
  br label %15, !llvm.loop !4

45:                                               ; preds = %15
  %46 = load %class.Node*, %class.Node** %6, align 8
  %47 = icmp eq %class.Node* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %class.Node*, %class.Node** %3, align 8
  br label %54

50:                                               ; preds = %45
  %51 = load %class.Node*, %class.Node** %6, align 8
  %52 = getelementptr inbounds %class.Node, %class.Node* %51, i32 0, i32 1
  %53 = load %class.Node*, %class.Node** %52, align 8
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi %class.Node* [ %49, %48 ], [ %53, %50 ]
  store %class.Node* %55, %class.Node** %6, align 8
  %56 = load %class.Node*, %class.Node** %6, align 8
  %57 = getelementptr inbounds %class.Node, %class.Node* %56, i32 0, i32 0
  %58 = load %class.Node*, %class.Node** %4, align 8
  %59 = getelementptr inbounds %class.Node, %class.Node* %58, i32 0, i32 0
  call void @_Z4swapPiS_(i32* %57, i32* %59)
  %60 = load %class.Node*, %class.Node** %6, align 8
  ret %class.Node* %60
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z10_quickSortP4NodeS0_(%class.Node* %0, %class.Node* %1) #5 {
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  %5 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %3, align 8
  store %class.Node* %1, %class.Node** %4, align 8
  %6 = load %class.Node*, %class.Node** %4, align 8
  %7 = icmp ne %class.Node* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %class.Node*, %class.Node** %3, align 8
  %10 = load %class.Node*, %class.Node** %4, align 8
  %11 = icmp ne %class.Node* %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %class.Node*, %class.Node** %3, align 8
  %14 = load %class.Node*, %class.Node** %4, align 8
  %15 = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 1
  %16 = load %class.Node*, %class.Node** %15, align 8
  %17 = icmp ne %class.Node* %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %class.Node*, %class.Node** %3, align 8
  %20 = load %class.Node*, %class.Node** %4, align 8
  %21 = call %class.Node* @_Z9partitionP4NodeS0_(%class.Node* %19, %class.Node* %20)
  store %class.Node* %21, %class.Node** %5, align 8
  %22 = load %class.Node*, %class.Node** %3, align 8
  %23 = load %class.Node*, %class.Node** %5, align 8
  %24 = getelementptr inbounds %class.Node, %class.Node* %23, i32 0, i32 2
  %25 = load %class.Node*, %class.Node** %24, align 8
  call void @_Z10_quickSortP4NodeS0_(%class.Node* %22, %class.Node* %25)
  %26 = load %class.Node*, %class.Node** %5, align 8
  %27 = getelementptr inbounds %class.Node, %class.Node* %26, i32 0, i32 1
  %28 = load %class.Node*, %class.Node** %27, align 8
  %29 = load %class.Node*, %class.Node** %4, align 8
  call void @_Z10_quickSortP4NodeS0_(%class.Node* %28, %class.Node* %29)
  br label %30

30:                                               ; preds = %18, %12, %8, %2
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z9quickSortP4Node(%class.Node* %0) #5 {
  %2 = alloca %class.Node*, align 8
  %3 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %2, align 8
  %4 = load %class.Node*, %class.Node** %2, align 8
  %5 = call %class.Node* @_Z8lastNodeP4Node(%class.Node* %4)
  store %class.Node* %5, %class.Node** %3, align 8
  %6 = load %class.Node*, %class.Node** %2, align 8
  %7 = load %class.Node*, %class.Node** %3, align 8
  call void @_Z10_quickSortP4NodeS0_(%class.Node* %6, %class.Node* %7)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z9printListP4Node(%class.Node* %0) #5 {
  %2 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = load %class.Node*, %class.Node** %2, align 8
  %5 = icmp ne %class.Node* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load %class.Node*, %class.Node** %2, align 8
  %8 = getelementptr inbounds %class.Node, %class.Node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %9)
  %11 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %class.Node*, %class.Node** %2, align 8
  %13 = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 1
  %14 = load %class.Node*, %class.Node** %13, align 8
  store %class.Node* %14, %class.Node** %2, align 8
  br label %3, !llvm.loop !5

15:                                               ; preds = %3
  %16 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z4pushPP4Nodei(%class.Node** %0, i32 %1) #5 {
  %3 = alloca %class.Node**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %class.Node*, align 8
  store %class.Node** %0, %class.Node*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias nonnull i8* @_Znwm(i64 24) #8
  %7 = bitcast i8* %6 to %class.Node*
  store %class.Node* %7, %class.Node** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %class.Node*, %class.Node** %5, align 8
  %10 = getelementptr inbounds %class.Node, %class.Node* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %class.Node*, %class.Node** %5, align 8
  %12 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 2
  store %class.Node* null, %class.Node** %12, align 8
  %13 = load %class.Node**, %class.Node*** %3, align 8
  %14 = load %class.Node*, %class.Node** %13, align 8
  %15 = load %class.Node*, %class.Node** %5, align 8
  %16 = getelementptr inbounds %class.Node, %class.Node* %15, i32 0, i32 1
  store %class.Node* %14, %class.Node** %16, align 8
  %17 = load %class.Node**, %class.Node*** %3, align 8
  %18 = load %class.Node*, %class.Node** %17, align 8
  %19 = icmp ne %class.Node* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %class.Node*, %class.Node** %5, align 8
  %22 = load %class.Node**, %class.Node*** %3, align 8
  %23 = load %class.Node*, %class.Node** %22, align 8
  %24 = getelementptr inbounds %class.Node, %class.Node* %23, i32 0, i32 2
  store %class.Node* %21, %class.Node** %24, align 8
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %class.Node*, %class.Node** %5, align 8
  %27 = load %class.Node**, %class.Node*** %3, align 8
  store %class.Node* %26, %class.Node** %27, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #6

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Node*, align 8
  store i32 0, i32* %1, align 4
  store %class.Node* null, %class.Node** %2, align 8
  call void @_Z4pushPP4Nodei(%class.Node** %2, i32 5)
  call void @_Z4pushPP4Nodei(%class.Node** %2, i32 20)
  call void @_Z4pushPP4Nodei(%class.Node** %2, i32 4)
  call void @_Z4pushPP4Nodei(%class.Node** %2, i32 3)
  call void @_Z4pushPP4Nodei(%class.Node** %2, i32 30)
  %3 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %class.Node*, %class.Node** %2, align 8
  call void @_Z9printListP4Node(%class.Node* %4)
  %5 = load %class.Node*, %class.Node** %2, align 8
  call void @_Z9quickSortP4Node(%class.Node* %5)
  %6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %class.Node*, %class.Node** %2, align 8
  call void @_Z9printListP4Node(%class.Node* %7)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_quicksort_for_linked_list.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
