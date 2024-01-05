; ModuleID = 'PE-benchmarks/karatsuba.cpp'
source_filename = "PE-benchmarks/karatsuba.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::__new_allocator" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1100\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1010\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"110\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"111\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #7
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #7
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %9, i8 noundef signext 48, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29)
  %30 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %31 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %30, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #7
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %22, !llvm.loop !6

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %11, i8 noundef signext 48, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %49)
  %50 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %51 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %50, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #7
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %42, !llvm.loop !8

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %35
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #2 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %12, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %8, align 8
  %13 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %8, align 8
  %14 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #7
  %15 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %8, align 8
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #7
  %17 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %8, align 8
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #7
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %7, i64 noundef 1, i8* noundef %14, i64 noundef %16, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9)
          to label %18 unwind label %21

18:                                               ; preds = %3
  store %"class.std::allocator"* %9, %"class.std::allocator"** %5, align 8
  %19 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %20 = bitcast %"class.std::allocator"* %19 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %20) #7
  ret void

21:                                               ; preds = %3
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %10, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %11, align 4
  store %"class.std::allocator"* %9, %"class.std::allocator"** %4, align 8
  %25 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %26 = bitcast %"class.std::allocator"* %25 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %26) #7
  br label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i8*, align 8
  %5 = alloca i1, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %16, i8** %4, align 8
  store i1 false, i1* %5, align 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #7
  %17 = invoke noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2)
          to label %18 unwind label %63

18:                                               ; preds = %3
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %60, %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = invoke noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %26)
          to label %28 unwind label %63

28:                                               ; preds = %24
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 48
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = invoke noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %33)
          to label %35 unwind label %63

35:                                               ; preds = %28
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = xor i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %41, %42
  %44 = add nsw i32 %43, 48
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = trunc i32 %45 to i8
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %14, i8 noundef signext %46, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
          to label %47 unwind label %63

47:                                               ; preds = %35
  %48 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #7
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %55, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  br label %21, !llvm.loop !9

63:                                               ; preds = %70, %35, %28, %24, %3
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %7, align 8
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #7
  br label %77

67:                                               ; preds = %21
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %15, i8 noundef signext 49, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
          to label %71 unwind label %63

71:                                               ; preds = %70
  %72 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #7
  br label %73

73:                                               ; preds = %71, %67
  store i1 true, i1* %5, align 1
  %74 = load i1, i1* %5, align 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #7
  br label %76

76:                                               ; preds = %75, %73
  ret void

77:                                               ; preds = %63
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = insertvalue { i8*, i32 } undef, i8* %78, 0
  %81 = insertvalue { i8*, i32 } %80, i32 %79, 1
  resume { i8*, i32 } %81
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) #0 {
  %3 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = sub nsw i32 %5, 48
  %7 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0)
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sub nsw i32 %9, 48
  %11 = mul nsw i32 %6, %10
  ret i32 %11
}

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca i8*, align 8
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
  %28 = call noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %171

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %40

36:                                               ; preds = %35
  %37 = invoke noundef i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %5, %"class.std::__cxx11::basic_string"* noundef %6)
          to label %38 unwind label %44

38:                                               ; preds = %36
  %39 = sext i32 %37 to i64
  store i64 %39, i64* %3, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #7
  br label %171

40:                                               ; preds = %35
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %7, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %36
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %7, align 8
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #7
  br label %48

48:                                               ; preds = %44, %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #7
  br label %173

49:                                               ; preds = %32
  %50 = load i32, i32* %4, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %56)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %12, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef %60)
          to label %61 unwind label %104

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %13, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %63)
          to label %64 unwind label %108

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %14, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %66, i64 noundef %68)
          to label %69 unwind label %112

69:                                               ; preds = %64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %70 unwind label %116

70:                                               ; preds = %69
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
          to label %71 unwind label %120

71:                                               ; preds = %70
  %72 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %16, %"class.std::__cxx11::basic_string"* noundef %17)
          to label %73 unwind label %124

73:                                               ; preds = %71
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #7
  store i64 %72, i64* %15, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12)
          to label %74 unwind label %116

74:                                               ; preds = %73
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14)
          to label %75 unwind label %129

75:                                               ; preds = %74
  %76 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %19, %"class.std::__cxx11::basic_string"* noundef %20)
          to label %77 unwind label %133

77:                                               ; preds = %75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #7
  store i64 %76, i64* %18, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
          to label %78 unwind label %116

78:                                               ; preds = %77
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12)
          to label %79 unwind label %138

79:                                               ; preds = %78
  invoke void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %22, %"class.std::__cxx11::basic_string"* noundef %23, %"class.std::__cxx11::basic_string"* noundef %24)
          to label %80 unwind label %142

80:                                               ; preds = %79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %26, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
          to label %81 unwind label %146

81:                                               ; preds = %80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14)
          to label %82 unwind label %150

82:                                               ; preds = %81
  invoke void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %25, %"class.std::__cxx11::basic_string"* noundef %26, %"class.std::__cxx11::basic_string"* noundef %27)
          to label %83 unwind label %154

