; ModuleID = 'temp/weighted-job-scheduling.cpp'
source_filename = "temp/weighted-job-scheduling.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

$_ZSt22__copy_move_backward_aILb1EP3JobS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP3JobET_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI3JobEEPT_PKS4_S7_S5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEclIS2_PS2_EEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEC2ES4_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [4 x %struct.Job] [%struct.Job { i32 3, i32 10, i32 20 }, %struct.Job { i32 1, i32 2, i32 50 }, %struct.Job { i32 6, i32 19, i32 100 }, %struct.Job { i32 2, i32 100, i32 200 }], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"The optimal profit is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_weighted_job_scheduling.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z14jobComparataor3JobS_(i64 %s1.coerce0, i32 %s1.coerce1, i64 %s2.coerce0, i32 %s2.coerce1) #4 {
entry:
  %s1 = alloca %struct.Job, align 4
  %coerce = alloca { i64, i32 }, align 4
  %s2 = alloca %struct.Job, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %s1.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %s1.coerce1, i32* %1, align 4
  %2 = bitcast %struct.Job* %s1 to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce1, i32 0, i32 0
  store i64 %s2.coerce0, i64* %4, align 4
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce1, i32 0, i32 1
  store i32 %s2.coerce1, i32* %5, align 4
  %6 = bitcast %struct.Job* %s2 to i8*
  %7 = bitcast { i64, i32 }* %coerce1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 12, i1 false)
  %finish = getelementptr inbounds %struct.Job, %struct.Job* %s1, i32 0, i32 1
  %8 = load i32, i32* %finish, align 4
  %finish2 = getelementptr inbounds %struct.Job, %struct.Job* %s2, i32 0, i32 1
  %9 = load i32, i32* %finish2, align 4
  %cmp = icmp slt i32 %8, %9
  ret i1 %cmp
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z17latestNonConflictP3Jobi(%struct.Job* %arr, i32 %i) #4 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca %struct.Job*, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Job* %arr, %struct.Job** %arr.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Job, %struct.Job* %2, i64 %idxprom
  %finish = getelementptr inbounds %struct.Job, %struct.Job* %arrayidx, i32 0, i32 1
  %4 = load i32, i32* %finish, align 4
  %5 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.Job, %struct.Job* %5, i64 %idxprom1
  %start = getelementptr inbounds %struct.Job, %struct.Job* %arrayidx2, i32 0, i32 0
  %7 = load i32, i32* %start, align 4
  %cmp3 = icmp sle i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z13findMaxProfitP3Jobi(%struct.Job* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca %struct.Job*, align 8
  %n.addr = alloca i32, align 4
  %table = alloca i32*, align 8
  %i = alloca i32, align 4
  %inclProf = alloca i32, align 4
  %l = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.Job* %arr, %struct.Job** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %1, i64 %idx.ext
  call void @_ZSt4sortIP3JobPFbS0_S0_EEvT_S4_T0_(%struct.Job* %0, %struct.Job* %add.ptr, i1 (i64, i32, i64, i32)* @_Z14jobComparataor3JobS_)
  %3 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %call = call i8* @_Znam(i64 %7) #10
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %table, align 8
  %9 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Job, %struct.Job* %9, i64 0
  %profit = getelementptr inbounds %struct.Job, %struct.Job* %arrayidx, i32 0, i32 2
  %10 = load i32, i32* %profit, align 4
  %11 = load i32*, i32** %table, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %arrayidx1, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx2 = getelementptr inbounds %struct.Job, %struct.Job* %14, i64 %idxprom
  %profit3 = getelementptr inbounds %struct.Job, %struct.Job* %arrayidx2, i32 0, i32 2
  %16 = load i32, i32* %profit3, align 4
  store i32 %16, i32* %inclProf, align 4
  %17 = load %struct.Job*, %struct.Job** %arr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %call4 = call i32 @_Z17latestNonConflictP3Jobi(%struct.Job* %17, i32 %18)
  store i32 %call4, i32* %l, align 4
  %19 = load i32, i32* %l, align 4
  %cmp5 = icmp ne i32 %19, -1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %20 = load i32*, i32** %table, align 8
  %21 = load i32, i32* %l, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %20, i64 %idxprom6
  %22 = load i32, i32* %arrayidx7, align 4
  %23 = load i32, i32* %inclProf, align 4
  %add = add nsw i32 %23, %22
  store i32 %add, i32* %inclProf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %24 = load i32*, i32** %table, align 8
  %25 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %24, i64 %idxprom8
  %call10 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %inclProf, i32* dereferenceable(4) %arrayidx9)
  %26 = load i32, i32* %call10, align 4
  %27 = load i32*, i32** %table, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 %idxprom11
  store i32 %26, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32*, i32** %table, align 8
  %31 = load i32, i32* %n.addr, align 4
  %sub13 = sub nsw i32 %31, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %30, i64 %idxprom14
  %32 = load i32, i32* %arrayidx15, align 4
  store i32 %32, i32* %result, align 4
  %33 = load i32*, i32** %table, align 8
  %isnull = icmp eq i32* %33, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end
  %34 = bitcast i32* %33 to i8*
  call void @_ZdaPv(i8* %34) #11
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end
  %35 = load i32, i32* %result, align 4
  ret i32 %35
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIP3JobPFbS0_S0_EEvT_S4_T0_(%struct.Job* %__first, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__comp.addr = alloca i1 (i64, i32, i64, i32)*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store i1 (i64, i32, i64, i32)* %__comp, i1 (i64, i32, i64, i32)** %__comp.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %2 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %__comp.addr, align 8
  %call = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb3JobS2_EEENS0_15_Iter_comp_iterIT_EES6_(i1 (i64, i32, i64, i32)* %2)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %call, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %3 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt6__sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %0, %struct.Job* %1, i1 (i64, i32, i64, i32)* %3)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #4 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #8

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #9 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [4 x %struct.Job], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x %struct.Job]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x %struct.Job]* @__const.main.arr to i8*), i64 48, i1 false)
  store i32 4, i32* %n, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [4 x %struct.Job], [4 x %struct.Job]* %arr, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %call1 = call i32 @_Z13findMaxProfitP3Jobi(%struct.Job* %arraydecay, i32 %1)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %__first, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %cmp = icmp ne %struct.Job* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %3 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %4 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %5 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %call = call i64 @_ZSt4__lgl(i64 %sub.ptr.div)
  %mul = mul nsw i64 %call, 2
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %8 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.Job* %2, %struct.Job* %3, i64 %mul, i1 (i64, i32, i64, i32)* %8)
  %9 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %10 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %11 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp2 to i8*
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp2, i32 0, i32 0
  %13 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive3, align 8
  call void @_ZSt22__final_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %9, %struct.Job* %10, i1 (i64, i32, i64, i32)* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb3JobS2_EEENS0_15_Iter_comp_iterIT_EES6_(i1 (i64, i32, i64, i32)* %__comp) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__comp.addr = alloca i1 (i64, i32, i64, i32)*, align 8
  store i1 (i64, i32, i64, i32)* %__comp, i1 (i64, i32, i64, i32)** %__comp.addr, align 8
  %call = call dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** dereferenceable(8) %__comp.addr) #3
  %0 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %call, align 8
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i1 (i64, i32, i64, i32)* %0)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %retval, i32 0, i32 0
  %1 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  ret i1 (i64, i32, i64, i32)* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.Job* %__first, %struct.Job* %__last, i64 %__depth_limit, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__cut = alloca %struct.Job*, align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__depth_limit.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %4 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %5 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %6 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %8 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive2, align 8
  call void @_ZSt14__partial_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* %3, %struct.Job* %4, %struct.Job* %5, i1 (i64, i32, i64, i32)* %8)
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %10 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %11 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %12 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %14 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive4, align 8
  %call = call %struct.Job* @_ZSt27__unguarded_partition_pivotIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_T0_(%struct.Job* %10, %struct.Job* %11, i1 (i64, i32, i64, i32)* %14)
  store %struct.Job* %call, %struct.Job** %__cut, align 8
  %15 = load %struct.Job*, %struct.Job** %__cut, align 8
  %16 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %17 = load i64, i64* %__depth_limit.addr, align 8
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %19 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %20 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive6, align 8
  call void @_ZSt16__introsort_loopIP3JoblN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.Job* %15, %struct.Job* %16, i64 %17, i1 (i64, i32, i64, i32)* %20)
  %21 = load %struct.Job*, %struct.Job** %__cut, align 8
  store %struct.Job* %21, %struct.Job** %__last.addr, align 8
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
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %__first, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %3 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %3, i64 16
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %6 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %2, %struct.Job* %add.ptr, i1 (i64, i32, i64, i32)* %6)
  %7 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.Job, %struct.Job* %7, i64 16
  %8 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %9 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %10 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %11 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive4, align 8
  call void @_ZSt26__unguarded_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %add.ptr2, %struct.Job* %8, i1 (i64, i32, i64, i32)* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %13 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %16 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive6, align 8
  call void @_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %12, %struct.Job* %13, i1 (i64, i32, i64, i32)* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* %__first, %struct.Job* %__middle, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__middle.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__middle, %struct.Job** %__middle.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__middle.addr, align 8
  %2 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %3 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive1, align 8
  call void @_ZSt13__heap_selectIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* %0, %struct.Job* %1, %struct.Job* %2, i1 (i64, i32, i64, i32)* %5)
  %6 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %7 = load %struct.Job*, %struct.Job** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* %6, %struct.Job* %7, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt27__unguarded_partition_pivotIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_T0_(%struct.Job* %__first, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__mid = alloca %struct.Job*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %2 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %0, i64 %div
  store %struct.Job* %add.ptr, %struct.Job** %__mid, align 8
  %3 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %4 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.Job, %struct.Job* %4, i64 1
  %5 = load %struct.Job*, %struct.Job** %__mid, align 8
  %6 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.Job, %struct.Job* %6, i64 -1
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp to i8*
  %8 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp, i32 0, i32 0
  %9 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive3, align 8
  call void @_ZSt22__move_median_to_firstIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.Job* %3, %struct.Job* %add.ptr1, %struct.Job* %5, %struct.Job* %add.ptr2, i1 (i64, i32, i64, i32)* %9)
  %10 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.Job, %struct.Job* %10, i64 1
  %11 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %12 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5 to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp5, i32 0, i32 0
  %15 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive6, align 8
  %call = call %struct.Job* @_ZSt21__unguarded_partitionIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_S8_T0_(%struct.Job* %add.ptr4, %struct.Job* %11, %struct.Job* %12, i1 (i64, i32, i64, i32)* %15)
  ret %struct.Job* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_(%struct.Job* %__first, %struct.Job* %__middle, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__middle.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__i = alloca %struct.Job*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__middle, %struct.Job** %__middle.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__middle.addr, align 8
  call void @_ZSt11__make_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* %0, %struct.Job* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  %2 = load %struct.Job*, %struct.Job** %__middle.addr, align 8
  store %struct.Job* %2, %struct.Job** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.Job*, %struct.Job** %__i, align 8
  %4 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %cmp = icmp ult %struct.Job* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Job*, %struct.Job** %__i, align 8
  %6 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %5, %struct.Job* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %8 = load %struct.Job*, %struct.Job** %__middle.addr, align 8
  %9 = load %struct.Job*, %struct.Job** %__i, align 8
  call void @_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_(%struct.Job* %7, %struct.Job* %8, %struct.Job* %9, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.Job*, %struct.Job** %__i, align 8
  %incdec.ptr = getelementptr inbounds %struct.Job, %struct.Job* %10, i32 1
  store %struct.Job* %incdec.ptr, %struct.Job** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* %__first, %struct.Job* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.Job, %struct.Job* %2, i32 -1
  store %struct.Job* %incdec.ptr, %struct.Job** %__last.addr, align 8
  %3 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %4 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %5 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_(%struct.Job* %3, %struct.Job* %4, %struct.Job* %5, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_RT0_(%struct.Job* %__first, %struct.Job* %__last, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca %struct.Job, align 4
  %agg.tmp = alloca %struct.Job, align 4
  %agg.tmp6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %3 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.Job* %2 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.Job* %3 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 12
  store i64 %sub.ptr.div4, i64* %__len, align 8
  %4 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %4, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end9
  %5 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %6 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %5, i64 %6
  %call = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %add.ptr) #3
  %7 = bitcast %struct.Job* %__value to i8*
  %8 = bitcast %struct.Job* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %10 = load i64, i64* %__parent, align 8
  %11 = load i64, i64* %__len, align 8
  %call5 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__value) #3
  %12 = bitcast %struct.Job* %agg.tmp to i8*
  %13 = bitcast %struct.Job* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %15 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp6 to i8*
  %16 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %18 = bitcast %struct.Job* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %20 = load i64, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp6, i32 0, i32 0
  %23 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  call void @_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.Job* %9, i64 %10, i64 %11, i64 %20, i32 %22, i1 (i64, i32, i64, i32)* %23)
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
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %struct.Job* %__it1, %struct.Job* %__it2) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__it1.addr = alloca %struct.Job*, align 8
  %__it2.addr = alloca %struct.Job*, align 8
  %agg.tmp = alloca %struct.Job, align 4
  %agg.tmp2 = alloca %struct.Job, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp2.coerce = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store %struct.Job* %__it1, %struct.Job** %__it1.addr, align 8
  store %struct.Job* %__it2, %struct.Job** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %0 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %_M_comp, align 8
  %1 = load %struct.Job*, %struct.Job** %__it1.addr, align 8
  %2 = bitcast %struct.Job* %agg.tmp to i8*
  %3 = bitcast %struct.Job* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load %struct.Job*, %struct.Job** %__it2.addr, align 8
  %5 = bitcast %struct.Job* %agg.tmp2 to i8*
  %6 = bitcast %struct.Job* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %8 = bitcast %struct.Job* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = bitcast { i64, i32 }* %agg.tmp2.coerce to i8*
  %14 = bitcast %struct.Job* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %call = call zeroext i1 %0(i64 %10, i32 %12, i64 %16, i32 %18)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_RT0_(%struct.Job* %__first, %struct.Job* %__last, %struct.Job* %__result, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__result.addr = alloca %struct.Job*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__value = alloca %struct.Job, align 4
  %agg.tmp = alloca %struct.Job, align 4
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %struct.Job* %__result, %struct.Job** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %call = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %0) #3
  %1 = bitcast %struct.Job* %__value to i8*
  %2 = bitcast %struct.Job* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %call1 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %3) #3
  %4 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %5 = bitcast %struct.Job* %4 to i8*
  %6 = bitcast %struct.Job* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %8 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %9 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  %call2 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__value) #3
  %10 = bitcast %struct.Job* %agg.tmp to i8*
  %11 = bitcast %struct.Job* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %13 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3 to i8*
  %14 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %16 = bitcast %struct.Job* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp3, i32 0, i32 0
  %21 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  call void @_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.Job* %7, i64 0, i64 %sub.ptr.div, i64 %18, i32 %20, i1 (i64, i32, i64, i32)* %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__t) #4 comdat {
