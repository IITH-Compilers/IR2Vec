; ModuleID = 'PE-benchmarks/construction-of-lcp-array-from-suffix-array.cpp'
source_filename = "PE-benchmarks/construction-of-lcp-array-from-suffix-array.cpp"
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
%struct.suffix = type { i32, [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i32 (i64, i32, i64, i32)* }
%"class.std::__new_allocator" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::__new_allocator.1" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.3" = type { i32* }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { i32 (i64, i32, i64, i32)* }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { i32 (i64, i32, i64, i32)* }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_ = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZSt6__sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFi6suffixS2_EEENS0_15_Iter_comp_iterIT_EES6_ = comdat any

$_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_ = comdat any

$_ZSt4__lgIlET_S0_ = comdat any

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

$_ZSt11__bit_widthImEiT_ = comdat any

$_ZSt13__countl_zeroImEiT_ = comdat any

$_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt13move_backwardIP6suffixS1_ET0_T_S3_S2_ = comdat any

$_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE = comdat any

$_ZSt22__copy_move_backward_aILb1EP6suffixS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP6suffixET_S2_ = comdat any

$_ZSt12__niter_wrapIP6suffixET_RKS2_S2_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EP6suffixS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP6suffixET_S2_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EP6suffixS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6suffixS3_EEPT0_PT_S7_S5_ = comdat any

$_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneI6suffixS3_EEvPT_PT0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEclIS2_PS2_EEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEC2ES4_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt8__fill_aIPiiEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"banana\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Suffix Array : \0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0ALCP Array : \0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3cmp6suffixS_(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.suffix, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.suffix, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = bitcast %struct.suffix* %5 to i8*
  %12 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %14, align 4
  %15 = bitcast %struct.suffix* %7 to i8*
  %16 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.suffix, %struct.suffix* %5, i32 0, i32 1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.suffix, %struct.suffix* %7, i32 0, i32 1
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.suffix, %struct.suffix* %5, i32 0, i32 1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.suffix, %struct.suffix* %7, i32 0, i32 1
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  br label %44

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.suffix, %struct.suffix* %5, i32 0, i32 1
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.suffix, %struct.suffix* %7, i32 0, i32 1
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  br label %44

44:                                               ; preds = %34, %24
  %45 = phi i32 [ %33, %24 ], [ %43, %34 ]
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z16buildSuffixArrayNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::vector"* noalias sret(%"class.std::vector") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, i32 noundef %2) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i1, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = bitcast %"class.std::vector"* %0 to i8*
  store i8* %20, i8** %4, align 8
  store i32 %2, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca %struct.suffix, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %66, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %32
  %34 = getelementptr inbounds %struct.suffix, %struct.suffix* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %36)
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %39, 97
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %42
  %44 = getelementptr inbounds %struct.suffix, %struct.suffix* %43, i32 0, i32 1
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 0
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %29
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %53)
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = sub nsw i32 %56, 97
  br label %59

58:                                               ; preds = %29
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi i32 [ %57, %50 ], [ -1, %58 ]
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %62
  %64 = getelementptr inbounds %struct.suffix, %struct.suffix* %63, i32 0, i32 1
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 1
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %25, !llvm.loop !6

69:                                               ; preds = %25
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %71
  call void @_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_(%struct.suffix* noundef %24, %struct.suffix* noundef %72, i32 (i64, i32, i64, i32)* noundef @_Z3cmp6suffixS_)
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = alloca i32, i64 %74, align 16
  store i64 %74, i64* %9, align 8
  store i32 4, i32* %10, align 4
  br label %76

76:                                               ; preds = %204, %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 2, %78
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %207

81:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  %82 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 0
  %83 = getelementptr inbounds %struct.suffix, %struct.suffix* %82, i32 0, i32 1
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 0
  %88 = getelementptr inbounds %struct.suffix, %struct.suffix* %87, i32 0, i32 1
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %88, i64 0, i64 0
  store i32 %86, i32* %89, align 4
  %90 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 0
  %91 = getelementptr inbounds %struct.suffix, %struct.suffix* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %75, i64 %93
  store i32 0, i32* %94, align 4
  store i32 1, i32* %13, align 4
  br label %95

95:                                               ; preds = %159, %81
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %101
  %103 = getelementptr inbounds %struct.suffix, %struct.suffix* %102, i32 0, i32 1
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %99
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %110
  %112 = getelementptr inbounds %struct.suffix, %struct.suffix* %111, i32 0, i32 1
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %117
  %119 = getelementptr inbounds %struct.suffix, %struct.suffix* %118, i32 0, i32 1
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %119, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %114, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %108
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %125
  %127 = getelementptr inbounds %struct.suffix, %struct.suffix* %126, i32 0, i32 1
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %127, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %132
  %134 = getelementptr inbounds %struct.suffix, %struct.suffix* %133, i32 0, i32 1
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %134, i64 0, i64 0
  store i32 %130, i32* %135, align 4
  br label %150

136:                                              ; preds = %108, %99
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %138
  %140 = getelementptr inbounds %struct.suffix, %struct.suffix* %139, i32 0, i32 1
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %146
  %148 = getelementptr inbounds %struct.suffix, %struct.suffix* %147, i32 0, i32 1
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %148, i64 0, i64 0
  store i32 %144, i32* %149, align 4
  br label %150

150:                                              ; preds = %136, %123
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %153
  %155 = getelementptr inbounds %struct.suffix, %struct.suffix* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %75, i64 %157
  store i32 %151, i32* %158, align 4
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %95, !llvm.loop !8

162:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %197, %162
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %200

167:                                              ; preds = %163
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %169
  %171 = getelementptr inbounds %struct.suffix, %struct.suffix* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sdiv i32 %173, 2
  %175 = add nsw i32 %172, %174
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %167
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %75, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %184
  %186 = getelementptr inbounds %struct.suffix, %struct.suffix* %185, i32 0, i32 1
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %186, i64 0, i64 0
  %188 = load i32, i32* %187, align 4
  br label %190

189:                                              ; preds = %167
  br label %190

190:                                              ; preds = %189, %179
  %191 = phi i32 [ %188, %179 ], [ -1, %189 ]
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %193
  %195 = getelementptr inbounds %struct.suffix, %struct.suffix* %194, i32 0, i32 1
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 1
  store i32 %191, i32* %196, align 4
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %163, !llvm.loop !9

200:                                              ; preds = %163
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %202
  call void @_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_(%struct.suffix* noundef %24, %struct.suffix* noundef %203, i32 (i64, i32, i64, i32)* noundef @_Z3cmp6suffixS_)
  br label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %10, align 4
  %206 = mul nsw i32 %205, 2
  store i32 %206, i32* %10, align 4
  br label %76, !llvm.loop !10

207:                                              ; preds = %76
  store i1 false, i1* %16, align 1
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #15
  store i32 0, i32* %17, align 4
  br label %208

208:                                              ; preds = %218, %207
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %208
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 %214
  %216 = getelementptr inbounds %struct.suffix, %struct.suffix* %215, i32 0, i32 0
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef nonnull align 4 dereferenceable(4) %216)
          to label %217 unwind label %221

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %17, align 4
  br label %208, !llvm.loop !11

221:                                              ; preds = %212
  %222 = landingpad { i8*, i32 }
          cleanup
  %223 = extractvalue { i8*, i32 } %222, 0
  store i8* %223, i8** %18, align 8
  %224 = extractvalue { i8*, i32 } %222, 1
  store i32 %224, i32* %19, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %230

225:                                              ; preds = %208
  store i1 true, i1* %16, align 1
  %226 = load i1, i1* %16, align 1
  br i1 %226, label %228, label %227

227:                                              ; preds = %225
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %228

228:                                              ; preds = %227, %225
  %229 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %229)
  ret void

230:                                              ; preds = %221
  %231 = load i8*, i8** %18, align 8
  %232 = load i32, i32* %19, align 4
  %233 = insertvalue { i8*, i32 } undef, i8* %231, 0
  %234 = insertvalue { i8*, i32 } %233, i32 %232, 1
  resume { i8*, i32 } %234
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIP6suffixPFiS0_S0_EEvT_S4_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i32 (i64, i32, i64, i32)* noundef %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca i32 (i64, i32, i64, i32)*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store i32 (i64, i32, i64, i32)* %2, i32 (i64, i32, i64, i32)** %6, align 8
  %8 = load %struct.suffix*, %struct.suffix** %4, align 8
  %9 = load %struct.suffix*, %struct.suffix** %5, align 8
  %10 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %6, align 8
  %11 = call i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFi6suffixS2_EEENS0_15_Iter_comp_iterIT_EES6_(i32 (i64, i32, i64, i32)* noundef %10)
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %11, i32 (i64, i32, i64, i32)** %12, align 8
  %13 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %14 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %13, align 8
  call void @_ZSt6__sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %8, %struct.suffix* noundef %9, i32 (i64, i32, i64, i32)* %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #2 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"class.std::vector"*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %9, align 8
  store i32* %1, i32** %10, align 8
  %12 = load %"class.std::vector"*, %"class.std::vector"** %9, align 8
  %13 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %19 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %17, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %26 to %"class.std::allocator"*
  %28 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %10, align 8
  store %"class.std::allocator"* %27, %"class.std::allocator"** %6, align 8
  store i32* %32, i32** %7, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %35 = bitcast %"class.std::allocator"* %34 to %"class.std::__new_allocator"*
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %37) #15
  store %"class.std::__new_allocator"* %35, %"class.std::__new_allocator"** %3, align 8
  store i32* %36, i32** %4, align 8
  store i32* %38, i32** %5, align 8
  %39 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load i32*, i32** %5, align 8
  %43 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %42) #15
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %40, align 4
  %45 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %46 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0
  %47 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %46 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %48, align 8
  br label %57

51:                                               ; preds = %2
  %52 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12) #15
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12, i32* %56, i32* noundef nonnull align 4 dereferenceable(4) %54)
  br label %57

57:                                               ; preds = %51, %24
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  %8 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %9 = bitcast %"class.std::vector"* %8 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast %"class.std::vector"* %8 to %"struct.std::_Vector_base"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %15 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast %"class.std::vector"* %8 to %"struct.std::_Vector_base"*
  %20 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %19) #15
  store i32* %13, i32** %2, align 8
  store i32* %18, i32** %3, align 8
  store %"class.std::allocator"* %20, %"class.std::allocator"** %4, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  invoke void @_ZSt8_DestroyIPiEvT_S1_(i32* noundef %21, i32* noundef %22)
          to label %23 unwind label %26

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23
  %25 = bitcast %"class.std::vector"* %8 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %25) #15
  ret void