83:                                               ; preds = %82
  %84 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %22, %"class.std::__cxx11::basic_string"* noundef %25)
          to label %85 unwind label %158

85:                                               ; preds = %83
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %26) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %22) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23) #7
  store i64 %84, i64* %21, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 2, %87
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %86, %90
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %15, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* %18, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %96, %99
  %101 = add nsw i64 %91, %100
  %102 = load i64, i64* %18, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, i64* %3, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #7
  br label %171

104:                                              ; preds = %49
  %105 = landingpad { i8*, i32 }
          cleanup
  %106 = extractvalue { i8*, i32 } %105, 0
  store i8* %106, i8** %7, align 8
  %107 = extractvalue { i8*, i32 } %105, 1
  store i32 %107, i32* %8, align 4
  br label %170

108:                                              ; preds = %61
  %109 = landingpad { i8*, i32 }
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  store i8* %110, i8** %7, align 8
  %111 = extractvalue { i8*, i32 } %109, 1
  store i32 %111, i32* %8, align 4
  br label %169

112:                                              ; preds = %64
  %113 = landingpad { i8*, i32 }
          cleanup
  %114 = extractvalue { i8*, i32 } %113, 0
  store i8* %114, i8** %7, align 8
  %115 = extractvalue { i8*, i32 } %113, 1
  store i32 %115, i32* %8, align 4
  br label %168

116:                                              ; preds = %77, %73, %69
  %117 = landingpad { i8*, i32 }
          cleanup
  %118 = extractvalue { i8*, i32 } %117, 0
  store i8* %118, i8** %7, align 8
  %119 = extractvalue { i8*, i32 } %117, 1
  store i32 %119, i32* %8, align 4
  br label %167

120:                                              ; preds = %70
  %121 = landingpad { i8*, i32 }
          cleanup
  %122 = extractvalue { i8*, i32 } %121, 0
  store i8* %122, i8** %7, align 8
  %123 = extractvalue { i8*, i32 } %121, 1
  store i32 %123, i32* %8, align 4
  br label %128

124:                                              ; preds = %71
  %125 = landingpad { i8*, i32 }
          cleanup
  %126 = extractvalue { i8*, i32 } %125, 0
  store i8* %126, i8** %7, align 8
  %127 = extractvalue { i8*, i32 } %125, 1
  store i32 %127, i32* %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #7
  br label %128

128:                                              ; preds = %124, %120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #7
  br label %167

129:                                              ; preds = %74
  %130 = landingpad { i8*, i32 }
          cleanup
  %131 = extractvalue { i8*, i32 } %130, 0
  store i8* %131, i8** %7, align 8
  %132 = extractvalue { i8*, i32 } %130, 1
  store i32 %132, i32* %8, align 4
  br label %137

133:                                              ; preds = %75
  %134 = landingpad { i8*, i32 }
          cleanup
  %135 = extractvalue { i8*, i32 } %134, 0
  store i8* %135, i8** %7, align 8
  %136 = extractvalue { i8*, i32 } %134, 1
  store i32 %136, i32* %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #7
  br label %137

137:                                              ; preds = %133, %129
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #7
  br label %167

138:                                              ; preds = %78
  %139 = landingpad { i8*, i32 }
          cleanup
  %140 = extractvalue { i8*, i32 } %139, 0
  store i8* %140, i8** %7, align 8
  %141 = extractvalue { i8*, i32 } %139, 1
  store i32 %141, i32* %8, align 4
  br label %166

142:                                              ; preds = %79
  %143 = landingpad { i8*, i32 }
          cleanup
  %144 = extractvalue { i8*, i32 } %143, 0
  store i8* %144, i8** %7, align 8
  %145 = extractvalue { i8*, i32 } %143, 1
  store i32 %145, i32* %8, align 4
  br label %165

146:                                              ; preds = %80
  %147 = landingpad { i8*, i32 }
          cleanup
  %148 = extractvalue { i8*, i32 } %147, 0
  store i8* %148, i8** %7, align 8
  %149 = extractvalue { i8*, i32 } %147, 1
  store i32 %149, i32* %8, align 4
  br label %164

150:                                              ; preds = %81
  %151 = landingpad { i8*, i32 }
          cleanup
  %152 = extractvalue { i8*, i32 } %151, 0
  store i8* %152, i8** %7, align 8
  %153 = extractvalue { i8*, i32 } %151, 1
  store i32 %153, i32* %8, align 4
  br label %163

154:                                              ; preds = %82
  %155 = landingpad { i8*, i32 }
          cleanup
  %156 = extractvalue { i8*, i32 } %155, 0
  store i8* %156, i8** %7, align 8
  %157 = extractvalue { i8*, i32 } %155, 1
  store i32 %157, i32* %8, align 4
  br label %162

158:                                              ; preds = %83
  %159 = landingpad { i8*, i32 }
          cleanup
  %160 = extractvalue { i8*, i32 } %159, 0
  store i8* %160, i8** %7, align 8
  %161 = extractvalue { i8*, i32 } %159, 1
  store i32 %161, i32* %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #7
  br label %162

162:                                              ; preds = %158, %154
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #7
  br label %163

163:                                              ; preds = %162, %150
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %26) #7
  br label %164

