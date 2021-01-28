; ModuleID = 'temp/matrix-chain-multiplication.cpp'
source_filename = "temp/matrix-chain-multiplication.cpp"
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
@__const.main.arr = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [38 x i8] c"Minimum number of multiplications is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_matrix_chain_multiplication.cpp, i8* null }]

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
define dso_local i32 @_Z16MatrixChainOrderPii(i32* %p, i32 %n) #4 {
entry:
  %p.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %L = alloca i32, align 4
  %q = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
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
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %9
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %L, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc53, %for.end
  %12 = load i32, i32* %L, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body5, label %for.end55

for.body5:                                        ; preds = %for.cond3
  store i32 1, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc50, %for.body5
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n.addr, align 4
  %16 = load i32, i32* %L, align 4
  %sub = sub nsw i32 %15, %16
  %add = add nsw i32 %sub, 1
  %cmp7 = icmp slt i32 %14, %add
  br i1 %cmp7, label %for.body8, label %for.end52

for.body8:                                        ; preds = %for.cond6
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %L, align 4
  %add9 = add nsw i32 %17, %18
  %sub10 = sub nsw i32 %add9, 1
  store i32 %sub10, i32* %j, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = mul nsw i64 %idxprom11, %3
  %arrayidx12 = getelementptr inbounds i32, i32* %vla, i64 %20
  %21 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %arrayidx12, i64 %idxprom13
  store i32 2147483647, i32* %arrayidx14, align 4
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc47, %for.body8
  %23 = load i32, i32* %k, align 4
  %24 = load i32, i32* %j, align 4
  %sub16 = sub nsw i32 %24, 1
  %cmp17 = icmp sle i32 %23, %sub16
  br i1 %cmp17, label %for.body18, label %for.end49

for.body18:                                       ; preds = %for.cond15
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = mul nsw i64 %idxprom19, %3
  %arrayidx20 = getelementptr inbounds i32, i32* %vla, i64 %26
  %27 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %arrayidx20, i64 %idxprom21
  %28 = load i32, i32* %arrayidx22, align 4
  %29 = load i32, i32* %k, align 4
  %add23 = add nsw i32 %29, 1
  %idxprom24 = sext i32 %add23 to i64
  %30 = mul nsw i64 %idxprom24, %3
  %arrayidx25 = getelementptr inbounds i32, i32* %vla, i64 %30
  %31 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %arrayidx25, i64 %idxprom26
  %32 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %28, %32
  %33 = load i32*, i32** %p.addr, align 8
  %34 = load i32, i32* %i, align 4
  %sub29 = sub nsw i32 %34, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %33, i64 %idxprom30
  %35 = load i32, i32* %arrayidx31, align 4
  %36 = load i32*, i32** %p.addr, align 8
  %37 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %36, i64 %idxprom32
  %38 = load i32, i32* %arrayidx33, align 4
  %mul = mul nsw i32 %35, %38
  %39 = load i32*, i32** %p.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %39, i64 %idxprom34
  %41 = load i32, i32* %arrayidx35, align 4
  %mul36 = mul nsw i32 %mul, %41
  %add37 = add nsw i32 %add28, %mul36
  store i32 %add37, i32* %q, align 4
  %42 = load i32, i32* %q, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom38, %3
  %arrayidx39 = getelementptr inbounds i32, i32* %vla, i64 %44
  %45 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %arrayidx39, i64 %idxprom40
  %46 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp slt i32 %42, %46
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %47 = load i32, i32* %q, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %48 to i64
  %49 = mul nsw i64 %idxprom43, %3
  %arrayidx44 = getelementptr inbounds i32, i32* %vla, i64 %49
  %50 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %50 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %arrayidx44, i64 %idxprom45
  store i32 %47, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %for.inc47

for.inc47:                                        ; preds = %if.end
  %51 = load i32, i32* %k, align 4
  %inc48 = add nsw i32 %51, 1
  store i32 %inc48, i32* %k, align 4
  br label %for.cond15

for.end49:                                        ; preds = %for.cond15
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %52 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond6

for.end52:                                        ; preds = %for.cond6
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %53 = load i32, i32* %L, align 4
  %inc54 = add nsw i32 %53, 1
  store i32 %inc54, i32* %L, align 4
  br label %for.cond3

for.end55:                                        ; preds = %for.cond3
  %54 = mul nsw i64 1, %3
  %arrayidx56 = getelementptr inbounds i32, i32* %vla, i64 %54
  %55 = load i32, i32* %n.addr, align 4
  %sub57 = sub nsw i32 %55, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %arrayidx56, i64 %idxprom58
  %56 = load i32, i32* %arrayidx59, align 4
  %57 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [4 x i32], align 16
  %size = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.arr to i8*), i64 16, i1 false)
  store i32 4, i32* %size, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arr, i64 0, i64 0
  %1 = load i32, i32* %size, align 4
  %call1 = call i32 @_Z16MatrixChainOrderPii(i32* %arraydecay, i32 %1)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  %call3 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local i32 @getchar() #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_matrix_chain_multiplication.cpp() #0 section ".text.startup" {
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
