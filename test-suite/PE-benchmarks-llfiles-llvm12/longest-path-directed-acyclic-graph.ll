; ModuleID = 'PE-benchmarks/longest-path-directed-acyclic-graph.cpp'
source_filename = "PE-benchmarks/longest-path-directed-acyclic-graph.cpp"
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
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl" }
%"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%class.AdjListNode = type { i32, i32 }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"class.std::allocator.3" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.4" = type { i8 }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator"*, %"struct.std::_List_node"* }

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EEC2Ev = comdat any

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EED2Ev = comdat any

$_ZN11AdjListNodeC2Eii = comdat any

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt14_List_iteratorI11AdjListNodeEC2Ev = comdat any

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE5beginEv = comdat any

$_ZStneRKSt14_List_iteratorI11AdjListNodeES3_ = comdat any

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE3endEv = comdat any

$_ZNKSt14_List_iteratorI11AdjListNodeEdeEv = comdat any

$_ZN11AdjListNode4getVEv = comdat any

$_ZNSt14_List_iteratorI11AdjListNodeEppEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv = comdat any

$_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv = comdat any

$_ZNKSt14_List_iteratorI11AdjListNodeEptEv = comdat any

$_ZN11AdjListNode9getWeightEv = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EEC2Ev = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE10_List_implC2Ev = comdat any

$_ZNSaISt10_List_nodeI11AdjListNodeEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_headerC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEEC2Ev = comdat any

$_ZNSt8__detail17_List_node_header7_M_initEv = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EED2Ev = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE8_M_clearEv = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE10_List_implD2Ev = comdat any

$_ZNSt10_List_nodeI11AdjListNodeE9_M_valptrEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE7destroyIS1_EEvRS3_PT_ = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E = comdat any

$_ZN9__gnu_cxx16__aligned_membufI11AdjListNodeE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufI11AdjListNodeE7_M_addrEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE7destroyIS2_EEvPT_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE10deallocateERS3_PS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE10deallocateEPS3_m = comdat any

$_ZNSaISt10_List_nodeI11AdjListNodeEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEED2Ev = comdat any

$_ZNSt5dequeIiSaIiEED2Ev = comdat any

$_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_ = comdat any

$_ZNSt5dequeIiSaIiEE5beginEv = comdat any

$_ZNSt5dequeIiSaIiEE3endEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEED2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m = comdat any

$_ZNSaIPiED2Ev = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPiEC2IiEERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiED2Ev = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_ = comdat any

$_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_ = comdat any

$_ZSt7forwardIRK11AdjListNodeEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_inc_sizeEm = comdat any

$_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_get_nodeEv = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEEC2ERS3_PS2_ = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_ = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEEaSEDn = comdat any

$_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE8allocateERS3_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE11_M_max_sizeEv = comdat any

$_ZSt11__addressofISaISt10_List_nodeI11AdjListNodeEEEPT_RS4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE9constructIS2_JRKS2_EEEvPT_DpOT0_ = comdat any

$_ZNSt14_List_iteratorI11AdjListNodeEC2EPNSt8__detail15_List_node_baseE = comdat any

$_ZNSt5dequeIiSaIiEE9push_backERKi = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNKSt5dequeIiSaIiEE4sizeEv = comdat any

$_ZNKSt5dequeIiSaIiEE8max_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_ = comdat any

$_ZStmiRKSt15_Deque_iteratorIiRiPiES4_ = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm = comdat any

$_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIPPiET_S2_ = comdat any

$_ZSt12__niter_wrapIPPiET_RKS2_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIPPiET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_ = comdat any

$_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt5dequeIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNKSt5dequeIiSaIiEE5emptyEv = comdat any

$_ZSteqRKSt15_Deque_iteratorIiRiPiES4_ = comdat any

$_ZNSt5dequeIiSaIiEE4backEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEmmEv = comdat any

$_ZNKSt15_Deque_iteratorIiRiPiEdeEv = comdat any

$_ZNSt5dequeIiSaIiEE8pop_backEv = comdat any

$_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_ = comdat any

$_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [5 x i8] c"INF \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Following are longest distances from source vertex \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_longest_path_directed_acyclic_graph.cpp, i8* null }]

@_ZN5GraphC1Ei = dso_local unnamed_addr alias void (%class.Graph*, i32), void (%class.Graph*, i32)* @_ZN5GraphC2Ei
@_ZN5GraphD1Ev = dso_local unnamed_addr alias void (%class.Graph*), void (%class.Graph*)* @_ZN5GraphD2Ev

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
  %18 = call noalias nonnull i8* @_Znam(i64 %17) #16
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
  call void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EEC2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %26) #3
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
define linkonce_odr dso_local void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EEC2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EEC2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_ZN5GraphD2Ev(%class.Graph* nonnull dereferenceable(16) %0) unnamed_addr #6 align 2 {
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
  call void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EED2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %16) #3
  %17 = icmp eq %"class.std::__cxx11::list"* %16, %5
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %7
  call void @_ZdaPv(i8* %9) #17
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EED2Ev(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %2, align 8
  %3 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %2, align 8
  %4 = bitcast %"class.std::__cxx11::list"* %3 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EED2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #7

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %0, i32 %1, i32 %2, i32 %3) #8 align 2 {
  %5 = alloca %class.Graph*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %class.AdjListNode, align 4
  store %class.Graph* %0, %class.Graph** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %class.Graph*, %class.Graph** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  call void @_ZN11AdjListNodeC2Eii(%class.AdjListNode* nonnull dereferenceable(8) %9, i32 %11, i32 %12)
  %13 = getelementptr inbounds %class.Graph, %class.Graph* %10, i32 0, i32 1
  %14 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %14, i64 %16
  call void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE9push_backERKS1_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %17, %class.AdjListNode* nonnull align 4 dereferenceable(8) %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN11AdjListNodeC2Eii(%class.AdjListNode* nonnull dereferenceable(8) %0, i32 %1, i32 %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %class.AdjListNode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.AdjListNode* %0, %class.AdjListNode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.AdjListNode*, %class.AdjListNode** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %class.AdjListNode, %class.AdjListNode* %7, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %class.AdjListNode, %class.AdjListNode* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE9push_backERKS1_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, %class.AdjListNode* nonnull align 4 dereferenceable(8) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca %class.AdjListNode*, align 8
  %5 = alloca %"struct.std::_List_iterator", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store %class.AdjListNode* %1, %class.AdjListNode** %4, align 8
  %6 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %7 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %6) #3
  %8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %7, %"struct.std::__detail::_List_node_base"** %8, align 8
  %9 = load %class.AdjListNode*, %class.AdjListNode** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %5, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  call void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %6, %"struct.std::__detail::_List_node_base"* %11, %class.AdjListNode* nonnull align 4 dereferenceable(8) %9)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* nonnull dereferenceable(16) %0, i32 %1, i8* %2, %"class.std::stack"* nonnull align 8 dereferenceable(80) %3) #8 align 2 {
  %5 = alloca %class.Graph*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::stack"*, align 8
  %9 = alloca %"struct.std::_List_iterator", align 8
  %10 = alloca %"struct.std::_List_iterator", align 8
  %11 = alloca %"struct.std::_List_iterator", align 8
  %12 = alloca %class.AdjListNode, align 4
  store %class.Graph* %0, %class.Graph** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %"class.std::stack"* %3, %"class.std::stack"** %8, align 8
  %13 = load %class.Graph*, %class.Graph** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 1, i8* %17, align 1
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %9) #3
  %18 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  %19 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %19, i64 %21
  %23 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %22) #3
  %24 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %10, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %23, %"struct.std::__detail::_List_node_base"** %24, align 8
  %25 = bitcast %"struct.std::_List_iterator"* %9 to i8*
  %26 = bitcast %"struct.std::_List_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  br label %27

