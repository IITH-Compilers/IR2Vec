; ModuleID = 'PE-benchmarks/karatsuba.cpp'
source_filename = "PE-benchmarks/karatsuba.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%struct._Guard = type { ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1100\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1010\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"110\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"111\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %6, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #10
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %7, align 4
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  store i32 0, ptr %8, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, ptr %8, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %6, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 8
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %9, i8 noundef signext 48, ptr noundef nonnull align 8 dereferenceable(32) %29)
  %30 = load ptr, ptr %4, align 8
  %31 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  br label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %8, align 4
  br label %22, !llvm.loop !6

35:                                               ; preds = %22
  %36 = load i32, ptr %7, align 4
  store i32 %36, ptr %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = load i32, ptr %6, align 4
  %39 = load i32, ptr %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  store i32 0, ptr %10, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, ptr %10, align 4
  %44 = load i32, ptr %6, align 4
  %45 = load i32, ptr %7, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 8
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %11, i8 noundef signext 48, ptr noundef nonnull align 8 dereferenceable(32) %49)
  %50 = load ptr, ptr %5, align 8
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  br label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %10, align 4
  br label %42, !llvm.loop !8

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %6, align 4
  store i32 %58, ptr %3, align 4
  br label %59

59:                                               ; preds = %57, %35
  %60 = load i32, ptr %3, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  %14 = load ptr, ptr %8, align 8
  %15 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  %16 = load ptr, ptr %8, align 8
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr sret(%"class.std::allocator") align 1 %9, ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %7, i64 noundef 1, ptr noundef %13, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %17 unwind label %19

17:                                               ; preds = %3
  store ptr %9, ptr %5, align 8
  %18 = load ptr, ptr %5, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #10
  ret void

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  store ptr %21, ptr %10, align 8
  %22 = extractvalue { ptr, i32 } %20, 1
  store i32 %22, ptr %11, align 4
  store ptr %9, ptr %4, align 8
  %23 = load ptr, ptr %4, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %23) #10
  br label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %10, align 8
  %26 = load i32, ptr %11, align 4
  %27 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %28 = insertvalue { ptr, i32 } %27, i32 %26, 1
  resume { ptr, i32 } %28
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca i1, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %4, align 8
  store i1 false, ptr %5, align 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %16 = invoke noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %17 unwind label %62

17:                                               ; preds = %3
  store i32 %16, ptr %6, align 4
  store i32 0, ptr %9, align 4
  %18 = load i32, ptr %6, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, ptr %10, align 4
  br label %20

20:                                               ; preds = %59, %17
  %21 = load i32, ptr %10, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = load i32, ptr %10, align 4
  %25 = sext i32 %24 to i64
  %26 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %25)
          to label %27 unwind label %62

27:                                               ; preds = %23
  %28 = load i8, ptr %26, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 48
  store i32 %30, ptr %11, align 4
  %31 = load i32, ptr %10, align 4
  %32 = sext i32 %31 to i64
  %33 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %32)
          to label %34 unwind label %62

34:                                               ; preds = %27
  %35 = load i8, ptr %33, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  store i32 %37, ptr %12, align 4
  %38 = load i32, ptr %11, align 4
  %39 = load i32, ptr %12, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, ptr %9, align 4
  %42 = xor i32 %40, %41
  %43 = add nsw i32 %42, 48
  store i32 %43, ptr %13, align 4
  %44 = load i32, ptr %13, align 4
  %45 = trunc i32 %44 to i8
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %14, i8 noundef signext %45, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %46 unwind label %62

46:                                               ; preds = %34
  %47 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  %48 = load i32, ptr %11, align 4
  %49 = load i32, ptr %12, align 4
  %50 = and i32 %48, %49
  %51 = load i32, ptr %12, align 4
  %52 = load i32, ptr %9, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, ptr %11, align 4
  %56 = load i32, ptr %9, align 4
  %57 = and i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, ptr %9, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, ptr %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %10, align 4
  br label %20, !llvm.loop !9

62:                                               ; preds = %69, %34, %27, %23, %3
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  store ptr %64, ptr %7, align 8
  %65 = extractvalue { ptr, i32 } %63, 1
  store i32 %65, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %76

66:                                               ; preds = %20
  %67 = load i32, ptr %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %15, i8 noundef signext 49, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %70 unwind label %62

70:                                               ; preds = %69
  %71 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %15) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #10
  br label %72

72:                                               ; preds = %70, %66
  store i1 true, ptr %5, align 1
  %73 = load i1, ptr %5, align 1
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %75

75:                                               ; preds = %74, %72
  ret void

