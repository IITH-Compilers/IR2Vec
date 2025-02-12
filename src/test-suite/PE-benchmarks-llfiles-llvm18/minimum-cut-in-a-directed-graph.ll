; ModuleID = 'PE-benchmarks/minimum-cut-in-a-directed-graph.cpp'
source_filename = "PE-benchmarks/minimum-cut-in-a-directed-graph.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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
%"class.std::allocator.0" = type { i8 }

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

$__clang_call_terminate = comdat any

$_ZNSt11_Deque_baseIiSaIiEED2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv = comdat any

$_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt15__new_allocatorIPiE10deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorIPiED2Ev = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZNSt5dequeIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEEC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev = comdat any

$_ZNSt15_Deque_iteratorIiRiPiEC2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_ = comdat any

$_ZNSt15__new_allocatorIPiE8allocateEmPKv = comdat any

$_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE9push_backERKi = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNKSt5dequeIiSaIiEE4sizeEv = comdat any

$_ZNKSt5dequeIiSaIiEE8max_sizeEv = comdat any

$_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm = comdat any

$_ZStmiRKSt15_Deque_iteratorIiRiPiES4_ = comdat any

$_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_ = comdat any

$_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIPPiET_S2_ = comdat any

$_ZSt12__niter_wrapIPPiET_RKS2_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIPPiET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiS3_EEPT0_PT_S7_S5_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPiS3_EEvPT_PT0_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiS3_EEPT0_PT_S7_S5_ = comdat any

$_ZNKSt5dequeIiSaIiEE5emptyEv = comdat any

$_ZSteqRKSt15_Deque_iteratorIiRiPiES4_ = comdat any

$_ZNSt5dequeIiSaIiEE5frontEv = comdat any

$_ZNKSt15_Deque_iteratorIiRiPiEdeEv = comdat any

$_ZNSt5dequeIiSaIiEE9pop_frontEv = comdat any

$_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c" - \00", align 1
@__const.main.graph = private unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 0, i32 16, i32 13, i32 0, i32 0, i32 0], [6 x i32] [i32 0, i32 0, i32 10, i32 12, i32 0, i32 0], [6 x i32] [i32 0, i32 4, i32 0, i32 0, i32 14, i32 0], [6 x i32] [i32 0, i32 0, i32 9, i32 0, i32 0, i32 20], [6 x i32] [i32 0, i32 0, i32 0, i32 7, i32 0, i32 4], [6 x i32] zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z3bfsPA6_iiiPi(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 personality ptr @__gxx_personality_v0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca %"class.std::queue", align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %15 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %15, i8 0, i64 6, i1 false)
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %16 unwind label %64

16:                                               ; preds = %4
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 %18
  store i8 1, ptr %19, align 1
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  store i32 -1, ptr %23, align 4
  br label %24

24:                                               ; preds = %72, %16
  %25 = invoke noundef zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %26 unwind label %64

26:                                               ; preds = %24
  %27 = xor i1 %25, true
  br i1 %27, label %28, label %73

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %30 unwind label %64

30:                                               ; preds = %28
  %31 = load i32, ptr %29, align 4
  store i32 %31, ptr %13, align 4
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %32 unwind label %64

32:                                               ; preds = %30
  store i32 0, ptr %14, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, ptr %14, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load i32, ptr %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = trunc i8 %40 to i1
  %42 = zext i1 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load ptr, ptr %5, align 8
  %46 = load i32, ptr %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i32], ptr %45, i64 %47
  %49 = load i32, ptr %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [6 x i32], ptr %48, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 4 dereferenceable(4) %14)
          to label %55 unwind label %64

55:                                               ; preds = %54
  %56 = load i32, ptr %13, align 4
  %57 = load ptr, ptr %8, align 8
  %58 = load i32, ptr %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  store i32 %56, ptr %60, align 4
  %61 = load i32, ptr %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 %62
  store i8 1, ptr %63, align 1
  br label %68

64:                                               ; preds = %54, %30, %28, %24, %4
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = extractvalue { ptr, i32 } %65, 0
  store ptr %66, ptr %11, align 8
  %67 = extractvalue { ptr, i32 } %65, 1
  store i32 %67, ptr %12, align 4
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #10
  br label %82

68:                                               ; preds = %55, %44, %36
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %14, align 4
  br label %33, !llvm.loop !6

