; ModuleID = 'temp/find-length-of-the-longest-consecutive-path-in-a-character-matrix.cpp'
source_filename = "temp/find-length-of-the-longest-consecutive-path-in-a-character-matrix.cpp"
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

$_ZSt3maxIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@x = dso_local global [8 x i32] [i32 0, i32 1, i32 1, i32 -1, i32 1, i32 0, i32 -1, i32 -1], align 16
@y = dso_local global [8 x i32] [i32 1, i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 -1], align 16
@dp = dso_local global [3 x [3 x i32]] zeroinitializer, align 16
@__const.main.mat = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"acd", [3 x i8] c"hba", [3 x i8] c"igf"], align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_find_length_of_the_longest_consecutive_path_in_a_character_matrix.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z7isvalidii(i32 %i, i32 %j) #4 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %j.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %i.addr, align 4
  %cmp3 = icmp sge i32 %2, 3
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %j.addr, align 4
  %cmp5 = icmp sge i32 %3, 3
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z10isadjacentcc(i8 signext %prev, i8 signext %curr) #4 {
entry:
  %prev.addr = alloca i8, align 1
  %curr.addr = alloca i8, align 1
  store i8 %prev, i8* %prev.addr, align 1
  store i8 %curr, i8* %curr.addr, align 1
  %0 = load i8, i8* %curr.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, i8* %prev.addr, align 1
  %conv1 = sext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv1
  %cmp = icmp eq i32 %sub, 1
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z10getLenUtilPA3_ciic([3 x i8]* %mat, i32 %i, i32 %j, i8 signext %prev) #0 {
entry:
  %retval = alloca i32, align 4
  %mat.addr = alloca [3 x i8]*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %prev.addr = alloca i8, align 1
  %ans = alloca i32, align 4
  %k = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  store [3 x i8]* %mat, [3 x i8]** %mat.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8 %prev, i8* %prev.addr, align 1
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %call = call zeroext i1 @_Z7isvalidii(i32 %0, i32 %1)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8, i8* %prev.addr, align 1
  %3 = load [3 x i8]*, [3 x i8]** %mat.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 %idxprom
  %5 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i64 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %call3 = call zeroext i1 @_Z10isadjacentcc(i8 signext %2, i8 signext %6)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %i.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @dp, i64 0, i64 %idxprom4
  %8 = load i32, i32* %j.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  %cmp = icmp ne i32 %9, -1
  br i1 %cmp, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  %10 = load i32, i32* %i.addr, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @dp, i64 0, i64 %idxprom9
  %11 = load i32, i32* %j.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %13 = load i32, i32* %k, align 4
  %cmp14 = icmp slt i32 %13, 8
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load [3 x i8]*, [3 x i8]** %mat.addr, align 8
  %15 = load i32, i32* %i.addr, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* @x, i64 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %add = add nsw i32 %15, %17
  %18 = load i32, i32* %j.addr, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* @y, i64 0, i64 %idxprom17
  %20 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %18, %20
  %21 = load [3 x i8]*, [3 x i8]** %mat.addr, align 8
  %22 = load i32, i32* %i.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 %idxprom20
  %23 = load i32, i32* %j.addr, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx21, i64 0, i64 %idxprom22
  %24 = load i8, i8* %arrayidx23, align 1
  %call24 = call i32 @_Z10getLenUtilPA3_ciic([3 x i8]* %14, i32 %add, i32 %add19, i8 signext %24)
  %add25 = add nsw i32 1, %call24
  store i32 %add25, i32* %ref.tmp, align 4
  %call26 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp)
  %25 = load i32, i32* %call26, align 4
  store i32 %25, i32* %ans, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %ans, align 4
  %28 = load i32, i32* %i.addr, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @dp, i64 0, i64 %idxprom27
  %29 = load i32, i32* %j.addr, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx28, i64 0, i64 %idxprom29
  store i32 %27, i32* %arrayidx30, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #4 comdat {
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

; Function Attrs: noinline uwtable
define dso_local i32 @_Z6getLenPA3_cc([3 x i8]* %mat, i8 signext %s) #0 {
entry:
  %mat.addr = alloca [3 x i8]*, align 8
  %s.addr = alloca i8, align 1
  %ans = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  store [3 x i8]* %mat, [3 x i8]** %mat.addr, align 8
  store i8 %s, i8* %s.addr, align 1
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([3 x [3 x i32]]* @dp to i8*), i8 -1, i64 36, i1 false)
  store i32 0, i32* %ans, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %2 = load [3 x i8]*, [3 x i8]** %mat.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %5 to i32
  %6 = load i8, i8* %s.addr, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then
  %7 = load i32, i32* %k, align 4
  %cmp9 = icmp slt i32 %7, 8
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %8 = load [3 x i8]*, [3 x i8]** %mat.addr, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* @x, i64 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %add = add nsw i32 %9, %11
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* @y, i64 0, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %12, %14
  %15 = load i8, i8* %s.addr, align 1
  %call = call i32 @_Z10getLenUtilPA3_ciic([3 x i8]* %8, i32 %add, i32 %add15, i8 signext %15)
  %add16 = add nsw i32 1, %call
  store i32 %add16, i32* %ref.tmp, align 4
  %call17 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp)
  %16 = load i32, i32* %call17, align 4
  store i32 %16, i32* %ans, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body3
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond1

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %19 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  %20 = load i32, i32* %ans, align 4
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %mat = alloca [3 x [3 x i8]], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x [3 x i8]]* %mat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([3 x [3 x i8]], [3 x [3 x i8]]* @__const.main.mat, i32 0, i32 0, i32 0), i64 9, i1 false)
  %arraydecay = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %mat, i64 0, i64 0
  %call = call i32 @_Z6getLenPA3_cc([3 x i8]* %arraydecay, i8 signext 97)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %call)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call1, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %arraydecay3 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %mat, i64 0, i64 0
  %call4 = call i32 @_Z6getLenPA3_cc([3 x i8]* %arraydecay3, i8 signext 101)
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %call4)
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %arraydecay7 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %mat, i64 0, i64 0
  %call8 = call i32 @_Z6getLenPA3_cc([3 x i8]* %arraydecay7, i8 signext 98)
  %call9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %call8)
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call9, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %arraydecay11 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %mat, i64 0, i64 0
  %call12 = call i32 @_Z6getLenPA3_cc([3 x i8]* %arraydecay11, i8 signext 102)
  %call13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %call12)
  %call14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call13, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_find_length_of_the_longest_consecutive_path_in_a_character_matrix.cpp() #0 section ".text.startup" {
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
