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
%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl" = type { %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data" }
%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data" = type { %struct.queueEntry**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
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

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_Deque_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_ = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_ = comdat any

$_ZNSt16allocator_traitsISaIP10queueEntryEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIP10queueEntryE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_allocate_nodeEv = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI10queueEntryE11_M_max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI10queueEntryE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNKSt5dequeI10queueEntrySaIS0_EE4sizeEv = comdat any

$_ZNKSt5dequeI10queueEntrySaIS0_EE8max_sizeEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE22_M_reserve_map_at_backEm = comdat any

$_ZStmiRKSt15_Deque_iteratorI10queueEntryRS0_PS0_ES5_ = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNSt16allocator_traitsISaI10queueEntryEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv = comdat any

$_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_ = comdat any

$_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPP10queueEntryET_S3_ = comdat any

$_ZSt12__niter_wrapIPP10queueEntryET_RKS3_S3_ = comdat any

$_ZSt14__copy_move_a1ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPP10queueEntryET_S3_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_ = comdat any

$_ZNKSt5dequeI10queueEntrySaIS0_EE5emptyEv = comdat any

$_ZSteqRKSt15_Deque_iteratorI10queueEntryRS0_PS0_ES5_ = comdat any

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
  %5 = bitcast %"class.std::deque"* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 80, i1 false)
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
  %9 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %8 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %9, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %10) #3
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
  %9 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %8 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %9, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2ERKS3_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %10) #3
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
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %4 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %5, i32 0, i32 0
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %8 = icmp ne %struct.queueEntry** %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %11 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %10 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %11, i32 0, i32 2
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %12, i32 0, i32 3
  %14 = load %struct.queueEntry**, %struct.queueEntry*** %13, align 8
  %15 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %15 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load %struct.queueEntry**, %struct.queueEntry*** %18, align 8
  %20 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %19, i64 1
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %3, %struct.queueEntry** noundef %14, %struct.queueEntry** noundef %20) #3
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %22, i32 0, i32 0
  %24 = load %struct.queueEntry**, %struct.queueEntry*** %23, align 8
  %25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  %26 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %25 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %3, %struct.queueEntry** noundef %24, i64 noundef %28) #3
  br label %29

29:                                               ; preds = %9, %1
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %3, i32 0, i32 0
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %30) #3
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
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* noundef nonnull align 8 dereferenceable(80) %6) #3
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
  %5 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %3 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_Deque_impl_dataC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* noundef nonnull align 8 dereferenceable(80) %5) #3
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
  %22 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %25 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %24 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call noundef %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, i64 noundef %27)
  %29 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %30 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %29 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %30, i32 0, i32 0
  store %struct.queueEntry** %28, %struct.queueEntry*** %31, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %32 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %33, i32 0, i32 0
  %35 = load %struct.queueEntry**, %struct.queueEntry*** %34, align 8
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %37 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %36 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %38 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %35, i64 %42
  store %struct.queueEntry** %43, %struct.queueEntry*** %8, align 8
  %44 = load %struct.queueEntry**, %struct.queueEntry*** %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %44, i64 %45
  store %struct.queueEntry** %46, %struct.queueEntry*** %9, align 8
  %47 = load %struct.queueEntry**, %struct.queueEntry*** %8, align 8
  %48 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  invoke void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_create_nodesEPPS0_S4_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, %struct.queueEntry** noundef %47, %struct.queueEntry** noundef %48)
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
  %58 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %57 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %59 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %58, i32 0, i32 0
  %60 = load %struct.queueEntry**, %struct.queueEntry*** %59, align 8
  %61 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %62 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %61 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %63 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, %struct.queueEntry** noundef %60, i64 noundef %64) #3
  %65 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %66 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %65 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %67 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %66, i32 0, i32 0
  store %struct.queueEntry** null, %struct.queueEntry*** %67, align 8
  %68 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %69 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %68 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %70 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  invoke void @__cxa_rethrow() #17
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
  %78 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %77 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %79 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %78, i32 0, i32 2
  %80 = load %struct.queueEntry**, %struct.queueEntry*** %8, align 8
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %79, %struct.queueEntry** noundef %80) #3
  %81 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %82 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %81 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %83 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %82, i32 0, i32 3
  %84 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %85 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %84, i64 -1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %83, %struct.queueEntry** noundef %85) #3
  %86 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %87 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %86 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %88 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %87, i32 0, i32 2
  %89 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %88, i32 0, i32 1
  %90 = load %struct.queueEntry*, %struct.queueEntry** %89, align 8
  %91 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %92 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %91 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %93 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %92, i32 0, i32 2
  %94 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %93, i32 0, i32 0
  store %struct.queueEntry* %90, %struct.queueEntry** %94, align 8
  %95 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %96 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %95 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %97 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %96, i32 0, i32 3
  %98 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %97, i32 0, i32 1
  %99 = load %struct.queueEntry*, %struct.queueEntry** %98, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8)
  %102 = urem i64 %100, %101
  %103 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %99, i64 %102
  %104 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %105 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %104 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %106 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %105, i32 0, i32 3
  %107 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %106, i32 0, i32 0
  store %struct.queueEntry* %103, %struct.queueEntry** %107, align 8
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
  call void @__clang_call_terminate(i8* %115) #16
  unreachable