26:                                               ; preds = %1
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %6, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %7, align 4
  %30 = bitcast %"class.std::vector"* %8 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %30) #15
  br label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  call void @__clang_call_terminate(i8* %32) #16
  unreachable
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline uwtable
define dso_local void @_Z5kasaiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEE(%"class.std::vector"* noalias sret(%"class.std::vector") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::vector"* noundef %2) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::__new_allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  %10 = alloca %"class.std::allocator"*, align 8
  %11 = alloca %"class.std::allocator"*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i1, align 1
  %15 = alloca i32, align 4
  %16 = alloca %"class.std::allocator", align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %"class.std::vector", align 8
  %20 = alloca i32, align 4
  %21 = alloca %"class.std::allocator", align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = bitcast %"class.std::vector"* %0 to i8*
  store i8* %26, i8** %12, align 8
  %27 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %2) #15
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  store i1 false, i1* %14, align 1
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  store i32 0, i32* %15, align 4
  store %"class.std::allocator"* %16, %"class.std::allocator"** %11, align 8
  %31 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8
  %32 = bitcast %"class.std::allocator"* %31 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %32, %"class.std::__new_allocator"** %4, align 8
  %33 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %30, i32* noundef nonnull align 4 dereferenceable(4) %15, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16)
          to label %34 unwind label %60

34:                                               ; preds = %3
  store %"class.std::allocator"* %16, %"class.std::allocator"** %9, align 8
  %35 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  %36 = bitcast %"class.std::allocator"* %35 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %36) #15
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  store i32 0, i32* %20, align 4
  store %"class.std::allocator"* %21, %"class.std::allocator"** %10, align 8
  %39 = load %"class.std::allocator"*, %"class.std::allocator"** %10, align 8
  %40 = bitcast %"class.std::allocator"* %39 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %40, %"class.std::__new_allocator"** %5, align 8
  %41 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %5, align 8
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %38, i32* noundef nonnull align 4 dereferenceable(4) %20, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %21)
          to label %42 unwind label %66

42:                                               ; preds = %34
  store %"class.std::allocator"* %21, %"class.std::allocator"** %7, align 8
  %43 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %44 = bitcast %"class.std::allocator"* %43 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %44) #15
  store i32 0, i32* %22, align 4
  br label %45

45:                                               ; preds = %57, %42
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = sext i32 %51 to i64
  %53 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %52) #15
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %55) #15
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %22, align 4
  br label %45, !llvm.loop !12

60:                                               ; preds = %3
  %61 = landingpad { i8*, i32 }
          cleanup
  %62 = extractvalue { i8*, i32 } %61, 0
  store i8* %62, i8** %17, align 8
  %63 = extractvalue { i8*, i32 } %61, 1
  store i32 %63, i32* %18, align 4
  store %"class.std::allocator"* %16, %"class.std::allocator"** %8, align 8
  %64 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %65 = bitcast %"class.std::allocator"* %64 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %65) #15
  br label %156

66:                                               ; preds = %34
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %17, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %18, align 4
  store %"class.std::allocator"* %21, %"class.std::allocator"** %6, align 8
  %70 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %71 = bitcast %"class.std::allocator"* %70 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %71) #15
  br label %155

72:                                               ; preds = %45
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %73

73:                                               ; preds = %148, %72
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %151

77:                                               ; preds = %73
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %79) #15
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %23, align 4
  br label %148

86:                                               ; preds = %77
  %87 = load i32, i32* %24, align 4
  %88 = sext i32 %87 to i64
  %89 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %88) #15
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %92) #15
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %25, align 4
  br label %95

95:                                               ; preds = %127, %86
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %23, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %23, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %23, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = invoke noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %111)
          to label %113 unwind label %130

113:                                              ; preds = %107
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = invoke noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %119)
          to label %121 unwind label %130

121:                                              ; preds = %113
  %122 = load i8, i8* %120, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %115, %123
  br label %125

125:                                              ; preds = %121, %101, %95
  %126 = phi i1 [ false, %101 ], [ false, %95 ], [ %124, %121 ]
  br i1 %126, label %127, label %134

127:                                              ; preds = %125
  %128 = load i32, i32* %23, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %23, align 4
  br label %95, !llvm.loop !13

130:                                              ; preds = %113, %107
  %131 = landingpad { i8*, i32 }
          cleanup
  %132 = extractvalue { i8*, i32 } %131, 0
  store i8* %132, i8** %17, align 8
  %133 = extractvalue { i8*, i32 } %131, 1
  store i32 %133, i32* %18, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #15
  br label %155

134:                                              ; preds = %125
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %137) #15
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %140) #15
  store i32 %135, i32* %141, align 4
  %142 = load i32, i32* %23, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* %23, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %23, align 4
  br label %147

147:                                              ; preds = %144, %134
  br label %148

148:                                              ; preds = %147, %85
  %149 = load i32, i32* %24, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %24, align 4
  br label %73, !llvm.loop !14

151:                                              ; preds = %73
  store i1 true, i1* %14, align 1
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #15
  %152 = load i1, i1* %14, align 1
  br i1 %152, label %154, label %153

153:                                              ; preds = %151
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %154

154:                                              ; preds = %153, %151
  ret void

155:                                              ; preds = %130, %66
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %156

156:                                              ; preds = %155, %60
  %157 = load i8*, i8** %17, align 8
  %158 = load i32, i32* %18, align 4
  %159 = insertvalue { i8*, i32 } undef, i8* %157, 0
  %160 = insertvalue { i8*, i32 } %159, i32 %158, 1
  resume { i8*, i32 } %160
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = ptrtoint i32* %8 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  ret i64 %17
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::vector"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %11 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %12 = bitcast %"class.std::vector"* %11 to %"struct.std::_Vector_base"*
  %13 = load i64, i64* %6, align 8
  %14 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %15 = call noundef i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 noundef %13, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14)
  %16 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %15, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16)
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %7, align 8
  invoke void @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %17, i32* noundef nonnull align 4 dereferenceable(4) %18)
          to label %19 unwind label %20

19:                                               ; preds = %4
  ret void

20:                                               ; preds = %4
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %9, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %10, align 4
  %24 = bitcast %"class.std::vector"* %11 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %24) #15
  br label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  ret i32* %12
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z8printArrSt6vectorIiSaIiEEi(%"class.std::vector"* noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %2
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %11) #15
  %13 = load i32, i32* %12, align 4
  %14 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %15 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %5, !llvm.loop !15

19:                                               ; preds = %5
  %20 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: noinline norecurse uwtable
define dso_local noundef i32 @main() #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__new_allocator.1"*, align 8
  %2 = alloca %"class.std::allocator.0"*, align 8
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::vector", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca i32, align 4
  %13 = alloca %"class.std::vector", align 8
  %14 = alloca %"class.std::vector", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::vector", align 8
  %17 = alloca %"class.std::vector", align 8
  store i32 0, i32* %5, align 4
  store %"class.std::allocator.0"* %7, %"class.std::allocator.0"** %4, align 8
  %18 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %19 = bitcast %"class.std::allocator.0"* %18 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %19, %"class.std::__new_allocator.1"** %1, align 8
  %20 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %1, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %7)
          to label %21 unwind label %44

21:                                               ; preds = %0
  store %"class.std::allocator.0"* %7, %"class.std::allocator.0"** %3, align 8
  %22 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %3, align 8
  %23 = bitcast %"class.std::allocator.0"* %22 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %23) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6)
          to label %24 unwind label %50

24:                                               ; preds = %21
  %25 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #15
  %26 = trunc i64 %25 to i32
  invoke void @_Z16buildSuffixArrayNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::vector"* sret(%"class.std::vector") align 8 %10, %"class.std::__cxx11::basic_string"* noundef %11, i32 noundef %26)
          to label %27 unwind label %54

27:                                               ; preds = %24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #15
  %28 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %10) #15
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
          to label %31 unwind label %58

31:                                               ; preds = %27
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %13, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %10)
          to label %32 unwind label %58

32:                                               ; preds = %31
  %33 = load i32, i32* %12, align 4
  invoke void @_Z8printArrSt6vectorIiSaIiEEi(%"class.std::vector"* noundef %13, i32 noundef %33)
          to label %34 unwind label %62

34:                                               ; preds = %32
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %13) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6)
          to label %35 unwind label %58

35:                                               ; preds = %34
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %16, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %10)
          to label %36 unwind label %66

36:                                               ; preds = %35
  invoke void @_Z5kasaiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEE(%"class.std::vector"* sret(%"class.std::vector") align 8 %14, %"class.std::__cxx11::basic_string"* noundef %15, %"class.std::vector"* noundef %16)
          to label %37 unwind label %70

37:                                               ; preds = %36
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %16) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #15
  %38 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
          to label %39 unwind label %75

39:                                               ; preds = %37
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %17, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14)
          to label %40 unwind label %75

40:                                               ; preds = %39
  %41 = load i32, i32* %12, align 4
  invoke void @_Z8printArrSt6vectorIiSaIiEEi(%"class.std::vector"* noundef %17, i32 noundef %41)
          to label %42 unwind label %79

42:                                               ; preds = %40
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %17) #15
  store i32 0, i32* %5, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #15
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %10) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #15
  %43 = load i32, i32* %5, align 4
  ret i32 %43

44:                                               ; preds = %0
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %8, align 8
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %9, align 4
  store %"class.std::allocator.0"* %7, %"class.std::allocator.0"** %2, align 8
  %48 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %2, align 8
  %49 = bitcast %"class.std::allocator.0"* %48 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %49) #15
  br label %86

50:                                               ; preds = %21
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %8, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %9, align 4
  br label %85

54:                                               ; preds = %24
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %8, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %9, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #15
  br label %85

58:                                               ; preds = %34, %31, %27
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %8, align 8
  %61 = extractvalue { i8*, i32 } %59, 1
  store i32 %61, i32* %9, align 4
  br label %84

62:                                               ; preds = %32
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  store i8* %64, i8** %8, align 8
  %65 = extractvalue { i8*, i32 } %63, 1
  store i32 %65, i32* %9, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %13) #15
  br label %84

66:                                               ; preds = %35
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %8, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %9, align 4
  br label %74

70:                                               ; preds = %36
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  store i8* %72, i8** %8, align 8
  %73 = extractvalue { i8*, i32 } %71, 1
  store i32 %73, i32* %9, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %16) #15
  br label %74

74:                                               ; preds = %70, %66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #15
  br label %84

75:                                               ; preds = %39, %37
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  store i8* %77, i8** %8, align 8
  %78 = extractvalue { i8*, i32 } %76, 1
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %40
  %80 = landingpad { i8*, i32 }
          cleanup
  %81 = extractvalue { i8*, i32 } %80, 0
  store i8* %81, i8** %8, align 8
  %82 = extractvalue { i8*, i32 } %80, 1
  store i32 %82, i32* %9, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %17) #15
  br label %83

