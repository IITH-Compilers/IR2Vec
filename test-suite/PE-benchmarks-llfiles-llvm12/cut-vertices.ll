; ModuleID = 'PE-benchmarks/cut-vertices.cpp'
source_filename = "PE-benchmarks/cut-vertices.cpp"
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
%class.Graph = type { i32, %"class.std::__cxx11::list"* }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_node" = type <{ %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf", [4 x i8] }>
%"struct.__gnu_cxx::__aligned_membuf" = type { [4 x i8] }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator"*, %"struct.std::_List_node"* }

$_ZNSt7__cxx114listIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE9push_backERKi = comdat any

$_ZNSt14_List_iteratorIiEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE5beginEv = comdat any

$_ZStneRKSt14_List_iteratorIiES2_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE3endEv = comdat any

$_ZNKSt14_List_iteratorIiEdeEv = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZNSt14_List_iteratorIiEppEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev = comdat any

$_ZNSaISt10_List_nodeIiEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_headerC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_header7_M_initEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt10_List_nodeIiE9_M_valptrEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv = comdat any

$_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m = comdat any

$__clang_call_terminate = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m = comdat any

$_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZZN5Graph6APUtilEiPbPiS1_S1_S0_E4time = internal global i32 0, align 4
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\0AArticulation points in first graph \0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\0AArticulation points in second graph \0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\0AArticulation points in third graph \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_cut_vertices.cpp, i8* null }]

@_ZN5GraphC1Ei = dso_local unnamed_addr alias void (%class.Graph*, i32), void (%class.Graph*, i32)* @_ZN5GraphC2Ei

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

; Function Attrs: noinline uwtable
define dso_local void @_ZN5GraphC2Ei(%class.Graph* nonnull dereferenceable(16) %0, i32 %1) unnamed_addr #0 align 2 {
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
  %18 = call noalias nonnull i8* @_Znam(i64 %17) #14
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
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %26) #3
  %27 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %26, i64 1
  %28 = icmp eq %"class.std::__cxx11::list"* %27, %24
  br i1 %28, label %29, label %25

29:                                               ; preds = %2, %25
  %30 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 1
  store %"class.std::__cxx11::list"* %21, %"class.std::__cxx11::list"** %30, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %0, i32 %1, i32 %2) #7 align 2 {
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
  call void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %12, i32* nonnull align 4 dereferenceable(4) %6)
  %13 = getelementptr inbounds %class.Graph, %class.Graph* %7, i32 0, i32 1
  %14 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %14, i64 %16
  call void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %17, i32* nonnull align 4 dereferenceable(4) %5)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, i32* nonnull align 4 dereferenceable(4) %1) #7 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %7 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %6) #3
  %8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %6, %"struct.std::__detail::_List_node_base"* %11, i32* nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph6APUtilEiPbPiS1_S1_S0_(%class.Graph* nonnull dereferenceable(16) %0, i32 %1, i8* %2, i32* %3, i32* %4, i32* %5, i8* %6) #7 align 2 {
  %8 = alloca %class.Graph*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %"struct.std::_List_iterator", align 8
  %17 = alloca %"struct.std::_List_iterator", align 8
  %18 = alloca %"struct.std::_List_iterator", align 8
  %19 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load %class.Graph*, %class.Graph** %8, align 8
  store i32 0, i32* %15, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 1, i8* %24, align 1
  %25 = load i32, i32* @_ZZN5Graph6APUtilEiPbPiS1_S1_S0_E4time, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @_ZZN5Graph6APUtilEiPbPiS1_S1_S0_E4time, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %26, i32* %34, align 4
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %16) #3
  %35 = getelementptr inbounds %class.Graph, %class.Graph* %20, i32 0, i32 1
  %36 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %36, i64 %38
  %40 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %39) #3
  %41 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %17, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %40, %"struct.std::__detail::_List_node_base"** %41, align 8
  %42 = bitcast %"struct.std::_List_iterator"* %16 to i8*
  %43 = bitcast %"struct.std::_List_iterator"* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  br label %44

44:                                               ; preds = %154, %7
  %45 = getelementptr inbounds %class.Graph, %class.Graph* %20, i32 0, i32 1
  %46 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %46, i64 %48
  %50 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %49) #3
  %51 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %18, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %50, %"struct.std::__detail::_List_node_base"** %51, align 8
  %52 = call zeroext i1 @_ZStneRKSt14_List_iteratorIiES2_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %16, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %18) #3
  br i1 %52, label %53, label %156

53:                                               ; preds = %44
  %54 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %16) #3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = trunc i8 %60 to i1
  br i1 %61, label %129, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i8*, i8** %14, align 8
  call void @_ZN5Graph6APUtilEiPbPiS1_S1_S0_(%class.Graph* nonnull dereferenceable(16) %20, i32 %70, i8* %71, i32* %72, i32* %73, i32* %74, i8* %75)
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %79, i32* nonnull align 4 dereferenceable(4) %83)
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %104

