; ModuleID = 'PE-benchmarks/weighted-job-scheduling.cpp'
source_filename = "PE-benchmarks/weighted-job-scheduling.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.Job = type { i32, i32, i32 }
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
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i1 (i64, i32, i64, i32)* }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { i1 (i64, i32, i64, i32)* }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { i1 (i64, i32, i64, i32)* }

$_ZSt4sortIP3JobPFbS0_S0_EEvT_S4_T0_ = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt6__sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb3JobS2_EEENS0_15_Iter_comp_iterIT_EES6_ = comdat any

$_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt22__final_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt14__partial_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_T0_ = comdat any

$_ZSt13__heap_selectIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_ = comdat any

$_ZSt11__sort_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_ = comdat any

$_ZSt11__make_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_ = comdat any

$_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_ = comdat any

$_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZSt11__push_heapIP3JoblS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEEvT_T0_S9_T1_RT2_ = comdat any

$_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEclIPS2_S2_EEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_S8_T0_ = comdat any

$_ZSt21__unguarded_partitionIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_S8_T0_ = comdat any

$_ZSt9iter_swapIP3JobS1_EvT_T0_ = comdat any

$_ZSt4swapI3JobENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = comdat any

$_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt13move_backwardIP3JobS1_ET0_T_S3_S2_ = comdat any

$_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EP3JobS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP3JobET_S2_ = comdat any

$_ZSt12__niter_wrapIP3JobET_RKS2_S2_ = comdat any

$_ZSt22__copy_move_backward_aILb1EP3JobS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP3JobET_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI3JobEEPT_PKS4_S7_S5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEclIS2_PS2_EEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEC2ES4_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [4 x %struct.Job] [%struct.Job { i32 3, i32 10, i32 20 }, %struct.Job { i32 1, i32 2, i32 50 }, %struct.Job { i32 6, i32 19, i32 100 }, %struct.Job { i32 2, i32 100, i32 200 }], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"The optimal profit is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_weighted_job_scheduling.cpp, i8* null }]

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

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z14jobComparataor3JobS_(i64 %0, i32 %1, i64 %2, i32 %3) #4 {
  %5 = alloca %struct.Job, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.Job, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = bitcast %struct.Job* %5 to i8*
  %12 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %14, align 4
  %15 = bitcast %struct.Job* %7 to i8*
  %16 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.Job, %struct.Job* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.Job, %struct.Job* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  ret i1 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z17latestNonConflictP3Jobi(%struct.Job* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Job*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Job* %0, %struct.Job** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.Job*, %struct.Job** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Job, %struct.Job* %13, i64 %15
  %17 = getelementptr inbounds %struct.Job, %struct.Job* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.Job*, %struct.Job** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Job, %struct.Job* %19, i64 %21
  %23 = getelementptr inbounds %struct.Job, %struct.Job* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %18, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  br label %9, !llvm.loop !6

32:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z13findMaxProfitP3Jobi(%struct.Job* noundef %0, i32 noundef %1) #6 {
  %3 = alloca %struct.Job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Job* %0, %struct.Job** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.Job*, %struct.Job** %3, align 8
  %11 = load %struct.Job*, %struct.Job** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.Job, %struct.Job* %11, i64 %13
  call void @_ZSt4sortIP3JobPFbS0_S0_EEvT_S4_T0_(%struct.Job* noundef %10, %struct.Job* noundef %14, i1 (i64, i32, i64, i32)* noundef @_Z14jobComparataor3JobS_)
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %16, i64 4)
  %18 = extractvalue { i64, i1 } %17, 1
  %19 = extractvalue { i64, i1 } %17, 0
  %20 = select i1 %18, i64 -1, i64 %19
  %21 = call noalias noundef nonnull i8* @_Znam(i64 noundef %20) #12
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %5, align 8
  %23 = load %struct.Job*, %struct.Job** %3, align 8
  %24 = getelementptr inbounds %struct.Job, %struct.Job* %23, i64 0
  %25 = getelementptr inbounds %struct.Job, %struct.Job* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %65, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.Job*, %struct.Job** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Job, %struct.Job* %34, i64 %36
  %38 = getelementptr inbounds %struct.Job, %struct.Job* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.Job*, %struct.Job** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call noundef i32 @_Z17latestNonConflictP3Jobi(%struct.Job* noundef %40, i32 noundef %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %53

45:                                               ; preds = %33
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %33
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %7, i32* noundef nonnull align 4 dereferenceable(4) %58)
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %29, !llvm.loop !8

