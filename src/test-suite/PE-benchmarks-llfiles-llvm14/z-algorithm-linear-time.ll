; ModuleID = 'PE-benchmarks/z-algorithm-linear-time.cpp'
source_filename = "PE-benchmarks/z-algorithm-linear-time.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::__new_allocator" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_ = comdat any

@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Pattern found at index \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"GEEKS FOR GEEKS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"GEEK\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z6searchNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca i32, align 4
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %4, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %3, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
          to label %12 unwind label %45

12:                                               ; preds = %2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #9
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #9
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
          to label %19 unwind label %49

19:                                               ; preds = %12
  invoke void @_Z7getZarrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(%"class.std::__cxx11::basic_string"* noundef %10, i32* noundef %18)
          to label %20 unwind label %53

20:                                               ; preds = %19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #9
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %18, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #9
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
          to label %35 unwind label %49

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #9
  %39 = sub i64 %37, %38
  %40 = sub i64 %39, 1
  %41 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %40)
          to label %42 unwind label %49

42:                                               ; preds = %35
  %43 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %41, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %44 unwind label %49

44:                                               ; preds = %42
  br label %57

45:                                               ; preds = %2
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %5, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #9
  br label %64

49:                                               ; preds = %42, %35, %33, %12
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %5, align 8
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %6, align 4
  br label %63

53:                                               ; preds = %19
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %5, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %6, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #9
  br label %63

57:                                               ; preds = %44, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %21, !llvm.loop !6

61:                                               ; preds = %21
  %62 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %62)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #9
  ret void

63:                                               ; preds = %53, %49
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #9
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = insertvalue { i8*, i32 } undef, i8* %65, 0
  %68 = insertvalue { i8*, i32 } %67, i32 %66, 1
  resume { i8*, i32 } %68
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #0 comdat {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9)
  %11 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #9
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef %2) #1 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %12, i8** %6, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %7, align 8
  store i8* %2, i8** %8, align 8
  %13 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %14 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #9
  %15 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %16 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %15) #9
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %18)
  %20 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(%"class.std::allocator"* sret(%"class.std::allocator") align 1 %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20) #9
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %14, i64 noundef %16, i8* noundef %17, i64 noundef %19, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9)
          to label %21 unwind label %24

21:                                               ; preds = %3
  store %"class.std::allocator"* %9, %"class.std::allocator"** %5, align 8
  %22 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %23 = bitcast %"class.std::allocator"* %22 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %23) #9
  ret void

24:                                               ; preds = %3
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %10, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %11, align 4
  store %"class.std::allocator"* %9, %"class.std::allocator"** %4, align 8
  %28 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %29 = bitcast %"class.std::allocator"* %28 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %29) #9
  br label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z7getZarrNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(%"class.std::__cxx11::basic_string"* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %1, i32** %3, align 8
  %9 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #9
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %115, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %118

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %41, %19
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %29)
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %34)
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %32, %37
  br label %39

39:                                               ; preds = %25, %21
  %40 = phi i1 [ false, %21 ], [ %38, %25 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %21, !llvm.loop !8

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %114

54:                                               ; preds = %15
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %54
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %113

78:                                               ; preds = %54
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %100, %78
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %88)
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %93)
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %91, %96
  br label %98

98:                                               ; preds = %84, %80
  %99 = phi i1 [ false, %80 ], [ %97, %84 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %80, !llvm.loop !9

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %103, %68
  br label %114

114:                                              ; preds = %113, %44
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %11, !llvm.loop !10

118:                                              ; preds = %11
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i64 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #4

; Function Attrs: noinline norecurse uwtable
define dso_local noundef i32 @main() #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__new_allocator"*, align 8
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::allocator", align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::allocator", align 1
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  store i32 0, i32* %9, align 4
  store %"class.std::allocator"* %11, %"class.std::allocator"** %8, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %19 = bitcast %"class.std::allocator"* %18 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %19, %"class.std::__new_allocator"** %1, align 8
  %20 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %1, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %11)
          to label %21 unwind label %34

21:                                               ; preds = %0
  store %"class.std::allocator"* %11, %"class.std::allocator"** %6, align 8
  %22 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %23 = bitcast %"class.std::allocator"* %22 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %23) #9
  store %"class.std::allocator"* %15, %"class.std::allocator"** %7, align 8
  %24 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %25 = bitcast %"class.std::allocator"* %24 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %25, %"class.std::__new_allocator"** %2, align 8
  %26 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %15)
          to label %27 unwind label %40

