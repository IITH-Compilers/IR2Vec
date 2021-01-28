; ModuleID = 'PE-benchmarks/longest-increasing-subsequence.cpp'
source_filename = "PE-benchmarks/longest-increasing-subsequence.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [8 x i32] [i32 10, i32 22, i32 9, i32 33, i32 21, i32 50, i32 41, i32 60], align 16
@.str = private unnamed_addr constant [21 x i8] c"Length of lis is %dn\00", align 1

; Function Attrs: noinline uwtable
define dso_local i32 @_Z4_lisPiiS_(i32* %arr, i32 %n, i32* %max_ref) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %max_ref.addr = alloca i32*, align 8
  %res = alloca i32, align 4
  %max_ending_here = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %max_ref, i32** %max_ref.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %max_ending_here, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %max_ref.addr, align 8
  %call = call i32 @_Z4_lisPiiS_(i32* %3, i32 %4, i32* %5)
  store i32 %call, i32* %res, align 4
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32*, i32** %arr.addr, align 8
  %10 = load i32, i32* %n.addr, align 4
  %sub2 = sub nsw i32 %10, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp slt i32 %8, %11
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %res, align 4
  %add = add nsw i32 %12, 1
  %13 = load i32, i32* %max_ending_here, align 4
  %cmp6 = icmp sgt i32 %add, %13
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %14 = load i32, i32* %res, align 4
  %add8 = add nsw i32 %14, 1
  store i32 %add8, i32* %max_ending_here, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32*, i32** %max_ref.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %max_ending_here, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  %19 = load i32, i32* %max_ending_here, align 4
  %20 = load i32*, i32** %max_ref.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  %21 = load i32, i32* %max_ending_here, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z3lisPii(i32* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %max = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %max, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call i32 @_Z4_lisPiiS_(i32* %0, i32 %1, i32* %max)
  %2 = load i32, i32* %max, align 4
  ret i32 %2
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [8 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.arr to i8*), i64 32, i1 false)
  store i32 8, i32* %n, align 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %call = call i32 @_Z3lisPii(i32* %arraydecay, i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %call)
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
