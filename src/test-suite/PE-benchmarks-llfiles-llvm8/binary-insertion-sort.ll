; ModuleID = 'PE-benchmarks/binary-insertion-sort.cpp'
source_filename = "PE-benchmarks/binary-insertion-sort.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [11 x i32] [i32 37, i32 23, i32 0, i32 17, i32 12, i32 72, i32 31, i32 46, i32 100, i32 88, i32 54], align 16
@.str = private unnamed_addr constant [16 x i8] c"Sorted array: \0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline uwtable
define dso_local i32 @_Z12binarySearchPiiii(i32* %a, i32 %item, i32 %low, i32 %high) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %item.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %item, i32* %item.addr, align 4
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load i32, i32* %high.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %item.addr, align 4
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32, i32* %low.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, %5
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %6, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* %low.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %low.addr, align 4
  %9 = load i32, i32* %high.addr, align 4
  %add2 = add nsw i32 %8, %9
  %div = sdiv i32 %add2, 2
  store i32 %div, i32* %mid, align 4
  %10 = load i32, i32* %item.addr, align 4
  %11 = load i32*, i32** %a.addr, align 8
  %12 = load i32, i32* %mid, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %13 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %10, %13
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %14 = load i32, i32* %mid, align 4
  %add7 = add nsw i32 %14, 1
  store i32 %add7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %15 = load i32, i32* %item.addr, align 4
  %16 = load i32*, i32** %a.addr, align 8
  %17 = load i32, i32* %mid, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %15, %18
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %19 = load i32*, i32** %a.addr, align 8
  %20 = load i32, i32* %item.addr, align 4
  %21 = load i32, i32* %mid, align 4
  %add13 = add nsw i32 %21, 1
  %22 = load i32, i32* %high.addr, align 4
  %call = call i32 @_Z12binarySearchPiiii(i32* %19, i32 %20, i32 %add13, i32 %22)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %23 = load i32*, i32** %a.addr, align 8
  %24 = load i32, i32* %item.addr, align 4
  %25 = load i32, i32* %low.addr, align 4
  %26 = load i32, i32* %mid, align 4
  %sub = sub nsw i32 %26, 1
  %call15 = call i32 @_Z12binarySearchPiiii(i32* %23, i32 %24, i32 %25, i32 %sub)
  store i32 %call15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then6, %cond.end
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline uwtable
define dso_local void @_Z13insertionSortPii(i32* %a, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %loc = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %selected = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %j, align 4
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %selected, align 4
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32, i32* %selected, align 4
  %8 = load i32, i32* %j, align 4
  %call = call i32 @_Z12binarySearchPiiii(i32* %6, i32 %7, i32 0, i32 %8)
  store i32 %call, i32* %loc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %loc, align 4
  %cmp1 = icmp sge i32 %9, %10
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32*, i32** %a.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom2
  %13 = load i32, i32* %arrayidx3, align 4
  %14 = load i32*, i32** %a.addr, align 8
  %15 = load i32, i32* %j, align 4
  %add = add nsw i32 %15, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 %idxprom4
  store i32 %13, i32* %arrayidx5, align 4
  %16 = load i32, i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %selected, align 4
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %19, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  store i32 %17, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [11 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([11 x i32]* @__const.main.a to i8*), i64 44, i1 false)
  store i32 11, i32* %n, align 4
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %a, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  call void @_Z13insertionSortPii(i32* %arraydecay, i32 %1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* %a, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
