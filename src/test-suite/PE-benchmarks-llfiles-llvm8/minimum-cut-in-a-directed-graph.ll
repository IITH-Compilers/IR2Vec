; ModuleID = 'PE-benchmarks/minimum-cut-in-a-directed-graph.cpp'
source_filename = "PE-benchmarks/minimum-cut-in-a-directed-graph.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }

$_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi = comdat any

$_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZNSt5dequeIiSaIiEED2Ev = comdat any

$_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_ = comdat any

$_ZNSt5dequeIiSaIiEE5beginEv = comdat any

$_ZNSt5dequeIiSaIiEE3endEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

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

$_ZNSt5dequeIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_ = comdat any

$_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE9push_backERKi = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNKSt5dequeIiSaIiEE4sizeEv = comdat any

$_ZNKSt5dequeIiSaIiEE8max_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm = comdat any

$_ZStmiRKSt15_Deque_iteratorIiRiPiES4_ = comdat any

$_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_ = comdat any

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

$_ZNKSt5dequeIiSaIiEE5emptyEv = comdat any

$_ZSteqRKSt15_Deque_iteratorIiRiPiES4_ = comdat any

$_ZNSt5dequeIiSaIiEE5frontEv = comdat any

$_ZNKSt15_Deque_iteratorIiRiPiEdeEv = comdat any

$_ZNSt5dequeIiSaIiEE9pop_frontEv = comdat any

$_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c" - \00", align 1
@__const.main.graph = private unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 0, i32 16, i32 13, i32 0, i32 0, i32 0], [6 x i32] [i32 0, i32 0, i32 10, i32 12, i32 0, i32 0], [6 x i32] [i32 0, i32 4, i32 0, i32 0, i32 14, i32 0], [6 x i32] [i32 0, i32 0, i32 9, i32 0, i32 0, i32 20], [6 x i32] [i32 0, i32 0, i32 0, i32 7, i32 0, i32 4], [6 x i32] zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_minimum_cut_in_a_directed_graph.cpp, i8* null }]

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
define dso_local i32 @_Z3bfsPA6_iiiPi([6 x i32]* %rGraph, i32 %s, i32 %t, i32* %parent) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %rGraph.addr = alloca [6 x i32]*, align 8
  %s.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %parent.addr = alloca i32*, align 8
  %visited = alloca [6 x i8], align 1
  %q = alloca %"class.std::queue", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store [6 x i32]* %rGraph, [6 x i32]** %rGraph.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32* %parent, i32** %parent.addr, align 8
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 0, i64 6, i1 false)
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::queue"* %q)
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::queue"* %q, i32* dereferenceable(4) %s.addr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i64 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  %1 = load i32*, i32** %parent.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %idxprom1
  store i32 -1, i32* %arrayidx2, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %invoke.cont
  %call = invoke zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::queue"* %q)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %while.cond
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont3
  %call5 = invoke dereferenceable(4) i32* @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(%"class.std::queue"* %q)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  %3 = load i32, i32* %call5, align 4
  store i32 %3, i32* %u, align 4
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(%"class.std::queue"* %q)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont6
  %4 = load i32, i32* %v, align 4
  %cmp = icmp slt i32 %4, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %v, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i64 0, i64 %idxprom7
  %6 = load i8, i8* %arrayidx8, align 1
  %tobool = trunc i8 %6 to i1
  %conv = zext i1 %tobool to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load [6 x i32]*, [6 x i32]** %rGraph.addr, align 8
  %8 = load i32, i32* %u, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 %idxprom10
  %9 = load i32, i32* %v, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  %10 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::queue"* %q, i32* dereferenceable(4) %v)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %if.then
  %11 = load i32, i32* %u, align 4
  %12 = load i32*, i32** %parent.addr, align 8
  %13 = load i32, i32* %v, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %12, i64 %idxprom16
  store i32 %11, i32* %arrayidx17, align 4
  %14 = load i32, i32* %v, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i64 0, i64 %idxprom18
  store i8 1, i8* %arrayidx19, align 1
  br label %if.end