27:                                               ; preds = %51, %4
  %28 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  %29 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %29, i64 %31
  %33 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %32) #3
  %34 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %11, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %33, %"struct.std::__detail::_List_node_base"** %34, align 8
  %35 = call zeroext i1 @_ZStneRKSt14_List_iteratorI11AdjListNodeES3_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %9, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %11) #3
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = call nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %9) #3
  %38 = bitcast %class.AdjListNode* %12 to i8*
  %39 = bitcast %class.AdjListNode* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* nonnull dereferenceable(8) %12)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = call i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* nonnull dereferenceable(8) %12)
  %48 = load i8*, i8** %7, align 8
  %49 = load %"class.std::stack"*, %"class.std::stack"** %8, align 8
  call void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* nonnull dereferenceable(16) %13, i32 %47, i8* %48, %"class.std::stack"* nonnull align 8 dereferenceable(80) %49)
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50
  %52 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorI11AdjListNodeEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %9) #3
  br label %27, !llvm.loop !2

53:                                               ; preds = %27
  %54 = load %"class.std::stack"*, %"class.std::stack"** %8, align 8
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* nonnull dereferenceable(80) %54, i32* nonnull align 4 dereferenceable(4) %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorI11AdjListNodeEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* null, %"struct.std::__detail::_List_node_base"** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl", %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %8, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %2, %"struct.std::__detail::_List_node_base"* %10) #3
  %11 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %11, align 8
  ret %"struct.std::__detail::_List_node_base"* %12
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local zeroext i1 @_ZStneRKSt14_List_iteratorI11AdjListNodeES3_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %0, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %1) #9 comdat {
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
define linkonce_odr dso_local %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator", align 8
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  %4 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %5 = bitcast %"class.std::__cxx11::list"* %4 to %"class.std::__cxx11::_List_base"*
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl", %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::__detail::_List_node_header"* %7 to %"struct.std::__detail::_List_node_base"*
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %2, %"struct.std::__detail::_List_node_base"* %8) #3
  %9 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %2, i32 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %9, align 8
  ret %"struct.std::__detail::_List_node_base"* %10
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEdeEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %7 = call %class.AdjListNode* @_ZNSt10_List_nodeI11AdjListNodeE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(24) %6)
  ret %class.AdjListNode* %7
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* nonnull dereferenceable(8) %0) #9 comdat align 2 {
  %2 = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %0, %class.AdjListNode** %2, align 8
  %3 = load %class.AdjListNode*, %class.AdjListNode** %2, align 8
  %4 = getelementptr inbounds %class.AdjListNode, %class.AdjListNode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorI11AdjListNodeEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::stack"* nonnull dereferenceable(80) %0, i32* nonnull align 4 dereferenceable(4) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::stack"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::stack"* %0, %"class.std::stack"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::stack"*, %"class.std::stack"** %3, align 8
  %6 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %5, i32 0, i32 0
  %7 = load i32*, i32** %4, align 8
  call void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* nonnull dereferenceable(80) %6, i32* nonnull align 4 dereferenceable(4) %7)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_ZN5Graph11longestPathEi(%class.Graph* nonnull dereferenceable(16) %0, i32 %1) #8 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::stack", align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %"struct.std::_List_iterator", align 8
  %16 = alloca %"struct.std::_List_iterator", align 8
  %17 = alloca %"struct.std::_List_iterator", align 8
  %18 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %class.Graph*, %class.Graph** %3, align 8
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::stack"* nonnull dereferenceable(80) %5)
  %20 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = invoke noalias nonnull i8* @_Znam(i64 %27) #16
          to label %29 unwind label %43

29:                                               ; preds = %2
  store i8* %28, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %11, align 4
  %32 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %30, !llvm.loop !4

43:                                               ; preds = %177, %171, %168, %144, %137, %124, %121, %94, %92, %87, %62, %2
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  store i8* %45, i8** %9, align 8
  %46 = extractvalue { i8*, i32 } %44, 1
  store i32 %46, i32* %10, align 4
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* nonnull dereferenceable(80) %5) #3
  br label %191

47:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = trunc i8 %58 to i1
  %60 = zext i1 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %8, align 8
  invoke void @_ZN5Graph19topologicalSortUtilEiPbRSt5stackIiSt5dequeIiSaIiEEE(%class.Graph* nonnull dereferenceable(16) %19, i32 %63, i8* %64, %"class.std::stack"* nonnull align 8 dereferenceable(80) %5)
          to label %65 unwind label %43

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %53
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %48, !llvm.loop !5

70:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i32, i32* %13, align 4
  %73 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %24, i64 %78
  store i32 -2147483648, i32* %79, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %71, !llvm.loop !6

83:                                               ; preds = %71
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %24, i64 %85
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %155, %83
  %88 = invoke zeroext i1 @_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::stack"* nonnull dereferenceable(80) %5)
          to label %89 unwind label %43

89:                                               ; preds = %87
  %90 = zext i1 %88 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %156

92:                                               ; preds = %89
  %93 = invoke nonnull align 4 dereferenceable(4) i32* @_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv(%"class.std::stack"* nonnull dereferenceable(80) %5)
          to label %94 unwind label %43

94:                                               ; preds = %92
  %95 = load i32, i32* %93, align 4
  store i32 %95, i32* %14, align 4
  invoke void @_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv(%"class.std::stack"* nonnull dereferenceable(80) %5)
          to label %96 unwind label %43

96:                                               ; preds = %94
  call void @_ZNSt14_List_iteratorI11AdjListNodeEC2Ev(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %15) #3
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %24, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, -2147483648
  br i1 %101, label %102, label %155

102:                                              ; preds = %96
  %103 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 1
  %104 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %104, i64 %106
  %108 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE5beginEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %107) #3
  %109 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %16, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %108, %"struct.std::__detail::_List_node_base"** %109, align 8
  %110 = bitcast %"struct.std::_List_iterator"* %15 to i8*
  %111 = bitcast %"struct.std::_List_iterator"* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 8, i1 false)
  br label %112

112:                                              ; preds = %152, %102
  %113 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 1
  %114 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %114, i64 %116
  %118 = call %"struct.std::__detail::_List_node_base"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE3endEv(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %117) #3
  %119 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %17, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %118, %"struct.std::__detail::_List_node_base"** %119, align 8
  %120 = call zeroext i1 @_ZStneRKSt14_List_iteratorI11AdjListNodeES3_(%"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %15, %"struct.std::_List_iterator"* nonnull align 8 dereferenceable(8) %17) #3
  br i1 %120, label %121, label %154

121:                                              ; preds = %112
  %122 = call %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %15) #3
  %123 = invoke i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* nonnull dereferenceable(8) %122)
          to label %124 unwind label %43

124:                                              ; preds = %121
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %24, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %24, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %15) #3
  %133 = invoke i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* nonnull dereferenceable(8) %132)
          to label %134 unwind label %43

134:                                              ; preds = %124
  %135 = add nsw i32 %131, %133
  %136 = icmp slt i32 %127, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %24, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %15) #3
  %143 = invoke i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* nonnull dereferenceable(8) %142)
          to label %144 unwind label %43

144:                                              ; preds = %137
  %145 = add nsw i32 %141, %143
  %146 = call %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %15) #3
  %147 = invoke i32 @_ZN11AdjListNode4getVEv(%class.AdjListNode* nonnull dereferenceable(8) %146)
          to label %148 unwind label %43

148:                                              ; preds = %144
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %24, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %134
  br label %152

152:                                              ; preds = %151
  %153 = call nonnull align 8 dereferenceable(8) %"struct.std::_List_iterator"* @_ZNSt14_List_iteratorI11AdjListNodeEppEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %15) #3
  br label %112, !llvm.loop !7

154:                                              ; preds = %112
  br label %155

155:                                              ; preds = %154, %96
  br label %87, !llvm.loop !8

156:                                              ; preds = %89
  store i32 0, i32* %18, align 4
  br label %157

157:                                              ; preds = %182, %156
  %158 = load i32, i32* %18, align 4
  %159 = getelementptr inbounds %class.Graph, %class.Graph* %19, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %24, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, -2147483648
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
          to label %170 unwind label %43

170:                                              ; preds = %168
  br label %180

171:                                              ; preds = %162
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %24, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %175)
          to label %177 unwind label %43

