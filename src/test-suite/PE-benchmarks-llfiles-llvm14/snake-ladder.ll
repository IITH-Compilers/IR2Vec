; ModuleID = 'PE-benchmarks/snake-ladder.cpp'
source_filename = "PE-benchmarks/snake-ladder.cpp"
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
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl" }
%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl" = type { %struct.queueEntry**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
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

$_ZNKSt5dequeI10queueEntrySaIS0_EE4sizeEv = comdat any

$_ZNKSt5dequeI10queueEntrySaIS0_EE8max_sizeEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm = comdat any

$_ZStmiI10queueEntryRS0_PS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP10queueEntryET_S3_ = comdat any

$_ZSt12__niter_wrapIPP10queueEntryET_RKS3_S3_ = comdat any

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
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [29 x i8] c"Min Dice throws required is \00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_snake_ladder.cpp, i8* null }]

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

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z16getMinDiceThrowsPii(i32* noundef %0, i32 noundef %1) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::queue", align 8
  %8 = alloca %struct.queueEntry, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.queueEntry, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.queueEntry, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias noundef nonnull i8* @_Znam(i64 noundef %16) #15
  store i8* %17, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %27, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %18, !llvm.loop !6

30:                                               ; preds = %18
  call void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEEC2IS3_vEEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7)
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 1, i8* %32, align 1
  %33 = bitcast %struct.queueEntry* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 8, i1 false)
  invoke void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %8)
          to label %34 unwind label %51

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %108, %34
  %36 = invoke noundef zeroext i1 @_ZNKSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5emptyEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7)
          to label %37 unwind label %51

37:                                               ; preds = %35
  %38 = xor i1 %36, true
  br i1 %38, label %39, label %109

39:                                               ; preds = %37
  %40 = invoke noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5frontEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7)
          to label %41 unwind label %51

41:                                               ; preds = %39
  %42 = bitcast %struct.queueEntry* %11 to i8*
  %43 = bitcast %struct.queueEntry* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  br label %109

51:                                               ; preds = %102, %55, %39, %35, %30
  %52 = landingpad { i8*, i32 }
          cleanup
  %53 = extractvalue { i8*, i32 } %52, 0
  store i8* %53, i8** %9, align 8
  %54 = extractvalue { i8*, i32 } %52, 1
  store i32 %54, i32* %10, align 4
  call void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7) #3
  br label %112

55:                                               ; preds = %41
  invoke void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE3popEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7)
          to label %56 unwind label %51

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %105, %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 6
  %63 = icmp sle i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i1 [ false, %59 ], [ %67, %64 ]
  br i1 %69, label %70, label %108

70:                                               ; preds = %68
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = trunc i8 %75 to i1
  br i1 %76, label %104, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %11, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %14, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 1, i8* %85, align 1
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %99

92:                                               ; preds = %77
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %14, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  br label %102

99:                                               ; preds = %77
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %14, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %92
  invoke void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %14)
          to label %103 unwind label %51

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %70
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %59, !llvm.loop !8

108:                                              ; preds = %68
  br label %35, !llvm.loop !9

109:                                              ; preds = %50, %37
  %110 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %11, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  call void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %7) #3
  ret i32 %111

