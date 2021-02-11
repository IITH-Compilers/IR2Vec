; ModuleID = 'temp/construction-of-lcp-array-from-suffix-array.cpp'
source_filename = "temp/construction-of-lcp-array-from-suffix-array.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.suffix = type { i32, [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i32 (i64, i32, i64, i32)* }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.3" = type { i32* }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { i32 (i64, i32, i64, i32)* }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { i32 (i64, i32, i64, i32)* }
%"class.std::move_iterator" = type { i32* }

$_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_ = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_ = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZSt6__sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFi6suffixS2_EEENS0_15_Iter_comp_iterIT_EES6_ = comdat any

$_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt22__final_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt14__partial_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_T0_ = comdat any

$_ZSt13__heap_selectIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_ = comdat any

$_ZSt11__sort_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_ = comdat any

$_ZSt11__make_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_ = comdat any

$_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_ = comdat any

$_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZSt11__push_heapIP6suffixlS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFiS0_S0_EEEEvT_T0_S9_T1_RT2_ = comdat any

$_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEclIPS2_S2_EEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_S8_T0_ = comdat any

$_ZSt21__unguarded_partitionIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_S8_T0_ = comdat any

$_ZSt9iter_swapIP6suffixS1_EvT_T0_ = comdat any

$_ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = comdat any

$_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt13move_backwardIP6suffixS1_ET0_T_S3_S2_ = comdat any

$_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EP6suffixS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP6suffixET_S2_ = comdat any

$_ZSt22__copy_move_backward_aILb1EP6suffixS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP6suffixET_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6suffixEEPT_PKS4_S7_S5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEclIS2_PS2_EEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEC2ES4_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_ = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZNKSt13move_iteratorIPiE4baseEv = comdat any

$_ZNSt13move_iteratorIPiEC2ES0_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ = comdat any

$_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"banana\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Suffix Array : \0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0ALCP Array : \0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_construction_of_lcp_array_from_suffix_array.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3cmp6suffixS_(i64 %a.coerce0, i32 %a.coerce1, i64 %b.coerce0, i32 %b.coerce1) #4 {
entry:
  %a = alloca %struct.suffix, align 4
  %coerce = alloca { i64, i32 }, align 4
  %b = alloca %struct.suffix, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %a.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %a.coerce1, i32* %1, align 4
  %2 = bitcast %struct.suffix* %a to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce1, i32 0, i32 0
  store i64 %b.coerce0, i64* %4, align 4
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce1, i32 0, i32 1
  store i32 %b.coerce1, i32* %5, align 4
  %6 = bitcast %struct.suffix* %b to i8*
  %7 = bitcast { i64, i32 }* %coerce1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 12, i1 false)
  %rank = getelementptr inbounds %struct.suffix, %struct.suffix* %a, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %rank, i64 0, i64 0
  %8 = load i32, i32* %arrayidx, align 4
  %rank2 = getelementptr inbounds %struct.suffix, %struct.suffix* %b, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %rank2, i64 0, i64 0
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %rank4 = getelementptr inbounds %struct.suffix, %struct.suffix* %a, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %rank4, i64 0, i64 1
  %10 = load i32, i32* %arrayidx5, align 4
  %rank6 = getelementptr inbounds %struct.suffix, %struct.suffix* %b, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %rank6, i64 0, i64 1
  %11 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %10, %11
  %12 = zext i1 %cmp8 to i64
  %cond = select i1 %cmp8, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %rank9 = getelementptr inbounds %struct.suffix, %struct.suffix* %a, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %rank9, i64 0, i64 0
  %13 = load i32, i32* %arrayidx10, align 4
  %rank11 = getelementptr inbounds %struct.suffix, %struct.suffix* %b, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %rank11, i64 0, i64 0
  %14 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %13, %14
  %15 = zext i1 %cmp13 to i64
  %cond14 = select i1 %cmp13, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ %cond, %cond.true ], [ %cond14, %cond.false ]
  ret i32 %cond15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define dso_local void @_Z16buildSuffixArrayNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::vector"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* %txt, i32 %n) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %__vla_expr1 = alloca i64, align 8
  %k = alloca i32, align 4
  %rank19 = alloca i32, align 4
  %prev_rank = alloca i32, align 4
  %i30 = alloca i32, align 4
  %i74 = alloca i32, align 4
  %nextindex = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %i105 = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %"class.std::vector"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i32 %n, i32* %n.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca %struct.suffix, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom
  %index = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx, i32 0, i32 0
  store i32 %6, i32* %index, align 4
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %call = call dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* %txt, i64 %conv)
  %9 = load i8, i8* %call, align 1
  %conv1 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv1, 97
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom2
  %rank = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %rank, i64 0, i64 0
  store i32 %sub, i32* %arrayidx4, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %add, %12
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %13, 1
  %conv7 = sext i32 %add6 to i64
  %call8 = call dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* %txt, i64 %conv7)
  %14 = load i8, i8* %call8, align 1
  %conv9 = sext i8 %14 to i32
  %sub10 = sub nsw i32 %conv9, 97
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ -1, %cond.false ]
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom11
  %rank13 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %rank13, i64 0, i64 1
  store i32 %cond, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idx.ext
  call void @_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_(%struct.suffix* %vla, %struct.suffix* %add.ptr, i32 (i64, i32, i64, i32)* @_Z3cmp6suffixS_)
  %18 = load i32, i32* %n.addr, align 4
  %19 = zext i32 %18 to i64
  %vla15 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %__vla_expr1, align 8
  store i32 4, i32* %k, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc102, %for.end
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 2, %21
  %cmp17 = icmp slt i32 %20, %mul
  br i1 %cmp17, label %for.body18, label %for.end104

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %rank19, align 4
  %arrayidx20 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 0
  %rank21 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %rank21, i64 0, i64 0
  %22 = load i32, i32* %arrayidx22, align 4
  store i32 %22, i32* %prev_rank, align 4
  %23 = load i32, i32* %rank19, align 4
  %arrayidx23 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 0
  %rank24 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %rank24, i64 0, i64 0
  store i32 %23, i32* %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 0
  %index27 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx26, i32 0, i32 0
  %24 = load i32, i32* %index27, align 16
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %vla15, i64 %idxprom28
  store i32 0, i32* %arrayidx29, align 4
  store i32 1, i32* %i30, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc71, %for.body18
  %25 = load i32, i32* %i30, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp32 = icmp slt i32 %25, %26
  br i1 %cmp32, label %for.body33, label %for.end73

for.body33:                                       ; preds = %for.cond31
  %27 = load i32, i32* %i30, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom34
  %rank36 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %rank36, i64 0, i64 0
  %28 = load i32, i32* %arrayidx37, align 4
  %29 = load i32, i32* %prev_rank, align 4
  %cmp38 = icmp eq i32 %28, %29
  br i1 %cmp38, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body33
  %30 = load i32, i32* %i30, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom39
  %rank41 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx40, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %rank41, i64 0, i64 1
  %31 = load i32, i32* %arrayidx42, align 4
  %32 = load i32, i32* %i30, align 4
  %sub43 = sub nsw i32 %32, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom44
  %rank46 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %rank46, i64 0, i64 1
  %33 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp eq i32 %31, %33
  br i1 %cmp48, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %34 = load i32, i32* %i30, align 4
  %idxprom49 = sext i32 %34 to i64
  %arrayidx50 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom49
  %rank51 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx50, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %rank51, i64 0, i64 0
  %35 = load i32, i32* %arrayidx52, align 4
  store i32 %35, i32* %prev_rank, align 4
  %36 = load i32, i32* %rank19, align 4
  %37 = load i32, i32* %i30, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom53
  %rank55 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx54, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %rank55, i64 0, i64 0
  store i32 %36, i32* %arrayidx56, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body33
  %38 = load i32, i32* %i30, align 4
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom57
  %rank59 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx58, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [2 x i32], [2 x i32]* %rank59, i64 0, i64 0
  %39 = load i32, i32* %arrayidx60, align 4
  store i32 %39, i32* %prev_rank, align 4
  %40 = load i32, i32* %rank19, align 4
  %inc61 = add nsw i32 %40, 1
  store i32 %inc61, i32* %rank19, align 4
  %41 = load i32, i32* %i30, align 4
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom62
  %rank64 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx63, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [2 x i32], [2 x i32]* %rank64, i64 0, i64 0
  store i32 %inc61, i32* %arrayidx65, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load i32, i32* %i30, align 4
  %43 = load i32, i32* %i30, align 4
  %idxprom66 = sext i32 %43 to i64
  %arrayidx67 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom66
  %index68 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx67, i32 0, i32 0
  %44 = load i32, i32* %index68, align 4
  %idxprom69 = sext i32 %44 to i64
  %arrayidx70 = getelementptr inbounds i32, i32* %vla15, i64 %idxprom69
  store i32 %42, i32* %arrayidx70, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %if.end
  %45 = load i32, i32* %i30, align 4
  %inc72 = add nsw i32 %45, 1
  store i32 %inc72, i32* %i30, align 4
  br label %for.cond31