177:                                              ; preds = %171
  %178 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %179 unwind label %43

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %170
  %181 = phi %"class.std::basic_ostream"* [ %169, %170 ], [ %178, %179 ]
  br label %182

182:                                              ; preds = %180
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %18, align 4
  br label %157, !llvm.loop !9

185:                                              ; preds = %157
  %186 = load i8*, i8** %8, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  call void @_ZdaPv(i8* %186) #17
  br label %189

189:                                              ; preds = %188, %185
  %190 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %190)
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* nonnull dereferenceable(80) %5) #3
  ret void

191:                                              ; preds = %43
  %192 = load i8*, i8** %9, align 8
  %193 = load i32, i32* %10, align 4
  %194 = insertvalue { i8*, i32 } undef, i8* %192, 0
  %195 = insertvalue { i8*, i32 } %194, i32 %193, 1
  resume { i8*, i32 } %195
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::stack"* nonnull dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %0, %"class.std::stack"** %2, align 8
  %3 = load %"class.std::stack"*, %"class.std::stack"** %2, align 8
  %4 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i32 0, i32 0
  %5 = bitcast %"class.std::deque"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 80, i1 false)
  call void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* nonnull dereferenceable(80) %4)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #11

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local zeroext i1 @_ZNKSt5stackIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::stack"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %0, %"class.std::stack"** %2, align 8
  %3 = load %"class.std::stack"*, %"class.std::stack"** %2, align 8
  %4 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i32 0, i32 0
  %5 = call zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* nonnull dereferenceable(80) %4) #3
  ret i1 %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv(%"class.std::stack"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %0, %"class.std::stack"** %2, align 8
  %3 = load %"class.std::stack"*, %"class.std::stack"** %2, align 8
  %4 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i32 0, i32 0
  %5 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE4backEv(%"class.std::deque"* nonnull dereferenceable(80) %4) #3
  ret i32* %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv(%"class.std::stack"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %0, %"class.std::stack"** %2, align 8
  %3 = load %"class.std::stack"*, %"class.std::stack"** %2, align 8
  %4 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE8pop_backEv(%"class.std::deque"* nonnull dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %class.AdjListNode* @_ZNKSt14_List_iteratorI11AdjListNodeEptEv(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_List_iterator"*, align 8
  store %"struct.std::_List_iterator"* %0, %"struct.std::_List_iterator"** %2, align 8
  %3 = load %"struct.std::_List_iterator"*, %"struct.std::_List_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %4, align 8
  %6 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %7 = call %class.AdjListNode* @_ZNSt10_List_nodeI11AdjListNodeE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(24) %6)
  ret %class.AdjListNode* %7
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32 @_ZN11AdjListNode9getWeightEv(%class.AdjListNode* nonnull dereferenceable(8) %0) #9 comdat align 2 {
  %2 = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %0, %class.AdjListNode** %2, align 8
  %3 = load %class.AdjListNode*, %class.AdjListNode** %2, align 8
  %4 = getelementptr inbounds %class.AdjListNode, %class.AdjListNode* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #11

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* nonnull dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::stack"*, align 8
  store %"class.std::stack"* %0, %"class.std::stack"** %2, align 8
  %3 = load %"class.std::stack"*, %"class.std::stack"** %2, align 8
  %4 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* nonnull dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %class.Graph, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_ZN5GraphC1Ei(%class.Graph* nonnull dereferenceable(16) %2, i32 6)
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 0, i32 1, i32 5)
          to label %6 unwind label %26

6:                                                ; preds = %0
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 0, i32 2, i32 3)
          to label %7 unwind label %26

7:                                                ; preds = %6
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 1, i32 3, i32 6)
          to label %8 unwind label %26

8:                                                ; preds = %7
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 1, i32 2, i32 2)
          to label %9 unwind label %26

9:                                                ; preds = %8
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 2, i32 4, i32 4)
          to label %10 unwind label %26

10:                                               ; preds = %9
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 2, i32 5, i32 2)
          to label %11 unwind label %26

11:                                               ; preds = %10
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 2, i32 3, i32 7)
          to label %12 unwind label %26

12:                                               ; preds = %11
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 3, i32 5, i32 1)
          to label %13 unwind label %26

13:                                               ; preds = %12
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 3, i32 4, i32 -1)
          to label %14 unwind label %26

14:                                               ; preds = %13
  invoke void @_ZN5Graph7addEdgeEiii(%class.Graph* nonnull dereferenceable(16) %2, i32 4, i32 5, i32 -2)
          to label %15 unwind label %26

15:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  %16 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
          to label %17 unwind label %26

17:                                               ; preds = %15
  %18 = load i32, i32* %5, align 4
  %19 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %16, i32 %18)
          to label %20 unwind label %26

20:                                               ; preds = %17
  %21 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
          to label %22 unwind label %26

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  invoke void @_ZN5Graph11longestPathEi(%class.Graph* nonnull dereferenceable(16) %2, i32 %23)
          to label %24 unwind label %26

24:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  call void @_ZN5GraphD1Ev(%class.Graph* nonnull dereferenceable(16) %2) #3
  %25 = load i32, i32* %1, align 4
  ret i32 %25

26:                                               ; preds = %22, %20, %17, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %0
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %3, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %4, align 4
  call void @_ZN5GraphD1Ev(%class.Graph* nonnull dereferenceable(16) %2) #3
  br label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EEC2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE10_List_implC2Ev(%"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"** %2, align 8
  %3 = load %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"*, %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %4) #3
  %5 = getelementptr inbounds %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl", %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %3, i32 0, i32 0
  call void @_ZNSt8__detail17_List_node_headerC2Ev(%"struct.std::__detail::_List_node_header"* nonnull dereferenceable(24) %5) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %4) #3
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEEC2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt8__detail17_List_node_header7_M_initEv(%"struct.std::__detail::_List_node_header"* nonnull dereferenceable(24) %0) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EED2Ev(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %3) #3
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* nonnull dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE8_M_clearEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %3 = alloca %"struct.std::__detail::_List_node_base"*, align 8
  %4 = alloca %"struct.std::_List_node"*, align 8
  %5 = alloca %class.AdjListNode*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %6 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl", %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::__detail::_List_node_header"* %8 to %"struct.std::__detail::_List_node_base"*
  %10 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %9, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %10, align 8
  store %"struct.std::__detail::_List_node_base"* %11, %"struct.std::__detail::_List_node_base"** %3, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %3, align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %6, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl", %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %14, i32 0, i32 0
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
  %26 = invoke %class.AdjListNode* @_ZNSt10_List_nodeI11AdjListNodeE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(24) %25)
          to label %27 unwind label %32

27:                                               ; preds = %18
  store %class.AdjListNode* %26, %class.AdjListNode** %5, align 8
  %28 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %6) #3
  %29 = load %class.AdjListNode*, %class.AdjListNode** %5, align 8
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE7destroyIS1_EEvRS3_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %28, %class.AdjListNode* %29) #3
  %30 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %6, %"struct.std::_List_node"* %30) #3
  br label %12, !llvm.loop !10

31:                                               ; preds = %12
  ret void