164:                                              ; preds = %163, %146
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %22) #7
  br label %165

165:                                              ; preds = %164, %142
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24) #7
  br label %166

166:                                              ; preds = %165, %138
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23) #7
  br label %167

167:                                              ; preds = %166, %137, %128, %116
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #7
  br label %168

168:                                              ; preds = %167, %112
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #7
  br label %169

169:                                              ; preds = %168, %108
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #7
  br label %170

170:                                              ; preds = %169, %104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #7
  br label %173

171:                                              ; preds = %85, %38, %31
  %172 = load i64, i64* %3, align 8
  ret i64 %172

173:                                              ; preds = %170, %48
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = insertvalue { i8*, i32 } undef, i8* %174, 0
  %177 = insertvalue { i8*, i32 } %176, i32 %175, 1
  resume { i8*, i32 } %177
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) #3

; Function Attrs: noinline norecurse uwtable
define dso_local noundef i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__new_allocator"*, align 8
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::__new_allocator"*, align 8
  %6 = alloca %"class.std::__new_allocator"*, align 8
  %7 = alloca %"class.std::__new_allocator"*, align 8
  %8 = alloca %"class.std::__new_allocator"*, align 8
  %9 = alloca %"class.std::__new_allocator"*, align 8
  %10 = alloca %"class.std::__new_allocator"*, align 8
  %11 = alloca %"class.std::__new_allocator"*, align 8
  %12 = alloca %"class.std::__new_allocator"*, align 8
  %13 = alloca %"class.std::__new_allocator"*, align 8
  %14 = alloca %"class.std::__new_allocator"*, align 8
  %15 = alloca %"class.std::allocator"*, align 8
  %16 = alloca %"class.std::allocator"*, align 8
  %17 = alloca %"class.std::allocator"*, align 8
  %18 = alloca %"class.std::allocator"*, align 8
  %19 = alloca %"class.std::allocator"*, align 8
  %20 = alloca %"class.std::allocator"*, align 8
  %21 = alloca %"class.std::allocator"*, align 8
  %22 = alloca %"class.std::allocator"*, align 8
  %23 = alloca %"class.std::allocator"*, align 8
  %24 = alloca %"class.std::allocator"*, align 8
  %25 = alloca %"class.std::allocator"*, align 8
  %26 = alloca %"class.std::allocator"*, align 8
  %27 = alloca %"class.std::allocator"*, align 8
  %28 = alloca %"class.std::allocator"*, align 8
  %29 = alloca %"class.std::allocator"*, align 8
  %30 = alloca %"class.std::allocator"*, align 8
  %31 = alloca %"class.std::allocator"*, align 8
  %32 = alloca %"class.std::allocator"*, align 8
  %33 = alloca %"class.std::allocator"*, align 8
  %34 = alloca %"class.std::allocator"*, align 8
  %35 = alloca %"class.std::allocator"*, align 8
  %36 = alloca %"class.std::allocator"*, align 8
  %37 = alloca %"class.std::allocator"*, align 8
  %38 = alloca %"class.std::allocator"*, align 8
  %39 = alloca %"class.std::allocator"*, align 8
  %40 = alloca %"class.std::allocator"*, align 8
  %41 = alloca %"class.std::allocator"*, align 8
  %42 = alloca %"class.std::allocator"*, align 8
  %43 = alloca %"class.std::allocator"*, align 8
  %44 = alloca %"class.std::allocator"*, align 8
  %45 = alloca %"class.std::allocator"*, align 8
  %46 = alloca %"class.std::allocator"*, align 8
  %47 = alloca %"class.std::allocator"*, align 8
  %48 = alloca %"class.std::allocator"*, align 8
  %49 = alloca %"class.std::allocator"*, align 8
  %50 = alloca %"class.std::allocator"*, align 8
  %51 = alloca %"class.std::allocator"*, align 8
  %52 = alloca %"class.std::allocator"*, align 8
  %53 = alloca %"class.std::allocator"*, align 8
  %54 = alloca %"class.std::allocator"*, align 8
  %55 = alloca %"class.std::allocator"*, align 8
  %56 = alloca %"class.std::allocator"*, align 8
  %57 = alloca %"class.std::__cxx11::basic_string", align 8
  %58 = alloca %"class.std::allocator", align 1
  %59 = alloca i8*, align 8
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
  store %"class.std::allocator"* %58, %"class.std::allocator"** %56, align 8
  %87 = load %"class.std::allocator"*, %"class.std::allocator"** %56, align 8
  %88 = bitcast %"class.std::allocator"* %87 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %88, %"class.std::__new_allocator"** %1, align 8
  %89 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %1, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %57, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %58)
          to label %90 unwind label %199

90:                                               ; preds = %0
  store %"class.std::allocator"* %62, %"class.std::allocator"** %55, align 8
  %91 = load %"class.std::allocator"*, %"class.std::allocator"** %55, align 8
  %92 = bitcast %"class.std::allocator"* %91 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %92, %"class.std::__new_allocator"** %2, align 8
  %93 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %61, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62)
          to label %94 unwind label %203