for.end73:                                        ; preds = %for.cond31
  store i32 0, i32* %i74, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc97, %for.end73
  %46 = load i32, i32* %i74, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp76 = icmp slt i32 %46, %47
  br i1 %cmp76, label %for.body77, label %for.end99

for.body77:                                       ; preds = %for.cond75
  %48 = load i32, i32* %i74, align 4
  %idxprom78 = sext i32 %48 to i64
  %arrayidx79 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom78
  %index80 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx79, i32 0, i32 0
  %49 = load i32, i32* %index80, align 4
  %50 = load i32, i32* %k, align 4
  %div = sdiv i32 %50, 2
  %add81 = add nsw i32 %49, %div
  store i32 %add81, i32* %nextindex, align 4
  %51 = load i32, i32* %nextindex, align 4
  %52 = load i32, i32* %n.addr, align 4
  %cmp82 = icmp slt i32 %51, %52
  br i1 %cmp82, label %cond.true83, label %cond.false90

cond.true83:                                      ; preds = %for.body77
  %53 = load i32, i32* %nextindex, align 4
  %idxprom84 = sext i32 %53 to i64
  %arrayidx85 = getelementptr inbounds i32, i32* %vla15, i64 %idxprom84
  %54 = load i32, i32* %arrayidx85, align 4
  %idxprom86 = sext i32 %54 to i64
  %arrayidx87 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom86
  %rank88 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx87, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %rank88, i64 0, i64 0
  %55 = load i32, i32* %arrayidx89, align 4
  br label %cond.end91

cond.false90:                                     ; preds = %for.body77
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false90, %cond.true83
  %cond92 = phi i32 [ %55, %cond.true83 ], [ -1, %cond.false90 ]
  %56 = load i32, i32* %i74, align 4
  %idxprom93 = sext i32 %56 to i64
  %arrayidx94 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom93
  %rank95 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx94, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %rank95, i64 0, i64 1
  store i32 %cond92, i32* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %cond.end91
  %57 = load i32, i32* %i74, align 4
  %inc98 = add nsw i32 %57, 1
  store i32 %inc98, i32* %i74, align 4
  br label %for.cond75

for.end99:                                        ; preds = %for.cond75
  %58 = load i32, i32* %n.addr, align 4
  %idx.ext100 = sext i32 %58 to i64
  %add.ptr101 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idx.ext100
  call void @_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_(%struct.suffix* %vla, %struct.suffix* %add.ptr101, i32 (i64, i32, i64, i32)* @_Z3cmp6suffixS_)
  br label %for.inc102

for.inc102:                                       ; preds = %for.end99
  %59 = load i32, i32* %k, align 4
  %mul103 = mul nsw i32 %59, 2
  store i32 %mul103, i32* %k, align 4
  br label %for.cond16

for.end104:                                       ; preds = %for.cond16
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %agg.result) #3
  store i32 0, i32* %i105, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc112, %for.end104
  %60 = load i32, i32* %i105, align 4
  %61 = load i32, i32* %n.addr, align 4
  %cmp107 = icmp slt i32 %60, %61
  br i1 %cmp107, label %for.body108, label %for.end114

for.body108:                                      ; preds = %for.cond106
  %62 = load i32, i32* %i105, align 4
  %idxprom109 = sext i32 %62 to i64
  %arrayidx110 = getelementptr inbounds %struct.suffix, %struct.suffix* %vla, i64 %idxprom109
  %index111 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx110, i32 0, i32 0
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %agg.result, i32* dereferenceable(4) %index111)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body108
  br label %for.inc112

for.inc112:                                       ; preds = %invoke.cont
  %63 = load i32, i32* %i105, align 4
  %inc113 = add nsw i32 %63, 1
  store i32 %inc113, i32* %i105, align 4
  br label %for.cond106

lpad:                                             ; preds = %for.body108
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %exn.slot, align 8
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.result) #3
  br label %eh.resume

for.end114:                                       ; preds = %for.cond106
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end114
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.result) #3
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end114
  %67 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val115 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"*, i64) #1

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_(%struct.suffix* %__first, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__comp.addr = alloca i32 (i64, i32, i64, i32)*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store i32 (i64, i32, i64, i32)* %__comp, i32 (i64, i32, i64, i32)** %__comp.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %2 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %__comp.addr, align 8
  %call = call i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFi6suffixS2_EEENS0_15_Iter_comp_iterIT_EES6_(i32 (i64, i32, i64, i32)* %2)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %call, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %3 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt6__sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %0, %struct.suffix* %1, i32 (i64, i32, i64, i32)* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #12
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load i32*, i32** %_M_end_of_storage, align 8
  %cmp = icmp ne i32* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load i32*, i32** %_M_finish5, align 8
  %8 = load i32*, i32** %__x.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %5, i32* %7, i32* dereferenceable(4) %8)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load i32*, i32** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %this1) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %11 = load i32*, i32** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %12 = load i32*, i32** %coerce.dive8, align 8
  call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* %this1, i32* %12, i32* dereferenceable(4) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #3
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %9) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #12
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline uwtable
define dso_local void @_Z5kasaiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEE(%"class.std::vector"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* %txt, %"class.std::vector"* %suffixArr) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %n = alloca i32, align 4
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca i32, align 4
  %ref.tmp2 = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %invSuff = alloca %"class.std::vector", align 8
  %ref.tmp4 = alloca i32, align 4
  %ref.tmp5 = alloca %"class.std::allocator", align 1
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %i12 = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = bitcast %"class.std::vector"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %suffixArr) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  store i1 false, i1* %nrvo, align 1
  %1 = load i32, i32* %n, align 4
  %conv1 = sext i32 %1 to i64
  store i32 0, i32* %ref.tmp, align 4
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %ref.tmp2) #3
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* %agg.result, i64 %conv1, i32* dereferenceable(4) %ref.tmp, %"class.std::allocator"* dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp2) #3
  %2 = load i32, i32* %n, align 4
  %conv3 = sext i32 %2 to i64
  store i32 0, i32* %ref.tmp4, align 4
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %ref.tmp5) #3
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* %invSuff, i64 %conv3, i32* dereferenceable(4) %ref.tmp4, %"class.std::allocator"* dereferenceable(1) %ref.tmp5)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp5) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont7
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %conv8 = sext i32 %6 to i64
  %call9 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %suffixArr, i64 %conv8) #3
  %7 = load i32, i32* %call9, align 4
  %conv10 = sext i32 %7 to i64
  %call11 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %invSuff, i64 %conv10) #3
  store i32 %5, i32* %call11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp2) #3
  br label %eh.resume

lpad6:                                            ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp5) #3
  br label %ehcleanup

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i12, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc47, %for.end
  %15 = load i32, i32* %i12, align 4
  %16 = load i32, i32* %n, align 4
  %cmp14 = icmp slt i32 %15, %16
  br i1 %cmp14, label %for.body15, label %for.end49

for.body15:                                       ; preds = %for.cond13
  %17 = load i32, i32* %i12, align 4
  %conv16 = sext i32 %17 to i64
  %call17 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %invSuff, i64 %conv16) #3
  %18 = load i32, i32* %call17, align 4
  %19 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %19, 1
  %cmp18 = icmp eq i32 %18, %sub
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  store i32 0, i32* %k, align 4
  br label %for.inc47