68:                                               ; preds = %29
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = bitcast i32* %75 to i8*
  call void @_ZdaPv(i8* noundef %78) #13
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIP3JobPFbS0_S0_EEvT_S4_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, i1 (i64, i32, i64, i32)* noundef %2) #6 comdat {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca i1 (i64, i32, i64, i32)*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %6, align 8
  %8 = load %struct.Job*, %struct.Job** %4, align 8
  %9 = load %struct.Job*, %struct.Job** %5, align 8
  %10 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8
  %11 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb3JobS2_EEENS0_15_Iter_comp_iterIT_EES6_(i1 (i64, i32, i64, i32)* noundef %10)
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %11, i1 (i64, i32, i64, i32)** %12, align 8
  %13 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %14 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %13, align 8
  call void @_ZSt6__sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %8, %struct.Job* noundef %9, i1 (i64, i32, i64, i32)* %14)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #4 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #9

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #10 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x %struct.Job], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [4 x %struct.Job]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x %struct.Job]* @__const.main.arr to i8*), i64 48, i1 false)
  store i32 4, i32* %3, align 4
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds [4 x %struct.Job], [4 x %struct.Job]* %2, i64 0, i64 0
  %7 = load i32, i32* %3, align 4
  %8 = call noundef i32 @_Z13findMaxProfitP3Jobi(%struct.Job* noundef %6, i32 noundef %7)
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %8)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, i1 (i64, i32, i64, i32)* %2) #6 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %9, align 8
  store %struct.Job* %0, %struct.Job** %5, align 8
  store %struct.Job* %1, %struct.Job** %6, align 8
  %10 = load %struct.Job*, %struct.Job** %5, align 8
  %11 = load %struct.Job*, %struct.Job** %6, align 8
  %12 = icmp ne %struct.Job* %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.Job*, %struct.Job** %5, align 8
  %15 = load %struct.Job*, %struct.Job** %6, align 8
  %16 = load %struct.Job*, %struct.Job** %6, align 8
  %17 = load %struct.Job*, %struct.Job** %5, align 8
  %18 = ptrtoint %struct.Job* %16 to i64
  %19 = ptrtoint %struct.Job* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 12
  %22 = call noundef i64 @_ZSt4__lgl(i64 noundef %21)
  %23 = mul nsw i64 %22, 2
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7 to i8*
  %25 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %27 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %26, align 8
  call void @_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.Job* noundef %14, %struct.Job* noundef %15, i64 noundef %23, i1 (i64, i32, i64, i32)* %27)
  %28 = load %struct.Job*, %struct.Job** %5, align 8
  %29 = load %struct.Job*, %struct.Job** %6, align 8
  %30 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %31 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8, i32 0, i32 0
  %33 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %32, align 8
  call void @_ZSt22__final_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %28, %struct.Job* noundef %29, i1 (i64, i32, i64, i32)* %33)
  br label %34

34:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb3JobS2_EEENS0_15_Iter_comp_iterIT_EES6_(i1 (i64, i32, i64, i32)* noundef %0) #6 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %3 = alloca i1 (i64, i32, i64, i32)*, align 8
  store i1 (i64, i32, i64, i32)* %0, i1 (i64, i32, i64, i32)** %3, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %3) #3
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %4, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2, i1 (i64, i32, i64, i32)* noundef %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, i32 0, i32 0
  %7 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8
  ret i1 (i64, i32, i64, i32)* %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.Job* noundef %0, %struct.Job* noundef %1, i64 noundef %2, i1 (i64, i32, i64, i32)* %3) #6 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = alloca %struct.Job*, align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %13 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %3, i1 (i64, i32, i64, i32)** %13, align 8
  store %struct.Job* %0, %struct.Job** %6, align 8
  store %struct.Job* %1, %struct.Job** %7, align 8
  store i64 %2, i64* %8, align 8
  br label %14

14:                                               ; preds = %33, %4
  %15 = load %struct.Job*, %struct.Job** %7, align 8
  %16 = load %struct.Job*, %struct.Job** %6, align 8
  %17 = ptrtoint %struct.Job* %15 to i64
  %18 = ptrtoint %struct.Job* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 12
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %22, label %51

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.Job*, %struct.Job** %6, align 8
  %27 = load %struct.Job*, %struct.Job** %7, align 8
  %28 = load %struct.Job*, %struct.Job** %7, align 8
  %29 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %30 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %32 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %31, align 8
  call void @_ZSt14__partial_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* noundef %26, %struct.Job* noundef %27, %struct.Job* noundef %28, i1 (i64, i32, i64, i32)* %32)
  br label %51

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.Job*, %struct.Job** %6, align 8
  %37 = load %struct.Job*, %struct.Job** %7, align 8
  %38 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %39 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %41 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %40, align 8
  %42 = call noundef %struct.Job* @_ZSt27__unguarded_partition_pivotIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_T0_(%struct.Job* noundef %36, %struct.Job* noundef %37, i1 (i64, i32, i64, i32)* %41)
  store %struct.Job* %42, %struct.Job** %10, align 8
  %43 = load %struct.Job*, %struct.Job** %10, align 8
  %44 = load %struct.Job*, %struct.Job** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  %47 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12, i32 0, i32 0
  %49 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %48, align 8
  call void @_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.Job* noundef %43, %struct.Job* noundef %44, i64 noundef %45, i1 (i64, i32, i64, i32)* %49)
  %50 = load %struct.Job*, %struct.Job** %10, align 8
  store %struct.Job* %50, %struct.Job** %7, align 8
  br label %14, !llvm.loop !9

51:                                               ; preds = %25, %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgl(i64 noundef %0) #4 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %5 = trunc i64 %4 to i32
  %6 = sub nsw i32 63, %5
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, i1 (i64, i32, i64, i32)* %2) #6 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %10, align 8
  store %struct.Job* %0, %struct.Job** %5, align 8
  store %struct.Job* %1, %struct.Job** %6, align 8
  %11 = load %struct.Job*, %struct.Job** %6, align 8
  %12 = load %struct.Job*, %struct.Job** %5, align 8
  %13 = ptrtoint %struct.Job* %11 to i64
  %14 = ptrtoint %struct.Job* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 12
  %17 = icmp sgt i64 %16, 16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.Job*, %struct.Job** %5, align 8
  %20 = load %struct.Job*, %struct.Job** %5, align 8
  %21 = getelementptr inbounds %struct.Job, %struct.Job* %20, i64 16
  %22 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7 to i8*
  %23 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %25 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %24, align 8
  call void @_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %19, %struct.Job* noundef %21, i1 (i64, i32, i64, i32)* %25)
  %26 = load %struct.Job*, %struct.Job** %5, align 8
  %27 = getelementptr inbounds %struct.Job, %struct.Job* %26, i64 16
  %28 = load %struct.Job*, %struct.Job** %6, align 8
  %29 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %30 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8, i32 0, i32 0
  %32 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %31, align 8
  call void @_ZSt26__unguarded_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %27, %struct.Job* noundef %28, i1 (i64, i32, i64, i32)* %32)
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.Job*, %struct.Job** %5, align 8
  %35 = load %struct.Job*, %struct.Job** %6, align 8
  %36 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %37 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %39 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %38, align 8
  call void @_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %34, %struct.Job* noundef %35, i1 (i64, i32, i64, i32)* %39)
  br label %40

