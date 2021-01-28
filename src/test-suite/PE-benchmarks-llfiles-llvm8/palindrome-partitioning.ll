; ModuleID = 'PE-benchmarks/palindrome-partitioning.cpp'
source_filename = "PE-benchmarks/palindrome-partitioning.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [15 x i8] c"ababbbabbababa\00", align 1
@.str = private unnamed_addr constant [50 x i8] c"Min cuts needed for Palindrome Partitioning is %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3minii(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
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
define dso_local i32 @_Z13minPalPartionPc(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %L = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  %4 = load i32, i32* %n, align 4
  %5 = zext i32 %4 to i64
  %6 = load i32, i32* %n, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %5, %7
  %vla1 = alloca i8, i64 %8, align 16
  store i64 %5, i64* %__vla_expr1, align 8
  store i64 %7, i64* %__vla_expr2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = mul nsw i64 %idxprom, %7
  %arrayidx = getelementptr inbounds i8, i8* %vla1, i64 %12
  %13 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %13 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %arrayidx, i64 %idxprom2
  store i8 1, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %L, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc45, %for.end
  %15 = load i32, i32* %L, align 4
  %16 = load i32, i32* %n, align 4
  %cmp5 = icmp sle i32 %15, %16
  br i1 %cmp5, label %for.body6, label %for.end47

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc42, %for.body6
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n, align 4
  %19 = load i32, i32* %L, align 4
  %sub = sub nsw i32 %18, %19
  %add = add nsw i32 %sub, 1
  %cmp8 = icmp slt i32 %17, %add
  br i1 %cmp8, label %for.body9, label %for.end44

for.body9:                                        ; preds = %for.cond7
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %L, align 4
  %add10 = add nsw i32 %20, %21
  %sub11 = sub nsw i32 %add10, 1
  store i32 %sub11, i32* %j, align 4
  %22 = load i32, i32* %L, align 4
  %cmp12 = icmp eq i32 %22, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  %23 = load i8*, i8** %str.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 %idxprom13
  %25 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %25 to i32
  %26 = load i8*, i8** %str.addr, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 %idxprom16
  %28 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %28 to i32
  %cmp19 = icmp eq i32 %conv15, %conv18
  %29 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = mul nsw i64 %idxprom20, %7
  %arrayidx21 = getelementptr inbounds i8, i8* %vla1, i64 %30
  %31 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %arrayidx21, i64 %idxprom22
  %frombool = zext i1 %cmp19 to i8
  store i8 %frombool, i8* %arrayidx23, align 1
  br label %if.end

if.else:                                          ; preds = %for.body9
  %32 = load i8*, i8** %str.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %33 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 %idxprom24
  %34 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %34 to i32
  %35 = load i8*, i8** %str.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %35, i64 %idxprom27
  %37 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %37 to i32
  %cmp30 = icmp eq i32 %conv26, %conv29
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %38 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %38, 1
  %idxprom32 = sext i32 %add31 to i64
  %39 = mul nsw i64 %idxprom32, %7
  %arrayidx33 = getelementptr inbounds i8, i8* %vla1, i64 %39
  %40 = load i32, i32* %j, align 4
  %sub34 = sub nsw i32 %40, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %arrayidx33, i64 %idxprom35
  %41 = load i8, i8* %arrayidx36, align 1
  %tobool = trunc i8 %41 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %42 = phi i1 [ false, %if.else ], [ %tobool, %land.rhs ]
  %43 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom37, %7
  %arrayidx38 = getelementptr inbounds i8, i8* %vla1, i64 %44
  %45 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %45 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %arrayidx38, i64 %idxprom39
  %frombool41 = zext i1 %42 to i8
  store i8 %frombool41, i8* %arrayidx40, align 1
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  br label %for.inc42

for.inc42:                                        ; preds = %if.end
  %46 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %46, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond7

for.end44:                                        ; preds = %for.cond7
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %47 = load i32, i32* %L, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, i32* %L, align 4
  br label %for.cond4

for.end47:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc91, %for.end47
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %n, align 4
  %cmp49 = icmp slt i32 %48, %49
  br i1 %cmp49, label %for.body50, label %for.end93

for.body50:                                       ; preds = %for.cond48
  %50 = mul nsw i64 0, %7
  %arrayidx51 = getelementptr inbounds i8, i8* %vla1, i64 %50
  %51 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %51 to i64
  %arrayidx53 = getelementptr inbounds i8, i8* %arrayidx51, i64 %idxprom52
  %52 = load i8, i8* %arrayidx53, align 1
  %tobool54 = trunc i8 %52 to i1
  %conv55 = zext i1 %tobool54 to i32
  %cmp56 = icmp eq i32 %conv55, 1
  br i1 %cmp56, label %if.then57, label %if.else60

if.then57:                                        ; preds = %for.body50
  %53 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %53 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %vla, i64 %idxprom58
  store i32 0, i32* %arrayidx59, align 4
  br label %if.end90

if.else60:                                        ; preds = %for.body50
  %54 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %54 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %vla, i64 %idxprom61
  store i32 2147483647, i32* %arrayidx62, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc87, %if.else60
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %i, align 4
  %cmp64 = icmp slt i32 %55, %56
  br i1 %cmp64, label %for.body65, label %for.end89

for.body65:                                       ; preds = %for.cond63
  %57 = load i32, i32* %j, align 4
  %add66 = add nsw i32 %57, 1
  %idxprom67 = sext i32 %add66 to i64
  %58 = mul nsw i64 %idxprom67, %7
  %arrayidx68 = getelementptr inbounds i8, i8* %vla1, i64 %58
  %59 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %59 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %arrayidx68, i64 %idxprom69
  %60 = load i8, i8* %arrayidx70, align 1
  %tobool71 = trunc i8 %60 to i1
  %conv72 = zext i1 %tobool71 to i32
  %cmp73 = icmp eq i32 %conv72, 1
  br i1 %cmp73, label %land.lhs.true, label %if.end86

land.lhs.true:                                    ; preds = %for.body65
  %61 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %61 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %vla, i64 %idxprom74
  %62 = load i32, i32* %arrayidx75, align 4
  %add76 = add nsw i32 1, %62
  %63 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %63 to i64
  %arrayidx78 = getelementptr inbounds i32, i32* %vla, i64 %idxprom77
  %64 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp slt i32 %add76, %64
  br i1 %cmp79, label %if.then80, label %if.end86

if.then80:                                        ; preds = %land.lhs.true
  %65 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %65 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %vla, i64 %idxprom81
  %66 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 1, %66
  %67 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %67 to i64
  %arrayidx85 = getelementptr inbounds i32, i32* %vla, i64 %idxprom84
  store i32 %add83, i32* %arrayidx85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %land.lhs.true, %for.body65
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86
  %68 = load i32, i32* %j, align 4
  %inc88 = add nsw i32 %68, 1
  store i32 %inc88, i32* %j, align 4
  br label %for.cond63

for.end89:                                        ; preds = %for.cond63
  br label %if.end90

if.end90:                                         ; preds = %for.end89, %if.then57
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %69 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %69, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond48

for.end93:                                        ; preds = %for.cond48
  %70 = load i32, i32* %n, align 4
  %sub94 = sub nsw i32 %70, 1
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds i32, i32* %vla, i64 %idxprom95
  %71 = load i32, i32* %arrayidx96, align 4
  %72 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %72)
  ret i32 %71
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
  %str = alloca [15 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [15 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.main.str, i32 0, i32 0), i64 15, i1 false)
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %str, i32 0, i32 0
  %call = call i32 @_Z13minPalPartionPc(i8* %arraydecay)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

declare dso_local i32 @printf(i8*, ...) #5

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
