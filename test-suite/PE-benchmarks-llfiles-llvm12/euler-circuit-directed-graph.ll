; ModuleID = 'PE-benchmarks/euler-circuit-directed-graph.cpp'
source_filename = "PE-benchmarks/euler-circuit-directed-graph.cpp"
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
%class.Graph = type { i32, %"class.std::__cxx11::list"*, i32* }
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

$_ZNKSt7__cxx114listIiSaIiEE4sizeEv = comdat any

$_ZNSt14_List_iteratorIiEC2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE5beginEv = comdat any

$_ZStneRKSt14_List_iteratorIiES2_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE3endEv = comdat any

$_ZNKSt14_List_iteratorIiEdeEv = comdat any

$_ZNSt14_List_iteratorIiEppEv = comdat any

$_ZNSt7__cxx114listIiSaIiEE9push_backERKi = comdat any

$_ZN5GraphD2Ev = comdat any

$_ZN5Graph7addEdgeEii = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev = comdat any

$_ZNSaISt10_List_nodeIiEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_headerC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_header7_M_initEv = comdat any

$_ZNSt7__cxx114listIiSaIiEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev = comdat any

$_ZNSt10_List_nodeIiE9_M_valptrEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_ = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m = comdat any

$_ZNSaISt10_List_nodeIiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev = comdat any

$_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv = comdat any

$_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZNKSt7__cxx114listIiSaIiEE13_M_node_countEv = comdat any

$_ZNKSt7__cxx1110_List_baseIiSaIiEE11_M_get_sizeEv = comdat any

$_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [35 x i8] c"Given directed graph is eulerian n\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Given directed graph is NOT eulerian n\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_euler_circuit_directed_graph.cpp, i8* null }]

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
define dso_local void @_ZN5GraphC2Ei(%class.Graph* nonnull dereferenceable(24) %0, i32 %1) unnamed_addr #0 align 2 {
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.Graph*, %class.Graph** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %class.Graph, %class.Graph* %6, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 24)
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  %14 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 8)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = or i1 %12, %15
  %17 = extractvalue { i64, i1 } %14, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = call noalias nonnull i8* @_Znam(i64 %18) #15
  %20 = bitcast i8* %19 to i64*
  store i64 %10, i64* %20, align 16
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to %"class.std::__cxx11::list"*
  %23 = icmp eq i64 %10, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %22, i64 %10
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi %"class.std::__cxx11::list"* [ %22, %24 ], [ %28, %26 ]
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %27) #3
  %28 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %27, i64 1
  %29 = icmp eq %"class.std::__cxx11::list"* %28, %25
  br i1 %29, label %30, label %26

30:                                               ; preds = %2, %26
  %31 = getelementptr inbounds %class.Graph, %class.Graph* %6, i32 0, i32 1
  store %"class.std::__cxx11::list"* %22, %"class.std::__cxx11::list"** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %33, i64 4)
  %35 = extractvalue { i64, i1 } %34, 1
  %36 = extractvalue { i64, i1 } %34, 0
  %37 = select i1 %35, i64 -1, i64 %36
  %38 = call noalias nonnull i8* @_Znam(i64 %37) #15
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds %class.Graph, %class.Graph* %6, i32 0, i32 2
  store i32* %39, i32** %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %51, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = getelementptr inbounds %class.Graph, %class.Graph* %6, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %41, !llvm.loop !2

54:                                               ; preds = %41
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
define dso_local zeroext i1 @_ZN5Graph15isEulerianCycleEv(%class.Graph* nonnull dereferenceable(24) %0) #7 align 2 {
  %2 = alloca i1, align 1
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  %5 = load %class.Graph*, %class.Graph** %3, align 8
  %6 = call zeroext i1 @_ZN5Graph4isSCEv(%class.Graph* nonnull dereferenceable(24) %5)
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1
  br label %37

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %33, %10
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 1
  %18 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %18, i64 %20
  %22 = call i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %21) #3
  %23 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i1 false, i1* %2, align 1
  br label %37

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %11, !llvm.loop !4

36:                                               ; preds = %11
  store i1 true, i1* %2, align 1
  br label %37

37:                                               ; preds = %36, %31, %9
  %38 = load i1, i1* %2, align 1
  ret i1 %38
}

; Function Attrs: noinline uwtable mustprogress
define dso_local zeroext i1 @_ZN5Graph4isSCEv(%class.Graph* nonnull dereferenceable(24) %0) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i1, align 1
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %class.Graph, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  %15 = load %class.Graph*, %class.Graph** %3, align 8
  %16 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %30, %1
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %20, i64 %28
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %21, !llvm.loop !5

33:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 1
  %41 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %41, i64 %43
  %45 = call i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %44) #3
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %34, !llvm.loop !6

52:                                               ; preds = %47, %34
  %53 = load i32, i32* %7, align 4
  call void @_ZN5Graph7DFSUtilEiPb(%class.Graph* nonnull dereferenceable(24) %15, i32 %53, i8* %20)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %77, %52
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 1
  %61 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %61, i64 %63
  %65 = call i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %64) #3
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %20, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = trunc i8 %71 to i1
  %73 = zext i1 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i1 false, i1* %2, align 1
  store i32 1, i32* %9, align 4
  br label %128

76:                                               ; preds = %67, %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %54, !llvm.loop !7

80:                                               ; preds = %54
  call void @_ZN5Graph12getTransposeEv(%class.Graph* sret(%class.Graph) align 8 %10, %class.Graph* nonnull dereferenceable(24) %15)
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %90, %80
  %82 = load i32, i32* %11, align 4
  %83 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %20, i64 %88
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %81, !llvm.loop !8

93:                                               ; preds = %81
  %94 = load i32, i32* %7, align 4
  invoke void @_ZN5Graph7DFSUtilEiPb(%class.Graph* nonnull dereferenceable(24) %10, i32 %94, i8* %20)
          to label %95 unwind label %118

95:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %123, %95
  %97 = load i32, i32* %14, align 4
  %98 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %96
  %102 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 1
  %103 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %103, i64 %105
  %107 = call i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %106) #3
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %101
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %20, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = trunc i8 %113 to i1
  %115 = zext i1 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  store i1 false, i1* %2, align 1
  store i32 1, i32* %9, align 4
  br label %127

118:                                              ; preds = %93
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  store i8* %120, i8** %12, align 8
  %121 = extractvalue { i8*, i32 } %119, 1
  store i32 %121, i32* %13, align 4
  call void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %10) #3
  br label %131

122:                                              ; preds = %109, %101
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %96, !llvm.loop !9

126:                                              ; preds = %96
  store i1 true, i1* %2, align 1
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %126, %117
  call void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %10) #3
  br label %128

128:                                              ; preds = %127, %75
  %129 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i1, i1* %2, align 1
  ret i1 %130

131:                                              ; preds = %118
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = insertvalue { i8*, i32 } undef, i8* %132, 0
  %135 = insertvalue { i8*, i32 } %134, i32 %133, 1
  resume { i8*, i32 } %135
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNKSt7__cxx114listIiSaIiEE4sizeEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = invoke i64 @_ZNKSt7__cxx114listIiSaIiEE13_M_node_countEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret i64 %4

6:                                                ; preds = %1
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #16
  unreachable
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph7DFSUtilEiPb(%class.Graph* nonnull dereferenceable(24) %0, i32 %1, i8* %2) #7 align 2 {
  %4 = alloca %class.Graph*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::_List_iterator", align 8
  %8 = alloca %"struct.std::_List_iterator", align 8
  %9 = alloca %"struct.std::_List_iterator", align 8
  store %class.Graph* %0, %class.Graph** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %class.Graph*, %class.Graph** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 1, i8* %14, align 1
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  %15 = getelementptr inbounds %class.Graph, %class.Graph* %10, i32 0, i32 1
  %16 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %16, i64 %18
  %20 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %19) #3
  %21 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %8, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %20, %"struct.std::__detail::_List_node_base"** %21, align 8
  %22 = bitcast %"struct.std::_List_iterator"* %7 to i8*
  %23 = bitcast %"struct.std::_List_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  br label %24

24:                                               ; preds = %46, %3
  %25 = getelementptr inbounds %class.Graph, %class.Graph* %10, i32 0, i32 1
  %26 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %26, i64 %28
  %30 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %29) #3
  %31 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %9, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %30, %"struct.std::__detail::_List_node_base"** %31, align 8
  %32 = call zeroext i1 @_ZStneRKSt14_List_iteratorIiES2_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %7, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %9) #3
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = trunc i8 %39 to i1
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  call void @_ZN5Graph7DFSUtilEiPb(%class.Graph* nonnull dereferenceable(24) %10, i32 %43, i8* %44)
  br label %45

45:                                               ; preds = %41, %33
  br label %46

46:                                               ; preds = %45
  %47 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  br label %24, !llvm.loop !10

