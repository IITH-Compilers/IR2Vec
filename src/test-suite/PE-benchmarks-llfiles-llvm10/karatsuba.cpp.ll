; ModuleID = 'temp/karatsuba.cpp'
source_filename = "temp/karatsuba.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_ = comdat any

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
define dso_local i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %str1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %str2.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %i7 = alloca i32, align 4
  %ref.tmp12 = alloca %"class.std::__cxx11::basic_string", align 8
  store %"class.std::__cxx11::basic_string"* %str1, %"class.std::__cxx11::basic_string"** %str1.addr, align 8
  store %"class.std::__cxx11::basic_string"* %str2, %"class.std::__cxx11::basic_string"** %str2.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str1.addr, align 8
  %call = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str2.addr, align 8
  %call1 = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %1) #3
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i32, i32* %len1, align 4
  %3 = load i32, i32* %len2, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %len2, align 4
  %6 = load i32, i32* %len1, align 4
  %sub = sub nsw i32 %5, %6
  %cmp3 = icmp slt i32 %4, %sub
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str1.addr, align 8
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret %ref.tmp, i8 signext 48, %"class.std::__cxx11::basic_string"* dereferenceable(32) %7)
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str1.addr, align 8
  %call4 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* %8, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %len2, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %len1, align 4
  %12 = load i32, i32* %len2, align 4
  %cmp5 = icmp sgt i32 %11, %12
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  store i32 0, i32* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc14, %if.then6
  %13 = load i32, i32* %i7, align 4
  %14 = load i32, i32* %len1, align 4
  %15 = load i32, i32* %len2, align 4
  %sub9 = sub nsw i32 %14, %15
  %cmp10 = icmp slt i32 %13, %sub9
  br i1 %cmp10, label %for.body11, label %for.end16

for.body11:                                       ; preds = %for.cond8
  %16 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str2.addr, align 8
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret %ref.tmp12, i8 signext 48, %"class.std::__cxx11::basic_string"* dereferenceable(32) %16)
  %17 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %str2.addr, align 8
  %call13 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* %17, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp12) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp12) #3
  br label %for.inc14

for.inc14:                                        ; preds = %for.body11
  %18 = load i32, i32* %i7, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %i7, align 4
  br label %for.cond8

for.end16:                                        ; preds = %for.cond8
  br label %if.end

if.end:                                           ; preds = %for.end16, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end
  %19 = load i32, i32* %len1, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %for.end
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare dso_local i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, i8 signext %__lhs, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__rhs) #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %__lhs.addr = alloca i8, align 1
  %__rhs.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %nrvo = alloca i1, align 1
  %__len = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i8 %__lhs, i8* %__lhs.addr, align 1
  store %"class.std::__cxx11::basic_string"* %__rhs, %"class.std::__cxx11::basic_string"** %__rhs.addr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__rhs.addr, align 8
  %call = call i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* %1) #3
  store i64 %call, i64* %__len, align 8
  %2 = load i64, i64* %__len, align 8
  %add = add i64 %2, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* %agg.result, i64 %add)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load i8, i8* %__lhs.addr, align 1
  %call2 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc(%"class.std::__cxx11::basic_string"* %agg.result, i64 1, i8 signext %3)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__rhs.addr, align 8
  %call4 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %4)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

lpad:                                             ; preds = %invoke.cont1, %invoke.cont, %entry
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3
  br label %eh.resume

nrvo.unused:                                      ; preds = %invoke.cont3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %invoke.cont3
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: nounwind
declare dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

