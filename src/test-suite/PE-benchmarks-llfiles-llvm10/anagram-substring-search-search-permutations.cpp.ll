; ModuleID = 'temp/anagram-substring-search-search-permutations.cpp'
source_filename = "temp/anagram-substring-search-search-permutations.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@.str = private unnamed_addr constant [16 x i8] c"Found at Index \00", align 1
@__const.main.txt = private unnamed_addr constant [11 x i8] c"BACDGABCDA\00", align 1
@__const.main.pat = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_anagram_substring_search_search_permutations.cpp, i8* null }]

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

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z7comparePcS_(i8* %arr1, i8* %arr2) #4 {
entry:
  %retval = alloca i1, align 1
  %arr1.addr = alloca i8*, align 8
  %arr2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %arr1, i8** %arr1.addr, align 8
  store i8* %arr2, i8** %arr2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arr1.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8*, i8** %arr2.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline uwtable
define dso_local void @_Z6searchPcS_(i8* %pat, i8* %txt) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %txt.addr = alloca i8*, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %countP = alloca [256 x i8], align 16
  %countTW = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %i11 = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %txt, i8** %txt.addr, align 8
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %M, align 4
  %1 = load i8*, i8** %txt.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %N, align 4
  %2 = bitcast [256 x i8]* %countP to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 256, i1 false)
  %3 = bitcast [256 x i8]* %countTW to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 256, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %M, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %pat.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %idxprom3 = sext i8 %8 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %countP, i64 0, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %arrayidx4, align 1
  %10 = load i8*, i8** %txt.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  %12 = load i8, i8* %arrayidx6, align 1
  %idxprom7 = sext i8 %12 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %countTW, i64 0, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %inc9 = add i8 %13, 1
  store i8 %inc9, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %M, align 4
  store i32 %15, i32* %i11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc30, %for.end
  %16 = load i32, i32* %i11, align 4
  %17 = load i32, i32* %N, align 4
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %for.body14, label %for.end32

for.body14:                                       ; preds = %for.cond12
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %countP, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %countTW, i64 0, i64 0
  %call16 = call zeroext i1 @_Z7comparePcS_(i8* %arraydecay, i8* %arraydecay15)
  br i1 %call16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  %call17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %i11, align 4
  %19 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %18, %19
  %call18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call17, i32 %sub)
  %call19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14
  %20 = load i8*, i8** %txt.addr, align 8
  %21 = load i32, i32* %i11, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 %idxprom20
  %22 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = sext i8 %22 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %countTW, i64 0, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %inc24 = add i8 %23, 1
  store i8 %inc24, i8* %arrayidx23, align 1
  %24 = load i8*, i8** %txt.addr, align 8
  %25 = load i32, i32* %i11, align 4
  %26 = load i32, i32* %M, align 4
  %sub25 = sub nsw i32 %25, %26
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 %idxprom26
  %27 = load i8, i8* %arrayidx27, align 1
  %idxprom28 = sext i8 %27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* %countTW, i64 0, i64 %idxprom28
  %28 = load i8, i8* %arrayidx29, align 1
  %dec = add i8 %28, -1
  store i8 %dec, i8* %arrayidx29, align 1
  br label %for.inc30

for.inc30:                                        ; preds = %if.end
  %29 = load i32, i32* %i11, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %i11, align 4
  br label %for.cond12

for.end32:                                        ; preds = %for.cond12
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %countP, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %countTW, i64 0, i64 0
  %call35 = call zeroext i1 @_Z7comparePcS_(i8* %arraydecay33, i8* %arraydecay34)
  br i1 %call35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %for.end32
  %call37 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %N, align 4
  %31 = load i32, i32* %M, align 4
  %sub38 = sub nsw i32 %30, %31
  %call39 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call37, i32 %sub38)
  %call40 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call39, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %for.end32
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #7 {
entry:
  %retval = alloca i32, align 4
  %txt = alloca [11 x i8], align 1
  %pat = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i8]* %txt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.txt, i32 0, i32 0), i64 11, i1 false)
  %1 = bitcast [5 x i8]* %pat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.pat, i32 0, i32 0), i64 5, i1 false)
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %pat, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [11 x i8], [11 x i8]* %txt, i64 0, i64 0
  call void @_Z6searchPcS_(i8* %arraydecay, i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_anagram_substring_search_search_permutations.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