entry:
  %__t.addr = alloca %struct.Job*, align 8
  store %struct.Job* %__t, %struct.Job** %__t.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__t.addr, align 8
  ret %struct.Job* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIP3JoblS0_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_T0_S9_T1_T2_(%struct.Job* %__first, i64 %__holeIndex, i64 %__len, i64 %__value.coerce0, i32 %__value.coerce1, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__value = alloca %struct.Job, align 4
  %coerce = alloca { i64, i32 }, align 4
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %agg.tmp = alloca %struct.Job, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %__value.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %__value.coerce1, i32* %1, align 4
  %2 = bitcast %struct.Job* %__value to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
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
  %9 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %10 = load i64, i64* %__secondChild, align 8
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %9, i64 %10
  %11 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %12 = load i64, i64* %__secondChild, align 8
  %sub1 = sub nsw i64 %12, 1
  %add.ptr2 = getelementptr inbounds %struct.Job, %struct.Job* %11, i64 %sub1
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %add.ptr, %struct.Job* %add.ptr2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %13, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %15 = load i64, i64* %__secondChild, align 8
  %add.ptr3 = getelementptr inbounds %struct.Job, %struct.Job* %14, i64 %15
  %call4 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %add.ptr3) #3
  %16 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %17 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr5 = getelementptr inbounds %struct.Job, %struct.Job* %16, i64 %17
  %18 = bitcast %struct.Job* %add.ptr5 to i8*
  %19 = bitcast %struct.Job* %call4 to i8*
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
  %25 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %26 = load i64, i64* %__secondChild, align 8
  %sub13 = sub nsw i64 %26, 1
  %add.ptr14 = getelementptr inbounds %struct.Job, %struct.Job* %25, i64 %sub13
  %call15 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %add.ptr14) #3
  %27 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %28 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr16 = getelementptr inbounds %struct.Job, %struct.Job* %27, i64 %28
  %29 = bitcast %struct.Job* %add.ptr16 to i8*
  %30 = bitcast %struct.Job* %call15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = load i64, i64* %__secondChild, align 8
  %sub17 = sub nsw i64 %31, 1
  store i64 %sub17, i64* %__holeIndex.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %land.lhs.true, %while.end
  %call19 = call dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #3
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %__cmp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %call19)
  %32 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %33 = load i64, i64* %__holeIndex.addr, align 8
  %34 = load i64, i64* %__topIndex, align 8
  %call20 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__value) #3
  %35 = bitcast %struct.Job* %agg.tmp to i8*
  %36 = bitcast %struct.Job* %call20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %38 = bitcast %struct.Job* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  call void @_ZSt11__push_heapIP3JoblS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.Job* %32, i64 %33, i64 %34, i64 %40, i32 %42, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* dereferenceable(8) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__t, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__t.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__t.addr, align 8
  ret %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i32 0, i32 0
  %call = call dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** dereferenceable(8) %_M_comp2) #3
  %1 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %call, align 8
  store i1 (i64, i32, i64, i32)* %1, i1 (i64, i32, i64, i32)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIP3JoblS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEEvT_T0_S9_T1_RT2_(%struct.Job* %__first, i64 %__holeIndex, i64 %__topIndex, i64 %__value.coerce0, i32 %__value.coerce1, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* dereferenceable(8) %__comp) #0 comdat {