76:                                               ; preds = %62
  %77 = load ptr, ptr %7, align 8
  %78 = load i32, ptr %8, align 4
  %79 = insertvalue { ptr, i32 } poison, ptr %77, 0
  %80 = insertvalue { ptr, i32 } %79, i32 %78, 1
  resume { ptr, i32 } %80
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  %4 = load i8, ptr %3, align 1
  %5 = sext i8 %4 to i32
  %6 = sub nsw i32 %5, 48
  %7 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0)
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sub nsw i32 %9, 48
  %11 = mul nsw i32 %6, %10
  ret i32 %11
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %0, ptr noundef %1) #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca i64, align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca i64, align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca i64, align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = call noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store i32 %28, ptr %4, align 4
  %29 = load i32, ptr %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i64 0, ptr %3, align 8
  br label %171

32:                                               ; preds = %2
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %40

36:                                               ; preds = %35
  %37 = invoke noundef i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %5, ptr noundef %6)
          to label %38 unwind label %44

38:                                               ; preds = %36
  %39 = sext i32 %37 to i64
  store i64 %39, ptr %3, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %171

40:                                               ; preds = %35
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = extractvalue { ptr, i32 } %41, 0
  store ptr %42, ptr %7, align 8
  %43 = extractvalue { ptr, i32 } %41, 1
  store i32 %43, ptr %8, align 4
  br label %48

44:                                               ; preds = %36
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  store ptr %46, ptr %7, align 8
  %47 = extractvalue { ptr, i32 } %45, 1
  store i32 %47, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  br label %48

48:                                               ; preds = %44, %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %173

49:                                               ; preds = %32
  %50 = load i32, ptr %4, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, ptr %9, align 4
  %52 = load i32, ptr %4, align 4
  %53 = load i32, ptr %9, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, ptr %10, align 4
  %55 = load i32, ptr %9, align 4
  %56 = sext i32 %55 to i64
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %56)
  %57 = load i32, ptr %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, ptr %10, align 4
  %60 = sext i32 %59 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef %60)
          to label %61 unwind label %104

61:                                               ; preds = %49
  %62 = load i32, ptr %9, align 4
  %63 = sext i32 %62 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %63)
          to label %64 unwind label %108

64:                                               ; preds = %61
  %65 = load i32, ptr %9, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, ptr %10, align 4
  %68 = sext i32 %67 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %66, i64 noundef %68)
          to label %69 unwind label %112

69:                                               ; preds = %64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %70 unwind label %116

70:                                               ; preds = %69
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %71 unwind label %120

71:                                               ; preds = %70
  %72 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %16, ptr noundef %17)
          to label %73 unwind label %124

73:                                               ; preds = %71
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  store i64 %72, ptr %15, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %74 unwind label %116

74:                                               ; preds = %73
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %75 unwind label %129

75:                                               ; preds = %74
  %76 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %19, ptr noundef %20)
          to label %77 unwind label %133

77:                                               ; preds = %75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #10
  store i64 %76, ptr %18, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %78 unwind label %116

78:                                               ; preds = %77
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %79 unwind label %138

79:                                               ; preds = %78
  invoke void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef %23, ptr noundef %24)
          to label %80 unwind label %142

80:                                               ; preds = %79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %81 unwind label %146

81:                                               ; preds = %80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %82 unwind label %150

82:                                               ; preds = %81
  invoke void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef %26, ptr noundef %27)
          to label %83 unwind label %154

83:                                               ; preds = %82
  %84 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %22, ptr noundef %25)
          to label %85 unwind label %158

85:                                               ; preds = %83
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #10
  store i64 %84, ptr %21, align 8
  %86 = load i64, ptr %15, align 8
  %87 = load i32, ptr %10, align 4
  %88 = mul nsw i32 2, %87
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %86, %90
  %92 = load i64, ptr %21, align 8
  %93 = load i64, ptr %15, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, ptr %18, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i32, ptr %10, align 4
  %98 = shl i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %96, %99
  %101 = add nsw i64 %91, %100
  %102 = load i64, ptr %18, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, ptr %3, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  br label %171

104:                                              ; preds = %49
  %105 = landingpad { ptr, i32 }
          cleanup
  %106 = extractvalue { ptr, i32 } %105, 0
  store ptr %106, ptr %7, align 8
  %107 = extractvalue { ptr, i32 } %105, 1
  store i32 %107, ptr %8, align 4
  br label %170

108:                                              ; preds = %61
  %109 = landingpad { ptr, i32 }
          cleanup
  %110 = extractvalue { ptr, i32 } %109, 0
  store ptr %110, ptr %7, align 8
  %111 = extractvalue { ptr, i32 } %109, 1
  store i32 %111, ptr %8, align 4
  br label %169

