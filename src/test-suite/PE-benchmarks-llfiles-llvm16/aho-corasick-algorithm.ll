; ModuleID = 'PE-benchmarks/aho-corasick-algorithm.cpp'
source_filename = "PE-benchmarks/aho-corasick-algorithm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.3" = type { i8 }
%"struct.std::__false_type" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi = comdat any

$_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv = comdat any

$_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt5dequeIiSaIiEED2Ev = comdat any

$_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_ = comdat any

$_ZNSt5dequeIiSaIiEE5beginEv = comdat any

$_ZNSt5dequeIiSaIiEE3endEv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

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

$_ZNSt5dequeIiSaIiEE5frontEv = comdat any

$_ZNKSt15_Deque_iteratorIiRiPiEdeEv = comdat any

$_ZNSt5dequeIiSaIiEE9pop_frontEv = comdat any

$_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@out = dso_local global [500 x i32] zeroinitializer, align 16
@f = dso_local global [500 x i32] zeroinitializer, align 16
@g = dso_local global [500 x [26 x i32]] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"Word \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" appears from \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"he\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"she\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hers\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"his\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ahishers\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_aho_corasick_algorithm.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z20buildMatchingMachinePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef %0, i32 noundef %1) #4 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::queue", align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  call void @llvm.memset.p0.i64(ptr align 16 @out, i8 0, i64 2000, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 @g, i8 -1, i64 52000, i1 false)
  store i32 1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %19

19:                                               ; preds = %78, %2
  %20 = load i32, ptr %6, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = load ptr, ptr %3, align 8
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 %26
  store ptr %27, ptr %7, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %28

28:                                               ; preds = %67, %23
  %29 = load i32, ptr %9, align 4
  %30 = sext i32 %29 to i64
  %31 = load ptr, ptr %7, align 8
  %32 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #3
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load ptr, ptr %7, align 8
  %36 = load i32, ptr %9, align 4
  %37 = sext i32 %36 to i64
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %37) #3
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 97
  store i32 %41, ptr %10, align 4
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %43
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [26 x i32], ptr %44, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %59

50:                                               ; preds = %34
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %54
  %56 = load i32, ptr %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [26 x i32], ptr %55, i64 0, i64 %57
  store i32 %51, ptr %58, align 4
  br label %59

59:                                               ; preds = %50, %34
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %61
  %63 = load i32, ptr %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [26 x i32], ptr %62, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %8, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, ptr %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %9, align 4
  br label %28, !llvm.loop !6

70:                                               ; preds = %28
  %71 = load i32, ptr %6, align 4
  %72 = shl i32 1, %71
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [500 x i32], ptr @out, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i32, ptr %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %6, align 4
  br label %19, !llvm.loop !8

81:                                               ; preds = %19
  store i32 0, ptr %11, align 4
  br label %82

82:                                               ; preds = %96, %81
  %83 = load i32, ptr %11, align 4
  %84 = icmp slt i32 %83, 26
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32, ptr %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [26 x i32], ptr @g, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, ptr %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [26 x i32], ptr @g, i64 0, i64 %93
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95
  %97 = load i32, ptr %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %11, align 4
  br label %82, !llvm.loop !9

99:                                               ; preds = %82
  call void @llvm.memset.p0.i64(ptr align 16 @f, i8 -1, i64 2000, i1 false)
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
  store i32 0, ptr %13, align 4
  br label %100

100:                                              ; preds = %125, %99
  %101 = load i32, ptr %13, align 4
  %102 = icmp slt i32 %101, 26
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load i32, ptr %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [26 x i32], ptr @g, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load i32, ptr %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [26 x i32], ptr @g, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [500 x i32], ptr @f, i64 0, i64 %114
  store i32 0, ptr %115, align 4
  %116 = load i32, ptr %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [26 x i32], ptr @g, i64 0, i64 %117
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 4 dereferenceable(4) %118)
          to label %119 unwind label %120

119:                                              ; preds = %109
  br label %124

120:                                              ; preds = %169, %135, %133, %129, %109
  %121 = landingpad { ptr, i32 }
          cleanup
  %122 = extractvalue { ptr, i32 } %121, 0
  store ptr %122, ptr %14, align 8
  %123 = extractvalue { ptr, i32 } %121, 1
  store i32 %123, ptr %15, align 4
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %12) #3
  br label %216