83:                                               ; preds = %79, %75
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #15
  br label %84

84:                                               ; preds = %83, %74, %62, %58
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %10) #15
  br label %85

85:                                               ; preds = %84, %54, %50
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #15
  br label %86

86:                                               ; preds = %85, %44
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = insertvalue { i8*, i32 } undef, i8* %87, 0
  %90 = insertvalue { i8*, i32 } %89, i32 %88, 1
  resume { i8*, i32 } %90
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #8

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %"class.std::allocator"*, align 8
  %11 = alloca %"class.std::allocator"*, align 8
  %12 = alloca %"class.std::allocator"*, align 8
  %13 = alloca %"class.std::vector"*, align 8
  %14 = alloca %"class.std::vector"*, align 8
  %15 = alloca %"class.std::allocator", align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %19 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %13, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %14, align 8
  %20 = load %"class.std::vector"*, %"class.std::vector"** %13, align 8
  %21 = bitcast %"class.std::vector"* %20 to %"struct.std::_Vector_base"*
  %22 = load %"class.std::vector"*, %"class.std::vector"** %14, align 8
  %23 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %22) #15
  %24 = load %"class.std::vector"*, %"class.std::vector"** %14, align 8
  %25 = bitcast %"class.std::vector"* %24 to %"struct.std::_Vector_base"*
  %26 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %25) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %27 = bitcast %"class.std::allocator"* %15 to i8*
  store i8* %27, i8** %9, align 8, !noalias !16
  store %"class.std::allocator"* %26, %"class.std::allocator"** %10, align 8, !noalias !16
  %28 = load %"class.std::allocator"*, %"class.std::allocator"** %10, align 8, !noalias !16
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %29 = bitcast %"class.std::allocator"* %15 to i8*
  store i8* %29, i8** %7, align 8, !noalias !19
  store %"class.std::allocator"* %28, %"class.std::allocator"** %8, align 8, !noalias !19
  %30 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8, !noalias !19
  store %"class.std::allocator"* %15, %"class.std::allocator"** %5, align 8, !noalias !19
  store %"class.std::allocator"* %30, %"class.std::allocator"** %6, align 8, !noalias !19
  %31 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8, !noalias !19
  %32 = bitcast %"class.std::allocator"* %31 to %"class.std::__new_allocator"*
  %33 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8, !noalias !19
  %34 = bitcast %"class.std::allocator"* %33 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %32, %"class.std::__new_allocator"** %3, align 8, !noalias !19
  store %"class.std::__new_allocator"* %34, %"class.std::__new_allocator"** %4, align 8, !noalias !19
  %35 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8, !noalias !19
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %23, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %15)
          to label %36 unwind label %62

36:                                               ; preds = %2
  store %"class.std::allocator"* %15, %"class.std::allocator"** %12, align 8
  %37 = load %"class.std::allocator"*, %"class.std::allocator"** %12, align 8
  %38 = bitcast %"class.std::allocator"* %37 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %38) #15
  %39 = load %"class.std::vector"*, %"class.std::vector"** %14, align 8
  %40 = call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %39) #15
  %41 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %18, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  %42 = load %"class.std::vector"*, %"class.std::vector"** %14, align 8
  %43 = call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %42) #15
  %44 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %19, i32 0, i32 0
  store i32* %43, i32** %44, align 8
  %45 = bitcast %"class.std::vector"* %20 to %"struct.std::_Vector_base"*
  %46 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0
  %47 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %46 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast %"class.std::vector"* %20 to %"struct.std::_Vector_base"*
  %51 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %50) #15
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %18, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %19, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = invoke noundef i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %53, i32* %55, i32* noundef %49, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %51)
          to label %57 unwind label %68

57:                                               ; preds = %36
  %58 = bitcast %"class.std::vector"* %20 to %"struct.std::_Vector_base"*
  %59 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %58, i32 0, i32 0
  %60 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %59 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %61 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %60, i32 0, i32 1
  store i32* %56, i32** %61, align 8
  ret void

62:                                               ; preds = %2
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  store i8* %64, i8** %16, align 8
  %65 = extractvalue { i8*, i32 } %63, 1
  store i32 %65, i32* %17, align 4
  store %"class.std::allocator"* %15, %"class.std::allocator"** %11, align 8
  %66 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8
  %67 = bitcast %"class.std::allocator"* %66 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %67) #15
  br label %73

68:                                               ; preds = %36
  %69 = landingpad { i8*, i32 }
          cleanup
  %70 = extractvalue { i8*, i32 } %69, 0
  store i8* %70, i8** %16, align 8
  %71 = extractvalue { i8*, i32 } %69, 1
  store i32 %71, i32* %17, align 4
  %72 = bitcast %"class.std::vector"* %20 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %72) #15
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* %17, align 4
  %76 = insertvalue { i8*, i32 } undef, i8* %74, 0
  %77 = insertvalue { i8*, i32 } %76, i32 %75, 1
  resume { i8*, i32 } %77
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %0, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %4, align 8
  %5 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %4, align 8
  %6 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %5 to %"class.std::allocator"*
  store %"class.std::allocator"* %6, %"class.std::allocator"** %3, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %8, %"class.std::__new_allocator"** %2, align 8
  %9 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  %10 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %10) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %0, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %3, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %3, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.1"*, align 8
  store %"class.std::__new_allocator.1"* %0, %"class.std::__new_allocator.1"** %2, align 8
  %3 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %2, align 8
  %3 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i32 (i64, i32, i64, i32)* %2) #2 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %2, i32 (i64, i32, i64, i32)** %9, align 8
  store %struct.suffix* %0, %struct.suffix** %5, align 8
  store %struct.suffix* %1, %struct.suffix** %6, align 8
  %10 = load %struct.suffix*, %struct.suffix** %5, align 8
  %11 = load %struct.suffix*, %struct.suffix** %6, align 8
  %12 = icmp ne %struct.suffix* %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.suffix*, %struct.suffix** %5, align 8
  %15 = load %struct.suffix*, %struct.suffix** %6, align 8
  %16 = load %struct.suffix*, %struct.suffix** %6, align 8
  %17 = load %struct.suffix*, %struct.suffix** %5, align 8
  %18 = ptrtoint %struct.suffix* %16 to i64
  %19 = ptrtoint %struct.suffix* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 12
  %22 = call noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %21)
  %23 = mul nsw i64 %22, 2
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7 to i8*
  %25 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %27 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %26, align 8
  call void @_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_(%struct.suffix* noundef %14, %struct.suffix* noundef %15, i64 noundef %23, i32 (i64, i32, i64, i32)* %27)
  %28 = load %struct.suffix*, %struct.suffix** %5, align 8
  %29 = load %struct.suffix*, %struct.suffix** %6, align 8
  %30 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %31 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8, i32 0, i32 0
  %33 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %32, align 8
  call void @_ZSt22__final_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %28, %struct.suffix* noundef %29, i32 (i64, i32, i64, i32)* %33)
  br label %34

34:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFi6suffixS2_EEENS0_15_Iter_comp_iterIT_EES6_(i32 (i64, i32, i64, i32)* noundef %0) #2 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %3 = alloca i32 (i64, i32, i64, i32)*, align 8
  store i32 (i64, i32, i64, i32)* %0, i32 (i64, i32, i64, i32)** %3, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %3) #15
  %5 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %4, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2, i32 (i64, i32, i64, i32)* noundef %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, i32 0, i32 0
  %7 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %6, align 8
  ret i32 (i64, i32, i64, i32)* %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i64 noundef %2, i32 (i64, i32, i64, i32)* %3) #2 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = alloca %struct.suffix*, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %13 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %3, i32 (i64, i32, i64, i32)** %13, align 8
  store %struct.suffix* %0, %struct.suffix** %6, align 8
  store %struct.suffix* %1, %struct.suffix** %7, align 8
  store i64 %2, i64* %8, align 8
  br label %14

14:                                               ; preds = %33, %4
  %15 = load %struct.suffix*, %struct.suffix** %7, align 8
  %16 = load %struct.suffix*, %struct.suffix** %6, align 8
  %17 = ptrtoint %struct.suffix* %15 to i64
  %18 = ptrtoint %struct.suffix* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 12
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %51

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.suffix*, %struct.suffix** %6, align 8
  %27 = load %struct.suffix*, %struct.suffix** %7, align 8
  %28 = load %struct.suffix*, %struct.suffix** %7, align 8
  %29 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %30 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %32 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %31, align 8
  call void @_ZSt14__partial_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* noundef %26, %struct.suffix* noundef %27, %struct.suffix* noundef %28, i32 (i64, i32, i64, i32)* %32)
  br label %51

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.suffix*, %struct.suffix** %6, align 8
  %37 = load %struct.suffix*, %struct.suffix** %7, align 8
  %38 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %39 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %41 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %40, align 8
  %42 = call noundef %struct.suffix* @_ZSt27__unguarded_partition_pivotIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_T0_(%struct.suffix* noundef %36, %struct.suffix* noundef %37, i32 (i64, i32, i64, i32)* %41)
  store %struct.suffix* %42, %struct.suffix** %10, align 8
  %43 = load %struct.suffix*, %struct.suffix** %10, align 8
  %44 = load %struct.suffix*, %struct.suffix** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  %47 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12, i32 0, i32 0
  %49 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %48, align 8
  call void @_ZSt16__introsort_loopIP6suffixlN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_T1_(%struct.suffix* noundef %43, %struct.suffix* noundef %44, i64 noundef %45, i32 (i64, i32, i64, i32)* %49)
  %50 = load %struct.suffix*, %struct.suffix** %10, align 8
  store %struct.suffix* %50, %struct.suffix** %7, align 8
  br label %14, !llvm.loop !22

51:                                               ; preds = %25, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %3) #15
  %5 = sub nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i32 (i64, i32, i64, i32)* %2) #2 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %2, i32 (i64, i32, i64, i32)** %10, align 8
  store %struct.suffix* %0, %struct.suffix** %5, align 8
  store %struct.suffix* %1, %struct.suffix** %6, align 8
  %11 = load %struct.suffix*, %struct.suffix** %6, align 8
  %12 = load %struct.suffix*, %struct.suffix** %5, align 8
  %13 = ptrtoint %struct.suffix* %11 to i64
  %14 = ptrtoint %struct.suffix* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 12
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.suffix*, %struct.suffix** %5, align 8
  %20 = load %struct.suffix*, %struct.suffix** %5, align 8
  %21 = getelementptr inbounds %struct.suffix, %struct.suffix* %20, i64 16
  %22 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7 to i8*
  %23 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %25 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %24, align 8
  call void @_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %19, %struct.suffix* noundef %21, i32 (i64, i32, i64, i32)* %25)
  %26 = load %struct.suffix*, %struct.suffix** %5, align 8
  %27 = getelementptr inbounds %struct.suffix, %struct.suffix* %26, i64 16
  %28 = load %struct.suffix*, %struct.suffix** %6, align 8
  %29 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %30 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8, i32 0, i32 0
  %32 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %31, align 8
  call void @_ZSt26__unguarded_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %27, %struct.suffix* noundef %28, i32 (i64, i32, i64, i32)* %32)
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.suffix*, %struct.suffix** %5, align 8
  %35 = load %struct.suffix*, %struct.suffix** %6, align 8
  %36 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %37 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %39 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %38, align 8
  call void @_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %34, %struct.suffix* noundef %35, i32 (i64, i32, i64, i32)* %39)
  br label %40

