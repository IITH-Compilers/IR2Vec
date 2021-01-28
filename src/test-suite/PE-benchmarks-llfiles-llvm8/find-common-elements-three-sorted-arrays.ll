; ModuleID = 'PE-benchmarks/find-common-elements-three-sorted-arrays.cpp'
source_filename = "PE-benchmarks/find-common-elements-three-sorted-arrays.cpp"
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
@__const.main.ar1 = private unnamed_addr constant [6 x i32] [i32 1, i32 5, i32 10, i32 20, i32 40, i32 80], align 16
@__const.main.ar2 = private unnamed_addr constant [5 x i32] [i32 6, i32 7, i32 20, i32 80, i32 100], align 16
@__const.main.ar3 = private unnamed_addr constant [8 x i32] [i32 3, i32 4, i32 15, i32 20, i32 30, i32 70, i32 80, i32 120], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"Common Elements are \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_find_common_elements_three_sorted_arrays.cpp, i8* null }]

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
define dso_local void @_Z10findCommonPiS_S_iii(i32* %ar1, i32* %ar2, i32* %ar3, i32 %n1, i32 %n2, i32 %n3) #0 {
entry:
  %ar1.addr = alloca i32*, align 8
  %ar2.addr = alloca i32*, align 8
  %ar3.addr = alloca i32*, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %n3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %ar1, i32** %ar1.addr, align 8
  store i32* %ar2, i32** %ar2.addr, align 8
  store i32* %ar3, i32** %ar3.addr, align 8
  store i32 %n1, i32* %n1.addr, align 4
  store i32 %n2, i32* %n2.addr, align 4
  store i32 %n3, i32* %n3.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n2.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %n3.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32*, i32** %ar1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32*, i32** %ar2.addr, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %9, %12
  br i1 %cmp5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %while.body
  %13 = load i32*, i32** %ar2.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %16 = load i32*, i32** %ar3.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %15, %18
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true6
  %19 = load i32*, i32** %ar1.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  %21 = load i32, i32* %arrayidx13, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %21)
  %call14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %j, align 4
  %24 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, i32* %k, align 4
  br label %if.end35

if.else:                                          ; preds = %land.lhs.true6, %while.body
  %25 = load i32*, i32** %ar1.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom17
  %27 = load i32, i32* %arrayidx18, align 4
  %28 = load i32*, i32** %ar2.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i64 %idxprom19
  %30 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp slt i32 %27, %30
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  %31 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %i, align 4
  br label %if.end34

if.else24:                                        ; preds = %if.else
  %32 = load i32*, i32** %ar2.addr, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i64 %idxprom25
  %34 = load i32, i32* %arrayidx26, align 4
  %35 = load i32*, i32** %ar3.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %35, i64 %idxprom27
  %37 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp slt i32 %34, %37
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else24
  %38 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %j, align 4
  br label %if.end

if.else32:                                        ; preds = %if.else24
  %39 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %39, 1
  store i32 %inc33, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then30
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then22
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %ar1 = alloca [6 x i32], align 16
  %ar2 = alloca [5 x i32], align 16
  %ar3 = alloca [8 x i32], align 16
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n3 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %ar1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.ar1 to i8*), i64 24, i1 false)
  %1 = bitcast [5 x i32]* %ar2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.main.ar2 to i8*), i64 20, i1 false)
  %2 = bitcast [8 x i32]* %ar3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([8 x i32]* @__const.main.ar3 to i8*), i64 32, i1 false)
  store i32 6, i32* %n1, align 4
  store i32 5, i32* %n2, align 4
  store i32 8, i32* %n3, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %ar1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %ar2, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [8 x i32], [8 x i32]* %ar3, i32 0, i32 0
  %3 = load i32, i32* %n1, align 4
  %4 = load i32, i32* %n2, align 4
  %5 = load i32, i32* %n3, align 4
  call void @_Z10findCommonPiS_S_iii(i32* %arraydecay, i32* %arraydecay1, i32* %arraydecay2, i32 %3, i32 %4, i32 %5)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_find_common_elements_three_sorted_arrays.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