124:                                              ; preds = %119, %103
  br label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %13, align 4
  br label %100, !llvm.loop !10

128:                                              ; preds = %100
  br label %129

129:                                              ; preds = %213, %128
  %130 = invoke noundef i64 @_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
          to label %131 unwind label %120

131:                                              ; preds = %129
  %132 = icmp ne i64 %130, 0
  br i1 %132, label %133, label %214

133:                                              ; preds = %131
  %134 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
          to label %135 unwind label %120

135:                                              ; preds = %133
  %136 = load i32, ptr %134, align 4
  store i32 %136, ptr %16, align 4
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
          to label %137 unwind label %120

137:                                              ; preds = %135
  store i32 0, ptr %17, align 4
  br label %138

138:                                              ; preds = %210, %137
  %139 = load i32, ptr %17, align 4
  %140 = icmp sle i32 %139, 26
  br i1 %140, label %141, label %213

141:                                              ; preds = %138
  %142 = load i32, ptr %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %143
  %145 = load i32, ptr %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [26 x i32], ptr %144, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = icmp ne i32 %148, -1
  br i1 %149, label %150, label %209

150:                                              ; preds = %141
  %151 = load i32, ptr %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [500 x i32], ptr @f, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4
  store i32 %154, ptr %18, align 4
  br label %155

155:                                              ; preds = %164, %150
  %156 = load i32, ptr %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %157
  %159 = load i32, ptr %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [26 x i32], ptr %158, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %169

164:                                              ; preds = %155
  %165 = load i32, ptr %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [500 x i32], ptr @f, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4
  store i32 %168, ptr %18, align 4
  br label %155, !llvm.loop !11

169:                                              ; preds = %155
  %170 = load i32, ptr %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %171
  %173 = load i32, ptr %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [26 x i32], ptr %172, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4
  store i32 %176, ptr %18, align 4
  %177 = load i32, ptr %18, align 4
  %178 = load i32, ptr %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %179
  %181 = load i32, ptr %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [26 x i32], ptr %180, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [500 x i32], ptr @f, i64 0, i64 %185
  store i32 %177, ptr %186, align 4
  %187 = load i32, ptr %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [500 x i32], ptr @out, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4
  %191 = load i32, ptr %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %192
  %194 = load i32, ptr %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [26 x i32], ptr %193, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [500 x i32], ptr @out, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4
  %201 = or i32 %200, %190
  store i32 %201, ptr %199, align 4
  %202 = load i32, ptr %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %203
  %205 = load i32, ptr %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [26 x i32], ptr %204, i64 0, i64 %206
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 4 dereferenceable(4) %207)
          to label %208 unwind label %120

208:                                              ; preds = %169
  br label %209

209:                                              ; preds = %208, %141
  br label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %17, align 4
  br label %138, !llvm.loop !12

213:                                              ; preds = %138
  br label %129, !llvm.loop !13

214:                                              ; preds = %131
  %215 = load i32, ptr %5, align 4
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %12) #3
  ret i32 %215

216:                                              ; preds = %120
  %217 = load ptr, ptr %14, align 8
  %218 = load i32, ptr %15, align 4
  %219 = insertvalue { ptr, i32 } poison, ptr %217, 0
  %220 = insertvalue { ptr, i32 } %219, i32 %218, 1
  resume { ptr, i32 } %220
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 80, i1 false)
  call void @_ZNSt5dequeIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::queue", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  call void @_ZNSt5dequeIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5queueIiSt5dequeIiSaIiEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  %5 = call noundef i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #3
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5dequeIiSaIiEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #3
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z13findNextStateic(i32 noundef %0, i8 noundef signext %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i8 %1, ptr %4, align 1
  %7 = load i32, ptr %3, align 4
  store i32 %7, ptr %5, align 4
  %8 = load i8, ptr %4, align 1
  %9 = sext i8 %8 to i32
  %10 = sub nsw i32 %9, 97
  store i32 %10, ptr %6, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %13
  %15 = load i32, ptr %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [26 x i32], ptr %14, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load i32, ptr %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [500 x i32], ptr @f, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %5, align 4
  br label %11, !llvm.loop !14

25:                                               ; preds = %11
  %26 = load i32, ptr %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [500 x [26 x i32]], ptr @g, i64 0, i64 %27
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [26 x i32], ptr %28, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  ret i32 %32
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z11searchWordsPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = call noundef i32 @_Z20buildMatchingMachinePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef %9, i32 noundef %10)
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %71, %3
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #3
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %12
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %20)
  %22 = load i8, ptr %21, align 1
  %23 = call noundef i32 @_Z13findNextStateic(i32 noundef %18, i8 noundef signext %22)
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [500 x i32], ptr @out, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %71