27:                                               ; preds = %21
  store %"class.std::allocator"* %15, %"class.std::allocator"** %4, align 8
  %28 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %29 = bitcast %"class.std::allocator"* %28 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %29) #9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10)
          to label %30 unwind label %46

30:                                               ; preds = %27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14)
          to label %31 unwind label %50

31:                                               ; preds = %30
  invoke void @_Z6searchNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noundef %16, %"class.std::__cxx11::basic_string"* noundef %17)
          to label %32 unwind label %54

32:                                               ; preds = %31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #9
  store i32 0, i32* %9, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #9
  %33 = load i32, i32* %9, align 4
  ret i32 %33

34:                                               ; preds = %0
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %12, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %13, align 4
  store %"class.std::allocator"* %11, %"class.std::allocator"** %5, align 8
  %38 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %39 = bitcast %"class.std::allocator"* %38 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %39) #9
  br label %61

40:                                               ; preds = %21
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %12, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %13, align 4
  store %"class.std::allocator"* %15, %"class.std::allocator"** %3, align 8
  %44 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %45 = bitcast %"class.std::allocator"* %44 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %45) #9
  br label %60

46:                                               ; preds = %27
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  store i8* %48, i8** %12, align 8
  %49 = extractvalue { i8*, i32 } %47, 1
  store i32 %49, i32* %13, align 4
  br label %59

50:                                               ; preds = %30
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %12, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %13, align 4
  br label %58

54:                                               ; preds = %31
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  store i8* %56, i8** %12, align 8
  %57 = extractvalue { i8*, i32 } %55, 1
  store i32 %57, i32* %13, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %17) #9
  br label %58

58:                                               ; preds = %54, %50
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16) #9
  br label %59

59:                                               ; preds = %58, %46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #9
  br label %60

60:                                               ; preds = %59, %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #9
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = insertvalue { i8*, i32 } undef, i8* %62, 0
  %65 = insertvalue { i8*, i32 } %64, i32 %63, 1
  resume { i8*, i32 } %65
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %2, align 8
  %3 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #1 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %28 = bitcast %"class.std::allocator"* %23 to i8*
  store i8* %28, i8** %13, align 8, !noalias !11
  store %"class.std::allocator"* %27, %"class.std::allocator"** %14, align 8, !noalias !11
  %29 = load %"class.std::allocator"*, %"class.std::allocator"** %14, align 8, !noalias !11
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %30 = bitcast %"class.std::allocator"* %23 to i8*
  store i8* %30, i8** %11, align 8, !noalias !14
  store %"class.std::allocator"* %29, %"class.std::allocator"** %12, align 8, !noalias !14
  %31 = load %"class.std::allocator"*, %"class.std::allocator"** %12, align 8, !noalias !14
  store %"class.std::allocator"* %23, %"class.std::allocator"** %9, align 8
  store %"class.std::allocator"* %31, %"class.std::allocator"** %10, align 8
  %32 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  %33 = bitcast %"class.std::allocator"* %32 to %"class.std::__new_allocator"*
  %34 = load %"class.std::allocator"*, %"class.std::allocator"** %10, align 8
  %35 = bitcast %"class.std::allocator"* %34 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %33, %"class.std::__new_allocator"** %7, align 8
  store %"class.std::__new_allocator"* %35, %"class.std::__new_allocator"** %8, align 8
  %36 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %23) #9
  store %"class.std::allocator"* %23, %"class.std::allocator"** %15, align 8
  %37 = load %"class.std::allocator"*, %"class.std::allocator"** %15, align 8
  %38 = bitcast %"class.std::allocator"* %37 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %38) #9
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #9
  br label %58

56:                                               ; preds = %50
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #9
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
declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %0) #7 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* noundef %3) #9
  ret i64 %4
}

; Function Attrs: nounwind
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(%"class.std::allocator"* sret(%"class.std::allocator") align 1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #4

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i64 @strlen(i8* noundef) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #7 comdat {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  ret %"class.std::__cxx11::basic_string"* %3
}

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

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
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_: argument 0"}
!13 = distinct !{!13, !"_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_: argument 0"}
!16 = distinct !{!16, !"_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_"}