32:                                               ; preds = %18
  %33 = landingpad { i8*, i32 }
          catch i8* null
  %34 = extractvalue { i8*, i32 } %33, 0
  call void @__clang_call_terminate(i8* %34) #18
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE10_List_implD2Ev(%"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* nonnull dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"*, align 8
  store %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %0, %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"** %2, align 8
  %3 = load %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"*, %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaISt10_List_nodeI11AdjListNodeEED2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %class.AdjListNode* @_ZNSt10_List_nodeI11AdjListNodeE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(24) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::_List_node"* %0, %"struct.std::_List_node"** %2, align 8
  %3 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i32 0, i32 1
  %5 = call %class.AdjListNode* @_ZN9__gnu_cxx16__aligned_membufI11AdjListNodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(8) %4) #3
  ret %class.AdjListNode* %5
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #13 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #18
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE7destroyIS1_EEvRS3_PT_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.AdjListNode* %1) #9 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %class.AdjListNode*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %class.AdjListNode* %1, %class.AdjListNode** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load %class.AdjListNode*, %class.AdjListNode** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %6, %class.AdjListNode* %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0, %"struct.std::_List_node"* %1) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca %"struct.std::_List_node"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store %"struct.std::_List_node"* %1, %"struct.std::_List_node"** %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %6 to %"class.std::allocator"*
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %4, align 8
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE10deallocateERS3_PS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %7, %"struct.std::_List_node"* %8, i64 1)
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #18
  unreachable
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local %class.AdjListNode* @_ZN9__gnu_cxx16__aligned_membufI11AdjListNodeE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(8) %0) #9 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call i8* @_ZN9__gnu_cxx16__aligned_membufI11AdjListNodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(8) %3) #3
  %5 = bitcast i8* %4 to %class.AdjListNode*
  ret %class.AdjListNode* %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufI11AdjListNodeE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* nonnull dereferenceable(8) %0) #9 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [8 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE7destroyIS2_EEvPT_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, %class.AdjListNode* %1) #9 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca %class.AdjListNode*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store %class.AdjListNode* %1, %class.AdjListNode** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  %6 = load %class.AdjListNode*, %class.AdjListNode** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE10deallocateERS3_PS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %"struct.std::_List_node"* %1, i64 %2) #8 comdat align 2 {
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
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %8, %"struct.std::_List_node"* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, %"struct.std::_List_node"* %1, i64 %2) #9 comdat align 2 {
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
declare dso_local void @_ZdlPv(i8*) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaISt10_List_nodeI11AdjListNodeEED2Ev(%"class.std::allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEED2Ev(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* nonnull dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %7 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret(%"struct.std::_Deque_iterator") align 8 %3, %"class.std::deque"* nonnull dereferenceable(80) %7) #3
  call void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret(%"struct.std::_Deque_iterator") align 8 %4, %"class.std::deque"* nonnull dereferenceable(80) %7) #3
  %8 = bitcast %"class.std::deque"* %7 to %"class.std::_Deque_base"*
  %9 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %8) #3
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* nonnull dereferenceable(80) %7, %"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* %4, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %10 unwind label %12

10:                                               ; preds = %1
  %11 = bitcast %"class.std::deque"* %7 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* nonnull dereferenceable(80) %11) #3
  ret void

12:                                               ; preds = %1
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"class.std::deque"* %7 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* nonnull dereferenceable(80) %16) #3
  br label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  call void @__clang_call_terminate(i8* %18) #18
  unreachable
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* nonnull dereferenceable(80) %0, %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"* %2, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #9 comdat align 2 {
  %5 = alloca %"class.std::deque"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %5, align 8
  store %"class.std::allocator.0"* %3, %"class.std::allocator.0"** %6, align 8
  %7 = load %"class.std::deque"*, %"class.std::deque"** %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret(%"struct.std::_Deque_iterator") align 8 %0, %"class.std::deque"* nonnull dereferenceable(80) %1) #9 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::deque"*, align 8
  %5 = bitcast %"struct.std::_Deque_iterator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::deque"* %1, %"class.std::deque"** %4, align 8
  %6 = load %"class.std::deque"*, %"class.std::deque"** %4, align 8
  %7 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %8 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %9, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %10) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* noalias sret(%"struct.std::_Deque_iterator") align 8 %0, %"class.std::deque"* nonnull dereferenceable(80) %1) #9 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::deque"*, align 8
  %5 = bitcast %"struct.std::_Deque_iterator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::deque"* %1, %"class.std::deque"** %4, align 8
  %6 = load %"class.std::deque"*, %"class.std::deque"** %4, align 8
  %7 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %8 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %9, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %10) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %4 to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %4 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %5, i32 0, i32 0
  %7 = load i32**, i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %11 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %10 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %11, i32 0, i32 2
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %12, i32 0, i32 3
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %15 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* nonnull dereferenceable(80) %3, i32** %14, i32** %20) #3
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %21 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %26 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %25 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* nonnull dereferenceable(80) %3, i32** %24, i64 %28) #3
  br label %29

29:                                               ; preds = %9, %1
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* nonnull dereferenceable(80) %30) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"** %4, align 8
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 1
  %11 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 2
  %15 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 3
  %19 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %19, i32 0, i32 3
  %21 = load i32**, i32*** %20, align 8
  store i32** %21, i32*** %18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0, i32** %1, i32** %2) #9 comdat align 2 {
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32** %9, i32*** %7, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i32**, i32*** %7, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = icmp ult i32** %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* nonnull dereferenceable(80) %8, i32* %16) #3
  br label %17

17:                                               ; preds = %14
  %18 = load i32**, i32*** %7, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i32 1
  store i32** %19, i32*** %7, align 8
  br label %10, !llvm.loop !11

20:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0, i32** %1, i64 %2) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::allocator.3", align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.3"* sret(%"class.std::allocator.3") align 1 %7, %"class.std::_Deque_base"* nonnull dereferenceable(80) %10) #3
  %11 = load i32**, i32*** %5, align 8
  %12 = load i64, i64* %6, align 8
  invoke void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(%"class.std::allocator.3"* nonnull align 1 dereferenceable(1) %7, i32** %11, i64 %12)
          to label %13 unwind label %14

13:                                               ; preds = %3
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* nonnull dereferenceable(1) %7) #3
  ret void

14:                                               ; preds = %3
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %8, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %9, align 4
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* nonnull dereferenceable(1) %7) #3
  br label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  call void @__clang_call_terminate(i8* %19) #18
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* nonnull dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %0, %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"** %2, align 8
  %3 = load %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %3 to %"class.std::allocator.0"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0, i32* %1) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Deque_base"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %6 to %"class.std::allocator.0"*
  %8 = load i32*, i32** %4, align 8
  %9 = invoke i64 @_ZSt16__deque_buf_sizem(i64 4)
          to label %10 unwind label %12

10:                                               ; preds = %2
  invoke void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7, i32* %8, i64 %9)
          to label %11 unwind label %12

11:                                               ; preds = %10
  ret void