; Function Attrs: noinline uwtable
define dso_local void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, %"class.std::__cxx11::basic_string"* %first, %"class.std::__cxx11::basic_string"* %second) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %nrvo = alloca i1, align 1
  %length = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %carry = alloca i32, align 4
  %i = alloca i32, align 4
  %firstBit = alloca i32, align 4
  %secondBit = alloca i32, align 4
  %sum = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp17 = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i1 false, i1* %nrvo, align 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3
  %call = invoke i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %first, %"class.std::__cxx11::basic_string"* dereferenceable(32) %second)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 %call, i32* %length, align 4
  store i32 0, i32* %carry, align 4
  %1 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %call2 = invoke dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"* %first, i64 %conv)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %for.body
  %4 = load i8, i8* %call2, align 1
  %conv3 = sext i8 %4 to i32
  %sub4 = sub nsw i32 %conv3, 48
  store i32 %sub4, i32* %firstBit, align 4
  %5 = load i32, i32* %i, align 4
  %conv5 = sext i32 %5 to i64
  %call7 = invoke dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"* %second, i64 %conv5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont1
  %6 = load i8, i8* %call7, align 1
  %conv8 = sext i8 %6 to i32
  %sub9 = sub nsw i32 %conv8, 48
  store i32 %sub9, i32* %secondBit, align 4
  %7 = load i32, i32* %firstBit, align 4
  %8 = load i32, i32* %secondBit, align 4
  %xor = xor i32 %7, %8
  %9 = load i32, i32* %carry, align 4
  %xor10 = xor i32 %xor, %9
  %add = add nsw i32 %xor10, 48
  store i32 %add, i32* %sum, align 4
  %10 = load i32, i32* %sum, align 4
  %conv11 = trunc i32 %10 to i8
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret %ref.tmp, i8 signext %conv11, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont6
  %call13 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  %11 = load i32, i32* %firstBit, align 4
  %12 = load i32, i32* %secondBit, align 4
  %and = and i32 %11, %12
  %13 = load i32, i32* %secondBit, align 4
  %14 = load i32, i32* %carry, align 4
  %and14 = and i32 %13, %14
  %or = or i32 %and, %and14
  %15 = load i32, i32* %firstBit, align 4
  %16 = load i32, i32* %carry, align 4
  %and15 = and i32 %15, %16
  %or16 = or i32 %or, %and15
  store i32 %or16, i32* %carry, align 4
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont12
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %if.then, %invoke.cont6, %invoke.cont1, %for.body, %entry
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %carry, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(%"class.std::__cxx11::basic_string"* sret %ref.tmp17, i8 signext 49, %"class.std::__cxx11::basic_string"* dereferenceable(32) %agg.result)
          to label %invoke.cont18 unwind label %lpad

invoke.cont18:                                    ; preds = %if.then
  %call19 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp17) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp17) #3
  br label %if.end

if.end:                                           ; preds = %invoke.cont18, %for.end
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %if.end
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.result) #3
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %if.end
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val20 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val20
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(%"class.std::__cxx11::basic_string"*, i64) #1

; Function Attrs: noinline uwtable
define dso_local i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %a, %"class.std::__cxx11::basic_string"* %b) #0 {
entry:
  %call = call dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* %a, i64 0)
  %0 = load i8, i8* %call, align 1
  %conv = sext i8 %0 to i32
  %sub = sub nsw i32 %conv, 48
  %call1 = call dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"* %b, i64 0)
  %1 = load i8, i8* %call1, align 1
  %conv2 = sext i8 %1 to i32
  %sub3 = sub nsw i32 %conv2, 48
  %mul = mul nsw i32 %sub, %sub3
  ret i32 %mul
}

declare dso_local dereferenceable(1) i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(%"class.std::__cxx11::basic_string"*, i64) #1

; Function Attrs: noinline uwtable
define dso_local i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %X, %"class.std::__cxx11::basic_string"* %Y) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i64, align 8
  %n = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp3 = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %fh = alloca i32, align 4
  %sh = alloca i32, align 4
  %Xl = alloca %"class.std::__cxx11::basic_string", align 8
  %Xr = alloca %"class.std::__cxx11::basic_string", align 8
  %Yl = alloca %"class.std::__cxx11::basic_string", align 8
  %Yr = alloca %"class.std::__cxx11::basic_string", align 8
  %P1 = alloca i64, align 8
  %agg.tmp20 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp23 = alloca %"class.std::__cxx11::basic_string", align 8
  %P2 = alloca i64, align 8
  %agg.tmp31 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp33 = alloca %"class.std::__cxx11::basic_string", align 8
  %P3 = alloca i64, align 8
  %agg.tmp41 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp42 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp44 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp49 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp50 = alloca %"class.std::__cxx11::basic_string", align 8
  %agg.tmp53 = alloca %"class.std::__cxx11::basic_string", align 8
  %call = call i32 @_Z15makeEqualLengthRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %X, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Y)
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp, %"class.std::__cxx11::basic_string"* dereferenceable(32) %X)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Y)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then2
  %call6 = invoke i32 @_Z18multiplyiSingleBitNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp, %"class.std::__cxx11::basic_string"* %agg.tmp3)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %conv = sext i32 %call6 to i64
  store i64 %conv, i64* %retval, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp3) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %return

lpad:                                             ; preds = %if.then2
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp3) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad4, %lpad
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %eh.resume

