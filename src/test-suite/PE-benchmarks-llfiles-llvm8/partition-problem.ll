; ModuleID = 'PE-benchmarks/partition-problem.cpp'
source_filename = "PE-benchmarks/partition-problem.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 3, i32 1, i32 1, i32 2, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [45 x i8] c"Can be divided into two subsets of equal sum\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Can not be divided into two subsets of equal sum\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z12findPartiionPii(i32* %arr, i32 %n) #0 {
entry:
  %retval = alloca i1, align 1
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %sum, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %sum, align 4
  %rem = srem i32 %7, 2
  %cmp1 = icmp ne i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.end
  %8 = load i32, i32* %sum, align 4
  %div = sdiv i32 %8, 2
  %add2 = add nsw i32 %div, 1
  %9 = zext i32 %add2 to i64
  %10 = load i32, i32* %n.addr, align 4
  %add3 = add nsw i32 %10, 1
  %11 = zext i32 %add3 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %saved_stack, align 8
  %13 = mul nuw i64 %9, %11
  %vla = alloca i8, i64 %13, align 16
  store i64 %9, i64* %__vla_expr0, align 8
  store i64 %11, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp sle i32 %14, %15
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %16 = mul nsw i64 0, %11
  %arrayidx7 = getelementptr inbounds i8, i8* %vla, i64 %16
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %arrayidx7, i64 %idxprom8
  store i8 1, i8* %arrayidx9, align 1
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond4

for.end12:                                        ; preds = %for.cond4
  store i32 1, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end12
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %sum, align 4
  %div14 = sdiv i32 %20, 2
  %cmp15 = icmp sle i32 %19, %div14
  br i1 %cmp15, label %for.body16, label %for.end22

for.body16:                                       ; preds = %for.cond13
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom17, %11
  %arrayidx18 = getelementptr inbounds i8, i8* %vla, i64 %22
  %arrayidx19 = getelementptr inbounds i8, i8* %arrayidx18, i64 0
  store i8 0, i8* %arrayidx19, align 1
  br label %for.inc20

for.inc20:                                        ; preds = %for.body16
  %23 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %23, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond13

for.end22:                                        ; preds = %for.cond13
  store i32 1, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc67, %for.end22
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %sum, align 4
  %div24 = sdiv i32 %25, 2
  %cmp25 = icmp sle i32 %24, %div24
  br i1 %cmp25, label %for.body26, label %for.end69

for.body26:                                       ; preds = %for.cond23
  store i32 1, i32* %j, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc64, %for.body26
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %n.addr, align 4
  %cmp28 = icmp sle i32 %26, %27
  br i1 %cmp28, label %for.body29, label %for.end66

for.body29:                                       ; preds = %for.cond27
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = mul nsw i64 %idxprom30, %11
  %arrayidx31 = getelementptr inbounds i8, i8* %vla, i64 %29
  %30 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %30, 1
  %idxprom32 = sext i32 %sub to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %arrayidx31, i64 %idxprom32
  %31 = load i8, i8* %arrayidx33, align 1
  %tobool = trunc i8 %31 to i1
  %32 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %32 to i64
  %33 = mul nsw i64 %idxprom34, %11
  %arrayidx35 = getelementptr inbounds i8, i8* %vla, i64 %33
  %34 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %arrayidx35, i64 %idxprom36
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %arrayidx37, align 1
  %35 = load i32, i32* %i, align 4
  %36 = load i32*, i32** %arr.addr, align 8
  %37 = load i32, i32* %j, align 4
  %sub38 = sub nsw i32 %37, 1
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %36, i64 %idxprom39
  %38 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp sge i32 %35, %38
  br i1 %cmp41, label %if.then42, label %if.end63

if.then42:                                        ; preds = %for.body29
  %39 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = mul nsw i64 %idxprom43, %11
  %arrayidx44 = getelementptr inbounds i8, i8* %vla, i64 %40
  %41 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds i8, i8* %arrayidx44, i64 %idxprom45
  %42 = load i8, i8* %arrayidx46, align 1
  %tobool47 = trunc i8 %42 to i1
  br i1 %tobool47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then42
  %43 = load i32, i32* %i, align 4
  %44 = load i32*, i32** %arr.addr, align 8
  %45 = load i32, i32* %j, align 4
  %sub48 = sub nsw i32 %45, 1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i32, i32* %44, i64 %idxprom49
  %46 = load i32, i32* %arrayidx50, align 4
  %sub51 = sub nsw i32 %43, %46
  %idxprom52 = sext i32 %sub51 to i64
  %47 = mul nsw i64 %idxprom52, %11
  %arrayidx53 = getelementptr inbounds i8, i8* %vla, i64 %47
  %48 = load i32, i32* %j, align 4
  %sub54 = sub nsw i32 %48, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %arrayidx53, i64 %idxprom55
  %49 = load i8, i8* %arrayidx56, align 1
  %tobool57 = trunc i8 %49 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then42
  %50 = phi i1 [ true, %if.then42 ], [ %tobool57, %lor.rhs ]
  %51 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %51 to i64
  %52 = mul nsw i64 %idxprom58, %11
  %arrayidx59 = getelementptr inbounds i8, i8* %vla, i64 %52
  %53 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %53 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %arrayidx59, i64 %idxprom60
  %frombool62 = zext i1 %50 to i8
  store i8 %frombool62, i8* %arrayidx61, align 1
  br label %if.end63

if.end63:                                         ; preds = %lor.end, %for.body29
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %54 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %54, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond27

for.end66:                                        ; preds = %for.cond27
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %55 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %55, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond23

for.end69:                                        ; preds = %for.cond23
  %56 = load i32, i32* %sum, align 4
  %div70 = sdiv i32 %56, 2
  %idxprom71 = sext i32 %div70 to i64
  %57 = mul nsw i64 %idxprom71, %11
  %arrayidx72 = getelementptr inbounds i8, i8* %vla, i64 %57
  %58 = load i32, i32* %n.addr, align 4
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %arrayidx72, i64 %idxprom73
  %59 = load i8, i8* %arrayidx74, align 1
  %tobool75 = trunc i8 %59 to i1
  store i1 %tobool75, i1* %retval, align 1
  %60 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %return

return:                                           ; preds = %for.end69, %if.then
  %61 = load i1, i1* %retval, align 1
  ret i1 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [6 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.arr to i8*), i64 24, i1 false)
  store i32 6, i32* %n, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %call = call zeroext i1 @_Z12findPartiionPii(i32* %arraydecay, i32 %1)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @getchar() #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