12:                                               ; preds = %10, %2
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #18
  unreachable
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0, i32* %1, i64 %2) #8 comdat align 2 {
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %8 = bitcast %"class.std::allocator.0"* %7 to %"class.__gnu_cxx::new_allocator.1"*
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %8, i32* %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZSt16__deque_buf_sizem(i64 %0) #9 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 512
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = udiv i64 512, %6
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i64 [ %7, %5 ], [ 1, %8 ]
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0, i32* %1, i64 %2) #9 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to i8*
  call void @_ZdlPv(i8* %9) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.3"* noalias sret(%"class.std::allocator.3") align 1 %0, %"class.std::_Deque_base"* nonnull dereferenceable(80) %1) #9 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = bitcast %"class.std::allocator.3"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::_Deque_base"* %1, %"class.std::_Deque_base"** %4, align 8
  %6 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  %7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %6) #3
  call void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.3"* nonnull dereferenceable(1) %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #3
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(%"class.std::allocator.3"* nonnull align 1 dereferenceable(1) %0, i32** %1, i64 %2) #8 comdat align 2 {
  %4 = alloca %"class.std::allocator.3"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %4, align 8
  %8 = bitcast %"class.std::allocator.3"* %7 to %"class.__gnu_cxx::new_allocator.4"*
  %9 = load i32**, i32*** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %8, i32** %9, i64 %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %2, align 8
  %3 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %2, align 8
  %4 = bitcast %"class.std::allocator.3"* %3 to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %4 to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.3"* nonnull dereferenceable(1) %0, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.std::allocator.3"*, align 8
  %4 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %3, align 8
  store %"class.std::allocator.0"* %1, %"class.std::allocator.0"** %4, align 8
  %5 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %3, align 8
  %6 = bitcast %"class.std::allocator.3"* %5 to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %0, %"class.__gnu_cxx::new_allocator.4"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %0, i32** %1, i64 %2) #9 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %0, %"class.__gnu_cxx::new_allocator.4"** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %4, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = bitcast i32** %8 to i8*
  call void @_ZdlPv(i8* %9) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %0, %"class.__gnu_cxx::new_allocator.4"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator.0"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %2, align 8
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %2, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, %"struct.std::__detail::_List_node_base"* %1, %class.AdjListNode* nonnull align 4 dereferenceable(8) %2) #8 comdat align 2 {
  %4 = alloca %"struct.std::_List_iterator", align 8
  %5 = alloca %"class.std::__cxx11::list"*, align 8
  %6 = alloca %class.AdjListNode*, align 8
  %7 = alloca %"struct.std::_List_node"*, align 8
  %8 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %4, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %8, align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %5, align 8
  store %class.AdjListNode* %2, %class.AdjListNode** %6, align 8
  %9 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %5, align 8
  %10 = load %class.AdjListNode*, %class.AdjListNode** %6, align 8
  %11 = call nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZSt7forwardIRK11AdjListNodeEOT_RNSt16remove_referenceIS3_E4typeE(%class.AdjListNode* nonnull align 4 dereferenceable(8) %10) #3
  %12 = call %"struct.std::_List_node"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %9, %class.AdjListNode* nonnull align 4 dereferenceable(8) %11)
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %7, align 8
  %13 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8
  %14 = bitcast %"struct.std::_List_node"* %13 to %"struct.std::__detail::_List_node_base"*
  %15 = getelementptr inbounds %"struct.std::_List_iterator", %"struct.std::_List_iterator"* %4, i32 0, i32 0
  %16 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %15, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %14, %"struct.std::__detail::_List_node_base"* %16) #3
  %17 = bitcast %"class.std::__cxx11::list"* %9 to %"class.std::__cxx11::_List_base"*
  call void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %17, i64 1)
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx114listI11AdjListNodeSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_(%"class.std::__cxx11::list"* nonnull dereferenceable(24) %0, %class.AdjListNode* nonnull align 4 dereferenceable(8) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::list"*, align 8
  %4 = alloca %class.AdjListNode*, align 8
  %5 = alloca %"struct.std::_List_node"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::__allocated_ptr", align 8
  store %"class.std::__cxx11::list"* %0, %"class.std::__cxx11::list"** %3, align 8
  store %class.AdjListNode* %1, %class.AdjListNode** %4, align 8
  %8 = load %"class.std::__cxx11::list"*, %"class.std::__cxx11::list"** %3, align 8
  %9 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  %10 = call %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %9)
  store %"struct.std::_List_node"* %10, %"struct.std::_List_node"** %5, align 8
  %11 = bitcast %"class.std::__cxx11::list"* %8 to %"class.std::__cxx11::_List_base"*
  %12 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE21_M_get_Node_allocatorEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %11) #3
  store %"class.std::allocator"* %12, %"class.std::allocator"** %6, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %14 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEEC2ERS3_PS2_(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %13, %"struct.std::_List_node"* %14) #3
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %16 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  %17 = call %class.AdjListNode* @_ZNSt10_List_nodeI11AdjListNodeE9_M_valptrEv(%"struct.std::_List_node"* nonnull dereferenceable(24) %16)
  %18 = load %class.AdjListNode*, %class.AdjListNode** %4, align 8
  %19 = call nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZSt7forwardIRK11AdjListNodeEOT_RNSt16remove_referenceIS3_E4typeE(%class.AdjListNode* nonnull align 4 dereferenceable(8) %18) #3
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %15, %class.AdjListNode* %17, %class.AdjListNode* nonnull align 4 dereferenceable(8) %19) #3
  %20 = call nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEEaSEDn(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7, i8* null) #3
  %21 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %5, align 8
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEED2Ev(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %7) #3
  ret %"struct.std::_List_node"* %21
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZSt7forwardIRK11AdjListNodeEOT_RNSt16remove_referenceIS3_E4typeE(%class.AdjListNode* nonnull align 4 dereferenceable(8) %0) #9 comdat {
  %2 = alloca %class.AdjListNode*, align 8
  store %class.AdjListNode* %0, %class.AdjListNode** %2, align 8
  %3 = load %class.AdjListNode*, %class.AdjListNode** %2, align 8
  ret %class.AdjListNode* %3
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16), %"struct.std::__detail::_List_node_base"*) #2

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_inc_sizeEm(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0, i64 %1) #9 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::_List_base"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl", %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::__detail::_List_node_header", %"struct.std::__detail::_List_node_header"* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, %6
  store i64 %11, i64* %9, align 8
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt7__cxx1110_List_baseI11AdjListNodeSaIS1_EE11_M_get_nodeEv(%"class.std::__cxx11::_List_base"* nonnull dereferenceable(24) %0) #8 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::_List_base"*, align 8
  store %"class.std::__cxx11::_List_base"* %0, %"class.std::__cxx11::_List_base"** %2, align 8
  %3 = load %"class.std::__cxx11::_List_base"*, %"class.std::__cxx11::_List_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::_List_base<AdjListNode, std::allocator<AdjListNode>>::_List_impl"* %4 to %"class.std::allocator"*
  %6 = call %"struct.std::_List_node"* @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE8allocateERS3_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %5, i64 1)
  ret %"struct.std::_List_node"* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEEC2ERS3_PS2_(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %0, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %1, %"struct.std::_List_node"* %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %"struct.std::__allocated_ptr"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"struct.std::_List_node"*, align 8
  store %"struct.std::__allocated_ptr"* %0, %"struct.std::__allocated_ptr"** %4, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %5, align 8
  store %"struct.std::_List_node"* %2, %"struct.std::_List_node"** %6, align 8
  %7 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 0
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %10 = call %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeI11AdjListNodeEEEPT_RS4_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9) #3
  store %"class.std::allocator"* %10, %"class.std::allocator"** %8, align 8
  %11 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %7, i32 0, i32 1
  %12 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %6, align 8
  store %"struct.std::_List_node"* %12, %"struct.std::_List_node"** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE9constructIS1_JRKS1_EEEvRS3_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, %class.AdjListNode* %1, %class.AdjListNode* nonnull align 4 dereferenceable(8) %2) #9 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %class.AdjListNode*, align 8
  %6 = alloca %class.AdjListNode*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %class.AdjListNode* %1, %class.AdjListNode** %5, align 8
  store %class.AdjListNode* %2, %class.AdjListNode** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %class.AdjListNode*, %class.AdjListNode** %5, align 8
  %10 = load %class.AdjListNode*, %class.AdjListNode** %6, align 8
  %11 = call nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZSt7forwardIRK11AdjListNodeEOT_RNSt16remove_referenceIS3_E4typeE(%class.AdjListNode* nonnull align 4 dereferenceable(8) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %8, %class.AdjListNode* %9, %class.AdjListNode* nonnull align 4 dereferenceable(8) %11) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"struct.std::__allocated_ptr"* @_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEEaSEDn(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %0, i8* %1) #9 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt15__allocated_ptrISaISt10_List_nodeI11AdjListNodeEEED2Ev(%"struct.std::__allocated_ptr"* nonnull dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  invoke void @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE10deallocateERS3_PS2_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %9, %"struct.std::_List_node"* %11, i64 1)
          to label %12 unwind label %14

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  ret void