entry:
  %__value = alloca %struct.Job, align 4
  %coerce = alloca { i64, i32 }, align 4
  %__first.addr = alloca %struct.Job*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %__parent = alloca i64, align 8
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %__value.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %__value.coerce1, i32* %1, align 4
  %2 = bitcast %struct.Job* %__value to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
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
  %8 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %9 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %8, i64 %9
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %7, %struct.Job* %add.ptr, %struct.Job* dereferenceable(12) %__value)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %12 = load i64, i64* %__parent, align 8
  %add.ptr1 = getelementptr inbounds %struct.Job, %struct.Job* %11, i64 %12
  %call2 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %add.ptr1) #3
  %13 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %14 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.Job, %struct.Job* %13, i64 %14
  %15 = bitcast %struct.Job* %add.ptr3 to i8*
  %16 = bitcast %struct.Job* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load i64, i64* %__parent, align 8
  store i64 %17, i64* %__holeIndex.addr, align 8
  %18 = load i64, i64* %__holeIndex.addr, align 8
  %sub4 = sub nsw i64 %18, 1
  %div5 = sdiv i64 %sub4, 2
  store i64 %div5, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call6 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__value) #3
  %19 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %20 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.Job, %struct.Job* %19, i64 %20
  %21 = bitcast %struct.Job* %add.ptr7 to i8*
  %22 = bitcast %struct.Job* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** dereferenceable(8) %__t) #4 comdat {