94:                                               ; preds = %90
  %95 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %57, %"class.std::__cxx11::basic_string"* noundef %61)
          to label %96 unwind label %207

96:                                               ; preds = %94
  %97 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %95)
          to label %98 unwind label %207

98:                                               ; preds = %96
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %61) #7
  store %"class.std::allocator"* %62, %"class.std::allocator"** %42, align 8
  %99 = load %"class.std::allocator"*, %"class.std::allocator"** %42, align 8
  %100 = bitcast %"class.std::allocator"* %99 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %100) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %57) #7
  store %"class.std::allocator"* %58, %"class.std::allocator"** %40, align 8
  %101 = load %"class.std::allocator"*, %"class.std::allocator"** %40, align 8
  %102 = bitcast %"class.std::allocator"* %101 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %102) #7
  store %"class.std::allocator"* %64, %"class.std::allocator"** %54, align 8
  %103 = load %"class.std::allocator"*, %"class.std::allocator"** %54, align 8
  %104 = bitcast %"class.std::allocator"* %103 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %104, %"class.std::__new_allocator"** %3, align 8
  %105 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %64)
          to label %106 unwind label %217

106:                                              ; preds = %98
  store %"class.std::allocator"* %66, %"class.std::allocator"** %53, align 8
  %107 = load %"class.std::allocator"*, %"class.std::allocator"** %53, align 8
  %108 = bitcast %"class.std::allocator"* %107 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %108, %"class.std::__new_allocator"** %4, align 8
  %109 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %65, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %66)
          to label %110 unwind label %221

110:                                              ; preds = %106
  %111 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %63, %"class.std::__cxx11::basic_string"* noundef %65)
          to label %112 unwind label %225

112:                                              ; preds = %110
  %113 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %111)
          to label %114 unwind label %225

114:                                              ; preds = %112
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %65) #7
  store %"class.std::allocator"* %66, %"class.std::allocator"** %38, align 8
  %115 = load %"class.std::allocator"*, %"class.std::allocator"** %38, align 8
  %116 = bitcast %"class.std::allocator"* %115 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %116) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %63) #7
  store %"class.std::allocator"* %64, %"class.std::allocator"** %36, align 8
  %117 = load %"class.std::allocator"*, %"class.std::allocator"** %36, align 8
  %118 = bitcast %"class.std::allocator"* %117 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %118) #7
  store %"class.std::allocator"* %68, %"class.std::allocator"** %52, align 8
  %119 = load %"class.std::allocator"*, %"class.std::allocator"** %52, align 8
  %120 = bitcast %"class.std::allocator"* %119 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %120, %"class.std::__new_allocator"** %5, align 8
  %121 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %5, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %67, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %68)
          to label %122 unwind label %235

122:                                              ; preds = %114
  store %"class.std::allocator"* %70, %"class.std::allocator"** %51, align 8
  %123 = load %"class.std::allocator"*, %"class.std::allocator"** %51, align 8
  %124 = bitcast %"class.std::allocator"* %123 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %124, %"class.std::__new_allocator"** %6, align 8
  %125 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %6, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %69, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %70)
          to label %126 unwind label %239

126:                                              ; preds = %122
  %127 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %67, %"class.std::__cxx11::basic_string"* noundef %69)
          to label %128 unwind label %243

128:                                              ; preds = %126
  %129 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %127)
          to label %130 unwind label %243

130:                                              ; preds = %128
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %69) #7
  store %"class.std::allocator"* %70, %"class.std::allocator"** %34, align 8
  %131 = load %"class.std::allocator"*, %"class.std::allocator"** %34, align 8
  %132 = bitcast %"class.std::allocator"* %131 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %132) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %67) #7
  store %"class.std::allocator"* %68, %"class.std::allocator"** %32, align 8
  %133 = load %"class.std::allocator"*, %"class.std::allocator"** %32, align 8
  %134 = bitcast %"class.std::allocator"* %133 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %134) #7
  store %"class.std::allocator"* %72, %"class.std::allocator"** %50, align 8
  %135 = load %"class.std::allocator"*, %"class.std::allocator"** %50, align 8
  %136 = bitcast %"class.std::allocator"* %135 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %136, %"class.std::__new_allocator"** %7, align 8
  %137 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %7, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %71, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %72)
          to label %138 unwind label %253

138:                                              ; preds = %130
  store %"class.std::allocator"* %74, %"class.std::allocator"** %49, align 8
  %139 = load %"class.std::allocator"*, %"class.std::allocator"** %49, align 8
  %140 = bitcast %"class.std::allocator"* %139 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %140, %"class.std::__new_allocator"** %8, align 8
  %141 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %8, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %73, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %74)
          to label %142 unwind label %257

142:                                              ; preds = %138
  %143 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %71, %"class.std::__cxx11::basic_string"* noundef %73)
          to label %144 unwind label %261

144:                                              ; preds = %142
  %145 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %143)
          to label %146 unwind label %261