if.end7:                                          ; preds = %if.end
  %8 = load i32, i32* %n, align 4
  %div = sdiv i32 %8, 2
  store i32 %div, i32* %fh, align 4
  %9 = load i32, i32* %n, align 4
  %10 = load i32, i32* %fh, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %sh, align 4
  %11 = load i32, i32* %fh, align 4
  %conv8 = sext i32 %11 to i64
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret %Xl, %"class.std::__cxx11::basic_string"* %X, i64 0, i64 %conv8)
  %12 = load i32, i32* %fh, align 4
  %conv9 = sext i32 %12 to i64
  %13 = load i32, i32* %sh, align 4
  %conv10 = sext i32 %13 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret %Xr, %"class.std::__cxx11::basic_string"* %X, i64 %conv9, i64 %conv10)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %if.end7
  %14 = load i32, i32* %fh, align 4
  %conv13 = sext i32 %14 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret %Yl, %"class.std::__cxx11::basic_string"* %Y, i64 0, i64 %conv13)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont12
  %15 = load i32, i32* %fh, align 4
  %conv16 = sext i32 %15 to i64
  %16 = load i32, i32* %sh, align 4
  %conv17 = sext i32 %16 to i64
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret %Yr, %"class.std::__cxx11::basic_string"* %Y, i64 %conv16, i64 %conv17)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp20, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Xl)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp23, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Yl)
          to label %invoke.cont25 unwind label %lpad24

invoke.cont25:                                    ; preds = %invoke.cont22
  %call28 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp20, %"class.std::__cxx11::basic_string"* %agg.tmp23)
          to label %invoke.cont27 unwind label %lpad26

invoke.cont27:                                    ; preds = %invoke.cont25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp23) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp20) #3
  store i64 %call28, i64* %P1, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp31, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Xr)
          to label %invoke.cont32 unwind label %lpad21

invoke.cont32:                                    ; preds = %invoke.cont27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp33, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Yr)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %invoke.cont32
  %call38 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp31, %"class.std::__cxx11::basic_string"* %agg.tmp33)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %invoke.cont35
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp33) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp31) #3
  store i64 %call38, i64* %P2, align 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp42, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Xl)
          to label %invoke.cont43 unwind label %lpad21

invoke.cont43:                                    ; preds = %invoke.cont37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp44, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Xr)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont43
  invoke void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* sret %agg.tmp41, %"class.std::__cxx11::basic_string"* %agg.tmp42, %"class.std::__cxx11::basic_string"* %agg.tmp44)
          to label %invoke.cont48 unwind label %lpad47

invoke.cont48:                                    ; preds = %invoke.cont46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp50, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Yl)
          to label %invoke.cont52 unwind label %lpad51

invoke.cont52:                                    ; preds = %invoke.cont48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.tmp53, %"class.std::__cxx11::basic_string"* dereferenceable(32) %Yr)
          to label %invoke.cont55 unwind label %lpad54

invoke.cont55:                                    ; preds = %invoke.cont52
  invoke void @_Z13addBitStringsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* sret %agg.tmp49, %"class.std::__cxx11::basic_string"* %agg.tmp50, %"class.std::__cxx11::basic_string"* %agg.tmp53)
          to label %invoke.cont57 unwind label %lpad56

invoke.cont57:                                    ; preds = %invoke.cont55
  %call60 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp41, %"class.std::__cxx11::basic_string"* %agg.tmp49)
          to label %invoke.cont59 unwind label %lpad58

invoke.cont59:                                    ; preds = %invoke.cont57
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp49) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp53) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp50) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp41) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp44) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp42) #3
  store i64 %call60, i64* %P3, align 8
  %17 = load i64, i64* %P1, align 8
  %18 = load i32, i32* %sh, align 4
  %mul = mul nsw i32 2, %18
  %shl = shl i32 1, %mul
  %conv67 = sext i32 %shl to i64
  %mul68 = mul nsw i64 %17, %conv67
  %19 = load i64, i64* %P3, align 8
  %20 = load i64, i64* %P1, align 8
  %sub69 = sub nsw i64 %19, %20
  %21 = load i64, i64* %P2, align 8
  %sub70 = sub nsw i64 %sub69, %21
  %22 = load i32, i32* %sh, align 4
  %shl71 = shl i32 1, %22
  %conv72 = sext i32 %shl71 to i64
  %mul73 = mul nsw i64 %sub70, %conv72
  %add = add nsw i64 %mul68, %mul73
  %23 = load i64, i64* %P2, align 8
  %add74 = add nsw i64 %add, %23
  store i64 %add74, i64* %retval, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Yr) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Yl) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Xr) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Xl) #3
  br label %return

