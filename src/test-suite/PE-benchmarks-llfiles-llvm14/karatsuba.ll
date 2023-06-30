; ModuleID = 'PE-benchmarks/karatsuba.cpp'
source_filename = "PE-benchmarks/karatsuba.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1100\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1010\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"110\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"111\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_karatsuba.cpp, i8* null }]

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
define dso_local noundef i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #4 {
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
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #3
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
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
  %31 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %30, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
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
  %51 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %50, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
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
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #4 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca i1, align 1
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %13, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  store i1 false, i1* %7, align 1
  %14 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %8, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9)
          to label %15 unwind label %28

15:                                               ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #3
  %16 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %17 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #3
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = add i64 %18, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %19)
          to label %20 unwind label %32

20:                                               ; preds = %15
  %21 = load i8, i8* %5, align 1
  %22 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext %21)
          to label %23 unwind label %32

23:                                               ; preds = %20
  %24 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24)
          to label %26 unwind label %32

26:                                               ; preds = %23
  store i1 true, i1* %7, align 1
  %27 = load i1, i1* %7, align 1
  br i1 %27, label %37, label %36

28:                                               ; preds = %3
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %10, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %11, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #3
  br label %38

32:                                               ; preds = %23, %20, %15
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %10, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %11, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  br label %38

36:                                               ; preds = %26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  br label %37

37:                                               ; preds = %36, %26
  ret void

38:                                               ; preds = %32, %28
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = insertvalue { i8*, i32 } undef, i8* %39, 0
  %42 = insertvalue { i8*, i32 } %41, i32 %40, 1
  resume { i8*, i32 } %42
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
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
  %48 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
  br label %77

67:                                               ; preds = %21
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %15, i8 noundef signext 49, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
          to label %71 unwind label %63

71:                                               ; preds = %70
  %72 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  br label %73

73:                                               ; preds = %71, %67
  store i1 true, i1* %5, align 1
  %74 = load i1, i1* %5, align 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #3
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
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) #4 {
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

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #3
  br label %48

48:                                               ; preds = %44, %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %26) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %22) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #3
  br label %128

128:                                              ; preds = %124, %120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #3
  br label %137

137:                                              ; preds = %133, %129
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #3
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #3
  br label %162

162:                                              ; preds = %158, %154
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #3
  br label %163

163:                                              ; preds = %162, %150
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %26) #3
  br label %164

164:                                              ; preds = %163, %146
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %22) #3
  br label %165

165:                                              ; preds = %164, %142
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24) #3
  br label %166

166:                                              ; preds = %165, %138
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23) #3
  br label %167

167:                                              ; preds = %166, %137, %128, %116
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #3
  br label %168

168:                                              ; preds = %167, %112
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #3
  br label %169

169:                                              ; preds = %168, %108
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #3
  br label %170

170:                                              ; preds = %169, %104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
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

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator", align 1
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::allocator", align 1
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::allocator", align 1
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::allocator", align 1
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::allocator", align 1
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::allocator", align 1
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::allocator", align 1
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::allocator", align 1
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::allocator", align 1
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::allocator", align 1
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2)
          to label %31 unwind label %73

31:                                               ; preds = %0
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6)
          to label %32 unwind label %77

32:                                               ; preds = %31
  %33 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %5)
          to label %34 unwind label %81

34:                                               ; preds = %32
  %35 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %33)
          to label %36 unwind label %81

36:                                               ; preds = %34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8)
          to label %37 unwind label %87

37:                                               ; preds = %36
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10)
          to label %38 unwind label %91

38:                                               ; preds = %37
  %39 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %7, %"class.std::__cxx11::basic_string"* noundef %9)
          to label %40 unwind label %95

40:                                               ; preds = %38
  %41 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %39)
          to label %42 unwind label %95

42:                                               ; preds = %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12)
          to label %43 unwind label %101

43:                                               ; preds = %42
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14)
          to label %44 unwind label %105

44:                                               ; preds = %43
  %45 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %11, %"class.std::__cxx11::basic_string"* noundef %13)
          to label %46 unwind label %109

46:                                               ; preds = %44
  %47 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %45)
          to label %48 unwind label %109

48:                                               ; preds = %46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16)
          to label %49 unwind label %115

49:                                               ; preds = %48
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18)
          to label %50 unwind label %119

50:                                               ; preds = %49
  %51 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %15, %"class.std::__cxx11::basic_string"* noundef %17)
          to label %52 unwind label %123

52:                                               ; preds = %50
  %53 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %51)
          to label %54 unwind label %123