112:                                              ; preds = %64
  %113 = landingpad { ptr, i32 }
          cleanup
  %114 = extractvalue { ptr, i32 } %113, 0
  store ptr %114, ptr %7, align 8
  %115 = extractvalue { ptr, i32 } %113, 1
  store i32 %115, ptr %8, align 4
  br label %168

116:                                              ; preds = %77, %73, %69
  %117 = landingpad { ptr, i32 }
          cleanup
  %118 = extractvalue { ptr, i32 } %117, 0
  store ptr %118, ptr %7, align 8
  %119 = extractvalue { ptr, i32 } %117, 1
  store i32 %119, ptr %8, align 4
  br label %167

120:                                              ; preds = %70
  %121 = landingpad { ptr, i32 }
          cleanup
  %122 = extractvalue { ptr, i32 } %121, 0
  store ptr %122, ptr %7, align 8
  %123 = extractvalue { ptr, i32 } %121, 1
  store i32 %123, ptr %8, align 4
  br label %128

124:                                              ; preds = %71
  %125 = landingpad { ptr, i32 }
          cleanup
  %126 = extractvalue { ptr, i32 } %125, 0
  store ptr %126, ptr %7, align 8
  %127 = extractvalue { ptr, i32 } %125, 1
  store i32 %127, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #10
  br label %128

128:                                              ; preds = %124, %120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  br label %167

129:                                              ; preds = %74
  %130 = landingpad { ptr, i32 }
          cleanup
  %131 = extractvalue { ptr, i32 } %130, 0
  store ptr %131, ptr %7, align 8
  %132 = extractvalue { ptr, i32 } %130, 1
  store i32 %132, ptr %8, align 4
  br label %137

133:                                              ; preds = %75
  %134 = landingpad { ptr, i32 }
          cleanup
  %135 = extractvalue { ptr, i32 } %134, 0
  store ptr %135, ptr %7, align 8
  %136 = extractvalue { ptr, i32 } %134, 1
  store i32 %136, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #10
  br label %137

137:                                              ; preds = %133, %129
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #10
  br label %167

138:                                              ; preds = %78
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = extractvalue { ptr, i32 } %139, 0
  store ptr %140, ptr %7, align 8
  %141 = extractvalue { ptr, i32 } %139, 1
  store i32 %141, ptr %8, align 4
  br label %166

142:                                              ; preds = %79
  %143 = landingpad { ptr, i32 }
          cleanup
  %144 = extractvalue { ptr, i32 } %143, 0
  store ptr %144, ptr %7, align 8
  %145 = extractvalue { ptr, i32 } %143, 1
  store i32 %145, ptr %8, align 4
  br label %165

146:                                              ; preds = %80
  %147 = landingpad { ptr, i32 }
          cleanup
  %148 = extractvalue { ptr, i32 } %147, 0
  store ptr %148, ptr %7, align 8
  %149 = extractvalue { ptr, i32 } %147, 1
  store i32 %149, ptr %8, align 4
  br label %164

150:                                              ; preds = %81
  %151 = landingpad { ptr, i32 }
          cleanup
  %152 = extractvalue { ptr, i32 } %151, 0
  store ptr %152, ptr %7, align 8
  %153 = extractvalue { ptr, i32 } %151, 1
  store i32 %153, ptr %8, align 4
  br label %163

154:                                              ; preds = %82
  %155 = landingpad { ptr, i32 }
          cleanup
  %156 = extractvalue { ptr, i32 } %155, 0
  store ptr %156, ptr %7, align 8
  %157 = extractvalue { ptr, i32 } %155, 1
  store i32 %157, ptr %8, align 4
  br label %162

158:                                              ; preds = %83
  %159 = landingpad { ptr, i32 }
          cleanup
  %160 = extractvalue { ptr, i32 } %159, 0
  store ptr %160, ptr %7, align 8
  %161 = extractvalue { ptr, i32 } %159, 1
  store i32 %161, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #10
  br label %162

162:                                              ; preds = %158, %154
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #10
  br label %163

163:                                              ; preds = %162, %150
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #10
  br label %164

164:                                              ; preds = %163, %146
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #10
  br label %165

165:                                              ; preds = %164, %142
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #10
  br label %166

166:                                              ; preds = %165, %138
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #10
  br label %167

167:                                              ; preds = %166, %137, %128, %116
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  br label %168

168:                                              ; preds = %167, %112
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  br label %169

169:                                              ; preds = %168, %108
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  br label %170

170:                                              ; preds = %169, %104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  br label %173

171:                                              ; preds = %85, %38, %31
  %172 = load i64, ptr %3, align 8
  ret i64 %172

173:                                              ; preds = %170, %48
  %174 = load ptr, ptr %7, align 8
  %175 = load i32, ptr %8, align 4
  %176 = insertvalue { ptr, i32 } poison, ptr %174, 0
  %177 = insertvalue { ptr, i32 } %176, i32 %175, 1
  resume { ptr, i32 } %177
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) #3

