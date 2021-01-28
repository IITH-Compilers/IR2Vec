; ModuleID = 'PE-benchmarks/union-find.cpp'
source_filename = "PE-benchmarks/union-find.cpp"
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
%class.Graph = type { i32, i32, %class.Edge* }
%class.Edge = type { i32, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [21 x i8] c"graph contains cycle\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"graph doesn't contain cycle\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_union_find.cpp, i8* null }]

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
define dso_local %class.Graph* @_Z11createGraphii(i32 %V, i32 %E) #0 {
entry:
  %V.addr = alloca i32, align 4
  %E.addr = alloca i32, align 4
  %graph = alloca %class.Graph*, align 8
  store i32 %V, i32* %V.addr, align 4
  store i32 %E, i32* %E.addr, align 4
  %call = call i8* @_Znwm(i64 16) #8
  %0 = bitcast i8* %call to %class.Graph*
  %1 = bitcast %class.Graph* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 16, i1 false)
  store %class.Graph* %0, %class.Graph** %graph, align 8
  %2 = load i32, i32* %V.addr, align 4
  %3 = load %class.Graph*, %class.Graph** %graph, align 8
  %V1 = getelementptr inbounds %class.Graph, %class.Graph* %3, i32 0, i32 0
  store i32 %2, i32* %V1, align 8
  %4 = load i32, i32* %E.addr, align 4
  %5 = load %class.Graph*, %class.Graph** %graph, align 8
  %E2 = getelementptr inbounds %class.Graph, %class.Graph* %5, i32 0, i32 1
  store i32 %4, i32* %E2, align 4
  %6 = load %class.Graph*, %class.Graph** %graph, align 8
  %E3 = getelementptr inbounds %class.Graph, %class.Graph* %6, i32 0, i32 1
  %7 = load i32, i32* %E3, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 8
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %mul, i64 8)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %11 = select i1 %9, i64 -1, i64 %10
  %call4 = call i8* @_Znam(i64 %11) #8
  %12 = bitcast i8* %call4 to %class.Edge*
  %13 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 2
  store %class.Edge* %12, %class.Edge** %edge, align 8
  %14 = load %class.Graph*, %class.Graph** %graph, align 8
  ret %class.Graph* %14
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #4

; Function Attrs: noinline uwtable
define dso_local i32 @_Z4findPii(i32* %parent, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  store i32* %parent, i32** %parent.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32*, i32** %parent.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %i.addr, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %parent.addr, align 8
  %5 = load i32*, i32** %parent.addr, align 8
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %call = call i32 @_Z4findPii(i32* %4, i32 %7)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline uwtable
define dso_local void @_Z5UnionPiii(i32* %parent, i32 %x, i32 %y) #0 {
entry:
  %parent.addr = alloca i32*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xset = alloca i32, align 4
  %yset = alloca i32, align 4
  store i32* %parent, i32** %parent.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32*, i32** %parent.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 @_Z4findPii(i32* %0, i32 %1)
  store i32 %call, i32* %xset, align 4
  %2 = load i32*, i32** %parent.addr, align 8
  %3 = load i32, i32* %y.addr, align 4
  %call1 = call i32 @_Z4findPii(i32* %2, i32 %3)
  store i32 %call1, i32* %yset, align 4
  %4 = load i32, i32* %xset, align 4
  %5 = load i32, i32* %yset, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %yset, align 4
  %7 = load i32*, i32** %parent.addr, align 8
  %8 = load i32, i32* %xset, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z7isCycleP5Graph(%class.Graph* %graph) #0 {
entry:
  %retval = alloca i32, align 4
  %graph.addr = alloca %class.Graph*, align 8
  %parent = alloca i32*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.Graph* %graph, %class.Graph** %graph.addr, align 8
  %0 = load %class.Graph*, %class.Graph** %graph.addr, align 8
  %V = getelementptr inbounds %class.Graph, %class.Graph* %0, i32 0, i32 0
  %1 = load i32, i32* %V, align 8
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %mul, i64 4)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  %5 = select i1 %3, i64 -1, i64 %4
  %call = call i8* @_Znam(i64 %5) #8
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** %parent, align 8
  %7 = load i32*, i32** %parent, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = load %class.Graph*, %class.Graph** %graph.addr, align 8
  %V1 = getelementptr inbounds %class.Graph, %class.Graph* %9, i32 0, i32 0
  %10 = load i32, i32* %V1, align 8
  %conv2 = sext i32 %10 to i64
  %mul3 = mul i64 4, %conv2
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 -1, i64 %mul3, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load %class.Graph*, %class.Graph** %graph.addr, align 8
  %E = getelementptr inbounds %class.Graph, %class.Graph* %12, i32 0, i32 1
  %13 = load i32, i32* %E, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %parent, align 8
  %15 = load %class.Graph*, %class.Graph** %graph.addr, align 8
  %edge = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 2
  %16 = load %class.Edge*, %class.Edge** %edge, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds %class.Edge, %class.Edge* %16, i64 %idxprom
  %src = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx, i32 0, i32 0
  %18 = load i32, i32* %src, align 4
  %call4 = call i32 @_Z4findPii(i32* %14, i32 %18)
  store i32 %call4, i32* %x, align 4
  %19 = load i32*, i32** %parent, align 8
  %20 = load %class.Graph*, %class.Graph** %graph.addr, align 8
  %edge5 = getelementptr inbounds %class.Graph, %class.Graph* %20, i32 0, i32 2
  %21 = load %class.Edge*, %class.Edge** %edge5, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %22 to i64
  %arrayidx7 = getelementptr inbounds %class.Edge, %class.Edge* %21, i64 %idxprom6
  %dest = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx7, i32 0, i32 1
  %23 = load i32, i32* %dest, align 4
  %call8 = call i32 @_Z4findPii(i32* %19, i32 %23)
  store i32 %call8, i32* %y, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %y, align 4
  %cmp9 = icmp eq i32 %24, %25
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %26 = load i32*, i32** %parent, align 8
  %27 = load i32, i32* %x, align 4
  %28 = load i32, i32* %y, align 4
  call void @_Z5UnionPiii(i32* %26, i32 %27, i32 %28)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #7 {
