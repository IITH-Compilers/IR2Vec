; ModuleID = 'PE-benchmarks/minimum-positive-points-to-reach-destination.cpp'
source_filename = "PE-benchmarks/minimum-positive-points-to-reach-destination.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.points = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 -2, i32 -3, i32 3], [3 x i32] [i32 -5, i32 -10, i32 1], [3 x i32] [i32 10, i32 30, i32 -5]], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [34 x i8] c"Minimum Initial Points Required: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_minimum_positive_points_to_reach_destination.cpp, i8* null }]

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
define dso_local i32 @_Z16minInitialPointsPA3_i([3 x i32]* %points) #0 {
entry:
  %points.addr = alloca [3 x i32]*, align 8
  %dp = alloca [3 x [3 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %ref.tmp30 = alloca i32, align 4
  %j = alloca i32, align 4
  %ref.tmp41 = alloca i32, align 4
  %ref.tmp54 = alloca i32, align 4
  %i64 = alloca i32, align 4
  %j69 = alloca i32, align 4
  %min_points_on_exit = alloca i32, align 4
  %ref.tmp85 = alloca i32, align 4
  %ref.tmp91 = alloca i32, align 4
  store [3 x i32]* %points, [3 x i32]** %points.addr, align 8
  store i32 3, i32* %m, align 4
  store i32 3, i32* %n, align 4
  %0 = load [3 x i32]*, [3 x i32]** %points.addr, align 8
  %1 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 %idxprom
  %2 = load i32, i32* %n, align 4
  %sub1 = sub nsw i32 %2, 1
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 %idxprom2
  %3 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load [3 x i32]*, [3 x i32]** %points.addr, align 8
  %5 = load i32, i32* %m, align 4
  %sub4 = sub nsw i32 %5, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 %idxprom5
  %6 = load i32, i32* %n, align 4
  %sub7 = sub nsw i32 %6, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i64 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %call = call i32 @abs(i32 %7) #8
  %add = add nsw i32 %call, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  %8 = load i32, i32* %m, align 4
  %sub10 = sub nsw i32 %8, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom11
  %9 = load i32, i32* %n, align 4
  %sub13 = sub nsw i32 %9, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i64 0, i64 %idxprom14
  store i32 %cond, i32* %arrayidx15, align 4
  %10 = load i32, i32* %m, align 4
  %sub16 = sub nsw i32 %10, 2
  store i32 %sub16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %i, align 4
  %cmp17 = icmp sge i32 %11, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %12, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom19
  %13 = load i32, i32* %n, align 4
  %sub21 = sub nsw i32 %13, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i64 0, i64 %idxprom22
  %14 = load i32, i32* %arrayidx23, align 4
  %15 = load [3 x i32]*, [3 x i32]** %points.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 %idxprom24
  %17 = load i32, i32* %n, align 4
  %sub26 = sub nsw i32 %17, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx25, i64 0, i64 %idxprom27
  %18 = load i32, i32* %arrayidx28, align 4
  %sub29 = sub nsw i32 %14, %18
  store i32 %sub29, i32* %ref.tmp, align 4
  store i32 1, i32* %ref.tmp30, align 4
  %call31 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ref.tmp, i32* dereferenceable(4) %ref.tmp30)
  %19 = load i32, i32* %call31, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom32
  %21 = load i32, i32* %n, align 4
  %sub34 = sub nsw i32 %21, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i64 0, i64 %idxprom35
  store i32 %19, i32* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %n, align 4
  %sub37 = sub nsw i32 %23, 2
  store i32 %sub37, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc61, %for.end
  %24 = load i32, i32* %j, align 4
  %cmp39 = icmp sge i32 %24, 0
  br i1 %cmp39, label %for.body40, label %for.end63

for.body40:                                       ; preds = %for.cond38
  %25 = load i32, i32* %m, align 4
  %sub42 = sub nsw i32 %25, 1
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom43
  %26 = load i32, i32* %j, align 4
  %add45 = add nsw i32 %26, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx44, i64 0, i64 %idxprom46
  %27 = load i32, i32* %arrayidx47, align 4
  %28 = load [3 x i32]*, [3 x i32]** %points.addr, align 8
  %29 = load i32, i32* %m, align 4
  %sub48 = sub nsw i32 %29, 1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 %idxprom49
  %30 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx50, i64 0, i64 %idxprom51
  %31 = load i32, i32* %arrayidx52, align 4
  %sub53 = sub nsw i32 %27, %31
  store i32 %sub53, i32* %ref.tmp41, align 4
  store i32 1, i32* %ref.tmp54, align 4
  %call55 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ref.tmp41, i32* dereferenceable(4) %ref.tmp54)
  %32 = load i32, i32* %call55, align 4
  %33 = load i32, i32* %m, align 4
  %sub56 = sub nsw i32 %33, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom57
  %34 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %34 to i64
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx58, i64 0, i64 %idxprom59
  store i32 %32, i32* %arrayidx60, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %for.body40
  %35 = load i32, i32* %j, align 4
  %dec62 = add nsw i32 %35, -1
  store i32 %dec62, i32* %j, align 4
  br label %for.cond38