entry:
  %__t.addr = alloca i1 (i64, i32, i64, i32)**, align 8
  store i1 (i64, i32, i64, i32)** %__t, i1 (i64, i32, i64, i32)*** %__t.addr, align 8
  %0 = load i1 (i64, i32, i64, i32)**, i1 (i64, i32, i64, i32)*** %__t.addr, align 8
  ret i1 (i64, i32, i64, i32)** %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb3JobS2_EEclIPS2_S2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %struct.Job* %__it, %struct.Job* dereferenceable(12) %__val) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %__it.addr = alloca %struct.Job*, align 8
  %__val.addr = alloca %struct.Job*, align 8
  %agg.tmp = alloca %struct.Job, align 4
  %agg.tmp2 = alloca %struct.Job, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp2.coerce = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  store %struct.Job* %__it, %struct.Job** %__it.addr, align 8
  store %struct.Job* %__val, %struct.Job** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %this1, i32 0, i32 0
  %0 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %_M_comp, align 8
  %1 = load %struct.Job*, %struct.Job** %__it.addr, align 8
  %2 = bitcast %struct.Job* %agg.tmp to i8*
  %3 = bitcast %struct.Job* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load %struct.Job*, %struct.Job** %__val.addr, align 8
  %5 = bitcast %struct.Job* %agg.tmp2 to i8*
  %6 = bitcast %struct.Job* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %8 = bitcast %struct.Job* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = bitcast { i64, i32 }* %agg.tmp2.coerce to i8*
  %14 = bitcast %struct.Job* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %call = call zeroext i1 %0(i64 %10, i32 %12, i64 %16, i32 %18)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_S8_T0_(%struct.Job* %__result, %struct.Job* %__a, %struct.Job* %__b, %struct.Job* %__c, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__result.addr = alloca %struct.Job*, align 8
  %__a.addr = alloca %struct.Job*, align 8
  %__b.addr = alloca %struct.Job*, align 8
  %__c.addr = alloca %struct.Job*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__result, %struct.Job** %__result.addr, align 8
  store %struct.Job* %__a, %struct.Job** %__a.addr, align 8
  store %struct.Job* %__b, %struct.Job** %__b.addr, align 8
  store %struct.Job* %__c, %struct.Job** %__c.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %0, %struct.Job* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  %3 = load %struct.Job*, %struct.Job** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %2, %struct.Job* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %5 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %4, %struct.Job* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  %7 = load %struct.Job*, %struct.Job** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %6, %struct.Job* %7)
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %8 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %9 = load %struct.Job*, %struct.Job** %__c.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %8, %struct.Job* %9)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %10 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %11 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %10, %struct.Job* %11)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end16