96:                                               ; preds = %62
  %97 = load i32, i32* %15, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 1, i8* %103, align 1
  br label %104

104:                                              ; preds = %99, %96, %62
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %116, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 1, i8* %127, align 1
  br label %128

128:                                              ; preds = %123, %111, %104
  br label %153

129:                                              ; preds = %53
  %130 = load i32, i32* %19, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %130, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %129
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %141, i32* nonnull align 4 dereferenceable(4) %145)
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %137, %129
  br label %153

153:                                              ; preds = %152, %128
  br label %154

154:                                              ; preds = %153
  %155 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %16) #3
  br label %44, !llvm.loop !2

156:                                              ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* null, %"struct.std::__detail::_List_node_base"** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) #8 comdat align 2 {
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
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %2, %"struct.std::__detail::_List_node_base"* %10) #3
  %11 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %11, align 8
  ret %"struct.std::__detail::_List_node_base"* %12
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local zeroext i1 @_ZStneRKSt14_List_iteratorIiES2_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %0, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %1) #8 comdat {
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

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %2, %"struct.std::__detail::_List_node_base"* %8) #3
  %9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  ret %"struct.std::__detail::_List_node_base"* %10
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %7 = call i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(20) %6)
  ret i32* %7
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #8 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) #8 comdat align 2 {
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

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph2APEv(%class.Graph* nonnull dereferenceable(16) %0) #7 align 2 {
  %2 = alloca %class.Graph*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %2, align 8
  %11 = load %class.Graph*, %class.Graph** %2, align 8
  %12 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = call noalias nonnull i8* @_Znam(i64 %14) #14
  store i8* %15, i8** %3, align 8
  %16 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %18, i64 4)
  %20 = extractvalue { i64, i1 } %19, 1
  %21 = extractvalue { i64, i1 } %19, 0
  %22 = select i1 %20, i64 -1, i64 %21
  %23 = call noalias nonnull i8* @_Znam(i64 %22) #14
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %4, align 8
  %25 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %27, i64 4)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = select i1 %29, i64 -1, i64 %30
  %32 = call noalias nonnull i8* @_Znam(i64 %31) #14
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %5, align 8
  %34 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %36, i64 4)
  %38 = extractvalue { i64, i1 } %37, 1
  %39 = extractvalue { i64, i1 } %37, 0
  %40 = select i1 %38, i64 -1, i64 %39
  %41 = call noalias nonnull i8* @_Znam(i64 %40) #14
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %6, align 8
  %43 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = call noalias nonnull i8* @_Znam(i64 %45) #14
  store i8* %46, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %65, %1
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 -1, i32* %56, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %47, !llvm.loop !4

68:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = trunc i8 %79 to i1
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i8*, i8** %7, align 8
  call void @_ZN5Graph6APUtilEiPbPiS1_S1_S0_(%class.Graph* nonnull dereferenceable(16) %11, i32 %84, i8* %85, i32* %86, i32* %87, i32* %88, i8* %89)
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %69, !llvm.loop !5

94:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %class.Graph, %class.Graph* %11, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = trunc i8 %105 to i1
  %107 = zext i1 %106 to i32
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load i32, i32* %10, align 4
  %111 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %110)
  %112 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %100
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %95, !llvm.loop !6

