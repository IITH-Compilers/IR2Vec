; ModuleID = 'temp/kth-smallestlargest-element-unsorted-array-set-3-worst-case-linear-time.cpp'
source_filename = "temp/kth-smallestlargest-element-unsorted-array-set-3-worst-case-linear-time.cpp"
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
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_less_iter" = type { i8 }

$_ZSt4sortIPiEvT_S1_ = comdat any

$_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_ = comdat any

$_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_ = comdat any

$_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_ = comdat any

$_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_ = comdat any

$_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_ = comdat any

$_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_ = comdat any

$_ZSt9iter_swapIPiS0_EvT_T0_ = comdat any

$_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt13move_backwardIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 12, i32 3, i32 5, i32 7, i32 4, i32 19, i32 26], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [26 x i8] c"K'th smallest element is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_kth_smallestlargest_element_unsorted_array_set_3_worst_case_linear_time.cpp, i8* null }]

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

; Function Attrs: noinline uwtable
define dso_local i32 @_Z10findMedianPii(i32* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32*, i32** %arr.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext
  call void @_ZSt4sortIPiEvT_S1_(i32* %0, i32* %add.ptr)
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %4, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  ret i32 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt4sortIPiEvT_S1_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %0, i32* %1)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z11kthSmallestPiiii(i32* %arr, i32 %l, i32 %r, i32 %k) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %medOfMed = alloca i32, align 4
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %k.addr, align 4
  %2 = load i32, i32* %r.addr, align 4
  %3 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %cmp1 = icmp sle i32 %1, %add
  br i1 %cmp1, label %if.then, label %if.end48

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %r.addr, align 4
  %5 = load i32, i32* %l.addr, align 4
  %sub2 = sub nsw i32 %4, %5
  %add3 = add nsw i32 %sub2, 1
  store i32 %add3, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %6, 4
  %div = sdiv i32 %add4, 5
  %7 = zext i32 %div to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %7, align 16
  store i64 %7, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %div5 = sdiv i32 %10, 5
  %cmp6 = icmp slt i32 %9, %div5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %l.addr, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  %13 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %13, 5
  %idx.ext7 = sext i32 %mul to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %add.ptr, i64 %idx.ext7
  %call = call i32 @_Z10findMedianPii(i32* %add.ptr8, i32 5)
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %16, 5
  %17 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %mul9, %17
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.end
  %18 = load i32*, i32** %arr.addr, align 8
  %19 = load i32, i32* %l.addr, align 4
  %idx.ext12 = sext i32 %19 to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %18, i64 %idx.ext12
  %20 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %20, 5
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %add.ptr13, i64 %idx.ext15
  %21 = load i32, i32* %n, align 4
  %rem = srem i32 %21, 5
  %call17 = call i32 @_Z10findMedianPii(i32* %add.ptr16, i32 %rem)
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %vla, i64 %idxprom18
  store i32 %call17, i32* %arrayidx19, align 4
  %23 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %for.end
  %24 = load i32, i32* %i, align 4
  %cmp21 = icmp eq i32 %24, 1
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %25, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %vla, i64 %idxprom23
  %26 = load i32, i32* %arrayidx24, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %27, 1
  %28 = load i32, i32* %i, align 4
  %div26 = sdiv i32 %28, 2
  %call27 = call i32 @_Z11kthSmallestPiiii(i32* %vla, i32 0, i32 %sub25, i32 %div26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %call27, %cond.false ]
  store i32 %cond, i32* %medOfMed, align 4
  %29 = load i32*, i32** %arr.addr, align 8
  %30 = load i32, i32* %l.addr, align 4
  %31 = load i32, i32* %r.addr, align 4
  %32 = load i32, i32* %medOfMed, align 4
  %call28 = call i32 @_Z9partitionPiiii(i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %call28, i32* %pos, align 4
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %l.addr, align 4
  %sub29 = sub nsw i32 %33, %34
  %35 = load i32, i32* %k.addr, align 4
  %sub30 = sub nsw i32 %35, 1
  %cmp31 = icmp eq i32 %sub29, %sub30
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %cond.end
  %36 = load i32*, i32** %arr.addr, align 8
  %37 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %36, i64 %idxprom33
  %38 = load i32, i32* %arrayidx34, align 4
  store i32 %38, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %cond.end
  %39 = load i32, i32* %pos, align 4
  %40 = load i32, i32* %l.addr, align 4
  %sub36 = sub nsw i32 %39, %40
  %41 = load i32, i32* %k.addr, align 4
  %sub37 = sub nsw i32 %41, 1
  %cmp38 = icmp sgt i32 %sub36, %sub37
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  %42 = load i32*, i32** %arr.addr, align 8
  %43 = load i32, i32* %l.addr, align 4
  %44 = load i32, i32* %pos, align 4
  %sub40 = sub nsw i32 %44, 1
  %45 = load i32, i32* %k.addr, align 4
  %call41 = call i32 @_Z11kthSmallestPiiii(i32* %42, i32 %43, i32 %sub40, i32 %45)
  store i32 %call41, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %46 = load i32*, i32** %arr.addr, align 8
  %47 = load i32, i32* %pos, align 4
  %add43 = add nsw i32 %47, 1
  %48 = load i32, i32* %r.addr, align 4
  %49 = load i32, i32* %k.addr, align 4
  %50 = load i32, i32* %pos, align 4
  %sub44 = sub nsw i32 %49, %50
  %51 = load i32, i32* %l.addr, align 4
  %add45 = add nsw i32 %sub44, %51
  %sub46 = sub nsw i32 %add45, 1
  %call47 = call i32 @_Z11kthSmallestPiiii(i32* %46, i32 %add43, i32 %48, i32 %sub46)
  store i32 %call47, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then39, %if.then32
  %52 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %return

if.end48:                                         ; preds = %land.lhs.true, %entry
  store i32 2147483647, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %cleanup
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z9partitionPiiii(i32* %arr, i32 %l, i32 %r, i32 %x) #4 {
entry:
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %r.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32*, i32** %arr.addr, align 8
  %11 = load i32, i32* %r.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  call void @_Z4swapPiS_(i32* %arrayidx3, i32* %arrayidx5)
  %12 = load i32, i32* %l.addr, align 4
  store i32 %12, i32* %i, align 4
  %13 = load i32, i32* %l.addr, align 4
  store i32 %13, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.end
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %r.addr, align 4
  %sub = sub nsw i32 %15, 1
  %cmp7 = icmp sle i32 %14, %sub
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %16 = load i32*, i32** %arr.addr, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %19 = load i32, i32* %x.addr, align 4
  %cmp11 = icmp sle i32 %18, %19
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %for.body8
  %20 = load i32*, i32** %arr.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom13
  %22 = load i32*, i32** %arr.addr, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom15
  call void @_Z4swapPiS_(i32* %arrayidx14, i32* %arrayidx16)
  %24 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %for.body8
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %25 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond6

for.end21:                                        ; preds = %for.cond6
  %26 = load i32*, i32** %arr.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 %idxprom22
  %28 = load i32*, i32** %arr.addr, align 8
  %29 = load i32, i32* %r.addr, align 4
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  call void @_Z4swapPiS_(i32* %arrayidx23, i32* %arrayidx25)
  %30 = load i32, i32* %i, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z4swapPiS_(i32* %a, i32* %b) #4 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 16
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.arr to i8*), i64 28, i1 false)
  store i32 7, i32* %n, align 4
  store i32 3, i32* %k, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %k, align 4
  %call1 = call i32 @_Z11kthSmallestPiiii(i32* %arraydecay, i32 0, i32 %sub, i32 %2)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %cmp = icmp ne i32* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %__first.addr, align 8
  %3 = load i32*, i32** %__last.addr, align 8
  %4 = load i32*, i32** %__last.addr, align 8
  %5 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call = call i64 @_ZSt4__lgl(i64 %sub.ptr.div)
  %mul = mul nsw i64 %call, 2
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* %2, i32* %3, i64 %mul)
  %6 = load i32*, i32** %__first.addr, align 8
  %7 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %6, i32* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #4 comdat {