lpad:                                             ; preds = %if.then, %invoke.cont4, %while.body, %while.cond, %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %q) #3
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont15, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %v, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %invoke.cont3
  %19 = load i32, i32* %t.addr, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i64 0, i64 %idxprom20
  %20 = load i8, i8* %arrayidx21, align 1
  %tobool22 = trunc i8 %20 to i1
  %conv23 = zext i1 %tobool22 to i32
  %cmp24 = icmp eq i32 %conv23, 1
  %conv25 = zext i1 %cmp24 to i32
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %q) #3
  ret i32 %conv25

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val26 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val26
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv(%"class.std::queue"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::deque"* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false)
  call void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %c)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::queue"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  %__x.addr = alloca i32*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__x.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %c, i32* dereferenceable(4) %0)
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::queue"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %call = call zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %c) #3
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(%"class.std::queue"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  %call = call dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE5frontEv(%"class.std::deque"* %c) #3
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(%"class.std::queue"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE9pop_frontEv(%"class.std::deque"* %c) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %this.addr, align 8
  %this1 = load %"class.std::queue"*, %"class.std::queue"** %this.addr, align 8
  %c = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %this1, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %c) #3
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z3dfsPA6_iiPb([6 x i32]* %rGraph, i32 %s, i8* %visited) #0 {
entry:
  %rGraph.addr = alloca [6 x i32]*, align 8
  %s.addr = alloca i32, align 4
  %visited.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store [6 x i32]* %rGraph, [6 x i32]** %rGraph.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8* %visited, i8** %visited.addr, align 8
  %0 = load i8*, i8** %visited.addr, align 8
  %1 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load [6 x i32]*, [6 x i32]** %rGraph.addr, align 8
  %4 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 %idxprom1
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx2, i64 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8*, i8** %visited.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %tobool7 = trunc i8 %9 to i1
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load [6 x i32]*, [6 x i32]** %rGraph.addr, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load i8*, i8** %visited.addr, align 8
  call void @_Z3dfsPA6_iiPb([6 x i32]* %10, i32 %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z6minCutPA6_iii([6 x i32]* %graph, i32 %s, i32 %t) #0 {
entry:
  %graph.addr = alloca [6 x i32]*, align 8
  %s.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %rGraph = alloca [6 x [6 x i32]], align 16
  %parent = alloca [6 x i32], align 16
  %path_flow = alloca i32, align 4
  %visited = alloca [6 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [6 x i32]* %graph, [6 x i32]** %graph.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %u, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %v, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %v, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [6 x i32]*, [6 x i32]** %graph.addr, align 8
  %3 = load i32, i32* %u, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %v, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* %u, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %rGraph, i64 0, i64 %idxprom6
  %7 = load i32, i32* %v, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %5, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %v, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, i32* %u, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %u, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end44, %for.end12
  %arraydecay = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %rGraph, i32 0, i32 0
  %10 = load i32, i32* %s.addr, align 4
  %11 = load i32, i32* %t.addr, align 4
  %arraydecay13 = getelementptr inbounds [6 x i32], [6 x i32]* %parent, i32 0, i32 0
  %call = call i32 @_Z3bfsPA6_iiiPi([6 x i32]* %arraydecay, i32 %10, i32 %11, i32* %arraydecay13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 2147483647, i32* %path_flow, align 4
  %12 = load i32, i32* %t.addr, align 4
  store i32 %12, i32* %v, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %while.body
  %13 = load i32, i32* %v, align 4
  %14 = load i32, i32* %s.addr, align 4
  %cmp15 = icmp ne i32 %13, %14
  br i1 %cmp15, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, i32* %v, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [6 x i32], [6 x i32]* %parent, i64 0, i64 %idxprom17
  %16 = load i32, i32* %arrayidx18, align 4
  store i32 %16, i32* %u, align 4
  %17 = load i32, i32* %u, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %rGraph, i64 0, i64 %idxprom19
  %18 = load i32, i32* %v, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx20, i64 0, i64 %idxprom21
  %call23 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %path_flow, i32* dereferenceable(4) %arrayidx22)
  %19 = load i32, i32* %call23, align 4
  store i32 %19, i32* %path_flow, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %20 = load i32, i32* %v, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* %parent, i64 0, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  store i32 %21, i32* %v, align 4
  br label %for.cond14

for.end27:                                        ; preds = %for.cond14
  %22 = load i32, i32* %t.addr, align 4
  store i32 %22, i32* %v, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc41, %for.end27
  %23 = load i32, i32* %v, align 4
  %24 = load i32, i32* %s.addr, align 4
  %cmp29 = icmp ne i32 %23, %24
  br i1 %cmp29, label %for.body30, label %for.end44

for.body30:                                       ; preds = %for.cond28
  %25 = load i32, i32* %v, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [6 x i32], [6 x i32]* %parent, i64 0, i64 %idxprom31
  %26 = load i32, i32* %arrayidx32, align 4
  store i32 %26, i32* %u, align 4
  %27 = load i32, i32* %path_flow, align 4
  %28 = load i32, i32* %u, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %rGraph, i64 0, i64 %idxprom33
  %29 = load i32, i32* %v, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx34, i64 0, i64 %idxprom35
  %30 = load i32, i32* %arrayidx36, align 4
  %sub = sub nsw i32 %30, %27
  store i32 %sub, i32* %arrayidx36, align 4
  %31 = load i32, i32* %path_flow, align 4
  %32 = load i32, i32* %v, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %rGraph, i64 0, i64 %idxprom37
  %33 = load i32, i32* %u, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx38, i64 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %add = add nsw i32 %34, %31
  store i32 %add, i32* %arrayidx40, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body30
  %35 = load i32, i32* %v, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [6 x i32], [6 x i32]* %parent, i64 0, i64 %idxprom42
  %36 = load i32, i32* %arrayidx43, align 4
  store i32 %36, i32* %v, align 4
  br label %for.cond28

for.end44:                                        ; preds = %for.cond28
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay45 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay45, i8 0, i64 6, i1 false)
  %arraydecay46 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %rGraph, i32 0, i32 0
  %37 = load i32, i32* %s.addr, align 4
  %arraydecay47 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i32 0, i32 0
  call void @_Z3dfsPA6_iiPb([6 x i32]* %arraydecay46, i32 %37, i8* %arraydecay47)
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %while.end
  %38 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %38, 6
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  store i32 0, i32* %j, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %39 = load i32, i32* %j, align 4
  %cmp52 = icmp slt i32 %39, 6
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %40 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %40 to i64
  %arrayidx55 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i64 0, i64 %idxprom54
  %41 = load i8, i8* %arrayidx55, align 1
  %tobool56 = trunc i8 %41 to i1
  br i1 %tobool56, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body53
  %42 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %42 to i64
  %arrayidx58 = getelementptr inbounds [6 x i8], [6 x i8]* %visited, i64 0, i64 %idxprom57
  %43 = load i8, i8* %arrayidx58, align 1
  %tobool59 = trunc i8 %43 to i1
  br i1 %tobool59, label %if.end, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true
  %44 = load [6 x i32]*, [6 x i32]** %graph.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* %44, i64 %idxprom61
  %46 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %46 to i64
  %arrayidx64 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx62, i64 0, i64 %idxprom63
  %47 = load i32, i32* %arrayidx64, align 4
  %tobool65 = icmp ne i32 %47, 0
  br i1 %tobool65, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true60
  %48 = load i32, i32* %i, align 4
  %call66 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %48)
  %call67 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %49 = load i32, i32* %j, align 4
  %call68 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call67, i32 %49)
  %call69 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call68, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true60, %land.lhs.true, %for.body53
  br label %for.inc70

