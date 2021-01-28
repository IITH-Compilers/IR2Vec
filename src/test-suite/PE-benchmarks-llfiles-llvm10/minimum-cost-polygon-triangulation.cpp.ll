; ModuleID = 'temp/minimum-cost-polygon-triangulation.cpp'
source_filename = "temp/minimum-cost-polygon-triangulation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.Point = type { i32, i32 }

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_minimum_cost_polygon_triangulation.cpp, i8* null }]

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

; Function Attrs: noinline nounwind uwtable
define dso_local double @_Z3mindd(double %x, double %y) #4 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %cmp = fcmp ole double %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %y.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

; Function Attrs: noinline uwtable
define dso_local double @_Z4dist5PointS_(i64 %p1.coerce, i64 %p2.coerce) #0 {
entry:
  %p1 = alloca %struct.Point, align 4
  %p2 = alloca %struct.Point, align 4
  %0 = bitcast %struct.Point* %p1 to i64*
  store i64 %p1.coerce, i64* %0, align 4
  %1 = bitcast %struct.Point* %p2 to i64*
  store i64 %p2.coerce, i64* %1, align 4
  %x = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4
  %x1 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  %x2 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 0
  %4 = load i32, i32* %x2, align 4
  %x3 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 0
  %5 = load i32, i32* %x3, align 4
  %sub4 = sub nsw i32 %4, %5
  %mul = mul nsw i32 %sub, %sub4
  %y = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %y5 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %7 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %6, %7
  %y7 = getelementptr inbounds %struct.Point, %struct.Point* %p1, i32 0, i32 1
  %8 = load i32, i32* %y7, align 4
  %y8 = getelementptr inbounds %struct.Point, %struct.Point* %p2, i32 0, i32 1
  %9 = load i32, i32* %y8, align 4
  %sub9 = sub nsw i32 %8, %9
  %mul10 = mul nsw i32 %sub6, %sub9
  %add = add nsw i32 %mul, %mul10
  %call = call double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 %add)
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 %__x) #4 comdat {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %conv = sitofp i32 %0 to double
  %call = call double @sqrt(double %conv) #3
  ret double %call
}

; Function Attrs: noinline uwtable
define dso_local double @_Z4costP5Pointiii(%struct.Point* %points, i32 %i, i32 %j, i32 %k) #0 {
entry:
  %points.addr = alloca %struct.Point*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %p1 = alloca %struct.Point, align 4
  %p2 = alloca %struct.Point, align 4
  %p3 = alloca %struct.Point, align 4
  %agg.tmp = alloca %struct.Point, align 4
  %agg.tmp5 = alloca %struct.Point, align 4
  %agg.tmp6 = alloca %struct.Point, align 4
  %agg.tmp7 = alloca %struct.Point, align 4
  %agg.tmp9 = alloca %struct.Point, align 4
  %agg.tmp10 = alloca %struct.Point, align 4
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.Point, %struct.Point* %0, i64 %idxprom
  %2 = bitcast %struct.Point* %p1 to i8*
  %3 = bitcast %struct.Point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 8, i1 false)
  %4 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %5 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.Point, %struct.Point* %4, i64 %idxprom1
  %6 = bitcast %struct.Point* %p2 to i8*
  %7 = bitcast %struct.Point* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 8, i1 false)
  %8 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %9 = load i32, i32* %k.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds %struct.Point, %struct.Point* %8, i64 %idxprom3
  %10 = bitcast %struct.Point* %p3 to i8*
  %11 = bitcast %struct.Point* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 8, i1 false)
  %12 = bitcast %struct.Point* %agg.tmp to i8*
  %13 = bitcast %struct.Point* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = bitcast %struct.Point* %agg.tmp5 to i8*
  %15 = bitcast %struct.Point* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 8, i1 false)
  %16 = bitcast %struct.Point* %agg.tmp to i64*
  %17 = load i64, i64* %16, align 4
  %18 = bitcast %struct.Point* %agg.tmp5 to i64*
  %19 = load i64, i64* %18, align 4
  %call = call double @_Z4dist5PointS_(i64 %17, i64 %19)
  %20 = bitcast %struct.Point* %agg.tmp6 to i8*
  %21 = bitcast %struct.Point* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = bitcast %struct.Point* %agg.tmp7 to i8*
  %23 = bitcast %struct.Point* %p3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = bitcast %struct.Point* %agg.tmp6 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = bitcast %struct.Point* %agg.tmp7 to i64*
  %27 = load i64, i64* %26, align 4
  %call8 = call double @_Z4dist5PointS_(i64 %25, i64 %27)
  %add = fadd double %call, %call8
  %28 = bitcast %struct.Point* %agg.tmp9 to i8*
  %29 = bitcast %struct.Point* %p3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  %30 = bitcast %struct.Point* %agg.tmp10 to i8*
  %31 = bitcast %struct.Point* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = bitcast %struct.Point* %agg.tmp9 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = bitcast %struct.Point* %agg.tmp10 to i64*
  %35 = load i64, i64* %34, align 4
  %call11 = call double @_Z4dist5PointS_(i64 %33, i64 %35)
  %add12 = fadd double %add, %call11
  ret double %add12
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define dso_local double @_Z5mTCDPP5Pointi(%struct.Point* %points, i32 %n) #0 {
entry:
  %retval = alloca double, align 8
  %points.addr = alloca %struct.Point*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %gap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %val = alloca double, align 8
  store %struct.Point* %points, %struct.Point** %points.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = zext i32 %1 to i64
  %3 = load i32, i32* %n.addr, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %saved_stack, align 8
  %6 = mul nuw i64 %2, %4
  %vla = alloca double, i64 %6, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i64 %4, i64* %__vla_expr1, align 8
  store i32 0, i32* %gap, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %if.end
  %7 = load i32, i32* %gap, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %9 = load i32, i32* %gap, align 4
  store i32 %9, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc39, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body4, label %for.end42