30:                                               ; preds = %17
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [500 x i32], ptr @out, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %8, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %35
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %46 = load ptr, ptr %4, align 8
  %47 = load i32, ptr %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 %48
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(32) %49)
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @.str.1)
  %52 = load i32, ptr %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %54, i64 %56
  %58 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %57) #3
  %59 = sub i64 %53, %58
  %60 = add i64 %59, 1
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %60)
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef @.str.2)
  %63 = load i32, ptr %7, align 4
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %62, i32 noundef %63)
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %66

66:                                               ; preds = %44, %35
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %8, align 4
  br label %31, !llvm.loop !15

70:                                               ; preds = %31
  br label %71

71:                                               ; preds = %70, %29
  %72 = load i32, ptr %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 4
  br label %12, !llvm.loop !16

74:                                               ; preds = %12
  ret void
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #8 personality ptr @__gxx_personality_v0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x %"class.std::__cxx11::basic_string"], align 16
  %3 = alloca ptr, align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca i1, align 1
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::allocator", align 1
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  store i32 0, ptr %1, align 4
  %15 = getelementptr inbounds [4 x %"class.std::__cxx11::basic_string"], ptr %2, i64 0, i64 0
  store i1 true, ptr %10, align 1
  store ptr %15, ptr %3, align 8
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %16 unwind label %30

16:                                               ; preds = %0
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 1
  store ptr %17, ptr %3, align 8
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %18 unwind label %34

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 1
  store ptr %19, ptr %3, align 8
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %20 unwind label %38

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 1
  store ptr %21, ptr %3, align 8
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %22 unwind label %42

22:                                               ; preds = %20
  store i1 false, ptr %10, align 1
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #3
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #3
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #3
  call void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %23 unwind label %59

23:                                               ; preds = %22
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #3
  store i32 4, ptr %13, align 4
  %24 = getelementptr inbounds [4 x %"class.std::__cxx11::basic_string"], ptr %2, i64 0, i64 0
  %25 = load i32, ptr %13, align 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %26 unwind label %63

26:                                               ; preds = %23
  invoke void @_Z11searchWordsPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS4_(ptr noundef %24, i32 noundef %25, ptr noundef %14)
          to label %27 unwind label %67

27:                                               ; preds = %26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #3
  store i32 0, ptr %1, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #3
  %28 = getelementptr inbounds [4 x %"class.std::__cxx11::basic_string"], ptr %2, i32 0, i32 0
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 4
  br label %72

30:                                               ; preds = %0
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = extractvalue { ptr, i32 } %31, 0
  store ptr %32, ptr %5, align 8
  %33 = extractvalue { ptr, i32 } %31, 1
  store i32 %33, ptr %6, align 4
  br label %48

34:                                               ; preds = %16
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = extractvalue { ptr, i32 } %35, 0
  store ptr %36, ptr %5, align 8
  %37 = extractvalue { ptr, i32 } %35, 1
  store i32 %37, ptr %6, align 4
  br label %47

38:                                               ; preds = %18
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = extractvalue { ptr, i32 } %39, 0
  store ptr %40, ptr %5, align 8
  %41 = extractvalue { ptr, i32 } %39, 1
  store i32 %41, ptr %6, align 4
  br label %46

42:                                               ; preds = %20
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = extractvalue { ptr, i32 } %43, 0
  store ptr %44, ptr %5, align 8
  %45 = extractvalue { ptr, i32 } %43, 1
  store i32 %45, ptr %6, align 4
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #3
  br label %46

