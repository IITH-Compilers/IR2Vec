; ModuleID = 'temp/snake-ladder.cpp'
source_filename = "temp/snake-ladder.cpp"
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
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl" }
%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl" = type { %struct.queueEntry**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%struct.queueEntry = type { i32, i32 }
%"struct.std::_Deque_iterator" = type { %struct.queueEntry*, %struct.queueEntry*, %struct.queueEntry*, %struct.queueEntry** }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }

$_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEEC2IS3_vEEv = comdat any

$_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_ = comdat any

$_ZNKSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5emptyEv = comdat any

$_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5frontEv = comdat any

$_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE3popEv = comdat any

$_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EED2Ev = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE3endEv = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_ = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_ = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_ = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE10deallocateERS1_PS0_m = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryE10deallocateEPS1_m = comdat any

$_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIP10queueEntryEE10deallocateERS2_PS1_m = comdat any

$_ZNSaIP10queueEntryED2Ev = comdat any

$_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIP10queueEntryEC2IS_EERKSaIT_E = comdat any

$_ZN9__gnu_cxx13new_allocatorIP10queueEntryEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP10queueEntryE10deallocateEPS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP10queueEntryED2Ev = comdat any

$_ZNSaI10queueEntryED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryED2Ev = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EEC2Ev = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EEC2Ev = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_initialize_mapEm = comdat any

$_ZNSaI10queueEntryEC2Ev = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_ = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_ = comdat any

$_ZNSt16allocator_traitsISaIP10queueEntryEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP10queueEntryE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE8max_sizeEv = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP10queueEntryET_S3_ = comdat any

$_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPP10queueEntryET_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_ = comdat any

$_ZNKSt5dequeI10queueEntrySaIS0_EE5emptyEv = comdat any

$_ZSteqI10queueEntryRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE5frontEv = comdat any

$_ZNKSt15_Deque_iteratorI10queueEntryRS0_PS0_EdeEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE9pop_frontEv = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE16_M_pop_front_auxEv = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryE7destroyIS1_EEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [29 x i8] c"Min Dice throws required is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_snake_ladder.cpp, i8* null }]

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
define dso_local i32 @_Z16getMinDiceThrowsPii(i32* %move, i32 %N) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %move.addr = alloca i32*, align 8
  %N.addr = alloca i32, align 4
  %visited = alloca i8*, align 8
  %i = alloca i32, align 4
  %q = alloca %"class.std::queue", align 8
  %s = alloca %struct.queueEntry, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %qe = alloca %struct.queueEntry, align 4
  %v = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca %struct.queueEntry, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @_Znam(i64 %conv) #11
  store i8* %call, i8** %visited, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %visited, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEEC2IS3_vEEv(%"class.std::queue"* %q)
  %6 = load i8*, i8** %visited, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 1, i8* %arrayidx1, align 1
  %7 = bitcast %struct.queueEntry* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  invoke void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::queue"* %q, %struct.queueEntry* dereferenceable(8) %s)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %for.end34, %invoke.cont
  %call3 = invoke zeroext i1 @_ZNKSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5emptyEv(%"class.std::queue"* %q)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %while.cond
  %lnot = xor i1 %call3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont2
  %call5 = invoke dereferenceable(8) %struct.queueEntry* @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5frontEv(%"class.std::queue"* %q)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  %8 = bitcast %struct.queueEntry* %qe to i8*
  %9 = bitcast %struct.queueEntry* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 8, i1 false)
  %v6 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %qe, i32 0, i32 0
  %10 = load i32, i32* %v6, align 4
  store i32 %10, i32* %v, align 4
  %11 = load i32, i32* %v, align 4
  %12 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 %12, 1
  %cmp7 = icmp eq i32 %11, %sub
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont4
  br label %while.end

lpad:                                             ; preds = %if.end29, %if.end, %while.body, %while.cond, %for.end
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  call void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev(%"class.std::queue"* %q) #3
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont4
  invoke void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE3popEv(%"class.std::queue"* %q)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %if.end
  %16 = load i32, i32* %v, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc32, %invoke.cont8
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %v, align 4
  %add10 = add nsw i32 %18, 6
  %cmp11 = icmp sle i32 %17, %add10
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond9
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %N.addr, align 4
  %cmp12 = icmp slt i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond9
  %21 = phi i1 [ false, %for.cond9 ], [ %cmp12, %land.rhs ]
  br i1 %21, label %for.body13, label %for.end34

for.body13:                                       ; preds = %land.end
  %22 = load i8*, i8** %visited, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 %idxprom14
  %24 = load i8, i8* %arrayidx15, align 1
  %tobool = trunc i8 %24 to i1
  br i1 %tobool, label %if.end31, label %if.then16