112:                                              ; preds = %51
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = insertvalue { i8*, i32 } undef, i8* %113, 0
  %116 = insertvalue { i8*, i32 } %115, i32 %114, 1
  resume { i8*, i32 } %116
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #5

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEEC2IS3_vEEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %0, %"class.std::queue"** %2, align 8
  %3 = load %"class.std::queue"*, %"class.std::queue"** %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %3, i32 0, i32 0
  call void @_ZNSt5dequeI10queueEntrySaIS0_EEC2Ev(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %4)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE4pushERKS0_(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %1) #4 comdat align 2 {
  %3 = alloca %"class.std::queue"*, align 8
  %4 = alloca %struct.queueEntry*, align 8
  store %"class.std::queue"* %0, %"class.std::queue"** %3, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %4, align 8
  %5 = load %"class.std::queue"*, %"class.std::queue"** %3, align 8
  %6 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %5, i32 0, i32 0
  %7 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE9push_backERKS0_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %6, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %7)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5emptyEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %0, %"class.std::queue"** %2, align 8
  %3 = load %"class.std::queue"*, %"class.std::queue"** %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %3, i32 0, i32 0
  %5 = call noundef zeroext i1 @_ZNKSt5dequeI10queueEntrySaIS0_EE5emptyEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %4) #3
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE5frontEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %0, %"class.std::queue"** %2, align 8
  %3 = load %"class.std::queue"*, %"class.std::queue"** %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZNSt5dequeI10queueEntrySaIS0_EE5frontEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %4) #3
  ret %struct.queueEntry* %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEE3popEv(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %0, %"class.std::queue"** %2, align 8
  %3 = load %"class.std::queue"*, %"class.std::queue"** %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %3, i32 0, i32 0
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE9pop_frontEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueI10queueEntrySt5dequeIS0_SaIS0_EEED2Ev(%"class.std::queue"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %0, %"class.std::queue"** %2, align 8
  %3 = load %"class.std::queue"*, %"class.std::queue"** %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", %"class.std::queue"* %3, i32 0, i32 0
  call void @_ZNSt5dequeI10queueEntrySaIS0_EED2Ev(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 30, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %18, %0
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %9, i64 %16
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %10, !llvm.loop !10

21:                                               ; preds = %10
  %22 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 21, i32* %22, align 8
  %23 = getelementptr inbounds i32, i32* %9, i64 4
  store i32 7, i32* %23, align 16
  %24 = getelementptr inbounds i32, i32* %9, i64 10
  store i32 25, i32* %24, align 8
  %25 = getelementptr inbounds i32, i32* %9, i64 19
  store i32 28, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %9, i64 26
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds i32, i32* %9, i64 20
  store i32 8, i32* %27, align 16
  %28 = getelementptr inbounds i32, i32* %9, i64 16
  store i32 3, i32* %28, align 16
  %29 = getelementptr inbounds i32, i32* %9, i64 18
  store i32 6, i32* %29, align 8
  %30 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = call noundef i32 @_Z16getMinDiceThrowsPii(i32* noundef %9, i32 noundef %31)
  %33 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %30, i32 noundef %32)
  store i32 0, i32* %1, align 4
  %34 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #11

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #11

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EED2Ev(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %7 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* sret(%"struct.std::_Deque_iterator") align 8 %3, %"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %7) #3
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE3endEv(%"struct.std::_Deque_iterator"* sret(%"struct.std::_Deque_iterator") align 8 %4, %"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %7) #3
  %8 = bitcast %"class.std::deque"* %7 to %"class.std::_Deque_base"*
  %9 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %8) #3
  invoke void @_ZNSt5dequeI10queueEntrySaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %7, %"struct.std::_Deque_iterator"* noundef %3, %"struct.std::_Deque_iterator"* noundef %4, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9)
          to label %10 unwind label %12

10:                                               ; preds = %1
  %11 = bitcast %"class.std::deque"* %7 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %11) #3
  ret void

12:                                               ; preds = %1
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6, align 4
  %16 = bitcast %"class.std::deque"* %7 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %16) #3
  br label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  call void @__clang_call_terminate(i8* %18) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE15_M_destroy_dataESt15_Deque_iteratorIS0_RS0_PS0_ES6_RKS1_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, %"struct.std::_Deque_iterator"* noundef %1, %"struct.std::_Deque_iterator"* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #7 comdat align 2 {
  %5 = alloca %"class.std::deque"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %5, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %6, align 8
  %7 = load %"class.std::deque"*, %"class.std::deque"** %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* noalias sret(%"struct.std::_Deque_iterator") align 8 %0, %"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %1) #7 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::deque"*, align 8
  %5 = bitcast %"struct.std::_Deque_iterator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::deque"* %1, %"class.std::deque"** %4, align 8
  %6 = load %"class.std::deque"*, %"class.std::deque"** %4, align 8
  %7 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %8, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %9) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE3endEv(%"struct.std::_Deque_iterator"* noalias sret(%"struct.std::_Deque_iterator") align 8 %0, %"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %1) #7 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::deque"*, align 8
  %5 = bitcast %"struct.std::_Deque_iterator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::deque"* %1, %"class.std::deque"** %4, align 8
  %6 = load %"class.std::deque"*, %"class.std::deque"** %4, align 8
  %7 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %8, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %9) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EED2Ev(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %4, i32 0, i32 0
  %6 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %7 = icmp ne %struct.queueEntry** %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %10, i32 0, i32 3
  %12 = load %struct.queueEntry**, %struct.queueEntry*** %11, align 8
  %13 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %13, i32 0, i32 3
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %14, i32 0, i32 3
  %16 = load %struct.queueEntry**, %struct.queueEntry*** %15, align 8
  %17 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %16, i64 1
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %3, %struct.queueEntry** noundef %12, %struct.queueEntry** noundef %17) #3
  %18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %18, i32 0, i32 0
  %20 = load %struct.queueEntry**, %struct.queueEntry*** %19, align 8
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %3, %struct.queueEntry** noundef %20, i64 noundef %23) #3
  br label %24

24:                                               ; preds = %8, %1
  %25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %25) #3
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #12 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #16
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"** %4, align 8
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load %struct.queueEntry*, %struct.queueEntry** %8, align 8
  store %struct.queueEntry* %9, %struct.queueEntry** %6, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 1
  %11 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %11, i32 0, i32 1
  %13 = load %struct.queueEntry*, %struct.queueEntry** %12, align 8
  store %struct.queueEntry* %13, %struct.queueEntry** %10, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 2
  %15 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %15, i32 0, i32 2
  %17 = load %struct.queueEntry*, %struct.queueEntry** %16, align 8
  store %struct.queueEntry* %17, %struct.queueEntry** %14, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 3
  %19 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %19, i32 0, i32 3
  %21 = load %struct.queueEntry**, %struct.queueEntry*** %20, align 8
  store %struct.queueEntry** %21, %struct.queueEntry*** %18, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  %7 = alloca %struct.queueEntry**, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %8 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %9, %struct.queueEntry*** %7, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  %12 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %13 = icmp ult %struct.queueEntry** %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  %16 = load %struct.queueEntry*, %struct.queueEntry** %15, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %8, %struct.queueEntry* noundef %16) #3
  br label %17