14:                                               ; preds = %7
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #18
  unreachable
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZNSt16allocator_traitsISaISt10_List_nodeI11AdjListNodeEEE8allocateERS3_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0, i64 %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %6, i64 %7, i8* null)
  ret %"struct.std::_List_node"* %8
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local %"struct.std::_List_node"* @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, i64 %1, i8* %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 24
  %15 = call noalias nonnull i8* @_Znwm(i64 %14) #20
  %16 = bitcast i8* %15 to %"struct.std::_List_node"*
  ret %"struct.std::_List_node"* %16
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0) #9 comdat align 2 {
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
define linkonce_odr dso_local %"class.std::allocator"* @_ZSt11__addressofISaISt10_List_nodeI11AdjListNodeEEEPT_RS4_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #9 comdat {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  ret %"class.std::allocator"* %3
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI11AdjListNodeEE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* nonnull dereferenceable(1) %0, %class.AdjListNode* %1, %class.AdjListNode* nonnull align 4 dereferenceable(8) %2) #9 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %class.AdjListNode*, align 8
  %6 = alloca %class.AdjListNode*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %class.AdjListNode* %1, %class.AdjListNode** %5, align 8
  store %class.AdjListNode* %2, %class.AdjListNode** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %class.AdjListNode*, %class.AdjListNode** %5, align 8
  %9 = bitcast %class.AdjListNode* %8 to i8*
  %10 = bitcast i8* %9 to %class.AdjListNode*
  %11 = load %class.AdjListNode*, %class.AdjListNode** %6, align 8
  %12 = call nonnull align 4 dereferenceable(8) %class.AdjListNode* @_ZSt7forwardIRK11AdjListNodeEOT_RNSt16remove_referenceIS3_E4typeE(%class.AdjListNode* nonnull align 4 dereferenceable(8) %11) #3
  %13 = bitcast %class.AdjListNode* %10 to i8*
  %14 = bitcast %class.AdjListNode* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_List_iteratorI11AdjListNodeEC2EPNSt8__detail15_List_node_baseE(%"struct.std::_List_iterator"* nonnull dereferenceable(8) %0, %"struct.std::__detail::_List_node_base"* %1) unnamed_addr #6 comdat align 2 {
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

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* nonnull dereferenceable(80) %0, i32* nonnull align 4 dereferenceable(4) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::deque"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::deque"*, %"class.std::deque"** %3, align 8
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %7 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %8, i32 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %13 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %14, i32 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 -1
  %19 = icmp ne i32* %11, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %21, i32 0, i32 0
  %23 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %22 to %"class.std::allocator.0"*
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %25 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %26, i32 0, i32 3
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %4, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %23, i32* %29, i32* nonnull align 4 dereferenceable(4) %30) #3
  %31 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %32 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %33, i32 0, i32 3
  %35 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %35, align 8
  br label %40

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* nonnull dereferenceable(80) %5, i32* nonnull align 4 dereferenceable(4) %39)
  br label %40

40:                                               ; preds = %38, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0, i32* %1, i32* nonnull align 4 dereferenceable(4) %2) #9 comdat align 2 {
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %8 = bitcast %"class.std::allocator.0"* %7 to %"class.__gnu_cxx::new_allocator.1"*
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %8, i32* %9, i32* nonnull align 4 dereferenceable(4) %11) #3
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* nonnull dereferenceable(80) %0, i32* nonnull align 4 dereferenceable(4) %1) #8 comdat align 2 {
  %3 = alloca %"class.std::deque"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::deque"*, %"class.std::deque"** %3, align 8
  %6 = call i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* nonnull dereferenceable(80) %5) #3
  %7 = call i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(%"class.std::deque"* nonnull dereferenceable(80) %5) #3
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0)) #19
  unreachable

10:                                               ; preds = %2
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* nonnull dereferenceable(80) %5, i64 1)
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = call i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %11)
  %13 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %14 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %15, i32 0, i32 3
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 3
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* %12, i32** %19, align 8
  %20 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %21 to %"class.std::allocator.0"*
  %23 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %24 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %24 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %25, i32 0, i32 3
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %29) #3
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %22, i32* %28, i32* nonnull align 4 dereferenceable(4) %30) #3
  %31 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %32 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %33, i32 0, i32 3
  %35 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %35, i32 0, i32 0
  %37 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %36 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %38 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %37, i32 0, i32 3
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %38, i32 0, i32 3
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %34, i32** %41) #3
  %42 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %43 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %42, i32 0, i32 0
  %44 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %43 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %45 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %44, i32 0, i32 3
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %48, i32 0, i32 0
  %50 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %49 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %51 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %50, i32 0, i32 3
  %52 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %51, i32 0, i32 0
  store i32* %47, i32** %52, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0, i32* %1, i32* nonnull align 4 dereferenceable(4) %2) #9 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
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
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %0) #9 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %5 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %6, i32 0, i32 3
  %8 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %9 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %10, i32 0, i32 2
  %12 = call i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %7, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %11) #3
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(%"class.std::deque"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %4) #3
  %6 = call i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #3
  ret i64 %6
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #14

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* nonnull dereferenceable(80) %0, i64 %1) #8 comdat align 2 {
  %3 = alloca %"class.std::deque"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::deque"*, %"class.std::deque"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %6, 1
  %8 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %9 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %14 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %15, i32 0, i32 3
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 3
  %18 = load i32**, i32*** %17, align 8
  %19 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %20 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = ptrtoint i32** %18 to i64
  %25 = ptrtoint i32** %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = sub i64 %12, %27
  %29 = icmp ugt i64 %7, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* nonnull dereferenceable(80) %5, i64 %31, i1 zeroext false)
  br label %32

32:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0) #8 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %4 to %"class.std::allocator.0"*
  %6 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %7 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5, i64 %6)
  ret i32* %7
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0, i32** %1) #9 comdat align 2 {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca i32**, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %6 = load i32**, i32*** %4, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 3
  store i32** %6, i32*** %7, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 1
  store i32* %9, i32** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 2
  store i32* %14, i32** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %1) #9 comdat {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"** %4, align 8
  %5 = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %8 = load i32**, i32*** %7, align 8
  %9 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = ptrtoint i32** %8 to i64
  %13 = ptrtoint i32** %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 1
  %17 = mul nsw i64 %5, %16
  %18 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = ptrtoint i32* %20 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = add nsw i64 %17, %27
  %29 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = ptrtoint i32* %31 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = add nsw i64 %28, %38
  ret i64 %39
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #9 comdat align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %2, align 8
  store i64 9223372036854775807, i64* %3, align 8
  %5 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %2, align 8
  %6 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #3
  store i64 %6, i64* %4, align 8
  %7 = invoke nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %3, i64* nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %7, align 8
  ret i64 %9

10:                                               ; preds = %1
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #18
  unreachable
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %2, align 8
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %2, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %4) #3
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #9 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0) #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %3) #3
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0) #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* nonnull dereferenceable(80) %0, i64 %1, i1 zeroext %2) #8 comdat align 2 {
  %4 = alloca %"class.std::deque"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = zext i1 %2 to i8
  store i8 %12, i8* %6, align 1
  %13 = load %"class.std::deque"*, %"class.std::deque"** %4, align 8
  %14 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %15 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %21 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %22, i32 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = ptrtoint i32** %19 to i64
  %27 = ptrtoint i32** %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %35 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %34, i32 0, i32 0
  %36 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %35 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %37 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = mul i64 2, %39
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %3
  %43 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %44 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %43, i32 0, i32 0
  %45 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %44 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %46 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %48, i32 0, i32 0
  %50 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %49 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %51 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %52, %53
  %55 = udiv i64 %54, 2
  %56 = getelementptr inbounds i32*, i32** %47, i64 %55
  %57 = load i8, i8* %6, align 1
  %58 = trunc i8 %57 to i1
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i64, i64* %5, align 8
  br label %62

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i64 [ %60, %59 ], [ 0, %61 ]
  %64 = getelementptr inbounds i32*, i32** %56, i64 %63
  store i32** %64, i32*** %9, align 8
  %65 = load i32**, i32*** %9, align 8
  %66 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %67 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %66, i32 0, i32 0
  %68 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %67 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %69 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %68, i32 0, i32 2
  %70 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %69, i32 0, i32 3
  %71 = load i32**, i32*** %70, align 8
  %72 = icmp ult i32** %65, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %75 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %74, i32 0, i32 0
  %76 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %75 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %77 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %76, i32 0, i32 2
  %78 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %81 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %80, i32 0, i32 0
  %82 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %81 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %83 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %82, i32 0, i32 3
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %83, i32 0, i32 3
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32**, i32*** %9, align 8
  %88 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %79, i32** %86, i32** %87)
  br label %107

89:                                               ; preds = %62
  %90 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %91 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %90, i32 0, i32 0
  %92 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %91 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %93 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %92, i32 0, i32 2
  %94 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %97 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %96, i32 0, i32 0
  %98 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %97 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %99 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %98, i32 0, i32 3
  %100 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %99, i32 0, i32 3
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  %103 = load i32**, i32*** %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = call i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %95, i32** %102, i32** %105)
  br label %107

