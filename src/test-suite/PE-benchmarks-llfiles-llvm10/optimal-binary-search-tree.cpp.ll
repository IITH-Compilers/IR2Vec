; ModuleID = 'temp/optimal-binary-search-tree.cpp'
source_filename = "temp/optimal-binary-search-tree.cpp"
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
@__const.main.keys = private unnamed_addr constant [3 x i32] [i32 10, i32 12, i32 20], align 4
@__const.main.freq = private unnamed_addr constant [3 x i32] [i32 34, i32 8, i32 50], align 4
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [24 x i8] c"Cost of Optimal BST is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_optimal_binary_search_tree.cpp, i8* null }]

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
define dso_local i32 @_Z17optimalSearchTreePiS_i(i32* %keys, i32* %freq, i32 %n) #0 {
entry:
  %keys.addr = alloca i32*, align 8
  %freq.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  %i8 = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store i32* %keys, i32** %keys.addr, align 8
  store i32* %freq, i32** %freq.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %n.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 %3, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %freq.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = mul nsw i64 %idxprom1, %3
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %12
  %13 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %arrayidx2, i64 %idxprom3
  store i32 %10, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %L, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc54, %for.end
  %15 = load i32, i32* %L, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp sle i32 %15, %16
  br i1 %cmp6, label %for.body7, label %for.end56

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc51, %for.body7
  %17 = load i32, i32* %i8, align 4
  %18 = load i32, i32* %n.addr, align 4
  %19 = load i32, i32* %L, align 4
  %sub = sub nsw i32 %18, %19
  %add = add nsw i32 %sub, 1
  %cmp10 = icmp sle i32 %17, %add
  br i1 %cmp10, label %for.body11, label %for.end53

for.body11:                                       ; preds = %for.cond9
  %20 = load i32, i32* %i8, align 4
  %21 = load i32, i32* %L, align 4
  %add12 = add nsw i32 %20, %21
  %sub13 = sub nsw i32 %add12, 1
  store i32 %sub13, i32* %j, align 4
  %22 = load i32, i32* %i8, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = mul nsw i64 %idxprom14, %3
  %arrayidx15 = getelementptr inbounds i32, i32* %vla, i64 %23
  %24 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %arrayidx15, i64 %idxprom16
  store i32 2147483647, i32* %arrayidx17, align 4
  %25 = load i32, i32* %i8, align 4
  store i32 %25, i32* %r, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc48, %for.body11
  %26 = load i32, i32* %r, align 4
  %27 = load i32, i32* %j, align 4
  %cmp19 = icmp sle i32 %26, %27
  br i1 %cmp19, label %for.body20, label %for.end50

for.body20:                                       ; preds = %for.cond18
  %28 = load i32, i32* %r, align 4
  %29 = load i32, i32* %i8, align 4
  %cmp21 = icmp sgt i32 %28, %29
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body20
  %30 = load i32, i32* %i8, align 4
  %idxprom22 = sext i32 %30 to i64
  %31 = mul nsw i64 %idxprom22, %3
  %arrayidx23 = getelementptr inbounds i32, i32* %vla, i64 %31
  %32 = load i32, i32* %r, align 4
  %sub24 = sub nsw i32 %32, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %arrayidx23, i64 %idxprom25
  %33 = load i32, i32* %arrayidx26, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ 0, %cond.false ]
  %34 = load i32, i32* %r, align 4
  %35 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %34, %35
  br i1 %cmp27, label %cond.true28, label %cond.false34

cond.true28:                                      ; preds = %cond.end
  %36 = load i32, i32* %r, align 4
  %add29 = add nsw i32 %36, 1
  %idxprom30 = sext i32 %add29 to i64
  %37 = mul nsw i64 %idxprom30, %3
  %arrayidx31 = getelementptr inbounds i32, i32* %vla, i64 %37
  %38 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %arrayidx31, i64 %idxprom32
  %39 = load i32, i32* %arrayidx33, align 4
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true28
  %cond36 = phi i32 [ %39, %cond.true28 ], [ 0, %cond.false34 ]
  %add37 = add nsw i32 %cond, %cond36
  %40 = load i32*, i32** %freq.addr, align 8
  %41 = load i32, i32* %i8, align 4
  %42 = load i32, i32* %j, align 4
  %call = call i32 @_Z3sumPiii(i32* %40, i32 %41, i32 %42)
  %add38 = add nsw i32 %add37, %call
  store i32 %add38, i32* %c, align 4
  %43 = load i32, i32* %c, align 4
  %44 = load i32, i32* %i8, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = mul nsw i64 %idxprom39, %3
  %arrayidx40 = getelementptr inbounds i32, i32* %vla, i64 %45
  %46 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %arrayidx40, i64 %idxprom41
  %47 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp slt i32 %43, %47
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end35
  %48 = load i32, i32* %c, align 4
  %49 = load i32, i32* %i8, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = mul nsw i64 %idxprom44, %3
  %arrayidx45 = getelementptr inbounds i32, i32* %vla, i64 %50
  %51 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %arrayidx45, i64 %idxprom46
  store i32 %48, i32* %arrayidx47, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end35
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %52 = load i32, i32* %r, align 4
  %inc49 = add nsw i32 %52, 1
  store i32 %inc49, i32* %r, align 4
  br label %for.cond18

for.end50:                                        ; preds = %for.cond18
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %53 = load i32, i32* %i8, align 4
  %inc52 = add nsw i32 %53, 1
  store i32 %inc52, i32* %i8, align 4
  br label %for.cond9

for.end53:                                        ; preds = %for.cond9
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %54 = load i32, i32* %L, align 4
  %inc55 = add nsw i32 %54, 1
  store i32 %inc55, i32* %L, align 4
  br label %for.cond5

for.end56:                                        ; preds = %for.cond5
  %55 = mul nsw i64 0, %3
  %arrayidx57 = getelementptr inbounds i32, i32* %vla, i64 %55
  %56 = load i32, i32* %n.addr, align 4
  %sub58 = sub nsw i32 %56, 1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %arrayidx57, i64 %idxprom59
  %57 = load i32, i32* %arrayidx60, align 4
  %58 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3sumPiii(i32* %freq, i32 %i, i32 %j) #4 {
entry:
  %freq.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %freq, i32** %freq.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %i.addr, align 4
  store i32 %0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %j.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %freq.addr, align 8
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %s, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %keys = alloca [3 x i32], align 4
  %freq = alloca [3 x i32], align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %keys to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.keys to i8*), i64 12, i1 false)
  %1 = bitcast [3 x i32]* %freq to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([3 x i32]* @__const.main.freq to i8*), i64 12, i1 false)
  store i32 3, i32* %n, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %keys, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [3 x i32], [3 x i32]* %freq, i64 0, i64 0
  %2 = load i32, i32* %n, align 4
  %call2 = call i32 @_Z17optimalSearchTreePiS_i(i32* %arraydecay, i32* %arraydecay1, i32 %2)
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_optimal_binary_search_tree.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