40:                                               ; preds = %33, %18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2, i1 (i64, i32, i64, i32)* %3) #6 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %struct.Job*, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %3, i1 (i64, i32, i64, i32)** %10, align 8
  store %struct.Job* %0, %struct.Job** %6, align 8
  store %struct.Job* %1, %struct.Job** %7, align 8
  store %struct.Job* %2, %struct.Job** %8, align 8
  %11 = load %struct.Job*, %struct.Job** %6, align 8
  %12 = load %struct.Job*, %struct.Job** %7, align 8
  %13 = load %struct.Job*, %struct.Job** %8, align 8
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %17 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %16, align 8
  call void @_ZSt13__heap_selectIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* noundef %11, %struct.Job* noundef %12, %struct.Job* noundef %13, i1 (i64, i32, i64, i32)* %17)
  %18 = load %struct.Job*, %struct.Job** %6, align 8
  %19 = load %struct.Job*, %struct.Job** %7, align 8
  call void @_ZSt11__sort_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* noundef %18, %struct.Job* noundef %19, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt27__unguarded_partition_pivotIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, i1 (i64, i32, i64, i32)* %2) #6 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %10, align 8
  store %struct.Job* %0, %struct.Job** %5, align 8
  store %struct.Job* %1, %struct.Job** %6, align 8
  %11 = load %struct.Job*, %struct.Job** %5, align 8
  %12 = load %struct.Job*, %struct.Job** %6, align 8
  %13 = load %struct.Job*, %struct.Job** %5, align 8
  %14 = ptrtoint %struct.Job* %12 to i64
  %15 = ptrtoint %struct.Job* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 12
  %18 = sdiv i64 %17, 2
  %19 = getelementptr inbounds %struct.Job, %struct.Job* %11, i64 %18
  store %struct.Job* %19, %struct.Job** %7, align 8
  %20 = load %struct.Job*, %struct.Job** %5, align 8
  %21 = load %struct.Job*, %struct.Job** %5, align 8
  %22 = getelementptr inbounds %struct.Job, %struct.Job* %21, i64 1
  %23 = load %struct.Job*, %struct.Job** %7, align 8
  %24 = load %struct.Job*, %struct.Job** %6, align 8
  %25 = getelementptr inbounds %struct.Job, %struct.Job* %24, i64 -1
  %26 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %27 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8, i32 0, i32 0
  %29 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %28, align 8
  call void @_ZSt22__move_median_to_firstIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.Job* noundef %20, %struct.Job* noundef %22, %struct.Job* noundef %23, %struct.Job* noundef %25, i1 (i64, i32, i64, i32)* %29)
  %30 = load %struct.Job*, %struct.Job** %5, align 8
  %31 = getelementptr inbounds %struct.Job, %struct.Job* %30, i64 1
  %32 = load %struct.Job*, %struct.Job** %6, align 8
  %33 = load %struct.Job*, %struct.Job** %5, align 8
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %35 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %37 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %36, align 8
  %38 = call noundef %struct.Job* @_ZSt21__unguarded_partitionIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_S8_T0_(%struct.Job* noundef %31, %struct.Job* noundef %32, %struct.Job* noundef %33, i1 (i64, i32, i64, i32)* %37)
  ret %struct.Job* %38
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2, i1 (i64, i32, i64, i32)* %3) #6 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %struct.Job*, align 8
  %9 = alloca %struct.Job*, align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %3, i1 (i64, i32, i64, i32)** %10, align 8
  store %struct.Job* %0, %struct.Job** %6, align 8
  store %struct.Job* %1, %struct.Job** %7, align 8
  store %struct.Job* %2, %struct.Job** %8, align 8
  %11 = load %struct.Job*, %struct.Job** %6, align 8
  %12 = load %struct.Job*, %struct.Job** %7, align 8
  call void @_ZSt11__make_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* noundef %11, %struct.Job* noundef %12, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  %13 = load %struct.Job*, %struct.Job** %7, align 8
  store %struct.Job* %13, %struct.Job** %9, align 8
  br label %14

14:                                               ; preds = %27, %4
  %15 = load %struct.Job*, %struct.Job** %9, align 8
  %16 = load %struct.Job*, %struct.Job** %8, align 8
  %17 = icmp ult %struct.Job* %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.Job*, %struct.Job** %9, align 8
  %20 = load %struct.Job*, %struct.Job** %6, align 8
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5, %struct.Job* noundef %19, %struct.Job* noundef %20)
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.Job*, %struct.Job** %6, align 8
  %24 = load %struct.Job*, %struct.Job** %7, align 8
  %25 = load %struct.Job*, %struct.Job** %9, align 8
  call void @_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_(%struct.Job* noundef %23, %struct.Job* noundef %24, %struct.Job* noundef %25, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.Job*, %struct.Job** %9, align 8
  %29 = getelementptr inbounds %struct.Job, %struct.Job* %28, i32 1
  store %struct.Job* %29, %struct.Job** %9, align 8
  br label %14, !llvm.loop !10

30:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2) #6 comdat {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  br label %7