116:                                              ; preds = %54
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE16_Deque_impl_dataC2Ev(%"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*, align 8
  store %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %0, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"** %2, align 8
  %3 = load %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*, %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %3, i32 0, i32 0
  store %struct.queueEntry** null, %struct.queueEntry*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %6) #3
  %7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_EC2Ev(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorI10queueEntryEC2Ev(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
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
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 2305843009213693951
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %18) #18
  %20 = bitcast i8* %19 to %struct.queueEntry**
  ret %struct.queueEntry** %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIP10queueEntryE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %0, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"*, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #14

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
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 2305843009213693951
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %18) #18
  %20 = bitcast i8* %19 to %struct.queueEntry*
  ret %struct.queueEntry* %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 {
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
  %8 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %7 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %8, i32 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 0
  %11 = load %struct.queueEntry*, %struct.queueEntry** %10, align 8
  %12 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %13 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %15 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %14, i32 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %15, i32 0, i32 2
  %17 = load %struct.queueEntry*, %struct.queueEntry** %16, align 8
  %18 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %17, i64 -1
  %19 = icmp ne %struct.queueEntry* %11, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %21, i32 0, i32 0
  %23 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %22 to %"class.std::allocator"*
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %25 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %27 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %26, i32 0, i32 3
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %27, i32 0, i32 0
  %29 = load %struct.queueEntry*, %struct.queueEntry** %28, align 8
  %30 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23, %struct.queueEntry* noundef %29, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %30) #3
  %31 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %32 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %33, i32 0, i32 3
  %35 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %34, i32 0, i32 0
  %36 = load %struct.queueEntry*, %struct.queueEntry** %35, align 8
  %37 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %36, i32 1
  store %struct.queueEntry* %37, %struct.queueEntry** %35, align 8
  br label %40

38:                                               ; preds = %2
  %39 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %39)
  br label %40

