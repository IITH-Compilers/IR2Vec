; ModuleID = 'PE-benchmarks/subset-sum-problem.cpp'
source_filename = "PE-benchmarks/subset-sum-problem.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.set = private unnamed_addr constant [6 x i32] [i32 3, i32 34, i32 4, i32 12, i32 5, i32 2], align 16
@.str = private unnamed_addr constant [30 x i8] c"Found a subset with given sum\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No subset with given sum\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z11isSubsetSumPiii(i32* %set, i32 %n, i32 %sum) #0 {
entry:
  %set.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %sum.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %set, i32** %set.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %sum, i32* %sum.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = load i32, i32* %sum.addr, align 4
  %add1 = add nsw i32 %2, 1
  %3 = zext i32 %add1 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i8, i64 %5, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 %3, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
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
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %9
  %arrayidx2 = getelementptr inbounds i8, i8* %arrayidx, i64 0
  store i8 1, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i3, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %11 = load i32, i32* %i3, align 4
  %12 = load i32, i32* %sum.addr, align 4
  %cmp5 = icmp sle i32 %11, %12
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %13 = mul nsw i64 0, %3
  %arrayidx7 = getelementptr inbounds i8, i8* %vla, i64 %13
  %14 = load i32, i32* %i3, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %arrayidx7, i64 %idxprom8
  store i8 0, i8* %arrayidx9, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %15 = load i32, i32* %i3, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %i3, align 4
  br label %for.cond4

for.end12:                                        ; preds = %for.cond4
  store i32 1, i32* %i13, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc62, %for.end12
  %16 = load i32, i32* %i13, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp sle i32 %16, %17
  br i1 %cmp15, label %for.body16, label %for.end64

for.body16:                                       ; preds = %for.cond14
  store i32 1, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc59, %for.body16
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %sum.addr, align 4
  %cmp18 = icmp sle i32 %18, %19
  br i1 %cmp18, label %for.body19, label %for.end61

for.body19:                                       ; preds = %for.cond17
  %20 = load i32, i32* %j, align 4
  %21 = load i32*, i32** %set.addr, align 8
  %22 = load i32, i32* %i13, align 4
  %sub = sub nsw i32 %22, 1
  %idxprom20 = sext i32 %sub to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp slt i32 %20, %23
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body19
  %24 = load i32, i32* %i13, align 4
  %sub23 = sub nsw i32 %24, 1
  %idxprom24 = sext i32 %sub23 to i64
  %25 = mul nsw i64 %idxprom24, %3
  %arrayidx25 = getelementptr inbounds i8, i8* %vla, i64 %25
  %26 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %arrayidx25, i64 %idxprom26
  %27 = load i8, i8* %arrayidx27, align 1
  %tobool = trunc i8 %27 to i1
  %28 = load i32, i32* %i13, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = mul nsw i64 %idxprom28, %3
  %arrayidx29 = getelementptr inbounds i8, i8* %vla, i64 %29
  %30 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %arrayidx29, i64 %idxprom30
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %arrayidx31, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body19
  %31 = load i32, i32* %j, align 4
  %32 = load i32*, i32** %set.addr, align 8
  %33 = load i32, i32* %i13, align 4
  %sub32 = sub nsw i32 %33, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %32, i64 %idxprom33
  %34 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp sge i32 %31, %34
  br i1 %cmp35, label %if.then36, label %if.end58

if.then36:                                        ; preds = %if.end
  %35 = load i32, i32* %i13, align 4
  %sub37 = sub nsw i32 %35, 1
  %idxprom38 = sext i32 %sub37 to i64
  %36 = mul nsw i64 %idxprom38, %3
  %arrayidx39 = getelementptr inbounds i8, i8* %vla, i64 %36
  %37 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %arrayidx39, i64 %idxprom40
  %38 = load i8, i8* %arrayidx41, align 1
  %tobool42 = trunc i8 %38 to i1
  br i1 %tobool42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then36
  %39 = load i32, i32* %i13, align 4
  %sub43 = sub nsw i32 %39, 1
  %idxprom44 = sext i32 %sub43 to i64
  %40 = mul nsw i64 %idxprom44, %3
  %arrayidx45 = getelementptr inbounds i8, i8* %vla, i64 %40
  %41 = load i32, i32* %j, align 4
  %42 = load i32*, i32** %set.addr, align 8
  %43 = load i32, i32* %i13, align 4
  %sub46 = sub nsw i32 %43, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %42, i64 %idxprom47
  %44 = load i32, i32* %arrayidx48, align 4
  %sub49 = sub nsw i32 %41, %44
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds i8, i8* %arrayidx45, i64 %idxprom50
  %45 = load i8, i8* %arrayidx51, align 1
  %tobool52 = trunc i8 %45 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then36
  %46 = phi i1 [ true, %if.then36 ], [ %tobool52, %lor.rhs ]
  %47 = load i32, i32* %i13, align 4
  %idxprom53 = sext i32 %47 to i64
  %48 = mul nsw i64 %idxprom53, %3
  %arrayidx54 = getelementptr inbounds i8, i8* %vla, i64 %48
  %49 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %49 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %arrayidx54, i64 %idxprom55
  %frombool57 = zext i1 %46 to i8
  store i8 %frombool57, i8* %arrayidx56, align 1
  br label %if.end58

if.end58:                                         ; preds = %lor.end, %if.end
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %50 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %50, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond17

for.end61:                                        ; preds = %for.cond17
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %51 = load i32, i32* %i13, align 4
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, i32* %i13, align 4
  br label %for.cond14

for.end64:                                        ; preds = %for.cond14
  %52 = load i32, i32* %n.addr, align 4
  %idxprom65 = sext i32 %52 to i64
  %53 = mul nsw i64 %idxprom65, %3
  %arrayidx66 = getelementptr inbounds i8, i8* %vla, i64 %53
  %54 = load i32, i32* %sum.addr, align 4
  %idxprom67 = sext i32 %54 to i64
  %arrayidx68 = getelementptr inbounds i8, i8* %arrayidx66, i64 %idxprom67
  %55 = load i8, i8* %arrayidx68, align 1
  %tobool69 = trunc i8 %55 to i1
  %56 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %56)
  ret i1 %tobool69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %set = alloca [6 x i32], align 16
  %sum = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %set to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.set to i8*), i64 24, i1 false)
  store i32 9, i32* %sum, align 4
  store i32 6, i32* %n, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %set, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %sum, align 4
  %call = call zeroext i1 @_Z11isSubsetSumPiii(i32* %arraydecay, i32 %1, i32 %2)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