for.body4:                                        ; preds = %for.cond2
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 2
  %cmp5 = icmp slt i32 %12, %add
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body4
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = mul nsw i64 %idxprom, %4
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %15
  %16 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom7
  store double 0.000000e+00, double* %arrayidx8, align 8
  br label %if.end38

if.else:                                          ; preds = %for.body4
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = mul nsw i64 %idxprom9, %4
  %arrayidx10 = getelementptr inbounds double, double* %vla, i64 %18
  %19 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds double, double* %arrayidx10, i64 %idxprom11
  store double 1.000000e+06, double* %arrayidx12, align 8
  %20 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %20, 1
  store i32 %add13, i32* %k, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.else
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %j, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %23 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = mul nsw i64 %idxprom17, %4
  %arrayidx18 = getelementptr inbounds double, double* %vla, i64 %24
  %25 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds double, double* %arrayidx18, i64 %idxprom19
  %26 = load double, double* %arrayidx20, align 8
  %27 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = mul nsw i64 %idxprom21, %4
  %arrayidx22 = getelementptr inbounds double, double* %vla, i64 %28
  %29 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds double, double* %arrayidx22, i64 %idxprom23
  %30 = load double, double* %arrayidx24, align 8
  %add25 = fadd double %26, %30
  %31 = load %struct.Point*, %struct.Point** %points.addr, align 8
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %k, align 4
  %call = call double @_Z4costP5Pointiii(%struct.Point* %31, i32 %32, i32 %33, i32 %34)
  %add26 = fadd double %add25, %call
  store double %add26, double* %val, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = mul nsw i64 %idxprom27, %4
  %arrayidx28 = getelementptr inbounds double, double* %vla, i64 %36
  %37 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds double, double* %arrayidx28, i64 %idxprom29
  %38 = load double, double* %arrayidx30, align 8
  %39 = load double, double* %val, align 8
  %cmp31 = fcmp ogt double %38, %39
  br i1 %cmp31, label %if.then32, label %if.end37

if.then32:                                        ; preds = %for.body16
  %40 = load double, double* %val, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = mul nsw i64 %idxprom33, %4
  %arrayidx34 = getelementptr inbounds double, double* %vla, i64 %42
  %43 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds double, double* %arrayidx34, i64 %idxprom35
  store double %40, double* %arrayidx36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %for.body16
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %44 = load i32, i32* %k, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond14

for.end:                                          ; preds = %for.cond14
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.then6
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %45 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %i, align 4
  %46 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %46, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond2

for.end42:                                        ; preds = %for.cond2
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %47 = load i32, i32* %gap, align 4
  %inc44 = add nsw i32 %47, 1
  store i32 %inc44, i32* %gap, align 4
  br label %for.cond

for.end45:                                        ; preds = %for.cond
  %48 = mul nsw i64 0, %4
  %arrayidx46 = getelementptr inbounds double, double* %vla, i64 %48
  %49 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %49, 1
  %idxprom47 = sext i32 %sub to i64
  %arrayidx48 = getelementptr inbounds double, double* %arrayidx46, i64 %idxprom47
  %50 = load double, double* %arrayidx48, align 8
  store double %50, double* %retval, align 8
  %51 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %51)
  br label %return

return:                                           ; preds = %for.end45, %if.then
  %52 = load double, double* %retval, align 8
  ret double %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %points = alloca [5 x %struct.Point], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x %struct.Point]* %points to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [5 x %struct.Point]*
  %2 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.Point, %struct.Point* %2, i32 0, i32 0
  store i32 1, i32* %3, align 8
  %4 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 0
  store i32 2, i32* %5, align 16
  %6 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Point, %struct.Point* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %7, i32 0, i32 1
  store i32 2, i32* %9, align 4
  %10 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.Point, %struct.Point* %10, i32 0, i32 1
  store i32 2, i32* %11, align 4
  store i32 5, i32* %n, align 4
  %arraydecay = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %points, i64 0, i64 0
  %12 = load i32, i32* %n, align 4
  %call = call double @_Z5mTCDPP5Pointi(%struct.Point* %arraydecay, i32 %12)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* @_ZSt4cout, double %call)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_minimum_cost_polygon_triangulation.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