46:                                               ; preds = %42, %38
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #3
  br label %47

47:                                               ; preds = %46, %34
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #3
  br label %48

48:                                               ; preds = %47, %30
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #3
  %49 = load i1, ptr %10, align 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = load ptr, ptr %3, align 8
  %52 = icmp eq ptr %15, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %53, %50
  %54 = phi ptr [ %51, %50 ], [ %55, %53 ]
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %54, i64 -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %55) #3
  %56 = icmp eq ptr %55, %15
  br i1 %56, label %57, label %53

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %48
  br label %86

59:                                               ; preds = %22
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = extractvalue { ptr, i32 } %60, 0
  store ptr %61, ptr %5, align 8
  %62 = extractvalue { ptr, i32 } %60, 1
  store i32 %62, ptr %6, align 4
  call void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #3
  br label %78

63:                                               ; preds = %23
  %64 = landingpad { ptr, i32 }
          cleanup
  %65 = extractvalue { ptr, i32 } %64, 0
  store ptr %65, ptr %5, align 8
  %66 = extractvalue { ptr, i32 } %64, 1
  store i32 %66, ptr %6, align 4
  br label %71

67:                                               ; preds = %26
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = extractvalue { ptr, i32 } %68, 0
  store ptr %69, ptr %5, align 8
  %70 = extractvalue { ptr, i32 } %68, 1
  store i32 %70, ptr %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #3
  br label %71

71:                                               ; preds = %67, %63
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #3
  br label %78

72:                                               ; preds = %72, %27
  %73 = phi ptr [ %29, %27 ], [ %74, %72 ]
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %74) #3
  %75 = icmp eq ptr %74, %28
  br i1 %75, label %76, label %72

76:                                               ; preds = %72
  %77 = load i32, ptr %1, align 4
  ret i32 %77

78:                                               ; preds = %71, %59
  %79 = getelementptr inbounds [4 x %"class.std::__cxx11::basic_string"], ptr %2, i32 0, i32 0
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 4
  br label %81

81:                                               ; preds = %81, %78
  %82 = phi ptr [ %80, %78 ], [ %83, %81 ]
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %82, i64 -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %83) #3
  %84 = icmp eq ptr %83, %79
  br i1 %84, label %85, label %81

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %58
  %87 = load ptr, ptr %5, align 8
  %88 = load i32, ptr %6, align 4
  %89 = insertvalue { ptr, i32 } poison, ptr %87, 0
  %90 = insertvalue { ptr, i32 } %89, i32 %88, 1
  resume { ptr, i32 } %90
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i32 0, i32 0
  %11 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
  %12 = load ptr, ptr %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = invoke noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %18)
          to label %20 unwind label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %17, i64 %19
  br label %25

22:                                               ; preds = %3
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 -1
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %13, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %25
  ret void

28:                                               ; preds = %25, %16
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  store ptr %30, ptr %7, align 8
  %31 = extractvalue { ptr, i32 } %29, 1
  store i32 %31, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #3
  br label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %8, align 4
  %35 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(ptr sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  call void @_ZNSt5dequeIiSaIiEE3endEv(ptr sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %7 unwind label %8

7:                                                ; preds = %1
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #6 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %3, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE5beginEv(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE3endEv(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #9 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %12, ptr noundef %17) #3
  %18 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %21, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %20, i64 noundef %23) #3
  br label %24

24:                                               ; preds = %8, %1
  %25 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %25) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %10, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %14, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %18, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %15, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef %16) #3
  br label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i32 1
  store ptr %19, ptr %7, align 8
  br label %10, !llvm.loop !17

20:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::allocator.3", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(ptr sret(%"class.std::allocator.3") align 1 %7, ptr noundef nonnull align 8 dereferenceable(80) %8) #3
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %6, align 8
  invoke void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %9, i64 noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %3
  call void @_ZNSaIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = invoke noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
          to label %9 unwind label %11