107:                                              ; preds = %89, %73
  br label %175

108:                                              ; preds = %3
  %109 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %110 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %109, i32 0, i32 0
  %111 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %110 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %112 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %115 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %114, i32 0, i32 0
  %116 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %115 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %117 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %116, i32 0, i32 1
  %118 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %117, i64* nonnull align 8 dereferenceable(8) %5)
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %113, %119
  %121 = add i64 %120, 2
  store i64 %121, i64* %10, align 8
  %122 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %123 = load i64, i64* %10, align 8
  %124 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* nonnull dereferenceable(80) %122, i64 %123)
  store i32** %124, i32*** %11, align 8
  %125 = load i32**, i32*** %11, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %8, align 8
  %128 = sub i64 %126, %127
  %129 = udiv i64 %128, 2
  %130 = getelementptr inbounds i32*, i32** %125, i64 %129
  %131 = load i8, i8* %6, align 1
  %132 = trunc i8 %131 to i1
  br i1 %132, label %133, label %135

133:                                              ; preds = %108
  %134 = load i64, i64* %5, align 8
  br label %136

135:                                              ; preds = %108
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i64 [ %134, %133 ], [ 0, %135 ]
  %138 = getelementptr inbounds i32*, i32** %130, i64 %137
  store i32** %138, i32*** %9, align 8
  %139 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %140 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %139, i32 0, i32 0
  %141 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %140 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %142 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %141, i32 0, i32 2
  %143 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %142, i32 0, i32 3
  %144 = load i32**, i32*** %143, align 8
  %145 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %146 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %145, i32 0, i32 0
  %147 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %146 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %148 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %147, i32 0, i32 3
  %149 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %148, i32 0, i32 3
  %150 = load i32**, i32*** %149, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 1
  %152 = load i32**, i32*** %9, align 8
  %153 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %144, i32** %151, i32** %152)
  %154 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %155 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %156 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %155, i32 0, i32 0
  %157 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %156 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %158 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %161 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %160, i32 0, i32 0
  %162 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %161 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %163 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* nonnull dereferenceable(80) %154, i32** %159, i64 %164) #3
  %165 = load i32**, i32*** %11, align 8
  %166 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %167 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %166, i32 0, i32 0
  %168 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %167 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %169 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %168, i32 0, i32 0
  store i32** %165, i32*** %169, align 8
  %170 = load i64, i64* %10, align 8
  %171 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %172 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %171, i32 0, i32 0
  %173 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %172 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %174 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %173, i32 0, i32 1
  store i64 %170, i64* %174, align 8
  br label %175

175:                                              ; preds = %136, %107
  %176 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %177 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %176, i32 0, i32 0
  %178 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %177 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %179 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %178, i32 0, i32 2
  %180 = load i32**, i32*** %9, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %179, i32** %180) #3
  %181 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %182 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %181, i32 0, i32 0
  %183 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %182 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %184 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %183, i32 0, i32 3
  %185 = load i32**, i32*** %9, align 8
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  %188 = getelementptr inbounds i32*, i32** %187, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %184, i32** %188) #3
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %7)
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %9)
  %11 = load i32**, i32*** %6, align 8
  %12 = call i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %8, i32** %10, i32** %11)
  ret i32** %12
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %7)
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %9)
  %11 = load i32**, i32*** %6, align 8
  %12 = call i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %8, i32** %10, i32** %11)
  ret i32** %12
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) #9 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0, i64 %1) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Deque_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::allocator.3", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %3, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.3"* sret(%"class.std::allocator.3") align 1 %5, %"class.std::_Deque_base"* nonnull dereferenceable(80) %8) #3
  %9 = load i64, i64* %4, align 8
  %10 = invoke i32** @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(%"class.std::allocator.3"* nonnull align 1 dereferenceable(1) %5, i64 %9)
          to label %11 unwind label %12

11:                                               ; preds = %2
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* nonnull dereferenceable(1) %5) #3
  ret i32** %10

12:                                               ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %6, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %7, align 4
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.3"* nonnull dereferenceable(1) %5) #3
  br label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %7) #3
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %9) #3
  %11 = load i32**, i32*** %6, align 8
  %12 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %11) #3
  %13 = call i32** @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %8, i32** %10, i32** %12)
  %14 = call i32** @_ZSt12__niter_wrapIPPiET_RKS2_S2_(i32*** nonnull align 8 dereferenceable(8) %6, i32** %13)
  ret i32** %14
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %0) #9 comdat {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %3 = load i32**, i32*** %2, align 8
  ret i32** %3
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt12__niter_wrapIPPiET_RKS2_S2_(i32*** nonnull align 8 dereferenceable(8) %0, i32** %1) #9 comdat {
  %3 = alloca i32***, align 8
  %4 = alloca i32**, align 8
  store i32*** %0, i32**** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load i32**, i32*** %4, align 8
  ret i32** %5
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = call i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %7, i32** %8, i32** %9)
  ret i32** %10
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %0) #9 comdat {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %3 = load i32**, i32*** %2, align 8
  ret i32** %3
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = call i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %7, i32** %8, i32** %9)
  ret i32** %10
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %0, i32** %1, i32** %2) #9 comdat align 2 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = ptrtoint i32** %8 to i64
  %11 = ptrtoint i32** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = bitcast i32** %17 to i8*
  %19 = load i32**, i32*** %4, align 8
  %20 = bitcast i32** %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32**, i32*** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  ret i32** %26
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %7) #3
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %9) #3
  %11 = load i32**, i32*** %6, align 8
  %12 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %11) #3
  %13 = call i32** @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %8, i32** %10, i32** %12)
  %14 = call i32** @_ZSt12__niter_wrapIPPiET_RKS2_S2_(i32*** nonnull align 8 dereferenceable(8) %6, i32** %13)
  ret i32** %14
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = call i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %7, i32** %8, i32** %9)
  ret i32** %10
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2) #8 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = call i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %7, i32** %8, i32** %9)
  ret i32** %10
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %0, i32** %1, i32** %2) #9 comdat align 2 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = ptrtoint i32** %8 to i64
  %11 = ptrtoint i32** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = bitcast i32** %20 to i8*
  %22 = load i32**, i32*** %4, align 8
  %23 = bitcast i32** %22 to i8*
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 8, %24
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %23, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i32**, i32*** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  ret i32** %30
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(%"class.std::allocator.3"* nonnull align 1 dereferenceable(1) %0, i64 %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator.3"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %3, align 8
  %6 = bitcast %"class.std::allocator.3"* %5 to %"class.__gnu_cxx::new_allocator.4"*
  %7 = load i64, i64* %4, align 8
  %8 = call i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %6, i64 %7, i8* null)
  ret i32** %8
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %0, i64 %1, i8* %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %0, %"class.__gnu_cxx::new_allocator.4"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 8
  %15 = call noalias nonnull i8* @_Znwm(i64 %14) #20
  %16 = bitcast i8* %15 to i32**
  ret i32** %16
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* nonnull dereferenceable(1) %0) #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %0, %"class.__gnu_cxx::new_allocator.4"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0, i64 %1) #8 comdat align 2 {
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %3, align 8
  %6 = bitcast %"class.std::allocator.0"* %5 to %"class.__gnu_cxx::new_allocator.1"*
  %7 = load i64, i64* %4, align 8
  %8 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %6, i64 %7, i8* null)
  ret i32* %8
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0, i64 %1, i8* %2) #8 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 4
  %15 = call noalias nonnull i8* @_Znwm(i64 %14) #20
  %16 = bitcast i8* %15 to i32*
  ret i32* %16
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* nonnull dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* nonnull dereferenceable(80) %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %5 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* nonnull dereferenceable(80) %6) #3
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* nonnull dereferenceable(80) %5, i64 0)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %3, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %4, align 4
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* nonnull dereferenceable(80) %6) #3
  br label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* nonnull dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %0, %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"** %2, align 8
  %3 = load %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %3 to %"class.std::allocator.0"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* nonnull dereferenceable(1) %4) #3
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %3 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  call void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* nonnull dereferenceable(80) %5) #3
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0, i64 %1) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Deque_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %15 = udiv i64 %13, %14
  %16 = add i64 %15, 1
  store i64 %16, i64* %5, align 8
  store i64 8, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %7, align 8
  %19 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %6, i64* nonnull align 8 dereferenceable(8) %7)
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %21 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %25 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %24 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* nonnull dereferenceable(80) %12, i64 %27)
  %29 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %30 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %29 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %30, i32 0, i32 0
  store i32** %28, i32*** %31, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %32 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %37 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %36 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %38 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds i32*, i32** %35, i64 %42
  store i32** %43, i32*** %8, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  store i32** %46, i32*** %9, align 8
  %47 = load i32**, i32*** %8, align 8
  %48 = load i32**, i32*** %9, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* nonnull dereferenceable(80) %12, i32** %47, i32** %48)
          to label %49 unwind label %50