for.inc70:                                        ; preds = %if.end
  %50 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %50, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond51

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %51 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %51, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond48

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #5 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__b.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__a.addr, align 8
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

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca [6 x [6 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x [6 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x [6 x i32]]* @__const.main.graph to i8*), i64 144, i1 false)
  %arraydecay = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %graph, i32 0, i32 0
  call void @_Z6minCutPA6_iii([6 x i32]* %arraydecay, i32 0, i32 5)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %agg.tmp = alloca %"struct.std::_Deque_iterator", align 8
  %agg.tmp2 = alloca %"struct.std::_Deque_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %agg.tmp, %"class.std::deque"* %this1) #3
  call void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %agg.tmp2, %"class.std::deque"* %this1) #3
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0) #3
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this1, %"struct.std::_Deque_iterator"* %agg.tmp, %"struct.std::_Deque_iterator"* %agg.tmp2, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %1) #3
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %5) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1)) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %0, i32 0, i32 0
  %1 = load i32**, i32*** %_M_map, align 8
  %tobool = icmp ne i32** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %2, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %3 = load i32**, i32*** %_M_node, align 8
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %4, i32 0, i32 3
  %_M_node4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %5 = load i32**, i32*** %_M_node4, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %5, i64 1
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this1, i32** %3, i32** %add.ptr) #3
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %6, i32 0, i32 0
  %7 = load i32**, i32*** %_M_map6, align 8
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %8 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %8, i32 0, i32 1
  %9 = load i64, i64* %_M_map_size, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this1, i32** %7, i64 %9) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8) #3
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #11
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* dereferenceable(32) %__x) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load i32*, i32** %_M_cur2, align 8
  store i32* %1, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %3 = load i32*, i32** %_M_first3, align 8
  store i32* %3, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_last4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 2
  %5 = load i32*, i32** %_M_last4, align 8
  store i32* %5, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %7 = load i32**, i32*** %_M_node5, align 8
  store i32** %7, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca i32**, align 8
  %__nfinish.addr = alloca i32**, align 8
  %__n = alloca i32**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32** %__nstart, i32*** %__nstart.addr, align 8
  store i32** %__nfinish, i32*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load i32**, i32*** %__nstart.addr, align 8
  store i32** %0, i32*** %__n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32**, i32*** %__n, align 8
  %2 = load i32**, i32*** %__nfinish.addr, align 8
  %cmp = icmp ult i32** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32**, i32*** %__n, align 8
  %4 = load i32*, i32** %3, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this1, i32* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32**, i32*** %__n, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %5, i32 1
  store i32** %incdec.ptr, i32*** %__n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %__p, i64 %__n) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca i32**, align 8
  %__n.addr = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32** %__p, i32*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.0"* sret %__map_alloc, %"class.std::_Deque_base"* %this1) #3
  %0 = load i32**, i32*** %__p.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(%"class.std::allocator.0"* dereferenceable(1) %__map_alloc, i32** %0, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this, i32* %__p) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %1 = load i32*, i32** %__p.addr, align 8
  %call = invoke i64 @_ZSt16__deque_buf_sizem(i64 4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %0, i32* %1, i64 %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #11
  unreachable
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
define linkonce_odr dso_local i64 @_ZSt16__deque_buf_sizem(i64 %__size) #5 comdat {
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i64 %__t) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__t.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__t, i64* %__t.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @_ZdlPv(i8* %1) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.0"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this1) #3
  call void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.0"* %agg.result, %"class.std::allocator"* dereferenceable(1) %call) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(%"class.std::allocator.0"* dereferenceable(1) %__a, i32** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__p.addr = alloca i32**, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i32** %__p, i32*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load i32**, i32*** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.1"* %1, i32** %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.0"* %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.0"*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %this.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %this1 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %this1 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.1"* %this, i32** %__p, i64 %__t) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__p.addr = alloca i32**, align 8
  %__t.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i32** %__p, i32*** %__p.addr, align 8
  store i64 %__t, i64* %__t.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %0 = load i32**, i32*** %__p.addr, align 8
  %1 = bitcast i32** %0 to i8*
  call void @_ZdlPv(i8* %1) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl) #3
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this1, i64 0)
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
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %0) #3
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this1 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  call void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__num_elements.addr = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  %__nstart = alloca i32**, align 8
  %__nfinish = alloca i32**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__num_elements, i64* %__num_elements.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load i64, i64* %__num_elements.addr, align 8
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
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
  %3 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %3, i32 0, i32 1
  store i64 %2, i64* %_M_map_size, align 8
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %4, i32 0, i32 1
  %5 = load i64, i64* %_M_map_size6, align 8
  %call7 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this1, i64 %5)
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %6, i32 0, i32 0
  store i32** %call7, i32*** %_M_map, align 8
  %_M_impl9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl9 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %7, i32 0, i32 0
  %8 = load i32**, i32*** %_M_map10, align 8
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %9 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl11 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %9, i32 0, i32 1
  %10 = load i64, i64* %_M_map_size12, align 8
  %11 = load i64, i64* %__num_nodes, align 8
  %sub = sub i64 %10, %11
  %div13 = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds i32*, i32** %8, i64 %div13
  store i32** %add.ptr, i32*** %__nstart, align 8
  %12 = load i32**, i32*** %__nstart, align 8
  %13 = load i64, i64* %__num_nodes, align 8
  %add.ptr14 = getelementptr inbounds i32*, i32** %12, i64 %13
  store i32** %add.ptr14, i32*** %__nfinish, align 8
  %14 = load i32**, i32*** %__nstart, align 8
  %15 = load i32**, i32*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this1, i32** %14, i32** %15)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %19 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %20 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl15 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %20, i32 0, i32 0
  %21 = load i32**, i32*** %_M_map16, align 8
  %_M_impl17 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl17 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %22, i32 0, i32 1
  %23 = load i64, i64* %_M_map_size18, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this1, i32** %21, i64 %23) #3
  %_M_impl19 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %24 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl19 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map20 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %24, i32 0, i32 0
  store i32** null, i32*** %_M_map20, align 8
  %_M_impl21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %25 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl21 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %25, i32 0, i32 1
  store i64 0, i64* %_M_map_size22, align 8
  invoke void @__cxa_rethrow() #12
          to label %unreachable unwind label %lpad23

