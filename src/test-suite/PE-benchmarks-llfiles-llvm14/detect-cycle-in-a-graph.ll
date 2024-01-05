; ModuleID = 'PE-benchmarks/detect-cycle-in-a-graph.cpp'
source_filename = "PE-benchmarks/detect-cycle-in-a-graph.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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
%class.Graph = type { i32, %"class.std::__cxx11::list"* }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_node" = type <{ %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf", [4 x i8] }>
%"struct.__gnu_cxx::__aligned_membuf" = type { [4 x i8] }
%"class.std::__new_allocator" = type { i8 }
%"class.std::allocator" = type { i8 }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator"*, %"struct.std::_List_node"* }

$_ZNSt7__cxx114listIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE9push_backERKi = comdat any

$_ZNSt14_List_iteratorIiEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE5beginEv = comdat any

$_ZStneRKSt14_List_iteratorIiES2_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE3endEv = comdat any

$_ZNKSt14_List_iteratorIiEdeEv = comdat any

$_ZNSt14_List_iteratorIiEppEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev = comdat any

$_ZNSt8__detail17_List_node_headerC2Ev = comdat any

$_ZNSt8__detail17_List_node_header7_M_initEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_ = comdat any

$_ZNSt10_List_nodeIiE9_M_valptrEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIiEE8allocateEmPKv = comdat any

$_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorISt10_List_nodeIiEE10deallocateEPS1_m = comdat any

$_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [21 x i8] c"Graph contains cycle\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Graph doesn't contain cycle\00", align 1

@_ZN5GraphC1Ei = dso_local unnamed_addr alias void (%class.Graph*, i32), void (%class.Graph*, i32)* @_ZN5GraphC2Ei

; Function Attrs: noinline uwtable
define dso_local void @_ZN5GraphC2Ei(%class.Graph* noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Graph*, %class.Graph** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %9, i64 24)
  %11 = extractvalue { i64, i1 } %10, 1
  %12 = extractvalue { i64, i1 } %10, 0
  %13 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 8)
  %14 = extractvalue { i64, i1 } %13, 1
  %15 = or i1 %11, %14
  %16 = extractvalue { i64, i1 } %13, 0
  %17 = select i1 %15, i64 -1, i64 %16
  %18 = call noalias noundef nonnull i8* @_Znam(i64 noundef %17) #13
  %19 = bitcast i8* %18 to i64*
  store i64 %9, i64* %19, align 16
  %20 = getelementptr inbounds i8, i8* %18, i64 8
  %21 = bitcast i8* %20 to %"class.std::__cxx11::list"*
  %22 = icmp eq i64 %9, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %21, i64 %9
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi %"class.std::__cxx11::list"* [ %21, %23 ], [ %27, %25 ]
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %26) #14
  %27 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %26, i64 1
  %28 = icmp eq %"class.std::__cxx11::list"* %27, %24
  br i1 %28, label %29, label %25

29:                                               ; preds = %2, %25
  %30 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 1
  store %"class.std::__cxx11::list"* %21, %"class.std::__cxx11::list"** %30, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) #4 align 2 {
  %4 = alloca %class.Graph*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.Graph*, %class.Graph** %4, align 8
  %8 = getelementptr inbounds %class.Graph, %class.Graph* %7, i32 0, i32 1
  %9 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %9, i64 %11
  call void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %12, i32* noundef nonnull align 4 dereferenceable(4) %6)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #4 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %7 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %6) #14
  %8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %6, %"struct.std::__detail::_List_node_base"* %11, i32* noundef nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN5Graph12isCyclicUtilEiPbS0_(%class.Graph* noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i8* noundef %2, i8* noundef %3) #4 align 2 {
  %5 = alloca i1, align 1
  %6 = alloca %class.Graph*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %"struct.std::_List_iterator", align 8
  %11 = alloca %"struct.std::_List_iterator", align 8
  %12 = alloca %"struct.std::_List_iterator", align 8
  store %class.Graph* %0, %class.Graph** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %class.Graph*, %class.Graph** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = trunc i8 %18 to i1
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 1, i8* %26, align 1
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 1, i8* %30, align 1
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #14
  %31 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  %32 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %32, i64 %34
  %36 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %35) #14
  %37 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %11, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %36, %"struct.std::__detail::_List_node_base"** %37, align 8
  %38 = bitcast %"struct.std::_List_iterator"* %10 to i8*
  %39 = bitcast %"struct.std::_List_iterator"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  br label %40