; Function Attrs: noinline norecurse uwtable
define dso_local noundef i32 @main() #4 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca ptr, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca %"class.std::__cxx11::basic_string", align 8
  %58 = alloca %"class.std::allocator", align 1
  %59 = alloca ptr, align 8
  %60 = alloca i32, align 4
  %61 = alloca %"class.std::__cxx11::basic_string", align 8
  %62 = alloca %"class.std::allocator", align 1
  %63 = alloca %"class.std::__cxx11::basic_string", align 8
  %64 = alloca %"class.std::allocator", align 1
  %65 = alloca %"class.std::__cxx11::basic_string", align 8
  %66 = alloca %"class.std::allocator", align 1
  %67 = alloca %"class.std::__cxx11::basic_string", align 8
  %68 = alloca %"class.std::allocator", align 1
  %69 = alloca %"class.std::__cxx11::basic_string", align 8
  %70 = alloca %"class.std::allocator", align 1
  %71 = alloca %"class.std::__cxx11::basic_string", align 8
  %72 = alloca %"class.std::allocator", align 1
  %73 = alloca %"class.std::__cxx11::basic_string", align 8
  %74 = alloca %"class.std::allocator", align 1
  %75 = alloca %"class.std::__cxx11::basic_string", align 8
  %76 = alloca %"class.std::allocator", align 1
  %77 = alloca %"class.std::__cxx11::basic_string", align 8
  %78 = alloca %"class.std::allocator", align 1
  %79 = alloca %"class.std::__cxx11::basic_string", align 8
  %80 = alloca %"class.std::allocator", align 1
  %81 = alloca %"class.std::__cxx11::basic_string", align 8
  %82 = alloca %"class.std::allocator", align 1
  %83 = alloca %"class.std::__cxx11::basic_string", align 8
  %84 = alloca %"class.std::allocator", align 1
  %85 = alloca %"class.std::__cxx11::basic_string", align 8
  %86 = alloca %"class.std::allocator", align 1
  store ptr %58, ptr %56, align 8
  %87 = load ptr, ptr %56, align 8
  store ptr %87, ptr %1, align 8
  %88 = load ptr, ptr %1, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %89 unwind label %171

89:                                               ; preds = %0
  store ptr %62, ptr %55, align 8
  %90 = load ptr, ptr %55, align 8
  store ptr %90, ptr %2, align 8
  %91 = load ptr, ptr %2, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %92 unwind label %175

92:                                               ; preds = %89
  %93 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %57, ptr noundef %61)
          to label %94 unwind label %179

94:                                               ; preds = %92
  %95 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %93)
          to label %96 unwind label %179

96:                                               ; preds = %94
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %61) #10
  store ptr %62, ptr %42, align 8
  %97 = load ptr, ptr %42, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %97) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %57) #10
  store ptr %58, ptr %40, align 8
  %98 = load ptr, ptr %40, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %98) #10
  store ptr %64, ptr %54, align 8
  %99 = load ptr, ptr %54, align 8
  store ptr %99, ptr %3, align 8
  %100 = load ptr, ptr %3, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %64)
          to label %101 unwind label %187

101:                                              ; preds = %96
  store ptr %66, ptr %53, align 8
  %102 = load ptr, ptr %53, align 8
  store ptr %102, ptr %4, align 8
  %103 = load ptr, ptr %4, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %104 unwind label %191

104:                                              ; preds = %101
  %105 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %63, ptr noundef %65)
          to label %106 unwind label %195

106:                                              ; preds = %104
  %107 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %105)
          to label %108 unwind label %195

108:                                              ; preds = %106
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #10
  store ptr %66, ptr %38, align 8
  %109 = load ptr, ptr %38, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %109) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %63) #10
  store ptr %64, ptr %36, align 8
  %110 = load ptr, ptr %36, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %110) #10
  store ptr %68, ptr %52, align 8
  %111 = load ptr, ptr %52, align 8
  store ptr %111, ptr %5, align 8
  %112 = load ptr, ptr %5, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %113 unwind label %203

113:                                              ; preds = %108
  store ptr %70, ptr %51, align 8
  %114 = load ptr, ptr %51, align 8
  store ptr %114, ptr %6, align 8
  %115 = load ptr, ptr %6, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %116 unwind label %207

116:                                              ; preds = %113
  %117 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %67, ptr noundef %69)
          to label %118 unwind label %211

118:                                              ; preds = %116
  %119 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %117)
          to label %120 unwind label %211