7:                                                ; preds = %15, %3
  %8 = load %struct.Job*, %struct.Job** %5, align 8
  %9 = load %struct.Job*, %struct.Job** %4, align 8
  %10 = ptrtoint %struct.Job* %8 to i64
  %11 = ptrtoint %struct.Job* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 12
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = load %struct.Job*, %struct.Job** %5, align 8
  %17 = getelementptr inbounds %struct.Job, %struct.Job* %16, i32 -1
  store %struct.Job* %17, %struct.Job** %5, align 8
  %18 = load %struct.Job*, %struct.Job** %4, align 8
  %19 = load %struct.Job*, %struct.Job** %5, align 8
  %20 = load %struct.Job*, %struct.Job** %5, align 8
  %21 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  call void @_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_(%struct.Job* noundef %18, %struct.Job* noundef %19, %struct.Job* noundef %20, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %21)
  br label %7, !llvm.loop !11

22:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2) #6 comdat {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Job, align 4
  %10 = alloca %struct.Job, align 4
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %13 = load %struct.Job*, %struct.Job** %5, align 8
  %14 = load %struct.Job*, %struct.Job** %4, align 8
  %15 = ptrtoint %struct.Job* %13 to i64
  %16 = ptrtoint %struct.Job* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 12
  %19 = icmp slt i64 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.Job*, %struct.Job** %5, align 8
  %23 = load %struct.Job*, %struct.Job** %4, align 8
  %24 = ptrtoint %struct.Job* %22 to i64
  %25 = ptrtoint %struct.Job* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 12
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %28, 2
  %30 = sdiv i64 %29, 2
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %21, %58
  %32 = load %struct.Job*, %struct.Job** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.Job, %struct.Job* %32, i64 %33
  %35 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %34) #3
  %36 = bitcast %struct.Job* %9 to i8*
  %37 = bitcast %struct.Job* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = load %struct.Job*, %struct.Job** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %9) #3
  %42 = bitcast %struct.Job* %10 to i8*
  %43 = bitcast %struct.Job* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 12, i1 false)
  %44 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %45 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %46 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = bitcast { i64, i32 }* %12 to i8*
  %48 = bitcast %struct.Job* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 4
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %54 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %53, align 8
  call void @_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.Job* noundef %38, i64 noundef %39, i64 noundef %40, i64 %50, i32 %52, i1 (i64, i32, i64, i32)* %54)
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  br label %61

58:                                               ; preds = %31
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %8, align 8
  br label %31, !llvm.loop !12

61:                                               ; preds = %57, %20
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, %struct.Job* noundef %1, %struct.Job* noundef %2) #6 comdat align 2 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job, align 4
  %8 = alloca %struct.Job, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  %11 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %13 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %12, align 8
  %14 = load %struct.Job*, %struct.Job** %5, align 8
  %15 = bitcast %struct.Job* %7 to i8*
  %16 = bitcast %struct.Job* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.Job*, %struct.Job** %6, align 8
  %18 = bitcast %struct.Job* %8 to i8*
  %19 = bitcast %struct.Job* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.Job* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.Job* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call noundef zeroext i1 %13(i64 %23, i32 %25, i64 %29, i32 %31)
  ret i1 %32
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %3) #6 comdat {
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %9 = alloca %struct.Job, align 4
  %10 = alloca %struct.Job, align 4
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %12 = alloca { i64, i32 }, align 4
  store %struct.Job* %0, %struct.Job** %5, align 8
  store %struct.Job* %1, %struct.Job** %6, align 8
  store %struct.Job* %2, %struct.Job** %7, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %8, align 8
  %13 = load %struct.Job*, %struct.Job** %7, align 8
  %14 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %13) #3
  %15 = bitcast %struct.Job* %9 to i8*
  %16 = bitcast %struct.Job* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.Job*, %struct.Job** %5, align 8
  %18 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %17) #3
  %19 = load %struct.Job*, %struct.Job** %7, align 8
  %20 = bitcast %struct.Job* %19 to i8*
  %21 = bitcast %struct.Job* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = load %struct.Job*, %struct.Job** %5, align 8
  %23 = load %struct.Job*, %struct.Job** %6, align 8
  %24 = load %struct.Job*, %struct.Job** %5, align 8
  %25 = ptrtoint %struct.Job* %23 to i64
  %26 = ptrtoint %struct.Job* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 12
  %29 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %9) #3
  %30 = bitcast %struct.Job* %10 to i8*
  %31 = bitcast %struct.Job* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %8, align 8
  %33 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = bitcast { i64, i32 }* %12 to i8*
  %36 = bitcast %struct.Job* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11, i32 0, i32 0
  %42 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %41, align 8
  call void @_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.Job* noundef %22, i64 noundef 0, i64 noundef %28, i64 %38, i32 %40, i1 (i64, i32, i64, i32)* %42)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %0) #4 comdat {
  %2 = alloca %struct.Job*, align 8
  store %struct.Job* %0, %struct.Job** %2, align 8
  %3 = load %struct.Job*, %struct.Job** %2, align 8
  ret %struct.Job* %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.Job* noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i32 %4, i1 (i64, i32, i64, i32)* %5) #6 comdat {
  %7 = alloca %struct.Job, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = alloca %struct.Job*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %16 = alloca %struct.Job, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %3, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %19, align 4
  %20 = bitcast %struct.Job* %7 to i8*
  %21 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %5, i1 (i64, i32, i64, i32)** %22, align 8
  store %struct.Job* %0, %struct.Job** %10, align 8
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
  %35 = load %struct.Job*, %struct.Job** %10, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.Job, %struct.Job* %35, i64 %36
  %38 = load %struct.Job*, %struct.Job** %10, align 8
  %39 = load i64, i64* %14, align 8
  %40 = sub nsw i64 %39, 1
  %41 = getelementptr inbounds %struct.Job, %struct.Job* %38, i64 %40
  %42 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %9, %struct.Job* noundef %37, %struct.Job* noundef %41)
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i64, i64* %14, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.Job*, %struct.Job** %10, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds %struct.Job, %struct.Job* %47, i64 %48
  %50 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %49) #3
  %51 = load %struct.Job*, %struct.Job** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.Job, %struct.Job* %51, i64 %52
  %54 = bitcast %struct.Job* %53 to i8*
  %55 = bitcast %struct.Job* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %11, align 8
  br label %25, !llvm.loop !13

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
  %71 = load %struct.Job*, %struct.Job** %10, align 8
  %72 = load i64, i64* %14, align 8
  %73 = sub nsw i64 %72, 1
  %74 = getelementptr inbounds %struct.Job, %struct.Job* %71, i64 %73
  %75 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %74) #3
  %76 = load %struct.Job*, %struct.Job** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.Job, %struct.Job* %76, i64 %77
  %79 = bitcast %struct.Job* %78 to i8*
  %80 = bitcast %struct.Job* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 12, i1 false)
  %81 = load i64, i64* %14, align 8
  %82 = sub nsw i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %67, %61, %57
  %84 = call noundef nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %9) #3
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %15, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %84)
  %85 = load %struct.Job*, %struct.Job** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %7) #3
  %89 = bitcast %struct.Job* %16 to i8*
  %90 = bitcast %struct.Job* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 12, i1 false)
  %91 = bitcast { i64, i32 }* %17 to i8*
  %92 = bitcast %struct.Job* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  call void @_ZSt11__push_heapIP3JoblS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.Job* noundef %85, i64 noundef %86, i64 noundef %87, i64 %94, i32 %96, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %15)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0) #4 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %2, align 8
  ret %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %3, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %5, i32 0, i32 0
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %8) #3
  %10 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %9, align 8
  store i1 (i64, i32, i64, i32)* %10, i1 (i64, i32, i64, i32)** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIP3JoblS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.Job* noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i32 %4, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %5) #6 comdat {
  %7 = alloca %struct.Job, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca %struct.Job*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %3, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %4, i32* %15, align 4
  %16 = bitcast %struct.Job* %7 to i8*
  %17 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  store %struct.Job* %0, %struct.Job** %9, align 8
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
  %27 = load %struct.Job*, %struct.Job** %9, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds %struct.Job, %struct.Job* %27, i64 %28
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %26, %struct.Job* noundef %29, %struct.Job* noundef nonnull align 4 dereferenceable(12) %7)
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load %struct.Job*, %struct.Job** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.Job, %struct.Job* %34, i64 %35
  %37 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %36) #3
  %38 = load %struct.Job*, %struct.Job** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.Job, %struct.Job* %38, i64 %39
  %41 = bitcast %struct.Job* %40 to i8*
  %42 = bitcast %struct.Job* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = load i64, i64* %13, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %44, 1
  %46 = sdiv i64 %45, 2
  store i64 %46, i64* %13, align 8
  br label %21, !llvm.loop !14

