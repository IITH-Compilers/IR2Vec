; ModuleID = 'PE-benchmarks/longest-even-length-substring-sum-first-second-half.cpp'
source_filename = "PE-benchmarks/longest-even-length-substring-sum-first-second-half.cpp"
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
@__const.main.str = private unnamed_addr constant [7 x i8] c"153803\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"Length of the substring is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_longest_even_length_substring_sum_first_second_half.cpp, i8* null }]

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
define dso_local i32 @_Z10findLengthPc(i8* %str) #4 {
entry:
  %str.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %i9 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %maxlen, align 4
  %1 = load i32, i32* %n, align 4
  %2 = zext i32 %1 to i64
  %3 = load i32, i32* %n, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %saved_stack, align 8
  %6 = mul nuw i64 %2, %4
  %vla = alloca i32, i64 %6, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i64 %4, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv1, 48
  %12 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom2, %4
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %13
  %14 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %arrayidx3, i64 %idxprom4
  store i32 %sub, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %len, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc50, %for.end
  %16 = load i32, i32* %len, align 4
  %17 = load i32, i32* %n, align 4
  %cmp7 = icmp sle i32 %16, %17
  br i1 %cmp7, label %for.body8, label %for.end52

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc47, %for.body8
  %18 = load i32, i32* %i9, align 4
  %19 = load i32, i32* %n, align 4
  %20 = load i32, i32* %len, align 4
  %sub11 = sub nsw i32 %19, %20
  %add = add nsw i32 %sub11, 1
  %cmp12 = icmp slt i32 %18, %add
  br i1 %cmp12, label %for.body13, label %for.end49

for.body13:                                       ; preds = %for.cond10
  %21 = load i32, i32* %i9, align 4
  %22 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %21, %22
  %sub15 = sub nsw i32 %add14, 1
  store i32 %sub15, i32* %j, align 4
  %23 = load i32, i32* %len, align 4
  %div = sdiv i32 %23, 2
  store i32 %div, i32* %k, align 4
  %24 = load i32, i32* %i9, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = mul nsw i64 %idxprom16, %4
  %arrayidx17 = getelementptr inbounds i32, i32* %vla, i64 %25
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %k, align 4
  %sub18 = sub nsw i32 %26, %27
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %arrayidx17, i64 %idxprom19
  %28 = load i32, i32* %arrayidx20, align 4
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %k, align 4
  %sub21 = sub nsw i32 %29, %30
  %add22 = add nsw i32 %sub21, 1
  %idxprom23 = sext i32 %add22 to i64
  %31 = mul nsw i64 %idxprom23, %4
  %arrayidx24 = getelementptr inbounds i32, i32* %vla, i64 %31
  %32 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %arrayidx24, i64 %idxprom25
  %33 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %28, %33
  %34 = load i32, i32* %i9, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = mul nsw i64 %idxprom28, %4
  %arrayidx29 = getelementptr inbounds i32, i32* %vla, i64 %35
  %36 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %arrayidx29, i64 %idxprom30
  store i32 %add27, i32* %arrayidx31, align 4
  %37 = load i32, i32* %len, align 4
  %rem = srem i32 %37, 2
  %cmp32 = icmp eq i32 %rem, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body13
  %38 = load i32, i32* %i9, align 4
  %idxprom33 = sext i32 %38 to i64
  %39 = mul nsw i64 %idxprom33, %4
  %arrayidx34 = getelementptr inbounds i32, i32* %vla, i64 %39
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %k, align 4
  %sub35 = sub nsw i32 %40, %41
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %arrayidx34, i64 %idxprom36
  %42 = load i32, i32* %arrayidx37, align 4
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %k, align 4
  %sub38 = sub nsw i32 %43, %44
  %add39 = add nsw i32 %sub38, 1
  %idxprom40 = sext i32 %add39 to i64
  %45 = mul nsw i64 %idxprom40, %4
  %arrayidx41 = getelementptr inbounds i32, i32* %vla, i64 %45
  %46 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %arrayidx41, i64 %idxprom42
  %47 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %42, %47
  br i1 %cmp44, label %land.lhs.true45, label %if.end

land.lhs.true45:                                  ; preds = %land.lhs.true
  %48 = load i32, i32* %len, align 4
  %49 = load i32, i32* %maxlen, align 4
  %cmp46 = icmp sgt i32 %48, %49
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true45
  %50 = load i32, i32* %len, align 4
  store i32 %50, i32* %maxlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true45, %land.lhs.true, %for.body13
  br label %for.inc47

for.inc47:                                        ; preds = %if.end
  %51 = load i32, i32* %i9, align 4
  %inc48 = add nsw i32 %51, 1
  store i32 %inc48, i32* %i9, align 4
  br label %for.cond10

for.end49:                                        ; preds = %for.cond10
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %52 = load i32, i32* %len, align 4
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, i32* %len, align 4
  br label %for.cond6

for.end52:                                        ; preds = %for.cond6
  %53 = load i32, i32* %maxlen, align 4
  %54 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [7 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.str, i32 0, i32 0), i64 7, i1 false)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1 = call i32 @_Z10findLengthPc(i8* %arraydecay)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_longest_even_length_substring_sum_first_second_half.cpp() #0 section ".text.startup" {
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