120:                                              ; preds = %118
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %69) #10
  store ptr %70, ptr %34, align 8
  %121 = load ptr, ptr %34, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %121) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %67) #10
  store ptr %68, ptr %32, align 8
  %122 = load ptr, ptr %32, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %122) #10
  store ptr %72, ptr %50, align 8
  %123 = load ptr, ptr %50, align 8
  store ptr %123, ptr %7, align 8
  %124 = load ptr, ptr %7, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %72)
          to label %125 unwind label %219

125:                                              ; preds = %120
  store ptr %74, ptr %49, align 8
  %126 = load ptr, ptr %49, align 8
  store ptr %126, ptr %8, align 8
  %127 = load ptr, ptr %8, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %74)
          to label %128 unwind label %223

128:                                              ; preds = %125
  %129 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %71, ptr noundef %73)
          to label %130 unwind label %227

130:                                              ; preds = %128
  %131 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %129)
          to label %132 unwind label %227

132:                                              ; preds = %130
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %73) #10
  store ptr %74, ptr %30, align 8
  %133 = load ptr, ptr %30, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %133) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %71) #10
  store ptr %72, ptr %28, align 8
  %134 = load ptr, ptr %28, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %134) #10
  store ptr %76, ptr %48, align 8
  %135 = load ptr, ptr %48, align 8
  store ptr %135, ptr %9, align 8
  %136 = load ptr, ptr %9, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %76)
          to label %137 unwind label %235

137:                                              ; preds = %132
  store ptr %78, ptr %47, align 8
  %138 = load ptr, ptr %47, align 8
  store ptr %138, ptr %10, align 8
  %139 = load ptr, ptr %10, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %78)
          to label %140 unwind label %239

140:                                              ; preds = %137
  %141 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %75, ptr noundef %77)
          to label %142 unwind label %243

142:                                              ; preds = %140
  %143 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %141)
          to label %144 unwind label %243

144:                                              ; preds = %142
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %77) #10
  store ptr %78, ptr %26, align 8
  %145 = load ptr, ptr %26, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %145) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %75) #10
  store ptr %76, ptr %24, align 8
  %146 = load ptr, ptr %24, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %146) #10
  store ptr %80, ptr %46, align 8
  %147 = load ptr, ptr %46, align 8
  store ptr %147, ptr %11, align 8
  %148 = load ptr, ptr %11, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %80)
          to label %149 unwind label %251

149:                                              ; preds = %144
  store ptr %82, ptr %45, align 8
  %150 = load ptr, ptr %45, align 8
  store ptr %150, ptr %12, align 8
  %151 = load ptr, ptr %12, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %82)
          to label %152 unwind label %255

152:                                              ; preds = %149
  %153 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %79, ptr noundef %81)
          to label %154 unwind label %259

154:                                              ; preds = %152
  %155 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %153)
          to label %156 unwind label %259

156:                                              ; preds = %154
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %81) #10
  store ptr %82, ptr %22, align 8
  %157 = load ptr, ptr %22, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %157) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %79) #10
  store ptr %80, ptr %20, align 8
  %158 = load ptr, ptr %20, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %158) #10
  store ptr %84, ptr %44, align 8
  %159 = load ptr, ptr %44, align 8
  store ptr %159, ptr %13, align 8
  %160 = load ptr, ptr %13, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %84)
          to label %161 unwind label %267

161:                                              ; preds = %156
  store ptr %86, ptr %43, align 8
  %162 = load ptr, ptr %43, align 8
  store ptr %162, ptr %14, align 8
  %163 = load ptr, ptr %14, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %86)
          to label %164 unwind label %271

164:                                              ; preds = %161
  %165 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef %83, ptr noundef %85)
          to label %166 unwind label %275

166:                                              ; preds = %164
  %167 = invoke i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %165)
          to label %168 unwind label %275

168:                                              ; preds = %166
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %85) #10
  store ptr %86, ptr %18, align 8
  %169 = load ptr, ptr %18, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %169) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %83) #10
  store ptr %84, ptr %16, align 8
  %170 = load ptr, ptr %16, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %170) #10
  ret i32 0

171:                                              ; preds = %0
  %172 = landingpad { ptr, i32 }
          cleanup
  %173 = extractvalue { ptr, i32 } %172, 0
  store ptr %173, ptr %59, align 8
  %174 = extractvalue { ptr, i32 } %172, 1
  store i32 %174, ptr %60, align 4
  br label %185

175:                                              ; preds = %89
  %176 = landingpad { ptr, i32 }
          cleanup
  %177 = extractvalue { ptr, i32 } %176, 0
  store ptr %177, ptr %59, align 8
  %178 = extractvalue { ptr, i32 } %176, 1
  store i32 %178, ptr %60, align 4
  br label %183

