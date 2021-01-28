; ModuleID = 'PE-benchmarks/finite-automata-algorithm.cpp'
source_filename = "PE-benchmarks/finite-automata-algorithm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\0A Pattern found at index %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"AABAACAADAABAAABAA\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AABA\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z12getNextStatePciii(i8* %pat, i32 %M, i32 %state, i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %pat.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %ns = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i8*, i8** %pat.addr, align 8
  %4 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %2, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %state.addr, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %state.addr, align 4
  store i32 %7, i32* %ns, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %if.end
  %8 = load i32, i32* %ns, align 4
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %pat.addr, align 8
  %10 = load i32, i32* %ns, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %11 to i32
  %12 = load i32, i32* %x.addr, align 4
  %cmp6 = icmp eq i32 %conv5, %12
  br i1 %cmp6, label %if.then7, label %if.end28

if.then7:                                         ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then7
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %ns, align 4
  %sub9 = sub nsw i32 %14, 1
  %cmp10 = icmp slt i32 %13, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %15 = load i8*, i8** %pat.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %18 = load i8*, i8** %pat.addr, align 8
  %19 = load i32, i32* %state.addr, align 4
  %20 = load i32, i32* %ns, align 4
  %sub15 = sub nsw i32 %19, %20
  %add16 = add nsw i32 %sub15, 1
  %21 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %add16, %21
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom18
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %22 to i32
  %cmp21 = icmp ne i32 %conv14, %conv20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body11
  br label %for.end

if.end23:                                         ; preds = %for.body11
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond8

for.end:                                          ; preds = %if.then22, %for.cond8
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %ns, align 4
  %sub24 = sub nsw i32 %25, 1
  %cmp25 = icmp eq i32 %24, %sub24
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end
  %26 = load i32, i32* %ns, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %for.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.body
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %27 = load i32, i32* %ns, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %ns, align 4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end30, %if.then26, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z9computeTFPciPA256_i(i8* %pat, i32 %M, [256 x i32]* %TF) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %TF.addr = alloca [256 x i32]*, align 8
  %state = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store [256 x i32]* %TF, [256 x i32]** %TF.addr, align 8
  store i32 0, i32* %state, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %state, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %2, 256
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i8*, i8** %pat.addr, align 8
  %4 = load i32, i32* %M.addr, align 4
  %5 = load i32, i32* %state, align 4
  %6 = load i32, i32* %x, align 4
  %call = call i32 @_Z12getNextStatePciii(i8* %3, i32 %4, i32 %5, i32 %6)
  %7 = load [256 x i32]*, [256 x i32]** %TF.addr, align 8
  %8 = load i32, i32* %state, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 %idxprom
  %9 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %call, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %11 = load i32, i32* %state, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, i32* %state, align 4
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z6searchPcS_(i8* %pat, i8* %txt) #1 {
entry:
  %pat.addr = alloca i8*, align 8
  %txt.addr = alloca i8*, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %state = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %txt, i8** %txt.addr, align 8
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %M, align 4
  %1 = load i8*, i8** %txt.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %N, align 4
  %2 = load i32, i32* %M, align 4
  %add = add nsw i32 %2, 1
  %3 = zext i32 %add to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca [256 x i32], i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  %5 = load i8*, i8** %pat.addr, align 8
  %6 = load i32, i32* %M, align 4
  call void @_Z9computeTFPciPA256_i(i8* %5, i32 %6, [256 x i32]* %vla)
  store i32 0, i32* %state, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %state, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %vla, i64 %idxprom
  %10 = load i8*, i8** %txt.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  %12 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = sext i8 %12 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx, i64 0, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  store i32 %13, i32* %state, align 4
  %14 = load i32, i32* %state, align 4
  %15 = load i32, i32* %M, align 4
  %cmp7 = icmp eq i32 %14, %15
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %16, %17
  %add8 = add nsw i32 %sub, 1
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %add8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %19)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %txt = alloca i8*, align 8
  %pat = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8** %txt, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %pat, align 8
  %0 = load i8*, i8** %pat, align 8
  %1 = load i8*, i8** %txt, align 8
  call void @_Z6searchPcS_(i8* %0, i8* %1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