if.then16:                                        ; preds = %for.body13
  %dist = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %qe, i32 0, i32 1
  %25 = load i32, i32* %dist, align 4
  %add17 = add nsw i32 %25, 1
  %dist18 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %a, i32 0, i32 1
  store i32 %add17, i32* %dist18, align 4
  %26 = load i8*, i8** %visited, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %26, i64 %idxprom19
  store i8 1, i8* %arrayidx20, align 1
  %28 = load i32*, i32** %move.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  %30 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp ne i32 %30, -1
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then16
  %31 = load i32*, i32** %move.addr, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 %idxprom25
  %33 = load i32, i32* %arrayidx26, align 4
  %v27 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %a, i32 0, i32 0
  store i32 %33, i32* %v27, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then16
  %34 = load i32, i32* %j, align 4
  %v28 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %a, i32 0, i32 0
  store i32 %34, i32* %v28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  invoke void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::queue"* %q, %struct.queueEntry* dereferenceable(8) %a)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %if.end29
  br label %if.end31

if.end31:                                         ; preds = %invoke.cont30, %for.body13
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %35 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %35, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond9

for.end34:                                        ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %if.then, %invoke.cont2
  %dist35 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %qe, i32 0, i32 1
  %36 = load i32, i32* %dist35, align 4
  call void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev(%"class.std::queue"* %q) #3
  ret i32 %36

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val36
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #4

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEEC2IS3_vEEv(%"class.std::queue"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeI10queueEntrySaIS0_EEC2Ev(%"class.std::deque"* %c)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::queue"* %this, %struct.queueEntry* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  %__x.addr = alloca %struct.queueEntry*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  store %struct.queueEntry* %__x, %struct.queueEntry** %__x.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %0 = load %struct.queueEntry*, %struct.queueEntry** %__x.addr, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE9push_backERKS0_(%"class.std::deque"* %c, %struct.queueEntry* dereferenceable(8) %0)
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5emptyEv(%"class.std::queue"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %call = call zeroext i1 @_ZNKSt5dequeI10queueEntrySaIS0_EE5emptyEv(%"class.std::deque"* %c) #3
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %struct.queueEntry* @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5frontEv(%"class.std::queue"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %struct.queueEntry* @_ZNSt5dequeI10queueEntrySaIS0_EE5frontEv(%"class.std::deque"* %c) #3
  ret %struct.queueEntry* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE3popEv(%"class.std::queue"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE9pop_frontEv(%"class.std::deque"* %c) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev(%"class.std::queue"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeI10queueEntrySaIS0_EED2Ev(%"class.std::deque"* %c) #3
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #7 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 30, i32* %N, align 4
  %0 = load i32, i32* %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 2
  store i32 21, i32* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 4
  store i32 7, i32* %arrayidx2, align 16
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 10
  store i32 25, i32* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 19
  store i32 28, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %vla, i64 26
  store i32 0, i32* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 20
  store i32 8, i32* %arrayidx6, align 16
  %arrayidx7 = getelementptr inbounds i32, i32* %vla, i64 16
  store i32 3, i32* %arrayidx7, align 16
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 18
  store i32 6, i32* %arrayidx8, align 8
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %N, align 4
  %call9 = call i32 @_Z16getMinDiceThrowsPii(i32* %vla, i32 %7)
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call9)
  store i32 0, i32* %retval, align 4
  %8 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %8)
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EED2Ev(%"class.std::deque"* %this) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %this1) #3
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"class.std::deque"* %this1) #3
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0) #3
  invoke void @_ZNSt5dequeI10queueEntrySaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_(%"class.std::deque"* %this1, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev(%"class.std::_Deque_base"* %1) #3
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev(%"class.std::_Deque_base"* %5) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1) %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::deque"*, align 8
  %0 = bitcast %"struct.std::_Deque_iterator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::deque"*, align 8
  %0 = bitcast %"struct.std::_Deque_iterator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 0
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map, align 8
  %tobool = icmp ne %struct.queueEntry** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node, align 8
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node4, align 8
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %2, i64 1
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this1, %struct.queueEntry** %1, %struct.queueEntry** %add.ptr) #3
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl5, i32 0, i32 0
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map6, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %4 = load i64, i64* %_M_map_size, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %this1, %struct.queueEntry** %3, i64 %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl8) #3
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
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* dereferenceable(32) %__x) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur2, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load %struct.queueEntry*, %struct.queueEntry** %_M_first3, align 8
  store %struct.queueEntry* %3, %struct.queueEntry** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load %struct.queueEntry*, %struct.queueEntry** %_M_last4, align 8
  store %struct.queueEntry* %5, %struct.queueEntry** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node5, align 8
  store %struct.queueEntry** %7, %struct.queueEntry*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this, %struct.queueEntry** %__nstart, %struct.queueEntry** %__nfinish) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca %struct.queueEntry**, align 8
  %__nfinish.addr = alloca %struct.queueEntry**, align 8
  %__n = alloca %struct.queueEntry**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.queueEntry** %__nstart, %struct.queueEntry*** %__nstart.addr, align 8
  store %struct.queueEntry** %__nfinish, %struct.queueEntry*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__nstart.addr, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__n, align 8
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__nfinish.addr, align 8
  %cmp = icmp ult %struct.queueEntry** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %__n, align 8
  %4 = load %struct.queueEntry*, %struct.queueEntry** %3, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %this1, %struct.queueEntry* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.queueEntry**, %struct.queueEntry*** %__n, align 8
  %incdec.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %5, i32 1
  store %struct.queueEntry** %incdec.ptr, %struct.queueEntry*** %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %this, %struct.queueEntry** %__p, i64 %__n) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca %struct.queueEntry**, align 8
  %__n.addr = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.queueEntry** %__p, %struct.queueEntry*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  call void @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.0"* sret %__map_alloc, %"class.std::_Deque_base"* %this1) #3
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__p.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt16allocator_traitsISaIP10queueEntryEE10deallocateERS2_PS1_m(%"class.std::allocator.0"* dereferenceable(1) %__map_alloc, %struct.queueEntry** %0, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"*, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI10queueEntryED2Ev(%"class.std::allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %this, %struct.queueEntry* %__p) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %1 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  %call = invoke i64 @_ZSt16__deque_buf_sizem(i64 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt16allocator_traitsISaI10queueEntryEE10deallocateERS1_PS0_m(%"class.std::allocator"* dereferenceable(1) %0, %struct.queueEntry* %1, i64 %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #12
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI10queueEntryEE10deallocateERS1_PS0_m(%"class.std::allocator"* dereferenceable(1) %__a, %struct.queueEntry* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %1, %struct.queueEntry* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt16__deque_buf_sizem(i64 %__size) #6 comdat {
entry:
  %__size.addr = alloca i64, align 8
  store i64 %__size, i64* %__size.addr, align 8
  %0 = load i64, i64* %__size.addr, align 8
  %cmp = icmp ult i64 %0, 512
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %__size.addr, align 8
  %div = udiv i64 512, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* %this, %struct.queueEntry* %__p, i64 %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  %2 = bitcast %struct.queueEntry* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.0"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #6 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %0 = bitcast %"class.std::allocator.0"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this1) #3
  call void @_ZNSaIP10queueEntryEC2IS_EERKSaIT_E(%"class.std::allocator.0"* %agg.result, %"class.std::allocator"* dereferenceable(1) %call) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP10queueEntryEE10deallocateERS2_PS1_m(%"class.std::allocator.0"* dereferenceable(1) %__a, %struct.queueEntry** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca %struct.queueEntry**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store %struct.queueEntry** %__p, %struct.queueEntry*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.1"* %1, %struct.queueEntry** %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator.1"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIP10queueEntryEC2IS_EERKSaIT_E(%"class.std::allocator.0"* %this, %"class.std::allocator"* dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.1"* %this, %struct.queueEntry** %__p, i64 %0) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca %struct.queueEntry**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store %struct.queueEntry** %__p, %struct.queueEntry*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__p.addr, align 8
  %2 = bitcast %struct.queueEntry** %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI10queueEntryED2Ev(%"class.std::allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EEC2Ev(%"class.std::deque"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EEC2Ev(%"class.std::_Deque_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl)
  invoke void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"*, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaI10queueEntryEC2Ev(%"class.std::allocator"* %0) #3
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this1, i32 0, i32 0
  store %struct.queueEntry** null, %struct.queueEntry*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this1, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %_M_start) #3
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %this1, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %_M_finish) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  %__nstart = alloca %struct.queueEntry**, align 8
  %__nfinish = alloca %struct.queueEntry**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load i64, i64* %__num_elements.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %div = udiv i64 %0, %call
  %add = add i64 %div, 1
  store i64 %add, i64* %__num_nodes, align 8
  store i64 8, i64* %ref.tmp, align 8
  %1 = load i64, i64* %__num_nodes, align 8
  %add3 = add i64 %1, 2
  store i64 %add3, i64* %ref.tmp2, align 8
  %call4 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %ref.tmp2)
  %2 = load i64, i64* %call4, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  store i64 %2, i64* %_M_map_size, align 8
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %3 = load i64, i64* %_M_map_size6, align 8
  %call7 = call %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this1, i64 %3)
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl8, i32 0, i32 0
  store %struct.queueEntry** %call7, %struct.queueEntry*** %_M_map, align 8
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map10 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl9, i32 0, i32 0
  %4 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map10, align 8
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size12 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl11, i32 0, i32 1
  %5 = load i64, i64* %_M_map_size12, align 8
  %6 = load i64, i64* %__num_nodes, align 8
  %sub = sub i64 %5, %6
  %div13 = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %4, i64 %div13
  store %struct.queueEntry** %add.ptr, %struct.queueEntry*** %__nstart, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %__nstart, align 8
  %8 = load i64, i64* %__num_nodes, align 8
  %add.ptr14 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %7, i64 %8
  store %struct.queueEntry** %add.ptr14, %struct.queueEntry*** %__nfinish, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %__nstart, align 8
  %10 = load %struct.queueEntry**, %struct.queueEntry*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this1, %struct.queueEntry** %9, %struct.queueEntry** %10)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map16 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl15, i32 0, i32 0
  %15 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map16, align 8
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size18 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl17, i32 0, i32 1
  %16 = load i64, i64* %_M_map_size18, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %this1, %struct.queueEntry** %15, i64 %16) #3
  %_M_impl19 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map20 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl19, i32 0, i32 0
  store %struct.queueEntry** null, %struct.queueEntry*** %_M_map20, align 8
  %_M_impl21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_map_size22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl21, i32 0, i32 1
  store i64 0, i64* %_M_map_size22, align 8
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad23