146:                                              ; preds = %144
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %73) #7
  store %"class.std::allocator"* %74, %"class.std::allocator"** %30, align 8
  %147 = load %"class.std::allocator"*, %"class.std::allocator"** %30, align 8
  %148 = bitcast %"class.std::allocator"* %147 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %148) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %71) #7
  store %"class.std::allocator"* %72, %"class.std::allocator"** %28, align 8
  %149 = load %"class.std::allocator"*, %"class.std::allocator"** %28, align 8
  %150 = bitcast %"class.std::allocator"* %149 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %150) #7
  store %"class.std::allocator"* %76, %"class.std::allocator"** %48, align 8
  %151 = load %"class.std::allocator"*, %"class.std::allocator"** %48, align 8
  %152 = bitcast %"class.std::allocator"* %151 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %152, %"class.std::__new_allocator"** %9, align 8
  %153 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %9, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %75, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %76)
          to label %154 unwind label %271

154:                                              ; preds = %146
  store %"class.std::allocator"* %78, %"class.std::allocator"** %47, align 8
  %155 = load %"class.std::allocator"*, %"class.std::allocator"** %47, align 8
  %156 = bitcast %"class.std::allocator"* %155 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %156, %"class.std::__new_allocator"** %10, align 8
  %157 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %10, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %77, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %78)
          to label %158 unwind label %275

158:                                              ; preds = %154
  %159 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %75, %"class.std::__cxx11::basic_string"* noundef %77)
          to label %160 unwind label %279

160:                                              ; preds = %158
  %161 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %159)
          to label %162 unwind label %279

162:                                              ; preds = %160
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %77) #7
  store %"class.std::allocator"* %78, %"class.std::allocator"** %26, align 8
  %163 = load %"class.std::allocator"*, %"class.std::allocator"** %26, align 8
  %164 = bitcast %"class.std::allocator"* %163 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %164) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %75) #7
  store %"class.std::allocator"* %76, %"class.std::allocator"** %24, align 8
  %165 = load %"class.std::allocator"*, %"class.std::allocator"** %24, align 8
  %166 = bitcast %"class.std::allocator"* %165 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %166) #7
  store %"class.std::allocator"* %80, %"class.std::allocator"** %46, align 8
  %167 = load %"class.std::allocator"*, %"class.std::allocator"** %46, align 8
  %168 = bitcast %"class.std::allocator"* %167 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %168, %"class.std::__new_allocator"** %11, align 8
  %169 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %11, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %80)
          to label %170 unwind label %289

170:                                              ; preds = %162
  store %"class.std::allocator"* %82, %"class.std::allocator"** %45, align 8
  %171 = load %"class.std::allocator"*, %"class.std::allocator"** %45, align 8
  %172 = bitcast %"class.std::allocator"* %171 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %172, %"class.std::__new_allocator"** %12, align 8
  %173 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %12, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %81, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %82)
          to label %174 unwind label %293

174:                                              ; preds = %170
  %175 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %79, %"class.std::__cxx11::basic_string"* noundef %81)
          to label %176 unwind label %297

176:                                              ; preds = %174
  %177 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %175)
          to label %178 unwind label %297

178:                                              ; preds = %176
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %81) #7
  store %"class.std::allocator"* %82, %"class.std::allocator"** %22, align 8
  %179 = load %"class.std::allocator"*, %"class.std::allocator"** %22, align 8
  %180 = bitcast %"class.std::allocator"* %179 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %180) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %79) #7
  store %"class.std::allocator"* %80, %"class.std::allocator"** %20, align 8
  %181 = load %"class.std::allocator"*, %"class.std::allocator"** %20, align 8
  %182 = bitcast %"class.std::allocator"* %181 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %182) #7
  store %"class.std::allocator"* %84, %"class.std::allocator"** %44, align 8
  %183 = load %"class.std::allocator"*, %"class.std::allocator"** %44, align 8
  %184 = bitcast %"class.std::allocator"* %183 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %184, %"class.std::__new_allocator"** %13, align 8
  %185 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %13, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %83, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %84)
          to label %186 unwind label %307

186:                                              ; preds = %178
  store %"class.std::allocator"* %86, %"class.std::allocator"** %43, align 8
  %187 = load %"class.std::allocator"*, %"class.std::allocator"** %43, align 8
  %188 = bitcast %"class.std::allocator"* %187 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %188, %"class.std::__new_allocator"** %14, align 8
  %189 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %14, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %85, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %86)
          to label %190 unwind label %311

190:                                              ; preds = %186
  %191 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %83, %"class.std::__cxx11::basic_string"* noundef %85)
          to label %192 unwind label %315

192:                                              ; preds = %190
  %193 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %191)
          to label %194 unwind label %315

194:                                              ; preds = %192
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %85) #7
  store %"class.std::allocator"* %86, %"class.std::allocator"** %18, align 8
  %195 = load %"class.std::allocator"*, %"class.std::allocator"** %18, align 8
  %196 = bitcast %"class.std::allocator"* %195 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %196) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %83) #7
  store %"class.std::allocator"* %84, %"class.std::allocator"** %16, align 8
  %197 = load %"class.std::allocator"*, %"class.std::allocator"** %16, align 8
  %198 = bitcast %"class.std::allocator"* %197 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %198) #7
  ret i32 0