49:                                               ; preds = %2
  br label %76

50:                                               ; preds = %2
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %10, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = call i8* @__cxa_begin_catch(i8* %55) #3
  %57 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %58 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %57 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %59 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %62 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %61 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %63 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* nonnull dereferenceable(80) %12, i32** %60, i64 %64) #3
  %65 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %66 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %65 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %67 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %66, i32 0, i32 0
  store i32** null, i32*** %67, align 8
  %68 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %69 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %68 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %70 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  invoke void @__cxa_rethrow() #19
          to label %116 unwind label %71

71:                                               ; preds = %54
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = extractvalue { i8*, i32 } %72, 0
  store i8* %73, i8** %10, align 8
  %74 = extractvalue { i8*, i32 } %72, 1
  store i32 %74, i32* %11, align 4
  invoke void @__cxa_end_catch()
          to label %75 unwind label %113

75:                                               ; preds = %71
  br label %108

76:                                               ; preds = %49
  %77 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %78 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %77 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %79 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %78, i32 0, i32 2
  %80 = load i32**, i32*** %8, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %79, i32** %80) #3
  %81 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %82 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %81 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %83 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %82, i32 0, i32 3
  %84 = load i32**, i32*** %9, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %83, i32** %85) #3
  %86 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %87 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %86 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %88 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %87, i32 0, i32 2
  %89 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %92 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %91 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %93 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %92, i32 0, i32 2
  %94 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %93, i32 0, i32 0
  store i32* %90, i32** %94, align 8
  %95 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %96 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %95 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %97 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %96, i32 0, i32 3
  %98 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %102 = urem i64 %100, %101
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %105 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %104 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %106 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %105, i32 0, i32 3
  %107 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %106, i32 0, i32 0
  store i32* %103, i32** %107, align 8
  ret void

108:                                              ; preds = %75
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = insertvalue { i8*, i32 } undef, i8* %109, 0
  %112 = insertvalue { i8*, i32 } %111, i32 %110, 1
  resume { i8*, i32 } %112

113:                                              ; preds = %71
  %114 = landingpad { i8*, i32 }
          catch i8* null
  %115 = extractvalue { i8*, i32 } %114, 0
  call void @__clang_call_terminate(i8* %115) #18
  unreachable

116:                                              ; preds = %54
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator.0"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %2, align 8
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %2, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* nonnull dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %0, %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"** %2, align 8
  %3 = load %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*, %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %3, i32 0, i32 0
  store i32** null, i32*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %6) #3
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store i32** null, i32*** %7, align 8
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* nonnull dereferenceable(80) %0, i32** %1, i32** %2) #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  %11 = load i32**, i32*** %5, align 8
  store i32** %11, i32*** %7, align 8
  br label %12

12:                                               ; preds = %20, %3
  %13 = load i32**, i32*** %7, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = icmp ult i32** %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = invoke i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %10)
          to label %18 unwind label %23

18:                                               ; preds = %16
  %19 = load i32**, i32*** %7, align 8
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %18
  %21 = load i32**, i32*** %7, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %22, i32*** %7, align 8
  br label %12, !llvm.loop !12

23:                                               ; preds = %16
  %24 = landingpad { i8*, i32 }
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %8, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @__cxa_begin_catch(i8* %28) #3
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32**, i32*** %7, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* nonnull dereferenceable(80) %10, i32** %30, i32** %31) #3
  invoke void @__cxa_rethrow() #19
          to label %47 unwind label %33

32:                                               ; preds = %12
  br label %38

33:                                               ; preds = %27
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %8, align 8
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %9, align 4
  invoke void @__cxa_end_catch()
          to label %37 unwind label %44

37:                                               ; preds = %33
  br label %39

38:                                               ; preds = %32
  ret void

39:                                               ; preds = %37
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

44:                                               ; preds = %33
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #18
  unreachable

47:                                               ; preds = %27
  unreachable
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %5 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %6, i32 0, i32 3
  %8 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %9 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %10, i32 0, i32 2
  %12 = call zeroext i1 @_ZSteqRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %7, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %11) #3
  ret i1 %12
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local zeroext i1 @_ZSteqRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* nonnull align 8 dereferenceable(32) %1) #9 comdat {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"** %4, align 8
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE4backEv(%"class.std::deque"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %4 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  call void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret(%"struct.std::_Deque_iterator") align 8 %3, %"class.std::deque"* nonnull dereferenceable(80) %4) #3
  %5 = call nonnull align 8 dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEmmEv(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %3) #3
  %6 = call nonnull align 4 dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %3) #3
  ret i32* %6
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEmmEv(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %3, i32** %12) #3
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  store i32* %14, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 -1
  store i32* %19, i32** %17, align 8
  ret %"struct.std::_Deque_iterator"* %3
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %0) #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  ret i32* %5
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE8pop_backEv(%"class.std::deque"* nonnull dereferenceable(80) %0) #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %5 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %6, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %11 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %9, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %19 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %19 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %20, i32 0, i32 3
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 -1
  store i32* %24, i32** %22, align 8
  %25 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %26 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %25) #3
  %27 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %28 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %27, i32 0, i32 0
  %29 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %28 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %30 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %29, i32 0, i32 3
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %26, i32* %32) #3
  br label %35

33:                                               ; preds = %1
  invoke void @_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv(%"class.std::deque"* nonnull dereferenceable(80) %3)
          to label %34 unwind label %36

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %17
  ret void

36:                                               ; preds = %33
  %37 = landingpad { i8*, i32 }
          catch i8* null
  %38 = extractvalue { i8*, i32 } %37, 0
  call void @__clang_call_terminate(i8* %38) #18
  unreachable
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %0, i32* %1) #9 comdat align 2 {
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca i32*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %3, align 8
  %6 = bitcast %"class.std::allocator.0"* %5 to %"class.__gnu_cxx::new_allocator.1"*
  %7 = load i32*, i32** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %6, i32* %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_pop_back_auxEv(%"class.std::deque"* nonnull dereferenceable(80) %0) #9 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %6 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* nonnull dereferenceable(80) %4, i32* %10) #3
  %11 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %12 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %13, i32 0, i32 3
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %16 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %17, i32 0, i32 3
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* nonnull dereferenceable(32) %14, i32** %21) #3
  %22 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %23 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %22, i32 0, i32 0
  %24 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %23 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %25 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %24, i32 0, i32 3
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 -1
  %29 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %29, i32 0, i32 0
  %31 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %30 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %32 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %31, i32 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  store i32* %28, i32** %33, align 8
  %34 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %35 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.0"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* nonnull dereferenceable(80) %34) #3
  %36 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = bitcast %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl"* %37 to %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"*
  %39 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data"* %38, i32 0, i32 3
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %35, i32* %41) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator.1"* nonnull dereferenceable(1) %0, i32* %1) #9 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %4 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %3, align 8
  %6 = load i32*, i32** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_longest_path_directed_acyclic_graph.cpp() #0 section ".text.startup" {
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
attributes #7 = { nobuiltin nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { allocsize(0) }

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