9:                                                ; preds = %2
  invoke void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %7, i64 noundef %8)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9, %2
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #14
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef %0) #6 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = icmp ult i64 %3, 512
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8
  %7 = udiv i64 512, %6
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i64 [ %7, %5 ], [ 1, %8 ]
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  call void @_ZdlPv(ptr noundef %8) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(ptr noalias sret(%"class.std::allocator.3") align 1 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  call void @_ZNSaIPiEC2IiEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIPiEC2IiEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #7 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  call void @_ZdlPv(ptr noundef %8) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__false_type", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9, ptr noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %2, align 8
  br i1 false, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(ptr noundef %7)
  store i64 %8, ptr %3, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8
  %11 = call i64 @strlen(ptr noundef %10) #3
  store i64 %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, ptr %3, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
  %4 = alloca %"struct.std::__false_type", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::forward_iterator_tag", align 1
  %9 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %11, ptr noundef %12)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::forward_iterator_tag", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(ptr noundef %12)
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = icmp ne ptr %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef @.str.8) #15
  unreachable

19:                                               ; preds = %14, %3
  %20 = load ptr, ptr %6, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %20, ptr noundef %21)
  store i64 %22, ptr %8, align 8
  %23 = load i64, ptr %8, align 8
  %24 = icmp ugt i64 %23, 15
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %26)
  %27 = load i64, ptr %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %27)
  br label %28

28:                                               ; preds = %25, %19
  %29 = invoke noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %30 unwind label %33

30:                                               ; preds = %28
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %29, ptr noundef %31, ptr noundef %32) #3
  br label %46

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  store ptr %35, ptr %9, align 8
  %36 = extractvalue { ptr, i32 } %34, 1
  store i32 %36, ptr %10, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8
  %39 = call ptr @__cxa_begin_catch(ptr %38) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %40 unwind label %41

40:                                               ; preds = %37
  invoke void @__cxa_rethrow() #15
          to label %56 unwind label %41

41:                                               ; preds = %40, %37
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = extractvalue { ptr, i32 } %42, 0
  store ptr %43, ptr %9, align 8
  %44 = extractvalue { ptr, i32 } %42, 1
  store i32 %44, ptr %10, align 4
  invoke void @__cxa_end_catch()
          to label %45 unwind label %53

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %30
  %47 = load i64, ptr %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %47)
  ret void

48:                                               ; preds = %45
  %49 = load ptr, ptr %9, align 8
  %50 = load i32, ptr %10, align 4
  %51 = insertvalue { ptr, i32 } poison, ptr %49, 0
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1
  resume { ptr, i32 } %52

53:                                               ; preds = %41
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #14
  unreachable

56:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(ptr noundef %0) #6 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  ret i1 %4
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) #4 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %9 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %7, ptr noundef %8)
  ret i64 %9
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #6 comdat {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(ptr noundef %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  store i64 0, ptr %3, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load ptr, ptr %2, align 8
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store i8 0, ptr %4, align 1
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i64, ptr %3, align 8
  %13 = add i64 %12, 1
  store i64 %13, ptr %3, align 8
  br label %5, !llvm.loop !18

14:                                               ; preds = %5
  %15 = load i64, ptr %3, align 8
  ret i64 %15
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load ptr, ptr %4, align 8
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %7, %10
  ret i1 %11
}

; Function Attrs: nounwind
declare void @_ZNSaIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #3
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %3, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %4, align 4
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #3
  br label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %4, align 4
  %15 = insertvalue { ptr, i32 } poison, ptr %13, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  call void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load i64, ptr %4, align 8
  %14 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
  %15 = udiv i64 %13, %14
  %16 = add i64 %15, 1
  store i64 %16, ptr %5, align 8
  store i64 8, ptr %6, align 8
  %17 = load i64, ptr %5, align 8
  %18 = add i64 %17, 2
  store i64 %18, ptr %7, align 8
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %21, i32 0, i32 1
  store i64 %20, ptr %22, align 8
  %23 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = call noundef ptr @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 noundef %25)
  %27 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8
  %29 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %30 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %32, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = load i64, ptr %5, align 8
  %36 = sub i64 %34, %35
  %37 = udiv i64 %36, 2
  %38 = getelementptr inbounds ptr, ptr %31, i64 %37
  store ptr %38, ptr %8, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load i64, ptr %5, align 8
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  store ptr %41, ptr %9, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %9, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %42, ptr noundef %43)
          to label %44 unwind label %45