lpad23:                                           ; preds = %catch
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont24 unwind label %terminate.lpad

invoke.cont24:                                    ; preds = %lpad23
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %29 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl25 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %29, i32 0, i32 2
  %30 = load i32**, i32*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start, i32** %30) #3
  %_M_impl26 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %31 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl26 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %31, i32 0, i32 3
  %32 = load i32**, i32*** %__nfinish, align 8
  %add.ptr27 = getelementptr inbounds i32*, i32** %32, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish, i32** %add.ptr27) #3
  %_M_impl28 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl28 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start29 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %33, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start29, i32 0, i32 1
  %34 = load i32*, i32** %_M_first, align 8
  %_M_impl30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %35 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl30 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start31 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %35, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start31, i32 0, i32 0
  store i32* %34, i32** %_M_cur, align 8
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %36 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl32 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %36, i32 0, i32 3
  %_M_first34 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish33, i32 0, i32 1
  %37 = load i32*, i32** %_M_first34, align 8
  %38 = load i64, i64* %__num_elements.addr, align 8
  %call35 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %rem = urem i64 %38, %call35
  %add.ptr36 = getelementptr inbounds i32, i32* %37, i64 %rem
  %_M_impl37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %39 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl37 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish38 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %39, i32 0, i32 3
  %_M_cur39 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish38, i32 0, i32 0
  store i32* %add.ptr36, i32** %_M_cur39, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont24
  %exn40 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn40, 0
  %lpad.val41 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val41

