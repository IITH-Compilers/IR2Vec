; ModuleID = 'PE-benchmarks/boruvkas-algorithm.cpp'
source_filename = "PE-benchmarks/boruvkas-algorithm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Graph = type { i32, i32, %struct.Edge* }
%struct.Edge = type { i32, i32, i32 }
%struct.subset = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Edge %d-%d included in MST\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Weight of MST is %d\0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z10boruvkaMSTP5Graph(%struct.Graph* %graph) #0 {
entry:
  %graph.addr = alloca %struct.Graph*, align 8
  %V = alloca i32, align 4
  %E = alloca i32, align 4
  %edge = alloca %struct.Edge*, align 8
  %subsets = alloca %struct.subset*, align 8
  %cheapest = alloca i32*, align 8
  %v = alloca i32, align 4
  %numTrees = alloca i32, align 4
  %MSTweight = alloca i32, align 4
  %v11 = alloca i32, align 4
  %i = alloca i32, align 4
  %set1 = alloca i32, align 4
  %set2 = alloca i32, align 4
  %i65 = alloca i32, align 4
  %set173 = alloca i32, align 4
  %set280 = alloca i32, align 4
  store %struct.Graph* %graph, %struct.Graph** %graph.addr, align 8
  %0 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %V1 = getelementptr inbounds %struct.Graph, %struct.Graph* %0, i32 0, i32 0
  %1 = load i32, i32* %V1, align 8
  store i32 %1, i32* %V, align 4
  %2 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %E2 = getelementptr inbounds %struct.Graph, %struct.Graph* %2, i32 0, i32 1
  %3 = load i32, i32* %E2, align 4
  store i32 %3, i32* %E, align 4
  %4 = load %struct.Graph*, %struct.Graph** %graph.addr, align 8
  %edge3 = getelementptr inbounds %struct.Graph, %struct.Graph* %4, i32 0, i32 2
  %5 = load %struct.Edge*, %struct.Edge** %edge3, align 8
  store %struct.Edge* %5, %struct.Edge** %edge, align 8
  %6 = load i32, i32* %V, align 4
  %conv = sext i32 %6 to i64
  %7 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %8 = extractvalue { i64, i1 } %7, 1
  %9 = extractvalue { i64, i1 } %7, 0
  %10 = select i1 %8, i64 -1, i64 %9
  %call = call i8* @_Znam(i64 %10) #5
  %11 = bitcast i8* %call to %struct.subset*
  store %struct.subset* %11, %struct.subset** %subsets, align 8
  %12 = load i32, i32* %V, align 4
  %conv4 = sext i32 %12 to i64
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv4, i64 4)
  %14 = extractvalue { i64, i1 } %13, 1
  %15 = extractvalue { i64, i1 } %13, 0
  %16 = select i1 %14, i64 -1, i64 %15
  %call5 = call i8* @_Znam(i64 %16) #5
  %17 = bitcast i8* %call5 to i32*
  store i32* %17, i32** %cheapest, align 8
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %v, align 4
  %19 = load i32, i32* %V, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %v, align 4
  %21 = load %struct.subset*, %struct.subset** %subsets, align 8
  %22 = load i32, i32* %v, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.subset, %struct.subset* %21, i64 %idxprom
  %parent = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx, i32 0, i32 0
  store i32 %20, i32* %parent, align 4
  %23 = load %struct.subset*, %struct.subset** %subsets, align 8
  %24 = load i32, i32* %v, align 4
  %idxprom6 = sext i32 %24 to i64
  %arrayidx7 = getelementptr inbounds %struct.subset, %struct.subset* %23, i64 %idxprom6
  %rank = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx7, i32 0, i32 1
  store i32 0, i32* %rank, align 4
  %25 = load i32*, i32** %cheapest, align 8
  %26 = load i32, i32* %v, align 4
  %idxprom8 = sext i32 %26 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %25, i64 %idxprom8
  store i32 -1, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %v, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %V, align 4
  store i32 %28, i32* %numTrees, align 4
  store i32 0, i32* %MSTweight, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end109, %for.end
  %29 = load i32, i32* %numTrees, align 4
  %cmp10 = icmp sgt i32 %29, 1
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %v11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %while.body
  %30 = load i32, i32* %v11, align 4
  %31 = load i32, i32* %V, align 4
  %cmp13 = icmp slt i32 %30, %31
  br i1 %cmp13, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond12
  %32 = load i32*, i32** %cheapest, align 8
  %33 = load i32, i32* %v11, align 4
  %idxprom15 = sext i32 %33 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %32, i64 %idxprom15
  store i32 -1, i32* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %34 = load i32, i32* %v11, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, i32* %v11, align 4
  br label %for.cond12