199:                                              ; preds = %0
  %200 = landingpad { i8*, i32 }
          cleanup
  %201 = extractvalue { i8*, i32 } %200, 0
  store i8* %201, i8** %59, align 8
  %202 = extractvalue { i8*, i32 } %200, 1
  store i32 %202, i32* %60, align 4
  br label %214

203:                                              ; preds = %90
  %204 = landingpad { i8*, i32 }
          cleanup
  %205 = extractvalue { i8*, i32 } %204, 0
  store i8* %205, i8** %59, align 8
  %206 = extractvalue { i8*, i32 } %204, 1
  store i32 %206, i32* %60, align 4
  br label %211

207:                                              ; preds = %96, %94
  %208 = landingpad { i8*, i32 }
          cleanup
  %209 = extractvalue { i8*, i32 } %208, 0
  store i8* %209, i8** %59, align 8
  %210 = extractvalue { i8*, i32 } %208, 1
  store i32 %210, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %61) #7
  br label %211

211:                                              ; preds = %207, %203
  store %"class.std::allocator"* %62, %"class.std::allocator"** %41, align 8
  %212 = load %"class.std::allocator"*, %"class.std::allocator"** %41, align 8
  %213 = bitcast %"class.std::allocator"* %212 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %213) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %57) #7
  br label %214

214:                                              ; preds = %211, %199
  store %"class.std::allocator"* %58, %"class.std::allocator"** %39, align 8
  %215 = load %"class.std::allocator"*, %"class.std::allocator"** %39, align 8
  %216 = bitcast %"class.std::allocator"* %215 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %216) #7
  br label %325

217:                                              ; preds = %98
  %218 = landingpad { i8*, i32 }
          cleanup
  %219 = extractvalue { i8*, i32 } %218, 0
  store i8* %219, i8** %59, align 8
  %220 = extractvalue { i8*, i32 } %218, 1
  store i32 %220, i32* %60, align 4
  br label %232

221:                                              ; preds = %106
  %222 = landingpad { i8*, i32 }
          cleanup
  %223 = extractvalue { i8*, i32 } %222, 0
  store i8* %223, i8** %59, align 8
  %224 = extractvalue { i8*, i32 } %222, 1
  store i32 %224, i32* %60, align 4
  br label %229

225:                                              ; preds = %112, %110
  %226 = landingpad { i8*, i32 }
          cleanup
  %227 = extractvalue { i8*, i32 } %226, 0
  store i8* %227, i8** %59, align 8
  %228 = extractvalue { i8*, i32 } %226, 1
  store i32 %228, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %65) #7
  br label %229

229:                                              ; preds = %225, %221
  store %"class.std::allocator"* %66, %"class.std::allocator"** %37, align 8
  %230 = load %"class.std::allocator"*, %"class.std::allocator"** %37, align 8
  %231 = bitcast %"class.std::allocator"* %230 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %231) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %63) #7
  br label %232

232:                                              ; preds = %229, %217
  store %"class.std::allocator"* %64, %"class.std::allocator"** %35, align 8
  %233 = load %"class.std::allocator"*, %"class.std::allocator"** %35, align 8
  %234 = bitcast %"class.std::allocator"* %233 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %234) #7
  br label %325

235:                                              ; preds = %114
  %236 = landingpad { i8*, i32 }
          cleanup
  %237 = extractvalue { i8*, i32 } %236, 0
  store i8* %237, i8** %59, align 8
  %238 = extractvalue { i8*, i32 } %236, 1
  store i32 %238, i32* %60, align 4
  br label %250

239:                                              ; preds = %122
  %240 = landingpad { i8*, i32 }
          cleanup
  %241 = extractvalue { i8*, i32 } %240, 0
  store i8* %241, i8** %59, align 8
  %242 = extractvalue { i8*, i32 } %240, 1
  store i32 %242, i32* %60, align 4
  br label %247

243:                                              ; preds = %128, %126
  %244 = landingpad { i8*, i32 }
          cleanup
  %245 = extractvalue { i8*, i32 } %244, 0
  store i8* %245, i8** %59, align 8
  %246 = extractvalue { i8*, i32 } %244, 1
  store i32 %246, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %69) #7
  br label %247

247:                                              ; preds = %243, %239
  store %"class.std::allocator"* %70, %"class.std::allocator"** %33, align 8
  %248 = load %"class.std::allocator"*, %"class.std::allocator"** %33, align 8
  %249 = bitcast %"class.std::allocator"* %248 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %249) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %67) #7
  br label %250

250:                                              ; preds = %247, %235
  store %"class.std::allocator"* %68, %"class.std::allocator"** %31, align 8
  %251 = load %"class.std::allocator"*, %"class.std::allocator"** %31, align 8
  %252 = bitcast %"class.std::allocator"* %251 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %252) #7
  br label %325

253:                                              ; preds = %130
  %254 = landingpad { i8*, i32 }
          cleanup
  %255 = extractvalue { i8*, i32 } %254, 0
  store i8* %255, i8** %59, align 8
  %256 = extractvalue { i8*, i32 } %254, 1
  store i32 %256, i32* %60, align 4
  br label %268