179:                                              ; preds = %94, %92
  %180 = landingpad { ptr, i32 }
          cleanup
  %181 = extractvalue { ptr, i32 } %180, 0
  store ptr %181, ptr %59, align 8
  %182 = extractvalue { ptr, i32 } %180, 1
  store i32 %182, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %61) #10
  br label %183

183:                                              ; preds = %179, %175
  store ptr %62, ptr %41, align 8
  %184 = load ptr, ptr %41, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %184) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %57) #10
  br label %185

185:                                              ; preds = %183, %171
  store ptr %58, ptr %39, align 8
  %186 = load ptr, ptr %39, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %186) #10
  br label %283

187:                                              ; preds = %96
  %188 = landingpad { ptr, i32 }
          cleanup
  %189 = extractvalue { ptr, i32 } %188, 0
  store ptr %189, ptr %59, align 8
  %190 = extractvalue { ptr, i32 } %188, 1
  store i32 %190, ptr %60, align 4
  br label %201

191:                                              ; preds = %101
  %192 = landingpad { ptr, i32 }
          cleanup
  %193 = extractvalue { ptr, i32 } %192, 0
  store ptr %193, ptr %59, align 8
  %194 = extractvalue { ptr, i32 } %192, 1
  store i32 %194, ptr %60, align 4
  br label %199

195:                                              ; preds = %106, %104
  %196 = landingpad { ptr, i32 }
          cleanup
  %197 = extractvalue { ptr, i32 } %196, 0
  store ptr %197, ptr %59, align 8
  %198 = extractvalue { ptr, i32 } %196, 1
  store i32 %198, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #10
  br label %199

199:                                              ; preds = %195, %191
  store ptr %66, ptr %37, align 8
  %200 = load ptr, ptr %37, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %200) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %63) #10
  br label %201

201:                                              ; preds = %199, %187
  store ptr %64, ptr %35, align 8
  %202 = load ptr, ptr %35, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %202) #10
  br label %283

203:                                              ; preds = %108
  %204 = landingpad { ptr, i32 }
          cleanup
  %205 = extractvalue { ptr, i32 } %204, 0
  store ptr %205, ptr %59, align 8
  %206 = extractvalue { ptr, i32 } %204, 1
  store i32 %206, ptr %60, align 4
  br label %217

207:                                              ; preds = %113
  %208 = landingpad { ptr, i32 }
          cleanup
  %209 = extractvalue { ptr, i32 } %208, 0
  store ptr %209, ptr %59, align 8
  %210 = extractvalue { ptr, i32 } %208, 1
  store i32 %210, ptr %60, align 4
  br label %215

211:                                              ; preds = %118, %116
  %212 = landingpad { ptr, i32 }
          cleanup
  %213 = extractvalue { ptr, i32 } %212, 0
  store ptr %213, ptr %59, align 8
  %214 = extractvalue { ptr, i32 } %212, 1
  store i32 %214, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %69) #10
  br label %215

215:                                              ; preds = %211, %207
  store ptr %70, ptr %33, align 8
  %216 = load ptr, ptr %33, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %216) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %67) #10
  br label %217

217:                                              ; preds = %215, %203
  store ptr %68, ptr %31, align 8
  %218 = load ptr, ptr %31, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %218) #10
  br label %283

219:                                              ; preds = %120
  %220 = landingpad { ptr, i32 }
          cleanup
  %221 = extractvalue { ptr, i32 } %220, 0
  store ptr %221, ptr %59, align 8
  %222 = extractvalue { ptr, i32 } %220, 1
  store i32 %222, ptr %60, align 4
  br label %233

223:                                              ; preds = %125
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = extractvalue { ptr, i32 } %224, 0
  store ptr %225, ptr %59, align 8
  %226 = extractvalue { ptr, i32 } %224, 1
  store i32 %226, ptr %60, align 4
  br label %231

227:                                              ; preds = %130, %128
  %228 = landingpad { ptr, i32 }
          cleanup
  %229 = extractvalue { ptr, i32 } %228, 0
  store ptr %229, ptr %59, align 8
  %230 = extractvalue { ptr, i32 } %228, 1
  store i32 %230, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %73) #10
  br label %231

231:                                              ; preds = %227, %223
  store ptr %74, ptr %29, align 8
  %232 = load ptr, ptr %29, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %232) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %71) #10
  br label %233

233:                                              ; preds = %231, %219
  store ptr %72, ptr %27, align 8
  %234 = load ptr, ptr %27, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %234) #10
  br label %283

235:                                              ; preds = %132
  %236 = landingpad { ptr, i32 }
          cleanup
  %237 = extractvalue { ptr, i32 } %236, 0
  store ptr %237, ptr %59, align 8
  %238 = extractvalue { ptr, i32 } %236, 1
  store i32 %238, ptr %60, align 4
  br label %249