17:                                               ; preds = %14
  %18 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  %19 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %18, i32 1
  store %struct.queueEntry** %19, %struct.queueEntry*** %7, align 8
  br label %10, !llvm.loop !11

20:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry** noundef %1, i64 noundef %2) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  call void @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.0"* sret(%"class.std::allocator.0") align 1 %7, %"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %10) #3
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %12 = load i64, i64* %6, align 8
  invoke void @_ZNSt16allocator_traitsISaIP10queueEntryEE10deallocateERS2_PS1_m(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %7, %struct.queueEntry** noundef %11, i64 noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %3
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %7) #3
  ret void

14:                                               ; preds = %3
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %8, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %9, align 4
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %7) #3
  br label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  call void @__clang_call_terminate(i8* %19) #16
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %0, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"** %2, align 8
  %3 = load %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"*, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI10queueEntryED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry* noundef %1) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Deque_base"*, align 8
  %4 = alloca %struct.queueEntry*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %3, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %4, align 8
  %5 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %3, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %6 to %"class.std::allocator"*
  %8 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  %9 = invoke noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8)
          to label %10 unwind label %12

10:                                               ; preds = %2
  invoke void @_ZNSt16allocator_traitsISaI10queueEntryEE10deallocateERS1_PS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %7, %struct.queueEntry* noundef %8, i64 noundef %9)
          to label %11 unwind label %12

11:                                               ; preds = %10
  ret void

12:                                               ; preds = %10, %2
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #16
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI10queueEntryEE10deallocateERS1_PS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry* noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct.queueEntry*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %struct.queueEntry*, %struct.queueEntry** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %8, %struct.queueEntry* noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef %0) #7 comdat {
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry* noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %struct.queueEntry*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %struct.queueEntry*, %struct.queueEntry** %5, align 8
  %9 = bitcast %struct.queueEntry* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.0"* noalias sret(%"class.std::allocator.0") align 1 %0, %"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %1) #7 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = bitcast %"class.std::allocator.0"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::_Deque_base"* %1, %"class.std::_Deque_base"** %4, align 8
  %6 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  %7 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %6) #3
  call void @_ZNSaIP10queueEntryEC2IS_EERKSaIT_E(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %7) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP10queueEntryEE10deallocateERS2_PS1_m(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry** noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %8 = bitcast %"class.std::allocator.0"* %7 to %"class.__gnu_cxx::new_allocator.1"*
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %8, %struct.queueEntry** noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %2, align 8
  %3 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %2, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIP10queueEntryEC2IS_EERKSaIT_E(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %3, align 8
  %6 = bitcast %"class.std::allocator.0"* %5 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry** noundef %1, i64 noundef %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = bitcast %struct.queueEntry** %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIP10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI10queueEntryED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryED2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EEC2Ev(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EEC2Ev(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %4)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EEC2Ev(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %5 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %5, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %6)
  invoke void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
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
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %6) #3
  br label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %0, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"** %2, align 8
  %3 = load %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"*, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaI10queueEntryEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  %5 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3, i32 0, i32 0
  store %struct.queueEntry** null, %struct.queueEntry*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %8 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %8) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Deque_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.queueEntry**, align 8
  %9 = alloca %struct.queueEntry**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8)
  %15 = udiv i64 %13, %14
  %16 = add i64 %15, 1
  store i64 %16, i64* %5, align 8
  store i64 8, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %7, align 8
  %19 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call noundef %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, i64 noundef %25)
  %27 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %27, i32 0, i32 0
  store %struct.queueEntry** %26, %struct.queueEntry*** %28, align 8
  %29 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %30 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %29, i32 0, i32 0
  %31 = load %struct.queueEntry**, %struct.queueEntry*** %30, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %34, %35
  %37 = udiv i64 %36, 2
  %38 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %31, i64 %37
  store %struct.queueEntry** %38, %struct.queueEntry*** %8, align 8
  %39 = load %struct.queueEntry**, %struct.queueEntry*** %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %39, i64 %40
  store %struct.queueEntry** %41, %struct.queueEntry*** %9, align 8
  %42 = load %struct.queueEntry**, %struct.queueEntry*** %8, align 8
  %43 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  invoke void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, %struct.queueEntry** noundef %42, %struct.queueEntry** noundef %43)
          to label %44 unwind label %45

44:                                               ; preds = %2
  br label %67

45:                                               ; preds = %2
  %46 = landingpad { i8*, i32 }
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %10, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  %51 = call i8* @__cxa_begin_catch(i8* %50) #3
  %52 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %52, i32 0, i32 0
  %54 = load %struct.queueEntry**, %struct.queueEntry*** %53, align 8
  %55 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %56 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, %struct.queueEntry** noundef %54, i64 noundef %57) #3
  %58 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %59 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %58, i32 0, i32 0
  store %struct.queueEntry** null, %struct.queueEntry*** %59, align 8
  %60 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  invoke void @__cxa_rethrow() #17
          to label %101 unwind label %62

62:                                               ; preds = %49
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  store i8* %64, i8** %10, align 8
  %65 = extractvalue { i8*, i32 } %63, 1
  store i32 %65, i32* %11, align 4
  invoke void @__cxa_end_catch()
          to label %66 unwind label %98

66:                                               ; preds = %62
  br label %93