48:                                               ; preds = %24
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
define dso_local void @_ZN5Graph12getTransposeEv(%class.Graph* noalias sret(%class.Graph) align 8 %0, %class.Graph* nonnull dereferenceable(24) %1) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i8*, align 8
  %4 = alloca %class.Graph*, align 8
  %5 = alloca i1, align 1
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::_List_iterator", align 8
  %8 = alloca %"struct.std::_List_iterator", align 8
  %9 = alloca %"struct.std::_List_iterator", align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %class.Graph* %0 to i8*
  store i8* %12, i8** %3, align 8
  store %class.Graph* %1, %class.Graph** %4, align 8
  %13 = load %class.Graph*, %class.Graph** %4, align 8
  store i1 false, i1* %5, align 1
  %14 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  call void @_ZN5GraphC1Ei(%class.Graph* nonnull dereferenceable(24) %0, i32 %15)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %62, %2
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %16
  call void @_ZNSt14_List_iteratorIiEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  %22 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  %23 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %23, i64 %25
  %27 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %26) #3
  %28 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %8, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %27, %"struct.std::__detail::_List_node_base"** %28, align 8
  %29 = bitcast %"struct.std::_List_iterator"* %7 to i8*
  %30 = bitcast %"struct.std::_List_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  br label %31

31:                                               ; preds = %55, %21
  %32 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  %33 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %33, i64 %35
  %37 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listIiSaIiEE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %36) #3
  %38 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %9, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %37, %"struct.std::__detail::_List_node_base"** %38, align 8
  %39 = call zeroext i1 @_ZStneRKSt14_List_iteratorIiES2_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %7, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %9) #3
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = getelementptr inbounds %class.Graph, %class.Graph* %0, i32 0, i32 1
  %42 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %41, align 8
  %43 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt14_List_iteratorIiEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %42, i64 %45
  invoke void @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %46, i32* nonnull align 4 dereferenceable(4) %6)
          to label %47 unwind label %57

47:                                               ; preds = %40
  %48 = getelementptr inbounds %class.Graph, %class.Graph* %0, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47
  %56 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorIiEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %7) #3
  br label %31, !llvm.loop !11

57:                                               ; preds = %40
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %10, align 8
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %11, align 4
  call void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %0) #3
  br label %69

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %16, !llvm.loop !12

65:                                               ; preds = %16
  store i1 true, i1* %5, align 1
  %66 = load i1, i1* %5, align 1
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  call void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %0) #3
  br label %68

68:                                               ; preds = %67, %65
  ret void

69:                                               ; preds = %57
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = insertvalue { i8*, i32 } undef, i8* %70, 0
  %73 = insertvalue { i8*, i32 } %72, i32 %71, 1
  resume { i8*, i32 } %73
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

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %class.Graph*, align 8
  store %class.Graph* %0, %class.Graph** %2, align 8
  %3 = load %class.Graph*, %class.Graph** %2, align 8
  %4 = getelementptr inbounds %class.Graph, %class.Graph* %3, i32 0, i32 1
  %5 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %4, align 8
  %6 = icmp eq %"class.std::__cxx11::list"* %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = bitcast %"class.std::__cxx11::list"* %5 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 -8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %5, i64 %11
  %13 = icmp eq %"class.std::__cxx11::list"* %5, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %7
  %15 = phi %"class.std::__cxx11::list"* [ %12, %7 ], [ %16, %14 ]
  %16 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %15, i64 -1
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %16) #3
  %17 = icmp eq %"class.std::__cxx11::list"* %16, %5
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %7
  call void @_ZdaPv(i8* %9) #17
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %class.Graph, %class.Graph* %3, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = bitcast i32* %21 to i8*
  call void @_ZdaPv(i8* %24) #17
  br label %25

25:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #10

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #10

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %class.Graph, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_ZN5GraphC1Ei(%class.Graph* nonnull dereferenceable(24) %2, i32 5)
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %2, i32 1, i32 0)
          to label %5 unwind label %16

5:                                                ; preds = %0
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %2, i32 0, i32 2)
          to label %6 unwind label %16

6:                                                ; preds = %5
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %2, i32 2, i32 1)
          to label %7 unwind label %16

7:                                                ; preds = %6
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %2, i32 0, i32 3)
          to label %8 unwind label %16

8:                                                ; preds = %7
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %2, i32 3, i32 4)
          to label %9 unwind label %16

9:                                                ; preds = %8
  invoke void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %2, i32 4, i32 0)
          to label %10 unwind label %16

10:                                               ; preds = %9
  %11 = invoke zeroext i1 @_ZN5Graph15isEulerianCycleEv(%class.Graph* nonnull dereferenceable(24) %2)
          to label %12 unwind label %16