40:                                               ; preds = %38, %20
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
  %15 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %14 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %15, i32 0, i32 3
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 3
  %18 = load %struct.queueEntry**, %struct.queueEntry*** %17, align 8
  %19 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %18, i64 1
  store %struct.queueEntry* %12, %struct.queueEntry** %19, align 8
  %20 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21 to %"class.std::allocator"*
  %23 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %24 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %24 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %25, i32 0, i32 3
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load %struct.queueEntry*, %struct.queueEntry** %27, align 8
  %29 = load %struct.queueEntry*, %struct.queueEntry** %4, align 8
  %30 = call noundef nonnull align 4 dereferenceable(8) %struct.queueEntry* @_ZSt7forwardIRK10queueEntryEOT_RNSt16remove_referenceIS3_E4typeE(%struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %29) #3
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22, %struct.queueEntry* noundef %28, %struct.queueEntry* noundef nonnull align 4 dereferenceable(8) %30) #3
  %31 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %32 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %33, i32 0, i32 3
  %35 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %35, i32 0, i32 0
  %37 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %36 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %38 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %37, i32 0, i32 3
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %38, i32 0, i32 3
  %40 = load %struct.queueEntry**, %struct.queueEntry*** %39, align 8
  %41 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %40, i64 1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %34, %struct.queueEntry** noundef %41) #3
  %42 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %43 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %42, i32 0, i32 0
  %44 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %43 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %45 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %44, i32 0, i32 3
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %45, i32 0, i32 1
  %47 = load %struct.queueEntry*, %struct.queueEntry** %46, align 8
  %48 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %48, i32 0, i32 0
  %50 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %49 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %51 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %50, i32 0, i32 3
  %52 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %51, i32 0, i32 0
  store %struct.queueEntry* %47, %struct.queueEntry** %52, align 8
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
  %6 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %5 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %6, i32 0, i32 3
  %8 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %9 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %10, i32 0, i32 2
  %12 = call noundef i64 @_ZStmiRKSt15_Deque_iteratorI10queueEntryRS0_PS0_ES5_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %7, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %11) #3
  ret i64 %12
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
  %10 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %9 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %14 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %15, i32 0, i32 3
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 3
  %18 = load %struct.queueEntry**, %struct.queueEntry*** %17, align 8
  %19 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %20 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %21, i32 0, i32 0
  %23 = load %struct.queueEntry**, %struct.queueEntry*** %22, align 8
  %24 = ptrtoint %struct.queueEntry** %18 to i64
  %25 = ptrtoint %struct.queueEntry** %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = sub i64 %12, %27
  %29 = icmp ugt i64 %7, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  call void @_ZNSt5dequeI10queueEntrySaIS0_EE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %5, i64 noundef %31, i1 noundef zeroext false)
  br label %32

32:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt15_Deque_iteratorI10queueEntryRS0_PS0_ES5_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %1) #7 comdat {
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
  %16 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 3
  %18 = load %struct.queueEntry**, %struct.queueEntry*** %17, align 8
  %19 = icmp ne %struct.queueEntry** %18, null
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %15, %21
  %23 = mul nsw i64 %5, %22
  %24 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %24, i32 0, i32 0
  %26 = load %struct.queueEntry*, %struct.queueEntry** %25, align 8
  %27 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %3, align 8
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %27, i32 0, i32 1
  %29 = load %struct.queueEntry*, %struct.queueEntry** %28, align 8
  %30 = ptrtoint %struct.queueEntry* %26 to i64
  %31 = ptrtoint %struct.queueEntry* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = add nsw i64 %23, %33
  %35 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %36 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %35, i32 0, i32 2
  %37 = load %struct.queueEntry*, %struct.queueEntry** %36, align 8
  %38 = load %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"** %4, align 8
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %38, i32 0, i32 0
  %40 = load %struct.queueEntry*, %struct.queueEntry** %39, align 8
  %41 = ptrtoint %struct.queueEntry* %37 to i64
  %42 = ptrtoint %struct.queueEntry* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 8
  %45 = add nsw i64 %34, %44
  ret i64 %45
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

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #7 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorI10queueEntryE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i64 %4
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
  %16 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %15 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %17 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load %struct.queueEntry**, %struct.queueEntry*** %18, align 8
  %20 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %21 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %23 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %22, i32 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %23, i32 0, i32 3
  %25 = load %struct.queueEntry**, %struct.queueEntry*** %24, align 8
  %26 = ptrtoint %struct.queueEntry** %19 to i64
  %27 = ptrtoint %struct.queueEntry** %25 to i64
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
  %36 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %35 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %37 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = mul i64 2, %39
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %3
  %43 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %44 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %43, i32 0, i32 0
  %45 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %44 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %46 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %45, i32 0, i32 0
  %47 = load %struct.queueEntry**, %struct.queueEntry*** %46, align 8
  %48 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %49 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %48, i32 0, i32 0
  %50 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %49 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %51 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %52, %53
  %55 = udiv i64 %54, 2
  %56 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %47, i64 %55
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
  %64 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %56, i64 %63
  store %struct.queueEntry** %64, %struct.queueEntry*** %9, align 8
  %65 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %66 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %67 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %66, i32 0, i32 0
  %68 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %67 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %69 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %68, i32 0, i32 2
  %70 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %69, i32 0, i32 3
  %71 = load %struct.queueEntry**, %struct.queueEntry*** %70, align 8
  %72 = icmp ult %struct.queueEntry** %65, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %75 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %74, i32 0, i32 0
  %76 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %75 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %77 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %76, i32 0, i32 2
  %78 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %77, i32 0, i32 3
  %79 = load %struct.queueEntry**, %struct.queueEntry*** %78, align 8
  %80 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %81 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %80, i32 0, i32 0
  %82 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %81 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %83 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %82, i32 0, i32 3
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %83, i32 0, i32 3
  %85 = load %struct.queueEntry**, %struct.queueEntry*** %84, align 8
  %86 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %85, i64 1
  %87 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %88 = call noundef %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %79, %struct.queueEntry** noundef %86, %struct.queueEntry** noundef %87)
  br label %107

