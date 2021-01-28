; ModuleID = 'PE-benchmarks/subset-sum.cpp'
source_filename = "PE-benchmarks/subset-sum.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@_ZL11total_nodes = internal global i32 0, align 4
@__const.main.weights = private unnamed_addr constant [8 x i32] [i32 15, i32 22, i32 14, i32 26, i32 32, i32 9, i32 16, i32 8], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"Nodes generated %dn\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z11printSubsetPii(i32* %A, i32 %size) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %A.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 5, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z10comparatorPKvS0_(i8* %pLhs, i8* %pRhs) #2 {
entry:
  %pLhs.addr = alloca i8*, align 8
  %pRhs.addr = alloca i8*, align 8
  %lhs = alloca i32*, align 8
  %rhs = alloca i32*, align 8
  store i8* %pLhs, i8** %pLhs.addr, align 8
  store i8* %pRhs, i8** %pRhs.addr, align 8
  %0 = load i8*, i8** %pLhs.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %lhs, align 8
  %2 = load i8*, i8** %pRhs.addr, align 8
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %rhs, align 8
  %4 = load i32*, i32** %lhs, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** %rhs, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp sgt i32 %5, %7
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define dso_local void @_Z10subset_sumPiS_iiiii(i32* %s, i32* %t, i32 %s_size, i32 %t_size, i32 %sum, i32 %ite, i32 %target_sum) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %t.addr = alloca i32*, align 8
  %s_size.addr = alloca i32, align 4
  %t_size.addr = alloca i32, align 4
  %sum.addr = alloca i32, align 4
  %ite.addr = alloca i32, align 4
  %target_sum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32* %t, i32** %t.addr, align 8
  store i32 %s_size, i32* %s_size.addr, align 4
  store i32 %t_size, i32* %t_size.addr, align 4
  store i32 %sum, i32* %sum.addr, align 4
  store i32 %ite, i32* %ite.addr, align 4
  store i32 %target_sum, i32* %target_sum.addr, align 4
  %0 = load i32, i32* @_ZL11total_nodes, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @_ZL11total_nodes, align 4
  %1 = load i32, i32* %target_sum.addr, align 4
  %2 = load i32, i32* %sum.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %t.addr, align 8
  %4 = load i32, i32* %t_size.addr, align 4
  call void @_Z11printSubsetPii(i32* %3, i32 %4)
  %5 = load i32, i32* %ite.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %s_size.addr, align 4
  %cmp1 = icmp slt i32 %add, %6
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* %sum.addr, align 4
  %8 = load i32*, i32** %s.addr, align 8
  %9 = load i32, i32* %ite.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %7, %10
  %11 = load i32*, i32** %s.addr, align 8
  %12 = load i32, i32* %ite.addr, align 4
  %add2 = add nsw i32 %12, 1
  %idxprom3 = sext i32 %add2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %13 = load i32, i32* %arrayidx4, align 4
  %add5 = add nsw i32 %sub, %13
  %14 = load i32, i32* %target_sum.addr, align 4
  %cmp6 = icmp sle i32 %add5, %14
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %15 = load i32*, i32** %s.addr, align 8
  %16 = load i32*, i32** %t.addr, align 8
  %17 = load i32, i32* %s_size.addr, align 4
  %18 = load i32, i32* %t_size.addr, align 4
  %sub8 = sub nsw i32 %18, 1
  %19 = load i32, i32* %sum.addr, align 4
  %20 = load i32*, i32** %s.addr, align 8
  %21 = load i32, i32* %ite.addr, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %22 = load i32, i32* %arrayidx10, align 4
  %sub11 = sub nsw i32 %19, %22
  %23 = load i32, i32* %ite.addr, align 4
  %add12 = add nsw i32 %23, 1
  %24 = load i32, i32* %target_sum.addr, align 4
  call void @_Z10subset_sumPiS_iiiii(i32* %15, i32* %16, i32 %17, i32 %sub8, i32 %sub11, i32 %add12, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then
  br label %if.end38

if.else:                                          ; preds = %entry
  %25 = load i32, i32* %ite.addr, align 4
  %26 = load i32, i32* %s_size.addr, align 4
  %cmp13 = icmp slt i32 %25, %26
  br i1 %cmp13, label %land.lhs.true14, label %if.end37

land.lhs.true14:                                  ; preds = %if.else
  %27 = load i32, i32* %sum.addr, align 4
  %28 = load i32*, i32** %s.addr, align 8
  %29 = load i32, i32* %ite.addr, align 4
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %28, i64 %idxprom15
  %30 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %27, %30
  %31 = load i32, i32* %target_sum.addr, align 4
  %cmp18 = icmp sle i32 %add17, %31
  br i1 %cmp18, label %if.then19, label %if.end37

if.then19:                                        ; preds = %land.lhs.true14
  %32 = load i32, i32* %ite.addr, align 4
  store i32 %32, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %s_size.addr, align 4
  %cmp20 = icmp slt i32 %33, %34
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32*, i32** %s.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %35, i64 %idxprom21
  %37 = load i32, i32* %arrayidx22, align 4
  %38 = load i32*, i32** %t.addr, align 8
  %39 = load i32, i32* %t_size.addr, align 4
  %idxprom23 = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %38, i64 %idxprom23
  store i32 %37, i32* %arrayidx24, align 4
  %40 = load i32, i32* %sum.addr, align 4
  %41 = load i32*, i32** %s.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %42 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %41, i64 %idxprom25
  %43 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %40, %43
  %44 = load i32, i32* %target_sum.addr, align 4
  %cmp28 = icmp sle i32 %add27, %44
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %for.body
  %45 = load i32*, i32** %s.addr, align 8
  %46 = load i32*, i32** %t.addr, align 8
  %47 = load i32, i32* %s_size.addr, align 4
  %48 = load i32, i32* %t_size.addr, align 4
  %add30 = add nsw i32 %48, 1
  %49 = load i32, i32* %sum.addr, align 4
  %50 = load i32*, i32** %s.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %51 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %50, i64 %idxprom31
  %52 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %49, %52
  %53 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %53, 1
  %54 = load i32, i32* %target_sum.addr, align 4
  call void @_Z10subset_sumPiS_iiiii(i32* %45, i32* %46, i32 %47, i32 %add30, i32 %add33, i32 %add34, i32 %54)
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %55 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %55, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %land.lhs.true14, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.end37
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z15generateSubsetsPiii(i32* %s, i32 %size, i32 %target_sum) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %target_sum.addr = alloca i32, align 4
  %tuplet_vector = alloca i32*, align 8
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %target_sum, i32* %target_sum.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #6
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %tuplet_vector, align 8
  store i32 0, i32* %total, align 4
  %2 = load i32*, i32** %s.addr, align 8
  %3 = bitcast i32* %2 to i8*
  %4 = load i32, i32* %size.addr, align 4
  %conv1 = sext i32 %4 to i64
  call void @qsort(i8* %3, i64 %conv1, i64 4, i32 (i8*, i8*)* @_Z10comparatorPKvS0_)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %s.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %total, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %total, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32*, i32** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx2, align 4
  %14 = load i32, i32* %target_sum.addr, align 4
  %cmp3 = icmp sle i32 %13, %14
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %15 = load i32, i32* %total, align 4
  %16 = load i32, i32* %target_sum.addr, align 4
  %cmp4 = icmp sge i32 %15, %16
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32*, i32** %s.addr, align 8
  %18 = load i32*, i32** %tuplet_vector, align 8
  %19 = load i32, i32* %size.addr, align 4
  %20 = load i32, i32* %target_sum.addr, align 4
  call void @_Z10subset_sumPiS_iiiii(i32* %17, i32* %18, i32 %19, i32 0, i32 0, i32 0, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  %21 = load i32*, i32** %tuplet_vector, align 8
  %22 = bitcast i32* %21 to i8*
  call void @free(i8* %22) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %weights = alloca [8 x i32], align 16
  %target = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %weights to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.weights to i8*), i64 32, i1 false)
  store i32 53, i32* %target, align 4
  store i32 8, i32* %size, align 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %weights, i32 0, i32 0
  %1 = load i32, i32* %size, align 4
  %2 = load i32, i32* %target, align 4
  call void @_Z15generateSubsetsPiii(i32* %arraydecay, i32 %1, i32 %2)
  %3 = load i32, i32* @_ZL11total_nodes, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %3)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