257:                                              ; preds = %138
  %258 = landingpad { i8*, i32 }
          cleanup
  %259 = extractvalue { i8*, i32 } %258, 0
  store i8* %259, i8** %59, align 8
  %260 = extractvalue { i8*, i32 } %258, 1
  store i32 %260, i32* %60, align 4
  br label %265

261:                                              ; preds = %144, %142
  %262 = landingpad { i8*, i32 }
          cleanup
  %263 = extractvalue { i8*, i32 } %262, 0
  store i8* %263, i8** %59, align 8
  %264 = extractvalue { i8*, i32 } %262, 1
  store i32 %264, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %73) #7
  br label %265

265:                                              ; preds = %261, %257
  store %"class.std::allocator"* %74, %"class.std::allocator"** %29, align 8
  %266 = load %"class.std::allocator"*, %"class.std::allocator"** %29, align 8
  %267 = bitcast %"class.std::allocator"* %266 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %267) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %71) #7
  br label %268

268:                                              ; preds = %265, %253
  store %"class.std::allocator"* %72, %"class.std::allocator"** %27, align 8
  %269 = load %"class.std::allocator"*, %"class.std::allocator"** %27, align 8
  %270 = bitcast %"class.std::allocator"* %269 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %270) #7
  br label %325

271:                                              ; preds = %146
  %272 = landingpad { i8*, i32 }
          cleanup
  %273 = extractvalue { i8*, i32 } %272, 0
  store i8* %273, i8** %59, align 8
  %274 = extractvalue { i8*, i32 } %272, 1
  store i32 %274, i32* %60, align 4
  br label %286

275:                                              ; preds = %154
  %276 = landingpad { i8*, i32 }
          cleanup
  %277 = extractvalue { i8*, i32 } %276, 0
  store i8* %277, i8** %59, align 8
  %278 = extractvalue { i8*, i32 } %276, 1
  store i32 %278, i32* %60, align 4
  br label %283

279:                                              ; preds = %160, %158
  %280 = landingpad { i8*, i32 }
          cleanup
  %281 = extractvalue { i8*, i32 } %280, 0
  store i8* %281, i8** %59, align 8
  %282 = extractvalue { i8*, i32 } %280, 1
  store i32 %282, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %77) #7
  br label %283

283:                                              ; preds = %279, %275
  store %"class.std::allocator"* %78, %"class.std::allocator"** %25, align 8
  %284 = load %"class.std::allocator"*, %"class.std::allocator"** %25, align 8
  %285 = bitcast %"class.std::allocator"* %284 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %285) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %75) #7
  br label %286

286:                                              ; preds = %283, %271
  store %"class.std::allocator"* %76, %"class.std::allocator"** %23, align 8
  %287 = load %"class.std::allocator"*, %"class.std::allocator"** %23, align 8
  %288 = bitcast %"class.std::allocator"* %287 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %288) #7
  br label %325

289:                                              ; preds = %162
  %290 = landingpad { i8*, i32 }
          cleanup
  %291 = extractvalue { i8*, i32 } %290, 0
  store i8* %291, i8** %59, align 8
  %292 = extractvalue { i8*, i32 } %290, 1
  store i32 %292, i32* %60, align 4
  br label %304

293:                                              ; preds = %170
  %294 = landingpad { i8*, i32 }
          cleanup
  %295 = extractvalue { i8*, i32 } %294, 0
  store i8* %295, i8** %59, align 8
  %296 = extractvalue { i8*, i32 } %294, 1
  store i32 %296, i32* %60, align 4
  br label %301

297:                                              ; preds = %176, %174
  %298 = landingpad { i8*, i32 }
          cleanup
  %299 = extractvalue { i8*, i32 } %298, 0
  store i8* %299, i8** %59, align 8
  %300 = extractvalue { i8*, i32 } %298, 1
  store i32 %300, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %81) #7
  br label %301

301:                                              ; preds = %297, %293
  store %"class.std::allocator"* %82, %"class.std::allocator"** %21, align 8
  %302 = load %"class.std::allocator"*, %"class.std::allocator"** %21, align 8
  %303 = bitcast %"class.std::allocator"* %302 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %303) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %79) #7
  br label %304

304:                                              ; preds = %301, %289
  store %"class.std::allocator"* %80, %"class.std::allocator"** %19, align 8
  %305 = load %"class.std::allocator"*, %"class.std::allocator"** %19, align 8
  %306 = bitcast %"class.std::allocator"* %305 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %306) #7
  br label %325

307:                                              ; preds = %178
  %308 = landingpad { i8*, i32 }
          cleanup
  %309 = extractvalue { i8*, i32 } %308, 0
  store i8* %309, i8** %59, align 8
  %310 = extractvalue { i8*, i32 } %308, 1
  store i32 %310, i32* %60, align 4
  br label %322

311:                                              ; preds = %186
  %312 = landingpad { i8*, i32 }
          cleanup
  %313 = extractvalue { i8*, i32 } %312, 0
  store i8* %313, i8** %59, align 8
  %314 = extractvalue { i8*, i32 } %312, 1
  store i32 %314, i32* %60, align 4
  br label %319

