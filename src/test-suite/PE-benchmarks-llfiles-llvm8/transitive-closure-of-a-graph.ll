; ModuleID = 'PE-benchmarks/transitive-closure-of-a-graph.cpp'
source_filename = "PE-benchmarks/transitive-closure-of-a-graph.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Following matrix is transitive closure of the given graph\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 0, i32 1]], align 16

; Function Attrs: noinline uwtable
define dso_local void @_Z17transitiveClosurePA4_i([4 x i32]* %graph) #0 {
entry:
  %graph.addr = alloca [4 x i32]*, align 8
  %reach = alloca [4 x [4 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [4 x i32]* %graph, [4 x i32]** %graph.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %graph.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %idxprom6
  %7 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %5, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc46, %for.end12
  %10 = load i32, i32* %k, align 4
  %cmp14 = icmp slt i32 %10, 4
  br i1 %cmp14, label %for.body15, label %for.end48

for.body15:                                       ; preds = %for.cond13
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc43, %for.body15
  %11 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %11, 4
  br i1 %cmp17, label %for.body18, label %for.end45

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc40, %for.body18
  %12 = load i32, i32* %j, align 4
  %cmp20 = icmp slt i32 %12, 4
  br i1 %cmp20, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond19
  %13 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %idxprom22
  %14 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx23, i64 0, i64 %idxprom24
  %15 = load i32, i32* %arrayidx25, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body21
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %idxprom26
  %17 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx27, i64 0, i64 %idxprom28
  %18 = load i32, i32* %arrayidx29, align 4
  %tobool30 = icmp ne i32 %18, 0
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %19 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %idxprom31
  %20 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx32, i64 0, i64 %idxprom33
  %21 = load i32, i32* %arrayidx34, align 4
  %tobool35 = icmp ne i32 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %22 = phi i1 [ false, %lor.rhs ], [ %tobool35, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.body21
  %23 = phi i1 [ true, %for.body21 ], [ %22, %land.end ]
  %conv = zext i1 %23 to i32
  %24 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i64 0, i64 %idxprom36
  %25 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx37, i64 0, i64 %idxprom38
  store i32 %conv, i32* %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %lor.end
  %26 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond19

for.end42:                                        ; preds = %for.cond19
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %27 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %27, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond16

for.end45:                                        ; preds = %for.cond16
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %28 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %28, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond13

for.end48:                                        ; preds = %for.cond13
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %reach, i32 0, i32 0
  call void @_Z13printSolutionPA4_i([4 x i32]* %arraydecay)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPA4_i([4 x i32]* %reach) #0 {
entry:
  %reach.addr = alloca [4 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [4 x i32]* %reach, [4 x i32]** %reach.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %reach.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca [4 x [4 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x [4 x i32]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [4 x i32]]* @__const.main.graph to i8*), i64 64, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %graph, i32 0, i32 0
  call void @_Z17transitiveClosurePA4_i([4 x i32]* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
