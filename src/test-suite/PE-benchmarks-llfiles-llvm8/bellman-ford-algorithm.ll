; ModuleID = 'PE-benchmarks/bellman-ford-algorithm.cpp'
source_filename = "PE-benchmarks/bellman-ford-algorithm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.Graph = type { i32, i32, %struct.Edge* }
%struct.Edge = type { i32, i32, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [29 x i8] c"Vertex Distance from Source\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d \09\09 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Graph contains negative weight cycle\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_bellman_ford_algorithm.cpp, i8* null }]

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
define dso_local %struct.Graph* @_Z11createGraphii(i32 %V, i32 %E) #0 {
entry:
  %V.addr = alloca i32, align 4
  %E.addr = alloca i32, align 4
  %graph = alloca %struct.Graph*, align 8
  store i32 %V, i32* %V.addr, align 4
  store i32 %E, i32* %E.addr, align 4
  %call = call i8* @_Znwm(i64 16) #7
  %0 = bitcast i8* %call to %struct.Graph*
  store %struct.Graph* %0, %struct.Graph** %graph, align 8
  %1 = load i32, i32* %V.addr, align 4
  %2 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %V1 = getelementptr inbounds %struct.Graph, %struct.Graph* %2, i32 0, i32 0
  store i32 %1, i32* %V1, align 8
  %3 = load i32, i32* %E.addr, align 4
  %4 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %E2 = getelementptr inbounds %struct.Graph, %struct.Graph* %4, i32 0, i32 1
  store i32 %3, i32* %E2, align 4
  %5 = load i32, i32* %E.addr, align 4
  %conv = sext i32 %5 to i64
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 12)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call3 = call i8* @_Znam(i64 %9) #7
  %10 = bitcast i8* %call3 to %struct.Edge*
  %11 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge = getelementptr inbounds %struct.Graph, %struct.Graph* %11, i32 0, i32 2
  store %struct.Edge* %10, %struct.Edge** %edge, align 8
  %12 = load %struct.Graph*, %struct.Graph** %graph, align 8
  ret %struct.Graph* %12
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #4

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #4

; Function Attrs: noinline uwtable
define dso_local void @_Z8printArrPii(i32* %dist, i32 %n) #0 {
entry:
  %dist.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %dist, i32** %dist.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %dist.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %2, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline uwtable
define dso_local void @_Z11BellmanFordP5Graphi(%struct.Graph* %graph, i32 %src) #0 {
entry:
  %graph.addr = alloca %struct.Graph*, align 8
  %src.addr = alloca i32, align 4
  %V = alloca i32, align 4
  %E = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %weight = alloca i32, align 4
  %i41 = alloca i32, align 4
  %u45 = alloca i32, align 4
  %v50 = alloca i32, align 4
  %weight55 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.Graph* %graph, %struct.Graph** %graph.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  %0 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %V1 = getelementptr inbounds %struct.Graph, %struct.Graph* %0, i32 0, i32 0
  %1 = load i32, i32* %V1, align 8
  store i32 %1, i32* %V, align 4
  %2 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %E2 = getelementptr inbounds %struct.Graph, %struct.Graph* %2, i32 0, i32 1
  %3 = load i32, i32* %E2, align 4
  store i32 %3, i32* %E, align 4
  %4 = load i32, i32* %V, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %5, align 16
  store i64 %5, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %V, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 2147483647, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %src.addr, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  store i32 1, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc38, %for.end
  %12 = load i32, i32* %i5, align 4
  %13 = load i32, i32* %V, align 4
  %sub = sub nsw i32 %13, 1
  %cmp7 = icmp sle i32 %12, %sub
  br i1 %cmp7, label %for.body8, label %for.end40

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc35, %for.body8
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %E, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body11, label %for.end37