entry:
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* %__first, i32* %__last, i64 %__depth_limit) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__cut = alloca i32*, align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i64 %__depth_limit, i64* %__depth_limit.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %__depth_limit.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i32*, i32** %__first.addr, align 8
  %4 = load i32*, i32** %__last.addr, align 8
  %5 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(i32* %3, i32* %4, i32* %5)
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i64, i64* %__depth_limit.addr, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %__depth_limit.addr, align 8
  %7 = load i32*, i32** %__first.addr, align 8
  %8 = load i32*, i32** %__last.addr, align 8
  %call = call i32* @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(i32* %7, i32* %8)
  store i32* %call, i32** %__cut, align 8
  %9 = load i32*, i32** %__cut, align 8
  %10 = load i32*, i32** %__last.addr, align 8
  %11 = load i64, i64* %__depth_limit.addr, align 8
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* %9, i32* %10, i64 %11)
  %12 = load i32*, i32** %__cut, align 8
  store i32* %12, i32** %__last.addr, align 8
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
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %__first.addr, align 8
  %3 = load i32*, i32** %__first.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 16
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %2, i32* %add.ptr)
  %4 = load i32*, i32** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds i32, i32* %4, i64 16
  %5 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %add.ptr1, i32* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32*, i32** %__first.addr, align 8
  %7 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %6, i32* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(i32* %__first, i32* %__middle, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__middle.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__middle, i32** %__middle.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__middle.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(i32* %0, i32* %1, i32* %2)
  %3 = load i32*, i32** %__first.addr, align 8
  %4 = load i32*, i32** %__middle.addr, align 8
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(i32* %3, i32* %4, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__mid = alloca i32*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %2 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %div
  store i32* %add.ptr, i32** %__mid, align 8
  %3 = load i32*, i32** %__first.addr, align 8
  %4 = load i32*, i32** %__first.addr, align 8
  %add.ptr1 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32*, i32** %__mid, align 8
  %6 = load i32*, i32** %__last.addr, align 8
  %add.ptr2 = getelementptr inbounds i32, i32* %6, i64 -1
  call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(i32* %3, i32* %add.ptr1, i32* %5, i32* %add.ptr2)
  %7 = load i32*, i32** %__first.addr, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32*, i32** %__last.addr, align 8
  %9 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(i32* %add.ptr3, i32* %8, i32* %9)
  ret i32* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(i32* %__first, i32* %__middle, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__middle.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__i = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__middle, i32** %__middle.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__middle.addr, align 8
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(i32* %0, i32* %1, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp)
  %2 = load i32*, i32** %__middle.addr, align 8
  store i32* %2, i32** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32*, i32** %__i, align 8
  %4 = load i32*, i32** %__last.addr, align 8
  %cmp = icmp ult i32* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %__i, align 8
  %6 = load i32*, i32** %__first.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %5, i32* %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32*, i32** %__first.addr, align 8
  %8 = load i32*, i32** %__middle.addr, align 8
  %9 = load i32*, i32** %__i, align 8
  call void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(i32* %7, i32* %8, i32* %9, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32*, i32** %__i, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(i32* %__first, i32* %__last, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32*, i32** %__last.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** %__last.addr, align 8
  %3 = load i32*, i32** %__first.addr, align 8
  %4 = load i32*, i32** %__last.addr, align 8
  %5 = load i32*, i32** %__last.addr, align 8
  %6 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  call void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(i32* %3, i32* %4, i32* %5, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(i32* %__first, i32* %__last, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca i32, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  %0 = load i32*, i32** %__last.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %__last.addr, align 8
  %3 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i32* %2 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i32* %3 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 4
  store i64 %sub.ptr.div4, i64* %__len, align 8
  %4 = load i64, i64* %__len, align 8
  %sub = sub nsw i64 %4, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end8
  %5 = load i32*, i32** %__first.addr, align 8
  %6 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %6
  %call = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %add.ptr) #3
  %7 = load i32, i32* %call, align 4
  store i32 %7, i32* %__value, align 4
  %8 = load i32*, i32** %__first.addr, align 8
  %9 = load i64, i64* %__parent, align 8
  %10 = load i64, i64* %__len, align 8
  %call5 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__value) #3
  %11 = load i32, i32* %call5, align 4
  %12 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(i32* %8, i64 %9, i64 %10, i32 %11)
  %13 = load i64, i64* %__parent, align 8
  %cmp6 = icmp eq i64 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  br label %return

if.end8:                                          ; preds = %while.body
  %14 = load i64, i64* %__parent, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %__parent, align 8
  br label %while.body

return:                                           ; preds = %if.then7, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, i32* %__it1, i32* %__it2) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__it1.addr = alloca i32*, align 8
  %__it2.addr = alloca i32*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  store i32* %__it1, i32** %__it1.addr, align 8
  store i32* %__it2, i32** %__it2.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %this.addr, align 8
  %0 = load i32*, i32** %__it1.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__it2.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(i32* %__first, i32* %__last, i32* %__result, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  %__value = alloca i32, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  %0 = load i32*, i32** %__result.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %0) #3
  %1 = load i32, i32* %call, align 4
  store i32 %1, i32* %__value, align 4
  %2 = load i32*, i32** %__first.addr, align 8
  %call1 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %2) #3
  %3 = load i32, i32* %call1, align 4
  %4 = load i32*, i32** %__result.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32*, i32** %__first.addr, align 8
  %6 = load i32*, i32** %__last.addr, align 8
  %7 = load i32*, i32** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call2 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__value) #3
  %8 = load i32, i32* %call2, align 4
  %9 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__comp.addr, align 8
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(i32* %5, i64 0, i64 %sub.ptr.div, i32 %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__t) #4 comdat {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %0 = load i32*, i32** %__t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(i32* %__first, i64 %__holeIndex, i64 %__len, i32 %__value) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca i32, align 4
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  store i32 %__value, i32* %__value.addr, align 4
  %0 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %0, i64* %__topIndex, align 8
  %1 = load i64, i64* %__holeIndex.addr, align 8
  store i64 %1, i64* %__secondChild, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %__secondChild, align 8
  %3 = load i64, i64* %__len.addr, align 8
  %sub = sub nsw i64 %3, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %__secondChild, align 8
  %add = add nsw i64 %4, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %__secondChild, align 8
  %5 = load i32*, i32** %__first.addr, align 8
  %6 = load i64, i64* %__secondChild, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %6
  %7 = load i32*, i32** %__first.addr, align 8
  %8 = load i64, i64* %__secondChild, align 8
  %sub1 = sub nsw i64 %8, 1
  %add.ptr2 = getelementptr inbounds i32, i32* %7, i64 %sub1
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %add.ptr, i32* %add.ptr2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i64, i64* %__secondChild, align 8
  %dec = add nsw i64 %9, -1
  store i64 %dec, i64* %__secondChild, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32*, i32** %__first.addr, align 8
  %11 = load i64, i64* %__secondChild, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %10, i64 %11
  %call4 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %add.ptr3) #3
  %12 = load i32, i32* %call4, align 4
  %13 = load i32*, i32** %__first.addr, align 8
  %14 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr5 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %add.ptr5, align 4
  %15 = load i64, i64* %__secondChild, align 8
  store i64 %15, i64* %__holeIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %__len.addr, align 8
  %and = and i64 %16, 1
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %while.end
  %17 = load i64, i64* %__secondChild, align 8
  %18 = load i64, i64* %__len.addr, align 8
  %sub7 = sub nsw i64 %18, 2
  %div8 = sdiv i64 %sub7, 2
  %cmp9 = icmp eq i64 %17, %div8
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %land.lhs.true
  %19 = load i64, i64* %__secondChild, align 8
  %add11 = add nsw i64 %19, 1
  %mul12 = mul nsw i64 2, %add11
  store i64 %mul12, i64* %__secondChild, align 8
  %20 = load i32*, i32** %__first.addr, align 8
  %21 = load i64, i64* %__secondChild, align 8
  %sub13 = sub nsw i64 %21, 1
  %add.ptr14 = getelementptr inbounds i32, i32* %20, i64 %sub13
  %call15 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %add.ptr14) #3
  %22 = load i32, i32* %call15, align 4
  %23 = load i32*, i32** %__first.addr, align 8
  %24 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr16 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %add.ptr16, align 4
  %25 = load i64, i64* %__secondChild, align 8
  %sub17 = sub nsw i64 %25, 1
  store i64 %sub17, i64* %__holeIndex.addr, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %land.lhs.true, %while.end
  %call19 = call dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__comp) #3
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"struct.__gnu_cxx::__ops::_Iter_less_val"* %__cmp)
  %26 = load i32*, i32** %__first.addr, align 8
  %27 = load i64, i64* %__holeIndex.addr, align 8
  %28 = load i64, i64* %__topIndex, align 8
  %call20 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__value.addr) #3
  %29 = load i32, i32* %call20, align 4
  call void @_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(i32* %26, i64 %27, i64 %28, i32 %29, %"struct.__gnu_cxx::__ops::_Iter_less_val"* dereferenceable(1) %__cmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"struct.__gnu_cxx::__ops::_Iter_less_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* dereferenceable(1) %__t) #4 comdat {
entry:
  %__t.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__t, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__t.addr, align 8
  %0 = load %"struct.__gnu_cxx::__ops::_Iter_less_iter"*, %"struct.__gnu_cxx::__ops::_Iter_less_iter"** %__t.addr, align 8
  ret %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(%"struct.__gnu_cxx::__ops::_Iter_less_val"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_val"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_val"*, %"struct.__gnu_cxx::__ops::_Iter_less_val"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(i32* %__first, i64 %__holeIndex, i64 %__topIndex, i32 %__value, %"struct.__gnu_cxx::__ops::_Iter_less_val"* dereferenceable(1) %__comp) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca i32, align 4
  %__comp.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val"*, align 8
  %__parent = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__holeIndex, i64* %__holeIndex.addr, align 8
  store i64 %__topIndex, i64* %__topIndex.addr, align 8
  store i32 %__value, i32* %__value.addr, align 4
  store %"struct.__gnu_cxx::__ops::_Iter_less_val"* %__comp, %"struct.__gnu_cxx::__ops::_Iter_less_val"** %__comp.addr, align 8
  %0 = load i64, i64* %__holeIndex.addr, align 8
  %sub = sub nsw i64 %0, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, i64* %__parent, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__holeIndex.addr, align 8
  %2 = load i64, i64* %__topIndex.addr, align 8
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %"struct.__gnu_cxx::__ops::_Iter_less_val"*, %"struct.__gnu_cxx::__ops::_Iter_less_val"** %__comp.addr, align 8
  %4 = load i32*, i32** %__first.addr, align 8
  %5 = load i64, i64* %__parent, align 8
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %5
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_less_val"* %3, i32* %add.ptr, i32* dereferenceable(4) %__value.addr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32*, i32** %__first.addr, align 8
  %8 = load i64, i64* %__parent, align 8
  %add.ptr1 = getelementptr inbounds i32, i32* %7, i64 %8
  %call2 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %add.ptr1) #3
  %9 = load i32, i32* %call2, align 4
  %10 = load i32*, i32** %__first.addr, align 8
  %11 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %add.ptr3, align 4
  %12 = load i64, i64* %__parent, align 8
  store i64 %12, i64* %__holeIndex.addr, align 8
  %13 = load i64, i64* %__holeIndex.addr, align 8
  %sub4 = sub nsw i64 %13, 1
  %div5 = sdiv i64 %sub4, 2
  store i64 %div5, i64* %__parent, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call6 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__value.addr) #3
  %14 = load i32, i32* %call6, align 4
  %15 = load i32*, i32** %__first.addr, align 8
  %16 = load i64, i64* %__holeIndex.addr, align 8
  %add.ptr7 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %add.ptr7, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_less_val"* %this, i32* %__it, i32* dereferenceable(4) %__val) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val"*, align 8
  %__it.addr = alloca i32*, align 8
  %__val.addr = alloca i32*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_less_val"* %this, %"struct.__gnu_cxx::__ops::_Iter_less_val"** %this.addr, align 8
  store i32* %__it, i32** %__it.addr, align 8
  store i32* %__val, i32** %__val.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Iter_less_val"*, %"struct.__gnu_cxx::__ops::_Iter_less_val"** %this.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__val.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(i32* %__result, i32* %__a, i32* %__b, i32* %__c) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__result.addr = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  %__c.addr = alloca i32*, align 8
  store i32* %__result, i32** %__result.addr, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  store i32* %__c, i32** %__c.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32*, i32** %__b.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %0, i32* %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32*, i32** %__c.addr, align 8
  %call1 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %2, i32* %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load i32*, i32** %__result.addr, align 8
  %5 = load i32*, i32** %__b.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %4, i32* %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load i32*, i32** %__a.addr, align 8
  %7 = load i32*, i32** %__c.addr, align 8
  %call3 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %6, i32* %7)
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %8 = load i32*, i32** %__result.addr, align 8
  %9 = load i32*, i32** %__c.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %8, i32* %9)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %10 = load i32*, i32** %__result.addr, align 8
  %11 = load i32*, i32** %__a.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %10, i32* %11)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end16

