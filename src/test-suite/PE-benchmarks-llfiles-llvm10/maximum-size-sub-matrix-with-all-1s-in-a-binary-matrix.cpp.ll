; ModuleID = 'temp/maximum-size-sub-matrix-with-all-1s-in-a-binary-matrix.cpp'
source_filename = "temp/maximum-size-sub-matrix-with-all-1s-in-a-binary-matrix.cpp"
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

$_ZSt3minIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [30 x i8] c"Maximum size sub-matrix is: \0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.M = private unnamed_addr constant [6 x [5 x i32]] [[5 x i32] [i32 0, i32 1, i32 1, i32 0, i32 1], [5 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] zeroinitializer], align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_maximum_size_sub_matrix_with_all_1s_in_a_binary_matrix.cpp, i8* null }]

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
define dso_local void @_Z17printMaxSubSquarePA5_i([5 x i32]* %M) #0 {
entry:
  %M.addr = alloca [5 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %S = alloca [6 x [5 x i32]], align 16
  %max_of_s = alloca i32, align 4
  %max_i = alloca i32, align 4
  %max_j = alloca i32, align 4
  store [5 x i32]* %M, [5 x i32]** %M.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [5 x i32]*, [5 x i32]** %M.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx, i64 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx3, i64 0, i64 0
  store i32 %3, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.end
  %6 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %6, 5
  br i1 %cmp6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond5
  %7 = load [5 x i32]*, [5 x i32]** %M.addr, align 8
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0
  %8 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx8, i64 0, i64 %idxprom9
  %9 = load i32, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 0
  %10 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  store i32 %9, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body7
  %11 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond5

for.end16:                                        ; preds = %for.cond5
  store i32 1, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc55, %for.end16
  %12 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %12, 6
  br i1 %cmp18, label %for.body19, label %for.end57

for.body19:                                       ; preds = %for.cond17
  store i32 1, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc52, %for.body19
  %13 = load i32, i32* %j, align 4
  %cmp21 = icmp slt i32 %13, 5
  br i1 %cmp21, label %for.body22, label %for.end54

for.body22:                                       ; preds = %for.cond20
  %14 = load [5 x i32]*, [5 x i32]** %M.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 %idxprom23
  %16 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx24, i64 0, i64 %idxprom25
  %17 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %17, 1
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body22
  %18 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom28
  %19 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom30 = sext i32 %sub to i64
  %arrayidx31 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx29, i64 0, i64 %idxprom30
  %20 = load i32, i32* %i, align 4
  %sub32 = sub nsw i32 %20, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom33
  %21 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx34, i64 0, i64 %idxprom35
  %22 = load i32, i32* %i, align 4
  %sub37 = sub nsw i32 %22, 1
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom38
  %23 = load i32, i32* %j, align 4
  %sub40 = sub nsw i32 %23, 1
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx39, i64 0, i64 %idxprom41
  %call = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %arrayidx36, i32* dereferenceable(4) %arrayidx42)
  %call43 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %arrayidx31, i32* dereferenceable(4) %call)
  %24 = load i32, i32* %call43, align 4
  %add = add nsw i32 %24, 1
  %25 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %25 to i64
  %arrayidx45 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom44
  %26 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %26 to i64
  %arrayidx47 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx45, i64 0, i64 %idxprom46
  store i32 %add, i32* %arrayidx47, align 4
  br label %if.end

if.else:                                          ; preds = %for.body22
  %27 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom48
  %28 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx49, i64 0, i64 %idxprom50
  store i32 0, i32* %arrayidx51, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc52

for.inc52:                                        ; preds = %if.end
  %29 = load i32, i32* %j, align 4
  %inc53 = add nsw i32 %29, 1
  store i32 %inc53, i32* %j, align 4
  br label %for.cond20

for.end54:                                        ; preds = %for.cond20
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %30 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %30, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond17