89:                                               ; preds = %62
  %90 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %91 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %90, i32 0, i32 0
  %92 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %91 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %93 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %92, i32 0, i32 2
  %94 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %93, i32 0, i32 3
  %95 = load %struct.queueEntry**, %struct.queueEntry*** %94, align 8
  %96 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %97 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %96, i32 0, i32 0
  %98 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %97 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %99 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %98, i32 0, i32 3
  %100 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %99, i32 0, i32 3
  %101 = load %struct.queueEntry**, %struct.queueEntry*** %100, align 8
  %102 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %101, i64 1
  %103 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %103, i64 %104
  %106 = call noundef %struct.queueEntry** @_ZSt13copy_backwardIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %95, %struct.queueEntry** noundef %102, %struct.queueEntry** noundef %105)
  br label %107

107:                                              ; preds = %89, %73
  br label %175

108:                                              ; preds = %3
  %109 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %110 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %109, i32 0, i32 0
  %111 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %110 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %112 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %115 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %114, i32 0, i32 0
  %116 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %115 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %117 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %116, i32 0, i32 1
  %118 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %117, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %113, %119
  %121 = add i64 %120, 2
  store i64 %121, i64* %10, align 8
  %122 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %123 = load i64, i64* %10, align 8
  %124 = call noundef %struct.queueEntry** @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %122, i64 noundef %123)
  store %struct.queueEntry** %124, %struct.queueEntry*** %11, align 8
  %125 = load %struct.queueEntry**, %struct.queueEntry*** %11, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %8, align 8
  %128 = sub i64 %126, %127
  %129 = udiv i64 %128, 2
  %130 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %125, i64 %129
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
  %138 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %130, i64 %137
  store %struct.queueEntry** %138, %struct.queueEntry*** %9, align 8
  %139 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %140 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %139, i32 0, i32 0
  %141 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %140 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %142 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %141, i32 0, i32 2
  %143 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %142, i32 0, i32 3
  %144 = load %struct.queueEntry**, %struct.queueEntry*** %143, align 8
  %145 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %146 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %145, i32 0, i32 0
  %147 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %146 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %148 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %147, i32 0, i32 3
  %149 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %148, i32 0, i32 3
  %150 = load %struct.queueEntry**, %struct.queueEntry*** %149, align 8
  %151 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %150, i64 1
  %152 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %153 = call noundef %struct.queueEntry** @_ZSt4copyIPP10queueEntryS2_ET0_T_S4_S3_(%struct.queueEntry** noundef %144, %struct.queueEntry** noundef %151, %struct.queueEntry** noundef %152)
  %154 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %155 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %156 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %155, i32 0, i32 0
  %157 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %156 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %158 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %157, i32 0, i32 0
  %159 = load %struct.queueEntry**, %struct.queueEntry*** %158, align 8
  %160 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %161 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %160, i32 0, i32 0
  %162 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %161 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %163 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE17_M_deallocate_mapEPPS0_m(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %154, %struct.queueEntry** noundef %159, i64 noundef %164) #3
  %165 = load %struct.queueEntry**, %struct.queueEntry*** %11, align 8
  %166 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %167 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %166, i32 0, i32 0
  %168 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %167 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %169 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %168, i32 0, i32 0
  store %struct.queueEntry** %165, %struct.queueEntry*** %169, align 8
  %170 = load i64, i64* %10, align 8
  %171 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %172 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %171, i32 0, i32 0
  %173 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %172 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %174 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %173, i32 0, i32 1
  store i64 %170, i64* %174, align 8
  br label %175

