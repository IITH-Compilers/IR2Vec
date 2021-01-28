; ModuleID = 'PE-benchmarks/longest-palindromic-subsequence.cpp'
source_filename = "PE-benchmarks/longest-palindromic-subsequence.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.seq = private unnamed_addr constant [16 x i8] c"GEEKS FOR GEEKS\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"The lnegth of the LPS is %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3maxii(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3lpsPc(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cl = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %2 = zext i32 %1 to i64
  %3 = load i32, i32* %n, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %saved_stack, align 8
  %6 = mul nuw i64 %2, %4
  %vla = alloca i32, i64 %6, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i64 %4, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %4
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %10
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom1
  store i32 1, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %cl, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc62, %for.end
  %13 = load i32, i32* %cl, align 4
  %14 = load i32, i32* %n, align 4
  %cmp4 = icmp sle i32 %13, %14
  br i1 %cmp4, label %for.body5, label %for.end64

for.body5:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc59, %for.body5
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n, align 4
  %17 = load i32, i32* %cl, align 4
  %sub = sub nsw i32 %16, %17
  %add = add nsw i32 %sub, 1
  %cmp7 = icmp slt i32 %15, %add
  br i1 %cmp7, label %for.body8, label %for.end61

for.body8:                                        ; preds = %for.cond6
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %cl, align 4
  %add9 = add nsw i32 %18, %19
  %sub10 = sub nsw i32 %add9, 1
  store i32 %sub10, i32* %j, align 4
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom11
  %22 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %22 to i32
  %23 = load i8*, i8** %str.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %idxprom14
  %25 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv13, %conv16
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body8
  %26 = load i32, i32* %cl, align 4
  %cmp18 = icmp eq i32 %26, 2
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = mul nsw i64 %idxprom19, %4
  %arrayidx20 = getelementptr inbounds i32, i32* %vla, i64 %28
  %29 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %arrayidx20, i64 %idxprom21
  store i32 2, i32* %arrayidx22, align 4
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true, %for.body8
  %30 = load i8*, i8** %str.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %30, i64 %idxprom23
  %32 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %32 to i32
  %33 = load i8*, i8** %str.addr, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom26
  %35 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %35 to i32
  %cmp29 = icmp eq i32 %conv25, %conv28
  br i1 %cmp29, label %if.then30, label %if.else42

if.then30:                                        ; preds = %if.else
  %36 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %36, 1
  %idxprom32 = sext i32 %add31 to i64
  %37 = mul nsw i64 %idxprom32, %4
  %arrayidx33 = getelementptr inbounds i32, i32* %vla, i64 %37
  %38 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %38, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %arrayidx33, i64 %idxprom35
  %39 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %39, 2
  %40 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = mul nsw i64 %idxprom38, %4
  %arrayidx39 = getelementptr inbounds i32, i32* %vla, i64 %41
  %42 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %42 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %arrayidx39, i64 %idxprom40
  store i32 %add37, i32* %arrayidx41, align 4
  br label %if.end

if.else42:                                        ; preds = %if.else
  %43 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom43, %4
  %arrayidx44 = getelementptr inbounds i32, i32* %vla, i64 %44
  %45 = load i32, i32* %j, align 4
  %sub45 = sub nsw i32 %45, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %arrayidx44, i64 %idxprom46
  %46 = load i32, i32* %arrayidx47, align 4
  %47 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %47, 1
  %idxprom49 = sext i32 %add48 to i64
  %48 = mul nsw i64 %idxprom49, %4
  %arrayidx50 = getelementptr inbounds i32, i32* %vla, i64 %48
  %49 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %49 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %arrayidx50, i64 %idxprom51
  %50 = load i32, i32* %arrayidx52, align 4
  %call53 = call i32 @_Z3maxii(i32 %46, i32 %50)
  %51 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = mul nsw i64 %idxprom54, %4
  %arrayidx55 = getelementptr inbounds i32, i32* %vla, i64 %52
  %53 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %53 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %arrayidx55, i64 %idxprom56
  store i32 %call53, i32* %arrayidx57, align 4
  br label %if.end

if.end:                                           ; preds = %if.else42, %if.then30
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %54 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %54, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond6

for.end61:                                        ; preds = %for.cond6
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %55 = load i32, i32* %cl, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, i32* %cl, align 4
  br label %for.cond3

for.end64:                                        ; preds = %for.cond3
  %56 = mul nsw i64 0, %4
  %arrayidx65 = getelementptr inbounds i32, i32* %vla, i64 %56
  %57 = load i32, i32* %n, align 4
  %sub66 = sub nsw i32 %57, 1
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds i32, i32* %arrayidx65, i64 %idxprom67
  %58 = load i32, i32* %arrayidx68, align 4
  %59 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %seq = alloca [16 x i8], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [16 x i8]* %seq to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.seq, i32 0, i32 0), i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %call2 = call i32 @_Z3lpsPc(i8* %arraydecay1)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %call2)
  %call4 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

declare dso_local i32 @printf(i8*, ...) #5

declare dso_local i32 @getchar() #5

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