if.end:                                           ; preds = %for.body15
  %20 = load i32, i32* %i12, align 4
  %conv19 = sext i32 %20 to i64
  %call20 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %invSuff, i64 %conv19) #3
  %21 = load i32, i32* %call20, align 4
  %add = add nsw i32 %21, 1
  %conv21 = sext i32 %add to i64
  %call22 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %suffixArr, i64 %conv21) #3
  %22 = load i32, i32* %call22, align 4
  store i32 %22, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %23 = load i32, i32* %i12, align 4
  %24 = load i32, i32* %k, align 4
  %add23 = add nsw i32 %23, %24
  %25 = load i32, i32* %n, align 4
  %cmp24 = icmp slt i32 %add23, %25
  br i1 %cmp24, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %26, %27
  %28 = load i32, i32* %n, align 4
  %cmp26 = icmp slt i32 %add25, %28
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %29 = load i32, i32* %i12, align 4
  %30 = load i32, i32* %k, align 4
  %add27 = add nsw i32 %29, %30
  %conv28 = sext i32 %add27 to i64
  %call31 = invoke dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* %txt, i64 %conv28)
          to label %invoke.cont30 unwind label %lpad29

invoke.cont30:                                    ; preds = %land.rhs
  %31 = load i8, i8* %call31, align 1
  %conv32 = sext i8 %31 to i32
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %k, align 4
  %add33 = add nsw i32 %32, %33
  %conv34 = sext i32 %add33 to i64
  %call36 = invoke dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* %txt, i64 %conv34)
          to label %invoke.cont35 unwind label %lpad29

invoke.cont35:                                    ; preds = %invoke.cont30
  %34 = load i8, i8* %call36, align 1
  %conv37 = sext i8 %34 to i32
  %cmp38 = icmp eq i32 %conv32, %conv37
  br label %land.end

land.end:                                         ; preds = %invoke.cont35, %land.lhs.true, %while.cond
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp38, %invoke.cont35 ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %36, 1
  store i32 %inc39, i32* %k, align 4
  br label %while.cond

lpad29:                                           ; preds = %invoke.cont30, %land.rhs
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  store i8* %38, i8** %exn.slot, align 8
  %39 = extractvalue { i8*, i32 } %37, 1
  store i32 %39, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %invSuff) #3
  br label %ehcleanup

while.end:                                        ; preds = %land.end
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %i12, align 4
  %conv40 = sext i32 %41 to i64
  %call41 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %invSuff, i64 %conv40) #3
  %42 = load i32, i32* %call41, align 4
  %conv42 = sext i32 %42 to i64
  %call43 = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %agg.result, i64 %conv42) #3
  store i32 %40, i32* %call43, align 4
  %43 = load i32, i32* %k, align 4
  %cmp44 = icmp sgt i32 %43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %while.end
  %44 = load i32, i32* %k, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %k, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %while.end
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46, %if.then
  %45 = load i32, i32* %i12, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i12, align 4
  br label %for.cond13

for.end49:                                        ; preds = %for.cond13
  store i1 true, i1* %nrvo, align 1
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %invSuff) #3
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end49
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.result) #3
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end49
  ret void

ehcleanup:                                        ; preds = %lpad29, %lpad6
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.result) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val50 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val50
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* %this, i64 %__n, i32* dereferenceable(4) %__value, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %1, %"class.std::allocator"* dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  %4 = load i32*, i32** %__value.addr, align 8
  invoke void @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::vector"* %this1, i64 %3, i32* dereferenceable(4) %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %8) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %2
  ret i32* %add.ptr
}

; Function Attrs: noinline uwtable
define dso_local void @_Z8printArrSt6vectorIiSaIiEEi(%"class.std::vector"* %arr, i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %call = call dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %arr, i64 %conv) #3
  %3 = load i32, i32* %call, align 4
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %3)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %str = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %suffixArr = alloca %"class.std::vector", align 8
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %n = alloca i32, align 4
  %agg.tmp10 = alloca %"class.std::vector", align 8
  %lcp = alloca %"class.std::vector", align 8
  %agg.tmp14 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp16 = alloca %"class.std::vector", align 8
  %agg.tmp24 = alloca %"class.std::vector", align 8
  store i32 0, i32* %retval, align 4
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %str, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp, %"class.std::__cxx11::basic_string"* dereferenceable(32) %str)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  %call = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* %str) #3
  %conv = trunc i64 %call to i32
  invoke void @_Z16buildSuffixArrayNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::vector"* sret %suffixArr, %"class.std::__cxx11::basic_string"* %agg.tmp, i32 %conv)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  %call5 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %suffixArr) #3
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %n, align 4
  %call9 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont4
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* %agg.tmp10, %"class.std::vector"* dereferenceable(24) %suffixArr)
          to label %invoke.cont11 unwind label %lpad7

invoke.cont11:                                    ; preds = %invoke.cont8
  %0 = load i32, i32* %n, align 4
  invoke void @_Z8printArrSt6vectorIiSaIiEEi(%"class.std::vector"* %agg.tmp10, i32 %0)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.tmp10) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp14, %"class.std::__cxx11::basic_string"* dereferenceable(32) %str)
          to label %invoke.cont15 unwind label %lpad7

invoke.cont15:                                    ; preds = %invoke.cont13
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* %agg.tmp16, %"class.std::vector"* dereferenceable(24) %suffixArr)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont15
  invoke void @_Z5kasaiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEE(%"class.std::vector"* sret %lcp, %"class.std::__cxx11::basic_string"* %agg.tmp14, %"class.std::vector"* %agg.tmp16)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %invoke.cont18
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.tmp16) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp14) #3
  %call23 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont20
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* %agg.tmp24, %"class.std::vector"* dereferenceable(24) %lcp)
          to label %invoke.cont25 unwind label %lpad21

invoke.cont25:                                    ; preds = %invoke.cont22
  %1 = load i32, i32* %n, align 4
  invoke void @_Z8printArrSt6vectorIiSaIiEEi(%"class.std::vector"* %agg.tmp24, i32 %1)
          to label %invoke.cont27 unwind label %lpad26

invoke.cont27:                                    ; preds = %invoke.cont25
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.tmp24) #3
  store i32 0, i32* %retval, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %lcp) #3
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %suffixArr) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %str) #3
  %2 = load i32, i32* %retval, align 4
  ret i32 %2

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %ehcleanup31

lpad3:                                            ; preds = %invoke.cont2
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %ehcleanup31

lpad7:                                            ; preds = %invoke.cont13, %invoke.cont8, %invoke.cont4
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  br label %ehcleanup30

lpad12:                                           ; preds = %invoke.cont11
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.tmp10) #3
  br label %ehcleanup30

lpad17:                                           ; preds = %invoke.cont15
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad19:                                           ; preds = %invoke.cont18
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.tmp16) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad19, %lpad17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp14) #3
  br label %ehcleanup30

lpad21:                                           ; preds = %invoke.cont22, %invoke.cont20
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %exn.slot, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %ehselector.slot, align 4
  br label %ehcleanup29

lpad26:                                           ; preds = %invoke.cont25
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %agg.tmp24) #3
  br label %ehcleanup29

ehcleanup29:                                      ; preds = %lpad26, %lpad21
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %lcp) #3
  br label %ehcleanup30

ehcleanup30:                                      ; preds = %ehcleanup29, %ehcleanup, %lpad12, %lpad7
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %suffixArr) #3
  br label %ehcleanup31

ehcleanup31:                                      ; preds = %ehcleanup30, %lpad3, %lpad1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %str) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup31, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val32 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val32
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.0"* dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* %this, %"class.std::vector"* dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::vector"* %__x, %"class.std::vector"** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %1) #3
  %2 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %call2 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #3
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(%"class.std::allocator"* sret %ref.tmp, %"class.std::allocator"* dereferenceable(1) %call2)
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %call, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp) #3
  %4 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %call3 = call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %4) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  store i32* %call3, i32** %coerce.dive, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %__x.addr, align 8
  %call5 = call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %5) #3
  %coerce.dive6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp4, i32 0, i32 0
  store i32* %call5, i32** %coerce.dive6, align 8
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %7 = load i32*, i32** %_M_start, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call7 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %8) #3
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  %9 = load i32*, i32** %coerce.dive8, align 8
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp4, i32 0, i32 0
  %10 = load i32*, i32** %coerce.dive9, align 8
  %call12 = invoke i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %9, i32* %10, i32* %7, %"class.std::allocator"* dereferenceable(1) %call7)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  store i32* %call12, i32** %_M_finish, align 8
  ret void