175:                                              ; preds = %136, %107
  %176 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %177 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %176, i32 0, i32 0
  %178 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %177 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %179 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %178, i32 0, i32 2
  %180 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %179, %struct.queueEntry** noundef %180) #3
  %181 = bitcast %"class.std::deque"* %13 to %"class.std::_Deque_base"*
  %182 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %181, i32 0, i32 0
  %183 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %182 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %184 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %183, i32 0, i32 3
  %185 = load %struct.queueEntry**, %struct.queueEntry*** %9, align 8
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %185, i64 %186
  %188 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %187, i64 -1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %184, %struct.queueEntry** noundef %188) #3
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
  %12 = call noundef %struct.queueEntry** @_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %11)
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
  %12 = call noundef %struct.queueEntry** @_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %11)
  ret %struct.queueEntry** %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt13__copy_move_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
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
  %13 = call noundef %struct.queueEntry** @_ZSt14__copy_move_a1ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %12)
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
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt14__copy_move_a1ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %10 = call noundef %struct.queueEntry** @_ZSt14__copy_move_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %7, %struct.queueEntry** noundef %8, %struct.queueEntry** noundef %9)
  ret %struct.queueEntry** %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt12__niter_baseIPP10queueEntryET_S3_(%struct.queueEntry** noundef %0) #7 comdat {
  %2 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %2, align 8
  %3 = load %struct.queueEntry**, %struct.queueEntry*** %2, align 8
  ret %struct.queueEntry** %3
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
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %10 = call noundef %struct.queueEntry** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** noundef %7, %struct.queueEntry** noundef %8, %struct.queueEntry** noundef %9)
  ret %struct.queueEntry** %10
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
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt22__copy_move_backward_aILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
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
  %13 = call noundef %struct.queueEntry** @_ZSt23__copy_move_backward_a1ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %8, %struct.queueEntry** noundef %10, %struct.queueEntry** noundef %12)
  %14 = call noundef %struct.queueEntry** @_ZSt12__niter_wrapIPP10queueEntryET_RKS3_S3_(%struct.queueEntry*** noundef nonnull align 8 dereferenceable(8) %6, %struct.queueEntry** noundef %13)
  ret %struct.queueEntry** %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt23__copy_move_backward_a1ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %10 = call noundef %struct.queueEntry** @_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %7, %struct.queueEntry** noundef %8, %struct.queueEntry** noundef %9)
  ret %struct.queueEntry** %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef %struct.queueEntry** @_ZSt23__copy_move_backward_a2ILb0EPP10queueEntryS2_ET1_T0_S4_S3_(%struct.queueEntry** noundef %0, %struct.queueEntry** noundef %1, %struct.queueEntry** noundef %2) #4 comdat {
  %4 = alloca %struct.queueEntry**, align 8
  %5 = alloca %struct.queueEntry**, align 8
  %6 = alloca %struct.queueEntry**, align 8
  store %struct.queueEntry** %0, %struct.queueEntry*** %4, align 8
  store %struct.queueEntry** %1, %struct.queueEntry*** %5, align 8
  store %struct.queueEntry** %2, %struct.queueEntry*** %6, align 8
  %7 = load %struct.queueEntry**, %struct.queueEntry*** %4, align 8
  %8 = load %struct.queueEntry**, %struct.queueEntry*** %5, align 8
  %9 = load %struct.queueEntry**, %struct.queueEntry*** %6, align 8
  %10 = call noundef %struct.queueEntry** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP10queueEntryEEPT_PKS5_S8_S6_(%struct.queueEntry** noundef %7, %struct.queueEntry** noundef %8, %struct.queueEntry** noundef %9)
  ret %struct.queueEntry** %10
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
  %6 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %5 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %6, i32 0, i32 3
  %8 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %9 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %11 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %10, i32 0, i32 2
  %12 = call noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorI10queueEntryRS0_PS0_ES5_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %7, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %11) #3
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorI10queueEntryRS0_PS0_ES5_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %0, %"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %1) #7 comdat {
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
  %6 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %5 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %6, i32 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load %struct.queueEntry*, %struct.queueEntry** %8, align 8
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %11 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %10, i32 0, i32 0
  %12 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %11 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %13 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load %struct.queueEntry*, %struct.queueEntry** %14, align 8
  %16 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %15, i64 -1
  %17 = icmp ne %struct.queueEntry* %9, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %20 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %19) #3
  %21 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %22 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %21, i32 0, i32 0
  %23 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %22 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %24 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %23, i32 0, i32 2
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %24, i32 0, i32 0
  %26 = load %struct.queueEntry*, %struct.queueEntry** %25, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20, %struct.queueEntry* noundef %26) #3
  %27 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %28 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %27, i32 0, i32 0
  %29 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %28 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %30 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %29, i32 0, i32 2
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %30, i32 0, i32 0
  %32 = load %struct.queueEntry*, %struct.queueEntry** %31, align 8
  %33 = getelementptr inbounds %struct.queueEntry, %struct.queueEntry* %32, i32 1
  store %struct.queueEntry* %33, %struct.queueEntry** %31, align 8
  br label %36

