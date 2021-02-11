; ModuleID = 'temp/shortest-common-supersequence.cpp'
source_filename = "temp/shortest-common-supersequence.cpp"
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

$_ZSt3minIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.X = private unnamed_addr constant [7 x i8] c"AGGTAB\00", align 1
@__const.main.Y = private unnamed_addr constant [8 x i8] c"GXTXAYB\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [41 x i8] c"Length of the shortest supersequence is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_shortest_common_supersequence.cpp, i8* null }]

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
define dso_local i32 @_Z8superSeqPcS_ii(i8* %X, i8* %Y, i32 %m, i32 %n) #0 {
entry:
  %X.addr = alloca i8*, align 8
  %Y.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %X, i8** %X.addr, align 8
  store i8* %Y, i8** %Y.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = load i32, i32* %n.addr, align 4
  %add1 = add nsw i32 %2, 1
  %3 = zext i32 %add1 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 %3, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %m.addr, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp sle i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body4
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %13
  %14 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom5
  store i32 %11, i32* %arrayidx6, align 4
  br label %if.end50

if.else:                                          ; preds = %for.body4
  %15 = load i32, i32* %j, align 4
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.else
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = mul nsw i64 %idxprom9, %3
  %arrayidx10 = getelementptr inbounds i32, i32* %vla, i64 %18
  %19 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %arrayidx10, i64 %idxprom11
  store i32 %16, i32* %arrayidx12, align 4
  br label %if.end49

if.else13:                                        ; preds = %if.else
  %20 = load i8*, i8** %X.addr, align 8
  %21 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %idxprom14
  %22 = load i8, i8* %arrayidx15, align 1
  %conv = sext i8 %22 to i32
  %23 = load i8*, i8** %Y.addr, align 8
  %24 = load i32, i32* %j, align 4
  %sub16 = sub nsw i32 %24, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 %idxprom17
  %25 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %25 to i32
  %cmp20 = icmp eq i32 %conv, %conv19
  br i1 %cmp20, label %if.then21, label %if.else33

if.then21:                                        ; preds = %if.else13
  %26 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 %26, 1
  %idxprom23 = sext i32 %sub22 to i64
  %27 = mul nsw i64 %idxprom23, %3
  %arrayidx24 = getelementptr inbounds i32, i32* %vla, i64 %27
  %28 = load i32, i32* %j, align 4
  %sub25 = sub nsw i32 %28, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %arrayidx24, i64 %idxprom26
  %29 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 1, %29
  %30 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = mul nsw i64 %idxprom29, %3
  %arrayidx30 = getelementptr inbounds i32, i32* %vla, i64 %31
  %32 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %arrayidx30, i64 %idxprom31
  store i32 %add28, i32* %arrayidx32, align 4
  br label %if.end

if.else33:                                        ; preds = %if.else13
  %33 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 %33, 1
  %idxprom35 = sext i32 %sub34 to i64
  %34 = mul nsw i64 %idxprom35, %3
  %arrayidx36 = getelementptr inbounds i32, i32* %vla, i64 %34
  %35 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %arrayidx36, i64 %idxprom37
  %36 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = mul nsw i64 %idxprom39, %3
  %arrayidx40 = getelementptr inbounds i32, i32* %vla, i64 %37
  %38 = load i32, i32* %j, align 4
  %sub41 = sub nsw i32 %38, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %arrayidx40, i64 %idxprom42
  %call = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %arrayidx38, i32* dereferenceable(4) %arrayidx43)
  %39 = load i32, i32* %call, align 4
  %add44 = add nsw i32 1, %39
  %40 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = mul nsw i64 %idxprom45, %3
  %arrayidx46 = getelementptr inbounds i32, i32* %vla, i64 %41
  %42 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %arrayidx46, i64 %idxprom47
  store i32 %add44, i32* %arrayidx48, align 4
  br label %if.end

if.end:                                           ; preds = %if.else33, %if.then21
  br label %if.end49

if.end49:                                         ; preds = %if.end, %if.then8
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %43 = load i32, i32* %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %44 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %44, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  %45 = load i32, i32* %m.addr, align 4
  %idxprom54 = sext i32 %45 to i64
  %46 = mul nsw i64 %idxprom54, %3
  %arrayidx55 = getelementptr inbounds i32, i32* %vla, i64 %46
  %47 = load i32, i32* %n.addr, align 4
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %arrayidx55, i64 %idxprom56
  %48 = load i32, i32* %arrayidx57, align 4
  %49 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #4 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__b.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__a.addr, align 8
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

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %X = alloca [7 x i8], align 1
  %Y = alloca [8 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i8]* %X to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.X, i32 0, i32 0), i64 7, i1 false)
  %1 = bitcast [8 x i8]* %Y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.Y, i32 0, i32 0), i64 8, i1 false)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %X, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %Y, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x i8], [7 x i8]* %X, i64 0, i64 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #8
  %conv = trunc i64 %call3 to i32
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %Y, i64 0, i64 0
  %call5 = call i64 @strlen(i8* %arraydecay4) #8
  %conv6 = trunc i64 %call5 to i32
  %call7 = call i32 @_Z8superSeqPcS_ii(i8* %arraydecay, i8* %arraydecay1, i32 %conv, i32 %conv6)
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call7)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_shortest_common_supersequence.cpp() #0 section ".text.startup" {
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
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