if.else7:                                         ; preds = %entry
  %12 = load i32*, i32** %__a.addr, align 8
  %13 = load i32*, i32** %__c.addr, align 8
  %call8 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %12, i32* %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load i32*, i32** %__result.addr, align 8
  %15 = load i32*, i32** %__a.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %14, i32* %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load i32*, i32** %__b.addr, align 8
  %17 = load i32*, i32** %__c.addr, align 8
  %call11 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %16, i32* %17)
  br i1 %call11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %18 = load i32*, i32** %__result.addr, align 8
  %19 = load i32*, i32** %__c.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %18, i32* %19)
  br label %if.end14

if.else13:                                        ; preds = %if.else10
  %20 = load i32*, i32** %__result.addr, align 8
  %21 = load i32*, i32** %__b.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %20, i32* %21)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(i32* %__first, i32* %__last, i32* %__pivot) #4 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__pivot.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__pivot, i32** %__pivot.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__pivot.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %0, i32* %1)
  br i1 %call, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %2 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %3 = load i32*, i32** %__last.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i32, i32* %3, i32 -1
  store i32* %incdec.ptr3, i32** %__last.addr, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %4 = load i32*, i32** %__pivot.addr, align 8
  %5 = load i32*, i32** %__last.addr, align 8
  %call5 = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %4, i32* %5)
  br i1 %call5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %6 = load i32*, i32** %__last.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %6, i32 -1
  store i32* %incdec.ptr7, i32** %__last.addr, align 8
  br label %while.cond4