34:                                               ; preds = %1
  invoke void @_ZNSt5dequeI10queueEntrySaIS0_EE16_M_pop_front_auxEv(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %3)
          to label %35 unwind label %37

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %18
  ret void

37:                                               ; preds = %34
  %38 = landingpad { i8*, i32 }
          catch i8* null
  %39 = extractvalue { i8*, i32 } %38, 0
  call void @__clang_call_terminate(i8* %39) #16
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
  %8 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %7 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %8, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %9, i32 0, i32 0
  %11 = load %struct.queueEntry*, %struct.queueEntry** %10, align 8
  call void @_ZNSt16allocator_traitsISaI10queueEntryEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5, %struct.queueEntry* noundef %11) #3
  %12 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %13 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %14 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %14 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %15, i32 0, i32 2
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %16, i32 0, i32 1
  %18 = load %struct.queueEntry*, %struct.queueEntry** %17, align 8
  call void @_ZNSt11_Deque_baseI10queueEntrySaIS0_EE18_M_deallocate_nodeEPS0_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %12, %struct.queueEntry* noundef %18) #3
  %19 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %20 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %22 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %21, i32 0, i32 2
  %23 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %24 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %24 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %25, i32 0, i32 2
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %26, i32 0, i32 3
  %28 = load %struct.queueEntry**, %struct.queueEntry*** %27, align 8
  %29 = getelementptr inbounds %struct.queueEntry*, %struct.queueEntry** %28, i64 1
  call void @_ZNSt15_Deque_iteratorI10queueEntryRS0_PS0_E11_M_set_nodeEPS2_(%"struct.std::_Deque_iterator"* noundef nonnull align 8 dereferenceable(32) %22, %struct.queueEntry** noundef %29) #3
  %30 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %30, i32 0, i32 0
  %32 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %31 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %33 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %32, i32 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %33, i32 0, i32 1
  %35 = load %struct.queueEntry*, %struct.queueEntry** %34, align 8
  %36 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = bitcast %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl"* %37 to %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"*
  %39 = getelementptr inbounds %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data", %"struct.std::_Deque_base<queueEntry, std::allocator<queueEntry>>::_Deque_impl_data"* %38, i32 0, i32 2
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator"* %39, i32 0, i32 0
  store %struct.queueEntry* %35, %struct.queueEntry** %40, align 8
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
!5 = !{!"Ubuntu clang version 14.0.1-++20220402053234+23d08271a4b2-1~exp1~20220402053315.111"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