40:                                               ; preds = %33, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2, i32 (i64, i32, i64, i32)* %3) #2 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %struct.suffix*, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %3, i32 (i64, i32, i64, i32)** %10, align 8
  store %struct.suffix* %0, %struct.suffix** %6, align 8
  store %struct.suffix* %1, %struct.suffix** %7, align 8
  store %struct.suffix* %2, %struct.suffix** %8, align 8
  %11 = load %struct.suffix*, %struct.suffix** %6, align 8
  %12 = load %struct.suffix*, %struct.suffix** %7, align 8
  %13 = load %struct.suffix*, %struct.suffix** %8, align 8
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %17 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %16, align 8
  call void @_ZSt13__heap_selectIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* noundef %11, %struct.suffix* noundef %12, %struct.suffix* noundef %13, i32 (i64, i32, i64, i32)* %17)
  %18 = load %struct.suffix*, %struct.suffix** %6, align 8
  %19 = load %struct.suffix*, %struct.suffix** %7, align 8
  call void @_ZSt11__sort_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* noundef %18, %struct.suffix* noundef %19, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt27__unguarded_partition_pivotIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i32 (i64, i32, i64, i32)* %2) #2 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %2, i32 (i64, i32, i64, i32)** %10, align 8
  store %struct.suffix* %0, %struct.suffix** %5, align 8
  store %struct.suffix* %1, %struct.suffix** %6, align 8
  %11 = load %struct.suffix*, %struct.suffix** %5, align 8
  %12 = load %struct.suffix*, %struct.suffix** %6, align 8
  %13 = load %struct.suffix*, %struct.suffix** %5, align 8
  %14 = ptrtoint %struct.suffix* %12 to i64
  %15 = ptrtoint %struct.suffix* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 12
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds %struct.suffix, %struct.suffix* %11, i64 %18
  store %struct.suffix* %19, %struct.suffix** %7, align 8
  %20 = load %struct.suffix*, %struct.suffix** %5, align 8
  %21 = load %struct.suffix*, %struct.suffix** %5, align 8
  %22 = getelementptr inbounds %struct.suffix, %struct.suffix* %21, i64 1
  %23 = load %struct.suffix*, %struct.suffix** %7, align 8
  %24 = load %struct.suffix*, %struct.suffix** %6, align 8
  %25 = getelementptr inbounds %struct.suffix, %struct.suffix* %24, i64 -1
  %26 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %27 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8, i32 0, i32 0
  %29 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %28, align 8
  call void @_ZSt22__move_median_to_firstIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.suffix* noundef %20, %struct.suffix* noundef %22, %struct.suffix* noundef %23, %struct.suffix* noundef %25, i32 (i64, i32, i64, i32)* %29)
  %30 = load %struct.suffix*, %struct.suffix** %5, align 8
  %31 = getelementptr inbounds %struct.suffix, %struct.suffix* %30, i64 1
  %32 = load %struct.suffix*, %struct.suffix** %6, align 8
  %33 = load %struct.suffix*, %struct.suffix** %5, align 8
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %35 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %37 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %36, align 8
  %38 = call noundef %struct.suffix* @_ZSt21__unguarded_partitionIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_S8_T0_(%struct.suffix* noundef %31, %struct.suffix* noundef %32, %struct.suffix* noundef %33, i32 (i64, i32, i64, i32)* %37)
  ret %struct.suffix* %38
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2, i32 (i64, i32, i64, i32)* %3) #2 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %struct.suffix*, align 8
  %9 = alloca %struct.suffix*, align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %3, i32 (i64, i32, i64, i32)** %10, align 8
  store %struct.suffix* %0, %struct.suffix** %6, align 8
  store %struct.suffix* %1, %struct.suffix** %7, align 8
  store %struct.suffix* %2, %struct.suffix** %8, align 8
  %11 = load %struct.suffix*, %struct.suffix** %6, align 8
  %12 = load %struct.suffix*, %struct.suffix** %7, align 8
  call void @_ZSt11__make_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* noundef %11, %struct.suffix* noundef %12, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  %13 = load %struct.suffix*, %struct.suffix** %7, align 8
  store %struct.suffix* %13, %struct.suffix** %9, align 8
  br label %14

14:                                               ; preds = %27, %4
  %15 = load %struct.suffix*, %struct.suffix** %9, align 8
  %16 = load %struct.suffix*, %struct.suffix** %8, align 8
  %17 = icmp ult %struct.suffix* %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.suffix*, %struct.suffix** %9, align 8
  %20 = load %struct.suffix*, %struct.suffix** %6, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5, %struct.suffix* noundef %19, %struct.suffix* noundef %20)
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.suffix*, %struct.suffix** %6, align 8
  %24 = load %struct.suffix*, %struct.suffix** %7, align 8
  %25 = load %struct.suffix*, %struct.suffix** %9, align 8
  call void @_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_(%struct.suffix* noundef %23, %struct.suffix* noundef %24, %struct.suffix* noundef %25, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.suffix*, %struct.suffix** %9, align 8
  %29 = getelementptr inbounds %struct.suffix, %struct.suffix* %28, i32 1
  store %struct.suffix* %29, %struct.suffix** %9, align 8
  br label %14, !llvm.loop !23

30:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  br label %7

7:                                                ; preds = %15, %3
  %8 = load %struct.suffix*, %struct.suffix** %5, align 8
  %9 = load %struct.suffix*, %struct.suffix** %4, align 8
  %10 = ptrtoint %struct.suffix* %8 to i64
  %11 = ptrtoint %struct.suffix* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 12
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load %struct.suffix*, %struct.suffix** %5, align 8
  %17 = getelementptr inbounds %struct.suffix, %struct.suffix* %16, i32 -1
  store %struct.suffix* %17, %struct.suffix** %5, align 8
  %18 = load %struct.suffix*, %struct.suffix** %4, align 8
  %19 = load %struct.suffix*, %struct.suffix** %5, align 8
  %20 = load %struct.suffix*, %struct.suffix** %5, align 8
  %21 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  call void @_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_(%struct.suffix* noundef %18, %struct.suffix* noundef %19, %struct.suffix* noundef %20, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %21)
  br label %7, !llvm.loop !24

22:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_RT0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.suffix, align 4
  %10 = alloca %struct.suffix, align 4
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %13 = load %struct.suffix*, %struct.suffix** %5, align 8
  %14 = load %struct.suffix*, %struct.suffix** %4, align 8
  %15 = ptrtoint %struct.suffix* %13 to i64
  %16 = ptrtoint %struct.suffix* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 12
  %19 = icmp slt i64 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.suffix*, %struct.suffix** %5, align 8
  %23 = load %struct.suffix*, %struct.suffix** %4, align 8
  %24 = ptrtoint %struct.suffix* %22 to i64
  %25 = ptrtoint %struct.suffix* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 12
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %28, 2
  %30 = sdiv i64 %29, 2
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %21, %58
  %32 = load %struct.suffix*, %struct.suffix** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.suffix, %struct.suffix* %32, i64 %33
  %35 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %34) #15
  %36 = bitcast %struct.suffix* %9 to i8*
  %37 = bitcast %struct.suffix* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = load %struct.suffix*, %struct.suffix** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %9) #15
  %42 = bitcast %struct.suffix* %10 to i8*
  %43 = bitcast %struct.suffix* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 12, i1 false)
  %44 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %45 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %46 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = bitcast { i64, i32 }* %12 to i8*
  %48 = bitcast %struct.suffix* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 4
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %54 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %53, align 8
  call void @_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.suffix* noundef %38, i64 noundef %39, i64 noundef %40, i64 %50, i32 %52, i32 (i64, i32, i64, i32)* %54)
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  br label %61

58:                                               ; preds = %31
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %8, align 8
  br label %31, !llvm.loop !25

61:                                               ; preds = %57, %20
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2) #2 comdat align 2 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix, align 4
  %8 = alloca %struct.suffix, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %11 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %13 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %12, align 8
  %14 = load %struct.suffix*, %struct.suffix** %5, align 8
  %15 = bitcast %struct.suffix* %7 to i8*
  %16 = bitcast %struct.suffix* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.suffix*, %struct.suffix** %6, align 8
  %18 = bitcast %struct.suffix* %8 to i8*
  %19 = bitcast %struct.suffix* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.suffix* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.suffix* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call noundef i32 %13(i64 %23, i32 %25, i64 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  ret i1 %33
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_RT0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %3) #2 comdat {
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %9 = alloca %struct.suffix, align 4
  %10 = alloca %struct.suffix, align 4
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct.suffix* %0, %struct.suffix** %5, align 8
  store %struct.suffix* %1, %struct.suffix** %6, align 8
  store %struct.suffix* %2, %struct.suffix** %7, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %8, align 8
  %13 = load %struct.suffix*, %struct.suffix** %7, align 8
  %14 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %13) #15
  %15 = bitcast %struct.suffix* %9 to i8*
  %16 = bitcast %struct.suffix* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.suffix*, %struct.suffix** %5, align 8
  %18 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %17) #15
  %19 = load %struct.suffix*, %struct.suffix** %7, align 8
  %20 = bitcast %struct.suffix* %19 to i8*
  %21 = bitcast %struct.suffix* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = load %struct.suffix*, %struct.suffix** %5, align 8
  %23 = load %struct.suffix*, %struct.suffix** %6, align 8
  %24 = load %struct.suffix*, %struct.suffix** %5, align 8
  %25 = ptrtoint %struct.suffix* %23 to i64
  %26 = ptrtoint %struct.suffix* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 12
  %29 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %9) #15
  %30 = bitcast %struct.suffix* %10 to i8*
  %31 = bitcast %struct.suffix* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %8, align 8
  %33 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = bitcast { i64, i32 }* %12 to i8*
  %36 = bitcast %struct.suffix* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %42 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %41, align 8
  call void @_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.suffix* noundef %22, i64 noundef 0, i64 noundef %28, i64 %38, i32 %40, i32 (i64, i32, i64, i32)* %42)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %0) #0 comdat {
  %2 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %2, align 8
  %3 = load %struct.suffix*, %struct.suffix** %2, align 8
  ret %struct.suffix* %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIP6suffixlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.suffix* noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i32 %4, i32 (i64, i32, i64, i32)* %5) #2 comdat {
  %7 = alloca %struct.suffix, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = alloca %struct.suffix*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %16 = alloca %struct.suffix, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %3, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %19, align 4
  %20 = bitcast %struct.suffix* %7 to i8*
  %21 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %5, i32 (i64, i32, i64, i32)** %22, align 8
  store %struct.suffix* %0, %struct.suffix** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %14, align 8
  br label %25

