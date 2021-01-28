; ModuleID = 'PE-benchmarks/tug-of-war.cpp'
source_filename = "PE-benchmarks/tug-of-war.cpp"
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
@.str = private unnamed_addr constant [22 x i8] c"The first subset is: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0AThe second subset is: \00", align 1
@__const.main.arr = private unnamed_addr constant [11 x i32] [i32 23, i32 45, i32 -34, i32 12, i32 0, i32 98, i32 -99, i32 4, i32 189, i32 -1, i32 4], align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_tug_of_war.cpp, i8* null }]

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
define dso_local void @_Z7TOWUtilPiiPbiS0_S_iii(i32* %arr, i32 %n, i8* %curr_elements, i32 %no_of_selected_elements, i8* %soln, i32* %min_diff, i32 %sum, i32 %curr_sum, i32 %curr_position) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %curr_elements.addr = alloca i8*, align 8
  %no_of_selected_elements.addr = alloca i32, align 4
  %soln.addr = alloca i8*, align 8
  %min_diff.addr = alloca i32*, align 8
  %sum.addr = alloca i32, align 4
  %curr_sum.addr = alloca i32, align 4
  %curr_position.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %curr_elements, i8** %curr_elements.addr, align 8
  store i32 %no_of_selected_elements, i32* %no_of_selected_elements.addr, align 4
  store i8* %soln, i8** %soln.addr, align 8
  store i32* %min_diff, i32** %min_diff.addr, align 8
  store i32 %sum, i32* %sum.addr, align 4
  store i32 %curr_sum, i32* %curr_sum.addr, align 4
  store i32 %curr_position, i32* %curr_position.addr, align 4
  %0 = load i32, i32* %curr_position.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %2, 2
  %3 = load i32, i32* %no_of_selected_elements.addr, align 4
  %sub = sub nsw i32 %div, %3
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* %curr_position.addr, align 4
  %sub1 = sub nsw i32 %4, %5
  %cmp2 = icmp sgt i32 %sub, %sub1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %n.addr, align 4
  %8 = load i8*, i8** %curr_elements.addr, align 8
  %9 = load i32, i32* %no_of_selected_elements.addr, align 4
  %10 = load i8*, i8** %soln.addr, align 8
  %11 = load i32*, i32** %min_diff.addr, align 8
  %12 = load i32, i32* %sum.addr, align 4
  %13 = load i32, i32* %curr_sum.addr, align 4
  %14 = load i32, i32* %curr_position.addr, align 4
  %add = add nsw i32 %14, 1
  call void @_Z7TOWUtilPiiPbiS0_S_iii(i32* %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11, i32 %12, i32 %13, i32 %add)
  %15 = load i32, i32* %no_of_selected_elements.addr, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %no_of_selected_elements.addr, align 4
  %16 = load i32, i32* %curr_sum.addr, align 4
  %17 = load i32*, i32** %arr.addr, align 8
  %18 = load i32, i32* %curr_position.addr, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  %add5 = add nsw i32 %16, %19
  store i32 %add5, i32* %curr_sum.addr, align 4
  %20 = load i8*, i8** %curr_elements.addr, align 8
  %21 = load i32, i32* %curr_position.addr, align 4
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %20, i64 %idxprom6
  store i8 1, i8* %arrayidx7, align 1
  %22 = load i32, i32* %no_of_selected_elements.addr, align 4
  %23 = load i32, i32* %n.addr, align 4
  %div8 = sdiv i32 %23, 2
  %cmp9 = icmp eq i32 %22, %div8
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end4
  %24 = load i32, i32* %sum.addr, align 4
  %div11 = sdiv i32 %24, 2
  %25 = load i32, i32* %curr_sum.addr, align 4
  %sub12 = sub nsw i32 %div11, %25
  %call = call i32 @abs(i32 %sub12) #8
  %26 = load i32*, i32** %min_diff.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp13 = icmp slt i32 %call, %27
  br i1 %cmp13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.then10
  %28 = load i32, i32* %sum.addr, align 4
  %div15 = sdiv i32 %28, 2
  %29 = load i32, i32* %curr_sum.addr, align 4
  %sub16 = sub nsw i32 %div15, %29
  %call17 = call i32 @abs(i32 %sub16) #8
  %30 = load i32*, i32** %min_diff.addr, align 8
  store i32 %call17, i32* %30, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %n.addr, align 4
  %cmp18 = icmp slt i32 %31, %32
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %curr_elements.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %33, i64 %idxprom19
  %35 = load i8, i8* %arrayidx20, align 1
  %tobool = trunc i8 %35 to i1
  %36 = load i8*, i8** %soln.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %36, i64 %idxprom21
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %38, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.then10
  br label %if.end26