lpad23:                                           ; preds = %catch
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %exn.slot, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont24 unwind label %terminate.lpad

invoke.cont24:                                    ; preds = %lpad23
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl25, i32 0, i32 2
  %20 = load %struct.queueEntry**, %struct.queueEntry*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_start, %struct.queueEntry** %20) #3
  %_M_impl26 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl26, i32 0, i32 3
  %21 = load %struct.queueEntry**, %struct.queueEntry*** %__nfinish, align 8
  %add.ptr27 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %21, i64 -1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish, %struct.queueEntry** %add.ptr27) #3
  %_M_impl28 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start29 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl28, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start29, i32 0, i32 1
  %22 = load %struct.queueEntry*, %struct.queueEntry** %_M_first, align 8
  %_M_impl30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_start31 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl30, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start31, i32 0, i32 0
  store %struct.queueEntry* %22, %struct.queueEntry** %_M_cur, align 8
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish33 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl32, i32 0, i32 3
  %_M_first34 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish33, i32 0, i32 1
  %23 = load %struct.queueEntry*, %struct.queueEntry** %_M_first34, align 8
  %24 = load i64, i64* %__num_elements.addr, align 8
  %call35 = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %rem = urem i64 %24, %call35
  %add.ptr36 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %23, i64 %rem
  %_M_impl37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %_M_finish38 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl37, i32 0, i32 3
  %_M_cur39 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish38, i32 0, i32 0
  store %struct.queueEntry* %add.ptr36, %struct.queueEntry** %_M_cur39, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont24
  %exn40 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn40, 0
  %lpad.val41 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val41

