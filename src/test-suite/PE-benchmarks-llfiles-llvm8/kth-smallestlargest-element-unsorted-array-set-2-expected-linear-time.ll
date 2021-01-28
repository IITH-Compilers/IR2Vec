; ModuleID = 'PE-benchmarks/kth-smallestlargest-element-unsorted-array-set-2-expected-linear-time.cpp'
source_filename = "PE-benchmarks/kth-smallestlargest-element-unsorted-array-set-2-expected-linear-time.cpp"
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
@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 12, i32 3, i32 5, i32 7, i32 4, i32 19, i32 26], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [26 x i8] c"K'th smallest element is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_kth_smallestlargest_element_unsorted_array_set_2_expected_linear_time.cpp, i8* null }]

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
define dso_local i32 @_Z11kthSmallestPiiii(i32* %arr, i32 %l, i32 %r, i32 %k) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %k.addr, align 4
  %2 = load i32, i32* %r.addr, align 4
  %3 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %cmp1 = icmp sle i32 %1, %add
  br i1 %cmp1, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32*, i32** %arr.addr, align 8
  %5 = load i32, i32* %l.addr, align 4
  %6 = load i32, i32* %r.addr, align 4
  %call = call i32 @_Z15randomPartitionPiii(i32* %4, i32 %5, i32 %6)
  store i32 %call, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  %8 = load i32, i32* %l.addr, align 4
  %sub2 = sub nsw i32 %7, %8
  %9 = load i32, i32* %k.addr, align 4
  %sub3 = sub nsw i32 %9, 1
  %cmp4 = icmp eq i32 %sub2, %sub3
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load i32*, i32** %arr.addr, align 8
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %13 = load i32, i32* %pos, align 4
  %14 = load i32, i32* %l.addr, align 4
  %sub6 = sub nsw i32 %13, %14
  %15 = load i32, i32* %k.addr, align 4
  %sub7 = sub nsw i32 %15, 1
  %cmp8 = icmp sgt i32 %sub6, %sub7
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %16 = load i32*, i32** %arr.addr, align 8
  %17 = load i32, i32* %l.addr, align 4
  %18 = load i32, i32* %pos, align 4
  %sub10 = sub nsw i32 %18, 1
  %19 = load i32, i32* %k.addr, align 4
  %call11 = call i32 @_Z11kthSmallestPiiii(i32* %16, i32 %17, i32 %sub10, i32 %19)
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %20 = load i32*, i32** %arr.addr, align 8
  %21 = load i32, i32* %pos, align 4
  %add13 = add nsw i32 %21, 1
  %22 = load i32, i32* %r.addr, align 4
  %23 = load i32, i32* %k.addr, align 4
  %24 = load i32, i32* %pos, align 4
  %sub14 = sub nsw i32 %23, %24
  %25 = load i32, i32* %l.addr, align 4
  %add15 = add nsw i32 %sub14, %25
  %sub16 = sub nsw i32 %add15, 1
  %call17 = call i32 @_Z11kthSmallestPiiii(i32* %20, i32 %add13, i32 %22, i32 %sub16)
  store i32 %call17, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %entry
  store i32 2147483647, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.end12, %if.then9, %if.then5
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z15randomPartitionPiii(i32* %arr, i32 %l, i32 %r) #4 {
entry:
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %pivot = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %1 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %n, align 4
  %call = call i32 @rand() #3
  %2 = load i32, i32* %n, align 4
  %rem = srem i32 %call, %2
  store i32 %rem, i32* %pivot, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %l.addr, align 4
  %5 = load i32, i32* %pivot, align 4
  %add1 = add nsw i32 %4, %5
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %r.addr, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  call void @_Z4swapPiS_(i32* %arrayidx, i32* %arrayidx3)
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %l.addr, align 4
  %10 = load i32, i32* %r.addr, align 4
  %call4 = call i32 @_Z9partitionPiii(i32* %8, i32 %9, i32 %10)
  ret i32 %call4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z4swapPiS_(i32* %a, i32* %b) #4 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z9partitionPiii(i32* %arr, i32 %l, i32 %r) #4 {
entry:
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %r.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %x, align 4
  %3 = load i32, i32* %l.addr, align 4
  store i32 %3, i32* %i, align 4
  %4 = load i32, i32* %l.addr, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %r.addr, align 4
  %sub = sub nsw i32 %6, 1
  %cmp = icmp sle i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %arr.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %x, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %13 = load i32*, i32** %arr.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  call void @_Z4swapPiS_(i32* %arrayidx5, i32* %arrayidx7)
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %arr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %19 = load i32*, i32** %arr.addr, align 8
  %20 = load i32, i32* %r.addr, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11
  call void @_Z4swapPiS_(i32* %arrayidx10, i32* %arrayidx12)
  %21 = load i32, i32* %i, align 4
  ret i32 %21
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 16
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.arr to i8*), i64 28, i1 false)
  store i32 7, i32* %n, align 4
  store i32 3, i32* %k, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %k, align 4
  %call1 = call i32 @_Z11kthSmallestPiiii(i32* %arraydecay, i32 0, i32 %sub, i32 %2)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_kth_smallestlargest_element_unsorted_array_set_2_expected_linear_time.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