44:                                               ; preds = %2
  br label %67

45:                                               ; preds = %2
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  store ptr %47, ptr %10, align 8
  %48 = extractvalue { ptr, i32 } %46, 1
  store i32 %48, ptr %11, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %10, align 8
  %51 = call ptr @__cxa_begin_catch(ptr %50) #3
  %52 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %56 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %55, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %54, i64 noundef %57) #3
  %58 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %59 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %58, i32 0, i32 0
  store ptr null, ptr %59, align 8
  %60 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %60, i32 0, i32 1
  store i64 0, ptr %61, align 8
  invoke void @__cxa_rethrow() #15
          to label %101 unwind label %62

62:                                               ; preds = %49
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  store ptr %64, ptr %10, align 8
  %65 = extractvalue { ptr, i32 } %63, 1
  store i32 %65, ptr %11, align 4
  invoke void @__cxa_end_catch()
          to label %66 unwind label %98

66:                                               ; preds = %62
  br label %93

67:                                               ; preds = %44
  %68 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %69 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %8, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef %70) #3
  %71 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %72 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds ptr, ptr %73, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef %74) #3
  %75 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %80 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %79, i32 0, i32 2
  %81 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %80, i32 0, i32 0
  store ptr %78, ptr %81, align 8
  %82 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %83 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %82, i32 0, i32 3
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = load i64, ptr %4, align 8
  %87 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
  %88 = urem i64 %86, %87
  %89 = getelementptr inbounds i32, ptr %85, i64 %88
  %90 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %91 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %90, i32 0, i32 3
  %92 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %91, i32 0, i32 0
  store ptr %89, ptr %92, align 8
  ret void

93:                                               ; preds = %66
  %94 = load ptr, ptr %10, align 8
  %95 = load i32, ptr %11, align 4
  %96 = insertvalue { ptr, i32 } poison, ptr %94, 0
  %97 = insertvalue { ptr, i32 } %96, i32 %95, 1
  resume { ptr, i32 } %97

98:                                               ; preds = %62
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #14
  unreachable

101:                                              ; preds = %49
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #3
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i32 0, i32 2
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i32 0, i32 3
  store ptr null, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::allocator.3", align 1
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(ptr sret(%"class.std::allocator.3") align 1 %5, ptr noundef nonnull align 8 dereferenceable(80) %8) #3
  %9 = load i64, ptr %4, align 8
  %10 = invoke noundef ptr @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %9)
          to label %11 unwind label %12

11:                                               ; preds = %2
  call void @_ZNSaIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3
  ret ptr %10

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %6, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %7, align 4
  call void @_ZNSaIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #3
  br label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %7, align 4
  %19 = insertvalue { ptr, i32 } poison, ptr %17, 0
  %20 = insertvalue { ptr, i32 } %19, i32 %18, 1
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %7, align 8
  br label %12

12:                                               ; preds = %20, %3
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = invoke noundef ptr @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %18 unwind label %23

18:                                               ; preds = %16
  %19 = load ptr, ptr %7, align 8
  store ptr %17, ptr %19, align 8
  br label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i32 1
  store ptr %22, ptr %7, align 8
  br label %12, !llvm.loop !19

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  store ptr %25, ptr %8, align 8
  %26 = extractvalue { ptr, i32 } %24, 1
  store i32 %26, ptr %9, align 4
  br label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %8, align 8
  %29 = call ptr @__cxa_begin_catch(ptr %28) #3
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef %30, ptr noundef %31) #3
  invoke void @__cxa_rethrow() #15
          to label %47 unwind label %33

32:                                               ; preds = %12
  br label %38

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = extractvalue { ptr, i32 } %34, 0
  store ptr %35, ptr %8, align 8
  %36 = extractvalue { ptr, i32 } %34, 1
  store i32 %36, ptr %9, align 4
  invoke void @__cxa_end_catch()
          to label %37 unwind label %44

37:                                               ; preds = %33
  br label %39

38:                                               ; preds = %32
  ret void

39:                                               ; preds = %37
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %9, align 4
  %42 = insertvalue { ptr, i32 } poison, ptr %40, 0
  %43 = insertvalue { ptr, i32 } %42, i32 %41, 1
  resume { ptr, i32 } %43