lpad:                                             ; preds = %entry
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp) #3
  br label %eh.resume

lpad10:                                           ; preds = %invoke.cont
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  %18 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %18) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad10, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %cmp = icmp ne %struct.suffix* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %3 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %5 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %call = call i64 @_ZSt4__lgl(i64 %sub.ptr.div)
  %mul = mul nsw i64 %call, 2
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %8 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_(%struct.suffix* %2, %struct.suffix* %3, i64 %mul, i32 (i64, i32, i64, i32)* %8)
  %9 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %10 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp2 to i8*
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp2, i32 0, i32 0
  %13 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive3, align 8
  call void @_ZSt22__final_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %9, %struct.suffix* %10, i32 (i64, i32, i64, i32)* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFi6suffixS2_EEENS0_15_Iter_comp_iterIT_EES6_(i32 (i64, i32, i64, i32)* %__comp) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__comp.addr = alloca i32 (i64, i32, i64, i32)*, align 8
  store i32 (i64, i32, i64, i32)* %__comp, i32 (i64, i32, i64, i32)** %__comp.addr, align 8
  %call = call dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** dereferenceable(8) %__comp.addr) #3
  %0 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %call, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i32 (i64, i32, i64, i32)* %0)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i32 0, i32 0
  %1 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  ret i32 (i64, i32, i64, i32)* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_(%struct.suffix* %__first, %struct.suffix* %__last, i64 %__depth_limit, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__cut = alloca %struct.suffix*, align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__depth_limit.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %5 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %8 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive2, align 8
  call void @_ZSt14__partial_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* %3, %struct.suffix* %4, %struct.suffix* %5, i32 (i64, i32, i64, i32)* %8)
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %10 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %11 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %14 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive4, align 8
  %call = call %struct.suffix* @_ZSt27__unguarded_partition_pivotIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_T0_(%struct.suffix* %10, %struct.suffix* %11, i32 (i64, i32, i64, i32)* %14)
  store %struct.suffix* %call, %struct.suffix** %__cut, align 8
  %15 = load %struct.suffix*, %struct.suffix** %__cut, align 8
  %16 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %17 = load i64, i64* %__depth_limit.addr, align 8
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %19 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %20 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive6, align 8
  call void @_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_(%struct.suffix* %15, %struct.suffix* %16, i64 %17, i32 (i64, i32, i64, i32)* %20)
  %21 = load %struct.suffix*, %struct.suffix** %__cut, align 8
  store %struct.suffix* %21, %struct.suffix** %__last.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt4__lgl(i64 %__n) #4 comdat {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = call i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %cast = trunc i64 %1 to i32
  %sub = sub nsw i32 63, %cast
  %conv = sext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %3 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %3, i64 16
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %6 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %2, %struct.suffix* %add.ptr, i32 (i64, i32, i64, i32)* %6)
  %7 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.suffix, %struct.suffix* %7, i64 16
  %8 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %9 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %11 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive4, align 8
  call void @_ZSt26__unguarded_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %add.ptr2, %struct.suffix* %8, i32 (i64, i32, i64, i32)* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %13 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %16 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive6, align 8
  call void @_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %12, %struct.suffix* %13, i32 (i64, i32, i64, i32)* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__middle, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__middle.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__middle, %struct.suffix** %__middle.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__middle.addr, align 8
  %2 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %3 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %5 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt13__heap_selectIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* %0, %struct.suffix* %1, %struct.suffix* %2, i32 (i64, i32, i64, i32)* %5)
  %6 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %7 = load %struct.suffix*, %struct.suffix** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* %6, %struct.suffix* %7, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt27__unguarded_partition_pivotIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__mid = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %2 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %0, i64 %div
  store %struct.suffix* %add.ptr, %struct.suffix** %__mid, align 8
  %3 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.suffix, %struct.suffix* %4, i64 1
  %5 = load %struct.suffix*, %struct.suffix** %__mid, align 8
  %6 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.suffix, %struct.suffix* %6, i64 -1
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %9 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive3, align 8
  call void @_ZSt22__move_median_to_firstIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.suffix* %3, %struct.suffix* %add.ptr1, %struct.suffix* %5, %struct.suffix* %add.ptr2, i32 (i64, i32, i64, i32)* %9)
  %10 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.suffix, %struct.suffix* %10, i64 1
  %11 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %12 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %15 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive6, align 8
  %call = call %struct.suffix* @_ZSt21__unguarded_partitionIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_S8_T0_(%struct.suffix* %add.ptr4, %struct.suffix* %11, %struct.suffix* %12, i32 (i64, i32, i64, i32)* %15)
  ret %struct.suffix* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__middle, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__middle.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__i = alloca %struct.suffix*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__middle, %struct.suffix** %__middle.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__middle.addr, align 8
  call void @_ZSt11__make_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* %0, %struct.suffix* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  %2 = load %struct.suffix*, %struct.suffix** %__middle.addr, align 8
  store %struct.suffix* %2, %struct.suffix** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %cmp = icmp ult %struct.suffix* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %6 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %5, %struct.suffix* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %8 = load %struct.suffix*, %struct.suffix** %__middle.addr, align 8
  %9 = load %struct.suffix*, %struct.suffix** %__i, align 8
  call void @_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_(%struct.suffix* %7, %struct.suffix* %8, %struct.suffix* %9, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %incdec.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %10, i32 1
  store %struct.suffix* %incdec.ptr, %struct.suffix** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* %__first, %struct.suffix* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %2, i32 -1
  store %struct.suffix* %incdec.ptr, %struct.suffix** %__last.addr, align 8
  %3 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %5 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_(%struct.suffix* %3, %struct.suffix* %4, %struct.suffix* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* %__first, %struct.suffix* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca %struct.suffix, align 4
  %agg.tmp = alloca %struct.suffix, align 4
  %agg.tmp6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %3 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.suffix* %2 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.suffix* %3 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 12
  store i64 %sub.ptr.div4, i64* %__len, align 8
  %4 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %4, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end9
  %5 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %6 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %5, i64 %6
  %call = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %add.ptr) #3
  %7 = bitcast %struct.suffix* %__value to i8*
  %8 = bitcast %struct.suffix* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %10 = load i64, i64* %__parent, align 8
  %11 = load i64, i64* %__len, align 8
  %call5 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__value) #3
  %12 = bitcast %struct.suffix* %agg.tmp to i8*
  %13 = bitcast %struct.suffix* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp6 to i8*
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %18 = bitcast %struct.suffix* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %20 = load i64, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp6, i32 0, i32 0
  %23 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  call void @_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.suffix* %9, i64 %10, i64 %11, i64 %20, i32 %22, i32 (i64, i32, i64, i32)* %23)
  %24 = load i64, i64* %__parent, align 8
  %cmp7 = icmp eq i64 %24, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  br label %return

if.end9:                                          ; preds = %while.body
  %25 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %25, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then8, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %struct.suffix* %__it1, %struct.suffix* %__it2) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__it1.addr = alloca %struct.suffix*, align 8
  %__it2.addr = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %struct.suffix, align 4
  %agg.tmp2 = alloca %struct.suffix, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp2.coerce = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store %struct.suffix* %__it1, %struct.suffix** %__it1.addr, align 8
  store %struct.suffix* %__it2, %struct.suffix** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %_M_comp, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__it1.addr, align 8
  %2 = bitcast %struct.suffix* %agg.tmp to i8*
  %3 = bitcast %struct.suffix* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load %struct.suffix*, %struct.suffix** %__it2.addr, align 8
  %5 = bitcast %struct.suffix* %agg.tmp2 to i8*
  %6 = bitcast %struct.suffix* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %8 = bitcast %struct.suffix* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = bitcast { i64, i32 }* %agg.tmp2.coerce to i8*
  %14 = bitcast %struct.suffix* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %call = call i32 %0(i64 %10, i32 %12, i64 %16, i32 %18)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_(%struct.suffix* %__first, %struct.suffix* %__last, %struct.suffix* %__result, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__result.addr = alloca %struct.suffix*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__value = alloca %struct.suffix, align 4
  %agg.tmp = alloca %struct.suffix, align 4
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %__result, %struct.suffix** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %call = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %0) #3
  %1 = bitcast %struct.suffix* %__value to i8*
  %2 = bitcast %struct.suffix* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %call1 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %3) #3
  %4 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %5 = bitcast %struct.suffix* %4 to i8*
  %6 = bitcast %struct.suffix* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %8 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %9 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %call2 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__value) #3
  %10 = bitcast %struct.suffix* %agg.tmp to i8*
  %11 = bitcast %struct.suffix* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %16 = bitcast %struct.suffix* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %21 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  call void @_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.suffix* %7, i64 0, i64 %sub.ptr.div, i64 %18, i32 %20, i32 (i64, i32, i64, i32)* %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__t) #4 comdat {