239:                                              ; preds = %137
  %240 = landingpad { ptr, i32 }
          cleanup
  %241 = extractvalue { ptr, i32 } %240, 0
  store ptr %241, ptr %59, align 8
  %242 = extractvalue { ptr, i32 } %240, 1
  store i32 %242, ptr %60, align 4
  br label %247

243:                                              ; preds = %142, %140
  %244 = landingpad { ptr, i32 }
          cleanup
  %245 = extractvalue { ptr, i32 } %244, 0
  store ptr %245, ptr %59, align 8
  %246 = extractvalue { ptr, i32 } %244, 1
  store i32 %246, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %77) #10
  br label %247

247:                                              ; preds = %243, %239
  store ptr %78, ptr %25, align 8
  %248 = load ptr, ptr %25, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %248) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %75) #10
  br label %249

249:                                              ; preds = %247, %235
  store ptr %76, ptr %23, align 8
  %250 = load ptr, ptr %23, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %250) #10
  br label %283

251:                                              ; preds = %144
  %252 = landingpad { ptr, i32 }
          cleanup
  %253 = extractvalue { ptr, i32 } %252, 0
  store ptr %253, ptr %59, align 8
  %254 = extractvalue { ptr, i32 } %252, 1
  store i32 %254, ptr %60, align 4
  br label %265

255:                                              ; preds = %149
  %256 = landingpad { ptr, i32 }
          cleanup
  %257 = extractvalue { ptr, i32 } %256, 0
  store ptr %257, ptr %59, align 8
  %258 = extractvalue { ptr, i32 } %256, 1
  store i32 %258, ptr %60, align 4
  br label %263

259:                                              ; preds = %154, %152
  %260 = landingpad { ptr, i32 }
          cleanup
  %261 = extractvalue { ptr, i32 } %260, 0
  store ptr %261, ptr %59, align 8
  %262 = extractvalue { ptr, i32 } %260, 1
  store i32 %262, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %81) #10
  br label %263

263:                                              ; preds = %259, %255
  store ptr %82, ptr %21, align 8
  %264 = load ptr, ptr %21, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %264) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %79) #10
  br label %265

265:                                              ; preds = %263, %251
  store ptr %80, ptr %19, align 8
  %266 = load ptr, ptr %19, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %266) #10
  br label %283

267:                                              ; preds = %156
  %268 = landingpad { ptr, i32 }
          cleanup
  %269 = extractvalue { ptr, i32 } %268, 0
  store ptr %269, ptr %59, align 8
  %270 = extractvalue { ptr, i32 } %268, 1
  store i32 %270, ptr %60, align 4
  br label %281

271:                                              ; preds = %161
  %272 = landingpad { ptr, i32 }
          cleanup
  %273 = extractvalue { ptr, i32 } %272, 0
  store ptr %273, ptr %59, align 8
  %274 = extractvalue { ptr, i32 } %272, 1
  store i32 %274, ptr %60, align 4
  br label %279

275:                                              ; preds = %166, %164
  %276 = landingpad { ptr, i32 }
          cleanup
  %277 = extractvalue { ptr, i32 } %276, 0
  store ptr %277, ptr %59, align 8
  %278 = extractvalue { ptr, i32 } %276, 1
  store i32 %278, ptr %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %85) #10
  br label %279

279:                                              ; preds = %275, %271
  store ptr %86, ptr %17, align 8
  %280 = load ptr, ptr %17, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %280) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %83) #10
  br label %281

281:                                              ; preds = %279, %267
  store ptr %84, ptr %15, align 8
  %282 = load ptr, ptr %15, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %282) #10
  br label %283

283:                                              ; preds = %281, %265, %249, %233, %217, %201, %185
  %284 = load ptr, ptr %59, align 8
  %285 = load i32, ptr %60, align 4
  %286 = insertvalue { ptr, i32 } poison, ptr %284, 0
  %287 = insertvalue { ptr, i32 } %286, i32 %285, 1
  resume { ptr, i32 } %287
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::forward_iterator_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i32 0, i32 0
  %13 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  %14 = load ptr, ptr %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %15 = load ptr, ptr %5, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef @.str.8) #11
          to label %18 unwind label %19

18:                                               ; preds = %17
  unreachable

19:                                               ; preds = %27, %23, %17
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  store ptr %21, ptr %7, align 8
  %22 = extractvalue { ptr, i32 } %20, 1
  store i32 %22, ptr %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %32

23:                                               ; preds = %3
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = invoke noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %25)
          to label %27 unwind label %19

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 %26
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %9, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %29, ptr noundef %30)
          to label %31 unwind label %19

31:                                               ; preds = %27
  ret void