for.end19:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc62, %for.end19
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %E, align 4
  %cmp21 = icmp slt i32 %35, %36
  br i1 %cmp21, label %for.body22, label %for.end64

for.body22:                                       ; preds = %for.cond20
  %37 = load %struct.subset*, %struct.subset** %subsets, align 8
  %38 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds %struct.Edge, %struct.Edge* %38, i64 %idxprom23
  %src = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx24, i32 0, i32 0
  %40 = load i32, i32* %src, align 4
  %call25 = call i32 @_Z4findP6subseti(%struct.subset* %37, i32 %40)
  store i32 %call25, i32* %set1, align 4
  %41 = load %struct.subset*, %struct.subset** %subsets, align 8
  %42 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %43 to i64
  %arrayidx27 = getelementptr inbounds %struct.Edge, %struct.Edge* %42, i64 %idxprom26
  %dest = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx27, i32 0, i32 1
  %44 = load i32, i32* %dest, align 4
  %call28 = call i32 @_Z4findP6subseti(%struct.subset* %41, i32 %44)
  store i32 %call28, i32* %set2, align 4
  %45 = load i32, i32* %set1, align 4
  %46 = load i32, i32* %set2, align 4
  %cmp29 = icmp eq i32 %45, %46
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %for.body22
  br label %for.inc62

if.else:                                          ; preds = %for.body22
  %47 = load i32*, i32** %cheapest, align 8
  %48 = load i32, i32* %set1, align 4
  %idxprom30 = sext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %47, i64 %idxprom30
  %49 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp eq i32 %49, -1
  br i1 %cmp32, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %50 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %51 = load i32*, i32** %cheapest, align 8
  %52 = load i32, i32* %set1, align 4
  %idxprom33 = sext i32 %52 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %51, i64 %idxprom33
  %53 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %53 to i64
  %arrayidx36 = getelementptr inbounds %struct.Edge, %struct.Edge* %50, i64 %idxprom35
  %weight = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx36, i32 0, i32 2
  %54 = load i32, i32* %weight, align 4
  %55 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %56 to i64
  %arrayidx38 = getelementptr inbounds %struct.Edge, %struct.Edge* %55, i64 %idxprom37
  %weight39 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx38, i32 0, i32 2
  %57 = load i32, i32* %weight39, align 4
  %cmp40 = icmp sgt i32 %54, %57
  br i1 %cmp40, label %if.then41, label %if.end

if.then41:                                        ; preds = %lor.lhs.false, %if.else
  %58 = load i32, i32* %i, align 4
  %59 = load i32*, i32** %cheapest, align 8
  %60 = load i32, i32* %set1, align 4
  %idxprom42 = sext i32 %60 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %59, i64 %idxprom42
  store i32 %58, i32* %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %if.then41, %lor.lhs.false
  %61 = load i32*, i32** %cheapest, align 8
  %62 = load i32, i32* %set2, align 4
  %idxprom44 = sext i32 %62 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %61, i64 %idxprom44
  %63 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %63, -1
  br i1 %cmp46, label %if.then57, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end
  %64 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %65 = load i32*, i32** %cheapest, align 8
  %66 = load i32, i32* %set2, align 4
  %idxprom48 = sext i32 %66 to i64
  %arrayidx49 = getelementptr inbounds i32, i32* %65, i64 %idxprom48
  %67 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %67 to i64
  %arrayidx51 = getelementptr inbounds %struct.Edge, %struct.Edge* %64, i64 %idxprom50
  %weight52 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx51, i32 0, i32 2
  %68 = load i32, i32* %weight52, align 4
  %69 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %70 to i64
  %arrayidx54 = getelementptr inbounds %struct.Edge, %struct.Edge* %69, i64 %idxprom53
  %weight55 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx54, i32 0, i32 2
  %71 = load i32, i32* %weight55, align 4
  %cmp56 = icmp sgt i32 %68, %71
  br i1 %cmp56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %lor.lhs.false47, %if.end
  %72 = load i32, i32* %i, align 4
  %73 = load i32*, i32** %cheapest, align 8
  %74 = load i32, i32* %set2, align 4
  %idxprom58 = sext i32 %74 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %73, i64 %idxprom58
  store i32 %72, i32* %arrayidx59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %lor.lhs.false47
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61, %if.then
  %75 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %75, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond20