67:                                               ; preds = %44
  %68 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %69 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %68, i32 0, i32 2
  %70 = load %struct.queueEntry**, %struct.queueEntry*** %8, align 8
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %69, %struct.queueEntry** noundef %70) #3
  %71 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %72 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %71, i32 0, i32 3
  %73 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %74 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %73, i64 -1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %72, %struct.queueEntry** noundef %74) #3
  %75 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %76, i32 0, i32 1
  %78 = load %struct.queueEntry*, %struct.queueEntry** %77, align 8
  %79 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %80 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %79, i32 0, i32 2
  %81 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %80, i32 0, i32 0
  store %struct.queueEntry* %78, %struct.queueEntry** %81, align 8
  %82 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %83 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %82, i32 0, i32 3
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %83, i32 0, i32 1
  %85 = load %struct.queueEntry*, %struct.queueEntry** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8)
  %88 = urem i64 %86, %87
  %89 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %85, i64 %88
  %90 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %91 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %90, i32 0, i32 3
  %92 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %91, i32 0, i32 0
  store %struct.queueEntry* %89, %struct.queueEntry** %92, align 8
  ret void

93:                                               ; preds = %66
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = insertvalue { i8*, i32 } undef, i8* %94, 0
  %97 = insertvalue { i8*, i32 } %96, i32 %95, 1
  resume { i8*, i32 } %97

98:                                               ; preds = %62
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #16
  unreachable

101:                                              ; preds = %49
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaI10queueEntryEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  store %struct.queueEntry* null, %struct.queueEntry** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store %struct.queueEntry* null, %struct.queueEntry** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store %struct.queueEntry* null, %struct.queueEntry** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store %struct.queueEntry** null, %struct.queueEntry*** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #7 comdat {
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

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::_Deque_base"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %3, align 8
  call void @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE20_M_get_map_allocatorEv(%"class.std::allocator.0"* sret(%"class.std::allocator.0") align 1 %5, %"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %8) #3
  %9 = load i64, i64* %4, align 8
  %10 = invoke noundef %struct.queueEntry** @_ZNSt16allocator_traitsISaIP10queueEntryEE8allocateERS2_m(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %9)
          to label %11 unwind label %12

11:                                               ; preds = %2
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %5) #3
  ret %struct.queueEntry** %10

12:                                               ; preds = %2
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %6, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %7, align 4
  call void @_ZNSaIP10queueEntryED2Ev(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %5) #3
  br label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Deque_base"*, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  %7 = alloca %struct.queueEntry**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %10 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %4, align 8
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %11, %struct.queueEntry*** %7, align 8
  br label %12

12:                                               ; preds = %20, %3
  %13 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  %14 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %15 = icmp ult %struct.queueEntry** %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = invoke noundef %struct.queueEntry* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %10)
          to label %18 unwind label %23

18:                                               ; preds = %16
  %19 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  store %struct.queueEntry* %17, %struct.queueEntry** %19, align 8
  br label %20

20:                                               ; preds = %18
  %21 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  %22 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %21, i32 1
  store %struct.queueEntry** %22, %struct.queueEntry*** %7, align 8
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
  %30 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %31 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %10, %struct.queueEntry** noundef %30, %struct.queueEntry** noundef %31) #3
  invoke void @__cxa_rethrow() #17
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
  call void @__clang_call_terminate(i8* %46) #16
  unreachable

47:                                               ; preds = %27
  unreachable
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %struct.queueEntry** noundef %1) #7 comdat align 2 {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %struct.queueEntry**, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %4, align 8
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %6 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 3
  store %struct.queueEntry** %6, %struct.queueEntry*** %7, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %9 = load %struct.queueEntry*, %struct.queueEntry** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 1
  store %struct.queueEntry* %9, %struct.queueEntry** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 1
  %12 = load %struct.queueEntry*, %struct.queueEntry** %11, align 8
  %13 = call noundef i64 @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv() #3
  %14 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %12, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 2
  store %struct.queueEntry* %14, %struct.queueEntry** %15, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZNSt16allocator_traitsISaIP10queueEntryEE8allocateERS2_m(%"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %3, align 8
  %6 = bitcast %"class.std::allocator.0"* %5 to %"class.__gnu_cxx::new_allocator.1"*
  %7 = load i64, i64* %4, align 8
  %8 = call noundef %struct.queueEntry** @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, i8* noundef null)
  ret %struct.queueEntry** %8
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZN9__gnu_cxx13new_allocatorIP10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 8
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #18
  %16 = bitcast i8* %15 to %struct.queueEntry**
  ret %struct.queueEntry** %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0) #4 comdat align 2 {
  %2 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %0, %"class.std::_Deque_base"** %2, align 8
  %3 = load %"class.std::_Deque_base"*, %"class.std::_Deque_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %4 to %"class.std::allocator"*
  %6 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8)
  %7 = call noundef %struct.queueEntry* @_ZNSt16allocator_traitsISaI10queueEntryEE8allocateERS1_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6)
  ret %struct.queueEntry* %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry* @_ZNSt16allocator_traitsISaI10queueEntryEE8allocateERS1_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load i64, i64* %4, align 8
  %8 = call noundef %struct.queueEntry* @_ZN9__gnu_cxx13new_allocatorI10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, i8* noundef null)
  ret %struct.queueEntry* %8
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry* @_ZN9__gnu_cxx13new_allocatorI10queueEntryE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 8
  %15 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %14) #18
  %16 = bitcast i8* %15 to %struct.queueEntry*
  ret %struct.queueEntry* %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv() #7 comdat align 2 {
  %1 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8)
  ret i64 %1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE9push_backERKS0_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %1) #4 comdat align 2 {
  %3 = alloca %"class.std::deque"*, align 8
  %4 = alloca %struct.queueEntry*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %3, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %4, align 8
  %5 = load %"class.std::deque"*, %"class.std::deque"** %3, align 8
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 0
  %10 = load %struct.queueEntry*, %struct.queueEntry** %9, align 8
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load %struct.queueEntry*, %struct.queueEntry** %14, align 8
  %16 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %15, i64 -1
  %17 = icmp ne %struct.queueEntry* %10, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %20 to %"class.std::allocator"*
  %22 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %23 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %23, i32 0, i32 3
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %24, i32 0, i32 0
  %26 = load %struct.queueEntry*, %struct.queueEntry** %25, align 8
  %27 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %21, %struct.queueEntry* noundef %26, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %27) #3
  %28 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %29 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %28, i32 0, i32 0
  %30 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %29, i32 0, i32 3
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %30, i32 0, i32 0
  %32 = load %struct.queueEntry*, %struct.queueEntry** %31, align 8
  %33 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %32, i32 1
  store %struct.queueEntry* %33, %struct.queueEntry** %31, align 8
  br label %36