32:                                               ; preds = %19
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %8, align 4
  %35 = insertvalue { ptr, i32 } poison, ptr %33, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #2 comdat personality ptr @__gxx_personality_v0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i1, align 1
  %23 = alloca %"class.std::allocator", align 1
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  store ptr %0, ptr %16, align 8
  store ptr %1, ptr %17, align 8
  store i64 %2, ptr %18, align 8
  store ptr %3, ptr %19, align 8
  store i64 %4, ptr %20, align 8
  store ptr %5, ptr %21, align 8
  store i1 false, ptr %22, align 1
  %26 = load ptr, ptr %21, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  store ptr %23, ptr %13, align 8, !noalias !10
  store ptr %26, ptr %14, align 8, !noalias !10
  %27 = load ptr, ptr %14, align 8, !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  store ptr %23, ptr %11, align 8, !noalias !13
  store ptr %27, ptr %12, align 8, !noalias !13
  %28 = load ptr, ptr %12, align 8, !noalias !13
  store ptr %23, ptr %9, align 8
  store ptr %28, ptr %10, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %10, align 8
  store ptr %29, ptr %7, align 8
  store ptr %30, ptr %8, align 8
  %31 = load ptr, ptr %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %23) #10
  store ptr %23, ptr %15, align 8
  %32 = load ptr, ptr %15, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %32) #10
  %33 = load i64, ptr %18, align 8
  %34 = load i64, ptr %20, align 8
  %35 = add i64 %33, %34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %35)
          to label %36 unwind label %46

36:                                               ; preds = %6
  %37 = load ptr, ptr %17, align 8
  %38 = load i64, ptr %18, align 8
  %39 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %37, i64 noundef %38)
          to label %40 unwind label %46

40:                                               ; preds = %36
  %41 = load ptr, ptr %19, align 8
  %42 = load i64, ptr %20, align 8
  %43 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %41, i64 noundef %42)
          to label %44 unwind label %46

44:                                               ; preds = %40
  store i1 true, ptr %22, align 1
  %45 = load i1, ptr %22, align 1
  br i1 %45, label %51, label %50

46:                                               ; preds = %40, %36, %6
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = extractvalue { ptr, i32 } %47, 0
  store ptr %48, ptr %24, align 8
  %49 = extractvalue { ptr, i32 } %47, 1
  store i32 %49, ptr %25, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %52

50:                                               ; preds = %44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %51

51:                                               ; preds = %50, %44
  ret void

52:                                               ; preds = %46
  %53 = load ptr, ptr %24, align 8
  %54 = load i32, ptr %25, align 4
  %55 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %56 = insertvalue { ptr, i32 } %55, i32 %54, 1
  resume { ptr, i32 } %56
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr sret(%"class.std::allocator") align 1, ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::forward_iterator_tag", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._Guard, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  %18 = load ptr, ptr %11, align 8
  %19 = load ptr, ptr %12, align 8
  %20 = load ptr, ptr %13, align 8
  store ptr %19, ptr %8, align 8
  store ptr %20, ptr %9, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %9, align 8
  store ptr %8, ptr %4, align 8
  store ptr %21, ptr %5, align 8
  store ptr %22, ptr %6, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, ptr %14, align 8
  %28 = load i64, ptr %14, align 8
  %29 = icmp ugt i64 %28, 15
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %31)
  %32 = load i64, ptr %14, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %32)
  br label %40

33:                                               ; preds = %3
  store ptr %18, ptr %7, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %39 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #12
  unreachable

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %18)
  %41 = invoke noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %42 unwind label %48

42:                                               ; preds = %40
  %43 = load ptr, ptr %12, align 8
  %44 = load ptr, ptr %13, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %41, ptr noundef %43, ptr noundef %44) #10
  %45 = getelementptr inbounds %struct._Guard, ptr %15, i32 0, i32 0
  store ptr null, ptr %45, align 8
  %46 = load i64, ptr %14, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %46)
          to label %47 unwind label %48

47:                                               ; preds = %42
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  ret void

48:                                               ; preds = %42, %40
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = extractvalue { ptr, i32 } %49, 0
  store ptr %50, ptr %16, align 8
  %51 = extractvalue { ptr, i32 } %49, 1
  store i32 %51, ptr %17, align 4
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %16, align 8
  %54 = load i32, ptr %17, align 4
  %55 = insertvalue { ptr, i32 } poison, ptr %53, 0
  %56 = insertvalue { ptr, i32 } %55, i32 %54, 1
  resume { ptr, i32 } %56
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct._Guard, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) #1

declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._Guard, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Guard, ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %10 unwind label %12

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %1
  ret void

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #8 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230710042046+7cbf1a259152-1~exp1~20230710162136.105)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_: argument 0"}
!12 = distinct !{!12, !"_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_: argument 0"}
!15 = distinct !{!15, !"_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_"}
