; ModuleID = 'PE-benchmarks/mergeSort_LinkedList.cpp'
source_filename = "PE-benchmarks/mergeSort_LinkedList.cpp"
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
%class.Node = type { i32, %class.Node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Sorted Linked List is: \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_mergeSort_LinkedList.cpp, i8* null }]

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
define dso_local void @_Z9MergeSortPP4Node(%class.Node** noundef %0) #4 {
  %2 = alloca %class.Node**, align 8
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  %5 = alloca %class.Node*, align 8
  store %class.Node** %0, %class.Node*** %2, align 8
  %6 = load %class.Node**, %class.Node*** %2, align 8
  %7 = load %class.Node*, %class.Node** %6, align 8
  store %class.Node* %7, %class.Node** %3, align 8
  %8 = load %class.Node*, %class.Node** %3, align 8
  %9 = icmp eq %class.Node* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %class.Node*, %class.Node** %3, align 8
  %12 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 1
  %13 = load %class.Node*, %class.Node** %12, align 8
  %14 = icmp eq %class.Node* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %22

16:                                               ; preds = %10
  %17 = load %class.Node*, %class.Node** %3, align 8
  call void @_Z14FrontBackSplitP4NodePS0_S1_(%class.Node* noundef %17, %class.Node** noundef %4, %class.Node** noundef %5)
  call void @_Z9MergeSortPP4Node(%class.Node** noundef %4)
  call void @_Z9MergeSortPP4Node(%class.Node** noundef %5)
  %18 = load %class.Node*, %class.Node** %4, align 8
  %19 = load %class.Node*, %class.Node** %5, align 8
  %20 = call noundef %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* noundef %18, %class.Node* noundef %19)
  %21 = load %class.Node**, %class.Node*** %2, align 8
  store %class.Node* %20, %class.Node** %21, align 8
  br label %22

22:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z14FrontBackSplitP4NodePS0_S1_(%class.Node* noundef %0, %class.Node** noundef %1, %class.Node** noundef %2) #5 {
  %4 = alloca %class.Node*, align 8
  %5 = alloca %class.Node**, align 8
  %6 = alloca %class.Node**, align 8
  %7 = alloca %class.Node*, align 8
  %8 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %4, align 8
  store %class.Node** %1, %class.Node*** %5, align 8
  store %class.Node** %2, %class.Node*** %6, align 8
  %9 = load %class.Node*, %class.Node** %4, align 8
  store %class.Node* %9, %class.Node** %8, align 8
  %10 = load %class.Node*, %class.Node** %4, align 8
  %11 = getelementptr inbounds %class.Node, %class.Node* %10, i32 0, i32 1
  %12 = load %class.Node*, %class.Node** %11, align 8
  store %class.Node* %12, %class.Node** %7, align 8
  br label %13

13:                                               ; preds = %29, %3
  %14 = load %class.Node*, %class.Node** %7, align 8
  %15 = icmp ne %class.Node* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %class.Node*, %class.Node** %7, align 8
  %18 = getelementptr inbounds %class.Node, %class.Node* %17, i32 0, i32 1
  %19 = load %class.Node*, %class.Node** %18, align 8
  store %class.Node* %19, %class.Node** %7, align 8
  %20 = load %class.Node*, %class.Node** %7, align 8
  %21 = icmp ne %class.Node* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %class.Node*, %class.Node** %8, align 8
  %24 = getelementptr inbounds %class.Node, %class.Node* %23, i32 0, i32 1
  %25 = load %class.Node*, %class.Node** %24, align 8
  store %class.Node* %25, %class.Node** %8, align 8
  %26 = load %class.Node*, %class.Node** %7, align 8
  %27 = getelementptr inbounds %class.Node, %class.Node* %26, i32 0, i32 1
  %28 = load %class.Node*, %class.Node** %27, align 8
  store %class.Node* %28, %class.Node** %7, align 8
  br label %29

29:                                               ; preds = %22, %16
  br label %13, !llvm.loop !6

30:                                               ; preds = %13
  %31 = load %class.Node*, %class.Node** %4, align 8
  %32 = load %class.Node**, %class.Node*** %5, align 8
  store %class.Node* %31, %class.Node** %32, align 8
  %33 = load %class.Node*, %class.Node** %8, align 8
  %34 = getelementptr inbounds %class.Node, %class.Node* %33, i32 0, i32 1
  %35 = load %class.Node*, %class.Node** %34, align 8
  %36 = load %class.Node**, %class.Node*** %6, align 8
  store %class.Node* %35, %class.Node** %36, align 8
  %37 = load %class.Node*, %class.Node** %8, align 8
  %38 = getelementptr inbounds %class.Node, %class.Node* %37, i32 0, i32 1
  store %class.Node* null, %class.Node** %38, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* noundef %0, %class.Node* noundef %1) #4 {
  %3 = alloca %class.Node*, align 8
  %4 = alloca %class.Node*, align 8
  %5 = alloca %class.Node*, align 8
  %6 = alloca %class.Node*, align 8
  store %class.Node* %0, %class.Node** %4, align 8
  store %class.Node* %1, %class.Node** %5, align 8
  store %class.Node* null, %class.Node** %6, align 8
  %7 = load %class.Node*, %class.Node** %4, align 8
  %8 = icmp eq %class.Node* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %class.Node*, %class.Node** %5, align 8
  store %class.Node* %10, %class.Node** %3, align 8
  br label %45

