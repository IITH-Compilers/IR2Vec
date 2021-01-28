; ModuleID = 'PE-benchmarks/hamiltonian-cycle-backtracking.cpp'
source_filename = "PE-benchmarks/hamiltonian-cycle-backtracking.cpp"
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
@.str = private unnamed_addr constant [25 x i8] c"\0ASolution does not exist\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Solution Exists: Following is one Hamiltonian Cycle \0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.graph1 = private unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\00\01\00\01\00", [5 x i8] c"\01\00\01\01\01", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\01\01\00\00\01", [5 x i8] c"\00\01\01\01\00"], align 16
@__const.main.graph2 = private unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\00\01\00\01\00", [5 x i8] c"\01\00\01\01\01", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\01\01\00\00\00", [5 x i8] c"\00\01\01\00\00"], align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hamiltonian_cycle_backtracking.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z6isSafeiPA5_bPii(i32 %v, [5 x i8]* %graph, i32* %path, i32 %pos) #4 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca i32, align 4
  %graph.addr = alloca [5 x i8]*, align 8
  %path.addr = alloca i32*, align 8
  %pos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  store [5 x i8]* %graph, [5 x i8]** %graph.addr, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load [5 x i8]*, [5 x i8]** %graph.addr, align 8
  %1 = load i32*, i32** %path.addr, align 8
  %2 = load i32, i32* %pos.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %0, i64 %idxprom1
  %4 = load i32, i32* %v.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx2, i64 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %tobool = trunc i8 %5 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %path.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %11 = load i32, i32* %v.addr, align 4
  %cmp8 = icmp eq i32 %10, %11
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then9, %if.then
  %13 = load i1, i1* %retval, align 1
  ret i1 %13
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z12hamCycleUtilPA5_bPii([5 x i8]* %graph, i32* %path, i32 %pos) #0 {
entry:
  %retval = alloca i1, align 1
  %graph.addr = alloca [5 x i8]*, align 8
  %path.addr = alloca i32*, align 8
  %pos.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store [5 x i8]* %graph, [5 x i8]** %graph.addr, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load [5 x i8]*, [5 x i8]** %graph.addr, align 8
  %2 = load i32*, i32** %path.addr, align 8
  %3 = load i32, i32* %pos.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 %idxprom1
  %5 = load i32*, i32** %path.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx2, i64 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %v, align 4
  %cmp8 = icmp slt i32 %8, 5
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %v, align 4
  %10 = load [5 x i8]*, [5 x i8]** %graph.addr, align 8
  %11 = load i32*, i32** %path.addr, align 8
  %12 = load i32, i32* %pos.addr, align 4
  %call = call zeroext i1 @_Z6isSafeiPA5_bPii(i32 %9, [5 x i8]* %10, i32* %11, i32 %12)
  br i1 %call, label %if.then9, label %if.end19

if.then9:                                         ; preds = %for.body
  %13 = load i32, i32* %v, align 4
  %14 = load i32*, i32** %path.addr, align 8
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  store i32 %13, i32* %arrayidx11, align 4
  %16 = load [5 x i8]*, [5 x i8]** %graph.addr, align 8
  %17 = load i32*, i32** %path.addr, align 8
  %18 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %18, 1
  %call12 = call zeroext i1 @_Z12hamCycleUtilPA5_bPii([5 x i8]* %16, i32* %17, i32 %add)
  %conv13 = zext i1 %call12 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then9
  store i1 true, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.then9
  %19 = load i32*, i32** %path.addr, align 8
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %19, i64 %idxprom17
  store i32 -1, i32* %arrayidx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %21 = load i32, i32* %v, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.else, %if.then7
  %22 = load i1, i1* %retval, align 1
  ret i1 %22
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z8hamCyclePA5_b([5 x i8]* %graph) #0 {
entry:
  %retval = alloca i1, align 1
  %graph.addr = alloca [5 x i8]*, align 8
  %path = alloca i32*, align 8
  %i = alloca i32, align 4
  store [5 x i8]* %graph, [5 x i8]** %graph.addr, align 8
  %call = call i8* @_Znam(i64 20) #8
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %path, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %path, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32*, i32** %path, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 0, i32* %arrayidx1, align 4
  %6 = load [5 x i8]*, [5 x i8]** %graph.addr, align 8
  %7 = load i32*, i32** %path, align 8
  %call2 = call zeroext i1 @_Z12hamCycleUtilPA5_bPii([5 x i8]* %6, i32* %7, i32 1)
  %conv = zext i1 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.end
  %8 = load i32*, i32** %path, align 8
  call void @_Z13printSolutionPi(i32* %8)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPi(i32* %path) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %path, i32** %path.addr, align 8
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %path.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %3)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32*, i32** %path.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %6)
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %graph1 = alloca [5 x [5 x i8]], align 16
  %graph2 = alloca [5 x [5 x i8]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x [5 x i8]]* %graph1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([5 x [5 x i8]], [5 x [5 x i8]]* @__const.main.graph1, i32 0, i32 0, i32 0), i64 25, i1 false)
  %arraydecay = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %graph1, i32 0, i32 0
  %call = call zeroext i1 @_Z8hamCyclePA5_b([5 x i8]* %arraydecay)
  %1 = bitcast [5 x [5 x i8]]* %graph2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([5 x [5 x i8]], [5 x [5 x i8]]* @__const.main.graph2, i32 0, i32 0, i32 0), i64 25, i1 false)
  %arraydecay1 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %graph2, i32 0, i32 0
  %call2 = call zeroext i1 @_Z8hamCyclePA5_b([5 x i8]* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_hamiltonian_cycle_backtracking.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