34:                                               ; preds = %2
  %35 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %35)
  br label %36

36:                                               ; preds = %34, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry* noundef %1, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %2) #7 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %struct.queueEntry*, align 8
  %6 = alloca %struct.queueEntry*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %5, align 8
  store %struct.queueEntry* %2, %struct.queueEntry** %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load %struct.queueEntry*, %struct.queueEntry** %5, align 8
  %10 = load %struct.queueEntry*, %struct.queueEntry** %6, align 8
  %11 = call noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %10) #3
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %8, %struct.queueEntry* noundef %9, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %11) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %1) #4 comdat align 2 {
  %3 = alloca %"class.std::deque"*, align 8
  %4 = alloca %struct.queueEntry*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %3, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %4, align 8
  %5 = load %"class.std::deque"*, %"class.std::deque"** %3, align 8
  %6 = call noundef i64 @_ZNKSt5dequeI10queueEntrySaIS0_EE4sizeEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5) #3
  %7 = call noundef i64 @_ZNKSt5dequeI10queueEntrySaIS0_EE8max_sizeEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5) #3
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #17
  unreachable

10:                                               ; preds = %2
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 1)
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = call noundef %struct.queueEntry* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %11)
  %13 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %14, i32 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %15, i32 0, i32 3
  %17 = load %struct.queueEntry**, %struct.queueEntry*** %16, align 8
  %18 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %17, i64 1
  store %struct.queueEntry* %12, %struct.queueEntry** %18, align 8
  %19 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %20 to %"class.std::allocator"*
  %22 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %23 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %23, i32 0, i32 3
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %24, i32 0, i32 0
  %26 = load %struct.queueEntry*, %struct.queueEntry** %25, align 8
  %27 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  %28 = call noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %27) #3
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %21, %struct.queueEntry* noundef %26, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %28) #3
  %29 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %29, i32 0, i32 0
  %31 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %30, i32 0, i32 3
  %32 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %33, i32 0, i32 3
  %35 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %34, i32 0, i32 3
  %36 = load %struct.queueEntry**, %struct.queueEntry*** %35, align 8
  %37 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %36, i64 1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %31, %struct.queueEntry** noundef %37) #3
  %38 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %38, i32 0, i32 0
  %40 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %39, i32 0, i32 3
  %41 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %40, i32 0, i32 1
  %42 = load %struct.queueEntry*, %struct.queueEntry** %41, align 8
  %43 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %44 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %43, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %44, i32 0, i32 3
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %45, i32 0, i32 0
  store %struct.queueEntry* %42, %struct.queueEntry** %46, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE9constructIS1_JRKS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry* noundef %1, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %2) #7 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca %struct.queueEntry*, align 8
  %6 = alloca %struct.queueEntry*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %5, align 8
  store %struct.queueEntry* %2, %struct.queueEntry** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load %struct.queueEntry*, %struct.queueEntry** %5, align 8
  %9 = bitcast %struct.queueEntry* %8 to i8*
  %10 = bitcast i8* %9 to %struct.queueEntry*
  %11 = load %struct.queueEntry*, %struct.queueEntry** %6, align 8
  %12 = call noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %11) #3
  %13 = bitcast %struct.queueEntry* %10 to i8*
  %14 = bitcast %struct.queueEntry* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %0) #7 comdat {
  %2 = alloca %struct.queueEntry*, align 8
  store %struct.queueEntry* %0, %struct.queueEntry** %2, align 8
  %3 = load %struct.queueEntry*, %struct.queueEntry** %2, align 8
  ret %struct.queueEntry* %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeI10queueEntrySaIS0_EE4sizeEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %5, i32 0, i32 3
  %7 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %8, i32 0, i32 2
  %10 = call noundef i64 @_ZStmiI10queueEntryRS0_PS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %6, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %9) #3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeI10queueEntrySaIS0_EE8max_sizeEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %4) #3
  %6 = call noundef i64 @_ZNSt5dequeI10queueEntrySaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #3
  ret i64 %6
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #14

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.std::deque"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::deque"*, %"class.std::deque"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %6, 1
  %8 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %13, i32 0, i32 3
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %14, i32 0, i32 3
  %16 = load %struct.queueEntry**, %struct.queueEntry*** %15, align 8
  %17 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %18, i32 0, i32 0
  %20 = load %struct.queueEntry**, %struct.queueEntry*** %19, align 8
  %21 = ptrtoint %struct.queueEntry** %16 to i64
  %22 = ptrtoint %struct.queueEntry** %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 8
  %25 = sub i64 %11, %24
  %26 = icmp ugt i64 %7, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5, i64 noundef %28, i1 noundef zeroext false)
  br label %29

29:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiI10queueEntryRS0_PS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %1) #7 comdat {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"** %4, align 8
  %5 = call noundef i64 @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv() #3
  %6 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 3
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %7, align 8
  %9 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 3
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %10, align 8
  %12 = ptrtoint %struct.queueEntry** %8 to i64
  %13 = ptrtoint %struct.queueEntry** %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = sub nsw i64 %15, 1
  %17 = mul nsw i64 %5, %16
  %18 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %18, i32 0, i32 0
  %20 = load %struct.queueEntry*, %struct.queueEntry** %19, align 8
  %21 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %21, i32 0, i32 1
  %23 = load %struct.queueEntry*, %struct.queueEntry** %22, align 8
  %24 = ptrtoint %struct.queueEntry* %20 to i64
  %25 = ptrtoint %struct.queueEntry* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = add nsw i64 %17, %27
  %29 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %29, i32 0, i32 2
  %31 = load %struct.queueEntry*, %struct.queueEntry** %30, align 8
  %32 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  %34 = load %struct.queueEntry*, %struct.queueEntry** %33, align 8
  %35 = ptrtoint %struct.queueEntry* %31 to i64
  %36 = ptrtoint %struct.queueEntry* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = add nsw i64 %28, %38
  ret i64 %39
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeI10queueEntrySaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  store i64 9223372036854775807, i64* %3, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaI10queueEntryEE8max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #3
  store i64 %6, i64* %4, align 8
  %7 = invoke noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %3, i64* noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %7, align 8
  ret i64 %9

10:                                               ; preds = %1
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI10queueEntryEE8max_sizeERKS1_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #7 comdat {
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

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) #4 comdat align 2 {
  %4 = alloca %"class.std::deque"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.queueEntry**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.queueEntry**, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = zext i1 %2 to i8
  store i8 %12, i8* %6, align 1
  %13 = load %"class.std::deque"*, %"class.std::deque"** %4, align 8
  %14 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %14, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %15, i32 0, i32 3
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 3
  %18 = load %struct.queueEntry**, %struct.queueEntry*** %17, align 8
  %19 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %21, i32 0, i32 3
  %23 = load %struct.queueEntry**, %struct.queueEntry*** %22, align 8
  %24 = ptrtoint %struct.queueEntry** %18 to i64
  %25 = ptrtoint %struct.queueEntry** %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 2, %36
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %3
  %40 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %41 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %40, i32 0, i32 0
  %42 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %41, i32 0, i32 0
  %43 = load %struct.queueEntry**, %struct.queueEntry*** %42, align 8
  %44 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %45 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  %50 = udiv i64 %49, 2
  %51 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %43, i64 %50
  %52 = load i8, i8* %6, align 1
  %53 = trunc i8 %52 to i1
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i64, i64* %5, align 8
  br label %57

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i64 [ %55, %54 ], [ 0, %56 ]
  %59 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %51, i64 %58
  store %struct.queueEntry** %59, %struct.queueEntry*** %9, align 8
  %60 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %61 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %62 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %61, i32 0, i32 0
  %63 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %62, i32 0, i32 2
  %64 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %63, i32 0, i32 3
  %65 = load %struct.queueEntry**, %struct.queueEntry*** %64, align 8
  %66 = icmp ult %struct.queueEntry** %60, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %69 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %68, i32 0, i32 0
  %70 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %69, i32 0, i32 2
  %71 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %70, i32 0, i32 3
  %72 = load %struct.queueEntry**, %struct.queueEntry*** %71, align 8
  %73 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %74 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %73, i32 0, i32 0
  %75 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %74, i32 0, i32 3
  %76 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %75, i32 0, i32 3
  %77 = load %struct.queueEntry**, %struct.queueEntry*** %76, align 8
  %78 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %77, i64 1
  %79 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %80 = call noundef %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %72, %struct.queueEntry** noundef %78, %struct.queueEntry** noundef %79)
  br label %97

81:                                               ; preds = %57
  %82 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %83 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %82, i32 0, i32 0
  %84 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %83, i32 0, i32 2
  %85 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %84, i32 0, i32 3
  %86 = load %struct.queueEntry**, %struct.queueEntry*** %85, align 8
  %87 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %88 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %87, i32 0, i32 0
  %89 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %88, i32 0, i32 3
  %90 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %89, i32 0, i32 3
  %91 = load %struct.queueEntry**, %struct.queueEntry*** %90, align 8
  %92 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %91, i64 1
  %93 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %93, i64 %94
  %96 = call noundef %struct.queueEntry** @_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %86, %struct.queueEntry** noundef %92, %struct.queueEntry** noundef %95)
  br label %97