44:                                               ; preds = %33
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #14
  unreachable

47:                                               ; preds = %27
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 3
  store ptr %6, ptr %7, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null)
  ret ptr %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8
  %13 = icmp ugt i64 %12, 2305843009213693951
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #16
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 1152921504606846975
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #12

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %5 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
  %6 = call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %5)
  ret ptr %6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null)
  ret ptr %7
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8
  %13 = icmp ugt i64 %12, 4611686018427387903
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8
  %18 = mul i64 %17, 4
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #16
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #6 comdat align 2 {
  %1 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
  ret i64 %1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 -1
  %15 = icmp ne ptr %9, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %21, ptr noundef nonnull align 4 dereferenceable(4) %22) #3
  %23 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %23, i32 0, i32 3
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i32, ptr %26, i32 1
  store ptr %27, ptr %25, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 4 dereferenceable(4) %29)
  br label %30

30:                                               ; preds = %28, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  %7 = call noundef i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #3
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.9) #15
  unreachable

10:                                               ; preds = %2
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 1)
  %11 = call noundef ptr @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
  %12 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  store ptr %11, ptr %16, align 8
  %17 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %21, ptr noundef nonnull align 4 dereferenceable(4) %22) #3
  %23 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %23, i32 0, i32 3
  %25 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %29) #3
  %30 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %31 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %30, i32 0, i32 3
  %32 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %35 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 2
  %8 = call noundef i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #3
  %5 = call noundef i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %4) #3
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = add i64 %6, 1
  %8 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  %22 = sub i64 %10, %21
  %23 = icmp ugt i64 %7, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, ptr %4, align 8
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef %25, i1 noundef zeroext false)
  br label %26

26:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #3
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %15, %21
  %23 = mul nsw i64 %5, %22
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %26 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = add nsw i64 %23, %33
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %37 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = add nsw i64 %34, %44
  ret i64 %45
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  store i64 9223372036854775807, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %5) #3
  store i64 %6, ptr %4, align 8
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8
  ret i64 %9

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  call void @__clang_call_terminate(ptr %12) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load i64, ptr %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i64 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %12 = zext i1 %2 to i8
  store i8 %12, ptr %6, align 1
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %17 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = add nsw i64 %25, 1
  store i64 %26, ptr %7, align 8
  %27 = load i64, ptr %7, align 8
  %28 = load i64, ptr %5, align 8
  %29 = add i64 %27, %28
  store i64 %29, ptr %8, align 8
  %30 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %31 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %30, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = load i64, ptr %8, align 8
  %34 = mul i64 2, %33
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %3
  %37 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %40, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = load i64, ptr %8, align 8
  %44 = sub i64 %42, %43
  %45 = udiv i64 %44, 2
  %46 = getelementptr inbounds ptr, ptr %39, i64 %45
  %47 = load i8, ptr %6, align 1
  %48 = trunc i8 %47 to i1
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i64, ptr %5, align 8
  br label %52

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i64 [ %50, %49 ], [ 0, %51 ]
  %54 = getelementptr inbounds ptr, ptr %46, i64 %53
  store ptr %54, ptr %9, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %56, i32 0, i32 2
  %58 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = icmp ult ptr %55, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %63 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %62, i32 0, i32 2
  %64 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %66, i32 0, i32 3
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %9, align 8
  %72 = call noundef ptr @_ZSt4copyIPPiS1_ET0_T_S3_S2_(ptr noundef %65, ptr noundef %70, ptr noundef %71)
  br label %87

73:                                               ; preds = %52
  %74 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %75 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %79 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %78, i32 0, i32 3
  %80 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  %83 = load ptr, ptr %9, align 8
  %84 = load i64, ptr %7, align 8
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = call noundef ptr @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(ptr noundef %77, ptr noundef %82, ptr noundef %85)
  br label %87

87:                                               ; preds = %73, %61
  br label %137