54:                                               ; preds = %52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20)
          to label %55 unwind label %129

55:                                               ; preds = %54
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22)
          to label %56 unwind label %133

56:                                               ; preds = %55
  %57 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %19, %"class.std::__cxx11::basic_string"* noundef %21)
          to label %58 unwind label %137

58:                                               ; preds = %56
  %59 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %57)
          to label %60 unwind label %137

60:                                               ; preds = %58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %21) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %24) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %24)
          to label %61 unwind label %143

61:                                               ; preds = %60
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %26) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %26)
          to label %62 unwind label %147

62:                                               ; preds = %61
  %63 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %23, %"class.std::__cxx11::basic_string"* noundef %25)
          to label %64 unwind label %151

64:                                               ; preds = %62
  %65 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %63)
          to label %66 unwind label %151

66:                                               ; preds = %64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %26) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %24) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %28) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %28)
          to label %67 unwind label %157

67:                                               ; preds = %66
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %30) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %30)
          to label %68 unwind label %161

68:                                               ; preds = %67
  %69 = invoke noundef i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %27, %"class.std::__cxx11::basic_string"* noundef %29)
          to label %70 unwind label %165

70:                                               ; preds = %68
  %71 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 noundef %69)
          to label %72 unwind label %165

72:                                               ; preds = %70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %30) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %28) #3
  ret i32 0

73:                                               ; preds = %0
  %74 = landingpad { i8*, i32 }
          cleanup
  %75 = extractvalue { i8*, i32 } %74, 0
  store i8* %75, i8** %3, align 8
  %76 = extractvalue { i8*, i32 } %74, 1
  store i32 %76, i32* %4, align 4
  br label %86

77:                                               ; preds = %31
  %78 = landingpad { i8*, i32 }
          cleanup
  %79 = extractvalue { i8*, i32 } %78, 0
  store i8* %79, i8** %3, align 8
  %80 = extractvalue { i8*, i32 } %78, 1
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %34, %32
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  store i8* %83, i8** %3, align 8
  %84 = extractvalue { i8*, i32 } %82, 1
  store i32 %84, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  br label %85

85:                                               ; preds = %81, %77
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #3
  br label %86

86:                                               ; preds = %85, %73
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #3
  br label %171

87:                                               ; preds = %36
  %88 = landingpad { i8*, i32 }
          cleanup
  %89 = extractvalue { i8*, i32 } %88, 0
  store i8* %89, i8** %3, align 8
  %90 = extractvalue { i8*, i32 } %88, 1
  store i32 %90, i32* %4, align 4
  br label %100

91:                                               ; preds = %37
  %92 = landingpad { i8*, i32 }
          cleanup
  %93 = extractvalue { i8*, i32 } %92, 0
  store i8* %93, i8** %3, align 8
  %94 = extractvalue { i8*, i32 } %92, 1
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %40, %38
  %96 = landingpad { i8*, i32 }
          cleanup
  %97 = extractvalue { i8*, i32 } %96, 0
  store i8* %97, i8** %3, align 8
  %98 = extractvalue { i8*, i32 } %96, 1
  store i32 %98, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
  br label %99

99:                                               ; preds = %95, %91
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  br label %100

100:                                              ; preds = %99, %87
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8) #3
  br label %171

101:                                              ; preds = %42
  %102 = landingpad { i8*, i32 }
          cleanup
  %103 = extractvalue { i8*, i32 } %102, 0
  store i8* %103, i8** %3, align 8
  %104 = extractvalue { i8*, i32 } %102, 1
  store i32 %104, i32* %4, align 4
  br label %114

105:                                              ; preds = %43
  %106 = landingpad { i8*, i32 }
          cleanup
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %3, align 8
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %4, align 4
  br label %113

109:                                              ; preds = %46, %44
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  store i8* %111, i8** %3, align 8
  %112 = extractvalue { i8*, i32 } %110, 1
  store i32 %112, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #3
  br label %113

113:                                              ; preds = %109, %105
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  br label %114

114:                                              ; preds = %113, %101
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #3
  br label %171

115:                                              ; preds = %48
  %116 = landingpad { i8*, i32 }
          cleanup
  %117 = extractvalue { i8*, i32 } %116, 0
  store i8* %117, i8** %3, align 8
  %118 = extractvalue { i8*, i32 } %116, 1
  store i32 %118, i32* %4, align 4
  br label %128