47:                                               ; preds = %31
  %48 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %7) #3
  %49 = load %struct.Job*, %struct.Job** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.Job, %struct.Job* %49, i64 %50
  %52 = bitcast %struct.Job* %51 to i8*
  %53 = bitcast %struct.Job* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat {
  %2 = alloca i1 (i64, i32, i64, i32)**, align 8
  store i1 (i64, i32, i64, i32)** %0, i1 (i64, i32, i64, i32)*** %2, align 8
  %3 = load i1 (i64, i32, i64, i32)**, i1 (i64, i32, i64, i32)*** %2, align 8
  ret i1 (i64, i32, i64, i32)** %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 8 dereferenceable(8) %0, %struct.Job* noundef %1, %struct.Job* noundef nonnull align 4 dereferenceable(12) %2) #6 comdat align 2 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job, align 4
  %8 = alloca %struct.Job, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  %11 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %4, align 8
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %11, i32 0, i32 0
  %13 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %12, align 8
  %14 = load %struct.Job*, %struct.Job** %5, align 8
  %15 = bitcast %struct.Job* %7 to i8*
  %16 = bitcast %struct.Job* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.Job*, %struct.Job** %6, align 8
  %18 = bitcast %struct.Job* %8 to i8*
  %19 = bitcast %struct.Job* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.Job* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.Job* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call noundef zeroext i1 %13(i64 %23, i32 %25, i64 %29, i32 %31)
  ret i1 %32
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2, %struct.Job* noundef %3, i1 (i64, i32, i64, i32)* %4) #6 comdat {
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %struct.Job*, align 8
  %9 = alloca %struct.Job*, align 8
  %10 = alloca %struct.Job*, align 8
  %11 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %4, i1 (i64, i32, i64, i32)** %11, align 8
  store %struct.Job* %0, %struct.Job** %7, align 8
  store %struct.Job* %1, %struct.Job** %8, align 8
  store %struct.Job* %2, %struct.Job** %9, align 8
  store %struct.Job* %3, %struct.Job** %10, align 8
  %12 = load %struct.Job*, %struct.Job** %8, align 8
  %13 = load %struct.Job*, %struct.Job** %9, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.Job* noundef %12, %struct.Job* noundef %13)
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load %struct.Job*, %struct.Job** %9, align 8
  %17 = load %struct.Job*, %struct.Job** %10, align 8
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.Job* noundef %16, %struct.Job* noundef %17)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.Job*, %struct.Job** %7, align 8
  %21 = load %struct.Job*, %struct.Job** %9, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %20, %struct.Job* noundef %21)
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.Job*, %struct.Job** %8, align 8
  %24 = load %struct.Job*, %struct.Job** %10, align 8
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.Job* noundef %23, %struct.Job* noundef %24)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.Job*, %struct.Job** %7, align 8
  %28 = load %struct.Job*, %struct.Job** %10, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %27, %struct.Job* noundef %28)
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.Job*, %struct.Job** %7, align 8
  %31 = load %struct.Job*, %struct.Job** %8, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %30, %struct.Job* noundef %31)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %19
  br label %53