for.end64:                                        ; preds = %for.cond20
  store i32 0, i32* %i65, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc107, %for.end64
  %76 = load i32, i32* %i65, align 4
  %77 = load i32, i32* %V, align 4
  %cmp67 = icmp slt i32 %76, %77
  br i1 %cmp67, label %for.body68, label %for.end109

for.body68:                                       ; preds = %for.cond66
  %78 = load i32*, i32** %cheapest, align 8
  %79 = load i32, i32* %i65, align 4
  %idxprom69 = sext i32 %79 to i64
  %arrayidx70 = getelementptr inbounds i32, i32* %78, i64 %idxprom69
  %80 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp ne i32 %80, -1
  br i1 %cmp71, label %if.then72, label %if.end106

if.then72:                                        ; preds = %for.body68
  %81 = load %struct.subset*, %struct.subset** %subsets, align 8
  %82 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %83 = load i32*, i32** %cheapest, align 8
  %84 = load i32, i32* %i65, align 4
  %idxprom74 = sext i32 %84 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %83, i64 %idxprom74
  %85 = load i32, i32* %arrayidx75, align 4
  %idxprom76 = sext i32 %85 to i64
  %arrayidx77 = getelementptr inbounds %struct.Edge, %struct.Edge* %82, i64 %idxprom76
  %src78 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx77, i32 0, i32 0
  %86 = load i32, i32* %src78, align 4
  %call79 = call i32 @_Z4findP6subseti(%struct.subset* %81, i32 %86)
  store i32 %call79, i32* %set173, align 4
  %87 = load %struct.subset*, %struct.subset** %subsets, align 8
  %88 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %89 = load i32*, i32** %cheapest, align 8
  %90 = load i32, i32* %i65, align 4
  %idxprom81 = sext i32 %90 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %89, i64 %idxprom81
  %91 = load i32, i32* %arrayidx82, align 4
  %idxprom83 = sext i32 %91 to i64
  %arrayidx84 = getelementptr inbounds %struct.Edge, %struct.Edge* %88, i64 %idxprom83
  %dest85 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx84, i32 0, i32 1
  %92 = load i32, i32* %dest85, align 4
  %call86 = call i32 @_Z4findP6subseti(%struct.subset* %87, i32 %92)
  store i32 %call86, i32* %set280, align 4
  %93 = load i32, i32* %set173, align 4
  %94 = load i32, i32* %set280, align 4
  %cmp87 = icmp eq i32 %93, %94
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then72
  br label %for.inc107

if.end89:                                         ; preds = %if.then72
  %95 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %96 = load i32*, i32** %cheapest, align 8
  %97 = load i32, i32* %i65, align 4
  %idxprom90 = sext i32 %97 to i64
  %arrayidx91 = getelementptr inbounds i32, i32* %96, i64 %idxprom90
  %98 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %98 to i64
  %arrayidx93 = getelementptr inbounds %struct.Edge, %struct.Edge* %95, i64 %idxprom92
  %weight94 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx93, i32 0, i32 2
  %99 = load i32, i32* %weight94, align 4
  %100 = load i32, i32* %MSTweight, align 4
  %add = add nsw i32 %100, %99
  store i32 %add, i32* %MSTweight, align 4
  %101 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %102 = load i32*, i32** %cheapest, align 8
  %103 = load i32, i32* %i65, align 4
  %idxprom95 = sext i32 %103 to i64
  %arrayidx96 = getelementptr inbounds i32, i32* %102, i64 %idxprom95
  %104 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %104 to i64
  %arrayidx98 = getelementptr inbounds %struct.Edge, %struct.Edge* %101, i64 %idxprom97
  %src99 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx98, i32 0, i32 0
  %105 = load i32, i32* %src99, align 4
  %106 = load %struct.Edge*, %struct.Edge** %edge, align 8
  %107 = load i32*, i32** %cheapest, align 8
  %108 = load i32, i32* %i65, align 4
  %idxprom100 = sext i32 %108 to i64
  %arrayidx101 = getelementptr inbounds i32, i32* %107, i64 %idxprom100
  %109 = load i32, i32* %arrayidx101, align 4
  %idxprom102 = sext i32 %109 to i64
  %arrayidx103 = getelementptr inbounds %struct.Edge, %struct.Edge* %106, i64 %idxprom102
  %dest104 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx103, i32 0, i32 1
  %110 = load i32, i32* %dest104, align 4
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %105, i32 %110)
  %111 = load %struct.subset*, %struct.subset** %subsets, align 8
  %112 = load i32, i32* %set173, align 4
  %113 = load i32, i32* %set280, align 4
  call void @_Z5UnionP6subsetii(%struct.subset* %111, i32 %112, i32 %113)
  %114 = load i32, i32* %numTrees, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %numTrees, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end89, %for.body68
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106, %if.then88
  %115 = load i32, i32* %i65, align 4
  %inc108 = add nsw i32 %115, 1
  store i32 %inc108, i32* %i65, align 4
  br label %for.cond66