88:                                               ; preds = %3
  %89 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %90 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %89, i32 0, i32 1
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %93 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %92, i32 0, i32 1
  %94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %95 = load i64, ptr %94, align 8
  %96 = add i64 %91, %95
  %97 = add i64 %96, 2
  store i64 %97, ptr %10, align 8
  %98 = load i64, ptr %10, align 8
  %99 = call noundef ptr @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %13, i64 noundef %98)
  store ptr %99, ptr %11, align 8
  %100 = load ptr, ptr %11, align 8
  %101 = load i64, ptr %10, align 8
  %102 = load i64, ptr %8, align 8
  %103 = sub i64 %101, %102
  %104 = udiv i64 %103, 2
  %105 = getelementptr inbounds ptr, ptr %100, i64 %104
  %106 = load i8, ptr %6, align 1
  %107 = trunc i8 %106 to i1
  br i1 %107, label %108, label %110

108:                                              ; preds = %88
  %109 = load i64, ptr %5, align 8
  br label %111

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i64 [ %109, %108 ], [ 0, %110 ]
  %113 = getelementptr inbounds ptr, ptr %105, i64 %112
  store ptr %113, ptr %9, align 8
  %114 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %115 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %114, i32 0, i32 2
  %116 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %119 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %118, i32 0, i32 3
  %120 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %9, align 8
  %124 = call noundef ptr @_ZSt4copyIPPiS1_ET0_T_S3_S2_(ptr noundef %117, ptr noundef %122, ptr noundef %123)
  %125 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %126 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %125, i32 0, i32 0
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %129 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %128, i32 0, i32 1
  %130 = load i64, ptr %129, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef %127, i64 noundef %130) #3
  %131 = load ptr, ptr %11, align 8
  %132 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %133 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %132, i32 0, i32 0
  store ptr %131, ptr %133, align 8
  %134 = load i64, ptr %10, align 8
  %135 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %136 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %135, i32 0, i32 1
  store i64 %134, ptr %136, align 8
  br label %137

137:                                              ; preds = %111, %87
  %138 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %139 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %9, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %139, ptr noundef %140) #3
  %141 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %141, i32 0, i32 3
  %143 = load ptr, ptr %9, align 8
  %144 = load i64, ptr %7, align 8
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  %146 = getelementptr inbounds ptr, ptr %145, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef %146) #3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPiS1_ET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @_ZSt12__miter_baseIPPiET_S2_(ptr noundef %7)
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__miter_baseIPPiET_S2_(ptr noundef %9)
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %8, ptr noundef %10, ptr noundef %11)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @_ZSt12__miter_baseIPPiET_S2_(ptr noundef %7)
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__miter_baseIPPiET_S2_(ptr noundef %9)
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %8, ptr noundef %10, ptr noundef %11)
  ret ptr %12
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %7) #3
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %9) #3
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %11) #3
  %13 = call noundef ptr @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %8, ptr noundef %10, ptr noundef %12)
  %14 = call noundef ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPiET_S2_(ptr noundef %0) #6 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %0) #6 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, ptr %7, align 8
  %14 = load i64, ptr %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load i64, ptr %7, align 8
  %20 = mul i64 8, %19
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %17, ptr align 8 %18, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %7, align 8
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  ret ptr %24
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %7) #3
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %9) #3
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %11) #3
  %13 = call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %8, ptr noundef %10, ptr noundef %12)
  %14 = call noundef ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  store i64 %13, ptr %7, align 8
  %14 = load i64, ptr %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8
  %18 = load i64, ptr %7, align 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %4, align 8
  %22 = load i64, ptr %7, align 8
  %23 = mul i64 8, %22
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %21, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %16, %3
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %7, align 8
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  ret ptr %28
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5dequeIiSaIiEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(ptr sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %4) #3
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #3
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 -1
  %13 = icmp ne ptr %7, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #3
  %16 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %19) #3
  %20 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %24, ptr %22, align 8
  br label %27

25:                                               ; preds = %1
  invoke void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %26 unwind label %28

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %14
  ret void

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #3
  %5 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %8) #3
  %9 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %12) #3
  %13 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %15, i32 0, i32 2
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %19) #3
  %20 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %25, i32 0, i32 0
  store ptr %23, ptr %26, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_aho_corasick_algorithm.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230610113410+7cbf1a259152-1~exp1~20230610233423.102)"}
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