34:                                               ; preds = %5
  %35 = load %struct.Job*, %struct.Job** %8, align 8
  %36 = load %struct.Job*, %struct.Job** %10, align 8
  %37 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.Job* noundef %35, %struct.Job* noundef %36)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.Job*, %struct.Job** %7, align 8
  %40 = load %struct.Job*, %struct.Job** %8, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %39, %struct.Job* noundef %40)
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.Job*, %struct.Job** %9, align 8
  %43 = load %struct.Job*, %struct.Job** %10, align 8
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %6, %struct.Job* noundef %42, %struct.Job* noundef %43)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.Job*, %struct.Job** %7, align 8
  %47 = load %struct.Job*, %struct.Job** %10, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %46, %struct.Job* noundef %47)
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.Job*, %struct.Job** %7, align 8
  %50 = load %struct.Job*, %struct.Job** %9, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %49, %struct.Job* noundef %50)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %33
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt21__unguarded_partitionIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2, i1 (i64, i32, i64, i32)* %3) #6 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %struct.Job*, align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %3, i1 (i64, i32, i64, i32)** %9, align 8
  store %struct.Job* %0, %struct.Job** %6, align 8
  store %struct.Job* %1, %struct.Job** %7, align 8
  store %struct.Job* %2, %struct.Job** %8, align 8
  br label %10

10:                                               ; preds = %4, %34
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.Job*, %struct.Job** %6, align 8
  %13 = load %struct.Job*, %struct.Job** %8, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5, %struct.Job* noundef %12, %struct.Job* noundef %13)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.Job*, %struct.Job** %6, align 8
  %17 = getelementptr inbounds %struct.Job, %struct.Job* %16, i32 1
  store %struct.Job* %17, %struct.Job** %6, align 8
  br label %11, !llvm.loop !15

18:                                               ; preds = %11
  %19 = load %struct.Job*, %struct.Job** %7, align 8
  %20 = getelementptr inbounds %struct.Job, %struct.Job* %19, i32 -1
  store %struct.Job* %20, %struct.Job** %7, align 8
  br label %21

21:                                               ; preds = %25, %18
  %22 = load %struct.Job*, %struct.Job** %8, align 8
  %23 = load %struct.Job*, %struct.Job** %7, align 8
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5, %struct.Job* noundef %22, %struct.Job* noundef %23)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.Job*, %struct.Job** %7, align 8
  %27 = getelementptr inbounds %struct.Job, %struct.Job* %26, i32 -1
  store %struct.Job* %27, %struct.Job** %7, align 8
  br label %21, !llvm.loop !16

28:                                               ; preds = %21
  %29 = load %struct.Job*, %struct.Job** %6, align 8
  %30 = load %struct.Job*, %struct.Job** %7, align 8
  %31 = icmp ult %struct.Job* %29, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load %struct.Job*, %struct.Job** %6, align 8
  ret %struct.Job* %33

34:                                               ; preds = %28
  %35 = load %struct.Job*, %struct.Job** %6, align 8
  %36 = load %struct.Job*, %struct.Job** %7, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %35, %struct.Job* noundef %36)
  %37 = load %struct.Job*, %struct.Job** %6, align 8
  %38 = getelementptr inbounds %struct.Job, %struct.Job* %37, i32 1
  store %struct.Job* %38, %struct.Job** %6, align 8
  br label %10, !llvm.loop !17
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1) #4 comdat {
  %3 = alloca %struct.Job*, align 8
  %4 = alloca %struct.Job*, align 8
  store %struct.Job* %0, %struct.Job** %3, align 8
  store %struct.Job* %1, %struct.Job** %4, align 8
  %5 = load %struct.Job*, %struct.Job** %3, align 8
  %6 = load %struct.Job*, %struct.Job** %4, align 8
  call void @_ZSt4swapI3JobENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %5, %struct.Job* noundef nonnull align 4 dereferenceable(12) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapI3JobENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %0, %struct.Job* noundef nonnull align 4 dereferenceable(12) %1) #4 comdat {
  %3 = alloca %struct.Job*, align 8
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job, align 4
  store %struct.Job* %0, %struct.Job** %3, align 8
  store %struct.Job* %1, %struct.Job** %4, align 8
  %6 = load %struct.Job*, %struct.Job** %3, align 8
  %7 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %6) #3
  %8 = bitcast %struct.Job* %5 to i8*
  %9 = bitcast %struct.Job* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = load %struct.Job*, %struct.Job** %4, align 8
  %11 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %10) #3
  %12 = load %struct.Job*, %struct.Job** %3, align 8
  %13 = bitcast %struct.Job* %12 to i8*
  %14 = bitcast %struct.Job* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %5) #3
  %16 = load %struct.Job*, %struct.Job** %4, align 8
  %17 = bitcast %struct.Job* %16 to i8*
  %18 = bitcast %struct.Job* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, i1 (i64, i32, i64, i32)* %2) #6 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %struct.Job, align 4
  %9 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %11 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %11, align 8
  store %struct.Job* %0, %struct.Job** %5, align 8
  store %struct.Job* %1, %struct.Job** %6, align 8
  %12 = load %struct.Job*, %struct.Job** %5, align 8
  %13 = load %struct.Job*, %struct.Job** %6, align 8
  %14 = icmp eq %struct.Job* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %55

16:                                               ; preds = %3
  %17 = load %struct.Job*, %struct.Job** %5, align 8
  %18 = getelementptr inbounds %struct.Job, %struct.Job* %17, i64 1
  store %struct.Job* %18, %struct.Job** %7, align 8
  br label %19