40:                                               ; preds = %75, %22
  %41 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  %42 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %42, i64 %44
  %46 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %45) #14
  %47 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %12, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %46, %"struct.std::__detail::_List_node_base"** %47, align 8
  %48 = call noundef zeroext i1 @_ZStneRKSt14_List_iteratorIiES2_(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %10, %"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %12) #14
  br i1 %48, label %49, label %77

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  %51 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #14
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #14
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call noundef zeroext i1 @_ZN5Graph12isCyclicUtilEiPbS0_(%class.Graph* noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %59, i8* noundef %60, i8* noundef %61)
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i1 true, i1* %5, align 1
  br label %83

64:                                               ; preds = %57, %49
  %65 = load i8*, i8** %9, align 8
  %66 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #14
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = trunc i8 %70 to i1
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i1 true, i1* %5, align 1
  br label %83

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #14
  br label %40, !llvm.loop !6

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77, %4
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  store i1 false, i1* %5, align 1
  br label %83

83:                                               ; preds = %78, %72, %63
  %84 = load i1, i1* %5, align 1
  ret i1 %84
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* null, %"struct.std::__detail::_List_node_base"** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %0) #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %8, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.std::__detail::_List_node_base"* noundef %10) #14
  %11 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %11, align 8
  ret %"struct.std::__detail::_List_node_base"* %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt14_List_iteratorIiES2_(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #5 comdat {
  %3 = alloca %"struct.std::_List_iterator"*, align 8
  %4 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %3, align 8
  store %"struct.std::_List_iterator"* %1, %"struct.std::_List_iterator"** %4, align 8
  %5 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %6, align 8
  %8 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  %11 = icmp ne %"struct.std::__detail::_List_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %0) #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.std::__detail::_List_node_base"* noundef %8) #14
  %9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  ret %"struct.std::__detail::_List_node_base"* %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %7 = call noundef i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* noundef nonnull align 8 dereferenceable(20) %6)
  ret i32* %7
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  ret %"struct.std::_List_iterator"* %3
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN5Graph8isCyclicEv(%class.Graph* noundef nonnull align 8 dereferenceable(16) %0) #4 align 2 {
  %2 = alloca i1, align 1
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  %8 = load %class.Graph*, %class.Graph** %3, align 8
  %9 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = call noalias noundef nonnull i8* @_Znam(i64 noundef %11) #13
  store i8* %12, i8** %4, align 8
  %13 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = call noalias noundef nonnull i8* @_Znam(i64 noundef %15) #13
  store i8* %16, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %17, !llvm.loop !8

34:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call noundef zeroext i1 @_ZN5Graph12isCyclicUtilEiPbS0_(%class.Graph* noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %41, i8* noundef %42, i8* noundef %43)
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i1 true, i1* %2, align 1
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %35, !llvm.loop !9

