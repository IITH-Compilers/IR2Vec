; ModuleID = 'PE-benchmarks/ugly-numbers.cpp'
source_filename = "PE-benchmarks/ugly-numbers.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"150th ugly no. is %d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z9maxDivideii(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %rem = srem i32 %0, %1
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %div = sdiv i32 %2, %3
  store i32 %div, i32* %a.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %a.addr, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z6isUglyi(i32 %no) #0 {
entry:
  %no.addr = alloca i32, align 4
  store i32 %no, i32* %no.addr, align 4
  %0 = load i32, i32* %no.addr, align 4
  %call = call i32 @_Z9maxDivideii(i32 %0, i32 2)
  store i32 %call, i32* %no.addr, align 4
  %1 = load i32, i32* %no.addr, align 4
  %call1 = call i32 @_Z9maxDivideii(i32 %1, i32 3)
  store i32 %call1, i32* %no.addr, align 4
  %2 = load i32, i32* %no.addr, align 4
  %call2 = call i32 @_Z9maxDivideii(i32 %2, i32 5)
  store i32 %call2, i32* %no.addr, align 4
  %3 = load i32, i32* %no.addr, align 4
  %cmp = icmp eq i32 %3, 1
  %4 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z12getNthUglyNoi(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %call = call i32 @_Z6isUglyi(i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %count, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  ret i32 %5
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %no = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @_Z12getNthUglyNoi(i32 150)
  store i32 %call, i32* %no, align 4
  %0 = load i32, i32* %no, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %0)
  %call2 = call i32 @getchar()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @getchar() #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