if.else7:                                         ; preds = %entry
  %12 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  %13 = load %struct.Job*, %struct.Job** %__c.addr, align 8
  %call8 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %12, %struct.Job* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %15 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %14, %struct.Job* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  %17 = load %struct.Job*, %struct.Job** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %16, %struct.Job* %17)
  br i1 %call11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %18 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %19 = load %struct.Job*, %struct.Job** %__c.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %18, %struct.Job* %19)
  br label %if.end14

if.else13:                                        ; preds = %if.else10
  %20 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %21 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %20, %struct.Job* %21)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt21__unguarded_partitionIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET_S8_S8_S8_T0_(%struct.Job* %__first, %struct.Job* %__last, %struct.Job* %__pivot, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__pivot.addr = alloca %struct.Job*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %struct.Job* %__pivot, %struct.Job** %__pivot.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__pivot.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %0, %struct.Job* %1)
  br i1 %call, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %2 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.Job, %struct.Job* %2, i32 1
  store %struct.Job* %incdec.ptr, %struct.Job** %__first.addr, align 8
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %3 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.Job, %struct.Job* %3, i32 -1
  store %struct.Job* %incdec.ptr3, %struct.Job** %__last.addr, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %4 = load %struct.Job*, %struct.Job** %__pivot.addr, align 8
  %5 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %4, %struct.Job* %5)
  br i1 %call5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %6 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.Job, %struct.Job* %6, i32 -1
  store %struct.Job* %incdec.ptr7, %struct.Job** %__last.addr, align 8
  br label %while.cond4