for.body11:                                       ; preds = %for.cond9
  %16 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge = getelementptr inbounds %struct.Graph, %struct.Graph* %16, i32 0, i32 2
  %17 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds %struct.Edge, %struct.Edge* %17, i64 %idxprom12
  %src14 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx13, i32 0, i32 0
  %19 = load i32, i32* %src14, align 4
  store i32 %19, i32* %u, align 4
  %20 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge15 = getelementptr inbounds %struct.Graph, %struct.Graph* %20, i32 0, i32 2
  %21 = load %struct.Edge*, %struct.Edge** %edge15, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds %struct.Edge, %struct.Edge* %21, i64 %idxprom16
  %dest = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx17, i32 0, i32 1
  %23 = load i32, i32* %dest, align 4
  store i32 %23, i32* %v, align 4
  %24 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge18 = getelementptr inbounds %struct.Graph, %struct.Graph* %24, i32 0, i32 2
  %25 = load %struct.Edge*, %struct.Edge** %edge18, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds %struct.Edge, %struct.Edge* %25, i64 %idxprom19
  %weight21 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx20, i32 0, i32 2
  %27 = load i32, i32* %weight21, align 4
  store i32 %27, i32* %weight, align 4
  %28 = load i32, i32* %u, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %vla, i64 %idxprom22
  %29 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp ne i32 %29, 2147483647
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body11
  %30 = load i32, i32* %u, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %vla, i64 %idxprom25
  %31 = load i32, i32* %arrayidx26, align 4
  %32 = load i32, i32* %weight, align 4
  %add = add nsw i32 %31, %32
  %33 = load i32, i32* %v, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %vla, i64 %idxprom27
  %34 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp slt i32 %add, %34
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %35 = load i32, i32* %u, align 4
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %vla, i64 %idxprom30
  %36 = load i32, i32* %arrayidx31, align 4
  %37 = load i32, i32* %weight, align 4
  %add32 = add nsw i32 %36, %37
  %38 = load i32, i32* %v, align 4
  %idxprom33 = sext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %vla, i64 %idxprom33
  store i32 %add32, i32* %arrayidx34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body11
  br label %for.inc35

for.inc35:                                        ; preds = %if.end
  %39 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %39, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond9

for.end37:                                        ; preds = %for.cond9
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %40 = load i32, i32* %i5, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %i5, align 4
  br label %for.cond6

for.end40:                                        ; preds = %for.cond6
  store i32 0, i32* %i41, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc72, %for.end40
  %41 = load i32, i32* %i41, align 4
  %42 = load i32, i32* %E, align 4
  %cmp43 = icmp slt i32 %41, %42
  br i1 %cmp43, label %for.body44, label %for.end74

for.body44:                                       ; preds = %for.cond42
  %43 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge46 = getelementptr inbounds %struct.Graph, %struct.Graph* %43, i32 0, i32 2
  %44 = load %struct.Edge*, %struct.Edge** %edge46, align 8
  %45 = load i32, i32* %i41, align 4
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds %struct.Edge, %struct.Edge* %44, i64 %idxprom47
  %src49 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx48, i32 0, i32 0
  %46 = load i32, i32* %src49, align 4
  store i32 %46, i32* %u45, align 4
  %47 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge51 = getelementptr inbounds %struct.Graph, %struct.Graph* %47, i32 0, i32 2
  %48 = load %struct.Edge*, %struct.Edge** %edge51, align 8
  %49 = load i32, i32* %i41, align 4
  %idxprom52 = sext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds %struct.Edge, %struct.Edge* %48, i64 %idxprom52
  %dest54 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx53, i32 0, i32 1
  %50 = load i32, i32* %dest54, align 4
  store i32 %50, i32* %v50, align 4
  %51 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge56 = getelementptr inbounds %struct.Graph, %struct.Graph* %51, i32 0, i32 2
  %52 = load %struct.Edge*, %struct.Edge** %edge56, align 8
  %53 = load i32, i32* %i41, align 4
  %idxprom57 = sext i32 %53 to i64
  %arrayidx58 = getelementptr inbounds %struct.Edge, %struct.Edge* %52, i64 %idxprom57
  %weight59 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx58, i32 0, i32 2
  %54 = load i32, i32* %weight59, align 4
  store i32 %54, i32* %weight55, align 4
  %55 = load i32, i32* %u45, align 4
  %idxprom60 = sext i32 %55 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %vla, i64 %idxprom60
  %56 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp ne i32 %56, 2147483647
  br i1 %cmp62, label %land.lhs.true63, label %if.end71

land.lhs.true63:                                  ; preds = %for.body44
  %57 = load i32, i32* %u45, align 4
  %idxprom64 = sext i32 %57 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %vla, i64 %idxprom64
  %58 = load i32, i32* %arrayidx65, align 4
  %59 = load i32, i32* %weight55, align 4
  %add66 = add nsw i32 %58, %59
  %60 = load i32, i32* %v50, align 4
  %idxprom67 = sext i32 %60 to i64
  %arrayidx68 = getelementptr inbounds i32, i32* %vla, i64 %idxprom67
  %61 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp slt i32 %add66, %61
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.lhs.true63
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %land.lhs.true63, %for.body44
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %62 = load i32, i32* %i41, align 4
  %inc73 = add nsw i32 %62, 1
  store i32 %inc73, i32* %i41, align 4
  br label %for.cond42