25:                                               ; preds = %46, %6
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %12, align 8
  %28 = sub nsw i64 %27, 1
  %29 = sdiv i64 %28, 2
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load i64, i64* %14, align 8
  %33 = add nsw i64 %32, 1
  %34 = mul nsw i64 2, %33
  store i64 %34, i64* %14, align 8
  %35 = load %struct.suffix*, %struct.suffix** %10, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.suffix, %struct.suffix* %35, i64 %36
  %38 = load %struct.suffix*, %struct.suffix** %10, align 8
  %39 = load i64, i64* %14, align 8
  %40 = sub nsw i64 %39, 1
  %41 = getelementptr inbounds %struct.suffix, %struct.suffix* %38, i64 %40
  %42 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %9, %struct.suffix* noundef %37, %struct.suffix* noundef %41)
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i64, i64* %14, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.suffix*, %struct.suffix** %10, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds %struct.suffix, %struct.suffix* %47, i64 %48
  %50 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %49) #15
  %51 = load %struct.suffix*, %struct.suffix** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.suffix, %struct.suffix* %51, i64 %52
  %54 = bitcast %struct.suffix* %53 to i8*
  %55 = bitcast %struct.suffix* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %11, align 8
  br label %25, !llvm.loop !26

57:                                               ; preds = %25
  %58 = load i64, i64* %12, align 8
  %59 = and i64 %58, 1
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub nsw i64 %63, 2
  %65 = sdiv i64 %64, 2
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i64, i64* %14, align 8
  %69 = add nsw i64 %68, 1
  %70 = mul nsw i64 2, %69
  store i64 %70, i64* %14, align 8
  %71 = load %struct.suffix*, %struct.suffix** %10, align 8
  %72 = load i64, i64* %14, align 8
  %73 = sub nsw i64 %72, 1
  %74 = getelementptr inbounds %struct.suffix, %struct.suffix* %71, i64 %73
  %75 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %74) #15
  %76 = load %struct.suffix*, %struct.suffix** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.suffix, %struct.suffix* %76, i64 %77
  %79 = bitcast %struct.suffix* %78 to i8*
  %80 = bitcast %struct.suffix* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  %81 = load i64, i64* %14, align 8
  %82 = sub nsw i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %67, %61, %57
  %84 = call noundef nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %15, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %84)
  %85 = load %struct.suffix*, %struct.suffix** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %7) #15
  %89 = bitcast %struct.suffix* %16 to i8*
  %90 = bitcast %struct.suffix* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 12, i1 false)
  %91 = bitcast { i64, i32 }* %17 to i8*
  %92 = bitcast %struct.suffix* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  call void @_ZSt11__push_heapIP6suffixlS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFiS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.suffix* noundef %85, i64 noundef %86, i64 noundef %87, i64 %94, i32 %96, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %15)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %2, align 8
  ret %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %3, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %5, i32 0, i32 0
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %8) #15
  %10 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %9, align 8
  store i32 (i64, i32, i64, i32)* %10, i32 (i64, i32, i64, i32)** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIP6suffixlS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFiS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.suffix* noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i32 %4, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %5) #2 comdat {
  %7 = alloca %struct.suffix, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.suffix*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %3, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %15, align 4
  %16 = bitcast %struct.suffix* %7 to i8*
  %17 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  store %struct.suffix* %0, %struct.suffix** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = sub nsw i64 %18, 1
  %20 = sdiv i64 %19, 2
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %33, %6
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %12, align 8
  %27 = load %struct.suffix*, %struct.suffix** %9, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds %struct.suffix, %struct.suffix* %27, i64 %28
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %26, %struct.suffix* noundef %29, %struct.suffix* noundef nonnull align 4 dereferenceable(12) %7)
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load %struct.suffix*, %struct.suffix** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.suffix, %struct.suffix* %34, i64 %35
  %37 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %36) #15
  %38 = load %struct.suffix*, %struct.suffix** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.suffix, %struct.suffix* %38, i64 %39
  %41 = bitcast %struct.suffix* %40 to i8*
  %42 = bitcast %struct.suffix* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = load i64, i64* %13, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %44, 1
  %46 = sdiv i64 %45, 2
  store i64 %46, i64* %13, align 8
  br label %21, !llvm.loop !27

47:                                               ; preds = %31
  %48 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %7) #15
  %49 = load %struct.suffix*, %struct.suffix** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.suffix, %struct.suffix* %49, i64 %50
  %52 = bitcast %struct.suffix* %51 to i8*
  %53 = bitcast %struct.suffix* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca i32 (i64, i32, i64, i32)**, align 8
  store i32 (i64, i32, i64, i32)** %0, i32 (i64, i32, i64, i32)*** %2, align 8
  %3 = load i32 (i64, i32, i64, i32)**, i32 (i64, i32, i64, i32)*** %2, align 8
  ret i32 (i64, i32, i64, i32)** %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFi6suffixS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %0, %struct.suffix* noundef %1, %struct.suffix* noundef nonnull align 4 dereferenceable(12) %2) #2 comdat align 2 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix, align 4
  %8 = alloca %struct.suffix, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %11 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %4, align 8
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %11, i32 0, i32 0
  %13 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %12, align 8
  %14 = load %struct.suffix*, %struct.suffix** %5, align 8
  %15 = bitcast %struct.suffix* %7 to i8*
  %16 = bitcast %struct.suffix* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.suffix*, %struct.suffix** %6, align 8
  %18 = bitcast %struct.suffix* %8 to i8*
  %19 = bitcast %struct.suffix* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.suffix* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.suffix* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call noundef i32 %13(i64 %23, i32 %25, i64 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  ret i1 %33
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2, %struct.suffix* noundef %3, i32 (i64, i32, i64, i32)* %4) #2 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %struct.suffix*, align 8
  %9 = alloca %struct.suffix*, align 8
  %10 = alloca %struct.suffix*, align 8
  %11 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %4, i32 (i64, i32, i64, i32)** %11, align 8
  store %struct.suffix* %0, %struct.suffix** %7, align 8
  store %struct.suffix* %1, %struct.suffix** %8, align 8
  store %struct.suffix* %2, %struct.suffix** %9, align 8
  store %struct.suffix* %3, %struct.suffix** %10, align 8
  %12 = load %struct.suffix*, %struct.suffix** %8, align 8
  %13 = load %struct.suffix*, %struct.suffix** %9, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.suffix* noundef %12, %struct.suffix* noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load %struct.suffix*, %struct.suffix** %9, align 8
  %17 = load %struct.suffix*, %struct.suffix** %10, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.suffix* noundef %16, %struct.suffix* noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.suffix*, %struct.suffix** %7, align 8
  %21 = load %struct.suffix*, %struct.suffix** %9, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %20, %struct.suffix* noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.suffix*, %struct.suffix** %8, align 8
  %24 = load %struct.suffix*, %struct.suffix** %10, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.suffix* noundef %23, %struct.suffix* noundef %24)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.suffix*, %struct.suffix** %7, align 8
  %28 = load %struct.suffix*, %struct.suffix** %10, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %27, %struct.suffix* noundef %28)
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.suffix*, %struct.suffix** %7, align 8
  %31 = load %struct.suffix*, %struct.suffix** %8, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %30, %struct.suffix* noundef %31)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %19
  br label %53

34:                                               ; preds = %5
  %35 = load %struct.suffix*, %struct.suffix** %8, align 8
  %36 = load %struct.suffix*, %struct.suffix** %10, align 8
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.suffix* noundef %35, %struct.suffix* noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.suffix*, %struct.suffix** %7, align 8
  %40 = load %struct.suffix*, %struct.suffix** %8, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %39, %struct.suffix* noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.suffix*, %struct.suffix** %9, align 8
  %43 = load %struct.suffix*, %struct.suffix** %10, align 8
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.suffix* noundef %42, %struct.suffix* noundef %43)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.suffix*, %struct.suffix** %7, align 8
  %47 = load %struct.suffix*, %struct.suffix** %10, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %46, %struct.suffix* noundef %47)
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.suffix*, %struct.suffix** %7, align 8
  %50 = load %struct.suffix*, %struct.suffix** %9, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %49, %struct.suffix* noundef %50)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %33
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt21__unguarded_partitionIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEET_S8_S8_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2, i32 (i64, i32, i64, i32)* %3) #2 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %struct.suffix*, align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %3, i32 (i64, i32, i64, i32)** %9, align 8
  store %struct.suffix* %0, %struct.suffix** %6, align 8
  store %struct.suffix* %1, %struct.suffix** %7, align 8
  store %struct.suffix* %2, %struct.suffix** %8, align 8
  br label %10

10:                                               ; preds = %4, %34
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.suffix*, %struct.suffix** %6, align 8
  %13 = load %struct.suffix*, %struct.suffix** %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5, %struct.suffix* noundef %12, %struct.suffix* noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.suffix*, %struct.suffix** %6, align 8
  %17 = getelementptr inbounds %struct.suffix, %struct.suffix* %16, i32 1
  store %struct.suffix* %17, %struct.suffix** %6, align 8
  br label %11, !llvm.loop !28

18:                                               ; preds = %11
  %19 = load %struct.suffix*, %struct.suffix** %7, align 8
  %20 = getelementptr inbounds %struct.suffix, %struct.suffix* %19, i32 -1
  store %struct.suffix* %20, %struct.suffix** %7, align 8
  br label %21

21:                                               ; preds = %25, %18
  %22 = load %struct.suffix*, %struct.suffix** %8, align 8
  %23 = load %struct.suffix*, %struct.suffix** %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5, %struct.suffix* noundef %22, %struct.suffix* noundef %23)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.suffix*, %struct.suffix** %7, align 8
  %27 = getelementptr inbounds %struct.suffix, %struct.suffix* %26, i32 -1
  store %struct.suffix* %27, %struct.suffix** %7, align 8
  br label %21, !llvm.loop !29

28:                                               ; preds = %21
  %29 = load %struct.suffix*, %struct.suffix** %6, align 8
  %30 = load %struct.suffix*, %struct.suffix** %7, align 8
  %31 = icmp ult %struct.suffix* %29, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load %struct.suffix*, %struct.suffix** %6, align 8
  ret %struct.suffix* %33