entry:
  %__t.addr = alloca %struct.suffix*, align 8
  store %struct.suffix* %__t, %struct.suffix** %__t.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__t.addr, align 8
  ret %struct.suffix* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.suffix* %__first, i64 %__holeIndex, i64 %__len, i64 %__value.coerce0, i32 %__value.coerce1, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__value = alloca %struct.suffix, align 4
  %coerce = alloca { i64, i32 }, align 4
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %agg.tmp = alloca %struct.suffix, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %__value.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %__value.coerce1, i32* %1, align 4
  %2 = bitcast %struct.suffix* %__value to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %4 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %4, i64* %__topIndex, align 8
  %5 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %5, i64* %__secondChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, i64* %__secondChild, align 8
  %7 = load i64, i64* %__len.addr, align 8
  %sub = sub nsw i64 %7, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %6, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i64, i64* %__secondChild, align 8
  %add = add nsw i64 %8, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %__secondChild, align 8
  %9 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %10 = load i64, i64* %__secondChild, align 8
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %9, i64 %10
  %11 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %12 = load i64, i64* %__secondChild, align 8
  %sub1 = sub nsw i64 %12, 1
  %add.ptr2 = getelementptr inbounds %struct.suffix, %struct.suffix* %11, i64 %sub1
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %add.ptr, %struct.suffix* %add.ptr2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %13, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %15 = load i64, i64* %__secondChild, align 8
  %add.ptr3 = getelementptr inbounds %struct.suffix, %struct.suffix* %14, i64 %15
  %call4 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %add.ptr3) #3
  %16 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %17 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr5 = getelementptr inbounds %struct.suffix, %struct.suffix* %16, i64 %17
  %18 = bitcast %struct.suffix* %add.ptr5 to i8*
  %19 = bitcast %struct.suffix* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = load i64, i64* %__secondChild, align 8
  store i64 %20, i64* %__holeIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i64, i64* %__len.addr, align 8
  %and = and i64 %21, 1
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %while.end
  %22 = load i64, i64* %__secondChild, align 8
  %23 = load i64, i64* %__len.addr, align 8
  %sub7 = sub nsw i64 %23, 2
  %div8 = sdiv i64 %sub7, 2
  %cmp9 = icmp eq i64 %22, %div8
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %land.lhs.true
  %24 = load i64, i64* %__secondChild, align 8
  %add11 = add nsw i64 %24, 1
  %mul12 = mul nsw i64 2, %add11
  store i64 %mul12, i64* %__secondChild, align 8
  %25 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %26 = load i64, i64* %__secondChild, align 8
  %sub13 = sub nsw i64 %26, 1
  %add.ptr14 = getelementptr inbounds %struct.suffix, %struct.suffix* %25, i64 %sub13
  %call15 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %add.ptr14) #3
  %27 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %28 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr16 = getelementptr inbounds %struct.suffix, %struct.suffix* %27, i64 %28
  %29 = bitcast %struct.suffix* %add.ptr16 to i8*
  %30 = bitcast %struct.suffix* %call15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = load i64, i64* %__secondChild, align 8
  %sub17 = sub nsw i64 %31, 1
  store i64 %sub17, i64* %__holeIndex.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %land.lhs.true, %while.end
  %call19 = call dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #3
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %__cmp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %call19)
  %32 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %33 = load i64, i64* %__holeIndex.addr, align 8
  %34 = load i64, i64* %__topIndex, align 8
  %call20 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__value) #3
  %35 = bitcast %struct.suffix* %agg.tmp to i8*
  %36 = bitcast %struct.suffix* %call20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %38 = bitcast %struct.suffix* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  call void @_ZSt11__push_heapIP6suffixlS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFiS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.suffix* %32, i64 %33, i64 %34, i64 %40, i32 %42, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* dereferenceable(8) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__t, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__t.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__t.addr, align 8
  ret %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i32 0, i32 0
  %call = call dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** dereferenceable(8) %_M_comp2) #3
  %1 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %call, align 8
  store i32 (i64, i32, i64, i32)* %1, i32 (i64, i32, i64, i32)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIP6suffixlS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFiS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.suffix* %__first, i64 %__holeIndex, i64 %__topIndex, i64 %__value.coerce0, i32 %__value.coerce1, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__value = alloca %struct.suffix, align 4
  %coerce = alloca { i64, i32 }, align 4
  %__first.addr = alloca %struct.suffix*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %__parent = alloca i64, align 8
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %__value.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %__value.coerce1, i32* %1, align 4
  %2 = bitcast %struct.suffix* %__value to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %__comp.addr, align 8
  %4 = load i64, i64* %__holeIndex.addr, align 8
  %sub = sub nsw i64 %4, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i64, i64* %__holeIndex.addr, align 8
  %6 = load i64, i64* %__topIndex.addr, align 8
  %cmp = icmp sgt i64 %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %__comp.addr, align 8
  %8 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %9 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %8, i64 %9
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %7, %struct.suffix* %add.ptr, %struct.suffix* dereferenceable(12) %__value)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %12 = load i64, i64* %__parent, align 8
  %add.ptr1 = getelementptr inbounds %struct.suffix, %struct.suffix* %11, i64 %12
  %call2 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %add.ptr1) #3
  %13 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %14 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.suffix, %struct.suffix* %13, i64 %14
  %15 = bitcast %struct.suffix* %add.ptr3 to i8*
  %16 = bitcast %struct.suffix* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load i64, i64* %__parent, align 8
  store i64 %17, i64* %__holeIndex.addr, align 8
  %18 = load i64, i64* %__holeIndex.addr, align 8
  %sub4 = sub nsw i64 %18, 1
  %div5 = sdiv i64 %sub4, 2
  store i64 %div5, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call6 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__value) #3
  %19 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %20 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.suffix, %struct.suffix* %19, i64 %20
  %21 = bitcast %struct.suffix* %add.ptr7 to i8*
  %22 = bitcast %struct.suffix* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca i32 (i64, i32, i64, i32)**, align 8
  store i32 (i64, i32, i64, i32)** %__t, i32 (i64, i32, i64, i32)*** %__t.addr, align 8
  %0 = load i32 (i64, i32, i64, i32)**, i32 (i64, i32, i64, i32)*** %__t.addr, align 8
  ret i32 (i64, i32, i64, i32)** %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %struct.suffix* %__it, %struct.suffix* dereferenceable(12) %__val) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %__it.addr = alloca %struct.suffix*, align 8
  %__val.addr = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %struct.suffix, align 4
  %agg.tmp2 = alloca %struct.suffix, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp2.coerce = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  store %struct.suffix* %__it, %struct.suffix** %__it.addr, align 8
  store %struct.suffix* %__val, %struct.suffix** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this1, i32 0, i32 0
  %0 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %_M_comp, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__it.addr, align 8
  %2 = bitcast %struct.suffix* %agg.tmp to i8*
  %3 = bitcast %struct.suffix* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load %struct.suffix*, %struct.suffix** %__val.addr, align 8
  %5 = bitcast %struct.suffix* %agg.tmp2 to i8*
  %6 = bitcast %struct.suffix* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %8 = bitcast %struct.suffix* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = bitcast { i64, i32 }* %agg.tmp2.coerce to i8*
  %14 = bitcast %struct.suffix* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %call = call i32 %0(i64 %10, i32 %12, i64 %16, i32 %18)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.suffix* %__result, %struct.suffix* %__a, %struct.suffix* %__b, %struct.suffix* %__c, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__result.addr = alloca %struct.suffix*, align 8
  %__a.addr = alloca %struct.suffix*, align 8
  %__b.addr = alloca %struct.suffix*, align 8
  %__c.addr = alloca %struct.suffix*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__result, %struct.suffix** %__result.addr, align 8
  store %struct.suffix* %__a, %struct.suffix** %__a.addr, align 8
  store %struct.suffix* %__b, %struct.suffix** %__b.addr, align 8
  store %struct.suffix* %__c, %struct.suffix** %__c.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %0, %struct.suffix* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  %3 = load %struct.suffix*, %struct.suffix** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %2, %struct.suffix* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %5 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %4, %struct.suffix* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  %7 = load %struct.suffix*, %struct.suffix** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %6, %struct.suffix* %7)
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %8 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %9 = load %struct.suffix*, %struct.suffix** %__c.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %8, %struct.suffix* %9)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %10 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %11 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %10, %struct.suffix* %11)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end16