for.end109:                                       ; preds = %for.cond66
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %116 = load i32, i32* %MSTweight, align 4
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %116)
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #2

; Function Attrs: noinline uwtable
define dso_local i32 @_Z4findP6subseti(%struct.subset* %subsets, i32 %i) #0 {
entry:
  %subsets.addr = alloca %struct.subset*, align 8
  %i.addr = alloca i32, align 4
  store %struct.subset* %subsets, %struct.subset** %subsets.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.subset, %struct.subset* %0, i64 %idxprom
  %parent = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %parent, align 4
  %3 = load i32, i32* %i.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %5 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.subset, %struct.subset* %5, i64 %idxprom1
  %parent3 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx2, i32 0, i32 0
  %7 = load i32, i32* %parent3, align 4
  %call = call i32 @_Z4findP6subseti(%struct.subset* %4, i32 %7)
  %8 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %9 = load i32, i32* %i.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds %struct.subset, %struct.subset* %8, i64 %idxprom4
  %parent6 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx5, i32 0, i32 0
  store i32 %call, i32* %parent6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %11 = load i32, i32* %i.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds %struct.subset, %struct.subset* %10, i64 %idxprom7
  %parent9 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx8, i32 0, i32 0
  %12 = load i32, i32* %parent9, align 4
  ret i32 %12
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline uwtable
define dso_local void @_Z5UnionP6subsetii(%struct.subset* %subsets, i32 %x, i32 %y) #0 {
entry:
  %subsets.addr = alloca %struct.subset*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xroot = alloca i32, align 4
  %yroot = alloca i32, align 4
  store %struct.subset* %subsets, %struct.subset** %subsets.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 @_Z4findP6subseti(%struct.subset* %0, i32 %1)
  store i32 %call, i32* %xroot, align 4
  %2 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %3 = load i32, i32* %y.addr, align 4
  %call1 = call i32 @_Z4findP6subseti(%struct.subset* %2, i32 %3)
  store i32 %call1, i32* %yroot, align 4
  %4 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %5 = load i32, i32* %xroot, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.subset, %struct.subset* %4, i64 %idxprom
  %rank = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %rank, align 4
  %7 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %8 = load i32, i32* %yroot, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds %struct.subset, %struct.subset* %7, i64 %idxprom2
  %rank4 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx3, i32 0, i32 1
  %9 = load i32, i32* %rank4, align 4
  %cmp = icmp slt i32 %6, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %yroot, align 4
  %11 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %12 = load i32, i32* %xroot, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds %struct.subset, %struct.subset* %11, i64 %idxprom5
  %parent = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx6, i32 0, i32 0
  store i32 %10, i32* %parent, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %13 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %14 = load i32, i32* %xroot, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds %struct.subset, %struct.subset* %13, i64 %idxprom7
  %rank9 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx8, i32 0, i32 1
  %15 = load i32, i32* %rank9, align 4
  %16 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %17 = load i32, i32* %yroot, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds %struct.subset, %struct.subset* %16, i64 %idxprom10
  %rank12 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx11, i32 0, i32 1
  %18 = load i32, i32* %rank12, align 4
  %cmp13 = icmp sgt i32 %15, %18
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  %19 = load i32, i32* %xroot, align 4
  %20 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %21 = load i32, i32* %yroot, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds %struct.subset, %struct.subset* %20, i64 %idxprom15
  %parent17 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx16, i32 0, i32 0
  store i32 %19, i32* %parent17, align 4
  br label %if.end

