; ModuleID = 'temp/n-queen-problem.cpp'
source_filename = "temp/n-queen-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ld = dso_local global [30 x i32] zeroinitializer, align 16
@rd = dso_local global [30 x i32] zeroinitializer, align 16
@cl = dso_local global [30 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPA4_i([4 x i32]* %board) #0 {
entry:
  %board.addr = alloca [4 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [4 x i32]* %board, [4 x i32]** %board.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %board.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z11solveNQUtilPA4_ii([4 x i32]* %board, i32 %col) #0 {
entry:
  %retval = alloca i1, align 1
  %board.addr = alloca [4 x i32]*, align 8
  %col.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store [4 x i32]* %board, [4 x i32]** %board.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %col.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %col.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 4
  %sub2 = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* @ld, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ne i32 %4, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %col.addr, align 4
  %add4 = add nsw i32 %5, %6
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds [30 x i32], [30 x i32]* @rd, i64 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %7, 1
  br i1 %cmp7, label %land.lhs.true8, label %if.end44

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [30 x i32], [30 x i32]* @cl, i64 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %9, 1
  br i1 %cmp11, label %if.then12, label %if.end44

if.then12:                                        ; preds = %land.lhs.true8
  %10 = load [4 x i32]*, [4 x i32]** %board.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 %idxprom13
  %12 = load i32, i32* %col.addr, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  store i32 1, i32* %arrayidx16, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [30 x i32], [30 x i32]* @cl, i64 0, i64 %idxprom17
  store i32 1, i32* %arrayidx18, align 4
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %col.addr, align 4
  %add19 = add nsw i32 %14, %15
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [30 x i32], [30 x i32]* @rd, i64 0, i64 %idxprom20
  store i32 1, i32* %arrayidx21, align 4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %col.addr, align 4
  %sub22 = sub nsw i32 %16, %17
  %add23 = add nsw i32 %sub22, 4
  %sub24 = sub nsw i32 %add23, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [30 x i32], [30 x i32]* @ld, i64 0, i64 %idxprom25
  store i32 1, i32* %arrayidx26, align 4
  %18 = load [4 x i32]*, [4 x i32]** %board.addr, align 8
  %19 = load i32, i32* %col.addr, align 4
  %add27 = add nsw i32 %19, 1
  %call = call zeroext i1 @_Z11solveNQUtilPA4_ii([4 x i32]* %18, i32 %add27)
  br i1 %call, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then12
  store i1 true, i1* %retval, align 1
  br label %return

if.end29:                                         ; preds = %if.then12
  %20 = load [4 x i32]*, [4 x i32]** %board.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 %idxprom30
  %22 = load i32, i32* %col.addr, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx31, i64 0, i64 %idxprom32
  store i32 0, i32* %arrayidx33, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [30 x i32], [30 x i32]* @cl, i64 0, i64 %idxprom34
  store i32 0, i32* %arrayidx35, align 4
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %col.addr, align 4
  %add36 = add nsw i32 %24, %25
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [30 x i32], [30 x i32]* @rd, i64 0, i64 %idxprom37
  store i32 0, i32* %arrayidx38, align 4
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %col.addr, align 4
  %sub39 = sub nsw i32 %26, %27
  %add40 = add nsw i32 %sub39, 4
  %sub41 = sub nsw i32 %add40, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [30 x i32], [30 x i32]* @ld, i64 0, i64 %idxprom42
  store i32 0, i32* %arrayidx43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end29, %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then28, %if.then
  %29 = load i1, i1* %retval, align 1
  ret i1 %29
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z7solveNQv() #0 {
entry:
  %retval = alloca i1, align 1
  %board = alloca [4 x [4 x i32]], align 16
  %0 = bitcast [4 x [4 x i32]]* %board to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %board, i64 0, i64 0
  %call = call zeroext i1 @_Z11solveNQUtilPA4_ii([4 x i32]* %arraydecay, i32 0)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %board, i64 0, i64 0
  call void @_Z13printSolutionPA4_i([4 x i32]* %arraydecay2)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call zeroext i1 @_Z7solveNQv()
  ret i32 0
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