315:                                              ; preds = %192, %190
  %316 = landingpad { i8*, i32 }
          cleanup
  %317 = extractvalue { i8*, i32 } %316, 0
  store i8* %317, i8** %59, align 8
  %318 = extractvalue { i8*, i32 } %316, 1
  store i32 %318, i32* %60, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %85) #7
  br label %319

319:                                              ; preds = %315, %311
  store %"class.std::allocator"* %86, %"class.std::allocator"** %17, align 8
  %320 = load %"class.std::allocator"*, %"class.std::allocator"** %17, align 8
  %321 = bitcast %"class.std::allocator"* %320 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %321) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %83) #7
  br label %322

322:                                              ; preds = %319, %307
  store %"class.std::allocator"* %84, %"class.std::allocator"** %15, align 8
  %323 = load %"class.std::allocator"*, %"class.std::allocator"** %15, align 8
  %324 = bitcast %"class.std::allocator"* %323 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %324) #7
  br label %325

325:                                              ; preds = %322, %304, %286, %268, %250, %232, %214
  %326 = load i8*, i8** %59, align 8
  %327 = load i32, i32* %60, align 4
  %328 = insertvalue { i8*, i32 } undef, i8* %326, 0
  %329 = insertvalue { i8*, i32 } %328, i32 %327, 1
  resume { i8*, i32 } %329
}

declare i32 @printf(i8* noundef, ...) #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %2, align 8
  %3 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #2 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::__new_allocator"*, align 8
  %8 = alloca %"class.std::__new_allocator"*, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  %10 = alloca %"class.std::allocator"*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %"class.std::allocator"*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %"class.std::allocator"*, align 8
  %15 = alloca %"class.std::allocator"*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %"class.std::allocator"*, align 8
  %22 = alloca i1, align 1
  %23 = alloca %"class.std::allocator", align 1
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %26, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i64 %2, i64* %18, align 8
  store i8* %3, i8** %19, align 8
  store i64 %4, i64* %20, align 8
  store %"class.std::allocator"* %5, %"class.std::allocator"** %21, align 8
  store i1 false, i1* %22, align 1
  %27 = load %"class.std::allocator"*, %"class.std::allocator"** %21, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %28 = bitcast %"class.std::allocator"* %23 to i8*
  store i8* %28, i8** %13, align 8, !noalias !10
  store %"class.std::allocator"* %27, %"class.std::allocator"** %14, align 8, !noalias !10
  %29 = load %"class.std::allocator"*, %"class.std::allocator"** %14, align 8, !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %30 = bitcast %"class.std::allocator"* %23 to i8*
  store i8* %30, i8** %11, align 8, !noalias !13
  store %"class.std::allocator"* %29, %"class.std::allocator"** %12, align 8, !noalias !13
  %31 = load %"class.std::allocator"*, %"class.std::allocator"** %12, align 8, !noalias !13
  store %"class.std::allocator"* %23, %"class.std::allocator"** %9, align 8
  store %"class.std::allocator"* %31, %"class.std::allocator"** %10, align 8
  %32 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  %33 = bitcast %"class.std::allocator"* %32 to %"class.std::__new_allocator"*
  %34 = load %"class.std::allocator"*, %"class.std::allocator"** %10, align 8
  %35 = bitcast %"class.std::allocator"* %34 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %33, %"class.std::__new_allocator"** %7, align 8
  store %"class.std::__new_allocator"* %35, %"class.std::__new_allocator"** %8, align 8
  %36 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23) #7
  store %"class.std::allocator"* %23, %"class.std::allocator"** %15, align 8
  %37 = load %"class.std::allocator"*, %"class.std::allocator"** %15, align 8
  %38 = bitcast %"class.std::allocator"* %37 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %38) #7
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* %20, align 8
  %41 = add i64 %39, %40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %41)
          to label %42 unwind label %52

42:                                               ; preds = %6
  %43 = load i8*, i8** %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %43, i64 noundef %44)
          to label %46 unwind label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** %19, align 8
  %48 = load i64, i64* %20, align 8
  %49 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %47, i64 noundef %48)
          to label %50 unwind label %52

50:                                               ; preds = %46
  store i1 true, i1* %22, align 1
  %51 = load i1, i1* %22, align 1
  br i1 %51, label %57, label %56

52:                                               ; preds = %46, %42, %6
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  store i8* %54, i8** %24, align 8
  %55 = extractvalue { i8*, i32 } %53, 1
  store i32 %55, i32* %25, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #7
  br label %58

56:                                               ; preds = %50
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #7
  br label %57

57:                                               ; preds = %56, %50
  ret void

58:                                               ; preds = %52
  %59 = load i8*, i8** %24, align 8
  %60 = load i32, i32* %25, align 4
  %61 = insertvalue { i8*, i32 } undef, i8* %59, 0
  %62 = insertvalue { i8*, i32 } %61, i32 %60, 1
  resume { i8*, i32 } %62
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(%"class.std::allocator"* sret(%"class.std::allocator") align 1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #3

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind }

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
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_: argument 0"}
!12 = distinct !{!12, !"_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_: argument 0"}
!15 = distinct !{!15, !"_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_"}