for.end57:                                        ; preds = %for.cond17
  %arrayidx58 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 0
  %arrayidx59 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx58, i64 0, i64 0
  %31 = load i32, i32* %arrayidx59, align 16
  store i32 %31, i32* %max_of_s, align 4
  store i32 0, i32* %max_i, align 4
  store i32 0, i32* %max_j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %for.end57
  %32 = load i32, i32* %i, align 4
  %cmp61 = icmp slt i32 %32, 6
  br i1 %cmp61, label %for.body62, label %for.end82

for.body62:                                       ; preds = %for.cond60
  store i32 0, i32* %j, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %33 = load i32, i32* %j, align 4
  %cmp64 = icmp slt i32 %33, 5
  br i1 %cmp64, label %for.body65, label %for.end79

for.body65:                                       ; preds = %for.cond63
  %34 = load i32, i32* %max_of_s, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %35 to i64
  %arrayidx67 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom66
  %36 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %36 to i64
  %arrayidx69 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx67, i64 0, i64 %idxprom68
  %37 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %34, %37
  br i1 %cmp70, label %if.then71, label %if.end76

if.then71:                                        ; preds = %for.body65
  %38 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %38 to i64
  %arrayidx73 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %S, i64 0, i64 %idxprom72
  %39 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %39 to i64
  %arrayidx75 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx73, i64 0, i64 %idxprom74
  %40 = load i32, i32* %arrayidx75, align 4
  store i32 %40, i32* %max_of_s, align 4
  %41 = load i32, i32* %i, align 4
  store i32 %41, i32* %max_i, align 4
  %42 = load i32, i32* %j, align 4
  store i32 %42, i32* %max_j, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %for.body65
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %43 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %43, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond63

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %44 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %44, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond60

for.end82:                                        ; preds = %for.cond60
  %call83 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %max_i, align 4
  store i32 %45, i32* %i, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc101, %for.end82
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %max_i, align 4
  %48 = load i32, i32* %max_of_s, align 4
  %sub85 = sub nsw i32 %47, %48
  %cmp86 = icmp sgt i32 %46, %sub85
  br i1 %cmp86, label %for.body87, label %for.end103

for.body87:                                       ; preds = %for.cond84
  %49 = load i32, i32* %max_j, align 4
  store i32 %49, i32* %j, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc98, %for.body87
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %max_j, align 4
  %52 = load i32, i32* %max_of_s, align 4
  %sub89 = sub nsw i32 %51, %52
  %cmp90 = icmp sgt i32 %50, %sub89
  br i1 %cmp90, label %for.body91, label %for.end99

for.body91:                                       ; preds = %for.cond88
  %53 = load [5 x i32]*, [5 x i32]** %M.addr, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %54 to i64
  %arrayidx93 = getelementptr inbounds [5 x i32], [5 x i32]* %53, i64 %idxprom92
  %55 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %55 to i64
  %arrayidx95 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx93, i64 0, i64 %idxprom94
  %56 = load i32, i32* %arrayidx95, align 4
  %call96 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %56)
  %call97 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc98

for.inc98:                                        ; preds = %for.body91
  %57 = load i32, i32* %j, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond88

for.end99:                                        ; preds = %for.cond88
  %call100 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc101

for.inc101:                                       ; preds = %for.end99
  %58 = load i32, i32* %i, align 4
  %dec102 = add nsw i32 %58, -1
  store i32 %dec102, i32* %i, align 4
  br label %for.cond84

for.end103:                                       ; preds = %for.cond84
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #4 comdat {
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

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %M = alloca [6 x [5 x i32]], align 16
  %0 = bitcast [6 x [5 x i32]]* %M to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x [5 x i32]]* @__const.main.M to i8*), i64 120, i1 false)
  %arraydecay = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %M, i64 0, i64 0
  call void @_Z17printMaxSubSquarePA5_i([5 x i32]* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_maximum_size_sub_matrix_with_all_1s_in_a_binary_matrix.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