34:                                               ; preds = %28
  %35 = load %struct.suffix*, %struct.suffix** %6, align 8
  %36 = load %struct.suffix*, %struct.suffix** %7, align 8
  call void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %35, %struct.suffix* noundef %36)
  %37 = load %struct.suffix*, %struct.suffix** %6, align 8
  %38 = getelementptr inbounds %struct.suffix, %struct.suffix* %37, i32 1
  store %struct.suffix* %38, %struct.suffix** %6, align 8
  br label %10, !llvm.loop !30
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIP6suffixS1_EvT_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1) #0 comdat {
  %3 = alloca %struct.suffix*, align 8
  %4 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %3, align 8
  store %struct.suffix* %1, %struct.suffix** %4, align 8
  %5 = load %struct.suffix*, %struct.suffix** %3, align 8
  %6 = load %struct.suffix*, %struct.suffix** %4, align 8
  call void @_ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %5, %struct.suffix* noundef nonnull align 4 dereferenceable(12) %6) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %0, %struct.suffix* noundef nonnull align 4 dereferenceable(12) %1) #0 comdat {
  %3 = alloca %struct.suffix*, align 8
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix, align 4
  store %struct.suffix* %0, %struct.suffix** %3, align 8
  store %struct.suffix* %1, %struct.suffix** %4, align 8
  %6 = load %struct.suffix*, %struct.suffix** %3, align 8
  %7 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %6) #15
  %8 = bitcast %struct.suffix* %5 to i8*
  %9 = bitcast %struct.suffix* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = load %struct.suffix*, %struct.suffix** %4, align 8
  %11 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %10) #15
  %12 = load %struct.suffix*, %struct.suffix** %3, align 8
  %13 = bitcast %struct.suffix* %12 to i8*
  %14 = bitcast %struct.suffix* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %5) #15
  %16 = load %struct.suffix*, %struct.suffix** %4, align 8
  %17 = bitcast %struct.suffix* %16 to i8*
  %18 = bitcast %struct.suffix* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 64, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %4) #15
  %6 = sub nsw i32 64, %5
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %0) #0 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 64, i32* %4, align 4
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  store i32 64, i32* %5, align 4
  store i32 64, i32* %6, align 4
  store i32 32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @llvm.ctlz.i64(i64 %13, i1 true)
  %15 = trunc i64 %14 to i32
  %16 = sub nsw i32 %15, 0
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i32 (i64, i32, i64, i32)* %2) #2 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %struct.suffix, align 4
  %9 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %11 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %2, i32 (i64, i32, i64, i32)** %11, align 8
  store %struct.suffix* %0, %struct.suffix** %5, align 8
  store %struct.suffix* %1, %struct.suffix** %6, align 8
  %12 = load %struct.suffix*, %struct.suffix** %5, align 8
  %13 = load %struct.suffix*, %struct.suffix** %6, align 8
  %14 = icmp eq %struct.suffix* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %55

16:                                               ; preds = %3
  %17 = load %struct.suffix*, %struct.suffix** %5, align 8
  %18 = getelementptr inbounds %struct.suffix, %struct.suffix* %17, i64 1
  store %struct.suffix* %18, %struct.suffix** %7, align 8
  br label %19

19:                                               ; preds = %52, %16
  %20 = load %struct.suffix*, %struct.suffix** %7, align 8
  %21 = load %struct.suffix*, %struct.suffix** %6, align 8
  %22 = icmp ne %struct.suffix* %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.suffix*, %struct.suffix** %7, align 8
  %25 = load %struct.suffix*, %struct.suffix** %5, align 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %4, %struct.suffix* noundef %24, %struct.suffix* noundef %25)
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.suffix*, %struct.suffix** %7, align 8
  %29 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %28) #15
  %30 = bitcast %struct.suffix* %8 to i8*
  %31 = bitcast %struct.suffix* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = load %struct.suffix*, %struct.suffix** %5, align 8
  %33 = load %struct.suffix*, %struct.suffix** %7, align 8
  %34 = load %struct.suffix*, %struct.suffix** %7, align 8
  %35 = getelementptr inbounds %struct.suffix, %struct.suffix* %34, i64 1
  %36 = call noundef %struct.suffix* @_ZSt13move_backwardIP6suffixS1_ET0_T_S3_S2_(%struct.suffix* noundef %32, %struct.suffix* noundef %33, %struct.suffix* noundef %35)
  %37 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %8) #15
  %38 = load %struct.suffix*, %struct.suffix** %5, align 8
  %39 = bitcast %struct.suffix* %38 to i8*
  %40 = bitcast %struct.suffix* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  br label %51

41:                                               ; preds = %23
  %42 = load %struct.suffix*, %struct.suffix** %7, align 8
  %43 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %10 to i8*
  %44 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %10, i32 0, i32 0
  %46 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %45, align 8
  %47 = call i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i32 (i64, i32, i64, i32)* %46)
  %48 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %9, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %47, i32 (i64, i32, i64, i32)** %48, align 8
  %49 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %9, i32 0, i32 0
  %50 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %49, align 8
  call void @_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_(%struct.suffix* noundef %42, i32 (i64, i32, i64, i32)* %50)
  br label %51

51:                                               ; preds = %41, %27
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.suffix*, %struct.suffix** %7, align 8
  %54 = getelementptr inbounds %struct.suffix, %struct.suffix* %53, i32 1
  store %struct.suffix* %54, %struct.suffix** %7, align 8
  br label %19, !llvm.loop !31

55:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIP6suffixN9__gnu_cxx5__ops15_Iter_comp_iterIPFiS0_S0_EEEEvT_S8_T0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, i32 (i64, i32, i64, i32)* %2) #2 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix*, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %2, i32 (i64, i32, i64, i32)** %10, align 8
  store %struct.suffix* %0, %struct.suffix** %5, align 8
  store %struct.suffix* %1, %struct.suffix** %6, align 8
  %11 = load %struct.suffix*, %struct.suffix** %5, align 8
  store %struct.suffix* %11, %struct.suffix** %7, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.suffix*, %struct.suffix** %7, align 8
  %14 = load %struct.suffix*, %struct.suffix** %6, align 8
  %15 = icmp ne %struct.suffix* %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.suffix*, %struct.suffix** %7, align 8
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %19 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %21 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %20, align 8
  %22 = call i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i32 (i64, i32, i64, i32)* %21)
  %23 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %8, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %22, i32 (i64, i32, i64, i32)** %23, align 8
  %24 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %8, i32 0, i32 0
  %25 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %24, align 8
  call void @_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_(%struct.suffix* noundef %17, i32 (i64, i32, i64, i32)* %25)
  br label %26

26:                                               ; preds = %16
  %27 = load %struct.suffix*, %struct.suffix** %7, align 8
  %28 = getelementptr inbounds %struct.suffix, %struct.suffix* %27, i32 1
  store %struct.suffix* %28, %struct.suffix** %7, align 8
  br label %12, !llvm.loop !32

29:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt13move_backwardIP6suffixS1_ET0_T_S3_S2_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %7 = load %struct.suffix*, %struct.suffix** %4, align 8
  %8 = call noundef %struct.suffix* @_ZSt12__miter_baseIP6suffixET_S2_(%struct.suffix* noundef %7)
  %9 = load %struct.suffix*, %struct.suffix** %5, align 8
  %10 = call noundef %struct.suffix* @_ZSt12__miter_baseIP6suffixET_S2_(%struct.suffix* noundef %9)
  %11 = load %struct.suffix*, %struct.suffix** %6, align 8
  %12 = call noundef %struct.suffix* @_ZSt22__copy_move_backward_aILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* noundef %8, %struct.suffix* noundef %10, %struct.suffix* noundef %11)
  ret %struct.suffix* %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIP6suffixN9__gnu_cxx5__ops14_Val_comp_iterIPFiS0_S0_EEEEvT_T0_(%struct.suffix* noundef %0, i32 (i64, i32, i64, i32)* %1) #2 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix, align 4
  %6 = alloca %struct.suffix*, align 8
  %7 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %3, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %1, i32 (i64, i32, i64, i32)** %7, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  %8 = load %struct.suffix*, %struct.suffix** %4, align 8
  %9 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %8) #15
  %10 = bitcast %struct.suffix* %5 to i8*
  %11 = bitcast %struct.suffix* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  %12 = load %struct.suffix*, %struct.suffix** %4, align 8
  store %struct.suffix* %12, %struct.suffix** %6, align 8
  %13 = load %struct.suffix*, %struct.suffix** %6, align 8
  %14 = getelementptr inbounds %struct.suffix, %struct.suffix* %13, i32 -1
  store %struct.suffix* %14, %struct.suffix** %6, align 8
  br label %15

15:                                               ; preds = %18, %2
  %16 = load %struct.suffix*, %struct.suffix** %6, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %3, %struct.suffix* noundef nonnull align 4 dereferenceable(12) %5, %struct.suffix* noundef %16)
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.suffix*, %struct.suffix** %6, align 8
  %20 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %19) #15
  %21 = load %struct.suffix*, %struct.suffix** %4, align 8
  %22 = bitcast %struct.suffix* %21 to i8*
  %23 = bitcast %struct.suffix* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = load %struct.suffix*, %struct.suffix** %6, align 8
  store %struct.suffix* %24, %struct.suffix** %4, align 8
  %25 = load %struct.suffix*, %struct.suffix** %6, align 8
  %26 = getelementptr inbounds %struct.suffix, %struct.suffix* %25, i32 -1
  store %struct.suffix* %26, %struct.suffix** %6, align 8
  br label %15, !llvm.loop !33