19:                                               ; preds = %52, %16
  %20 = load %struct.Job*, %struct.Job** %7, align 8
  %21 = load %struct.Job*, %struct.Job** %6, align 8
  %22 = icmp ne %struct.Job* %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.Job*, %struct.Job** %7, align 8
  %25 = load %struct.Job*, %struct.Job** %5, align 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %4, %struct.Job* noundef %24, %struct.Job* noundef %25)
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.Job*, %struct.Job** %7, align 8
  %29 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %28) #3
  %30 = bitcast %struct.Job* %8 to i8*
  %31 = bitcast %struct.Job* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = load %struct.Job*, %struct.Job** %5, align 8
  %33 = load %struct.Job*, %struct.Job** %7, align 8
  %34 = load %struct.Job*, %struct.Job** %7, align 8
  %35 = getelementptr inbounds %struct.Job, %struct.Job* %34, i64 1
  %36 = call noundef %struct.Job* @_ZSt13move_backwardIP3JobS1_ET0_T_S3_S2_(%struct.Job* noundef %32, %struct.Job* noundef %33, %struct.Job* noundef %35)
  %37 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %8) #3
  %38 = load %struct.Job*, %struct.Job** %5, align 8
  %39 = bitcast %struct.Job* %38 to i8*
  %40 = bitcast %struct.Job* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  br label %51

41:                                               ; preds = %23
  %42 = load %struct.Job*, %struct.Job** %7, align 8
  %43 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %10 to i8*
  %44 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %10, i32 0, i32 0
  %46 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %45, align 8
  %47 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %46)
  %48 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %9, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %47, i1 (i64, i32, i64, i32)** %48, align 8
  %49 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %9, i32 0, i32 0
  %50 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %49, align 8
  call void @_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.Job* noundef %42, i1 (i64, i32, i64, i32)* %50)
  br label %51

51:                                               ; preds = %41, %27
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.Job*, %struct.Job** %7, align 8
  %54 = getelementptr inbounds %struct.Job, %struct.Job* %53, i32 1
  store %struct.Job* %54, %struct.Job** %7, align 8
  br label %19, !llvm.loop !18

55:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* noundef %0, %struct.Job* noundef %1, i1 (i64, i32, i64, i32)* %2) #6 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job*, align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %10, align 8
  store %struct.Job* %0, %struct.Job** %5, align 8
  store %struct.Job* %1, %struct.Job** %6, align 8
  %11 = load %struct.Job*, %struct.Job** %5, align 8
  store %struct.Job* %11, %struct.Job** %7, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.Job*, %struct.Job** %7, align 8
  %14 = load %struct.Job*, %struct.Job** %6, align 8
  %15 = icmp ne %struct.Job* %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.Job*, %struct.Job** %7, align 8
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %19 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %21 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %20, align 8
  %22 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %21)
  %23 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %8, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %22, i1 (i64, i32, i64, i32)** %23, align 8
  %24 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %8, i32 0, i32 0
  %25 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %24, align 8
  call void @_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.Job* noundef %17, i1 (i64, i32, i64, i32)* %25)
  br label %26

26:                                               ; preds = %16
  %27 = load %struct.Job*, %struct.Job** %7, align 8
  %28 = getelementptr inbounds %struct.Job, %struct.Job* %27, i32 1
  store %struct.Job* %28, %struct.Job** %7, align 8
  br label %12, !llvm.loop !19

29:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt13move_backwardIP3JobS1_ET0_T_S3_S2_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2) #6 comdat {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  %7 = load %struct.Job*, %struct.Job** %4, align 8
  %8 = call noundef %struct.Job* @_ZSt12__miter_baseIP3JobET_S2_(%struct.Job* noundef %7)
  %9 = load %struct.Job*, %struct.Job** %5, align 8
  %10 = call noundef %struct.Job* @_ZSt12__miter_baseIP3JobET_S2_(%struct.Job* noundef %9)
  %11 = load %struct.Job*, %struct.Job** %6, align 8
  %12 = call noundef %struct.Job* @_ZSt23__copy_move_backward_a2ILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* noundef %8, %struct.Job* noundef %10, %struct.Job* noundef %11)
  ret %struct.Job* %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.Job* noundef %0, i1 (i64, i32, i64, i32)* %1) #6 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job, align 4
  %6 = alloca %struct.Job*, align 8
  %7 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %3, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %1, i1 (i64, i32, i64, i32)** %7, align 8
  store %struct.Job* %0, %struct.Job** %4, align 8
  %8 = load %struct.Job*, %struct.Job** %4, align 8
  %9 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %8) #3
  %10 = bitcast %struct.Job* %5 to i8*
  %11 = bitcast %struct.Job* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  %12 = load %struct.Job*, %struct.Job** %4, align 8
  store %struct.Job* %12, %struct.Job** %6, align 8
  %13 = load %struct.Job*, %struct.Job** %6, align 8
  %14 = getelementptr inbounds %struct.Job, %struct.Job* %13, i32 -1
  store %struct.Job* %14, %struct.Job** %6, align 8
  br label %15

15:                                               ; preds = %18, %2
  %16 = load %struct.Job*, %struct.Job** %6, align 8
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %3, %struct.Job* noundef nonnull align 4 dereferenceable(12) %5, %struct.Job* noundef %16)
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.Job*, %struct.Job** %6, align 8
  %20 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %19) #3
  %21 = load %struct.Job*, %struct.Job** %4, align 8
  %22 = bitcast %struct.Job* %21 to i8*
  %23 = bitcast %struct.Job* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = load %struct.Job*, %struct.Job** %6, align 8
  store %struct.Job* %24, %struct.Job** %4, align 8
  %25 = load %struct.Job*, %struct.Job** %6, align 8
  %26 = getelementptr inbounds %struct.Job, %struct.Job* %25, i32 -1
  store %struct.Job* %26, %struct.Job** %6, align 8
  br label %15, !llvm.loop !20

