; ModuleID = 'temp/egg-dropping-puzzle.cpp'
source_filename = "temp/egg-dropping-puzzle.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"nMinimum number of trials in worst case with %d eggs and %d floors is %d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3maxii(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z7eggDropii(i32 %n, i32 %k) #0 {
entry:
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = load i32, i32* %k.addr, align 4
  %add1 = add nsw i32 %2, 1
  %3 = zext i32 %add1 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 %3, i64* %__vla_expr1, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %9
  %arrayidx2 = getelementptr inbounds i32, i32* %arrayidx, i64 1
  store i32 1, i32* %arrayidx2, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = mul nsw i64 %idxprom3, %3
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 %11
  %arrayidx5 = getelementptr inbounds i32, i32* %arrayidx4, i64 0
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %k.addr, align 4
  %cmp7 = icmp sle i32 %13, %14
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %15 = load i32, i32* %j, align 4
  %16 = mul nsw i64 1, %3
  %arrayidx9 = getelementptr inbounds i32, i32* %vla, i64 %16
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %arrayidx9, i64 %idxprom10
  store i32 %15, i32* %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %18 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond6

for.end14:                                        ; preds = %for.cond6
  store i32 2, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc54, %for.end14
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp sle i32 %19, %20
  br i1 %cmp16, label %for.body17, label %for.end56

for.body17:                                       ; preds = %for.cond15
  store i32 2, i32* %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc51, %for.body17
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k.addr, align 4
  %cmp19 = icmp sle i32 %21, %22
  br i1 %cmp19, label %for.body20, label %for.end53

for.body20:                                       ; preds = %for.cond18
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = mul nsw i64 %idxprom21, %3
  %arrayidx22 = getelementptr inbounds i32, i32* %vla, i64 %24
  %25 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %arrayidx22, i64 %idxprom23
  store i32 2147483647, i32* %arrayidx24, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc48, %for.body20
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %j, align 4
  %cmp26 = icmp sle i32 %26, %27
  br i1 %cmp26, label %for.body27, label %for.end50

for.body27:                                       ; preds = %for.cond25
  %28 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom28 = sext i32 %sub to i64
  %29 = mul nsw i64 %idxprom28, %3
  %arrayidx29 = getelementptr inbounds i32, i32* %vla, i64 %29
  %30 = load i32, i32* %x, align 4
  %sub30 = sub nsw i32 %30, 1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %arrayidx29, i64 %idxprom31
  %31 = load i32, i32* %arrayidx32, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = mul nsw i64 %idxprom33, %3
  %arrayidx34 = getelementptr inbounds i32, i32* %vla, i64 %33
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %x, align 4
  %sub35 = sub nsw i32 %34, %35
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %arrayidx34, i64 %idxprom36
  %36 = load i32, i32* %arrayidx37, align 4
  %call = call i32 @_Z3maxii(i32 %31, i32 %36)
  %add38 = add nsw i32 1, %call
  store i32 %add38, i32* %res, align 4
  %37 = load i32, i32* %res, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = mul nsw i64 %idxprom39, %3
  %arrayidx40 = getelementptr inbounds i32, i32* %vla, i64 %39
  %40 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %arrayidx40, i64 %idxprom41
  %41 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp slt i32 %37, %41
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %for.body27
  %42 = load i32, i32* %res, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom44, %3
  %arrayidx45 = getelementptr inbounds i32, i32* %vla, i64 %44
  %45 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %arrayidx45, i64 %idxprom46
  store i32 %42, i32* %arrayidx47, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body27
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %46 = load i32, i32* %x, align 4
  %inc49 = add nsw i32 %46, 1
  store i32 %inc49, i32* %x, align 4
  br label %for.cond25

for.end50:                                        ; preds = %for.cond25
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %47 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %47, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond18

for.end53:                                        ; preds = %for.cond18
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %48 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond15

for.end56:                                        ; preds = %for.cond15
  %49 = load i32, i32* %n.addr, align 4
  %idxprom57 = sext i32 %49 to i64
  %50 = mul nsw i64 %idxprom57, %3
  %arrayidx58 = getelementptr inbounds i32, i32* %vla, i64 %50
  %51 = load i32, i32* %k.addr, align 4
  %idxprom59 = sext i32 %51 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %arrayidx58, i64 %idxprom59
  %52 = load i32, i32* %arrayidx60, align 4
  %53 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %n, align 4
  store i32 36, i32* %k, align 4
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* %k, align 4
  %call = call i32 @_Z7eggDropii(i32 %2, i32 %3)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %call)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
