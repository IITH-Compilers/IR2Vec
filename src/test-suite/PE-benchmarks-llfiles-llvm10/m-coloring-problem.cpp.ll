; ModuleID = 'temp/m-coloring-problem.cpp'
source_filename = "temp/m-coloring-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Solution Exists: Following are the assigned colors \0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.graph = private unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\00\01\01\01", [4 x i8] c"\01\00\01\00", [4 x i8] c"\01\01\00\01", [4 x i8] c"\01\00\01\00"], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z6isSafeiPA4_bPii(i32 %v, [4 x i8]* %graph, i32* %color, i32 %c) #0 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca i32, align 4
  %graph.addr = alloca [4 x i8]*, align 8
  %color.addr = alloca i32*, align 8
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  store [4 x i8]* %graph, [4 x i8]** %graph.addr, align 8
  store i32* %color, i32** %color.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [4 x i8]*, [4 x i8]** %graph.addr, align 8
  %2 = load i32, i32* %v.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 %idxprom
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i64 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %c.addr, align 4
  %6 = load i32*, i32** %color.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %5, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* %graph, i32 %m, i32* %color, i32 %v) #1 {
entry:
  %retval = alloca i1, align 1
  %graph.addr = alloca [4 x i8]*, align 8
  %m.addr = alloca i32, align 4
  %color.addr = alloca i32*, align 8
  %v.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store [4 x i8]* %graph, [4 x i8]** %graph.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32* %color, i32** %color.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %c, align 4
  %2 = load i32, i32* %m.addr, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %v.addr, align 4
  %4 = load [4 x i8]*, [4 x i8]** %graph.addr, align 8
  %5 = load i32*, i32** %color.addr, align 8
  %6 = load i32, i32* %c, align 4
  %call = call zeroext i1 @_Z6isSafeiPA4_bPii(i32 %3, [4 x i8]* %4, i32* %5, i32 %6)
  br i1 %call, label %if.then2, label %if.end9

if.then2:                                         ; preds = %for.body
  %7 = load i32, i32* %c, align 4
  %8 = load i32*, i32** %color.addr, align 8
  %9 = load i32, i32* %v.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4
  %10 = load [4 x i8]*, [4 x i8]** %graph.addr, align 8
  %11 = load i32, i32* %m.addr, align 4
  %12 = load i32*, i32** %color.addr, align 8
  %13 = load i32, i32* %v.addr, align 4
  %add = add nsw i32 %13, 1
  %call3 = call zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* %10, i32 %11, i32* %12, i32 %add)
  %conv = zext i1 %call3 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i1 true, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.then2
  %14 = load i32*, i32** %color.addr, align 8
  %15 = load i32, i32* %v.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %16 = load i32, i32* %c, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %17 = load i1, i1* %retval, align 1
  ret i1 %17
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z13graphColoringPA4_bi([4 x i8]* %graph, i32 %m) #1 {
entry:
  %retval = alloca i1, align 1
  %graph.addr = alloca [4 x i8]*, align 8
  %m.addr = alloca i32, align 4
  %color = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  store [4 x i8]* %graph, [4 x i8]** %graph.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %color, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load [4 x i8]*, [4 x i8]** %graph.addr, align 8
  %4 = load i32, i32* %m.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %color, i64 0, i64 0
  %call = call zeroext i1 @_Z17graphColoringUtilPA4_biPii([4 x i8]* %3, i32 %4, i32* %arraydecay, i32 0)
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.end
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i64 0, i64 0
  call void @_Z13printSolutionPi(i32* %arraydecay3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPi(i32* %color) #1 {
entry:
  %color.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %color, i32** %color.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %color.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %graph = alloca [4 x [4 x i8]], align 16
  %m = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x [4 x i8]]* %graph to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([4 x [4 x i8]], [4 x [4 x i8]]* @__const.main.graph, i32 0, i32 0, i32 0), i64 16, i1 false)
  store i32 3, i32* %m, align 4
  %arraydecay = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %graph, i64 0, i64 0
  %1 = load i32, i32* %m, align 4
  %call = call zeroext i1 @_Z13graphColoringPA4_bi([4 x i8]* %arraydecay, i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