50:                                               ; preds = %35
  store i1 false, i1* %2, align 1
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i1, i1* %2, align 1
  ret i1 %52
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Graph, align 8
  store i32 0, i32* %1, align 4
  call void @_ZN5GraphC1Ei(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 4)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, i32 noundef 1)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, i32 noundef 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1, i32 noundef 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, i32 noundef 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2, i32 noundef 3)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 3, i32 noundef 3)
  %3 = call noundef zeroext i1 @_ZN5Graph8isCyclicEv(%class.Graph* noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %8

6:                                                ; preds = %0
  %7 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %4
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* noundef nonnull align 8 dereferenceable(24) %4) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"** %4, align 8
  %5 = load %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"*, %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"** %4, align 8
  %6 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %5 to %"class.std::allocator"*
  store %"class.std::allocator"* %6, %"class.std::allocator"** %3, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %8, %"class.std::__new_allocator"** %2, align 8
  %9 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %5, i32 0, i32 0
  call void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* noundef nonnull align 8 dereferenceable(24) %10) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca %"struct.std::__detail::_List_node_header"*, align 8
  store %"struct.std::__detail::_List_node_header"* %0, %"struct.std::__detail::_List_node_header"** %2, align 8
  %3 = load %"struct.std::__detail::_List_node_header"*, %"struct.std::__detail::_List_node_header"** %2, align 8
  %4 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* noundef nonnull align 8 dereferenceable(24) %3) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* noundef nonnull align 8 dereferenceable(24) %0) #5 comdat align 2 {
  %2 = alloca %"struct.std::__detail::_List_node_header"*, align 8
  store %"struct.std::__detail::_List_node_header"* %0, %"struct.std::__detail::_List_node_header"** %2, align 8
  %3 = load %"struct.std::__detail::_List_node_header"*, %"struct.std::__detail::_List_node_header"** %2, align 8
  %4 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  %5 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i32 0, i32 1
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %6, align 8
  %7 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  %8 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %7, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_header", %"struct.std::__detail::_List_node_header"* %3, i32 0, i32 1
  store i64 0, i64* %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %0, %"struct.std::__detail::_List_node_base"* %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #4 comdat align 2 {
  %4 = alloca %"struct.std::_List_iterator", align 8
  %5 = alloca %"class.std::__cxx11::list"*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"struct.std::_List_node"*, align 8
  %8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %8, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %10) #14
  %12 = call noundef %"struct.std::_List_node"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %9, i32* noundef nonnull align 4 dereferenceable(4) %11)
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %7, align 8
  %13 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8
  %14 = bitcast %"struct.std::_List_node"* %13 to %"struct.std::__detail::_List_node_base"*
  %15 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %4, i32 0, i32 0
  %16 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %15, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* noundef nonnull align 8 dereferenceable(16) %14, %"struct.std::__detail::_List_node_base"* noundef %16) #14
  %17 = bitcast %"class.std::__cxx11::list"* %9 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %"struct.std::_List_node"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"class.std::__cxx11::list"*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %"struct.std::_List_node"*, align 8
  %12 = alloca %"class.std::allocator"*, align 8
  %13 = alloca %"struct.std::__allocated_ptr", align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %9, align 8
  store i32* %1, i32** %10, align 8
  %16 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %9, align 8
  %17 = bitcast %"class.std::__cxx11::list"* %16 to %"class.std::__cxx11::_List_base"*
  %18 = call noundef %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %17)
  store %"struct.std::_List_node"* %18, %"struct.std::_List_node"** %11, align 8
  %19 = bitcast %"class.std::__cxx11::list"* %16 to %"class.std::__cxx11::_List_base"*
  %20 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %19) #14
  store %"class.std::allocator"* %20, %"class.std::allocator"** %12, align 8
  %21 = load %"class.std::allocator"*, %"class.std::allocator"** %12, align 8
  %22 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %11, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %13, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %21, %"struct.std::_List_node"* noundef %22) #14
  %23 = load %"class.std::allocator"*, %"class.std::allocator"** %12, align 8
  %24 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %11, align 8
  %25 = invoke noundef i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* noundef nonnull align 8 dereferenceable(20) %24)
          to label %26 unwind label %42

26:                                               ; preds = %2
  %27 = load i32*, i32** %10, align 8
  %28 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %27) #14
  store %"class.std::allocator"* %23, %"class.std::allocator"** %6, align 8
  store i32* %25, i32** %7, align 8
  store i32* %28, i32** %8, align 8
  %29 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %30 = bitcast %"class.std::allocator"* %29 to %"class.std::__new_allocator"*
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %32) #14
  store %"class.std::__new_allocator"* %30, %"class.std::__new_allocator"** %3, align 8
  store i32* %31, i32** %4, align 8
  store i32* %33, i32** %5, align 8
  %34 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32*, i32** %5, align 8
  %38 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %37) #14
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %35, align 4
  %40 = call noundef nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %13, i8* null) #14
  %41 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %11, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %13) #14
  ret %"struct.std::_List_node"* %41