72:                                               ; preds = %33
  br label %24, !llvm.loop !8

73:                                               ; preds = %26
  %74 = load i32, ptr %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1
  %78 = trunc i8 %77 to i1
  %79 = zext i1 %78 to i32
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  call void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %10) #10
  ret i32 %81

82:                                               ; preds = %64
  %83 = load ptr, ptr %11, align 8
  %84 = load i32, ptr %12, align 4
  %85 = insertvalue { ptr, i32 } poison, ptr %83, 0
  %86 = insertvalue { ptr, i32 } %85, i32 %84, 1
  resume { ptr, i32 } %86
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
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
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  %5 = call noundef zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5dequeIiSaIiEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::queue", ptr %3, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z3dfsPA6_iiPb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 1, ptr %11, align 1
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %37, %3
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x i32], ptr %16, i64 %18
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 8
  %34 = load i32, ptr %7, align 4
  %35 = load ptr, ptr %6, align 8
  call void @_Z3dfsPA6_iiPb(ptr noundef %33, i32 noundef %34, ptr noundef %35)
  br label %36

36:                                               ; preds = %32, %25, %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %7, align 4
  br label %12, !llvm.loop !9

40:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z6minCutPA6_iii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x [6 x i32]], align 16
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %15

15:                                               ; preds = %41, %3
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  store i32 0, ptr %8, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, ptr %8, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [6 x i32], ptr %23, i64 %25
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], ptr %26, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x [6 x i32]], ptr %9, i64 0, i64 %32
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], ptr %33, i64 0, i64 %35
  store i32 %30, ptr %36, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, ptr %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %8, align 4
  br label %19, !llvm.loop !10

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %7, align 4
  br label %15, !llvm.loop !11

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %110, %44
  %46 = getelementptr inbounds [6 x [6 x i32]], ptr %9, i64 0, i64 0
  %47 = load i32, ptr %5, align 4
  %48 = load i32, ptr %6, align 4
  %49 = getelementptr inbounds [6 x i32], ptr %10, i64 0, i64 0
  %50 = call noundef i32 @_Z3bfsPA6_iiiPi(ptr noundef %46, i32 noundef %47, i32 noundef %48, ptr noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %111

52:                                               ; preds = %45
  store i32 2147483647, ptr %11, align 4
  %53 = load i32, ptr %6, align 4
  store i32 %53, ptr %8, align 4
  br label %54

54:                                               ; preds = %71, %52
  %55 = load i32, ptr %8, align 4
  %56 = load i32, ptr %5, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x i32], ptr %10, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %7, align 4
  %63 = load i32, ptr %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x [6 x i32]], ptr %9, i64 0, i64 %64
  %66 = load i32, ptr %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x i32], ptr %65, i64 0, i64 %67
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %68)
  %70 = load i32, ptr %69, align 4
  store i32 %70, ptr %11, align 4
  br label %71

71:                                               ; preds = %58
  %72 = load i32, ptr %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], ptr %10, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %8, align 4
  br label %54, !llvm.loop !12

76:                                               ; preds = %54
  %77 = load i32, ptr %6, align 4
  store i32 %77, ptr %8, align 4
  br label %78

78:                                               ; preds = %105, %76
  %79 = load i32, ptr %8, align 4
  %80 = load i32, ptr %5, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [6 x i32], ptr %10, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %7, align 4
  %87 = load i32, ptr %11, align 4
  %88 = load i32, ptr %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [6 x [6 x i32]], ptr %9, i64 0, i64 %89
  %91 = load i32, ptr %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i32], ptr %90, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = sub nsw i32 %94, %87
  store i32 %95, ptr %93, align 4
  %96 = load i32, ptr %11, align 4
  %97 = load i32, ptr %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [6 x [6 x i32]], ptr %9, i64 0, i64 %98
  %100 = load i32, ptr %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [6 x i32], ptr %99, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4
  %104 = add nsw i32 %103, %96
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %82
  %106 = load i32, ptr %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x i32], ptr %10, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  store i32 %109, ptr %8, align 4
  br label %78, !llvm.loop !13

110:                                              ; preds = %78
  br label %45, !llvm.loop !14

