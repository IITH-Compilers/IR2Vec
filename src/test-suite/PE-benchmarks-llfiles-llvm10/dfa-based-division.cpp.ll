; ModuleID = 'temp/dfa-based-division.cpp'
source_filename = "temp/dfa-based-division.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Divisible\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Not Divisible: Remainder is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z10preprocessiPA2_i(i32 %k, [2 x i32]* %Table) #0 {
entry:
  %k.addr = alloca i32, align 4
  %Table.addr = alloca [2 x i32]*, align 8
  %trans0 = alloca i32, align 4
  %trans1 = alloca i32, align 4
  %state = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  store [2 x i32]* %Table, [2 x i32]** %Table.addr, align 8
  store i32 0, i32* %state, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %state, align 4
  %1 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %state, align 4
  %shl = shl i32 %2, 1
  store i32 %shl, i32* %trans0, align 4
  %3 = load i32, i32* %trans0, align 4
  %4 = load i32, i32* %k.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i32, i32* %trans0, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i32, i32* %trans0, align 4
  %7 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 %6, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %sub, %cond.false ]
  %8 = load [2 x i32]*, [2 x i32]** %Table.addr, align 8
  %9 = load i32, i32* %state, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i64 0, i64 0
  store i32 %cond, i32* %arrayidx2, align 4
  %10 = load i32, i32* %state, align 4
  %shl3 = shl i32 %10, 1
  %add = add nsw i32 %shl3, 1
  store i32 %add, i32* %trans1, align 4
  %11 = load i32, i32* %trans1, align 4
  %12 = load i32, i32* %k.addr, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  %13 = load i32, i32* %trans1, align 4
  br label %cond.end8

cond.false6:                                      ; preds = %cond.end
  %14 = load i32, i32* %trans1, align 4
  %15 = load i32, i32* %k.addr, align 4
  %sub7 = sub nsw i32 %14, %15
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.true5
  %cond9 = phi i32 [ %13, %cond.true5 ], [ %sub7, %cond.false6 ]
  %16 = load [2 x i32]*, [2 x i32]** %Table.addr, align 8
  %17 = load i32, i32* %state, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i64 0, i64 1
  store i32 %cond9, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end8
  %18 = load i32, i32* %state, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %state, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z15isDivisibleUtiliPiPA2_i(i32 %num, i32* %state, [2 x i32]* %Table) #1 {
entry:
  %num.addr = alloca i32, align 4
  %state.addr = alloca i32*, align 8
  %Table.addr = alloca [2 x i32]*, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32* %state, i32** %state.addr, align 8
  store [2 x i32]* %Table, [2 x i32]** %Table.addr, align 8
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %num.addr, align 4
  %shr = ashr i32 %1, 1
  %2 = load i32*, i32** %state.addr, align 8
  %3 = load [2 x i32]*, [2 x i32]** %Table.addr, align 8
  call void @_Z15isDivisibleUtiliPiPA2_i(i32 %shr, i32* %2, [2 x i32]* %3)
  %4 = load [2 x i32]*, [2 x i32]** %Table.addr, align 8
  %5 = load i32*, i32** %state.addr, align 8
  %6 = load i32, i32* %5, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 %idxprom
  %7 = load i32, i32* %num.addr, align 4
  %and = and i32 %7, 1
  %idxprom1 = sext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32*, i32** %state.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z11isDivisibleii(i32 %num, i32 %k) #1 {
entry:
  %num.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %Table = alloca [2 x i32]*, align 8
  %state = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to [2 x i32]*
  store [2 x i32]* %1, [2 x i32]** %Table, align 8
  %2 = load i32, i32* %k.addr, align 4
  %3 = load [2 x i32]*, [2 x i32]** %Table, align 8
  call void @_Z10preprocessiPA2_i(i32 %2, [2 x i32]* %3)
  store i32 0, i32* %state, align 4
  %4 = load i32, i32* %num.addr, align 4
  %5 = load [2 x i32]*, [2 x i32]** %Table, align 8
  call void @_Z15isDivisibleUtiliPiPA2_i(i32 %4, i32* %state, [2 x i32]* %5)
  %6 = load i32, i32* %state, align 4
  ret i32 %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %k = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 47, i32* %num, align 4
  store i32 5, i32* %k, align 4
  %0 = load i32, i32* %num, align 4
  %1 = load i32, i32* %k, align 4
  %call = call i32 @_Z11isDivisibleii(i32 %0, i32 %1)
  store i32 %call, i32* %remainder, align 4
  %2 = load i32, i32* %remainder, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %remainder, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