while.end8:                                       ; preds = %while.cond4
  %7 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %8 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %cmp = icmp ult %struct.Job* %7, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  %9 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  ret %struct.Job* %9

if.end:                                           ; preds = %while.end8
  %10 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %11 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  call void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %10, %struct.Job* %11)
  %12 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %incdec.ptr9 = getelementptr inbounds %struct.Job, %struct.Job* %12, i32 1
  store %struct.Job* %incdec.ptr9, %struct.Job** %__first.addr, align 8
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIP3JobS1_EvT_T0_(%struct.Job* %__a, %struct.Job* %__b) #4 comdat {
entry:
  %__a.addr = alloca %struct.Job*, align 8
  %__b.addr = alloca %struct.Job*, align 8
  store %struct.Job* %__a, %struct.Job** %__a.addr, align 8
  store %struct.Job* %__b, %struct.Job** %__b.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  call void @_ZSt4swapI3JobENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.Job* dereferenceable(12) %0, %struct.Job* dereferenceable(12) %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapI3JobENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.Job* dereferenceable(12) %__a, %struct.Job* dereferenceable(12) %__b) #4 comdat {
entry:
  %__a.addr = alloca %struct.Job*, align 8
  %__b.addr = alloca %struct.Job*, align 8
  %__tmp = alloca %struct.Job, align 4
  store %struct.Job* %__a, %struct.Job** %__a.addr, align 8
  store %struct.Job* %__b, %struct.Job** %__b.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  %call = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %0) #3
  %1 = bitcast %struct.Job* %__tmp to i8*
  %2 = bitcast %struct.Job* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  %call1 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %3) #3
  %4 = load %struct.Job*, %struct.Job** %__a.addr, align 8
  %5 = bitcast %struct.Job* %4 to i8*
  %6 = bitcast %struct.Job* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %call2 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__tmp) #3
  %7 = load %struct.Job*, %struct.Job** %__b.addr, align 8
  %8 = bitcast %struct.Job* %7 to i8*
  %9 = bitcast %struct.Job* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %__first, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__i = alloca %struct.Job*, align 8
  %__val = alloca %struct.Job, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %agg.tmp7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %cmp = icmp eq %struct.Job* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %2, i64 1
  store %struct.Job* %add.ptr, %struct.Job** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.Job*, %struct.Job** %__i, align 8
  %4 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %cmp1 = icmp ne %struct.Job* %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Job*, %struct.Job** %__i, align 8
  %6 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %call = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %struct.Job* %5, %struct.Job* %6)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  %7 = load %struct.Job*, %struct.Job** %__i, align 8
  %call3 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %7) #3
  %8 = bitcast %struct.Job* %__val to i8*
  %9 = bitcast %struct.Job* %call3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %11 = load %struct.Job*, %struct.Job** %__i, align 8
  %12 = load %struct.Job*, %struct.Job** %__i, align 8
  %add.ptr4 = getelementptr inbounds %struct.Job, %struct.Job* %12, i64 1
  %call5 = call %struct.Job* @_ZSt13move_backwardIP3JobS1_ET0_T_S3_S2_(%struct.Job* %10, %struct.Job* %11, %struct.Job* %add.ptr4)
  %call6 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__val) #3
  %13 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %14 = bitcast %struct.Job* %13 to i8*
  %15 = bitcast %struct.Job* %call6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  br label %if.end12