for.end63:                                        ; preds = %for.cond38
  %36 = load i32, i32* %m, align 4
  %sub65 = sub nsw i32 %36, 2
  store i32 %sub65, i32* %i64, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc100, %for.end63
  %37 = load i32, i32* %i64, align 4
  %cmp67 = icmp sge i32 %37, 0
  br i1 %cmp67, label %for.body68, label %for.end102

for.body68:                                       ; preds = %for.cond66
  %38 = load i32, i32* %n, align 4
  %sub70 = sub nsw i32 %38, 2
  store i32 %sub70, i32* %j69, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc97, %for.body68
  %39 = load i32, i32* %j69, align 4
  %cmp72 = icmp sge i32 %39, 0
  br i1 %cmp72, label %for.body73, label %for.end99

for.body73:                                       ; preds = %for.cond71
  %40 = load i32, i32* %i64, align 4
  %add74 = add nsw i32 %40, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom75
  %41 = load i32, i32* %j69, align 4
  %idxprom77 = sext i32 %41 to i64
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx76, i64 0, i64 %idxprom77
  %42 = load i32, i32* %i64, align 4
  %idxprom79 = sext i32 %42 to i64
  %arrayidx80 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom79
  %43 = load i32, i32* %j69, align 4
  %add81 = add nsw i32 %43, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx80, i64 0, i64 %idxprom82
  %call84 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %arrayidx78, i32* dereferenceable(4) %arrayidx83)
  %44 = load i32, i32* %call84, align 4
  store i32 %44, i32* %min_points_on_exit, align 4
  %45 = load i32, i32* %min_points_on_exit, align 4
  %46 = load [3 x i32]*, [3 x i32]** %points.addr, align 8
  %47 = load i32, i32* %i64, align 4
  %idxprom86 = sext i32 %47 to i64
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %46, i64 %idxprom86
  %48 = load i32, i32* %j69, align 4
  %idxprom88 = sext i32 %48 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx87, i64 0, i64 %idxprom88
  %49 = load i32, i32* %arrayidx89, align 4
  %sub90 = sub nsw i32 %45, %49
  store i32 %sub90, i32* %ref.tmp85, align 4
  store i32 1, i32* %ref.tmp91, align 4
  %call92 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ref.tmp85, i32* dereferenceable(4) %ref.tmp91)
  %50 = load i32, i32* %call92, align 4
  %51 = load i32, i32* %i64, align 4
  %idxprom93 = sext i32 %51 to i64
  %arrayidx94 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 %idxprom93
  %52 = load i32, i32* %j69, align 4
  %idxprom95 = sext i32 %52 to i64
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx94, i64 0, i64 %idxprom95
  store i32 %50, i32* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body73
  %53 = load i32, i32* %j69, align 4
  %dec98 = add nsw i32 %53, -1
  store i32 %dec98, i32* %j69, align 4
  br label %for.cond71

for.end99:                                        ; preds = %for.cond71
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %54 = load i32, i32* %i64, align 4
  %dec101 = add nsw i32 %54, -1
  store i32 %dec101, i32* %i64, align 4
  br label %for.cond66

for.end102:                                       ; preds = %for.cond66
  %arrayidx103 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %dp, i64 0, i64 0
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx103, i64 0, i64 0
  %55 = load i32, i32* %arrayidx104, align 16
  ret i32 %55
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #5 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #5 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__b.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__a.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %points = alloca [3 x [3 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x [3 x i32]]* %points to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x [3 x i32]]* @__const.main.points to i8*), i64 36, i1 false)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %points, i32 0, i32 0
  %call1 = call i32 @_Z16minInitialPointsPA3_i([3 x i32]* %arraydecay)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_minimum_positive_points_to_reach_destination.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