27:                                               ; preds = %15
  %28 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %5) #15
  %29 = load %struct.suffix*, %struct.suffix** %4, align 8
  %30 = bitcast %struct.suffix* %29 to i8*
  %31 = bitcast %struct.suffix* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i32 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFi6suffixS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i32 (i64, i32, i64, i32)* %0) #2 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, i32 0, i32 0
  store i32 (i64, i32, i64, i32)* %0, i32 (i64, i32, i64, i32)** %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %2, i32 0, i32 0
  %7 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %6, align 8
  ret i32 (i64, i32, i64, i32)* %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt22__copy_move_backward_aILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %7 = load %struct.suffix*, %struct.suffix** %4, align 8
  %8 = call noundef %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* noundef %7) #15
  %9 = load %struct.suffix*, %struct.suffix** %5, align 8
  %10 = call noundef %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* noundef %9) #15
  %11 = load %struct.suffix*, %struct.suffix** %6, align 8
  %12 = call noundef %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* noundef %11) #15
  %13 = call noundef %struct.suffix* @_ZSt23__copy_move_backward_a1ILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* noundef %8, %struct.suffix* noundef %10, %struct.suffix* noundef %12)
  %14 = call noundef %struct.suffix* @_ZSt12__niter_wrapIP6suffixET_RKS2_S2_(%struct.suffix** noundef nonnull align 8 dereferenceable(8) %6, %struct.suffix* noundef %13)
  ret %struct.suffix* %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt12__miter_baseIP6suffixET_S2_(%struct.suffix* noundef %0) #0 comdat {
  %2 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %2, align 8
  %3 = load %struct.suffix*, %struct.suffix** %2, align 8
  ret %struct.suffix* %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt12__niter_wrapIP6suffixET_RKS2_S2_(%struct.suffix** noundef nonnull align 8 dereferenceable(8) %0, %struct.suffix* noundef %1) #0 comdat {
  %3 = alloca %struct.suffix**, align 8
  %4 = alloca %struct.suffix*, align 8
  store %struct.suffix** %0, %struct.suffix*** %3, align 8
  store %struct.suffix* %1, %struct.suffix** %4, align 8
  %5 = load %struct.suffix*, %struct.suffix** %4, align 8
  ret %struct.suffix* %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt23__copy_move_backward_a1ILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %7 = load %struct.suffix*, %struct.suffix** %4, align 8
  %8 = load %struct.suffix*, %struct.suffix** %5, align 8
  %9 = load %struct.suffix*, %struct.suffix** %6, align 8
  %10 = call noundef %struct.suffix* @_ZSt23__copy_move_backward_a2ILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* noundef %7, %struct.suffix* noundef %8, %struct.suffix* noundef %9)
  ret %struct.suffix* %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt12__niter_baseIP6suffixET_S2_(%struct.suffix* noundef %0) #0 comdat {
  %2 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %2, align 8
  %3 = load %struct.suffix*, %struct.suffix** %2, align 8
  ret %struct.suffix* %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZSt23__copy_move_backward_a2ILb1EP6suffixS1_ET1_T0_S3_S2_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2) #2 comdat {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %7 = load %struct.suffix*, %struct.suffix** %4, align 8
  %8 = load %struct.suffix*, %struct.suffix** %5, align 8
  %9 = load %struct.suffix*, %struct.suffix** %6, align 8
  %10 = call noundef %struct.suffix* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6suffixS3_EEPT0_PT_S7_S5_(%struct.suffix* noundef %7, %struct.suffix* noundef %8, %struct.suffix* noundef %9)
  ret %struct.suffix* %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.suffix* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI6suffixS3_EEPT0_PT_S7_S5_(%struct.suffix* noundef %0, %struct.suffix* noundef %1, %struct.suffix* noundef %2) #2 comdat align 2 {
  %4 = alloca %struct.suffix*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca i64, align 8
  store %struct.suffix* %0, %struct.suffix** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %8 = load %struct.suffix*, %struct.suffix** %5, align 8
  %9 = load %struct.suffix*, %struct.suffix** %4, align 8
  %10 = ptrtoint %struct.suffix* %8 to i64
  %11 = ptrtoint %struct.suffix* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.suffix*, %struct.suffix** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct.suffix, %struct.suffix* %17, i64 %19
  %21 = bitcast %struct.suffix* %20 to i8*
  %22 = load %struct.suffix*, %struct.suffix** %4, align 8
  %23 = bitcast %struct.suffix* %22 to i8*
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 12, %24
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %25, i1 false)
  br label %34

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.suffix*, %struct.suffix** %6, align 8
  %31 = getelementptr inbounds %struct.suffix, %struct.suffix* %30, i64 -1
  %32 = load %struct.suffix*, %struct.suffix** %4, align 8
  call void @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneI6suffixS3_EEvPT_PT0_(%struct.suffix* noundef %31, %struct.suffix* noundef %32)
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.suffix*, %struct.suffix** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds %struct.suffix, %struct.suffix* %35, i64 %37
  ret %struct.suffix* %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneI6suffixS3_EEvPT_PT0_(%struct.suffix* noundef %0, %struct.suffix* noundef %1) #0 comdat align 2 {
  %3 = alloca %struct.suffix*, align 8
  %4 = alloca %struct.suffix*, align 8
  store %struct.suffix* %0, %struct.suffix** %3, align 8
  store %struct.suffix* %1, %struct.suffix** %4, align 8
  %5 = load %struct.suffix*, %struct.suffix** %4, align 8
  %6 = call noundef nonnull align 4 dereferenceable(12) %struct.suffix* @_ZSt4moveIR6suffixEONSt16remove_referenceIT_E4typeEOS3_(%struct.suffix* noundef nonnull align 4 dereferenceable(12) %5) #15
  %7 = load %struct.suffix*, %struct.suffix** %3, align 8
  %8 = bitcast %struct.suffix* %7 to i8*
  %9 = bitcast %struct.suffix* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, %struct.suffix* noundef nonnull align 4 dereferenceable(12) %1, %struct.suffix* noundef %2) #2 comdat align 2 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %5 = alloca %struct.suffix*, align 8
  %6 = alloca %struct.suffix*, align 8
  %7 = alloca %struct.suffix, align 4
  %8 = alloca %struct.suffix, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %4, align 8
  store %struct.suffix* %1, %struct.suffix** %5, align 8
  store %struct.suffix* %2, %struct.suffix** %6, align 8
  %11 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %4, align 8
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %11, i32 0, i32 0
  %13 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %12, align 8
  %14 = load %struct.suffix*, %struct.suffix** %5, align 8
  %15 = bitcast %struct.suffix* %7 to i8*
  %16 = bitcast %struct.suffix* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.suffix*, %struct.suffix** %6, align 8
  %18 = bitcast %struct.suffix* %8 to i8*
  %19 = bitcast %struct.suffix* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.suffix* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.suffix* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call noundef i32 %13(i64 %23, i32 %25, i64 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  ret i1 %33
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFi6suffixS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %3, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %5, i32 0, i32 0
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %8) #15
  %10 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %9, align 8
  store i32 (i64, i32, i64, i32)* %10, i32 (i64, i32, i64, i32)** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFi6suffixS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, i32 (i64, i32, i64, i32)* noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %4 = alloca i32 (i64, i32, i64, i32)*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %3, align 8
  store i32 (i64, i32, i64, i32)* %1, i32 (i64, i32, i64, i32)** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  %7 = call noundef nonnull align 8 dereferenceable(8) i32 (i64, i32, i64, i32)** @_ZSt4moveIRPFi6suffixS0_EEONSt16remove_referenceIT_E4typeEOS5_(i32 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %4) #15
  %8 = load i32 (i64, i32, i64, i32)*, i32 (i64, i32, i64, i32)** %7, align 8
  store i32 (i64, i32, i64, i32)* %8, i32 (i64, i32, i64, i32)** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = ptrtoint i32* %13 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %5, i32* noundef %9, i64 noundef %21)
          to label %22 unwind label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %23) #15
  ret void

24:                                               ; preds = %1
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %28) #15
  br label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %30) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #10 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #15
  call void @_ZSt9terminatev() #16
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* noundef %0, i32* noundef %1) #2 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* noundef %5, i32* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* noundef %0, i32* noundef %1) #0 comdat align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i32* noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::_Vector_base"*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  %10 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %7, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %14 to %"class.std::allocator"*
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %9, align 8
  store %"class.std::allocator"* %15, %"class.std::allocator"** %4, align 8
  store i32* %16, i32** %5, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %19 = bitcast %"class.std::allocator"* %18 to %"class.std::__new_allocator"*
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorIiE10deallocateEPim(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %19, i32* noundef %20, i64 noundef %21)
  br label %22

22:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %0, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %3, align 8
  %4 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %3, align 8
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %4 to %"class.std::allocator"*
  store %"class.std::allocator"* %5, %"class.std::allocator"** %2, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %7 = bitcast %"class.std::allocator"* %6 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i32* noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i32* %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.std::vector"*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  store i32* %1, i32** %20, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %11, align 8
  store i32* %2, i32** %12, align 8
  %21 = load %"class.std::vector"*, %"class.std::vector"** %11, align 8
  %22 = call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i64 %22, i64* %13, align 8
  %23 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  %28 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %15, align 8
  %33 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %21) #15
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %17, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %10, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %17) #15
  store i64 %35, i64* %16, align 8
  %36 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %37 = load i64, i64* %13, align 8
  %38 = call noundef i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %37)
  store i32* %38, i32** %18, align 8
  %39 = load i32*, i32** %18, align 8
  store i32* %39, i32** %19, align 8
  %40 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %41 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %40, i32 0, i32 0
  %42 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %41 to %"class.std::allocator"*
  %43 = load i32*, i32** %18, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32*, i32** %12, align 8
  %47 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %46) #15
  store %"class.std::allocator"* %42, %"class.std::allocator"** %7, align 8
  store i32* %45, i32** %8, align 8
  store i32* %47, i32** %9, align 8
  %48 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %49 = bitcast %"class.std::allocator"* %48 to %"class.std::__new_allocator"*
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %51) #15
  store %"class.std::__new_allocator"* %49, %"class.std::__new_allocator"** %4, align 8
  store i32* %50, i32** %5, align 8
  store i32* %52, i32** %6, align 8
  %53 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load i32*, i32** %6, align 8
  %57 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %56) #15
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %54, align 4
  store i32* null, i32** %19, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #15
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %64 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %63) #15
  %65 = call noundef i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* noundef %59, i32* noundef %61, i32* noundef %62, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %64) #15
  store i32* %65, i32** %19, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %19, align 8
  %68 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #15
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %73 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %72) #15
  %74 = call noundef i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* noundef %69, i32* noundef %70, i32* noundef %71, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %73) #15
  store i32* %74, i32** %19, align 8
  %75 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %76 = load i32*, i32** %14, align 8
  %77 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %77, i32 0, i32 0
  %79 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %78 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %80 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %75, i32* noundef %76, i64 noundef %86)
  %87 = load i32*, i32** %18, align 8
  %88 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %89 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %88, i32 0, i32 0
  %90 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %89 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %91 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %90, i32 0, i32 0
  store i32* %87, i32** %91, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %94 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %93, i32 0, i32 0
  %95 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %94 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %96 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %95, i32 0, i32 1
  store i32* %92, i32** %96, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %101 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %100, i32 0, i32 0
  %102 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %101 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %103 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %102, i32 0, i32 2
  store i32* %99, i32** %103, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, i32** noundef nonnull align 8 dereferenceable(8) %8) #15
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  ret i32* %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* noundef nonnull align 4 dereferenceable(4) %0) #0 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #2 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  %11 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #18
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  %19 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #15
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #15
  %7 = load i32*, i32** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #15
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %7 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, i32** noundef nonnull align 8 dereferenceable(8) %8) #15
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  ret i32* %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #2 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::_Vector_base"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %5, align 8
  store i64 %1, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load i64, i64* %6, align 8
  store %"class.std::allocator"* %12, %"class.std::allocator"** %3, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %15 = bitcast %"class.std::allocator"* %14 to %"class.std::__new_allocator"*
  %16 = load i64, i64* %4, align 8
  %17 = call noundef i32* @_ZNSt15__new_allocatorIiE8allocateEmPKv(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %15, i64 noundef %16, i8* noundef null)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i32* [ %17, %10 ], [ null, %18 ]
  ret i32* %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* noundef %0, i32* noundef %1, i32* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #0 comdat align 2 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %14 = call noundef i32* @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(i32* noundef %10, i32* noundef %11, i32* noundef %12, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13) #15
  ret i32* %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  ret i32** %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #15
  %6 = call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #15
  ret i64 %6
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  store i64 2305843009213693951, i64* %6, align 8
  %8 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  store %"class.std::allocator"* %8, %"class.std::allocator"** %4, align 8
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %10 = bitcast %"class.std::allocator"* %9 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %10, %"class.std::__new_allocator"** %3, align 8
  %11 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::__new_allocator"* %11, %"class.std::__new_allocator"** %2, align 8
  %12 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  store i64 2305843009213693951, i64* %7, align 8
  %13 = invoke noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
          to label %14 unwind label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %13, align 8
  ret i64 %15