terminate.lpad:                                   ; preds = %lpad23
  %40 = landingpad { i8*, i32 }
          catch i8* null
  %41 = extractvalue { i8*, i32 } %40, 0
  call void @__clang_call_terminate(i8* %41) #11
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"** %this.addr, align 8
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %this1, i32 0, i32 0
  store i32** null, i32*** %_M_map, align 8
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %this1, i32 0, i32 1
  store i64 0, i64* %_M_map_size, align 8
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %this1, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_start) #3
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %this1, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %_M_finish) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_cur, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_first, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_last, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store i32** null, i32*** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #5 comdat {
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
define linkonce_odr dso_local i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.0"* sret %__map_alloc, %"class.std::_Deque_base"* %this1) #3
  %0 = load i64, i64* %__n.addr, align 8
  %call = invoke i32** @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(%"class.std::allocator.0"* dereferenceable(1) %__map_alloc, i64 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  ret i32** %call

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.0"* %__map_alloc) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  %__nstart.addr = alloca i32**, align 8
  %__nfinish.addr = alloca i32**, align 8
  %__cur = alloca i32**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  store i32** %__nstart, i32*** %__nstart.addr, align 8
  store i32** %__nfinish, i32*** %__nfinish.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %0 = load i32**, i32*** %__nstart.addr, align 8
  store i32** %0, i32*** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32**, i32*** %__cur, align 8
  %2 = load i32**, i32*** %__nfinish.addr, align 8
  %cmp = icmp ult i32** %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = invoke i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %3 = load i32**, i32*** %__cur, align 8
  store i32* %call, i32** %3, align 8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load i32**, i32*** %__cur, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %4, i32 1
  store i32** %incdec.ptr, i32*** %__cur, align 8
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
  %9 = load i32**, i32*** %__nstart.addr, align 8
  %10 = load i32**, i32*** %__cur, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this1, i32** %9, i32** %10) #3
  invoke void @__cxa_rethrow() #12
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
  call void @__clang_call_terminate(i8* %15) #11
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, i32** %__new_node) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__new_node.addr = alloca i32**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  store i32** %__new_node, i32*** %__new_node.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %0 = load i32**, i32*** %__new_node.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 3
  store i32** %0, i32*** %_M_node, align 8
  %1 = load i32**, i32*** %__new_node.addr, align 8
  %2 = load i32*, i32** %1, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  store i32* %2, i32** %_M_first, align 8
  %_M_first2 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 1
  %3 = load i32*, i32** %_M_first2, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %call
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_last, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(%"class.std::allocator.0"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.0"* %0 to %"class.__gnu_cxx::new_allocator.1"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %1, i64 %2, i8* null)
  ret i32** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32**
  ret i32** %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %this.addr, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #9

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #10

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %this.addr, align 8
  %this1 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"class.std::allocator"*
  %call = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %call2 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %0, i64 %call)
  ret i32* %call2
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
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 4
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = invoke i64 @_ZSt16__deque_buf_sizem(i64 4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret i64 %call

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #11
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %this, i32* dereferenceable(4) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__x.addr = alloca i32*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i32* %__x, i32** %__x.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 0
  %2 = load i32*, i32** %_M_cur, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %4, i32 0, i32 3
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish3, i32 0, i32 2
  %5 = load i32*, i32** %_M_last, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 -1
  %cmp = icmp ne i32* %2, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4 to %"class.std::allocator"*
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %9 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %9, i32 0, i32 3
  %_M_cur7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish6, i32 0, i32 0
  %10 = load i32*, i32** %_M_cur7, align 8
  %11 = load i32*, i32** %__x.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %7, i32* %10, i32* dereferenceable(4) %11) #3
  %12 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %13, i32 0, i32 3
  %_M_cur10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish9, i32 0, i32 0
  %14 = load i32*, i32** %_M_cur10, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr, i32** %_M_cur10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32*, i32** %__x.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* %this1, i32* dereferenceable(4) %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p, i32* dereferenceable(4) %__args) #5 comdat align 2 {
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
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, i32* %2, i32* dereferenceable(4) %call) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* %this, i32* dereferenceable(4) %__args) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__args.addr = alloca i32*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i32* %__args, i32** %__args.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %call = call i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %this1) #3
  %call2 = call i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(%"class.std::deque"* %this1) #3
  %cmp = icmp eq i64 %call, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0)) #12
  unreachable

if.end:                                           ; preds = %entry
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this1, i64 1)
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call3 = call i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %0)
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %2, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %3 = load i32**, i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %3, i64 1
  store i32* %call3, i32** %add.ptr, align 8
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4 to %"class.std::allocator"*
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %7, i32 0, i32 3
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish6, i32 0, i32 0
  %8 = load i32*, i32** %_M_cur, align 8
  %9 = load i32*, i32** %__args.addr, align 8
  %call7 = call dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %9) #3
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %5, i32* %8, i32* dereferenceable(4) %call7) #3
  %10 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %11 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %11, i32 0, i32 3
  %12 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl10 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %13, i32 0, i32 3
  %_M_node12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish11, i32 0, i32 3
  %14 = load i32**, i32*** %_M_node12, align 8
  %add.ptr13 = getelementptr inbounds i32*, i32** %14, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish9, i32** %add.ptr13) #3
  %15 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %15, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl14 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %16, i32 0, i32 3
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish15, i32 0, i32 1
  %17 = load i32*, i32** %_M_first, align 8
  %18 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl16 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %18, i32 0, i32 0
  %19 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl16 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %19, i32 0, i32 3
  %_M_cur18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish17, i32 0, i32 0
  store i32* %17, i32** %_M_cur18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i32* dereferenceable(4) %__args) #5 comdat align 2 {
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
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* dereferenceable(4) %__t) #5 comdat {
entry:
  %__t.addr = alloca i32*, align 8
  store i32* %__t, i32** %__t.addr, align 8
  %0 = load i32*, i32** %__t.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 3
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %3 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %3, i32 0, i32 2
  %call = call i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(%"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0) #3
  %call2 = call i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %call) #3
  ret i64 %call2
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #9

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #0 comdat align 2 {
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
  %2 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %2, i32 0, i32 1
  %3 = load i64, i64* %_M_map_size, align 8
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %5, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %6 = load i32**, i32*** %_M_node, align 8
  %7 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl3 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %8 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl3 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %8, i32 0, i32 0
  %9 = load i32**, i32*** %_M_map, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub i64 %3, %sub.ptr.div
  %cmp = icmp ugt i64 %add, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %__nodes_to_add.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this1, i64 %10, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #5 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %call = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 3
  %1 = load i32**, i32*** %_M_node, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_node1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %3 = load i32**, i32*** %_M_node1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %mul = mul nsw i64 %call, %sub
  %4 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %4, i32 0, i32 0
  %5 = load i32*, i32** %_M_cur, align 8
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 1
  %7 = load i32*, i32** %_M_first, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i32* %5 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i32* %7 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 4
  %add = add nsw i64 %mul, %sub.ptr.div5
  %8 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 2
  %9 = load i32*, i32** %_M_last, align 8
  %10 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %10, i32 0, i32 0
  %11 = load i32*, i32** %_M_cur6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i32* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i32* %11 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = sdiv exact i64 %sub.ptr.sub9, 4
  %add11 = add nsw i64 %add, %sub.ptr.div10
  ret i64 %add11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 9223372036854775807, i64* %__diffmax, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %call = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %0) #3
  store i64 %call, i64* %__allocmax, align 8
  %call1 = invoke dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %__diffmax, i64* dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64, i64* %call1, align 8
  ret i64 %1

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* dereferenceable(1) %__a) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #3
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #5 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__b.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__a.addr, align 8
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
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %__nodes_to_add.addr = alloca i64, align 8
  %__add_at_front.addr = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca i32**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca i32**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  store i64 %__nodes_to_add, i64* %__nodes_to_add.addr, align 8
  %frombool = zext i1 %__add_at_front to i8
  store i8 %frombool, i8* %__add_at_front.addr, align 1
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 3
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish, i32 0, i32 3
  %2 = load i32**, i32*** %_M_node, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %4, i32 0, i32 2
  %_M_node3 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 3
  %5 = load i32**, i32*** %_M_node3, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %__old_num_nodes, align 8
  %6 = load i64, i64* %__old_num_nodes, align 8
  %7 = load i64, i64* %__nodes_to_add.addr, align 8
  %add4 = add i64 %6, %7
  store i64 %add4, i64* %__new_num_nodes, align 8
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %9 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl5 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %9, i32 0, i32 1
  %10 = load i64, i64* %_M_map_size, align 8
  %11 = load i64, i64* %__new_num_nodes, align 8
  %mul = mul i64 2, %11
  %cmp = icmp ugt i64 %10, %mul
  br i1 %cmp, label %if.then, label %if.else31