terminate.lpad:                                   ; preds = %lpad23
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #12
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI10queueEntryEC2Ev(%"class.std::allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store %struct.queueEntry* null, %struct.queueEntry** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store %struct.queueEntry* null, %struct.queueEntry** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store %struct.queueEntry* null, %struct.queueEntry** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store %struct.queueEntry** null, %struct.queueEntry*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #6 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  call void @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.0"* sret %__map_alloc, %"class.std::_Deque_base"* %this1) #3
  %0 = load i64, i64* %__n.addr, align 8
  %call = invoke %struct.queueEntry** @_ZNSt16allocator_traitsISaIP10queueEntryEE8allocateERS2_m(%"class.std::allocator.0"* dereferenceable(1) %__map_alloc, i64 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  ret %struct.queueEntry** %call

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this, %struct.queueEntry** %__nstart, %struct.queueEntry** %__nfinish) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca %struct.queueEntry**, align 8
  %__nfinish.addr = alloca %struct.queueEntry**, align 8
  %__cur = alloca %struct.queueEntry**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store %struct.queueEntry** %__nstart, %struct.queueEntry*** %__nstart.addr, align 8
  store %struct.queueEntry** %__nfinish, %struct.queueEntry*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__nstart.addr, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__cur, align 8
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__nfinish.addr, align 8
  %cmp = icmp ult %struct.queueEntry** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = invoke %struct.queueEntry* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %__cur, align 8
  store %struct.queueEntry* %call, %struct.queueEntry** %3, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load %struct.queueEntry**, %struct.queueEntry*** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %4, i32 1
  store %struct.queueEntry** %incdec.ptr, %struct.queueEntry*** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.body
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %8 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %__nstart.addr, align 8
  %10 = load %struct.queueEntry**, %struct.queueEntry*** %__cur, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* %this1, %struct.queueEntry** %9, %struct.queueEntry** %10) #3
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad2

for.end:                                          ; preds = %for.cond
  br label %try.cont

lpad2:                                            ; preds = %catch
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad2
  br label %eh.resume

try.cont:                                         ; preds = %for.end
  ret void

