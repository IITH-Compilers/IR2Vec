; ModuleID = 'PE-benchmarks/the-knights-tour.cpp'
source_filename = "PE-benchmarks/the-knights-tour.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %2d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const._Z7solveKTv.xMove = private unnamed_addr constant [8 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -2, i32 -1, i32 1, i32 2], align 16
@__const._Z7solveKTv.yMove = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 2, i32 1, i32 -1, i32 -2, i32 -2, i32 -1], align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"Solution does not exist\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z6isSafeiiPA8_i(i32 %x, i32 %y, [8 x i32]* %sol) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sol.addr = alloca [8 x i32]*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store [8 x i32]* %sol, [8 x i32]** %sol.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp slt i32 %1, 8
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp sge i32 %2, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %y.addr, align 4
  %cmp5 = icmp slt i32 %3, 8
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %4 = load [8 x i32]*, [8 x i32]** %sol.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 %idxprom
  %6 = load i32, i32* %y.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %7, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ]
  ret i1 %8
}

; Function Attrs: noinline uwtable
define dso_local void @_Z13printSolutionPA8_i([8 x i32]* %sol) #1 {
entry:
  %sol.addr = alloca [8 x i32]*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store [8 x i32]* %sol, [8 x i32]** %sol.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [8 x i32]*, [8 x i32]** %sol.addr, align 8
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %y, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, i32* %x, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %x, align 4
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_Z7solveKTv() #1 {
entry:
  %retval = alloca i1, align 1
  %sol = alloca [8 x [8 x i32]], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xMove = alloca [8 x i32], align 16
  %yMove = alloca [8 x i32], align 16
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %sol, i64 0, i64 %idxprom
  %3 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 -1, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %y, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %5 = load i32, i32* %x, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %x, align 4
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  %6 = bitcast [8 x i32]* %xMove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @__const._Z7solveKTv.xMove to i8*), i64 32, i1 false)
  %7 = bitcast [8 x i32]* %yMove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const._Z7solveKTv.yMove to i8*), i64 32, i1 false)
  %arrayidx9 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %sol, i64 0, i64 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx9, i64 0, i64 0
  store i32 0, i32* %arrayidx10, align 16
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %sol, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [8 x i32], [8 x i32]* %xMove, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [8 x i32], [8 x i32]* %yMove, i32 0, i32 0
  %call = call i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 0, i32 0, i32 1, [8 x i32]* %arraydecay, i32* %arraydecay11, i32* %arraydecay12)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.end8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %for.end8
  %arraydecay15 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %sol, i32 0, i32 0
  call void @_Z13printSolutionPA8_i([8 x i32]* %arraydecay15)
  br label %if.end

if.end:                                           ; preds = %if.else
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noinline uwtable
define dso_local i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 %x, i32 %y, i32 %movei, [8 x i32]* %sol, i32* %xMove, i32* %yMove) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %movei.addr = alloca i32, align 4
  %sol.addr = alloca [8 x i32]*, align 8
  %xMove.addr = alloca i32*, align 8
  %yMove.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %next_x = alloca i32, align 4
  %next_y = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %movei, i32* %movei.addr, align 4
  store [8 x i32]* %sol, [8 x i32]** %sol.addr, align 8
  store i32* %xMove, i32** %xMove.addr, align 8
  store i32* %yMove, i32** %yMove.addr, align 8
  %0 = load i32, i32* %movei.addr, align 4
  %cmp = icmp eq i32 %0, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %k, align 4
  %cmp1 = icmp slt i32 %1, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32*, i32** %xMove.addr, align 8
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, %5
  store i32 %add, i32* %next_x, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32*, i32** %yMove.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %add4 = add nsw i32 %6, %9
  store i32 %add4, i32* %next_y, align 4
  %10 = load i32, i32* %next_x, align 4
  %11 = load i32, i32* %next_y, align 4
  %12 = load [8 x i32]*, [8 x i32]** %sol.addr, align 8
  %call = call zeroext i1 @_Z6isSafeiiPA8_i(i32 %10, i32 %11, [8 x i32]* %12)
  br i1 %call, label %if.then5, label %if.end19

if.then5:                                         ; preds = %for.body
  %13 = load i32, i32* %movei.addr, align 4
  %14 = load [8 x i32]*, [8 x i32]** %sol.addr, align 8
  %15 = load i32, i32* %next_x, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 %idxprom6
  %16 = load i32, i32* %next_y, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %13, i32* %arrayidx9, align 4
  %17 = load i32, i32* %next_x, align 4
  %18 = load i32, i32* %next_y, align 4
  %19 = load i32, i32* %movei.addr, align 4
  %add10 = add nsw i32 %19, 1
  %20 = load [8 x i32]*, [8 x i32]** %sol.addr, align 8
  %21 = load i32*, i32** %xMove.addr, align 8
  %22 = load i32*, i32** %yMove.addr, align 8
  %call11 = call i32 @_Z11solveKTUtiliiiPA8_iPiS1_(i32 %17, i32 %18, i32 %add10, [8 x i32]* %20, i32* %21, i32* %22)
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then5
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then5
  %23 = load [8 x i32]*, [8 x i32]** %sol.addr, align 8
  %24 = load i32, i32* %next_x, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 %idxprom14
  %25 = load i32, i32* %next_y, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  store i32 -1, i32* %arrayidx17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call zeroext i1 @_Z7solveKTv()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