for.end74:                                        ; preds = %for.cond42
  %63 = load i32, i32* %V, align 4
  call void @_Z8printArrPii(i32* %vla, i32 %63)
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end74, %if.then70
  %64 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %V = alloca i32, align 4
  %E = alloca i32, align 4
  %graph = alloca %struct.Graph*, align 8
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %V, align 4
  store i32 8, i32* %E, align 4
  %0 = load i32, i32* %V, align 4
  %1 = load i32, i32* %E, align 4
  %call = call %struct.Graph* @_Z11createGraphii(i32 %0, i32 %1)
  store %struct.Graph* %call, %struct.Graph** %graph, align 8
  %2 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge = getelementptr inbounds %struct.Graph, %struct.Graph* %2, i32 0, i32 2
  %3 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %arrayidx = getelementptr inbounds %struct.Edge, %struct.Edge* %3, i64 0
  %src = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx, i32 0, i32 0
  store i32 0, i32* %src, align 4
  %4 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge1 = getelementptr inbounds %struct.Graph, %struct.Graph* %4, i32 0, i32 2
  %5 = load %struct.Edge*, %struct.Edge** %edge1, align 8
  %arrayidx2 = getelementptr inbounds %struct.Edge, %struct.Edge* %5, i64 0
  %dest = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx2, i32 0, i32 1
  store i32 1, i32* %dest, align 4
  %6 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge3 = getelementptr inbounds %struct.Graph, %struct.Graph* %6, i32 0, i32 2
  %7 = load %struct.Edge*, %struct.Edge** %edge3, align 8
  %arrayidx4 = getelementptr inbounds %struct.Edge, %struct.Edge* %7, i64 0
  %weight = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx4, i32 0, i32 2
  store i32 -1, i32* %weight, align 4
  %8 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge5 = getelementptr inbounds %struct.Graph, %struct.Graph* %8, i32 0, i32 2
  %9 = load %struct.Edge*, %struct.Edge** %edge5, align 8
  %arrayidx6 = getelementptr inbounds %struct.Edge, %struct.Edge* %9, i64 1
  %src7 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx6, i32 0, i32 0
  store i32 0, i32* %src7, align 4
  %10 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge8 = getelementptr inbounds %struct.Graph, %struct.Graph* %10, i32 0, i32 2
  %11 = load %struct.Edge*, %struct.Edge** %edge8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Edge, %struct.Edge* %11, i64 1
  %dest10 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx9, i32 0, i32 1
  store i32 2, i32* %dest10, align 4
  %12 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge11 = getelementptr inbounds %struct.Graph, %struct.Graph* %12, i32 0, i32 2
  %13 = load %struct.Edge*, %struct.Edge** %edge11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Edge, %struct.Edge* %13, i64 1
  %weight13 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx12, i32 0, i32 2
  store i32 4, i32* %weight13, align 4
  %14 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge14 = getelementptr inbounds %struct.Graph, %struct.Graph* %14, i32 0, i32 2
  %15 = load %struct.Edge*, %struct.Edge** %edge14, align 8
  %arrayidx15 = getelementptr inbounds %struct.Edge, %struct.Edge* %15, i64 2
  %src16 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx15, i32 0, i32 0
  store i32 1, i32* %src16, align 4
  %16 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge17 = getelementptr inbounds %struct.Graph, %struct.Graph* %16, i32 0, i32 2
  %17 = load %struct.Edge*, %struct.Edge** %edge17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Edge, %struct.Edge* %17, i64 2
  %dest19 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx18, i32 0, i32 1
  store i32 2, i32* %dest19, align 4
  %18 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge20 = getelementptr inbounds %struct.Graph, %struct.Graph* %18, i32 0, i32 2
  %19 = load %struct.Edge*, %struct.Edge** %edge20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Edge, %struct.Edge* %19, i64 2
  %weight22 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx21, i32 0, i32 2
  store i32 3, i32* %weight22, align 4
  %20 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge23 = getelementptr inbounds %struct.Graph, %struct.Graph* %20, i32 0, i32 2
  %21 = load %struct.Edge*, %struct.Edge** %edge23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Edge, %struct.Edge* %21, i64 3
  %src25 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx24, i32 0, i32 0
  store i32 1, i32* %src25, align 4
  %22 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge26 = getelementptr inbounds %struct.Graph, %struct.Graph* %22, i32 0, i32 2
  %23 = load %struct.Edge*, %struct.Edge** %edge26, align 8
  %arrayidx27 = getelementptr inbounds %struct.Edge, %struct.Edge* %23, i64 3
  %dest28 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx27, i32 0, i32 1
  store i32 3, i32* %dest28, align 4
  %24 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge29 = getelementptr inbounds %struct.Graph, %struct.Graph* %24, i32 0, i32 2
  %25 = load %struct.Edge*, %struct.Edge** %edge29, align 8
  %arrayidx30 = getelementptr inbounds %struct.Edge, %struct.Edge* %25, i64 3
  %weight31 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx30, i32 0, i32 2
  store i32 2, i32* %weight31, align 4
  %26 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge32 = getelementptr inbounds %struct.Graph, %struct.Graph* %26, i32 0, i32 2
  %27 = load %struct.Edge*, %struct.Edge** %edge32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Edge, %struct.Edge* %27, i64 4
  %src34 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx33, i32 0, i32 0
  store i32 1, i32* %src34, align 4
  %28 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge35 = getelementptr inbounds %struct.Graph, %struct.Graph* %28, i32 0, i32 2
  %29 = load %struct.Edge*, %struct.Edge** %edge35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Edge, %struct.Edge* %29, i64 4
  %dest37 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx36, i32 0, i32 1
  store i32 4, i32* %dest37, align 4
  %30 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge38 = getelementptr inbounds %struct.Graph, %struct.Graph* %30, i32 0, i32 2
  %31 = load %struct.Edge*, %struct.Edge** %edge38, align 8
  %arrayidx39 = getelementptr inbounds %struct.Edge, %struct.Edge* %31, i64 4
  %weight40 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx39, i32 0, i32 2
  store i32 2, i32* %weight40, align 4
  %32 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge41 = getelementptr inbounds %struct.Graph, %struct.Graph* %32, i32 0, i32 2
  %33 = load %struct.Edge*, %struct.Edge** %edge41, align 8
  %arrayidx42 = getelementptr inbounds %struct.Edge, %struct.Edge* %33, i64 5
  %src43 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx42, i32 0, i32 0
  store i32 3, i32* %src43, align 4
  %34 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge44 = getelementptr inbounds %struct.Graph, %struct.Graph* %34, i32 0, i32 2
  %35 = load %struct.Edge*, %struct.Edge** %edge44, align 8
  %arrayidx45 = getelementptr inbounds %struct.Edge, %struct.Edge* %35, i64 5
  %dest46 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx45, i32 0, i32 1
  store i32 2, i32* %dest46, align 4
  %36 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge47 = getelementptr inbounds %struct.Graph, %struct.Graph* %36, i32 0, i32 2
  %37 = load %struct.Edge*, %struct.Edge** %edge47, align 8
  %arrayidx48 = getelementptr inbounds %struct.Edge, %struct.Edge* %37, i64 5
  %weight49 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx48, i32 0, i32 2
  store i32 5, i32* %weight49, align 4
  %38 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge50 = getelementptr inbounds %struct.Graph, %struct.Graph* %38, i32 0, i32 2
  %39 = load %struct.Edge*, %struct.Edge** %edge50, align 8
  %arrayidx51 = getelementptr inbounds %struct.Edge, %struct.Edge* %39, i64 6
  %src52 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx51, i32 0, i32 0
  store i32 3, i32* %src52, align 4
  %40 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge53 = getelementptr inbounds %struct.Graph, %struct.Graph* %40, i32 0, i32 2
  %41 = load %struct.Edge*, %struct.Edge** %edge53, align 8
  %arrayidx54 = getelementptr inbounds %struct.Edge, %struct.Edge* %41, i64 6
  %dest55 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx54, i32 0, i32 1
  store i32 1, i32* %dest55, align 4
  %42 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge56 = getelementptr inbounds %struct.Graph, %struct.Graph* %42, i32 0, i32 2
  %43 = load %struct.Edge*, %struct.Edge** %edge56, align 8
  %arrayidx57 = getelementptr inbounds %struct.Edge, %struct.Edge* %43, i64 6
  %weight58 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx57, i32 0, i32 2
  store i32 1, i32* %weight58, align 4
  %44 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge59 = getelementptr inbounds %struct.Graph, %struct.Graph* %44, i32 0, i32 2
  %45 = load %struct.Edge*, %struct.Edge** %edge59, align 8
  %arrayidx60 = getelementptr inbounds %struct.Edge, %struct.Edge* %45, i64 7
  %src61 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx60, i32 0, i32 0
  store i32 4, i32* %src61, align 4
  %46 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge62 = getelementptr inbounds %struct.Graph, %struct.Graph* %46, i32 0, i32 2
  %47 = load %struct.Edge*, %struct.Edge** %edge62, align 8
  %arrayidx63 = getelementptr inbounds %struct.Edge, %struct.Edge* %47, i64 7
  %dest64 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx63, i32 0, i32 1
  store i32 3, i32* %dest64, align 4
  %48 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge65 = getelementptr inbounds %struct.Graph, %struct.Graph* %48, i32 0, i32 2
  %49 = load %struct.Edge*, %struct.Edge** %edge65, align 8
  %arrayidx66 = getelementptr inbounds %struct.Edge, %struct.Edge* %49, i64 7
  %weight67 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx66, i32 0, i32 2
  store i32 -3, i32* %weight67, align 4
  %50 = load %struct.Graph*, %struct.Graph** %graph, align 8
  call void @_Z11BellmanFordP5Graphi(%struct.Graph* %50, i32 0)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_bellman_ford_algorithm.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