119:                                              ; preds = %49
  %120 = landingpad { i8*, i32 }
          cleanup
  %121 = extractvalue { i8*, i32 } %120, 0
  store i8* %121, i8** %3, align 8
  %122 = extractvalue { i8*, i32 } %120, 1
  store i32 %122, i32* %4, align 4
  br label %127

123:                                              ; preds = %52, %50
  %124 = landingpad { i8*, i32 }
          cleanup
  %125 = extractvalue { i8*, i32 } %124, 0
  store i8* %125, i8** %3, align 8
  %126 = extractvalue { i8*, i32 } %124, 1
  store i32 %126, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #3
  br label %127

127:                                              ; preds = %123, %119
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #3
  br label %128

128:                                              ; preds = %127, %115
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16) #3
  br label %171

129:                                              ; preds = %54
  %130 = landingpad { i8*, i32 }
          cleanup
  %131 = extractvalue { i8*, i32 } %130, 0
  store i8* %131, i8** %3, align 8
  %132 = extractvalue { i8*, i32 } %130, 1
  store i32 %132, i32* %4, align 4
  br label %142

133:                                              ; preds = %55
  %134 = landingpad { i8*, i32 }
          cleanup
  %135 = extractvalue { i8*, i32 } %134, 0
  store i8* %135, i8** %3, align 8
  %136 = extractvalue { i8*, i32 } %134, 1
  store i32 %136, i32* %4, align 4
  br label %141

137:                                              ; preds = %58, %56
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = extractvalue { i8*, i32 } %138, 0
  store i8* %139, i8** %3, align 8
  %140 = extractvalue { i8*, i32 } %138, 1
  store i32 %140, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %21) #3
  br label %141

141:                                              ; preds = %137, %133
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #3
  br label %142

142:                                              ; preds = %141, %129
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %20) #3
  br label %171

143:                                              ; preds = %60
  %144 = landingpad { i8*, i32 }
          cleanup
  %145 = extractvalue { i8*, i32 } %144, 0
  store i8* %145, i8** %3, align 8
  %146 = extractvalue { i8*, i32 } %144, 1
  store i32 %146, i32* %4, align 4
  br label %156

147:                                              ; preds = %61
  %148 = landingpad { i8*, i32 }
          cleanup
  %149 = extractvalue { i8*, i32 } %148, 0
  store i8* %149, i8** %3, align 8
  %150 = extractvalue { i8*, i32 } %148, 1
  store i32 %150, i32* %4, align 4
  br label %155

151:                                              ; preds = %64, %62
  %152 = landingpad { i8*, i32 }
          cleanup
  %153 = extractvalue { i8*, i32 } %152, 0
  store i8* %153, i8** %3, align 8
  %154 = extractvalue { i8*, i32 } %152, 1
  store i32 %154, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %25) #3
  br label %155

155:                                              ; preds = %151, %147
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %26) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %23) #3
  br label %156

156:                                              ; preds = %155, %143
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %24) #3
  br label %171

157:                                              ; preds = %66
  %158 = landingpad { i8*, i32 }
          cleanup
  %159 = extractvalue { i8*, i32 } %158, 0
  store i8* %159, i8** %3, align 8
  %160 = extractvalue { i8*, i32 } %158, 1
  store i32 %160, i32* %4, align 4
  br label %170

161:                                              ; preds = %67
  %162 = landingpad { i8*, i32 }
          cleanup
  %163 = extractvalue { i8*, i32 } %162, 0
  store i8* %163, i8** %3, align 8
  %164 = extractvalue { i8*, i32 } %162, 1
  store i32 %164, i32* %4, align 4
  br label %169

165:                                              ; preds = %70, %68
  %166 = landingpad { i8*, i32 }
          cleanup
  %167 = extractvalue { i8*, i32 } %166, 0
  store i8* %167, i8** %3, align 8
  %168 = extractvalue { i8*, i32 } %166, 1
  store i32 %168, i32* %4, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29) #3
  br label %169

169:                                              ; preds = %165, %161
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %30) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27) #3
  br label %170

170:                                              ; preds = %169, %157
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %28) #3
  br label %171

171:                                              ; preds = %170, %156, %142, %128, %114, %100, %86
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = insertvalue { i8*, i32 } undef, i8* %172, 0
  %175 = insertvalue { i8*, i32 } %174, i32 %173, 1
  resume { i8*, i32 } %175
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(%"class.std::allocator"* sret(%"class.std::allocator") align 1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #1

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) #1

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%"class.std::allocator"* noalias sret(%"class.std::allocator") align 1 %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = bitcast %"class.std::allocator"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSaIcEC1ERKS_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1ERKS_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_karatsuba.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