lpad11:                                           ; preds = %if.end7
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %exn.slot, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %ehselector.slot, align 4
  br label %ehcleanup78

lpad14:                                           ; preds = %invoke.cont12
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  br label %ehcleanup77

lpad18:                                           ; preds = %invoke.cont15
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot, align 4
  br label %ehcleanup76

lpad21:                                           ; preds = %invoke.cont37, %invoke.cont27, %invoke.cont19
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %exn.slot, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %ehselector.slot, align 4
  br label %ehcleanup75

lpad24:                                           ; preds = %invoke.cont22
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %exn.slot, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %ehselector.slot, align 4
  br label %ehcleanup30

lpad26:                                           ; preds = %invoke.cont25
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %exn.slot, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp23) #3
  br label %ehcleanup30

ehcleanup30:                                      ; preds = %lpad26, %lpad24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp20) #3
  br label %ehcleanup75

lpad34:                                           ; preds = %invoke.cont32
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  br label %ehcleanup40

lpad36:                                           ; preds = %invoke.cont35
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %exn.slot, align 8
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp33) #3
  br label %ehcleanup40

ehcleanup40:                                      ; preds = %lpad36, %lpad34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp31) #3
  br label %ehcleanup75

lpad45:                                           ; preds = %invoke.cont43
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %exn.slot, align 8
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %ehselector.slot, align 4
  br label %ehcleanup66

lpad47:                                           ; preds = %invoke.cont46
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %exn.slot, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %ehselector.slot, align 4
  br label %ehcleanup65

lpad51:                                           ; preds = %invoke.cont48
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %exn.slot, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %ehselector.slot, align 4
  br label %ehcleanup64

lpad54:                                           ; preds = %invoke.cont52
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %exn.slot, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %ehselector.slot, align 4
  br label %ehcleanup63

lpad56:                                           ; preds = %invoke.cont55
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  store i8* %61, i8** %exn.slot, align 8
  %62 = extractvalue { i8*, i32 } %60, 1
  store i32 %62, i32* %ehselector.slot, align 4
  br label %ehcleanup62

lpad58:                                           ; preds = %invoke.cont57
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = extractvalue { i8*, i32 } %63, 0
  store i8* %64, i8** %exn.slot, align 8
  %65 = extractvalue { i8*, i32 } %63, 1
  store i32 %65, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp49) #3
  br label %ehcleanup62

ehcleanup62:                                      ; preds = %lpad58, %lpad56
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp53) #3
  br label %ehcleanup63

ehcleanup63:                                      ; preds = %ehcleanup62, %lpad54
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp50) #3
  br label %ehcleanup64

ehcleanup64:                                      ; preds = %ehcleanup63, %lpad51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp41) #3
  br label %ehcleanup65

ehcleanup65:                                      ; preds = %ehcleanup64, %lpad47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp44) #3
  br label %ehcleanup66

ehcleanup66:                                      ; preds = %ehcleanup65, %lpad45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp42) #3
  br label %ehcleanup75

ehcleanup75:                                      ; preds = %ehcleanup66, %ehcleanup40, %ehcleanup30, %lpad21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Yr) #3
  br label %ehcleanup76

ehcleanup76:                                      ; preds = %ehcleanup75, %lpad18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Yl) #3
  br label %ehcleanup77

ehcleanup77:                                      ; preds = %ehcleanup76, %lpad14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Xr) #3
  br label %ehcleanup78

ehcleanup78:                                      ; preds = %ehcleanup77, %lpad11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %Xl) #3
  br label %eh.resume

return:                                           ; preds = %invoke.cont59, %invoke.cont5, %if.then
  %66 = load i64, i64* %retval, align 8
  ret i64 %66

eh.resume:                                        ; preds = %ehcleanup78, %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val79 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val79
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #1