eh.resume:                                        ; preds = %invoke.cont3
  %exn4 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn4, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad2
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #12
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %this, %struct.queueEntry** %__new_node) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__new_node.addr = alloca %struct.queueEntry**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %struct.queueEntry** %__new_node, %struct.queueEntry*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store %struct.queueEntry** %0, %struct.queueEntry*** %_M_node, align 8
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__new_node.addr, align 8
  %2 = load %struct.queueEntry*, %struct.queueEntry** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store %struct.queueEntry* %2, %struct.queueEntry** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %3 = load %struct.queueEntry*, %struct.queueEntry** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv() #3
  %add.ptr = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store %struct.queueEntry* %add.ptr, %struct.queueEntry** %_M_last, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZNSt16allocator_traitsISaIP10queueEntryEE8allocateERS2_m(%"class.std::allocator.0"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %struct.queueEntry** @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %1, i64 %2, i8* null)
  ret %struct.queueEntry** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.queueEntry**
  ret %struct.queueEntry** %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #4

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 8)
  %call2 = call %struct.queueEntry* @_ZNSt16allocator_traitsISaI10queueEntryEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1) %0, i64 %call)
  ret %struct.queueEntry* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry* @_ZNSt16allocator_traitsISaI10queueEntryEE8allocateERS1_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %struct.queueEntry* @_ZN9__gnu_cxx13new_allocatorI10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret %struct.queueEntry* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry* @_ZN9__gnu_cxx13new_allocatorI10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %struct.queueEntry*
  ret %struct.queueEntry* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv() #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke i64 @_ZSt16__deque_buf_sizem(i64 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret i64 %call

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #12
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE9push_backERKS0_(%"class.std::deque"* %this, %struct.queueEntry* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__x.addr = alloca %struct.queueEntry*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %struct.queueEntry* %__x, %struct.queueEntry** %__x.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %1 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 2
  %3 = load %struct.queueEntry*, %struct.queueEntry** %_M_last, align 8
  %add.ptr = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %3, i64 -1
  %cmp = icmp ne %struct.queueEntry* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl4 to %"class.std::allocator"*
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl5, i32 0, i32 3
  %_M_cur7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish6, i32 0, i32 0
  %7 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur7, align 8
  %8 = load %struct.queueEntry*, %struct.queueEntry** %__x.addr, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %5, %struct.queueEntry* %7, %struct.queueEntry* dereferenceable(8) %8)
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %10 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur10, align 8
  %incdec.ptr = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %10, i32 1
  store %struct.queueEntry* %incdec.ptr, %struct.queueEntry** %_M_cur10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.queueEntry*, %struct.queueEntry** %__x.addr, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(%"class.std::deque"* %this1, %struct.queueEntry* dereferenceable(8) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, %struct.queueEntry* %__p, %struct.queueEntry* dereferenceable(8) %__args) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  %__args.addr = alloca %struct.queueEntry*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  store %struct.queueEntry* %__args, %struct.queueEntry** %__args.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  %3 = load %struct.queueEntry*, %struct.queueEntry** %__args.addr, align 8
  %call = call dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* dereferenceable(8) %3) #3
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, %struct.queueEntry* %2, %struct.queueEntry* dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(%"class.std::deque"* %this, %struct.queueEntry* dereferenceable(8) %__args) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__args.addr = alloca %struct.queueEntry*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %struct.queueEntry* %__args, %struct.queueEntry** %__args.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %this1, i64 1)
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call %struct.queueEntry* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %0)
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %2, i64 1
  store %struct.queueEntry* %call, %struct.queueEntry** %add.ptr, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2 to %"class.std::allocator"*
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_finish4 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl3, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish4, i32 0, i32 0
  %6 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur, align 8
  %7 = load %struct.queueEntry*, %struct.queueEntry** %__args.addr, align 8
  %call5 = call dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* dereferenceable(8) %7) #3
  invoke void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %4, %struct.queueEntry* %6, %struct.queueEntry* dereferenceable(8) %call5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl6, i32 0, i32 3
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl8, i32 0, i32 3
  %_M_node10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 3
  %10 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node10, align 8
  %add.ptr11 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %10, i64 1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish7, %struct.queueEntry** %add.ptr11) #3
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl12 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_finish13 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl12, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish13, i32 0, i32 1
  %12 = load %struct.queueEntry*, %struct.queueEntry** %_M_first, align 8
  %13 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %_M_finish15 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl14, i32 0, i32 3
  %_M_cur16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish15, i32 0, i32 0
  store %struct.queueEntry* %12, %struct.queueEntry** %_M_cur16, align 8
  br label %try.cont

lpad:                                             ; preds = %entry
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %17 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %18 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %19 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl17, i32 0, i32 3
  %_M_node19 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish18, i32 0, i32 3
  %20 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node19, align 8
  %add.ptr20 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %20, i64 1
  %21 = load %struct.queueEntry*, %struct.queueEntry** %add.ptr20, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %18, %struct.queueEntry* %21) #3
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad21

lpad21:                                           ; preds = %catch
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont22 unwind label %terminate.lpad

invoke.cont22:                                    ; preds = %lpad21
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  ret void

eh.resume:                                        ; preds = %invoke.cont22
  %exn23 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn23, 0
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val24

terminate.lpad:                                   ; preds = %lpad21
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #12
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, %struct.queueEntry* %__p, %struct.queueEntry* dereferenceable(8) %__args) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  %__args.addr = alloca %struct.queueEntry*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  store %struct.queueEntry* %__args, %struct.queueEntry** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  %1 = bitcast %struct.queueEntry* %0 to i8*
  %2 = bitcast i8* %1 to %struct.queueEntry*
  %3 = load %struct.queueEntry*, %struct.queueEntry** %__args.addr, align 8
  %call = call dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* dereferenceable(8) %3) #3
  %4 = bitcast %struct.queueEntry* %2 to i8*
  %5 = bitcast %struct.queueEntry* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* dereferenceable(8) %__t) #6 comdat {
