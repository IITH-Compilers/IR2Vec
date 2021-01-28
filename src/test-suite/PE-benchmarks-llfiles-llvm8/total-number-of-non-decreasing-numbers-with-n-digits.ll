; ModuleID = 'PE-benchmarks/total-number-of-non-decreasing-numbers-with-n-digits.cpp'
source_filename = "PE-benchmarks/total-number-of-non-decreasing-numbers-with-n-digits.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_total_number_of_non_decreasing_numbers_with_n_digits.cpp, i8* null }]

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
define dso_local i64 @_Z18countNonDecreasingi(i32 %n) #4 {
entry:
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %digit = alloca i32, align 4
  %len = alloca i32, align 4
  %x = alloca i32, align 4
  %count = alloca i64, align 8
  %i29 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %3 = mul nuw i64 10, %1
  %vla = alloca i64, i64 %3, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %4 = bitcast i64* %vla to i8*
  %5 = mul nuw i64 10, %1
  %6 = mul nuw i64 8, %5
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 %6, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = mul nsw i64 %idxprom, %1
  %arrayidx = getelementptr inbounds i64, i64* %vla, i64 %9
  %arrayidx1 = getelementptr inbounds i64, i64* %arrayidx, i64 1
  store i64 1, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %digit, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc26, %for.end
  %11 = load i32, i32* %digit, align 4
  %cmp3 = icmp sle i32 %11, 9
  br i1 %cmp3, label %for.body4, label %for.end28

for.body4:                                        ; preds = %for.cond2
  store i32 2, i32* %len, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc23, %for.body4
  %12 = load i32, i32* %len, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp sle i32 %12, %13
  br i1 %cmp6, label %for.body7, label %for.end25

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %x, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %for.body7
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %digit, align 4
  %cmp9 = icmp sle i32 %14, %15
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %16 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = mul nsw i64 %idxprom11, %1
  %arrayidx12 = getelementptr inbounds i64, i64* %vla, i64 %17
  %18 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %18, 1
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds i64, i64* %arrayidx12, i64 %idxprom13
  %19 = load i64, i64* %arrayidx14, align 8
  %20 = load i32, i32* %digit, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = mul nsw i64 %idxprom15, %1
  %arrayidx16 = getelementptr inbounds i64, i64* %vla, i64 %21
  %22 = load i32, i32* %len, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds i64, i64* %arrayidx16, i64 %idxprom17
  %23 = load i64, i64* %arrayidx18, align 8
  %add19 = add nsw i64 %23, %19
  store i64 %add19, i64* %arrayidx18, align 8
  br label %for.inc20

for.inc20:                                        ; preds = %for.body10
  %24 = load i32, i32* %x, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %x, align 4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %25 = load i32, i32* %len, align 4
  %inc24 = add nsw i32 %25, 1
  store i32 %inc24, i32* %len, align 4
  br label %for.cond5

for.end25:                                        ; preds = %for.cond5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %26 = load i32, i32* %digit, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* %digit, align 4
  br label %for.cond2

for.end28:                                        ; preds = %for.cond2
  store i64 0, i64* %count, align 8
  store i32 0, i32* %i29, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %for.end28
  %27 = load i32, i32* %i29, align 4
  %cmp31 = icmp slt i32 %27, 10
  br i1 %cmp31, label %for.body32, label %for.end40

for.body32:                                       ; preds = %for.cond30
  %28 = load i32, i32* %i29, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = mul nsw i64 %idxprom33, %1
  %arrayidx34 = getelementptr inbounds i64, i64* %vla, i64 %29
  %30 = load i32, i32* %n.addr, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds i64, i64* %arrayidx34, i64 %idxprom35
  %31 = load i64, i64* %arrayidx36, align 8
  %32 = load i64, i64* %count, align 8
  %add37 = add nsw i64 %32, %31
  store i64 %add37, i64* %count, align 8
  br label %for.inc38

for.inc38:                                        ; preds = %for.body32
  %33 = load i32, i32* %i29, align 4
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, i32* %i29, align 4
  br label %for.cond30

for.end40:                                        ; preds = %for.cond30
  %34 = load i64, i64* %count, align 8
  %35 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %35)
  ret i64 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 3, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %call = call i64 @_Z18countNonDecreasingi(i32 %0)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEx(%"class.std::basic_ostream"* @_ZSt4cout, i64 %call)
  ret i32 0
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEx(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_total_number_of_non_decreasing_numbers_with_n_digits.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