if.else:                                          ; preds = %for.body
  %16 = load %struct.Job*, %struct.Job** %__i, align 8
  %17 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp7 to i8*
  %18 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %coerce.dive8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp7, i32 0, i32 0
  %19 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive8, align 8
  %call9 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %19)
  %coerce.dive10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %call9, i1 (i64, i32, i64, i32)** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  %20 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive11, align 8
  call void @_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.Job* %16, i1 (i64, i32, i64, i32)* %20)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %21 = load %struct.Job*, %struct.Job** %__i, align 8
  %incdec.ptr = getelementptr inbounds %struct.Job, %struct.Job* %21, i32 1
  store %struct.Job* %incdec.ptr, %struct.Job** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIP3JobN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.Job* %__first, %struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__i = alloca %struct.Job*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  store %struct.Job* %0, %struct.Job** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.Job*, %struct.Job** %__i, align 8
  %2 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %cmp = icmp ne %struct.Job* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Job*, %struct.Job** %__i, align 8
  %4 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp1 to i8*
  %5 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %agg.tmp1, i32 0, i32 0
  %6 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive2, align 8
  %call = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %6)
  %coerce.dive3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %call, i1 (i64, i32, i64, i32)** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %agg.tmp, i32 0, i32 0
  %7 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive4, align 8
  call void @_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.Job* %3, i1 (i64, i32, i64, i32)* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.Job*, %struct.Job** %__i, align 8
  %incdec.ptr = getelementptr inbounds %struct.Job, %struct.Job* %8, i32 1
  store %struct.Job* %incdec.ptr, %struct.Job** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt13move_backwardIP3JobS1_ET0_T_S3_S2_(%struct.Job* %__first, %struct.Job* %__last, %struct.Job* %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__result.addr = alloca %struct.Job*, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %struct.Job* %__result, %struct.Job** %__result.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %call = call %struct.Job* @_ZSt12__miter_baseIP3JobET_S2_(%struct.Job* %0)
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %call1 = call %struct.Job* @_ZSt12__miter_baseIP3JobET_S2_(%struct.Job* %1)
  %2 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %call2 = call %struct.Job* @_ZSt23__copy_move_backward_a2ILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* %call, %struct.Job* %call1, %struct.Job* %2)
  ret %struct.Job* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIP3JobN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.Job* %__last, i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__val = alloca %struct.Job, align 4
  %__next = alloca %struct.Job*, align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %call = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %0) #3
  %1 = bitcast %struct.Job* %__val to i8*
  %2 = bitcast %struct.Job* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  store %struct.Job* %3, %struct.Job** %__next, align 8
  %4 = load %struct.Job*, %struct.Job** %__next, align 8
  %incdec.ptr = getelementptr inbounds %struct.Job, %struct.Job* %4, i32 -1
  store %struct.Job* %incdec.ptr, %struct.Job** %__next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.Job*, %struct.Job** %__next, align 8
  %call1 = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %__comp, %struct.Job* dereferenceable(12) %__val, %struct.Job* %5)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.Job*, %struct.Job** %__next, align 8
  %call2 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %6) #3
  %7 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %8 = bitcast %struct.Job* %7 to i8*
  %9 = bitcast %struct.Job* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = load %struct.Job*, %struct.Job** %__next, align 8
  store %struct.Job* %10, %struct.Job** %__last.addr, align 8
  %11 = load %struct.Job*, %struct.Job** %__next, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.Job, %struct.Job* %11, i32 -1
  store %struct.Job* %incdec.ptr3, %struct.Job** %__next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call4 = call dereferenceable(12) %struct.Job* @_ZSt4moveIR3JobEONSt16remove_referenceIT_E4typeEOS3_(%struct.Job* dereferenceable(12) %__val) #3
  %12 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %13 = bitcast %struct.Job* %12 to i8*
  %14 = bitcast %struct.Job* %call4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb3JobS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %__comp.coerce) #0 comdat {
entry:
  %retval = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %coerce.dive = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, i32 0, i32 0
  store i1 (i64, i32, i64, i32)* %__comp.coerce, i1 (i64, i32, i64, i32)** %coerce.dive, align 8
  %call = call dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) #3
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %retval, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %call)
  %coerce.dive1 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %retval, i32 0, i32 0
  %0 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %coerce.dive1, align 8
  ret i1 (i64, i32, i64, i32)* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt23__copy_move_backward_a2ILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* %__first, %struct.Job* %__last, %struct.Job* %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__result.addr = alloca %struct.Job*, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %struct.Job* %__result, %struct.Job** %__result.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %call = call %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* %0)
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %call1 = call %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* %1)
  %2 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %call2 = call %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* %2)
  %call3 = call %struct.Job* @_ZSt22__copy_move_backward_aILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* %call, %struct.Job* %call1, %struct.Job* %call2)
  ret %struct.Job* %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt12__miter_baseIP3JobET_S2_(%struct.Job* %__it) #4 comdat {
