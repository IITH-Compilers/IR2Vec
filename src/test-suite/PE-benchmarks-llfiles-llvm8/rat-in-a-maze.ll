; ModuleID = 'PE-benchmarks/rat-in-a-maze.cpp'
source_filename = "PE-benchmarks/rat-in-a-maze.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Solution doesn't exist\00", align 1
@__const.main.maze = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 0, i32 1], [4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 1, i32 1]], align 16

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPA4_i([4 x i32]* %sol) #0 {
entry:
  %sol.addr = alloca [4 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [4 x i32]* %sol, [4 x i32]** %sol.addr, align 8
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
  %2 = load [4 x i32]*, [4 x i32]** %sol.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
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

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z6isSafePA4_iii([4 x i32]* %maze, i32 %x, i32 %y) #2 {
entry:
  %retval = alloca i1, align 1
  %maze.addr = alloca [4 x i32]*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store [4 x i32]* %maze, [4 x i32]** %maze.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp slt i32 %1, 4
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp sge i32 %2, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %y.addr, align 4
  %cmp5 = icmp slt i32 %3, 4
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load [4 x i32]*, [4 x i32]** %maze.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 %idxprom
  %6 = load i32, i32* %y.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %7, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z9solveMazePA4_i([4 x i32]* %maze) #0 {
entry:
  %retval = alloca i1, align 1
  %maze.addr = alloca [4 x i32]*, align 8
  %sol = alloca [4 x [4 x i32]], align 16
  store [4 x i32]* %maze, [4 x i32]** %maze.addr, align 8
  %0 = bitcast [4 x [4 x i32]]* %sol to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 64, i1 false)
  %1 = load [4 x i32]*, [4 x i32]** %maze.addr, align 8
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %sol, i32 0, i32 0
  %call = call zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* %1, i32 0, i32 0, [4 x i32]* %arraydecay)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %sol, i32 0, i32 0
  call void @_Z13printSolutionPA4_i([4 x i32]* %arraydecay2)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #3

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* %maze, i32 %x, i32 %y, [4 x i32]* %sol) #0 {
entry:
  %retval = alloca i1, align 1
  %maze.addr = alloca [4 x i32]*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sol.addr = alloca [4 x i32]*, align 8
  store [4 x i32]* %maze, [4 x i32]** %maze.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store [4 x i32]* %sol, [4 x i32]** %sol.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load [4 x i32]*, [4 x i32]** %sol.addr, align 8
  %3 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %y.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom2
  store i32 1, i32* %arrayidx3, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load [4 x i32]*, [4 x i32]** %maze.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %call = call zeroext i1 @_Z6isSafePA4_iii([4 x i32]* %5, i32 %6, i32 %7)
  %conv = zext i1 %call to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then5, label %if.end25

if.then5:                                         ; preds = %if.end
  %8 = load [4 x i32]*, [4 x i32]** %sol.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 %idxprom6
  %10 = load i32, i32* %y.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 1, i32* %arrayidx9, align 4
  %11 = load [4 x i32]*, [4 x i32]** %maze.addr, align 8
  %12 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %12, 1
  %13 = load i32, i32* %y.addr, align 4
  %14 = load [4 x i32]*, [4 x i32]** %sol.addr, align 8
  %call10 = call zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* %11, i32 %add, i32 %13, [4 x i32]* %14)
  %conv11 = zext i1 %call10 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then5
  store i1 true, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.then5
  %15 = load [4 x i32]*, [4 x i32]** %maze.addr, align 8
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %add15 = add nsw i32 %17, 1
  %18 = load [4 x i32]*, [4 x i32]** %sol.addr, align 8
  %call16 = call zeroext i1 @_Z13solveMazeUtilPA4_iiiS0_([4 x i32]* %15, i32 %16, i32 %add15, [4 x i32]* %18)
  %conv17 = zext i1 %call16 to i32
  %cmp18 = icmp eq i32 %conv17, 1
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  store i1 true, i1* %retval, align 1
  br label %return

if.end20:                                         ; preds = %if.end14
  %19 = load [4 x i32]*, [4 x i32]** %sol.addr, align 8
  %20 = load i32, i32* %x.addr, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 %idxprom21
  %21 = load i32, i32* %y.addr, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx22, i64 0, i64 %idxprom23
  store i32 0, i32* %arrayidx24, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end25:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end25, %if.end20, %if.then19, %if.then13, %if.then
  %22 = load i1, i1* %retval, align 1
  ret i1 %22
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %maze = alloca [4 x [4 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x [4 x i32]]* %maze to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [4 x i32]]* @__const.main.maze to i8*), i64 64, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %maze, i32 0, i32 0
  %call = call zeroext i1 @_Z9solveMazePA4_i([4 x i32]* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