if.then:                                          ; preds = %entry
  %12 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %13 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %13, i32 0, i32 0
  %14 = load i32**, i32*** %_M_map, align 8
  %15 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %15, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %16, i32 0, i32 1
  %17 = load i64, i64* %_M_map_size8, align 8
  %18 = load i64, i64* %__new_num_nodes, align 8
  %sub = sub i64 %17, %18
  %div = udiv i64 %sub, 2
  %add.ptr = getelementptr inbounds i32*, i32** %14, i64 %div
  %19 = load i8, i8* %__add_at_front.addr, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %20 = load i64, i64* %__nodes_to_add.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ 0, %cond.false ]
  %add.ptr9 = getelementptr inbounds i32*, i32** %add.ptr, i64 %cond
  store i32** %add.ptr9, i32*** %__new_nstart, align 8
  %21 = load i32**, i32*** %__new_nstart, align 8
  %22 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %22, i32 0, i32 0
  %23 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl10 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %23, i32 0, i32 2
  %_M_node12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start11, i32 0, i32 3
  %24 = load i32**, i32*** %_M_node12, align 8
  %cmp13 = icmp ult i32** %21, %24
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %cond.end
  %25 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %25, i32 0, i32 0
  %26 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl15 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %26, i32 0, i32 2
  %_M_node17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start16, i32 0, i32 3
  %27 = load i32**, i32*** %_M_node17, align 8
  %28 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %28, i32 0, i32 0
  %29 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl18 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %29, i32 0, i32 3
  %_M_node20 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish19, i32 0, i32 3
  %30 = load i32**, i32*** %_M_node20, align 8
  %add.ptr21 = getelementptr inbounds i32*, i32** %30, i64 1
  %31 = load i32**, i32*** %__new_nstart, align 8
  %call = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %27, i32** %add.ptr21, i32** %31)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %32 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %32, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl22 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %33, i32 0, i32 2
  %_M_node24 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start23, i32 0, i32 3
  %34 = load i32**, i32*** %_M_node24, align 8
  %35 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %35, i32 0, i32 0
  %36 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl25 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %36, i32 0, i32 3
  %_M_node27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish26, i32 0, i32 3
  %37 = load i32**, i32*** %_M_node27, align 8
  %add.ptr28 = getelementptr inbounds i32*, i32** %37, i64 1
  %38 = load i32**, i32*** %__new_nstart, align 8
  %39 = load i64, i64* %__old_num_nodes, align 8
  %add.ptr29 = getelementptr inbounds i32*, i32** %38, i64 %39
  %call30 = call i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %34, i32** %add.ptr28, i32** %add.ptr29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end65

if.else31:                                        ; preds = %entry
  %40 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %40, i32 0, i32 0
  %41 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl32 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %41, i32 0, i32 1
  %42 = load i64, i64* %_M_map_size33, align 8
  %43 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl34 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %43, i32 0, i32 0
  %44 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl34 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size35 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %44, i32 0, i32 1
  %call36 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %_M_map_size35, i64* dereferenceable(8) %__nodes_to_add.addr)
  %45 = load i64, i64* %call36, align 8
  %add37 = add i64 %42, %45
  %add38 = add i64 %add37, 2
  store i64 %add38, i64* %__new_map_size, align 8
  %46 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %47 = load i64, i64* %__new_map_size, align 8
  %call39 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %46, i64 %47)
  store i32** %call39, i32*** %__new_map, align 8
  %48 = load i32**, i32*** %__new_map, align 8
  %49 = load i64, i64* %__new_map_size, align 8
  %50 = load i64, i64* %__new_num_nodes, align 8
  %sub40 = sub i64 %49, %50
  %div41 = udiv i64 %sub40, 2
  %add.ptr42 = getelementptr inbounds i32*, i32** %48, i64 %div41
  %51 = load i8, i8* %__add_at_front.addr, align 1
  %tobool43 = trunc i8 %51 to i1
  br i1 %tobool43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %if.else31
  %52 = load i64, i64* %__nodes_to_add.addr, align 8
  br label %cond.end46