entry:
  %__t.addr = alloca %struct.queueEntry*, align 8
  store %struct.queueEntry* %__t, %struct.queueEntry** %__t.addr, align 8
  %0 = load %struct.queueEntry*, %struct.queueEntry** %__t.addr, align 8
  ret %struct.queueEntry* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__nodes_to_add.addr = alloca i64, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = load i64, i64* %__nodes_to_add.addr, align 8
  %add = add i64 %0, 1
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 1
  %2 = load i64, i64* %_M_map_size, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %4 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node, align 8
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl3, i32 0, i32 0
  %6 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.queueEntry** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.queueEntry** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub i64 %2, %sub.ptr.div
  %cmp = icmp ugt i64 %add, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %__nodes_to_add.addr, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this1, i64 %7, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__nodes_to_add.addr = alloca i64, align 8
  %__add_at_front.addr = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca %struct.queueEntry**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca %struct.queueEntry**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %frombool = zext i1 %__add_at_front to i8
  store i8 %frombool, i8* %__add_at_front.addr, align 1
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_node3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node3, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.queueEntry** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.queueEntry** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %__old_num_nodes, align 8
  %4 = load i64, i64* %__old_num_nodes, align 8
  %5 = load i64, i64* %__nodes_to_add.addr, align 8
  %add4 = add i64 %4, %5
  store i64 %add4, i64* %__new_num_nodes, align 8
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl5, i32 0, i32 1
  %7 = load i64, i64* %_M_map_size, align 8
  %8 = load i64, i64* %__new_num_nodes, align 8
  %mul = mul i64 2, %8
  %cmp = icmp ugt i64 %7, %mul
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl6, i32 0, i32 0
  %10 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map, align 8
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_map_size8 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl7, i32 0, i32 1
  %12 = load i64, i64* %_M_map_size8, align 8
  %13 = load i64, i64* %__new_num_nodes, align 8
  %sub = sub i64 %12, %13
  %div = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %10, i64 %div
  %14 = load i8, i8* %__add_at_front.addr, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %15 = load i64, i64* %__nodes_to_add.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ 0, %cond.false ]
  %add.ptr9 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %add.ptr, i64 %cond
  store %struct.queueEntry** %add.ptr9, %struct.queueEntry*** %__new_nstart, align 8
  %16 = load %struct.queueEntry**, %struct.queueEntry*** %__new_nstart, align 8
  %17 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %17, i32 0, i32 0
  %_M_start11 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl10, i32 0, i32 2
  %_M_node12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start11, i32 0, i32 3
  %18 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node12, align 8
  %cmp13 = icmp ult %struct.queueEntry** %16, %18
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %cond.end
  %19 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl15, i32 0, i32 2
  %_M_node17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start16, i32 0, i32 3
  %20 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node17, align 8
  %21 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %21, i32 0, i32 0
  %_M_finish19 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl18, i32 0, i32 3
  %_M_node20 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish19, i32 0, i32 3
  %22 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node20, align 8
  %add.ptr21 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %22, i64 1
  %23 = load %struct.queueEntry**, %struct.queueEntry*** %__new_nstart, align 8
  %call = call %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** %20, %struct.queueEntry** %add.ptr21, %struct.queueEntry** %23)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %24 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %24, i32 0, i32 0
  %_M_start23 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl22, i32 0, i32 2
  %_M_node24 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start23, i32 0, i32 3
  %25 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node24, align 8
  %26 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %26, i32 0, i32 0
  %_M_finish26 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl25, i32 0, i32 3
  %_M_node27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish26, i32 0, i32 3
  %27 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node27, align 8
  %add.ptr28 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %27, i64 1
  %28 = load %struct.queueEntry**, %struct.queueEntry*** %__new_nstart, align 8
  %29 = load i64, i64* %__old_num_nodes, align 8
  %add.ptr29 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %28, i64 %29
  %call30 = call %struct.queueEntry** @_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** %25, %struct.queueEntry** %add.ptr28, %struct.queueEntry** %add.ptr29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end65