27:                                               ; preds = %15
  %28 = call noundef nonnull align 4 dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* noundef nonnull align 4 dereferenceable(12) %5) #3
  %29 = load %struct.Job*, %struct.Job** %4, align 8
  %30 = bitcast %struct.Job* %29 to i8*
  %31 = bitcast %struct.Job* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %0) #6 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %0, i1 (i64, i32, i64, i32)** %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %3) #3
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %2, i32 0, i32 0
  %7 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8
  ret i1 (i64, i32, i64, i32)* %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt23__copy_move_backward_a2ILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2) #6 comdat {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  %7 = load %struct.Job*, %struct.Job** %4, align 8
  %8 = call noundef %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* noundef %7) #3
  %9 = load %struct.Job*, %struct.Job** %5, align 8
  %10 = call noundef %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* noundef %9) #3
  %11 = load %struct.Job*, %struct.Job** %6, align 8
  %12 = call noundef %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* noundef %11) #3
  %13 = call noundef %struct.Job* @_ZSt22__copy_move_backward_aILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* noundef %8, %struct.Job* noundef %10, %struct.Job* noundef %12)
  %14 = call noundef %struct.Job* @_ZSt12__niter_wrapIP3JobET_RKS2_S2_(%struct.Job** noundef nonnull align 8 dereferenceable(8) %6, %struct.Job* noundef %13)
  ret %struct.Job* %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt12__miter_baseIP3JobET_S2_(%struct.Job* noundef %0) #4 comdat {
  %2 = alloca %struct.Job*, align 8
  store %struct.Job* %0, %struct.Job** %2, align 8
  %3 = load %struct.Job*, %struct.Job** %2, align 8
  ret %struct.Job* %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt12__niter_wrapIP3JobET_RKS2_S2_(%struct.Job** noundef nonnull align 8 dereferenceable(8) %0, %struct.Job* noundef %1) #4 comdat {
  %3 = alloca %struct.Job**, align 8
  %4 = alloca %struct.Job*, align 8
  store %struct.Job** %0, %struct.Job*** %3, align 8
  store %struct.Job* %1, %struct.Job** %4, align 8
  %5 = load %struct.Job*, %struct.Job** %4, align 8
  ret %struct.Job* %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt22__copy_move_backward_aILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2) #6 comdat {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca i8, align 1
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %struct.Job*, %struct.Job** %4, align 8
  %9 = load %struct.Job*, %struct.Job** %5, align 8
  %10 = load %struct.Job*, %struct.Job** %6, align 8
  %11 = call noundef %struct.Job* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI3JobEEPT_PKS4_S7_S5_(%struct.Job* noundef %8, %struct.Job* noundef %9, %struct.Job* noundef %10)
  ret %struct.Job* %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* noundef %0) #4 comdat {
  %2 = alloca %struct.Job*, align 8
  store %struct.Job* %0, %struct.Job** %2, align 8
  %3 = load %struct.Job*, %struct.Job** %2, align 8
  ret %struct.Job* %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.Job* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI3JobEEPT_PKS4_S7_S5_(%struct.Job* noundef %0, %struct.Job* noundef %1, %struct.Job* noundef %2) #4 comdat align 2 {
  %4 = alloca %struct.Job*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca i64, align 8
  store %struct.Job* %0, %struct.Job** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  %8 = load %struct.Job*, %struct.Job** %5, align 8
  %9 = load %struct.Job*, %struct.Job** %4, align 8
  %10 = ptrtoint %struct.Job* %8 to i64
  %11 = ptrtoint %struct.Job* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.Job*, %struct.Job** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct.Job, %struct.Job* %17, i64 %19
  %21 = bitcast %struct.Job* %20 to i8*
  %22 = load %struct.Job*, %struct.Job** %4, align 8
  %23 = bitcast %struct.Job* %22 to i8*
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 12, %24
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.Job*, %struct.Job** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.Job, %struct.Job* %27, i64 %29
  ret %struct.Job* %30
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, %struct.Job* noundef nonnull align 4 dereferenceable(12) %1, %struct.Job* noundef %2) #6 comdat align 2 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %5 = alloca %struct.Job*, align 8
  %6 = alloca %struct.Job*, align 8
  %7 = alloca %struct.Job, align 4
  %8 = alloca %struct.Job, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %4, align 8
  store %struct.Job* %1, %struct.Job** %5, align 8
  store %struct.Job* %2, %struct.Job** %6, align 8
  %11 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %4, align 8
  %12 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %11, i32 0, i32 0
  %13 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %12, align 8
  %14 = load %struct.Job*, %struct.Job** %5, align 8
  %15 = bitcast %struct.Job* %7 to i8*
  %16 = bitcast %struct.Job* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.Job*, %struct.Job** %6, align 8
  %18 = bitcast %struct.Job* %8 to i8*
  %19 = bitcast %struct.Job* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = bitcast { i64, i32 }* %9 to i8*
  %21 = bitcast %struct.Job* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast { i64, i32 }* %10 to i8*
  %27 = bitcast %struct.Job* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call noundef zeroext i1 %13(i64 %23, i32 %25, i64 %29, i32 %31)
  ret i1 %32
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %3, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %5, i32 0, i32 0
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %8) #3
  %10 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %9, align 8
  store i1 (i64, i32, i64, i32)* %10, i1 (i64, i32, i64, i32)** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 8 dereferenceable(8) %0, i1 (i64, i32, i64, i32)* noundef %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %4 = alloca i1 (i64, i32, i64, i32)*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %3, align 8
  store i1 (i64, i32, i64, i32)* %1, i1 (i64, i32, i64, i32)** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5, i32 0, i32 0
  %7 = call noundef nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** noundef nonnull align 8 dereferenceable(8) %4) #3
  %8 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %7, align 8
  store i1 (i64, i32, i64, i32)* %8, i1 (i64, i32, i64, i32)** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_weighted_job_scheduling.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