declare dso_local void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(%"class.std::__cxx11::basic_string"* sret, %"class.std::__cxx11::basic_string"*, i64, i64) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp1 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::allocator", align 1
  %agg.tmp11 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp12 = alloca %"class.std::allocator", align 1
  %agg.tmp15 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp16 = alloca %"class.std::allocator", align 1
  %agg.tmp28 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp29 = alloca %"class.std::allocator", align 1
  %agg.tmp32 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp33 = alloca %"class.std::allocator", align 1
  %agg.tmp45 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp46 = alloca %"class.std::allocator", align 1
  %agg.tmp49 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp50 = alloca %"class.std::allocator", align 1
  %agg.tmp62 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp63 = alloca %"class.std::allocator", align 1
  %agg.tmp66 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp67 = alloca %"class.std::allocator", align 1
  %agg.tmp79 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp80 = alloca %"class.std::allocator", align 1
  %agg.tmp83 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp84 = alloca %"class.std::allocator", align 1
  %agg.tmp96 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp97 = alloca %"class.std::allocator", align 1
  %agg.tmp100 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp101 = alloca %"class.std::allocator", align 1
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp2) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp2)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %call = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp, %"class.std::__cxx11::basic_string"* %agg.tmp1)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  %call8 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call)
          to label %invoke.cont7 unwind label %lpad5

invoke.cont7:                                     ; preds = %invoke.cont6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp1) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp2) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp12) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp12)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont7
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp16) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp16)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont14
  %call21 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp11, %"class.std::__cxx11::basic_string"* %agg.tmp15)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %invoke.cont18
  %call23 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call21)
          to label %invoke.cont22 unwind label %lpad19

invoke.cont22:                                    ; preds = %invoke.cont20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp15) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp16) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp11) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp12) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp29) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp29)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %invoke.cont22
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp33) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp33)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %invoke.cont31
  %call38 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp28, %"class.std::__cxx11::basic_string"* %agg.tmp32)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %invoke.cont35
  %call40 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call38)
          to label %invoke.cont39 unwind label %lpad36

invoke.cont39:                                    ; preds = %invoke.cont37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp32) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp33) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp28) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp29) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp46) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp46)
          to label %invoke.cont48 unwind label %lpad47

invoke.cont48:                                    ; preds = %invoke.cont39
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp50) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp50)
          to label %invoke.cont52 unwind label %lpad51

invoke.cont52:                                    ; preds = %invoke.cont48
  %call55 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp45, %"class.std::__cxx11::basic_string"* %agg.tmp49)
          to label %invoke.cont54 unwind label %lpad53

invoke.cont54:                                    ; preds = %invoke.cont52
  %call57 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call55)
          to label %invoke.cont56 unwind label %lpad53

invoke.cont56:                                    ; preds = %invoke.cont54
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp49) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp50) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp45) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp46) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp63) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp63)
          to label %invoke.cont65 unwind label %lpad64

invoke.cont65:                                    ; preds = %invoke.cont56
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp67) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp67)
          to label %invoke.cont69 unwind label %lpad68

invoke.cont69:                                    ; preds = %invoke.cont65
  %call72 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp62, %"class.std::__cxx11::basic_string"* %agg.tmp66)
          to label %invoke.cont71 unwind label %lpad70

invoke.cont71:                                    ; preds = %invoke.cont69
  %call74 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call72)
          to label %invoke.cont73 unwind label %lpad70

invoke.cont73:                                    ; preds = %invoke.cont71
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp66) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp67) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp62) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp63) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp80) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp80)
          to label %invoke.cont82 unwind label %lpad81

invoke.cont82:                                    ; preds = %invoke.cont73
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp84) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp84)
          to label %invoke.cont86 unwind label %lpad85

invoke.cont86:                                    ; preds = %invoke.cont82
  %call89 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp79, %"class.std::__cxx11::basic_string"* %agg.tmp83)
          to label %invoke.cont88 unwind label %lpad87

invoke.cont88:                                    ; preds = %invoke.cont86
  %call91 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call89)
          to label %invoke.cont90 unwind label %lpad87

invoke.cont90:                                    ; preds = %invoke.cont88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp83) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp84) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp79) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp80) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp97) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp97)
          to label %invoke.cont99 unwind label %lpad98

invoke.cont99:                                    ; preds = %invoke.cont90
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp101) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp101)
          to label %invoke.cont103 unwind label %lpad102

invoke.cont103:                                   ; preds = %invoke.cont99
  %call106 = invoke i64 @_Z8multiplyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* %agg.tmp96, %"class.std::__cxx11::basic_string"* %agg.tmp100)
          to label %invoke.cont105 unwind label %lpad104

invoke.cont105:                                   ; preds = %invoke.cont103
  %call108 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call106)
          to label %invoke.cont107 unwind label %lpad104

invoke.cont107:                                   ; preds = %invoke.cont105
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp100) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp101) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp96) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp97) #3
  ret i32 0

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  br label %ehcleanup10

lpad3:                                            ; preds = %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont6, %invoke.cont4
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp1) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp2) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %ehcleanup10

ehcleanup10:                                      ; preds = %ehcleanup, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp) #3
  br label %eh.resume