cond.false45:                                     ; preds = %if.else31
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %52, %cond.true44 ], [ 0, %cond.false45 ]
  %add.ptr48 = getelementptr inbounds i32*, i32** %add.ptr42, i64 %cond47
  store i32** %add.ptr48, i32*** %__new_nstart, align 8
  %53 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %53, i32 0, i32 0
  %54 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl49 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start50 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %54, i32 0, i32 2
  %_M_node51 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start50, i32 0, i32 3
  %55 = load i32**, i32*** %_M_node51, align 8
  %56 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl52 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %56, i32 0, i32 0
  %57 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl52 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish53 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %57, i32 0, i32 3
  %_M_node54 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_finish53, i32 0, i32 3
  %58 = load i32**, i32*** %_M_node54, align 8
  %add.ptr55 = getelementptr inbounds i32*, i32** %58, i64 1
  %59 = load i32**, i32*** %__new_nstart, align 8
  %call56 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %55, i32** %add.ptr55, i32** %59)
  %60 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %61 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl57 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %61, i32 0, i32 0
  %62 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl57 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map58 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %62, i32 0, i32 0
  %63 = load i32**, i32*** %_M_map58, align 8
  %64 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl59 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %64, i32 0, i32 0
  %65 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl59 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size60 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %65, i32 0, i32 1
  %66 = load i64, i64* %_M_map_size60, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %60, i32** %63, i64 %66) #3
  %67 = load i32**, i32*** %__new_map, align 8
  %68 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl61 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %68, i32 0, i32 0
  %69 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl61 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map62 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %69, i32 0, i32 0
  store i32** %67, i32*** %_M_map62, align 8
  %70 = load i64, i64* %__new_map_size, align 8
  %71 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl63 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %71, i32 0, i32 0
  %72 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl63 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_map_size64 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %72, i32 0, i32 1
  store i64 %70, i64* %_M_map_size64, align 8
  br label %if.end65

if.end65:                                         ; preds = %cond.end46, %if.end
  %73 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl66 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %73, i32 0, i32 0
  %74 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl66 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start67 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %74, i32 0, i32 2
  %75 = load i32**, i32*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start67, i32** %75) #3
  %76 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl68 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %76, i32 0, i32 0
  %77 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl68 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish69 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %77, i32 0, i32 3
  %78 = load i32**, i32*** %__new_nstart, align 8
  %79 = load i64, i64* %__old_num_nodes, align 8
  %add.ptr70 = getelementptr inbounds i32*, i32** %78, i64 %79
  %add.ptr71 = getelementptr inbounds i32*, i32** %add.ptr70, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_finish69, i32** %add.ptr71) #3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %call = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %0)
  %1 = load i32**, i32*** %__last.addr, align 8
  %call1 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %1)
  %2 = load i32**, i32*** %__result.addr, align 8
  %call2 = call i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %2)
  ret i32** %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %call = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %0)
  %1 = load i32**, i32*** %__last.addr, align 8
  %call1 = call i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %1)
  %2 = load i32**, i32*** %__result.addr, align 8
  %call2 = call i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %2)
  ret i32** %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %call = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %0) #3
  %1 = load i32**, i32*** %__last.addr, align 8
  %call1 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %1) #3
  %2 = load i32**, i32*** %__result.addr, align 8
  %call2 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %2) #3
  %call3 = call i32** @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %call2)
  %call4 = call i32** @_ZSt12__niter_wrapIPPiET_RKS2_S2_(i32*** dereferenceable(8) %__result.addr, i32** %call3)
  ret i32** %call4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZSt12__miter_baseIPPiET_S2_(i32** %__it) #5 comdat {
entry:
  %__it.addr = alloca i32**, align 8
  store i32** %__it, i32*** %__it.addr, align 8
  %0 = load i32**, i32*** %__it.addr, align 8
  ret i32** %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZSt12__niter_wrapIPPiET_RKS2_S2_(i32*** dereferenceable(8), i32** %__res) #5 comdat {
entry:
  %.addr = alloca i32***, align 8
  %__res.addr = alloca i32**, align 8
  store i32*** %0, i32**** %.addr, align 8
  store i32** %__res, i32*** %__res.addr, align 8
  %1 = load i32**, i32*** %__res.addr, align 8
  ret i32** %1
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %1 = load i32**, i32*** %__last.addr, align 8
  %2 = load i32**, i32*** %__result.addr, align 8
  %call = call i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2)
  ret i32** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %__it) #5 comdat {
entry:
  %__it.addr = alloca i32**, align 8
  store i32** %__it, i32*** %__it.addr, align 8
  %0 = load i32**, i32*** %__it.addr, align 8
  ret i32** %0
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %1 = load i32**, i32*** %__last.addr, align 8
  %2 = load i32**, i32*** %__result.addr, align 8
  %call = call i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %0, i32** %1, i32** %2)
  ret i32** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #5 comdat align 2 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  %_Num = alloca i64, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__last.addr, align 8
  %1 = load i32**, i32*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32**, i32*** %__result.addr, align 8
  %4 = bitcast i32** %3 to i8*
  %5 = load i32**, i32*** %__first.addr, align 8
  %6 = bitcast i32** %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32**, i32*** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %8, i64 %9
  ret i32** %add.ptr
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %call = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %0) #3
  %1 = load i32**, i32*** %__last.addr, align 8
  %call1 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %1) #3
  %2 = load i32**, i32*** %__result.addr, align 8
  %call2 = call i32** @_ZSt12__niter_baseIPPiET_S2_(i32** %2) #3
  %call3 = call i32** @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %call, i32** %call1, i32** %call2)
  %call4 = call i32** @_ZSt12__niter_wrapIPPiET_RKS2_S2_(i32*** dereferenceable(8) %__result.addr, i32** %call3)
  ret i32** %call4
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %1 = load i32**, i32*** %__last.addr, align 8
  %2 = load i32**, i32*** %__result.addr, align 8
  %call = call i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %0, i32** %1, i32** %2)
  ret i32** %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #0 comdat {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__first.addr, align 8
  %1 = load i32**, i32*** %__last.addr, align 8
  %2 = load i32**, i32*** %__result.addr, align 8
  %call = call i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %0, i32** %1, i32** %2)
  ret i32** %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #5 comdat align 2 {
