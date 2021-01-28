; ModuleID = 'PE-benchmarks/sort-n-numbers-range-0-n2-1-linear-time.cpp'
source_filename = "PE-benchmarks/sort-n-numbers-range-0-n2-1-linear-time.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 40, i32 12, i32 45, i32 32, i32 33, i32 1, i32 22], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"Given array is n\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nSorted array is n\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sort_n_numbers_range_0_n2_1_linear_time.cpp, i8* null }]

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
define dso_local i32 @_Z9countSortPiii(i32* %arr, i32 %n, i32 %exp) #4 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %exp.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %__vla_expr1 = alloca i64, align 8
  %i2 = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %3 = load i32, i32* %n.addr, align 4
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  store i64 %4, i64* %__vla_expr1, align 8
  store i32 0, i32* %i2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i2, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i2, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla1, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i2, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.cond3
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %14 = load i32, i32* %exp.addr, align 4
  %div = sdiv i32 %13, %14
  %15 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %div, %15
  %idxprom8 = sext i32 %rem to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %arrayidx9, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body5
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond3

for.end13:                                        ; preds = %for.cond3
  store i32 1, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %for.end13
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond14
  %20 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom17
  %21 = load i32, i32* %arrayidx18, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom19
  %23 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %23, %21
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %24 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond14

for.end23:                                        ; preds = %for.cond14
  %25 = load i32, i32* %n.addr, align 4
  %sub24 = sub nsw i32 %25, 1
  store i32 %sub24, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc45, %for.end23
  %26 = load i32, i32* %i, align 4
  %cmp26 = icmp sge i32 %26, 0
  br i1 %cmp26, label %for.body27, label %for.end47

for.body27:                                       ; preds = %for.cond25
  %27 = load i32*, i32** %arr.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %27, i64 %idxprom28
  %29 = load i32, i32* %arrayidx29, align 4
  %30 = load i32*, i32** %arr.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %30, i64 %idxprom30
  %32 = load i32, i32* %arrayidx31, align 4
  %33 = load i32, i32* %exp.addr, align 4
  %div32 = sdiv i32 %32, %33
  %34 = load i32, i32* %n.addr, align 4
  %rem33 = srem i32 %div32, %34
  %idxprom34 = sext i32 %rem33 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom34
  %35 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %35, 1
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %vla, i64 %idxprom37
  store i32 %29, i32* %arrayidx38, align 4
  %36 = load i32*, i32** %arr.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %37 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %36, i64 %idxprom39
  %38 = load i32, i32* %arrayidx40, align 4
  %39 = load i32, i32* %exp.addr, align 4
  %div41 = sdiv i32 %38, %39
  %40 = load i32, i32* %n.addr, align 4
  %rem42 = srem i32 %div41, %40
  %idxprom43 = sext i32 %rem42 to i64
  %arrayidx44 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom43
  %41 = load i32, i32* %arrayidx44, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %arrayidx44, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body27
  %42 = load i32, i32* %i, align 4
  %dec46 = add nsw i32 %42, -1
  store i32 %dec46, i32* %i, align 4
  br label %for.cond25

for.end47:                                        ; preds = %for.cond25
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc55, %for.end47
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %43, %44
  br i1 %cmp49, label %for.body50, label %for.end57

for.body50:                                       ; preds = %for.cond48
  %45 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %vla, i64 %idxprom51
  %46 = load i32, i32* %arrayidx52, align 4
  %47 = load i32*, i32** %arr.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %48 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %47, i64 %idxprom53
  store i32 %46, i32* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body50
  %49 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %49, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond48

for.end57:                                        ; preds = %for.cond48
  call void @llvm.trap()
  unreachable

return:                                           ; No predecessors!
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z4sortPii(i32* %arr, i32 %n) #4 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call i32 @_Z9countSortPiii(i32* %0, i32 %1, i32 1)
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %call1 = call i32 @_Z9countSortPiii(i32* %2, i32 %3, i32 %4)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z8printArrPii(i32* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %4)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.arr to i8*), i64 28, i1 false)
  store i32 7, i32* %n, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  call void @_Z8printArrPii(i32* %arraydecay, i32 %1)
  %arraydecay1 = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  call void @_Z4sortPii(i32* %arraydecay1, i32 %2)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %arraydecay3 = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  call void @_Z8printArrPii(i32* %arraydecay3, i32 %3)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_sort_n_numbers_range_0_n2_1_linear_time.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
