; ModuleID = 'PE-benchmarks/efficient-constructtion-of-finite-automata.cpp'
source_filename = "PE-benchmarks/efficient-constructtion-of-finite-automata.cpp"
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
@.str = private unnamed_addr constant [24 x i8] c"pattern found at index \00", align 1
@__const.main.txt = private unnamed_addr constant [16 x i8] c"GEEKS FOR GEEKS\00", align 16
@__const.main.pat = private unnamed_addr constant [6 x i8] c"GEEKS\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_efficient_constructtion_of_finite_automata.cpp, i8* null }]

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
define dso_local void @_Z15computeTransFunPciPA256_i(i8* %pat, i32 %M, [256 x i32]* %TF) #4 {
entry:
  %pat.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %TF.addr = alloca [256 x i32]*, align 8
  %i = alloca i32, align 4
  %lps = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store [256 x i32]* %TF, [256 x i32]** %TF.addr, align 8
  store i32 0, i32* %lps, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %x, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0
  %5 = load i8*, i8** %pat.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = sext i8 %6 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx2, i64 0, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc36, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %M.addr, align 4
  %cmp7 = icmp sle i32 %7, %8
  br i1 %cmp7, label %for.body8, label %for.end38

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %x, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc20, %for.body8
  %9 = load i32, i32* %x, align 4
  %cmp10 = icmp slt i32 %9, 256
  br i1 %cmp10, label %for.body11, label %for.end22

for.body11:                                       ; preds = %for.cond9
  %10 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %11 = load i32, i32* %lps, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 %idxprom12
  %12 = load i32, i32* %x, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 %idxprom16
  %16 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx17, i64 0, i64 %idxprom18
  store i32 %13, i32* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body11
  %17 = load i32, i32* %x, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* %x, align 4
  br label %for.cond9

for.end22:                                        ; preds = %for.cond9
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  %19 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 %idxprom23
  %21 = load i8*, i8** %pat.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %idxprom27 = sext i8 %23 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx24, i64 0, i64 %idxprom27
  store i32 %add, i32* %arrayidx28, align 4
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %M.addr, align 4
  %cmp29 = icmp slt i32 %24, %25
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.end22
  %26 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %27 = load i32, i32* %lps, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [256 x i32], [256 x i32]* %26, i64 %idxprom30
  %28 = load i8*, i8** %pat.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %28, i64 %idxprom32
  %30 = load i8, i8* %arrayidx33, align 1
  %idxprom34 = sext i8 %30 to i64
  %arrayidx35 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx31, i64 0, i64 %idxprom34
  %31 = load i32, i32* %arrayidx35, align 4
  store i32 %31, i32* %lps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end22
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond6

for.end38:                                        ; preds = %for.cond6
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z6searchPcS_(i8* %pat, i8* %txt) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %txt.addr = alloca i8*, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  %2 = load i32, i32* %M, align 4
  %add = add nsw i32 %2, 1
  %3 = zext i32 %add to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca [256 x i32], i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  %5 = load i8*, i8** %pat.addr, align 8
  %6 = load i32, i32* %M, align 4
  call void @_Z15computeTransFunPciPA256_i(i8* %5, i32 %6, [256 x i32]* %vla)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %vla, i64 %idxprom
  %10 = load i8*, i8** %txt.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  %12 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = sext i8 %12 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i64 0, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  store i32 %13, i32* %j, align 4
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %M, align 4
  %cmp7 = icmp eq i32 %14, %15
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %16, %17
  %add9 = add nsw i32 %sub, 1
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call8, i32 %add9)
  %call11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call10, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %19)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %txt = alloca [16 x i8], align 16
  %pat = alloca [6 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [16 x i8]* %txt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.txt, i32 0, i32 0), i64 16, i1 false)
  %1 = bitcast [6 x i8]* %pat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.pat, i32 0, i32 0), i64 6, i1 false)
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %pat, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %txt, i32 0, i32 0
  call void @_Z6searchPcS_(i8* %arraydecay, i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_efficient_constructtion_of_finite_automata.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