while.end8:                                       ; preds = %while.cond4
  %7 = load i32*, i32** %__first.addr, align 8
  %8 = load i32*, i32** %__last.addr, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  %9 = load i32*, i32** %__first.addr, align 8
  ret i32* %9

if.end:                                           ; preds = %while.end8
  %10 = load i32*, i32** %__first.addr, align 8
  %11 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %10, i32* %11)
  %12 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr9, i32** %__first.addr, align 8
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPiS0_EvT_T0_(i32* %__a, i32* %__b) #4 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32*, i32** %__b.addr, align 8
  call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i32* dereferenceable(4) %0, i32* dereferenceable(4) %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #4 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %0) #3
  %1 = load i32, i32* %call, align 4
  store i32 %1, i32* %__tmp, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %call1 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %2) #3
  %3 = load i32, i32* %call1, align 4
  %4 = load i32*, i32** %__a.addr, align 8
  store i32 %3, i32* %4, align 4
  %call2 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__tmp) #3
  %5 = load i32, i32* %call2, align 4
  %6 = load i32*, i32** %__b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__i = alloca i32*, align 8
  %__val = alloca i32, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %agg.tmp7 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  %cmp = icmp eq i32* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %__first.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 1
  store i32* %add.ptr, i32** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32*, i32** %__i, align 8
  %4 = load i32*, i32** %__last.addr, align 8
  %cmp1 = icmp ne i32* %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %__i, align 8
  %6 = load i32*, i32** %__first.addr, align 8
  %call = call zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_less_iter"* %__comp, i32* %5, i32* %6)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  %7 = load i32*, i32** %__i, align 8
  %call3 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %7) #3
  %8 = load i32, i32* %call3, align 4
  store i32 %8, i32* %__val, align 4
  %9 = load i32*, i32** %__first.addr, align 8
  %10 = load i32*, i32** %__i, align 8
  %11 = load i32*, i32** %__i, align 8
  %add.ptr4 = getelementptr inbounds i32, i32* %11, i64 1
  %call5 = call i32* @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(i32* %9, i32* %10, i32* %add.ptr4)
  %call6 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__val) #3
  %12 = load i32, i32* %call6, align 4
  %13 = load i32*, i32** %__first.addr, align 8
  store i32 %12, i32* %13, align 4
  br label %if.end8