97:                                               ; preds = %81, %67
  br label %157

98:                                               ; preds = %3
  %99 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %100 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %99, i32 0, i32 0
  %101 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %104 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %103, i32 0, i32 0
  %105 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %104, i32 0, i32 1
  %106 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %105, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %102, %107
  %109 = add i64 %108, 2
  store i64 %109, i64* %10, align 8
  %110 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %111 = load i64, i64* %10, align 8
  %112 = call noundef %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %110, i64 noundef %111)
  store %struct.queueEntry** %112, %struct.queueEntry*** %11, align 8
  %113 = load %struct.queueEntry**, %struct.queueEntry*** %11, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %8, align 8
  %116 = sub i64 %114, %115
  %117 = udiv i64 %116, 2
  %118 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %113, i64 %117
  %119 = load i8, i8* %6, align 1
  %120 = trunc i8 %119 to i1
  br i1 %120, label %121, label %123

121:                                              ; preds = %98
  %122 = load i64, i64* %5, align 8
  br label %124

123:                                              ; preds = %98
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i64 [ %122, %121 ], [ 0, %123 ]
  %126 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %118, i64 %125
  store %struct.queueEntry** %126, %struct.queueEntry*** %9, align 8
  %127 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %128 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %127, i32 0, i32 0
  %129 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %128, i32 0, i32 2
  %130 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %129, i32 0, i32 3
  %131 = load %struct.queueEntry**, %struct.queueEntry*** %130, align 8
  %132 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %133 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %132, i32 0, i32 0
  %134 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %133, i32 0, i32 3
  %135 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %134, i32 0, i32 3
  %136 = load %struct.queueEntry**, %struct.queueEntry*** %135, align 8
  %137 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %136, i64 1
  %138 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %139 = call noundef %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %131, %struct.queueEntry** noundef %137, %struct.queueEntry** noundef %138)
  %140 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %141 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %142 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %141, i32 0, i32 0
  %143 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %142, i32 0, i32 0
  %144 = load %struct.queueEntry**, %struct.queueEntry*** %143, align 8
  %145 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %146 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %145, i32 0, i32 0
  %147 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %140, %struct.queueEntry** noundef %144, i64 noundef %148) #3
  %149 = load %struct.queueEntry**, %struct.queueEntry*** %11, align 8
  %150 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %151 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %150, i32 0, i32 0
  %152 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %151, i32 0, i32 0
  store %struct.queueEntry** %149, %struct.queueEntry*** %152, align 8
  %153 = load i64, i64* %10, align 8
  %154 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %155 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %154, i32 0, i32 0
  %156 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %155, i32 0, i32 1
  store i64 %153, i64* %156, align 8
  br label %157