111:                                              ; preds = %45
  %112 = getelementptr inbounds [6 x i8], ptr %12, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %112, i8 0, i64 6, i1 false)
  %113 = getelementptr inbounds [6 x [6 x i32]], ptr %9, i64 0, i64 0
  %114 = load i32, ptr %5, align 4
  %115 = getelementptr inbounds [6 x i8], ptr %12, i64 0, i64 0
  call void @_Z3dfsPA6_iiPb(ptr noundef %113, i32 noundef %114, ptr noundef %115)
  store i32 0, ptr %13, align 4
  br label %116

116:                                              ; preds = %157, %111
  %117 = load i32, ptr %13, align 4
  %118 = icmp slt i32 %117, 6
  br i1 %118, label %119, label %160

119:                                              ; preds = %116
  store i32 0, ptr %14, align 4
  br label %120

120:                                              ; preds = %153, %119
  %121 = load i32, ptr %14, align 4
  %122 = icmp slt i32 %121, 6
  br i1 %122, label %123, label %156

123:                                              ; preds = %120
  %124 = load i32, ptr %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [6 x i8], ptr %12, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1
  %128 = trunc i8 %127 to i1
  br i1 %128, label %129, label %152

129:                                              ; preds = %123
  %130 = load i32, ptr %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [6 x i8], ptr %12, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1
  %134 = trunc i8 %133 to i1
  br i1 %134, label %152, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %4, align 8
  %137 = load i32, ptr %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [6 x i32], ptr %136, i64 %138
  %140 = load i32, ptr %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [6 x i32], ptr %139, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %135
  %146 = load i32, ptr %13, align 4
  %147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %146)
  %148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef @.str)
  %149 = load i32, ptr %14, align 4
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %148, i32 noundef %149)
  %151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %152

152:                                              ; preds = %145, %135, %129, %123
  br label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %14, align 4
  br label %120, !llvm.loop !15

156:                                              ; preds = %120
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %13, align 4
  br label %116, !llvm.loop !16

160:                                              ; preds = %116
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #2 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x [6 x i32]], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.graph, i64 144, i1 false)
  %3 = getelementptr inbounds [6 x [6 x i32]], ptr %2, i64 0, i64 0
  call void @_Z6minCutPA6_iii(ptr noundef %3, i32 noundef 0, i32 noundef 5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %5) #10
  call void @_ZNSt5dequeIiSaIiEE3endEv(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %5) #10
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #10
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %7 unwind label %8

7:                                                ; preds = %1
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #10
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #2 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #6 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
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
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %12, ptr noundef %17) #10
  %18 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %21, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %20, i64 noundef %23) #10
  br label %24

24:                                               ; preds = %8, %1
  %25 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %25) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) #2 comdat align 2 {
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
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef %16) #10
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::allocator.0", align 1
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  %12 = load ptr, ptr %8, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(ptr dead_on_unwind writable sret(%"class.std::allocator.0") align 1 %11, ptr noundef nonnull align 8 dereferenceable(80) %12) #10
  %13 = load ptr, ptr %9, align 8
  %14 = load i64, ptr %10, align 8
  store ptr %11, ptr %5, align 8
  store ptr %13, ptr %6, align 8
  store i64 %14, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load i64, ptr %7, align 8
  call void @_ZNSt15__new_allocatorIPiE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %16, i64 noundef %17)
  br label %18

18:                                               ; preds = %3
  store ptr %11, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  call void @_ZNSt15__new_allocatorIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #10
  ret void

20:                                               ; No predecessors!
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds %"class.std::_Deque_base", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %7, align 8
  %11 = invoke noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  store ptr %9, ptr %3, align 8
  store ptr %10, ptr %4, align 8
  store i64 %11, ptr %5, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load i64, ptr %5, align 8
  call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %14, i64 noundef %15)
  br label %16

16:                                               ; preds = %12
  ret void

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef %0) #2 comdat {
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
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  call void @_ZdlPv(ptr noundef %8) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.0") align 1 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #10
  store ptr %0, ptr %4, align 8
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %3, align 8
  %11 = load ptr, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPiE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  call void @_ZdlPv(ptr noundef %8) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #10
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
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #10
  br label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %4, align 4
  %15 = insertvalue { ptr, i32 } poison, ptr %13, 0
  %16 = insertvalue { ptr, i32 } %15, i32 %14, 1
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  store ptr %6, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %51 = call ptr @__cxa_begin_catch(ptr %50) #10
  %52 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %56 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %55, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %54, i64 noundef %57) #10
  %58 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %59 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %58, i32 0, i32 0
  store ptr null, ptr %59, align 8
  %60 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %60, i32 0, i32 1
  store i64 0, ptr %61, align 8
  invoke void @__cxa_rethrow() #13
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
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef %70) #10
  %71 = getelementptr inbounds %"class.std::_Deque_base", ptr %12, i32 0, i32 0
  %72 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds ptr, ptr %73, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef %74) #10
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
  call void @__clang_call_terminate(ptr %100) #11
  unreachable

