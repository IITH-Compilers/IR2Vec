; ModuleID = 'PE-benchmarks/maximum-sum-rectangle-in-a-2d-matrix.cpp'
source_filename = "PE-benchmarks/maximum-sum-rectangle-in-a-2d-matrix.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [14 x i8] c"(Top, Left) (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(Bottom, Right) (\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Max sum is: \00", align 1
@__const.main.M = private unnamed_addr constant [4 x [5 x i32]] [[5 x i32] [i32 1, i32 2, i32 -1, i32 -4, i32 -20], [5 x i32] [i32 -8, i32 -3, i32 4, i32 2, i32 1], [5 x i32] [i32 3, i32 8, i32 10, i32 1, i32 3], [5 x i32] [i32 -4, i32 -1, i32 1, i32 7, i32 -6]], align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_maximum_sum_rectangle_in_a_2d_matrix.cpp, i8* null }]

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
define dso_local i32 @_Z6kadanePiS_S_i(i32* %arr, i32* %start, i32* %finish, i32 %n) #4 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %start.addr = alloca i32*, align 8
  %finish.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %maxSum = alloca i32, align 4
  %i = alloca i32, align 4
  %local_start = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32* %start, i32** %start.addr, align 8
  store i32* %finish, i32** %finish.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %sum, align 4
  store i32 -2147483648, i32* %maxSum, align 4
  %0 = load i32*, i32** %finish.addr, align 8
  store i32 -1, i32* %0, align 4
  store i32 0, i32* %local_start, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %sum, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %sum, align 4
  %7 = load i32, i32* %sum, align 4
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %sum, align 4
  %8 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %8, 1
  store i32 %add2, i32* %local_start, align 4
  br label %if.end5

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %sum, align 4
  %10 = load i32, i32* %maxSum, align 4
  %cmp3 = icmp sgt i32 %9, %10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %11 = load i32, i32* %sum, align 4
  store i32 %11, i32* %maxSum, align 4
  %12 = load i32, i32* %local_start, align 4
  %13 = load i32*, i32** %start.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %i, align 4
  %15 = load i32*, i32** %finish.addr, align 8
  store i32 %14, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %finish.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp6 = icmp ne i32 %18, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  %19 = load i32, i32* %maxSum, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %for.end
  %20 = load i32*, i32** %arr.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx9, align 4
  store i32 %21, i32* %maxSum, align 4
  %22 = load i32*, i32** %finish.addr, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %start.addr, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc20, %if.end8
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %24, %25
  br i1 %cmp11, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond10
  %26 = load i32*, i32** %arr.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %26, i64 %idxprom13
  %28 = load i32, i32* %arrayidx14, align 4
  %29 = load i32, i32* %maxSum, align 4
  %cmp15 = icmp sgt i32 %28, %29
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %for.body12
  %30 = load i32*, i32** %arr.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %30, i64 %idxprom17
  %32 = load i32, i32* %arrayidx18, align 4
  store i32 %32, i32* %maxSum, align 4
  %33 = load i32, i32* %i, align 4
  %34 = load i32*, i32** %finish.addr, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %start.addr, align 8
  store i32 %33, i32* %35, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.body12
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %36 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %36, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond10

for.end22:                                        ; preds = %for.cond10
  %37 = load i32, i32* %maxSum, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end22, %if.then7
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline uwtable
define dso_local void @_Z10findMaxSumPA5_i([5 x i32]* %M) #0 {
entry:
  %M.addr = alloca [5 x i32]*, align 8
  %maxSum = alloca i32, align 4
  %finalLeft = alloca i32, align 4
  %finalRight = alloca i32, align 4
  %finalTop = alloca i32, align 4
  %finalBottom = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca [4 x i32], align 16
  %sum = alloca i32, align 4
  %start = alloca i32, align 4
  %finish = alloca i32, align 4
  store [5 x i32]* %M, [5 x i32]** %M.addr, align 8
  store i32 -2147483648, i32* %maxSum, align 4
  store i32 0, i32* %left, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, i32* %left, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 0
  %1 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 16, i1 false)
  %2 = load i32, i32* %left, align 4
  store i32 %2, i32* %right, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.body
  %3 = load i32, i32* %right, align 4
  %cmp2 = icmp slt i32 %3, 5
  br i1 %cmp2, label %for.body3, label %for.end15

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, 4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %5 = load [5 x i32]*, [5 x i32]** %M.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 %idxprom
  %7 = load i32, i32* %right, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx, i64 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i64 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %add = add nsw i32 %10, %8
  store i32 %add, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %arraydecay11 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 0
  %call = call i32 @_Z6kadanePiS_S_i(i32* %arraydecay11, i32* %start, i32* %finish, i32 4)
  store i32 %call, i32* %sum, align 4
  %12 = load i32, i32* %sum, align 4
  %13 = load i32, i32* %maxSum, align 4
  %cmp12 = icmp sgt i32 %12, %13
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %14 = load i32, i32* %sum, align 4
  store i32 %14, i32* %maxSum, align 4
  %15 = load i32, i32* %left, align 4
  store i32 %15, i32* %finalLeft, align 4
  %16 = load i32, i32* %right, align 4
  store i32 %16, i32* %finalRight, align 4
  %17 = load i32, i32* %start, align 4
  store i32 %17, i32* %finalTop, align 4
  %18 = load i32, i32* %finish, align 4
  store i32 %18, i32* %finalBottom, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %19 = load i32, i32* %right, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %right, align 4
  br label %for.cond1

for.end15:                                        ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %20 = load i32, i32* %left, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %left, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  %call19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %21 = load i32, i32* %finalTop, align 4
  %call20 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call19, i32 %21)
  %call21 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %22 = load i32, i32* %finalLeft, align 4
  %call22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call21, i32 %22)
  %call23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %call24 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call23, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %23 = load i32, i32* %finalBottom, align 4
  %call26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call25, i32 %23)
  %call27 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %24 = load i32, i32* %finalRight, align 4
  %call28 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call27, i32 %24)
  %call29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %call30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call29, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call31 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %25 = load i32, i32* %maxSum, align 4
  %call32 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call31, i32 %25)
  %call33 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call32, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %M = alloca [4 x [5 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x [5 x i32]]* %M to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [5 x i32]]* @__const.main.M to i8*), i64 80, i1 false)
  %arraydecay = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %M, i32 0, i32 0
  call void @_Z10findMaxSumPA5_i([5 x i32]* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_maximum_sum_rectangle_in_a_2d_matrix.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