if.else:                                          ; preds = %if.end4
  %39 = load i32*, i32** %arr.addr, align 8
  %40 = load i32, i32* %n.addr, align 4
  %41 = load i8*, i8** %curr_elements.addr, align 8
  %42 = load i32, i32* %no_of_selected_elements.addr, align 4
  %43 = load i8*, i8** %soln.addr, align 8
  %44 = load i32*, i32** %min_diff.addr, align 8
  %45 = load i32, i32* %sum.addr, align 4
  %46 = load i32, i32* %curr_sum.addr, align 4
  %47 = load i32, i32* %curr_position.addr, align 4
  %add25 = add nsw i32 %47, 1
  call void @_Z7TOWUtilPiiPbiS0_S_iii(i32* %39, i32 %40, i8* %41, i32 %42, i8* %43, i32* %44, i32 %45, i32 %46, i32 %add25)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end24
  %48 = load i8*, i8** %curr_elements.addr, align 8
  %49 = load i32, i32* %curr_position.addr, align 4
  %idxprom27 = sext i32 %49 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %48, i64 %idxprom27
  store i8 0, i8* %arrayidx28, align 1
  br label %return

return:                                           ; preds = %if.end26, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #4

; Function Attrs: noinline uwtable
define dso_local void @_Z8tugOfWarPii(i32* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %curr_elements = alloca i8*, align 8
  %soln = alloca i8*, align 8
  %min_diff = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  %i24 = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @_Znam(i64 %conv) #9
  store i8* %call, i8** %curr_elements, align 8
  %1 = load i32, i32* %n.addr, align 4
  %conv1 = sext i32 %1 to i64
  %call2 = call i8* @_Znam(i64 %conv1) #9
  store i8* %call2, i8** %soln, align 8
  store i32 2147483647, i32* %min_diff, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %arr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %sum, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %sum, align 4
  %8 = load i8*, i8** %soln, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  %10 = load i8*, i8** %curr_elements, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32*, i32** %arr.addr, align 8
  %14 = load i32, i32* %n.addr, align 4
  %15 = load i8*, i8** %curr_elements, align 8
  %16 = load i8*, i8** %soln, align 8
  %17 = load i32, i32* %sum, align 4
  call void @_Z7TOWUtilPiiPbiS0_S_iii(i32* %13, i32 %14, i8* %15, i32 0, i8* %16, i32* %min_diff, i32 %17, i32 0, i32 0)
  %call7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc20, %for.end
  %18 = load i32, i32* %i8, align 4
  %19 = load i32, i32* %n.addr, align 4
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %for.body11, label %for.end22

for.body11:                                       ; preds = %for.cond9
  %20 = load i8*, i8** %soln, align 8
  %21 = load i32, i32* %i8, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %20, i64 %idxprom12
  %22 = load i8, i8* %arrayidx13, align 1
  %tobool = trunc i8 %22 to i1
  %conv14 = zext i1 %tobool to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  %23 = load i32*, i32** %arr.addr, align 8
  %24 = load i32, i32* %i8, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4
  %call18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %25)
  %call19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body11
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %26 = load i32, i32* %i8, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %i8, align 4
  br label %for.cond9

for.end22:                                        ; preds = %for.cond9
  %call23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i24, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc39, %for.end22
  %27 = load i32, i32* %i24, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp26 = icmp slt i32 %27, %28
  br i1 %cmp26, label %for.body27, label %for.end41

for.body27:                                       ; preds = %for.cond25
  %29 = load i8*, i8** %soln, align 8
  %30 = load i32, i32* %i24, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %29, i64 %idxprom28
  %31 = load i8, i8* %arrayidx29, align 1
  %tobool30 = trunc i8 %31 to i1
  %conv31 = zext i1 %tobool30 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %for.body27
  %32 = load i32*, i32** %arr.addr, align 8
  %33 = load i32, i32* %i24, align 4
  %idxprom34 = sext i32 %33 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %32, i64 %idxprom34
  %34 = load i32, i32* %arrayidx35, align 4
  %call36 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %34)
  %call37 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %for.body27
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %35 = load i32, i32* %i24, align 4
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, i32* %i24, align 4
  br label %for.cond25

for.end41:                                        ; preds = %for.cond25
  ret void
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [11 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([11 x i32]* @__const.main.arr to i8*), i64 44, i1 false)
  store i32 11, i32* %n, align 4
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  call void @_Z8tugOfWarPii(i32* %arraydecay, i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_tug_of_war.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