if.else31:                                        ; preds = %entry
  %30 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %30, i32 0, i32 0
  %_M_map_size33 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl32, i32 0, i32 1
  %31 = load i64, i64* %_M_map_size33, align 8
  %32 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl34 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %32, i32 0, i32 0
  %_M_map_size35 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl34, i32 0, i32 1
  %call36 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %_M_map_size35, i64* dereferenceable(8) %__nodes_to_add.addr)
  %33 = load i64, i64* %call36, align 8
  %add37 = add i64 %31, %33
  %add38 = add i64 %add37, 2
  store i64 %add38, i64* %__new_map_size, align 8
  %34 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %35 = load i64, i64* %__new_map_size, align 8
  %call39 = call %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %34, i64 %35)
  store %struct.queueEntry** %call39, %struct.queueEntry*** %__new_map, align 8
  %36 = load %struct.queueEntry**, %struct.queueEntry*** %__new_map, align 8
  %37 = load i64, i64* %__new_map_size, align 8
  %38 = load i64, i64* %__new_num_nodes, align 8
  %sub40 = sub i64 %37, %38
  %div41 = udiv i64 %sub40, 2
  %add.ptr42 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %36, i64 %div41
  %39 = load i8, i8* %__add_at_front.addr, align 1
  %tobool43 = trunc i8 %39 to i1
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %if.else31
  %40 = load i64, i64* %__nodes_to_add.addr, align 8
  br label %cond.end46

cond.false45:                                     ; preds = %if.else31
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %40, %cond.true44 ], [ 0, %cond.false45 ]
  %add.ptr48 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %add.ptr42, i64 %cond47
  store %struct.queueEntry** %add.ptr48, %struct.queueEntry*** %__new_nstart, align 8
  %41 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %41, i32 0, i32 0
  %_M_start50 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl49, i32 0, i32 2
  %_M_node51 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start50, i32 0, i32 3
  %42 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node51, align 8
  %43 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl52 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %43, i32 0, i32 0
  %_M_finish53 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl52, i32 0, i32 3
  %_M_node54 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish53, i32 0, i32 3
  %44 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node54, align 8
  %add.ptr55 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %44, i64 1
  %45 = load %struct.queueEntry**, %struct.queueEntry*** %__new_nstart, align 8
  %call56 = call %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** %42, %struct.queueEntry** %add.ptr55, %struct.queueEntry** %45)
  %46 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %47 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl57 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %47, i32 0, i32 0
  %_M_map58 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl57, i32 0, i32 0
  %48 = load %struct.queueEntry**, %struct.queueEntry*** %_M_map58, align 8
  %49 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl59 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %49, i32 0, i32 0
  %_M_map_size60 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl59, i32 0, i32 1
  %50 = load i64, i64* %_M_map_size60, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* %46, %struct.queueEntry** %48, i64 %50) #3
  %51 = load %struct.queueEntry**, %struct.queueEntry*** %__new_map, align 8
  %52 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl61 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %52, i32 0, i32 0
  %_M_map62 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl61, i32 0, i32 0
  store %struct.queueEntry** %51, %struct.queueEntry*** %_M_map62, align 8
  %53 = load i64, i64* %__new_map_size, align 8
  %54 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl63 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %54, i32 0, i32 0
  %_M_map_size64 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl63, i32 0, i32 1
  store i64 %53, i64* %_M_map_size64, align 8
  br label %if.end65

if.end65:                                         ; preds = %cond.end46, %if.end
  %55 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl66 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %55, i32 0, i32 0
  %_M_start67 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl66, i32 0, i32 2
  %56 = load %struct.queueEntry**, %struct.queueEntry*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_start67, %struct.queueEntry** %56) #3
  %57 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl68 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %57, i32 0, i32 0
  %_M_finish69 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl68, i32 0, i32 3
  %58 = load %struct.queueEntry**, %struct.queueEntry*** %__new_nstart, align 8
  %59 = load i64, i64* %__old_num_nodes, align 8
  %add.ptr70 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %58, i64 %59
  %add.ptr71 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %add.ptr70, i64 -1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_finish69, %struct.queueEntry** %add.ptr71) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %call = call %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %0)
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %call1 = call %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %1)
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %call2 = call %struct.queueEntry** @_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %call, %struct.queueEntry** %call1, %struct.queueEntry** %2)
  ret %struct.queueEntry** %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %call = call %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %0)
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %call1 = call %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %1)
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %call2 = call %struct.queueEntry** @_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %call, %struct.queueEntry** %call1, %struct.queueEntry** %2)
  ret %struct.queueEntry** %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %call = call %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %0)
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %call1 = call %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %1)
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %call2 = call %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %2)
  %call3 = call %struct.queueEntry** @_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %call, %struct.queueEntry** %call1, %struct.queueEntry** %call2)
  ret %struct.queueEntry** %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %__it) #6 comdat {
entry:
  %__it.addr = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %__it, %struct.queueEntry*** %__it.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__it.addr, align 8
  ret %struct.queueEntry** %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  %__simple = alloca i8, align 1
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %call = call %struct.queueEntry** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** %0, %struct.queueEntry** %1, %struct.queueEntry** %2)
  ret %struct.queueEntry** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %__it) #6 comdat {