12:                                               ; preds = %10
  br i1 %11, label %13, label %20

13:                                               ; preds = %12
  %14 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
          to label %15 unwind label %16

15:                                               ; preds = %13
  br label %23

16:                                               ; preds = %20, %13, %10, %9, %8, %7, %6, %5, %0
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %3, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %4, align 4
  call void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %2) #3
  br label %25

20:                                               ; preds = %12
  %21 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
          to label %22 unwind label %16

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %15
  store i32 0, i32* %1, align 4
  call void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(24) %2) #3
  %24 = load i32, i32* %1, align 4
  ret i32 %24

25:                                               ; preds = %16
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZN5Graph7addEdgeEii(%class.Graph* nonnull dereferenceable(24) %0, i32 %1, i32 %2) #7 comdat align 2 {
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
  %13 = getelementptr inbounds %class.Graph, %class.Graph* %7, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEED2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #12

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %3) #3
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %3 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %4 = alloca %"struct.std::_List_node"*, align 8
  %5 = alloca i32*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %6 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::__detail::_List_node_header"* %8 to %"struct.std::__detail::_List_node_base"*
  %10 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %9, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  store %"struct.std::__detail::_List_node_base"* %11, %"struct.std::__detail::_List_node_base"** %3, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %3, align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %6, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::__detail::_List_node_header"* %15 to %"struct.std::__detail::_List_node_base"*
  %17 = icmp ne %"struct.std::__detail::_List_node_base"* %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %3, align 8
  %20 = bitcast %"struct.std::__detail::_List_node_base"* %19 to %"struct.std::_List_node"*
  store %"struct.std::_List_node"* %20, %"struct.std::_List_node"** %4, align 8
  %21 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  %22 = bitcast %"struct.std::_List_node"* %21 to %"struct.std::__detail::_List_node_base"*
  %23 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %22, i32 0, i32 0
  %24 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %23, align 8
  store %"struct.std::__detail::_List_node_base"* %24, %"struct.std::__detail::_List_node_base"** %3, align 8
  %25 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  %26 = invoke i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(20) %25)
          to label %27 unwind label %32

27:                                               ; preds = %18
  store i32* %26, i32** %5, align 8
  %28 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %6) #3
  %29 = load i32*, i32** %5, align 8
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %28, i32* %29) #3
  %30 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %6, %"struct.std::_List_node"* %30) #3
  br label %12, !llvm.loop !13

31:                                               ; preds = %12
  ret void

32:                                               ; preds = %18
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #16
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"** %2, align 8
  %3 = load %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"*, %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %4) #3
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

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #13 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE7destroyIiEEvRS2_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i32* %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i32*, i32** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %6, i32* %7) #3
  ret void
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

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_put_nodeEPSt10_List_nodeIiE(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0, %"struct.std::_List_node"* %1) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %6 to %"class.std::allocator"*
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7, %"struct.std::_List_node"* %8, i64 1)
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #16
  unreachable
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

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, i32* %1) #8 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  %6 = load i32*, i32** %4, align 8
  ret void
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
declare dso_local void @_ZdlPv(i8*) #12

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeIiEED2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
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
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, i32* nonnull align 4 dereferenceable(4) %1) #7 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::__allocated_ptr", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  %10 = call %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %9)
  store %"struct.std::_List_node"* %10, %"struct.std::_List_node"** %5, align 8
  %11 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  %12 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %11) #3
  store %"class.std::allocator"* %12, %"class.std::allocator"** %6, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %14 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13, %"struct.std::_List_node"* %14) #3
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %16 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %17 = call i32* @_ZNSt10_List_nodeIiE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(20) %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %18) #3
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %15, i32* %17, i32* nonnull align 4 dereferenceable(4) %19) #3
  %20 = call nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7, i8* null) #3
  %21 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7) #3
  ret %"struct.std::_List_node"* %21
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
  call void @__clang_call_terminate(i8* %16) #16
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
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 24
  %15 = call noalias nonnull i8* @_Znwm(i64 %14) #19
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
declare dso_local void @_ZSt17__throw_bad_allocv() #14

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

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNKSt7__cxx114listIiSaIiEE13_M_node_countEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  %5 = call i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %4)
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE11_M_get_sizeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #8 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl", %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_header", %"struct.std::__detail::_List_node_header"* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  ret i64 %7
}

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
define internal void @_GLOBAL__sub_I_euler_circuit_directed_graph.cpp() #0 section ".text.startup" {
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
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { allocsize(0) }

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
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