if.else7:                                         ; preds = %entry
  %12 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  %13 = load %struct.suffix*, %struct.suffix** %__c.addr, align 8
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %12, %struct.suffix* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %15 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %14, %struct.suffix* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  %17 = load %struct.suffix*, %struct.suffix** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %16, %struct.suffix* %17)
  br i1 %call11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %18 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %19 = load %struct.suffix*, %struct.suffix** %__c.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %18, %struct.suffix* %19)
  br label %if.end14

if.else13:                                        ; preds = %if.else10
  %20 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %21 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %20, %struct.suffix* %21)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt21__unguarded_partitionIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__last, %struct.suffix* %__pivot, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__pivot.addr = alloca %struct.suffix*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %__pivot, %struct.suffix** %__pivot.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__pivot.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %0, %struct.suffix* %1)
  br i1 %call, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %2 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %2, i32 1
  store %struct.suffix* %incdec.ptr, %struct.suffix** %__first.addr, align 8
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %3 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.suffix, %struct.suffix* %3, i32 -1
  store %struct.suffix* %incdec.ptr3, %struct.suffix** %__last.addr, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %4 = load %struct.suffix*, %struct.suffix** %__pivot.addr, align 8
  %5 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %4, %struct.suffix* %5)
  br i1 %call5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %6 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.suffix, %struct.suffix* %6, i32 -1
  store %struct.suffix* %incdec.ptr7, %struct.suffix** %__last.addr, align 8
  br label %while.cond4

while.end8:                                       ; preds = %while.cond4
  %7 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %8 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %cmp = icmp ult %struct.suffix* %7, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  %9 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  ret %struct.suffix* %9

if.end:                                           ; preds = %while.end8
  %10 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %11 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %10, %struct.suffix* %11)
  %12 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.suffix, %struct.suffix* %12, i32 1
  store %struct.suffix* %incdec.ptr9, %struct.suffix** %__first.addr, align 8
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* %__a, %struct.suffix* %__b) #4 comdat {
entry:
  %__a.addr = alloca %struct.suffix*, align 8
  %__b.addr = alloca %struct.suffix*, align 8
  store %struct.suffix* %__a, %struct.suffix** %__a.addr, align 8
  store %struct.suffix* %__b, %struct.suffix** %__b.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  call void @_ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.suffix* dereferenceable(12) %0, %struct.suffix* dereferenceable(12) %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.suffix* dereferenceable(12) %__a, %struct.suffix* dereferenceable(12) %__b) #4 comdat {
entry:
  %__a.addr = alloca %struct.suffix*, align 8
  %__b.addr = alloca %struct.suffix*, align 8
  %__tmp = alloca %struct.suffix, align 4
  store %struct.suffix* %__a, %struct.suffix** %__a.addr, align 8
  store %struct.suffix* %__b, %struct.suffix** %__b.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  %call = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %0) #3
  %1 = bitcast %struct.suffix* %__tmp to i8*
  %2 = bitcast %struct.suffix* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  %call1 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %3) #3
  %4 = load %struct.suffix*, %struct.suffix** %__a.addr, align 8
  %5 = bitcast %struct.suffix* %4 to i8*
  %6 = bitcast %struct.suffix* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %call2 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__tmp) #3
  %7 = load %struct.suffix*, %struct.suffix** %__b.addr, align 8
  %8 = bitcast %struct.suffix* %7 to i8*
  %9 = bitcast %struct.suffix* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__i = alloca %struct.suffix*, align 8
  %__val = alloca %struct.suffix, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %agg.tmp7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %cmp = icmp eq %struct.suffix* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %2, i64 1
  store %struct.suffix* %add.ptr, %struct.suffix** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %cmp1 = icmp ne %struct.suffix* %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %6 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.suffix* %5, %struct.suffix* %6)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  %7 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %call3 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %7) #3
  %8 = bitcast %struct.suffix* %__val to i8*
  %9 = bitcast %struct.suffix* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %11 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %12 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %add.ptr4 = getelementptr inbounds %struct.suffix, %struct.suffix* %12, i64 1
  %call5 = call %struct.suffix* @_ZSt13move_backwardIP6suffixS1_ET0_T_S3_S2_(%struct.suffix* %10, %struct.suffix* %11, %struct.suffix* %add.ptr4)
  %call6 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__val) #3
  %13 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %14 = bitcast %struct.suffix* %13 to i8*
  %15 = bitcast %struct.suffix* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  br label %if.end12

if.else:                                          ; preds = %for.body
  %16 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %17 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp7 to i8*
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp7, i32 0, i32 0
  %19 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive8, align 8
  %call9 = call i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i32 (i64, i32, i64, i32)* %19)
  %coerce.dive10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %call9, i32 (i64, i32, i64, i32)** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  %20 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive11, align 8
  call void @_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_(%struct.suffix* %16, i32 (i64, i32, i64, i32)* %20)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %21 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %incdec.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %21, i32 1
  store %struct.suffix* %incdec.ptr, %struct.suffix** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* %__first, %struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__i = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %0, %struct.suffix** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %2 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %cmp = icmp ne %struct.suffix* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp1 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp1, i32 0, i32 0
  %6 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive2, align 8
  %call = call i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i32 (i64, i32, i64, i32)* %6)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %call, i32 (i64, i32, i64, i32)** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  %7 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive4, align 8
  call void @_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_(%struct.suffix* %3, i32 (i64, i32, i64, i32)* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.suffix*, %struct.suffix** %__i, align 8
  %incdec.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %8, i32 1
  store %struct.suffix* %incdec.ptr, %struct.suffix** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt13move_backwardIP6suffixS1_ET0_T_S3_S2_(%struct.suffix* %__first, %struct.suffix* %__last, %struct.suffix* %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__result.addr = alloca %struct.suffix*, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %__result, %struct.suffix** %__result.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %call = call %struct.suffix* @_ZSt12__miter_baseIP6suffixET_S2_(%struct.suffix* %0)
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %call1 = call %struct.suffix* @_ZSt12__miter_baseIP6suffixET_S2_(%struct.suffix* %1)
  %2 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %call2 = call %struct.suffix* @_ZSt23__copy_move_backward_a2ILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* %call, %struct.suffix* %call1, %struct.suffix* %2)
  ret %struct.suffix* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_(%struct.suffix* %__last, i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__val = alloca %struct.suffix, align 4
  %__next = alloca %struct.suffix*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %call = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %0) #3
  %1 = bitcast %struct.suffix* %__val to i8*
  %2 = bitcast %struct.suffix* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %3, %struct.suffix** %__next, align 8
  %4 = load %struct.suffix*, %struct.suffix** %__next, align 8
  %incdec.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %4, i32 -1
  store %struct.suffix* %incdec.ptr, %struct.suffix** %__next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.suffix*, %struct.suffix** %__next, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %__comp, %struct.suffix* dereferenceable(12) %__val, %struct.suffix* %5)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.suffix*, %struct.suffix** %__next, align 8
  %call2 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %6) #3
  %7 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %8 = bitcast %struct.suffix* %7 to i8*
  %9 = bitcast %struct.suffix* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = load %struct.suffix*, %struct.suffix** %__next, align 8
  store %struct.suffix* %10, %struct.suffix** %__last.addr, align 8
  %11 = load %struct.suffix*, %struct.suffix** %__next, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.suffix, %struct.suffix* %11, i32 -1
  store %struct.suffix* %incdec.ptr3, %struct.suffix** %__next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call4 = call dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* dereferenceable(12) %__val) #3
  %12 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %13 = bitcast %struct.suffix* %12 to i8*
  %14 = bitcast %struct.suffix* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i32 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %__comp.coerce, i32 (i64, i32, i64, i32)** %coerce.dive, align 8
  %call = call dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #3
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %retval, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %call)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %retval, i32 0, i32 0
  %0 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %coerce.dive1, align 8
  ret i32 (i64, i32, i64, i32)* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt23__copy_move_backward_a2ILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* %__first, %struct.suffix* %__last, %struct.suffix* %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__result.addr = alloca %struct.suffix*, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %__result, %struct.suffix** %__result.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %call = call %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* %0)
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %call1 = call %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* %1)
  %2 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %call2 = call %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* %2)
  %call3 = call %struct.suffix* @_ZSt22__copy_move_backward_aILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* %call, %struct.suffix* %call1, %struct.suffix* %call2)
  ret %struct.suffix* %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt12__miter_baseIP6suffixET_S2_(%struct.suffix* %__it) #4 comdat {