entry:
  %__it.addr = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %__it, %struct.queueEntry*** %__it.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__it.addr, align 8
  ret %struct.queueEntry** %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #6 comdat align 2 {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  %_Num = alloca i64, align 8
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.queueEntry** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.queueEntry** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %4 = bitcast %struct.queueEntry** %3 to i8*
  %5 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %6 = bitcast %struct.queueEntry** %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %8, i64 %9
  ret %struct.queueEntry** %add.ptr
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %call = call %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %0)
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %call1 = call %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %1)
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %call2 = call %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** %2)
  %call3 = call %struct.queueEntry** @_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %call, %struct.queueEntry** %call1, %struct.queueEntry** %call2)
  ret %struct.queueEntry** %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #0 comdat {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  %__simple = alloca i8, align 1
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %2 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %call = call %struct.queueEntry** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** %0, %struct.queueEntry** %1, %struct.queueEntry** %2)
  ret %struct.queueEntry** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %struct.queueEntry** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** %__first, %struct.queueEntry** %__last, %struct.queueEntry** %__result) #6 comdat align 2 {
entry:
  %__first.addr = alloca %struct.queueEntry**, align 8
  %__last.addr = alloca %struct.queueEntry**, align 8
  %__result.addr = alloca %struct.queueEntry**, align 8
  %_Num = alloca i64, align 8
  store %struct.queueEntry** %__first, %struct.queueEntry*** %__first.addr, align 8
  store %struct.queueEntry** %__last, %struct.queueEntry*** %__last.addr, align 8
  store %struct.queueEntry** %__result, %struct.queueEntry*** %__result.addr, align 8
  %0 = load %struct.queueEntry**, %struct.queueEntry*** %__last.addr, align 8
  %1 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.queueEntry** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.queueEntry** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %3, i64 %idx.neg
  %5 = bitcast %struct.queueEntry** %add.ptr to i8*
  %6 = load %struct.queueEntry**, %struct.queueEntry*** %__first.addr, align 8
  %7 = bitcast %struct.queueEntry** %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %9, i64 %idx.neg1
  ret %struct.queueEntry** %add.ptr2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt5dequeI10queueEntrySaIS0_EE5emptyEv(%"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %call = call zeroext i1 @_ZSteqI10queueEntryRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqI10queueEntryRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #6 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %3 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur1, align 8
  %cmp = icmp eq %struct.queueEntry* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %struct.queueEntry* @_ZNSt5dequeI10queueEntrySaIS0_EE5frontEv(%"class.std::deque"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %ref.tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* sret %ref.tmp, %"class.std::deque"* %this1) #3
  %call = call dereferenceable(8) %struct.queueEntry* @_ZNKSt15_Deque_iteratorI10queueEntryRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* %ref.tmp) #3
  ret %struct.queueEntry* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %struct.queueEntry* @_ZNKSt15_Deque_iteratorI10queueEntryRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur, align 8
  ret %struct.queueEntry* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE9pop_frontEv(%"class.std::deque"* %this) #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 0
  %1 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur, align 8
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start3, i32 0, i32 2
  %3 = load %struct.queueEntry*, %struct.queueEntry** %_M_last, align 8
  %add.ptr = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %3, i64 -1
  %cmp = icmp ne %struct.queueEntry* %1, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl4 to %"class.std::allocator"*
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl5, i32 0, i32 2
  %_M_cur7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start6, i32 0, i32 0
  %7 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur7, align 8
  invoke void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* dereferenceable(1) %5, %struct.queueEntry* %7)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %_M_start9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl8, i32 0, i32 2
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start9, i32 0, i32 0
  %9 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur10, align 8
  %incdec.ptr = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %9, i32 1
  store %struct.queueEntry* %incdec.ptr, %struct.queueEntry** %_M_cur10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  invoke void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_pop_front_auxEv(%"class.std::deque"* %this1)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont11, %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %if.else, %if.then
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #12
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* dereferenceable(1) %__a, %struct.queueEntry* %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* %1, %struct.queueEntry* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_pop_front_auxEv(%"class.std::deque"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0) #3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 0
  %2 = load %struct.queueEntry*, %struct.queueEntry** %_M_cur, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* dereferenceable(1) %call, %struct.queueEntry* %2)
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl2, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start3, i32 0, i32 1
  %5 = load %struct.queueEntry*, %struct.queueEntry** %_M_first, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* %3, %struct.queueEntry* %5) #3
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %_M_start5 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl4, i32 0, i32 2
  %7 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %_M_start7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl6, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start7, i32 0, i32 3
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %_M_node, align 8
  %add.ptr = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %8, i64 1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* %_M_start5, %struct.queueEntry** %add.ptr) #3
  %9 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %9, i32 0, i32 0
  %_M_start9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl8, i32 0, i32 2
  %_M_first10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start9, i32 0, i32 1
  %10 = load %struct.queueEntry*, %struct.queueEntry** %_M_first10, align 8
  %11 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %11, i32 0, i32 0
  %_M_start12 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry> >::_Deque_impl"* %_M_impl11, i32 0, i32 2
  %_M_cur13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start12, i32 0, i32 0
  store %struct.queueEntry* %10, %struct.queueEntry** %_M_cur13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* %this, %struct.queueEntry* %__p) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %struct.queueEntry*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %struct.queueEntry* %__p, %struct.queueEntry** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %struct.queueEntry*, %struct.queueEntry** %__p.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_snake_ladder.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { builtin }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