11:                                               ; preds = %2
  %12 = load %class.Node*, %class.Node** %5, align 8
  %13 = icmp eq %class.Node* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %class.Node*, %class.Node** %4, align 8
  store %class.Node* %15, %class.Node** %3, align 8
  br label %45

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = load %class.Node*, %class.Node** %4, align 8
  %19 = getelementptr inbounds %class.Node, %class.Node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %class.Node*, %class.Node** %5, align 8
  %22 = getelementptr inbounds %class.Node, %class.Node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %class.Node*, %class.Node** %4, align 8
  store %class.Node* %26, %class.Node** %6, align 8
  %27 = load %class.Node*, %class.Node** %4, align 8
  %28 = getelementptr inbounds %class.Node, %class.Node* %27, i32 0, i32 1
  %29 = load %class.Node*, %class.Node** %28, align 8
  %30 = load %class.Node*, %class.Node** %5, align 8
  %31 = call noundef %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* noundef %29, %class.Node* noundef %30)
  %32 = load %class.Node*, %class.Node** %6, align 8
  %33 = getelementptr inbounds %class.Node, %class.Node* %32, i32 0, i32 1
  store %class.Node* %31, %class.Node** %33, align 8
  br label %43

34:                                               ; preds = %17
  %35 = load %class.Node*, %class.Node** %5, align 8
  store %class.Node* %35, %class.Node** %6, align 8
  %36 = load %class.Node*, %class.Node** %4, align 8
  %37 = load %class.Node*, %class.Node** %5, align 8
  %38 = getelementptr inbounds %class.Node, %class.Node* %37, i32 0, i32 1
  %39 = load %class.Node*, %class.Node** %38, align 8
  %40 = call noundef %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* noundef %36, %class.Node* noundef %39)
  %41 = load %class.Node*, %class.Node** %6, align 8
  %42 = getelementptr inbounds %class.Node, %class.Node* %41, i32 0, i32 1
  store %class.Node* %40, %class.Node** %42, align 8
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %class.Node*, %class.Node** %6, align 8
  store %class.Node* %44, %class.Node** %3, align 8
  br label %45

45:                                               ; preds = %43, %14, %9
  %46 = load %class.Node*, %class.Node** %3, align 8
  ret %class.Node* %46
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9printListP4Node(%class.Node* noundef %0) #4 {
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
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %class.Node*, %class.Node** %2, align 8
  %13 = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 1
  %14 = load %class.Node*, %class.Node** %13, align 8
  store %class.Node* %14, %class.Node** %2, align 8
  br label %3, !llvm.loop !8

15:                                               ; preds = %3
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z4pushPP4Nodei(%class.Node** noundef %0, i32 noundef %1) #4 {
  %3 = alloca %class.Node**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %class.Node*, align 8
  store %class.Node** %0, %class.Node*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #9
  %7 = bitcast i8* %6 to %class.Node*
  %8 = bitcast %class.Node* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  store %class.Node* %7, %class.Node** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %class.Node*, %class.Node** %5, align 8
  %11 = getelementptr inbounds %class.Node, %class.Node* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %class.Node**, %class.Node*** %3, align 8
  %13 = load %class.Node*, %class.Node** %12, align 8
  %14 = load %class.Node*, %class.Node** %5, align 8
  %15 = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 1
  store %class.Node* %13, %class.Node** %15, align 8
  %16 = load %class.Node*, %class.Node** %5, align 8
  %17 = load %class.Node**, %class.Node*** %3, align 8
  store %class.Node* %16, %class.Node** %17, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #8 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Node*, align 8
  %3 = alloca %class.Node*, align 8
  store i32 0, i32* %1, align 4
  store %class.Node* null, %class.Node** %2, align 8
  store %class.Node* null, %class.Node** %3, align 8
  call void @_Z4pushPP4Nodei(%class.Node** noundef %3, i32 noundef 15)
  call void @_Z4pushPP4Nodei(%class.Node** noundef %3, i32 noundef 10)
  call void @_Z4pushPP4Nodei(%class.Node** noundef %3, i32 noundef 5)
  call void @_Z4pushPP4Nodei(%class.Node** noundef %3, i32 noundef 20)
  call void @_Z4pushPP4Nodei(%class.Node** noundef %3, i32 noundef 3)
  call void @_Z4pushPP4Nodei(%class.Node** noundef %3, i32 noundef 2)
  call void @_Z9MergeSortPP4Node(%class.Node** noundef %3)
  %4 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %5 = load %class.Node*, %class.Node** %3, align 8
  call void @_Z9printListP4Node(%class.Node* noundef %5)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_mergeSort_LinkedList.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.1-++20220402053234+23d08271a4b2-1~exp1~20220402053315.111"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
