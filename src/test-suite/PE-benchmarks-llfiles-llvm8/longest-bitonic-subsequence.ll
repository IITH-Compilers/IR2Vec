; ModuleID = 'PE-benchmarks/longest-bitonic-subsequence.cpp'
source_filename = "PE-benchmarks/longest-bitonic-subsequence.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [16 x i32] [i32 0, i32 8, i32 4, i32 12, i32 2, i32 10, i32 6, i32 14, i32 1, i32 9, i32 5, i32 13, i32 3, i32 11, i32 7, i32 15], align 16
@.str = private unnamed_addr constant [21 x i8] c"Length of LBS is %d\0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local i32 @_Z3lbsPii(i32* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lis = alloca i32*, align 8
  %lds = alloca i32*, align 8
  %max = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = call i8* @_Znam(i64 %4) #6
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %lis, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %lis, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %11, %12
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body3
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  %15 = load i32*, i32** %arr.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4
  %18 = load i32*, i32** %arr.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  %20 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %17, %20
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %21 = load i32*, i32** %lis, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %23 = load i32, i32* %arrayidx13, align 4
  %24 = load i32*, i32** %lis, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom14
  %26 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %26, 1
  %cmp16 = icmp slt i32 %23, %add
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32*, i32** %lis, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 %idxprom17
  %29 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %29, 1
  %30 = load i32*, i32** %lis, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %31 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 %idxprom20
  store i32 %add19, i32* %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body6
  br label %for.inc22

for.inc22:                                        ; preds = %if.end
  %32 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond4

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %33 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %33, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond1

for.end27:                                        ; preds = %for.cond1
  %34 = load i32, i32* %n.addr, align 4
  %conv28 = sext i32 %34 to i64
  %35 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv28, i64 4)
  %36 = extractvalue { i64, i1 } %35, 1
  %37 = extractvalue { i64, i1 } %35, 0
  %38 = select i1 %36, i64 -1, i64 %37
  %call29 = call i8* @_Znam(i64 %38) #6
  %39 = bitcast i8* %call29 to i32*
  store i32* %39, i32** %lds, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc35, %for.end27
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %n.addr, align 4
  %cmp31 = icmp slt i32 %40, %41
  br i1 %cmp31, label %for.body32, label %for.end37

for.body32:                                       ; preds = %for.cond30
  %42 = load i32*, i32** %lds, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %43 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 %idxprom33
  store i32 1, i32* %arrayidx34, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %for.body32
  %44 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %44, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond30

for.end37:                                        ; preds = %for.cond30
  %45 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %45, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc66, %for.end37
  %46 = load i32, i32* %i, align 4
  %cmp39 = icmp sge i32 %46, 0
  br i1 %cmp39, label %for.body40, label %for.end68

for.body40:                                       ; preds = %for.cond38
  %47 = load i32, i32* %n.addr, align 4
  %sub41 = sub nsw i32 %47, 1
  store i32 %sub41, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc64, %for.body40
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %i, align 4
  %cmp43 = icmp sgt i32 %48, %49
  br i1 %cmp43, label %for.body44, label %for.end65

for.body44:                                       ; preds = %for.cond42
  %50 = load i32*, i32** %arr.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %50, i64 %idxprom45
  %52 = load i32, i32* %arrayidx46, align 4
  %53 = load i32*, i32** %arr.addr, align 8
  %54 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %54 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %53, i64 %idxprom47
  %55 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp sgt i32 %52, %55
  br i1 %cmp49, label %land.lhs.true50, label %if.end63

land.lhs.true50:                                  ; preds = %for.body44
  %56 = load i32*, i32** %lds, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %57 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %56, i64 %idxprom51
  %58 = load i32, i32* %arrayidx52, align 4
  %59 = load i32*, i32** %lds, align 8
  %60 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %60 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %59, i64 %idxprom53
  %61 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %61, 1
  %cmp56 = icmp slt i32 %58, %add55
  br i1 %cmp56, label %if.then57, label %if.end63

if.then57:                                        ; preds = %land.lhs.true50
  %62 = load i32*, i32** %lds, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 %idxprom58
  %64 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %64, 1
  %65 = load i32*, i32** %lds, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %66 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %65, i64 %idxprom61
  store i32 %add60, i32* %arrayidx62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %land.lhs.true50, %for.body44
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %67 = load i32, i32* %j, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond42

for.end65:                                        ; preds = %for.cond42
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %68 = load i32, i32* %i, align 4
  %dec67 = add nsw i32 %68, -1
  store i32 %dec67, i32* %i, align 4
  br label %for.cond38

for.end68:                                        ; preds = %for.cond38
  %69 = load i32*, i32** %lis, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx69, align 4
  %71 = load i32*, i32** %lds, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx70, align 4
  %add71 = add nsw i32 %70, %72
  %sub72 = sub nsw i32 %add71, 1
  store i32 %sub72, i32* %max, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc91, %for.end68
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %n.addr, align 4
  %cmp74 = icmp slt i32 %73, %74
  br i1 %cmp74, label %for.body75, label %for.end93

for.body75:                                       ; preds = %for.cond73
  %75 = load i32*, i32** %lis, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %76 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %75, i64 %idxprom76
  %77 = load i32, i32* %arrayidx77, align 4
  %78 = load i32*, i32** %lds, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %79 to i64
  %arrayidx79 = getelementptr inbounds i32, i32* %78, i64 %idxprom78
  %80 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %77, %80
  %sub81 = sub nsw i32 %add80, 1
  %81 = load i32, i32* %max, align 4
  %cmp82 = icmp sgt i32 %sub81, %81
  br i1 %cmp82, label %if.then83, label %if.end90

if.then83:                                        ; preds = %for.body75
  %82 = load i32*, i32** %lis, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %83 to i64
  %arrayidx85 = getelementptr inbounds i32, i32* %82, i64 %idxprom84
  %84 = load i32, i32* %arrayidx85, align 4
  %85 = load i32*, i32** %lds, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %86 to i64
  %arrayidx87 = getelementptr inbounds i32, i32* %85, i64 %idxprom86
  %87 = load i32, i32* %arrayidx87, align 4
  %add88 = add nsw i32 %84, %87
  %sub89 = sub nsw i32 %add88, 1
  store i32 %sub89, i32* %max, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %for.body75
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %88 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %88, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond73

for.end93:                                        ; preds = %for.cond73
  %89 = load i32, i32* %max, align 4
  ret i32 %89
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [16 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [16 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([16 x i32]* @__const.main.arr to i8*), i64 64, i1 false)
  store i32 16, i32* %n, align 4
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %call = call i32 @_Z3lbsPii(i32* %arraydecay, i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