42:                                               ; preds = %2
  %43 = landingpad { i8*, i32 }
          cleanup
  %44 = extractvalue { i8*, i32 } %43, 0
  store i8* %44, i8** %14, align 8
  %45 = extractvalue { i8*, i32 } %43, 1
  store i32 %45, i32* %15, align 4
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %13) #14
  br label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = insertvalue { i8*, i32 } undef, i8* %47, 0
  %50 = insertvalue { i8*, i32 } %49, i32 %48, 1
  resume { i8*, i32 } %50
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #5 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* noundef nonnull align 8 dereferenceable(16), %"struct.std::__detail::_List_node_base"* noundef) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #5 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_header", %"struct.std::__detail::_List_node_header"* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, %6
  store i64 %11, i64* %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %4, align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %6 to %"class.std::allocator"*
  store %"class.std::allocator"* %7, %"class.std::allocator"** %2, align 8
  store i64 1, i64* %3, align 8
  %8 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %9 = bitcast %"class.std::allocator"* %8 to %"class.std::__new_allocator"*
  %10 = load i64, i64* %3, align 8
  %11 = call noundef %"struct.std::_List_node"* @_ZNSt15__new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10, i8* noundef null)
  ret %"struct.std::_List_node"* %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* noundef nonnull align 8 dereferenceable(24) %0) #5 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1, %"struct.std::_List_node"* noundef %2) unnamed_addr #3 comdat align 2 {
  %4 = alloca %"struct.std::__allocated_ptr"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %4, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %5, align 8
  store %"struct.std::_List_node"* %2, %"struct.std::_List_node"** %6, align 8
  %7 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 0
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %10 = call noundef %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #14
  store %"class.std::allocator"* %10, %"class.std::allocator"** %8, align 8
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 1
  %12 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %6, align 8
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %11, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* noundef nonnull align 8 dereferenceable(20) %0) #5 comdat align 2 {
  %2 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %0, %"struct.std::_List_node"** %2, align 8
  %3 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i32 0, i32 1
  %5 = call noundef i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 4 dereferenceable(4) %4) #14
  ret i32* %5
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0, i8* %1) #5 comdat align 2 {
  %3 = alloca %"struct.std::__allocated_ptr"*, align 8
  %4 = alloca i8*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %5, i32 0, i32 1
  store %"struct.std::_List_node"* null, %"struct.std::_List_node"** %6, align 8
  ret %"struct.std::__allocated_ptr"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca %"struct.std::_List_node"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %5, align 8
  %6 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %5, align 8
  %7 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %6, i32 0, i32 1
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8
  %9 = icmp ne %"struct.std::_List_node"* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %6, i32 0, i32 0
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8
  %13 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %6, i32 0, i32 1
  %14 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %13, align 8
  store %"class.std::allocator"* %12, %"class.std::allocator"** %2, align 8
  store %"struct.std::_List_node"* %14, %"struct.std::_List_node"** %3, align 8
  store i64 1, i64* %4, align 8
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %16 = bitcast %"class.std::allocator"* %15 to %"class.std::__new_allocator"*
  %17 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %3, align 8
  %18 = load i64, i64* %4, align 8
  call void @_ZNSt15__new_allocatorISt10_List_nodeIiEE10deallocateEPS1_m(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %16, %"struct.std::_List_node"* noundef %17, i64 noundef %18)
  br label %19

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  ret void

21:                                               ; No predecessors!
  %22 = landingpad { i8*, i32 }
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  call void @__clang_call_terminate(i8* %23) #15
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %"struct.std::_List_node"* @_ZNSt15__new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::__new_allocator"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %5, align 8
  %9 = load i64, i64* %6, align 8
  store %"class.std::__new_allocator"* %8, %"class.std::__new_allocator"** %4, align 8
  %10 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %11 = icmp ugt i64 %9, 384307168202282325
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 768614336404564650
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 24
  %20 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %19) #13
  %21 = bitcast i8* %20 to %"struct.std::_List_node"*
  ret %"struct.std::_List_node"* %21
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #5 comdat {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 4 dereferenceable(4) %0) #5 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call noundef i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = bitcast i8* %4 to i32*
  ret i32* %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 4 dereferenceable(4) %0) #5 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [4 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #11 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #14
  call void @_ZSt9terminatev() #15
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt10_List_nodeIiEE10deallocateEPS1_m(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::_List_node"* noundef %1, i64 noundef %2) #5 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %4, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %9 = bitcast %"struct.std::_List_node"* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #12

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::__detail::_List_node_base"* noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"struct.std::_List_iterator"*, align 8
  %4 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %3, align 8
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %4, align 8
  %5 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %6, align 8
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

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
!9 = distinct !{!9, !7}