entry:
  %__it.addr = alloca %struct.Job*, align 8
  store %struct.Job* %__it, %struct.Job** %__it.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__it.addr, align 8
  ret %struct.Job* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt22__copy_move_backward_aILb1EP3JobS1_ET1_T0_S3_S2_(%struct.Job* %__first, %struct.Job* %__last, %struct.Job* %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__result.addr = alloca %struct.Job*, align 8
  %__simple = alloca i8, align 1
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %struct.Job* %__result, %struct.Job** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %2 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %call = call %struct.Job* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI3JobEEPT_PKS4_S7_S5_(%struct.Job* %0, %struct.Job* %1, %struct.Job* %2)
  ret %struct.Job* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.Job* @_ZSt12__niter_baseIP3JobET_S2_(%struct.Job* %__it) #4 comdat {
entry:
  %__it.addr = alloca %struct.Job*, align 8
  store %struct.Job* %__it, %struct.Job** %__it.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__it.addr, align 8
  ret %struct.Job* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.Job* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI3JobEEPT_PKS4_S7_S5_(%struct.Job* %__first, %struct.Job* %__last, %struct.Job* %__result) #4 comdat align 2 {
entry:
  %__first.addr = alloca %struct.Job*, align 8
  %__last.addr = alloca %struct.Job*, align 8
  %__result.addr = alloca %struct.Job*, align 8
  %_Num = alloca i64, align 8
  store %struct.Job* %__first, %struct.Job** %__first.addr, align 8
  store %struct.Job* %__last, %struct.Job** %__last.addr, align 8
  store %struct.Job* %__result, %struct.Job** %__result.addr, align 8
  %0 = load %struct.Job*, %struct.Job** %__last.addr, align 8
  %1 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Job* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Job* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 12
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %struct.Job, %struct.Job* %3, i64 %idx.neg
  %5 = bitcast %struct.Job* %add.ptr to i8*
  %6 = load %struct.Job*, %struct.Job** %__first.addr, align 8
  %7 = bitcast %struct.Job* %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 12, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.Job*, %struct.Job** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %struct.Job, %struct.Job* %9, i64 %idx.neg1
  ret %struct.Job* %add.ptr2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %struct.Job* dereferenceable(12) %__val, %struct.Job* %__it) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %__val.addr = alloca %struct.Job*, align 8
  %__it.addr = alloca %struct.Job*, align 8
  %agg.tmp = alloca %struct.Job, align 4
  %agg.tmp2 = alloca %struct.Job, align 4
  %agg.tmp.coerce = alloca { i64, i32 }, align 4
  %agg.tmp2.coerce = alloca { i64, i32 }, align 4
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  store %struct.Job* %__val, %struct.Job** %__val.addr, align 8
  store %struct.Job* %__it, %struct.Job** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this1, i32 0, i32 0
  %0 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %_M_comp, align 8
  %1 = load %struct.Job*, %struct.Job** %__val.addr, align 8
  %2 = bitcast %struct.Job* %agg.tmp to i8*
  %3 = bitcast %struct.Job* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load %struct.Job*, %struct.Job** %__it.addr, align 8
  %5 = bitcast %struct.Job* %agg.tmp2 to i8*
  %6 = bitcast %struct.Job* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = bitcast { i64, i32 }* %agg.tmp.coerce to i8*
  %8 = bitcast %struct.Job* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp.coerce, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = bitcast { i64, i32 }* %agg.tmp2.coerce to i8*
  %14 = bitcast %struct.Job* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %agg.tmp2.coerce, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %call = call zeroext i1 %0(i64 %10, i32 %12, i64 %16, i32 %18)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb3JobS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* dereferenceable(8) %__comp) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %this1, i32 0, i32 0
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %__comp.addr, align 8
  %_M_comp2 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i32 0, i32 0
  %call = call dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** dereferenceable(8) %_M_comp2) #3
  %1 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %call, align 8
  store i1 (i64, i32, i64, i32)* %1, i1 (i64, i32, i64, i32)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb3JobS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, i1 (i64, i32, i64, i32)* %__comp) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %__comp.addr = alloca i1 (i64, i32, i64, i32)*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  store i1 (i64, i32, i64, i32)* %__comp, i1 (i64, i32, i64, i32)** %__comp.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %this.addr, align 8
  %_M_comp = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb3JobS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** dereferenceable(8) %__comp.addr) #3
  %0 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %call, align 8
  store i1 (i64, i32, i64, i32)* %0, i1 (i64, i32, i64, i32)** %_M_comp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_weighted_job_scheduling.cpp() #0 section ".text.startup" {
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
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { builtin }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
