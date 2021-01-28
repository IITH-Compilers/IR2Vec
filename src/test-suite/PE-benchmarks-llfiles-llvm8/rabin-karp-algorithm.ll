; ModuleID = 'PE-benchmarks/rabin-karp-algorithm.cpp'
source_filename = "PE-benchmarks/rabin-karp-algorithm.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [24 x i8] c"Pattern found at index \00", align 1
@__const.main.txt = private unnamed_addr constant [16 x i8] c"GEEKS FOR GEEKS\00", align 16
@__const.main.pat = private unnamed_addr constant [5 x i8] c"GEEK\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_rabin_karp_algorithm.cpp, i8* null }]

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
define dso_local void @_Z6searchPcS_i(i8* %pat, i8* %txt, i32 %q) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %txt.addr = alloca i8*, align 8
  %q.addr = alloca i32, align 4
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca i32, align 4
  %h = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %txt, i8** %txt.addr, align 8
  store i32 %q, i32* %q.addr, align 4
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %M, align 4
  %1 = load i8*, i8** %txt.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #7
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %N, align 4
  store i32 0, i32* %p, align 4
  store i32 0, i32* %t, align 4
  store i32 1, i32* %h, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %4, 256
  %5 = load i32, i32* %q.addr, align 4
  %rem = srem i32 %mul, %5
  store i32 %rem, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc15, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %M, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body5, label %for.end17

for.body5:                                        ; preds = %for.cond3
  %9 = load i32, i32* %p, align 4
  %mul6 = mul nsw i32 256, %9
  %10 = load i8*, i8** %pat.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %12 to i32
  %add = add nsw i32 %mul6, %conv7
  %13 = load i32, i32* %q.addr, align 4
  %rem8 = srem i32 %add, %13
  store i32 %rem8, i32* %p, align 4
  %14 = load i32, i32* %t, align 4
  %mul9 = mul nsw i32 256, %14
  %15 = load i8*, i8** %txt.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %add13 = add nsw i32 %mul9, %conv12
  %18 = load i32, i32* %q.addr, align 4
  %rem14 = srem i32 %add13, %18
  store i32 %rem14, i32* %t, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.body5
  %19 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond3

for.end17:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc65, %for.end17
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %N, align 4
  %22 = load i32, i32* %M, align 4
  %sub19 = sub nsw i32 %21, %22
  %cmp20 = icmp sle i32 %20, %sub19
  br i1 %cmp20, label %for.body21, label %for.end67

for.body21:                                       ; preds = %for.cond18
  %23 = load i32, i32* %p, align 4
  %24 = load i32, i32* %t, align 4
  %cmp22 = icmp eq i32 %23, %24
  br i1 %cmp22, label %if.then, label %if.end44

if.then:                                          ; preds = %for.body21
  store i32 0, i32* %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %if.then
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %M, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond23
  %27 = load i8*, i8** %txt.addr, align 8
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %28, %29
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  %30 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %30 to i32
  %31 = load i8*, i8** %pat.addr, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 %idxprom30
  %33 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %33 to i32
  %cmp33 = icmp ne i32 %conv29, %conv32
  br i1 %cmp33, label %if.then34, label %if.end

if.then34:                                        ; preds = %for.body25
  br label %for.end37

if.end:                                           ; preds = %for.body25
  br label %for.inc35

for.inc35:                                        ; preds = %if.end
  %34 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %34, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond23

for.end37:                                        ; preds = %if.then34, %for.cond23
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %M, align 4
  %cmp38 = icmp eq i32 %35, %36
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %for.end37
  %call40 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %37 = load i32, i32* %i, align 4
  %call41 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call40, i32 %37)
  %call42 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call41, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.end37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %for.body21
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %N, align 4
  %40 = load i32, i32* %M, align 4
  %sub45 = sub nsw i32 %39, %40
  %cmp46 = icmp slt i32 %38, %sub45
  br i1 %cmp46, label %if.then47, label %if.end64

if.then47:                                        ; preds = %if.end44
  %41 = load i32, i32* %t, align 4
  %42 = load i8*, i8** %txt.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %42, i64 %idxprom48
  %44 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %44 to i32
  %45 = load i32, i32* %h, align 4
  %mul51 = mul nsw i32 %conv50, %45
  %sub52 = sub nsw i32 %41, %mul51
  %mul53 = mul nsw i32 256, %sub52
  %46 = load i8*, i8** %txt.addr, align 8
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %M, align 4
  %add54 = add nsw i32 %47, %48
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %46, i64 %idxprom55
  %49 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %49 to i32
  %add58 = add nsw i32 %mul53, %conv57
  %50 = load i32, i32* %q.addr, align 4
  %rem59 = srem i32 %add58, %50
  store i32 %rem59, i32* %t, align 4
  %51 = load i32, i32* %t, align 4
  %cmp60 = icmp slt i32 %51, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then47
  %52 = load i32, i32* %t, align 4
  %53 = load i32, i32* %q.addr, align 4
  %add62 = add nsw i32 %52, %53
  store i32 %add62, i32* %t, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then47
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end44
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %54 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %54, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond18

for.end67:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %txt = alloca [16 x i8], align 16
  %pat = alloca [5 x i8], align 1
  %q = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [16 x i8]* %txt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.txt, i32 0, i32 0), i64 16, i1 false)
  %1 = bitcast [5 x i8]* %pat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.pat, i32 0, i32 0), i64 5, i1 false)
  store i32 101, i32* %q, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %pat, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %txt, i32 0, i32 0
  %2 = load i32, i32* %q, align 4
  call void @_Z6searchPcS_i(i8* %arraydecay, i8* %arraydecay1, i32 %2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_rabin_karp_algorithm.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