lpad13:                                           ; preds = %invoke.cont7
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  br label %ehcleanup27

lpad17:                                           ; preds = %invoke.cont14
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  br label %ehcleanup25

lpad19:                                           ; preds = %invoke.cont20, %invoke.cont18
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp15) #3
  br label %ehcleanup25

ehcleanup25:                                      ; preds = %lpad19, %lpad17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp16) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp11) #3
  br label %ehcleanup27

ehcleanup27:                                      ; preds = %ehcleanup25, %lpad13
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp12) #3
  br label %eh.resume

lpad30:                                           ; preds = %invoke.cont22
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %exn.slot, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %ehselector.slot, align 4
  br label %ehcleanup44

lpad34:                                           ; preds = %invoke.cont31
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  br label %ehcleanup42

lpad36:                                           ; preds = %invoke.cont37, %invoke.cont35
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  store i8* %25, i8** %exn.slot, align 8
  %26 = extractvalue { i8*, i32 } %24, 1
  store i32 %26, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp32) #3
  br label %ehcleanup42

ehcleanup42:                                      ; preds = %lpad36, %lpad34
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp33) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp28) #3
  br label %ehcleanup44

ehcleanup44:                                      ; preds = %ehcleanup42, %lpad30
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp29) #3
  br label %eh.resume

lpad47:                                           ; preds = %invoke.cont39
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  br label %ehcleanup61

lpad51:                                           ; preds = %invoke.cont48
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot, align 4
  br label %ehcleanup59

lpad53:                                           ; preds = %invoke.cont54, %invoke.cont52
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %exn.slot, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp49) #3
  br label %ehcleanup59

ehcleanup59:                                      ; preds = %lpad53, %lpad51
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp50) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp45) #3
  br label %ehcleanup61

ehcleanup61:                                      ; preds = %ehcleanup59, %lpad47
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp46) #3
  br label %eh.resume

lpad64:                                           ; preds = %invoke.cont56
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %exn.slot, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %ehselector.slot, align 4
  br label %ehcleanup78

lpad68:                                           ; preds = %invoke.cont65
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %exn.slot, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %ehselector.slot, align 4
  br label %ehcleanup76

lpad70:                                           ; preds = %invoke.cont71, %invoke.cont69
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp66) #3
  br label %ehcleanup76

ehcleanup76:                                      ; preds = %lpad70, %lpad68
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp67) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp62) #3
  br label %ehcleanup78

ehcleanup78:                                      ; preds = %ehcleanup76, %lpad64
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp63) #3
  br label %eh.resume

lpad81:                                           ; preds = %invoke.cont73
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %exn.slot, align 8
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %ehselector.slot, align 4
  br label %ehcleanup95

lpad85:                                           ; preds = %invoke.cont82
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %exn.slot, align 8
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %ehselector.slot, align 4
  br label %ehcleanup93

lpad87:                                           ; preds = %invoke.cont88, %invoke.cont86
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  store i8* %52, i8** %exn.slot, align 8
  %53 = extractvalue { i8*, i32 } %51, 1
  store i32 %53, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp83) #3
  br label %ehcleanup93

ehcleanup93:                                      ; preds = %lpad87, %lpad85
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp84) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp79) #3
  br label %ehcleanup95

ehcleanup95:                                      ; preds = %ehcleanup93, %lpad81
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp80) #3
  br label %eh.resume

lpad98:                                           ; preds = %invoke.cont90
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %exn.slot, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %ehselector.slot, align 4
  br label %ehcleanup112

lpad102:                                          ; preds = %invoke.cont99
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %exn.slot, align 8
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %ehselector.slot, align 4
  br label %ehcleanup110

lpad104:                                          ; preds = %invoke.cont105, %invoke.cont103
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  store i8* %61, i8** %exn.slot, align 8
  %62 = extractvalue { i8*, i32 } %60, 1
  store i32 %62, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp100) #3
  br label %ehcleanup110

ehcleanup110:                                     ; preds = %lpad104, %lpad102
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp101) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp96) #3
  br label %ehcleanup112

ehcleanup112:                                     ; preds = %ehcleanup110, %lpad98
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp97) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup112, %ehcleanup95, %ehcleanup78, %ehcleanup61, %ehcleanup44, %ehcleanup27, %ehcleanup10
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val113 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val113
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator"*) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator"*) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"*, i64) #1

declare dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc(%"class.std::__cxx11::basic_string"*, i64, i8 signext) #1

declare dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_karatsuba.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