entry:
  %retval = alloca i32, align 4
  %V = alloca i32, align 4
  %E = alloca i32, align 4
  %graph = alloca %class.Graph*, align 8
  store i32 0, i32* %retval, align 4
  store i32 3, i32* %V, align 4
  store i32 3, i32* %E, align 4
  %0 = load i32, i32* %V, align 4
  %1 = load i32, i32* %E, align 4
  %call = call %class.Graph* @_Z11createGraphii(i32 %0, i32 %1)
  store %class.Graph* %call, %class.Graph** %graph, align 8
  %2 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge = getelementptr inbounds %class.Graph, %class.Graph* %2, i32 0, i32 2
  %3 = load %class.Edge*, %class.Edge** %edge, align 8
  %arrayidx = getelementptr inbounds %class.Edge, %class.Edge* %3, i64 0
  %src = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx, i32 0, i32 0
  store i32 0, i32* %src, align 4
  %4 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge1 = getelementptr inbounds %class.Graph, %class.Graph* %4, i32 0, i32 2
  %5 = load %class.Edge*, %class.Edge** %edge1, align 8
  %arrayidx2 = getelementptr inbounds %class.Edge, %class.Edge* %5, i64 0
  %dest = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx2, i32 0, i32 1
  store i32 1, i32* %dest, align 4
  %6 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge3 = getelementptr inbounds %class.Graph, %class.Graph* %6, i32 0, i32 2
  %7 = load %class.Edge*, %class.Edge** %edge3, align 8
  %arrayidx4 = getelementptr inbounds %class.Edge, %class.Edge* %7, i64 1
  %src5 = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx4, i32 0, i32 0
  store i32 1, i32* %src5, align 4
  %8 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge6 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 2
  %9 = load %class.Edge*, %class.Edge** %edge6, align 8
  %arrayidx7 = getelementptr inbounds %class.Edge, %class.Edge* %9, i64 1
  %dest8 = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx7, i32 0, i32 1
  store i32 2, i32* %dest8, align 4
  %10 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge9 = getelementptr inbounds %class.Graph, %class.Graph* %10, i32 0, i32 2
  %11 = load %class.Edge*, %class.Edge** %edge9, align 8
  %arrayidx10 = getelementptr inbounds %class.Edge, %class.Edge* %11, i64 2
  %src11 = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %src11, align 4
  %12 = load %class.Graph*, %class.Graph** %graph, align 8
  %edge12 = getelementptr inbounds %class.Graph, %class.Graph* %12, i32 0, i32 2
  %13 = load %class.Edge*, %class.Edge** %edge12, align 8
  %arrayidx13 = getelementptr inbounds %class.Edge, %class.Edge* %13, i64 2
  %dest14 = getelementptr inbounds %class.Edge, %class.Edge* %arrayidx13, i32 0, i32 1
  store i32 2, i32* %dest14, align 4
  %14 = load %class.Graph*, %class.Graph** %graph, align 8
  %call15 = call i32 @_Z7isCycleP5Graph(%class.Graph* %14)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_union_find.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