if.else:                                          ; preds = %for.body
  %14 = load i32*, i32** %__i, align 8
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(i32* %14)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %15 = load i32*, i32** %__i, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* %__first, i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__i = alloca i32*, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  store i32* %0, i32** %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*, i32** %__i, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  %cmp = icmp ne i32* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %__i, align 8
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(i32* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32*, i32** %__i, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #0 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %__result.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store i32* %__result, i32** %__result.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %0)
  %1 = load i32*, i32** %__last.addr, align 8
  %call1 = call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %1)
  %2 = load i32*, i32** %__result.addr, align 8
  %call2 = call i32* @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call1, i32* %2)
  ret i32* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(i32* %__last) #0 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %__last.addr = alloca i32*, align 8
  %__val = alloca i32, align 4
  %__next = alloca i32*, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__last.addr, align 8
  %call = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %0) #3
  %1 = load i32, i32* %call, align 4
  store i32 %1, i32* %__val, align 4
  %2 = load i32*, i32** %__last.addr, align 8
  store i32* %2, i32** %__next, align 8
  %3 = load i32*, i32** %__next, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 -1
  store i32* %incdec.ptr, i32** %__next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32*, i32** %__next, align 8
  %call1 = call zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_less_iter"* %__comp, i32* dereferenceable(4) %__val, i32* %4)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32*, i32** %__next, align 8
  %call2 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %5) #3
  %6 = load i32, i32* %call2, align 4
  %7 = load i32*, i32** %__last.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32*, i32** %__next, align 8
  store i32* %8, i32** %__last.addr, align 8
  %9 = load i32*, i32** %__next, align 8
  %incdec.ptr3 = getelementptr inbounds i32, i32* %9, i32 -1
  store i32* %incdec.ptr3, i32** %__next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call4 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %__val) #3
  %10 = load i32, i32* %call4, align 4
  %11 = load i32*, i32** %__last.addr, align 8
  store i32 %10, i32* %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #4 comdat {
entry:
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #0 comdat {
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
  %call3 = call i32* @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call1, i32* %call2)
  ret i32* %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__it) #4 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #0 comdat {
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
  %call = call i32* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %0, i32* %1, i32* %2)
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
define linkonce_odr dso_local i32* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #4 comdat align 2 {
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
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.neg
  %5 = bitcast i32* %add.ptr to i8*
  %6 = load i32*, i32** %__first.addr, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 4, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds i32, i32* %9, i64 %idx.neg1
  ret i32* %add.ptr2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_less_iter"* %this, i32* dereferenceable(4) %__val, i32* %__it) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter"*, align 8
  %__val.addr = alloca i32*, align 8
  %__it.addr = alloca i32*, align 8
  store %"struct.__gnu_cxx::__ops::_Val_less_iter"* %this, %"struct.__gnu_cxx::__ops::_Val_less_iter"** %this.addr, align 8
  store i32* %__val, i32** %__val.addr, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__ops::_Val_less_iter"*, %"struct.__gnu_cxx::__ops::_Val_less_iter"** %this.addr, align 8
  %0 = load i32*, i32** %__val.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__it.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_kth_smallestlargest_element_unsorted_array_set_3_worst_case_linear_time.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
