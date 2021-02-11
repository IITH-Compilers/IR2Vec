; ModuleID = 'temp/find-k-closest-elements-given-value.cpp'
source_filename = "temp/find-k-closest-elements-given-value.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@__const.main.arr = private unnamed_addr constant [13 x i32] [i32 12, i32 16, i32 22, i32 30, i32 35, i32 39, i32 42, i32 45, i32 48, i32 50, i32 53, i32 55, i32 56], align 16

; Function Attrs: noinline uwtable
define dso_local i32 @_Z13findCrossOverPiiii(i32* %arr, i32 %low, i32 %high, i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %high.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %x.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %high.addr, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %low.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %x.addr, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %low.addr, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load i32, i32* %low.addr, align 4
  %11 = load i32, i32* %high.addr, align 4
  %add = add nsw i32 %10, %11
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %12 = load i32*, i32** %arr.addr, align 8
  %13 = load i32, i32* %mid, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %15 = load i32, i32* %x.addr, align 4
  %cmp8 = icmp sle i32 %14, %15
  br i1 %cmp8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  %16 = load i32*, i32** %arr.addr, align 8
  %17 = load i32, i32* %mid, align 4
  %add9 = add nsw i32 %17, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32, i32* %x.addr, align 4
  %cmp12 = icmp sgt i32 %18, %19
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %mid, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %if.end5
  %21 = load i32*, i32** %arr.addr, align 8
  %22 = load i32, i32* %mid, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  %23 = load i32, i32* %arrayidx16, align 4
  %24 = load i32, i32* %x.addr, align 4
  %cmp17 = icmp slt i32 %23, %24
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %25 = load i32*, i32** %arr.addr, align 8
  %26 = load i32, i32* %mid, align 4
  %add19 = add nsw i32 %26, 1
  %27 = load i32, i32* %high.addr, align 4
  %28 = load i32, i32* %x.addr, align 4
  %call = call i32 @_Z13findCrossOverPiiii(i32* %25, i32 %add19, i32 %27, i32 %28)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end14
  %29 = load i32*, i32** %arr.addr, align 8
  %30 = load i32, i32* %low.addr, align 4
  %31 = load i32, i32* %mid, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %x.addr, align 4
  %call21 = call i32 @_Z13findCrossOverPiiii(i32* %29, i32 %30, i32 %sub, i32 %32)
  store i32 %call21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then18, %if.then13, %if.then4, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline uwtable
define dso_local void @_Z13printKclosestPiiii(i32* %arr, i32 %x, i32 %k, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %x.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %count = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %x.addr, align 4
  %call = call i32 @_Z13findCrossOverPiiii(i32* %0, i32 0, i32 %sub, i32 %2)
  store i32 %call, i32* %l, align 4
  %3 = load i32, i32* %l, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %r, align 4
  store i32 0, i32* %count, align 4
  %4 = load i32*, i32** %arr.addr, align 8
  %5 = load i32, i32* %l, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %l, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end
  %9 = load i32, i32* %l, align 4
  %cmp1 = icmp sge i32 %9, 0
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %10 = load i32, i32* %r, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load i32, i32* %count, align 4
  %13 = load i32, i32* %k.addr, align 4
  %cmp3 = icmp slt i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32*, i32** %arr.addr, align 8
  %17 = load i32, i32* %l, align 4
  %idxprom4 = sext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 %idxprom4
  %18 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %15, %18
  %19 = load i32*, i32** %arr.addr, align 8
  %20 = load i32, i32* %r, align 4
  %idxprom7 = sext i32 %20 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %19, i64 %idxprom7
  %21 = load i32, i32* %arrayidx8, align 4
  %22 = load i32, i32* %x.addr, align 4
  %sub9 = sub nsw i32 %21, %22
  %cmp10 = icmp slt i32 %sub6, %sub9
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  %23 = load i32*, i32** %arr.addr, align 8
  %24 = load i32, i32* %l, align 4
  %dec12 = add nsw i32 %24, -1
  store i32 %dec12, i32* %l, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  %25 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %if.end19

if.else:                                          ; preds = %while.body
  %26 = load i32*, i32** %arr.addr, align 8
  %27 = load i32, i32* %r, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %r, align 4
  %idxprom16 = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %26, i64 %idxprom16
  %28 = load i32, i32* %arrayidx17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  %29 = load i32, i32* %count, align 4
  %inc20 = add nsw i32 %29, 1
  store i32 %inc20, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond21

while.cond21:                                     ; preds = %while.body26, %while.end
  %30 = load i32, i32* %count, align 4
  %31 = load i32, i32* %k.addr, align 4
  %cmp22 = icmp slt i32 %30, %31
  br i1 %cmp22, label %land.rhs23, label %land.end25

land.rhs23:                                       ; preds = %while.cond21
  %32 = load i32, i32* %l, align 4
  %cmp24 = icmp sge i32 %32, 0
  br label %land.end25

land.end25:                                       ; preds = %land.rhs23, %while.cond21
  %33 = phi i1 [ false, %while.cond21 ], [ %cmp24, %land.rhs23 ]
  br i1 %33, label %while.body26, label %while.end32

while.body26:                                     ; preds = %land.end25
  %34 = load i32*, i32** %arr.addr, align 8
  %35 = load i32, i32* %l, align 4
  %dec27 = add nsw i32 %35, -1
  store i32 %dec27, i32* %l, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %34, i64 %idxprom28
  %36 = load i32, i32* %arrayidx29, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  %37 = load i32, i32* %count, align 4
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, i32* %count, align 4
  br label %while.cond21

while.end32:                                      ; preds = %land.end25
  br label %while.cond33

while.cond33:                                     ; preds = %while.body38, %while.end32
  %38 = load i32, i32* %count, align 4
  %39 = load i32, i32* %k.addr, align 4
  %cmp34 = icmp slt i32 %38, %39
  br i1 %cmp34, label %land.rhs35, label %land.end37

land.rhs35:                                       ; preds = %while.cond33
  %40 = load i32, i32* %r, align 4
  %41 = load i32, i32* %n.addr, align 4
  %cmp36 = icmp slt i32 %40, %41
  br label %land.end37

land.end37:                                       ; preds = %land.rhs35, %while.cond33
  %42 = phi i1 [ false, %while.cond33 ], [ %cmp36, %land.rhs35 ]
  br i1 %42, label %while.body38, label %while.end44

while.body38:                                     ; preds = %land.end37
  %43 = load i32*, i32** %arr.addr, align 8
  %44 = load i32, i32* %r, align 4
  %inc39 = add nsw i32 %44, 1
  store i32 %inc39, i32* %r, align 4
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %43, i64 %idxprom40
  %45 = load i32, i32* %arrayidx41, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  %46 = load i32, i32* %count, align 4
  %inc43 = add nsw i32 %46, 1
  store i32 %inc43, i32* %count, align 4
  br label %while.cond33

while.end44:                                      ; preds = %land.end37
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [13 x i32], align 16
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [13 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([13 x i32]* @__const.main.arr to i8*), i64 52, i1 false)
  store i32 13, i32* %n, align 4
  store i32 35, i32* %x, align 4
  store i32 4, i32* %k, align 4
  %arraydecay = getelementptr inbounds [13 x i32], [13 x i32]* %arr, i64 0, i64 0
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %n, align 4
  call void @_Z13printKclosestPiiii(i32* %arraydecay, i32 %1, i32 4, i32 %2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