entry:
  %__first.addr = alloca i32**, align 8
  %__last.addr = alloca i32**, align 8
  %__result.addr = alloca i32**, align 8
  %_Num = alloca i64, align 8
  store i32** %__first, i32*** %__first.addr, align 8
  store i32** %__last, i32*** %__last.addr, align 8
  store i32** %__result, i32*** %__result.addr, align 8
  %0 = load i32**, i32*** %__last.addr, align 8
  %1 = load i32**, i32*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32**, i32*** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds i32*, i32** %3, i64 %idx.neg
  %5 = bitcast i32** %add.ptr to i8*
  %6 = load i32**, i32*** %__first.addr, align 8
  %7 = bitcast i32** %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %7, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32**, i32*** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds i32*, i32** %9, i64 %idx.neg1
  ret i32** %add.ptr2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_finish = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 3
  %2 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %2, i32 0, i32 0
  %3 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %3, i32 0, i32 2
  %call = call zeroext i1 @_ZSteqRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* dereferenceable(32) %_M_finish, %"struct.std::_Deque_iterator"* dereferenceable(32) %_M_start) #3
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqRKSt15_Deque_iteratorIiRiPiES4_(%"struct.std::_Deque_iterator"* dereferenceable(32) %__x, %"struct.std::_Deque_iterator"* dereferenceable(32) %__y) #5 comdat {
entry:
  %__x.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  %__y.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %0 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__x.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %0, i32 0, i32 0
  %1 = load i32*, i32** %_M_cur, align 8
  %2 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %__y.addr, align 8
  %_M_cur1 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %3 = load i32*, i32** %_M_cur1, align 8
  %cmp = icmp eq i32* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNSt5dequeIiSaIiEE5frontEv(%"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  %ref.tmp = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %ref.tmp, %"class.std::deque"* %this1) #3
  %call = call dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %ref.tmp) #3
  ret i32* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %this.addr, align 8
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %_M_cur, align 8
  ret i32* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9pop_frontEv(%"class.std::deque"* %this) #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i32 0, i32 0
  %1 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %1, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 0
  %2 = load i32*, i32** %_M_cur, align 8
  %3 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %4, i32 0, i32 2
  %_M_last = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start3, i32 0, i32 2
  %5 = load i32*, i32** %_M_last, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 -1
  %cmp = icmp ne i32* %2, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %6) #3
  %7 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %8 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %8, i32 0, i32 2
  %_M_cur6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start5, i32 0, i32 0
  %9 = load i32*, i32** %_M_cur6, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator"* dereferenceable(1) %call, i32* %9) #3
  %10 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %11 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl7 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %11, i32 0, i32 2
  %_M_cur9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start8, i32 0, i32 0
  %12 = load i32*, i32** %_M_cur9, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %_M_cur9, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  invoke void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(%"class.std::deque"* %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %if.then
  ret void

terminate.lpad:                                   ; preds = %if.else
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p) #5 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* %1, i32* %2) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(%"class.std::deque"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %this.addr, align 8
  %this1 = load %"class.std::deque"*, %"class.std::deque"** %this.addr, align 8
  %0 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %0) #3
  %1 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %1, i32 0, i32 0
  %2 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %2, i32 0, i32 2
  %_M_cur = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start, i32 0, i32 0
  %3 = load i32*, i32** %_M_cur, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(%"class.std::allocator"* dereferenceable(1) %call, i32* %3) #3
  %4 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %5 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl2 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl2 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start3 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %6, i32 0, i32 2
  %_M_first = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start3, i32 0, i32 1
  %7 = load i32*, i32** %_M_first, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %4, i32* %7) #3
  %8 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %9 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl4 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %9, i32 0, i32 2
  %10 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %11 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl6 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %11, i32 0, i32 2
  %_M_node = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start7, i32 0, i32 3
  %12 = load i32**, i32*** %_M_node, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %12, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %_M_start5, i32** %add.ptr) #3
  %13 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %14 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl8 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %14, i32 0, i32 2
  %_M_first10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start9, i32 0, i32 1
  %15 = load i32*, i32** %_M_first10, align 8
  %16 = bitcast %"class.std::deque"* %this1 to %"class.std::_Deque_base"*
  %_M_impl11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %16, i32 0, i32 0
  %17 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %_M_impl11 to %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"*
  %_M_start12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data", %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl_data"* %17, i32 0, i32 2
  %_M_cur13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %_M_start12, i32 0, i32 0
  store i32* %15, i32** %_M_cur13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_minimum_cut_in_a_directed_graph.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