157:                                              ; preds = %124, %97
  %158 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %159 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %158, i32 0, i32 0
  %160 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %159, i32 0, i32 2
  %161 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %160, %struct.queueEntry** noundef %161) #3
  %162 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %163 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %162, i32 0, i32 0
  %164 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %163, i32 0, i32 3
  %165 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %165, i64 %166
  %168 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %167, i64 -1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %164, %struct.queueEntry** noundef %168) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = call noundef %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %7)
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = call noundef %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %9)
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %12 = call noundef %struct.queueEntry** @_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %11)
  ret %struct.queueEntry** %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = call noundef %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %7)
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = call noundef %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %9)
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %12 = call noundef %struct.queueEntry** @_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %11)
  ret %struct.queueEntry** %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = call noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %7) #3
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = call noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %9) #3
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %12 = call noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %11) #3
  %13 = call noundef %struct.queueEntry** @_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %12)
  %14 = call noundef %struct.queueEntry** @_ZSt12__niter_wrapIPP10queueEntryET_RKS3_S3_(%struct.queueEntry*** noundef nonnull align 8 dereferenceable(8) %6, %struct.queueEntry** noundef %13)
  ret %struct.queueEntry** %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt12__miter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %0) #7 comdat {
  %2 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %2, align 8
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %2, align 8
  ret %struct.queueEntry** %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt12__niter_wrapIPP10queueEntryET_RKS3_S3_(%struct.queueEntry*** noundef nonnull align 8 dereferenceable(8) %0, %struct.queueEntry** noundef %1) #7 comdat {
  %3 = alloca %struct.queueEntry***, align 8
  %4 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry*** %0, %struct.queueEntry**** %3, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %4, align 8
  %5 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  ret %struct.queueEntry** %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  %7 = alloca i8, align 1
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %11 = call noundef %struct.queueEntry** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %9, %struct.queueEntry** noundef %10)
  ret %struct.queueEntry** %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %0) #7 comdat {
  %2 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %2, align 8
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %2, align 8
  ret %struct.queueEntry** %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #7 comdat align 2 {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  %7 = alloca i64, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %10 = ptrtoint %struct.queueEntry** %8 to i64
  %11 = ptrtoint %struct.queueEntry** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %18 = bitcast %struct.queueEntry** %17 to i8*
  %19 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %20 = bitcast %struct.queueEntry** %19 to i8*
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 8, %21
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %24, i64 %25
  ret %struct.queueEntry** %26
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = call noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %7) #3
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = call noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %9) #3
  %11 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %12 = call noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %11) #3
  %13 = call noundef %struct.queueEntry** @_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %12)
  %14 = call noundef %struct.queueEntry** @_ZSt12__niter_wrapIPP10queueEntryET_RKS3_S3_(%struct.queueEntry*** noundef nonnull align 8 dereferenceable(8) %6, %struct.queueEntry** noundef %13)
  ret %struct.queueEntry** %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  %7 = alloca i8, align 1
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  store i8 1, i8* %7, align 1
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %10 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %11 = call noundef %struct.queueEntry** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %9, %struct.queueEntry** noundef %10)
  ret %struct.queueEntry** %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #7 comdat align 2 {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  %7 = alloca i64, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %10 = ptrtoint %struct.queueEntry** %8 to i64
  %11 = ptrtoint %struct.queueEntry** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %17, i64 %19
  %21 = bitcast %struct.queueEntry** %20 to i8*
  %22 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %23 = bitcast %struct.queueEntry** %22 to i8*
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 8, %24
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %23, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %27, i64 %29
  ret %struct.queueEntry** %30
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5dequeI10queueEntrySaIS0_EE5emptyEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %5, i32 0, i32 3
  %7 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %8, i32 0, i32 2
  %10 = call noundef zeroext i1 @_ZSteqI10queueEntryRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %6, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %9) #3
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqI10queueEntryRS0_PS0_EbRKSt15_Deque_iteratorIT_T0_T1_ES9_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %1) #7 comdat {
  %3 = alloca %"struct.std::_Deque_iterator"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %3, align 8
  store %"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"** %4, align 8
  %5 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %struct.queueEntry*, %struct.queueEntry** %6, align 8
  %8 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 0
  %10 = load %struct.queueEntry*, %struct.queueEntry** %9, align 8
  %11 = icmp eq %struct.queueEntry* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZNSt5dequeI10queueEntrySaIS0_EE5frontEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %4 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE5beginEv(%"struct.std::_Deque_iterator"* sret(%"struct.std::_Deque_iterator") align 8 %3, %"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %4) #3
  %5 = call noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZNKSt15_Deque_iteratorI10queueEntryRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %3) #3
  ret %struct.queueEntry* %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZNKSt15_Deque_iteratorI10queueEntryRS0_PS0_EdeEv(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0) #7 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %0, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  ret %struct.queueEntry* %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE9pop_frontEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %5, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %struct.queueEntry*, %struct.queueEntry** %7, align 8
  %9 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %10, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %11, i32 0, i32 2
  %13 = load %struct.queueEntry*, %struct.queueEntry** %12, align 8
  %14 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %13, i64 -1
  %15 = icmp ne %struct.queueEntry* %8, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %18 to %"class.std::allocator"*
  %20 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21, i32 0, i32 2
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %22, i32 0, i32 0
  %24 = load %struct.queueEntry*, %struct.queueEntry** %23, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19, %struct.queueEntry* noundef %24) #3
  %25 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %26 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %26, i32 0, i32 2
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %27, i32 0, i32 0
  %29 = load %struct.queueEntry*, %struct.queueEntry** %28, align 8
  %30 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %29, i32 1
  store %struct.queueEntry* %30, %struct.queueEntry** %28, align 8
  br label %33

31:                                               ; preds = %1
  invoke void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_pop_front_auxEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %3)
          to label %32 unwind label %34

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32, %16
  ret void

34:                                               ; preds = %31
  %35 = landingpad { i8*, i32 }
          catch i8* null
  %36 = extractvalue { i8*, i32 } %35, 0
  call void @__clang_call_terminate(i8* %36) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry* noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %struct.queueEntry*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %4, align 8
  %5 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*
  %7 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %6, %struct.queueEntry* noundef %7) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_pop_front_auxEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0) #7 comdat align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %0, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::deque"*, %"class.std::deque"** %2, align 8
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %4) #3
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %7, i32 0, i32 2
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %8, i32 0, i32 0
  %10 = load %struct.queueEntry*, %struct.queueEntry** %9, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5, %struct.queueEntry* noundef %10) #3
  %11 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %12 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %13, i32 0, i32 2
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %14, i32 0, i32 1
  %16 = load %struct.queueEntry*, %struct.queueEntry** %15, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %11, %struct.queueEntry* noundef %16) #3
  %17 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %18, i32 0, i32 2
  %20 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21, i32 0, i32 2
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %22, i32 0, i32 3
  %24 = load %struct.queueEntry**, %struct.queueEntry*** %23, align 8
  %25 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %24, i64 1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %19, %struct.queueEntry** noundef %25) #3
  %26 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %27 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %27, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %28, i32 0, i32 1
  %30 = load %struct.queueEntry*, %struct.queueEntry** %29, align 8
  %31 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %32, i32 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %33, i32 0, i32 0
  store %struct.queueEntry* %30, %struct.queueEntry** %34, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %struct.queueEntry* noundef %1) #7 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %4 = alloca %struct.queueEntry*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 8
  store %struct.queueEntry* %1, %struct.queueEntry** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %3, align 8
  %6 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_snake_ladder.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { allocsize(0) }

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