entry:
  %__it.addr = alloca %struct.suffix*, align 8
  store %struct.suffix* %__it, %struct.suffix** %__it.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__it.addr, align 8
  ret %struct.suffix* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt22__copy_move_backward_aILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* %__first, %struct.suffix* %__last, %struct.suffix* %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__result.addr = alloca %struct.suffix*, align 8
  %__simple = alloca i8, align 1
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %__result, %struct.suffix** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %2 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %call = call %struct.suffix* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6suffixEEPT_PKS4_S7_S5_(%struct.suffix* %0, %struct.suffix* %1, %struct.suffix* %2)
  ret %struct.suffix* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* %__it) #4 comdat {
entry:
  %__it.addr = alloca %struct.suffix*, align 8
  store %struct.suffix* %__it, %struct.suffix** %__it.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__it.addr, align 8
  ret %struct.suffix* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.suffix* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6suffixEEPT_PKS4_S7_S5_(%struct.suffix* %__first, %struct.suffix* %__last, %struct.suffix* %__result) #4 comdat align 2 {
entry:
  %__first.addr = alloca %struct.suffix*, align 8
  %__last.addr = alloca %struct.suffix*, align 8
  %__result.addr = alloca %struct.suffix*, align 8
  %_Num = alloca i64, align 8
  store %struct.suffix* %__first, %struct.suffix** %__first.addr, align 8
  store %struct.suffix* %__last, %struct.suffix** %__last.addr, align 8
  store %struct.suffix* %__result, %struct.suffix** %__result.addr, align 8
  %0 = load %struct.suffix*, %struct.suffix** %__last.addr, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.suffix* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.suffix* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %struct.suffix, %struct.suffix* %3, i64 %idx.neg
  %5 = bitcast %struct.suffix* %add.ptr to i8*
  %6 = load %struct.suffix*, %struct.suffix** %__first.addr, align 8
  %7 = bitcast %struct.suffix* %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 12, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.suffix*, %struct.suffix** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %struct.suffix, %struct.suffix* %9, i64 %idx.neg1
  ret %struct.suffix* %add.ptr2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %struct.suffix* dereferenceable(12) %__val, %struct.suffix* %__it) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %__val.addr = alloca %struct.suffix*, align 8
  %__it.addr = alloca %struct.suffix*, align 8
  %agg.tmp = alloca %struct.suffix, align 4
  %agg.tmp2 = alloca %struct.suffix, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp2.coerce = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  store %struct.suffix* %__val, %struct.suffix** %__val.addr, align 8
  store %struct.suffix* %__it, %struct.suffix** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this1, i32 0, i32 0
  %0 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %_M_comp, align 8
  %1 = load %struct.suffix*, %struct.suffix** %__val.addr, align 8
  %2 = bitcast %struct.suffix* %agg.tmp to i8*
  %3 = bitcast %struct.suffix* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load %struct.suffix*, %struct.suffix** %__it.addr, align 8
  %5 = bitcast %struct.suffix* %agg.tmp2 to i8*
  %6 = bitcast %struct.suffix* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %8 = bitcast %struct.suffix* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = bitcast { i64, i32 }* %agg.tmp2.coerce to i8*
  %14 = bitcast %struct.suffix* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %call = call i32 %0(i64 %10, i32 %12, i64 %16, i32 %18)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i32 0, i32 0
  %call = call dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** dereferenceable(8) %_M_comp2) #3
  %1 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %call, align 8
  store i32 (i64, i32, i64, i32)* %1, i32 (i64, i32, i64, i32)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, i32 (i64, i32, i64, i32)* %__comp) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__comp.addr = alloca i32 (i64, i32, i64, i32)*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store i32 (i64, i32, i64, i32)* %__comp, i32 (i64, i32, i64, i32)** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** dereferenceable(8) %__comp.addr) #3
  %0 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %call, align 8
  store i32 (i64, i32, i64, i32)* %0, i32 (i64, i32, i64, i32)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #12
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %0) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator"* dereferenceable(1) %0) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %1, i32* %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this1, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #12
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1) #4 comdat align 2 {
entry:
  %.addr = alloca i32*, align 8
  %.addr1 = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8
  store i32* %1, i32** %.addr1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %1, i32* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %0) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %1, i32* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i64 %0) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i32*, i32** %__p.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #9

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p, i32* dereferenceable(4) %__args) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i32*, i32** %__args.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %3) #3
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, i32* %2, i32* dereferenceable(4) %call)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* %this, i32* %__position.coerce, i32* dereferenceable(4) %__args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca i32*, align 8
  %__len = alloca i64, align 8
  %__old_start = alloca i32*, align 8
  %__old_finish = alloca i32*, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store i32* %__position.coerce, i32** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i64 %call, i64* %__len, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  store i32* %1, i32** %__old_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8
  store i32* %3, i32** %__old_finish, align 8
  %call3 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %this1) #3
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store i32* %call3, i32** %coerce.dive4, align 8
  %call5 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp) #3
  store i64 %call5, i64* %__elems_before, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %5 = load i64, i64* %__len, align 8
  %call6 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %4, i64 %5)
  store i32* %call6, i32** %__new_start, align 8
  %6 = load i32*, i32** %__new_start, align 8
  store i32* %6, i32** %__new_finish, align 8
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl7 to %"class.std::allocator"*
  %9 = load i32*, i32** %__new_start, align 8
  %10 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %10
  %11 = load i32*, i32** %__args.addr, align 8
  %call8 = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %11) #3
  invoke void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %8, i32* %add.ptr, i32* dereferenceable(4) %call8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32* null, i32** %__new_finish, align 8
  %12 = load i32*, i32** %__old_start, align 8
  %call9 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #3
  %13 = load i32*, i32** %call9, align 8
  %14 = load i32*, i32** %__new_start, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call10 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %15) #3
  %call12 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %12, i32* %13, i32* %14, %"class.std::allocator"* dereferenceable(1) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  store i32* %call12, i32** %__new_finish, align 8
  %16 = load i32*, i32** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr, i32** %__new_finish, align 8
  %call13 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position) #3
  %17 = load i32*, i32** %call13, align 8
  %18 = load i32*, i32** %__old_finish, align 8
  %19 = load i32*, i32** %__new_finish, align 8
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call14 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %20) #3
  %call16 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %17, i32* %18, i32* %19, %"class.std::allocator"* dereferenceable(1) %call14)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont11
  store i32* %call16, i32** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont11, %invoke.cont, %entry
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %24 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %25 = load i32*, i32** %__new_finish, align 8
  %tobool = icmp ne i32* %25, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %26 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %26, i32 0, i32 0
  %27 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl17 to %"class.std::allocator"*
  %28 = load i32*, i32** %__new_start, align 8
  %29 = load i64, i64* %__elems_before, align 8
  %add.ptr18 = getelementptr inbounds i32, i32* %28, i64 %29
  invoke void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator"* dereferenceable(1) %27, i32* %add.ptr18)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %if.then
  br label %if.end

