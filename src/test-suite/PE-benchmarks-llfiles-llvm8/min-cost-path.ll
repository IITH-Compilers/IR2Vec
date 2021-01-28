; ModuleID = 'PE-benchmarks/min-cost-path.cpp'
source_filename = "PE-benchmarks/min-cost-path.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.cost = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 8, i32 2], [3 x i32] [i32 1, i32 5, i32 3]], align 16
@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1

; Function Attrs: noinline uwtable
define dso_local i32 @_Z7minCostPA3_iii([3 x i32]* %cost, i32 %m, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %cost.addr = alloca [3 x i32]*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store [3 x i32]* %cost, [3 x i32]** %cost.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %m.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2147483647, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else7

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %land.lhs.true
  %4 = load [3 x i32]*, [3 x i32]** %cost.addr, align 8
  %5 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 %idxprom
  %6 = load i32, i32* %n.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %land.lhs.true, %if.else
  %8 = load [3 x i32]*, [3 x i32]** %cost.addr, align 8
  %9 = load i32, i32* %m.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 %idxprom8
  %10 = load i32, i32* %n.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load [3 x i32]*, [3 x i32]** %cost.addr, align 8
  %13 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load i32, i32* %n.addr, align 4
  %sub12 = sub nsw i32 %14, 1
  %call = call i32 @_Z7minCostPA3_iii([3 x i32]* %12, i32 %sub, i32 %sub12)
  %15 = load [3 x i32]*, [3 x i32]** %cost.addr, align 8
  %16 = load i32, i32* %m.addr, align 4
  %sub13 = sub nsw i32 %16, 1
  %17 = load i32, i32* %n.addr, align 4
  %call14 = call i32 @_Z7minCostPA3_iii([3 x i32]* %15, i32 %sub13, i32 %17)
  %18 = load [3 x i32]*, [3 x i32]** %cost.addr, align 8
  %19 = load i32, i32* %m.addr, align 4
  %20 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %20, 1
  %call16 = call i32 @_Z7minCostPA3_iii([3 x i32]* %18, i32 %19, i32 %sub15)
  %call17 = call i32 @_Z3miniii(i32 %call, i32 %call14, i32 %call16)
  %add = add nsw i32 %11, %call17
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else7, %if.then4, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3miniii(i32 %x, i32 %y, i32 %z) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %z.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i32, i32* %z.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %z.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %if.else
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end5

cond.false4:                                      ; preds = %if.else
  %9 = load i32, i32* %z.addr, align 4
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i32 [ %8, %cond.true3 ], [ %9, %cond.false4 ]
  store i32 %cond6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end5, %cond.end
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %cost = alloca [3 x [3 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x [3 x i32]]* %cost to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x [3 x i32]]* @__const.main.cost to i8*), i64 36, i1 false)
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %cost, i32 0, i32 0
  %call = call i32 @_Z7minCostPA3_iii([3 x i32]* %arraydecay, i32 2, i32 2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