101:                                              ; preds = %49
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %3, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
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
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  %12 = load ptr, ptr %7, align 8
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(ptr dead_on_unwind writable sret(%"class.std::allocator.0") align 1 %9, ptr noundef nonnull align 8 dereferenceable(80) %12) #10
  %13 = load i64, ptr %8, align 8
  store ptr %9, ptr %3, align 8
  store i64 %13, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load i64, ptr %4, align 8
  %16 = invoke noundef ptr @_ZNSt15__new_allocatorIPiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %14, i64 noundef %15, ptr noundef null)
          to label %17 unwind label %20

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17
  store ptr %9, ptr %6, align 8
  %19 = load ptr, ptr %6, align 8
  call void @_ZNSt15__new_allocatorIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #10
  ret ptr %16

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  store ptr %22, ptr %10, align 8
  %23 = extractvalue { ptr, i32 } %21, 1
  store i32 %23, ptr %11, align 4
  store ptr %9, ptr %5, align 8
  %24 = load ptr, ptr %5, align 8
  call void @_ZNSt15__new_allocatorIPiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24) #10
  br label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %10, align 8
  %27 = load i32, ptr %11, align 4
  %28 = insertvalue { ptr, i32 } poison, ptr %26, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br label %12, !llvm.loop !18

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
  %29 = call ptr @__cxa_begin_catch(ptr %28) #10
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef %30, ptr noundef %31) #10
  invoke void @__cxa_rethrow() #13
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
  call void @__clang_call_terminate(ptr %46) #11
  unreachable

47:                                               ; preds = %27
  unreachable
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #2 comdat align 2 {
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
  %13 = call noundef i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #10
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  store ptr %8, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ugt i64 %9, 1152921504606846975
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, ptr %6, align 8
  %14 = icmp ugt i64 %13, 2305843009213693951
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

17:                                               ; preds = %3
  %18 = load i64, ptr %6, align 8
  %19 = mul i64 %18, 8
  %20 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #14
  ret ptr %20
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %5, i32 0, i32 0
  %7 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
  store ptr %6, ptr %2, align 8
  store i64 %7, ptr %3, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = load i64, ptr %3, align 8
  %10 = call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9, ptr noundef null)
  ret ptr %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  store ptr %8, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ugt i64 %9, 2305843009213693951
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, ptr %6, align 8
  %14 = icmp ugt i64 %13, 4611686018427387903
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

17:                                               ; preds = %3
  %18 = load i64, ptr %6, align 8
  %19 = mul i64 %18, 4
  %20 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #14
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #2 comdat align 2 {
  %1 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 4)
  ret i64 %1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 -1
  %21 = icmp ne ptr %15, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %24, i32 0, i32 3
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %10, align 8
  store ptr %23, ptr %6, align 8
  store ptr %27, ptr %7, align 8
  store ptr %28, ptr %8, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %8, align 8
  store ptr %29, ptr %3, align 8
  store ptr %30, ptr %4, align 8
  store ptr %31, ptr %5, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds i32, ptr %39, i32 1
  store ptr %40, ptr %38, align 8
  br label %43

41:                                               ; preds = %2
  %42 = load ptr, ptr %10, align 8
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 4 dereferenceable(4) %42)
  br label %43

43:                                               ; preds = %41, %22
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = call noundef i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %11) #10
  %13 = call noundef i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %11) #10
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.1) #13
  unreachable

