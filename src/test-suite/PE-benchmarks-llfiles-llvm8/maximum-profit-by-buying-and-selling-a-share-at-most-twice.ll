; ModuleID = 'PE-benchmarks/maximum-profit-by-buying-and-selling-a-share-at-most-twice.cpp'
source_filename = "PE-benchmarks/maximum-profit-by-buying-and-selling-a-share-at-most-twice.cpp"
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

$_ZSt3maxIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.price = private unnamed_addr constant [7 x i32] [i32 2, i32 30, i32 15, i32 10, i32 8, i32 25, i32 80], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [18 x i8] c"Maximum Profit = \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_maximum_profit_by_buying_and_selling_a_share_at_most_twice.cpp, i8* null }]

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
define dso_local i32 @_Z9maxProfitPii(i32* %price, i32 %n) #0 {
entry:
  %price.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %profit = alloca i32*, align 8
  %i = alloca i32, align 4
  %max_price = alloca i32, align 4
  %i3 = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %min_price = alloca i32, align 4
  %i24 = alloca i32, align 4
  %ref.tmp38 = alloca i32, align 4
  %result = alloca i32, align 4
  store i32* %price, i32** %price.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = call i8* @_Znam(i64 %4) #10
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %profit, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %profit, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32*, i32** %price.addr, align 8
  %12 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %11, i64 %idxprom1
  %13 = load i32, i32* %arrayidx2, align 4
  store i32 %13, i32* %max_price, align 4
  %14 = load i32, i32* %n.addr, align 4
  %sub4 = sub nsw i32 %14, 2
  store i32 %sub4, i32* %i3, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc21, %for.end
  %15 = load i32, i32* %i3, align 4
  %cmp6 = icmp sge i32 %15, 0
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %16 = load i32*, i32** %price.addr, align 8
  %17 = load i32, i32* %i3, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %19 = load i32, i32* %max_price, align 4
  %cmp10 = icmp sgt i32 %18, %19
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %20 = load i32*, i32** %price.addr, align 8
  %21 = load i32, i32* %i3, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom11
  %22 = load i32, i32* %arrayidx12, align 4
  store i32 %22, i32* %max_price, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %23 = load i32*, i32** %profit, align 8
  %24 = load i32, i32* %i3, align 4
  %add = add nsw i32 %24, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  %25 = load i32, i32* %max_price, align 4
  %26 = load i32*, i32** %price.addr, align 8
  %27 = load i32, i32* %i3, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  %28 = load i32, i32* %arrayidx16, align 4
  %sub17 = sub nsw i32 %25, %28
  store i32 %sub17, i32* %ref.tmp, align 4
  %call18 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %arrayidx14, i32* dereferenceable(4) %ref.tmp)
  %29 = load i32, i32* %call18, align 4
  %30 = load i32*, i32** %profit, align 8
  %31 = load i32, i32* %i3, align 4
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 %idxprom19
  store i32 %29, i32* %arrayidx20, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %32 = load i32, i32* %i3, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %i3, align 4
  br label %for.cond5

for.end22:                                        ; preds = %for.cond5
  %33 = load i32*, i32** %price.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %33, i64 0
  %34 = load i32, i32* %arrayidx23, align 4
  store i32 %34, i32* %min_price, align 4
  store i32 1, i32* %i24, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc48, %for.end22
  %35 = load i32, i32* %i24, align 4
  %36 = load i32, i32* %n.addr, align 4
  %cmp26 = icmp slt i32 %35, %36
  br i1 %cmp26, label %for.body27, label %for.end50

for.body27:                                       ; preds = %for.cond25
  %37 = load i32*, i32** %price.addr, align 8
  %38 = load i32, i32* %i24, align 4
  %idxprom28 = sext i32 %38 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  %39 = load i32, i32* %arrayidx29, align 4
  %40 = load i32, i32* %min_price, align 4
  %cmp30 = icmp slt i32 %39, %40
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %for.body27
  %41 = load i32*, i32** %price.addr, align 8
  %42 = load i32, i32* %i24, align 4
  %idxprom32 = sext i32 %42 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %41, i64 %idxprom32
  %43 = load i32, i32* %arrayidx33, align 4
  store i32 %43, i32* %min_price, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %for.body27
  %44 = load i32*, i32** %profit, align 8
  %45 = load i32, i32* %i24, align 4
  %sub35 = sub nsw i32 %45, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %44, i64 %idxprom36
  %46 = load i32*, i32** %profit, align 8
  %47 = load i32, i32* %i24, align 4
  %idxprom39 = sext i32 %47 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %46, i64 %idxprom39
  %48 = load i32, i32* %arrayidx40, align 4
  %49 = load i32*, i32** %price.addr, align 8
  %50 = load i32, i32* %i24, align 4
  %idxprom41 = sext i32 %50 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %49, i64 %idxprom41
  %51 = load i32, i32* %arrayidx42, align 4
  %52 = load i32, i32* %min_price, align 4
  %sub43 = sub nsw i32 %51, %52
  %add44 = add nsw i32 %48, %sub43
  store i32 %add44, i32* %ref.tmp38, align 4
  %call45 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %arrayidx37, i32* dereferenceable(4) %ref.tmp38)
  %53 = load i32, i32* %call45, align 4
  %54 = load i32*, i32** %profit, align 8
  %55 = load i32, i32* %i24, align 4
  %idxprom46 = sext i32 %55 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %54, i64 %idxprom46
  store i32 %53, i32* %arrayidx47, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %if.end34
  %56 = load i32, i32* %i24, align 4
  %inc49 = add nsw i32 %56, 1
  store i32 %inc49, i32* %i24, align 4
  br label %for.cond25

for.end50:                                        ; preds = %for.cond25
  %57 = load i32*, i32** %profit, align 8
  %58 = load i32, i32* %n.addr, align 4
  %sub51 = sub nsw i32 %58, 1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 %idxprom52
  %59 = load i32, i32* %arrayidx53, align 4
  store i32 %59, i32* %result, align 4
  %60 = load i32*, i32** %profit, align 8
  %isnull = icmp eq i32* %60, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end50
  %61 = bitcast i32* %60 to i8*
  call void @_ZdaPv(i8* %61) #11
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end50
  %62 = load i32, i32* %result, align 4
  ret i32 %62
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #6 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #7

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #8 {
entry:
  %retval = alloca i32, align 4
  %price = alloca [7 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %price to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.price to i8*), i64 28, i1 false)
  store i32 7, i32* %n, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %price, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %call1 = call i32 @_Z9maxProfitPii(i32* %arraydecay, i32 %1)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #9

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_maximum_profit_by_buying_and_selling_a_share_at_most_twice.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { builtin }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