117:                                              ; preds = %95
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #10 {
  %1 = alloca i32, align 4
  %2 = alloca %class.Graph, align 8
  %3 = alloca %class.Graph, align 8
  %4 = alloca %class.Graph, align 8
  store i32 0, i32* %1, align 4
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  call void @_ZN5GraphC1Ei(%class.Graph* nonnull dereferenceable(16) %2, i32 5)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %2, i32 1, i32 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %2, i32 0, i32 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %2, i32 2, i32 1)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %2, i32 0, i32 3)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %2, i32 3, i32 4)
  call void @_ZN5Graph2APEv(%class.Graph* nonnull dereferenceable(16) %2)
  %6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  call void @_ZN5GraphC1Ei(%class.Graph* nonnull dereferenceable(16) %3, i32 4)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %3, i32 0, i32 1)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %3, i32 1, i32 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %3, i32 2, i32 3)
  call void @_ZN5Graph2APEv(%class.Graph* nonnull dereferenceable(16) %3)
  %7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  call void @_ZN5GraphC1Ei(%class.Graph* nonnull dereferenceable(16) %4, i32 7)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 0, i32 1)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 1, i32 2)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 2, i32 0)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 1, i32 3)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 1, i32 4)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 1, i32 6)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 3, i32 5)
  call void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(16) %4, i32 4, i32 5)
  call void @_ZN5Graph2APEv(%class.Graph* nonnull dereferenceable(16) %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"** %2, align 8
  %3 = load %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"*, %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %4) #3
  %5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %3, i32 0, i32 0
  call void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* nonnull dereferenceable(24) %5) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeIiEEC2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::__detail::_List_node_header"*, align 8
  store %"struct.std::__detail::_List_node_header"* %0, %"struct.std::__detail::_List_node_header"** %2, align 8
  %3 = load %"struct.std::__detail::_List_node_header"*, %"struct.std::__detail::_List_node_header"** %2, align 8
  %4 = bitcast %"struct.std::__detail::_List_node_header"* %3 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* nonnull dereferenceable(24) %3) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* nonnull dereferenceable(24) %0) #8 comdat align 2 {
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

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, %"struct.std::__detail::_List_node_base"* %1, i32* nonnull align 4 dereferenceable(4) %2) #7 comdat align 2 {
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
  %11 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %10) #3
  %12 = call %"struct.std::_List_node"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %9, i32* nonnull align 4 dereferenceable(4) %11)
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %7, align 8
  %13 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8
  %14 = bitcast %"struct.std::_List_node"* %13 to %"struct.std::__detail::_List_node_base"*
  %15 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %4, i32 0, i32 0
  %16 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %15, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %14, %"struct.std::__detail::_List_node_base"* %16) #3
  %17 = bitcast %"class.std::__cxx11::list"* %9 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %17, i64 1)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, i32* nonnull align 4 dereferenceable(4) %1) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::__allocated_ptr", align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %11 = bitcast %"class.std::__cxx11::list"* %10 to %"class.std::__cxx11::_List_base"*
  %12 = call %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %11)
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %5, align 8
  %13 = bitcast %"class.std::__cxx11::list"* %10 to %"class.std::__cxx11::_List_base"*
  %14 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %13) #3
  store %"class.std::allocator"* %14, %"class.std::allocator"** %6, align 8
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %16 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %15, %"struct.std::_List_node"* %16) #3
  %17 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %18 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %19 = invoke i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(20) %18)
          to label %20 unwind label %25

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %21) #3
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %17, i32* %19, i32* nonnull align 4 dereferenceable(4) %22) #3
  %23 = call nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7, i8* null) #3
  %24 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7) #3
  ret %"struct.std::_List_node"* %24

25:                                               ; preds = %2
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %8, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %9, align 4
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7) #3
  br label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %0) #8 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16), %"struct.std::__detail::_List_node_base"*) #2

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0, i64 %1) #8 comdat align 2 {
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

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %4 to %"class.std::allocator"*
  %6 = call %"struct.std::_List_node"* @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5, i64 1)
  ret %"struct.std::_List_node"* %6
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #8 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, %"struct.std::_List_node"* %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %"struct.std::__allocated_ptr"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %4, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %5, align 8
  store %"struct.std::_List_node"* %2, %"struct.std::_List_node"** %6, align 8
  %7 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 0
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %10 = call %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9) #3
  store %"class.std::allocator"* %10, %"class.std::allocator"** %8, align 8
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 1
  %12 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %6, align 8
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i32* %1, i32* nonnull align 4 dereferenceable(4) %2) #8 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %8, i32* %9, i32* nonnull align 4 dereferenceable(4) %11) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(20) %0) #8 comdat align 2 {
  %2 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %0, %"struct.std::_List_node"** %2, align 8
  %3 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i32 0, i32 1
  %5 = call i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(4) %4) #3
  ret i32* %5
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %0, i8* %1) #8 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %2, align 8
  %3 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %5 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  %6 = icmp ne %"struct.std::_List_node"* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 0
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %10 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %3, i32 0, i32 1
  %11 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %10, align 8
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9, %"struct.std::_List_node"* %11, i64 1)
          to label %12 unwind label %14

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  ret void

14:                                               ; preds = %7
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #15
  unreachable
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i64 %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %6, i64 %7, i8* null)
  ret %"struct.std::_List_node"* %8
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, i64 %1, i8* %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 24
  %15 = call noalias nonnull i8* @_Znwm(i64 %14) #17
  %16 = bitcast i8* %15 to %"struct.std::_List_node"*
  ret %"struct.std::_List_node"* %16
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0) #8 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 384307168202282325
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #5

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #8 comdat {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, i32* %1, i32* nonnull align 4 dereferenceable(4) %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to i32*
  %11 = load i32*, i32** %6, align 8
  %12 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %11) #3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(4) %0) #8 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(4) %3) #3
  %5 = bitcast i8* %4 to i32*
  ret i32* %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(4) %0) #8 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [4 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"struct.std::_List_node"* %1, i64 %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %8, %"struct.std::_List_node"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #15
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, %"struct.std::_List_node"* %1, i64 %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %9 = bitcast %"struct.std::_List_node"* %8 to i8*
  call void @_ZdlPv(i8* %9) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #13

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0, %"struct.std::__detail::_List_node_base"* %1) unnamed_addr #6 comdat align 2 {
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

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_cut_vertices.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nosync nounwind willreturn }
attributes #10 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nobuiltin nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