16:                                               ; preds = %2
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %11, i64 noundef 1)
  %17 = call noundef ptr @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %11)
  %18 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %17, ptr %22, align 8
  %23 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %24, i32 0, i32 3
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %10, align 8
  store ptr %23, ptr %6, align 8
  store ptr %27, ptr %7, align 8
  store ptr %28, ptr %8, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %8, align 8
  store ptr %29, ptr %3, align 8
  store ptr %30, ptr %4, align 8
  store ptr %31, ptr %5, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %39 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %38, i32 0, i32 3
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef %42) #10
  %43 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %"class.std::_Deque_base", ptr %11, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %47, i32 0, i32 3
  %49 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 2
  %8 = call noundef i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #10
  %5 = call noundef i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %4) #10
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #8

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt15_Deque_iteratorIiRiPiES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #2 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #10
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
  %20 = zext i1 %19 to i64
  %21 = sub nsw i64 %15, %20
  %22 = mul nsw i64 %5, %21
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = add nsw i64 %22, %32
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %36 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = add nsw i64 %33, %43
  ret i64 %44
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 9223372036854775807, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %10, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  store i64 2305843009213693951, ptr %7, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %13 unwind label %15

13:                                               ; preds = %1
  %14 = load i64, ptr %12, align 8
  ret i64 %14

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat {
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

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) #0 comdat align 2 {
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
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef %127, i64 noundef %130) #10
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
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %139, ptr noundef %140) #10
  %141 = getelementptr inbounds %"class.std::_Deque_base", ptr %13, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %141, i32 0, i32 3
  %143 = load ptr, ptr %9, align 8
  %144 = load i64, ptr %7, align 8
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  %146 = getelementptr inbounds ptr, ptr %145, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef %146) #10
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPiS1_ET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %7) #10
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %9) #10
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %11) #10
  %13 = call noundef ptr @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %8, ptr noundef %10, ptr noundef %12)
  %14 = call noundef ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPiET_S2_(ptr noundef %0) #2 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #2 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %0) #2 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiS3_EEPT0_PT_S7_S5_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiS3_EEPT0_PT_S7_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
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
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load i64, ptr %7, align 8
  %20 = mul i64 8, %19
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %17, ptr align 8 %18, i64 %20, i1 false)
  br label %28

21:                                               ; preds = %3
  %22 = load i64, ptr %7, align 8
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %4, align 8
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPiS3_EEvPT_PT0_(ptr noundef %25, ptr noundef %26)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %16
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  ret ptr %31
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPiS3_EEvPT_PT0_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %3, align 8
  store ptr %6, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %7) #10
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %9) #10
  %11 = load ptr, ptr %6, align 8
  %12 = call noundef ptr @_ZSt12__niter_baseIPPiET_S2_(ptr noundef %11) #10
  %13 = call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %8, ptr noundef %10, ptr noundef %12)
  %14 = call noundef ptr @_ZSt12__niter_wrapIPPiET_RKS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiS3_EEPT0_PT_S7_S5_(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiS3_EEPT0_PT_S7_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 comdat align 2 {
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
  %15 = icmp sgt i64 %14, 1
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
  br label %32

24:                                               ; preds = %3
  %25 = load i64, ptr %7, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 -1
  %30 = load ptr, ptr %4, align 8
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPiS3_EEvPT_PT0_(ptr noundef %29, ptr noundef %30)
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %16
  %33 = load ptr, ptr %6, align 8
  %34 = load i64, ptr %7, align 8
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  ret ptr %36
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %"class.std::_Deque_base", ptr %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %6, i32 0, i32 2
  %8 = call noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIiRiPiES4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIiRiPiES4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #2 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5dequeIiSaIiEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @_ZNSt5dequeIiSaIiEE5beginEv(ptr dead_on_unwind writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %4) #10
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 -1
  %17 = icmp ne ptr %11, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #10
  %20 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  store ptr %19, ptr %4, align 8
  store ptr %23, ptr %5, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %5, align 8
  store ptr %24, ptr %2, align 8
  store ptr %25, ptr %3, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %29 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds i32, ptr %31, i32 1
  store ptr %32, ptr %30, align 8
  br label %35

33:                                               ; preds = %1
  invoke void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %34 unwind label %36

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %18
  ret void

36:                                               ; preds = %33
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #10
  %9 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  store ptr %8, ptr %4, align 8
  store ptr %12, ptr %5, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %5, align 8
  store ptr %13, ptr %2, align 8
  store ptr %14, ptr %3, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %17, i32 0, i32 2
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef %20) #10
  %21 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %27) #10
  %28 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %29 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base", ptr %7, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data", ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %33, i32 0, i32 0
  store ptr %31, ptr %34, align 8
  ret void
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
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