lpad19:                                           ; preds = %invoke.cont23, %if.end, %if.else, %if.then
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont24 unwind label %terminate.lpad

if.else:                                          ; preds = %catch
  %33 = load i32*, i32** %__new_start, align 8
  %34 = load i32*, i32** %__new_finish, align 8
  %35 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call21 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %35) #3
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %33, i32* %34, %"class.std::allocator"* dereferenceable(1) %call21)
          to label %invoke.cont22 unwind label %lpad19

invoke.cont22:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont22, %invoke.cont20
  %36 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %37 = load i32*, i32** %__new_start, align 8
  %38 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %36, i32* %37, i64 %38)
          to label %invoke.cont23 unwind label %lpad19

invoke.cont23:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad19

invoke.cont24:                                    ; preds = %lpad19
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont15
  %39 = load i32*, i32** %__old_start, align 8
  %40 = load i32*, i32** %__old_finish, align 8
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call25 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %41) #3
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %39, i32* %40, %"class.std::allocator"* dereferenceable(1) %call25)
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %43 = load i32*, i32** %__old_start, align 8
  %44 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl26, i32 0, i32 2
  %45 = load i32*, i32** %_M_end_of_storage, align 8
  %46 = load i32*, i32** %__old_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %42, i32* %43, i64 %sub.ptr.div)
  %47 = load i32*, i32** %__new_start, align 8
  %48 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl27 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %48, i32 0, i32 0
  %_M_start28 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl27, i32 0, i32 0
  store i32* %47, i32** %_M_start28, align 8
  %49 = load i32*, i32** %__new_finish, align 8
  %50 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %_M_finish30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl29, i32 0, i32 1
  store i32* %49, i32** %_M_finish30, align 8
  %51 = load i32*, i32** %__new_start, align 8
  %52 = load i64, i64* %__len, align 8
  %add.ptr31 = getelementptr inbounds i32, i32* %51, i64 %52
  %53 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl32 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %53, i32 0, i32 0
  %_M_end_of_storage33 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl32, i32 0, i32 2
  store i32* %add.ptr31, i32** %_M_end_of_storage33, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont24
  %exn34 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn34, 0
  %lpad.val35 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val35

terminate.lpad:                                   ; preds = %lpad19
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #12
  unreachable

unreachable:                                      ; preds = %invoke.cont23
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %this) #4 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, i32** dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i32* dereferenceable(4) %__args) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = bitcast i8* %1 to i32*
  %3 = load i32*, i32** %__args.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %3) #3
  %4 = load i32, i32* %call, align 4
  store i32 %4, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__t) #4 comdat {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %0 = load i32*, i32** %__t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this1) #3
  %call2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this1) #3
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #13
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this1) #3
  %call4 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this1) #3
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this1) #3
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this1) #3
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this1) #3
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #4 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #3
  %1 = load i32*, i32** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #3
  %3 = load i32*, i32** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %this) #4 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %retval, i32** dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator", align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %call2 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  store i32* %call2, i32** %coerce.dive3, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load i32*, i32** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive5, align 8
  %call6 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %4, i32* %5, i32* %2, %"class.std::allocator"* dereferenceable(1) %3)
  ret i32* %call6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* %1, i32* %2)
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #3
  %call2 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %call) #3
  ret i64 %call2
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #4 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__b.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #3
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i32** dereferenceable(8) %__i) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i32** %__i, i32*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__i.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 4
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #11

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator"* dereferenceable(1) %0) #0 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %7 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %6, i32* %7, i32* %5)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %__i) #0 comdat {
entry:
  %retval = alloca %"class.std::move_iterator", align 8
  %__i.addr = alloca i32*, align 8
  store i32* %__i, i32** %__i.addr, align 8
  %0 = load i32*, i32** %__i.addr, align 8
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator"* %retval, i32* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp3 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive2, align 8
  %call = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %2)
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call5 = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %5)
  %6 = load i32*, i32** %__result.addr, align 8
  %call6 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call5, i32* %6)
  ret i32* %call6
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i32*, i32** %__last.addr, align 8
  %call1 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %1)
  %2 = load i32*, i32** %__result.addr, align 8
  %call2 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %2)
  %call3 = call i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call1, i32* %call2)
  ret i32* %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %__it.coerce) #0 comdat {
entry:
  %__it = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %call = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator"* %__it)
  %call1 = call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %call)
  ret i32* %call1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %call = call i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %0, i32* %1, i32* %2)
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__it) #4 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #4 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %__result.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32*, i32** %__first.addr, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 4, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %9
  ret i32* %add.ptr
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__it) #4 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_current, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator"* %this, i32* %__i) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  %__i.addr = alloca i32*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  store i32* %__i, i32** %__i.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__i.addr, align 8
  store i32* %0, i32** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0) #3
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::vector"* %this, i64 %__n, i32* dereferenceable(4) %__value) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load i32*, i32** %__value.addr, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #3
  %call2 = call i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %1, i64 %2, i32* dereferenceable(4) %3, %"class.std::allocator"* dereferenceable(1) %call)
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store i32* %call2, i32** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store i32* %call, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load i32*, i32** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store i32* %1, i32** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load i32*, i32** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %0) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* %__first, i64 %__n, i32* dereferenceable(4) %__x, %"class.std::allocator"* dereferenceable(1) %0) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load i32*, i32** %__x.addr, align 8
  %call = call i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* %1, i64 %2, i32* dereferenceable(4) %3)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__x) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__x.addr, align 8
  %call = call i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* %0, i64 %1, i32* dereferenceable(4) %2)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__x.addr, align 8
  %call = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %0, i64 %1, i32* dereferenceable(4) %2)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__value) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__value.addr, align 8
  %call1 = call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %call, i64 %1, i32* dereferenceable(4) %2)
  ret i32* %call1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__value) #4 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  %__niter = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__value.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__tmp, align 4
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %__tmp, align 4
  %5 = load i32*, i32** %__first.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %__first.addr, align 8
  ret i32* %8
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(%"class.std::allocator"* noalias sret %agg.result, %"class.std::allocator"* dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* sret %agg.result, %"class.std::allocator"* dereferenceable(1) %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator"* dereferenceable(1) %0) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__result.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2, i32 0, i32 0
  %7 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %6, i32* %7, i32* %5)
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %this) #4 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* %retval, i32** dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %this) #4 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* %retval, i32** dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* noalias sret %agg.result, %"class.std::allocator"* dereferenceable(1) %__rhs) #4 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %__rhs.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %__rhs, %"class.std::allocator"** %__rhs.addr, align 8
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__rhs.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %agg.result, %"class.std::allocator"* dereferenceable(1) %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__result.addr = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load i32*, i32** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %5, i32* %6, i32* %4)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2 to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp2, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive3, align 8
  %call = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i32* %2)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive4, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp6 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp6, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive7, align 8
  %call8 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i32* %5)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp5, i32 0, i32 0
  store i32* %call8, i32** %coerce.dive9, align 8
  %6 = load i32*, i32** %__result.addr, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  %7 = load i32*, i32** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp5, i32 0, i32 0
  %8 = load i32*, i32** %coerce.dive11, align 8
  %call12 = call i32* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i32* %7, i32* %8, i32* %6)
  ret i32* %call12
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__result.addr = alloca i32*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive2, align 8
  %call = call i32* @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i32* %2)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp3 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %agg.tmp3, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call5 = call i32* @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i32* %5)
  %6 = load i32*, i32** %__result.addr, align 8
  %call6 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %6)
  %call7 = call i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %call, i32* %call5, i32* %call6)
  ret i32* %call7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i32* %__it.coerce) #4 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %retval to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %retval, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive1, align 8
  ret i32* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__result.addr, align 8
  %call = call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %0, i32* %1, i32* %2)
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i32* %__it.coerce) #4 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %call = call dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* %__it) #3
  %0 = load i32*, i32** %call, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #4 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %__result.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32*, i32** %__first.addr, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 4, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %9
  ret i32* %add.ptr
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %this, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %this1, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* %this, i32** dereferenceable(8) %__i) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  %__i.addr = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %this, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  store i32** %__i, i32*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__i.addr, align 8
  %1 = load i32*, i32** %0, align 8
  store i32* %1, i32** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_construction_of_lcp_array_from_suffix_array.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
