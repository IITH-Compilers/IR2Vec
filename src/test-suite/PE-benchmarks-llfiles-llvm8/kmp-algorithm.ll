; ModuleID = 'PE-benchmarks/kmp-algorithm.cpp'
source_filename = "PE-benchmarks/kmp-algorithm.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [27 x i8] c"Found pattern at index %d \00", align 1
@__const.main.txt = private unnamed_addr constant [20 x i8] c"ABABDABACDABABCABAB\00", align 16
@__const.main.pat = private unnamed_addr constant [10 x i8] c"ABABCABAB\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_kmp_algorithm.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable
define dso_local void @_Z9KMPSearchPcS_(i8* %pat, i8* %txt) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %txt.addr = alloca i8*, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %txt, i8** %txt.addr, align 8
  %0 = load i8*, i8** %pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %M, align 4
  %1 = load i8*, i8** %txt.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %N, align 4
  %2 = load i32, i32* %M, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  %5 = load i8*, i8** %pat.addr, align 8
  %6 = load i32, i32* %M, align 4
  call void @_Z15computeLPSArrayPciPi(i8* %5, i32 %6, i32* %vla)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %pat.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %11 to i32
  %12 = load i8*, i8** %txt.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %14 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %14 to i32
  %cmp7 = icmp eq i32 %conv3, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %M, align 4
  %cmp9 = icmp eq i32 %17, %18
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %19, %20
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 %sub)
  %21 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %21, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %vla, i64 %idxprom13
  %22 = load i32, i32* %arrayidx14, align 4
  store i32 %22, i32* %j, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %N, align 4
  %cmp15 = icmp slt i32 %23, %24
  br i1 %cmp15, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.else
  %25 = load i8*, i8** %pat.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %idxprom16
  %27 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %27 to i32
  %28 = load i8*, i8** %txt.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %28, i64 %idxprom19
  %30 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %30 to i32
  %cmp22 = icmp ne i32 %conv18, %conv21
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %31 = load i32, i32* %j, align 4
  %cmp24 = icmp ne i32 %31, 0
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.then23
  %32 = load i32, i32* %j, align 4
  %sub26 = sub nsw i32 %32, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %vla, i64 %idxprom27
  %33 = load i32, i32* %arrayidx28, align 4
  store i32 %33, i32* %j, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.then23
  %34 = load i32, i32* %i, align 4
  %add = add nsw i32 %34, 1
  store i32 %add, i32* %i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z15computeLPSArrayPciPi(i8* %pat, i32 %M, i32* %lps) #5 {
entry:
  %pat.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %lps.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32* %lps, i32** %lps.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load i32*, i32** %lps.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %M.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %pat.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %6 = load i8*, i8** %pat.addr, align 8
  %7 = load i32, i32* %len, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %len, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %len, align 4
  %10 = load i32, i32* %len, align 4
  %11 = load i32*, i32** %lps.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 %10, i32* %arrayidx7, align 4
  %13 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %i, align 4
  br label %if.end17

if.else:                                          ; preds = %while.body
  %14 = load i32, i32* %len, align 4
  %cmp9 = icmp ne i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  %15 = load i32*, i32** %lps.addr, align 8
  %16 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 %idxprom11
  %17 = load i32, i32* %arrayidx12, align 4
  store i32 %17, i32* %len, align 4
  br label %if.end

if.else13:                                        ; preds = %if.else
  %18 = load i32*, i32** %lps.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %18, i64 %idxprom14
  store i32 0, i32* %arrayidx15, align 4
  %20 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %txt = alloca [20 x i8], align 16
  %pat = alloca [10 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [20 x i8]* %txt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.txt, i32 0, i32 0), i64 20, i1 false)
  %1 = bitcast [10 x i8]* %pat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.pat, i32 0, i32 0), i64 10, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %pat, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %txt, i32 0, i32 0
  call void @_Z9KMPSearchPcS_(i8* %arraydecay, i8* %arraydecay1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_kmp_algorithm.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