if.else18:                                        ; preds = %if.else
  %22 = load i32, i32* %xroot, align 4
  %23 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %24 = load i32, i32* %yroot, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds %struct.subset, %struct.subset* %23, i64 %idxprom19
  %parent21 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx20, i32 0, i32 0
  store i32 %22, i32* %parent21, align 4
  %25 = load %struct.subset*, %struct.subset** %subsets.addr, align 8
  %26 = load i32, i32* %xroot, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds %struct.subset, %struct.subset* %25, i64 %idxprom22
  %rank24 = getelementptr inbounds %struct.subset, %struct.subset* %arrayidx23, i32 0, i32 1
  %27 = load i32, i32* %rank24, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %rank24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then14
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define dso_local %struct.Graph* @_Z11createGraphii(i32 %V, i32 %E) #0 {
entry:
  %V.addr = alloca i32, align 4
  %E.addr = alloca i32, align 4
  %graph = alloca %struct.Graph*, align 8
  store i32 %V, i32* %V.addr, align 4
  store i32 %E, i32* %E.addr, align 4
  %call = call i8* @_Znwm(i64 16) #5
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
  %call3 = call i8* @_Znam(i64 %9) #5
  %10 = bitcast i8* %call3 to %struct.Edge*
  %11 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge = getelementptr inbounds %struct.Graph, %struct.Graph* %11, i32 0, i32 2
  store %struct.Edge* %10, %struct.Edge** %edge, align 8
  %12 = load %struct.Graph*, %struct.Graph** %graph, align 8
  ret %struct.Graph* %12
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %V = alloca i32, align 4
  %E = alloca i32, align 4
  %graph = alloca %struct.Graph*, align 8
  store i32 0, i32* %retval, align 4
  store i32 4, i32* %V, align 4
  store i32 5, i32* %E, align 4
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
  store i32 10, i32* %weight, align 4
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
  store i32 6, i32* %weight13, align 4
  %14 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge14 = getelementptr inbounds %struct.Graph, %struct.Graph* %14, i32 0, i32 2
  %15 = load %struct.Edge*, %struct.Edge** %edge14, align 8
  %arrayidx15 = getelementptr inbounds %struct.Edge, %struct.Edge* %15, i64 2
  %src16 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx15, i32 0, i32 0
  store i32 0, i32* %src16, align 4
  %16 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge17 = getelementptr inbounds %struct.Graph, %struct.Graph* %16, i32 0, i32 2
  %17 = load %struct.Edge*, %struct.Edge** %edge17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Edge, %struct.Edge* %17, i64 2
  %dest19 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx18, i32 0, i32 1
  store i32 3, i32* %dest19, align 4
  %18 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge20 = getelementptr inbounds %struct.Graph, %struct.Graph* %18, i32 0, i32 2
  %19 = load %struct.Edge*, %struct.Edge** %edge20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Edge, %struct.Edge* %19, i64 2
  %weight22 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx21, i32 0, i32 2
  store i32 5, i32* %weight22, align 4
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
  store i32 15, i32* %weight31, align 4
  %26 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge32 = getelementptr inbounds %struct.Graph, %struct.Graph* %26, i32 0, i32 2
  %27 = load %struct.Edge*, %struct.Edge** %edge32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Edge, %struct.Edge* %27, i64 4
  %src34 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx33, i32 0, i32 0
  store i32 2, i32* %src34, align 4
  %28 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge35 = getelementptr inbounds %struct.Graph, %struct.Graph* %28, i32 0, i32 2
  %29 = load %struct.Edge*, %struct.Edge** %edge35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Edge, %struct.Edge* %29, i64 4
  %dest37 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx36, i32 0, i32 1
  store i32 3, i32* %dest37, align 4
  %30 = load %struct.Graph*, %struct.Graph** %graph, align 8
  %edge38 = getelementptr inbounds %struct.Graph, %struct.Graph* %30, i32 0, i32 2
  %31 = load %struct.Edge*, %struct.Edge** %edge38, align 8
  %arrayidx39 = getelementptr inbounds %struct.Edge, %struct.Edge* %31, i64 4
  %weight40 = getelementptr inbounds %struct.Edge, %struct.Edge* %arrayidx39, i32 0, i32 2
  store i32 4, i32* %weight40, align 4
  %32 = load %struct.Graph*, %struct.Graph** %graph, align 8
  call void @_Z10boruvkaMSTP5Graph(%struct.Graph* %32)
  ret i32 0
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
