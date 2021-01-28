; ModuleID = 'PE-benchmarks/count-ways-reach-nth-stair.cpp'
source_filename = "PE-benchmarks/count-ways-reach-nth-stair.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Nuber of ways = %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z13countWaysUtilii(i32 %n, i32 %m) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 0
  store i32 1, i32* %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 1
  store i32 1, i32* %arrayidx1, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 0, i32* %arrayidx2, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp sle i32 %6, %7
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %10 = phi i1 [ false, %for.cond3 ], [ %cmp5, %land.rhs ]
  br i1 %10, label %for.body6, label %for.end

for.body6:                                        ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %11, %12
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %vla, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3

for.end:                                          ; preds = %land.end
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  %18 = load i32, i32* %n.addr, align 4
  %sub14 = sub nsw i32 %18, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %vla, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  %20 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %20)
  ret i32 %19
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z9countWaysii(i32 %s, i32 %m) #0 {
entry:
  %s.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, i32* %m.addr, align 4
  %call = call i32 @_Z13countWaysUtilii(i32 %add, i32 %1)
  ret i32 %call
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 4, i32* %s, align 4
  store i32 2, i32* %m, align 4
  %0 = load i32, i32* %s, align 4
  %1 = load i32, i32* %m, align 4
  %call = call i32 @_Z9countWaysii(i32 %0, i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %call)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