16:                                               ; preds = %1
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt15__new_allocatorIiE8allocateEmPKv(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #2 comdat align 2 {
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
  %11 = icmp ugt i64 %9, 2305843009213693951
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 4611686018427387903
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 4
  %20 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %19) #19
  %21 = bitcast i8* %20 to i32*
  ret i32* %21
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(i32* noundef %0, i32* noundef %1, i32* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #0 comdat align 2 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  %14 = call noundef i32* @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* noundef %10, i32* noundef %11, i32* noundef %12, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13) #15
  ret i32* %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* noundef %0, i32* noundef %1, i32* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call noundef i32* @_ZSt12__niter_baseIPiET_S1_(i32* noundef %9) #15
  %11 = load i32*, i32** %6, align 8
  %12 = call noundef i32* @_ZSt12__niter_baseIPiET_S1_(i32* noundef %11) #15
  %13 = load i32*, i32** %7, align 8
  %14 = call noundef i32* @_ZSt12__niter_baseIPiET_S1_(i32* noundef %13) #15
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %16 = call noundef i32* @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i32* noundef %10, i32* noundef %12, i32* noundef %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %15) #15
  ret i32* %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i32* noundef %0, i32* noundef %1, i32* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = ptrtoint i32* %10 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %23, 4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %22, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %18, %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  ret i32* %28
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZSt12__niter_baseIPiET_S1_(i32* noundef %0) #0 comdat {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  ret i32* %3
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 noundef %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  %10 = alloca %"class.std::allocator", align 1
  store i64 %0, i64* %8, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  store %"class.std::allocator"* %10, %"class.std::allocator"** %5, align 8
  store %"class.std::allocator"* %12, %"class.std::allocator"** %6, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %14 = bitcast %"class.std::allocator"* %13 to %"class.std::__new_allocator"*
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %16 = bitcast %"class.std::allocator"* %15 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %14, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::__new_allocator"* %16, %"class.std::__new_allocator"** %4, align 8
  %17 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %18 = call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10) #15
  %19 = icmp ugt i64 %11, %18
  store %"class.std::allocator"* %10, %"class.std::allocator"** %7, align 8
  %20 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %21 = bitcast %"class.std::allocator"* %20 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIiED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %21) #15
  br i1 %19, label %22, label %23

22:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0)) #18
  unreachable

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  ret i64 %24
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store i64 %1, i64* %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %9 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %10, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %11) #15
  %12 = load i64, i64* %5, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %3
  ret void

14:                                               ; preds = %3
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %7, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %8, align 4
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %10) #15
  br label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %8 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %9 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %16 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %15) #15
  %17 = call noundef i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* noundef %12, i64 noundef %13, i32* noundef nonnull align 4 dereferenceable(4) %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16)
  %18 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %19 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %20, i32 0, i32 1
  store i32* %17, i32** %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %0, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %7, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %8, align 8
  %9 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %7, align 8
  %10 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %9 to %"class.std::allocator"*
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  store %"class.std::allocator"* %10, %"class.std::allocator"** %5, align 8
  store %"class.std::allocator"* %11, %"class.std::allocator"** %6, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %13 = bitcast %"class.std::allocator"* %12 to %"class.std::__new_allocator"*
  %14 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %15 = bitcast %"class.std::allocator"* %14 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %13, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::__new_allocator"* %15, %"class.std::__new_allocator"** %4, align 8
  %16 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %17 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %9 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %17) #15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #2 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noundef i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %6)
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %9, i32 0, i32 0
  store i32* %7, i32** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %11 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %15 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %16, i32 0, i32 1
  store i32* %14, i32** %17, align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %19 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %18 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %20 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %25, i32 0, i32 2
  store i32* %23, i32** %26, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(i32* noundef %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #2 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call noundef i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* noundef %9, i64 noundef %10, i32* noundef nonnull align 4 dereferenceable(4) %11)
  ret i32* %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(i32* noundef %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call noundef i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* noundef %8, i64 noundef %9, i32* noundef nonnull align 4 dereferenceable(4) %10)
  ret i32* %11
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(i32* noundef %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call noundef i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* noundef %7, i64 noundef %8, i32* noundef nonnull align 4 dereferenceable(4) %9)
  ret i32* %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* noundef %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"struct.std::random_access_iterator_tag", align 1
  %9 = alloca %"struct.std::random_access_iterator_tag", align 1
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %11)
  %13 = load i32*, i32** %7, align 8
  store i32** %5, i32*** %4, align 8
  %14 = call noundef i32* @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(i32* noundef %10, i64 noundef %12, i32* noundef nonnull align 4 dereferenceable(4) %13)
  ret i32* %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(i32* noundef %0, i64 noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %4, align 8
  br label %22

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32*, i32** %8, align 8
  call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(i32* noundef %14, i32* noundef %17, i32* noundef nonnull align 4 dereferenceable(4) %18)
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %13, %11
  %23 = load i32*, i32** %4, align 8
  ret i32* %23
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(i32* noundef %0, i32* noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #2 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i32* noundef %7, i32* noundef %8, i32* noundef nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i32* noundef %0, i32* noundef %1, i32* noundef nonnull align 4 dereferenceable(4) %2) #0 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  br label %10, !llvm.loop !34

20:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %0, i32* %1, i32* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #2 comdat {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  store i32* %0, i32** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %6, i32 0, i32 0
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %9, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %10, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call noundef i32* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %19, i32* %21, i32* noundef %17)
  ret i32* %22
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* noundef nonnull align 8 dereferenceable(8) %2, i32** noundef nonnull align 8 dereferenceable(8) %8) #15
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  ret i32* %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* noundef nonnull align 8 dereferenceable(8) %2, i32** noundef nonnull align 8 dereferenceable(8) %8) #15
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  ret i32* %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %0, i32* %1, i32* noundef %2) #2 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %4, i32 0, i32 0
  store i32* %0, i32** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %6, align 8
  store i8 1, i8* %7, align 1
  store i8 1, i8* %8, align 1
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %9 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %10 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %9, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %10, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call noundef i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i32* %19, i32* %21, i32* noundef %17)
  ret i32* %22
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i32* %0, i32* %1, i32* noundef %2) #2 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %4, i32 0, i32 0
  store i32* %0, i32** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %7 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %8 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %7, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %8, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call noundef i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %17, i32* %19, i32* noundef %15)
  ret i32* %20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %0, i32* %1, i32* noundef %2) #2 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %4, i32 0, i32 0
  store i32* %0, i32** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %6, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %8 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %8, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i32* %16)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %7, i32 0, i32 0
  store i32* %17, i32** %18, align 8
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %10 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %10, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i32* %22)
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %9, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %9, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call noundef i32* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i32* %27, i32* %29, i32* noundef %25)
  ret i32* %30
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i32* %0, i32* %1, i32* noundef %2) #2 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %6 = alloca i32*, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %4, i32 0, i32 0
  store i32* %0, i32** %9, align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %7 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %7, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call noundef i32* @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i32* %14) #15
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %8 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %8, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call noundef i32* @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i32* %19) #15
  %21 = load i32*, i32** %6, align 8
  %22 = call noundef i32* @_ZSt12__niter_baseIPiET_S1_(i32* noundef %21) #15
  %23 = call noundef i32* @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(i32* noundef %15, i32* noundef %20, i32* noundef %22)
  %24 = call noundef i32* @_ZSt12__niter_wrapIPiET_RKS1_S1_(i32** noundef nonnull align 8 dereferenceable(8) %6, i32* noundef %23)
  ret i32* %24
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i32* %0) #0 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %3, i32 0, i32 0
  store i32* %0, i32** %4, align 8
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %2 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.3"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %2, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  ret i32* %8
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZSt12__niter_wrapIPiET_RKS1_S1_(i32** noundef nonnull align 8 dereferenceable(8) %0, i32* noundef %1) #0 comdat {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  ret i32* %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(i32* noundef %0, i32* noundef %1, i32* noundef %2) #2 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call noundef i32* @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(i32* noundef %7, i32* noundef %8, i32* noundef %9)
  ret i32* %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32* @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i32* %0) #0 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %2, i32 0, i32 0
  store i32* %0, i32** %3, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* noundef nonnull align 8 dereferenceable(8) %2) #15
  %5 = load i32*, i32** %4, align 8
  ret i32* %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(i32* noundef %0, i32* noundef %1, i32* noundef %2) #2 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call noundef i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_(i32* noundef %7, i32* noundef %8, i32* noundef %9)
  ret i32* %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_(i32* noundef %0, i32* noundef %1, i32* noundef %2) #2 comdat align 2 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = ptrtoint i32* %8 to i64
  %11 = ptrtoint i32* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 4
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 4, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %20, i64 %22, i1 false)
  br label %30

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %4, align 8
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_(i32* noundef %27, i32* noundef %28)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  ret i32* %33
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_(i32* noundef %0, i32* noundef %1) #0 comdat align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  store i32 %6, i32* %7, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.3"* noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %0, %"class.__gnu_cxx::__normal_iterator.3"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %3, i32 0, i32 0
  ret i32** %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.3"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.3"*, align 8
  %4 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator.3"* %0, %"class.__gnu_cxx::__normal_iterator.3"** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.3"*, %"class.__gnu_cxx::__normal_iterator.3"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3"* %5, i32 0, i32 0
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %6, align 8
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_: argument 0"}
!18 = distinct !{!18, !"_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_: argument 0"}
!21 = distinct !{!21, !"_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_"}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
