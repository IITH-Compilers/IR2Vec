; ModuleID = 'PE-benchmarks/collect-maximum-points-in-a-grid-using-two-traversals.cpp'
source_filename = "PE-benchmarks/collect-maximum-points-in-a-grid-using-two-traversals.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 3, i32 6, i32 8, i32 2], [4 x i32] [i32 5, i32 2, i32 4, i32 3], [4 x i32] [i32 1, i32 1, i32 20, i32 10], [4 x i32] [i32 1, i32 1, i32 20, i32 10], [4 x i32] [i32 1, i32 1, i32 20, i32 10]], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"Maximum collection is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_collect_maximum_points_in_a_grid_using_two_traversals.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z7isValidiii(i32 %x, i32 %y1, i32 %y2) #4 {
entry:
  %x.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp slt i32 %1, 5
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %y1.addr, align 4
  %cmp3 = icmp sge i32 %2, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, i32* %y1.addr, align 4
  %cmp5 = icmp slt i32 %3, 4
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, i32* %y2.addr, align 4
  %cmp7 = icmp sge i32 %4, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  %5 = load i32, i32* %y2.addr, align 4
  %cmp8 = icmp slt i32 %5, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp8, %land.rhs ]
  ret i1 %6
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %arr, [4 x [4 x i32]]* %mem, i32 %x, i32 %y1, i32 %y2) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca [4 x i32]*, align 8
  %mem.addr = alloca [4 x [4 x i32]]*, align 8
  %x.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %ans = alloca i32, align 4
  %temp = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %ref.tmp57 = alloca i32, align 4
  %ref.tmp63 = alloca i32, align 4
  %ref.tmp68 = alloca i32, align 4
  %ref.tmp74 = alloca i32, align 4
  %ref.tmp81 = alloca i32, align 4
  %ref.tmp88 = alloca i32, align 4
  %ref.tmp94 = alloca i32, align 4
  %ref.tmp101 = alloca i32, align 4
  store [4 x i32]* %arr, [4 x i32]** %arr.addr, align 8
  store [4 x [4 x i32]]* %mem, [4 x [4 x i32]]** %mem.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y1.addr, align 4
  %2 = load i32, i32* %y2.addr, align 4
  %call = call zeroext i1 @_Z7isValidiii(i32 %0, i32 %1, i32 %2)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2147483648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %y1.addr, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end16

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %y2.addr, align 4
  %cmp3 = icmp eq i32 %5, 3
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %land.lhs.true2
  %6 = load i32, i32* %y1.addr, align 4
  %7 = load i32, i32* %y2.addr, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %8 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 %idxprom
  %10 = load i32, i32* %y1.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  %12 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %13 = load i32, i32* %x.addr, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %idxprom8
  %14 = load i32, i32* %y1.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %17 = load i32, i32* %x.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 %idxprom12
  %18 = load i32, i32* %y2.addr, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  %19 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %15, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %20 = load i32, i32* %x.addr, align 4
  %cmp17 = icmp eq i32 %20, 4
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i32 -2147483648, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end16
  %21 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %22 = load i32, i32* %x.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %21, i64 %idxprom20
  %23 = load i32, i32* %y1.addr, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx21, i64 0, i64 %idxprom22
  %24 = load i32, i32* %y2.addr, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx23, i64 0, i64 %idxprom24
  %25 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp ne i32 %25, -1
  br i1 %cmp26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end19
  %26 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %27 = load i32, i32* %x.addr, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %26, i64 %idxprom28
  %28 = load i32, i32* %y1.addr, align 4
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx29, i64 0, i64 %idxprom30
  %29 = load i32, i32* %y2.addr, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx31, i64 0, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end19
  store i32 -2147483648, i32* %ans, align 4
  %31 = load i32, i32* %y1.addr, align 4
  %32 = load i32, i32* %y2.addr, align 4
  %cmp35 = icmp eq i32 %31, %32
  br i1 %cmp35, label %cond.true36, label %cond.false41

cond.true36:                                      ; preds = %if.end34
  %33 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %34 = load i32, i32* %x.addr, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 %idxprom37
  %35 = load i32, i32* %y1.addr, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx38, i64 0, i64 %idxprom39
  %36 = load i32, i32* %arrayidx40, align 4
  br label %cond.end51

cond.false41:                                     ; preds = %if.end34
  %37 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %38 = load i32, i32* %x.addr, align 4
  %idxprom42 = sext i32 %38 to i64
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 %idxprom42
  %39 = load i32, i32* %y1.addr, align 4
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx43, i64 0, i64 %idxprom44
  %40 = load i32, i32* %arrayidx45, align 4
  %41 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %42 = load i32, i32* %x.addr, align 4
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 %idxprom46
  %43 = load i32, i32* %y2.addr, align 4
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx47, i64 0, i64 %idxprom48
  %44 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %40, %44
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false41, %cond.true36
  %cond52 = phi i32 [ %36, %cond.true36 ], [ %add50, %cond.false41 ]
  store i32 %cond52, i32* %temp, align 4
  %45 = load i32, i32* %temp, align 4
  %46 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %47 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %48 = load i32, i32* %x.addr, align 4
  %add53 = add nsw i32 %48, 1
  %49 = load i32, i32* %y1.addr, align 4
  %50 = load i32, i32* %y2.addr, align 4
  %sub = sub nsw i32 %50, 1
  %call54 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %46, [4 x [4 x i32]]* %47, i32 %add53, i32 %49, i32 %sub)
  %add55 = add nsw i32 %45, %call54
  store i32 %add55, i32* %ref.tmp, align 4
  %call56 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp)
  %51 = load i32, i32* %call56, align 4
  store i32 %51, i32* %ans, align 4
  %52 = load i32, i32* %temp, align 4
  %53 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %54 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %55 = load i32, i32* %x.addr, align 4
  %add58 = add nsw i32 %55, 1
  %56 = load i32, i32* %y1.addr, align 4
  %57 = load i32, i32* %y2.addr, align 4
  %add59 = add nsw i32 %57, 1
  %call60 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %53, [4 x [4 x i32]]* %54, i32 %add58, i32 %56, i32 %add59)
  %add61 = add nsw i32 %52, %call60
  store i32 %add61, i32* %ref.tmp57, align 4
  %call62 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp57)
  %58 = load i32, i32* %call62, align 4
  store i32 %58, i32* %ans, align 4
  %59 = load i32, i32* %temp, align 4
  %60 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %61 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %62 = load i32, i32* %x.addr, align 4
  %add64 = add nsw i32 %62, 1
  %63 = load i32, i32* %y1.addr, align 4
  %64 = load i32, i32* %y2.addr, align 4
  %call65 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %60, [4 x [4 x i32]]* %61, i32 %add64, i32 %63, i32 %64)
  %add66 = add nsw i32 %59, %call65
  store i32 %add66, i32* %ref.tmp63, align 4
  %call67 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp63)
  %65 = load i32, i32* %call67, align 4
  store i32 %65, i32* %ans, align 4
  %66 = load i32, i32* %temp, align 4
  %67 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %68 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %69 = load i32, i32* %x.addr, align 4
  %add69 = add nsw i32 %69, 1
  %70 = load i32, i32* %y1.addr, align 4
  %sub70 = sub nsw i32 %70, 1
  %71 = load i32, i32* %y2.addr, align 4
  %call71 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %67, [4 x [4 x i32]]* %68, i32 %add69, i32 %sub70, i32 %71)
  %add72 = add nsw i32 %66, %call71
  store i32 %add72, i32* %ref.tmp68, align 4
  %call73 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp68)
  %72 = load i32, i32* %call73, align 4
  store i32 %72, i32* %ans, align 4
  %73 = load i32, i32* %temp, align 4
  %74 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %75 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %76 = load i32, i32* %x.addr, align 4
  %add75 = add nsw i32 %76, 1
  %77 = load i32, i32* %y1.addr, align 4
  %sub76 = sub nsw i32 %77, 1
  %78 = load i32, i32* %y2.addr, align 4
  %sub77 = sub nsw i32 %78, 1
  %call78 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %74, [4 x [4 x i32]]* %75, i32 %add75, i32 %sub76, i32 %sub77)
  %add79 = add nsw i32 %73, %call78
  store i32 %add79, i32* %ref.tmp74, align 4
  %call80 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp74)
  %79 = load i32, i32* %call80, align 4
  store i32 %79, i32* %ans, align 4
  %80 = load i32, i32* %temp, align 4
  %81 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %82 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %83 = load i32, i32* %x.addr, align 4
  %add82 = add nsw i32 %83, 1
  %84 = load i32, i32* %y1.addr, align 4
  %sub83 = sub nsw i32 %84, 1
  %85 = load i32, i32* %y2.addr, align 4
  %add84 = add nsw i32 %85, 1
  %call85 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %81, [4 x [4 x i32]]* %82, i32 %add82, i32 %sub83, i32 %add84)
  %add86 = add nsw i32 %80, %call85
  store i32 %add86, i32* %ref.tmp81, align 4
  %call87 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp81)
  %86 = load i32, i32* %call87, align 4
  store i32 %86, i32* %ans, align 4
  %87 = load i32, i32* %temp, align 4
  %88 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %89 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %90 = load i32, i32* %x.addr, align 4
  %add89 = add nsw i32 %90, 1
  %91 = load i32, i32* %y1.addr, align 4
  %add90 = add nsw i32 %91, 1
  %92 = load i32, i32* %y2.addr, align 4
  %call91 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %88, [4 x [4 x i32]]* %89, i32 %add89, i32 %add90, i32 %92)
  %add92 = add nsw i32 %87, %call91
  store i32 %add92, i32* %ref.tmp88, align 4
  %call93 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp88)
  %93 = load i32, i32* %call93, align 4
  store i32 %93, i32* %ans, align 4
  %94 = load i32, i32* %temp, align 4
  %95 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %96 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %97 = load i32, i32* %x.addr, align 4
  %add95 = add nsw i32 %97, 1
  %98 = load i32, i32* %y1.addr, align 4
  %add96 = add nsw i32 %98, 1
  %99 = load i32, i32* %y2.addr, align 4
  %sub97 = sub nsw i32 %99, 1
  %call98 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %95, [4 x [4 x i32]]* %96, i32 %add95, i32 %add96, i32 %sub97)
  %add99 = add nsw i32 %94, %call98
  store i32 %add99, i32* %ref.tmp94, align 4
  %call100 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp94)
  %100 = load i32, i32* %call100, align 4
  store i32 %100, i32* %ans, align 4
  %101 = load i32, i32* %temp, align 4
  %102 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %103 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %104 = load i32, i32* %x.addr, align 4
  %add102 = add nsw i32 %104, 1
  %105 = load i32, i32* %y1.addr, align 4
  %add103 = add nsw i32 %105, 1
  %106 = load i32, i32* %y2.addr, align 4
  %add104 = add nsw i32 %106, 1
  %call105 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %102, [4 x [4 x i32]]* %103, i32 %add102, i32 %add103, i32 %add104)
  %add106 = add nsw i32 %101, %call105
  store i32 %add106, i32* %ref.tmp101, align 4
  %call107 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ans, i32* dereferenceable(4) %ref.tmp101)
  %107 = load i32, i32* %call107, align 4
  store i32 %107, i32* %ans, align 4
  %108 = load i32, i32* %ans, align 4
  %109 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %mem.addr, align 8
  %110 = load i32, i32* %x.addr, align 4
  %idxprom108 = sext i32 %110 to i64
  %arrayidx109 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %109, i64 %idxprom108
  %111 = load i32, i32* %y1.addr, align 4
  %idxprom110 = sext i32 %111 to i64
  %arrayidx111 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx109, i64 0, i64 %idxprom110
  %112 = load i32, i32* %y2.addr, align 4
  %idxprom112 = sext i32 %112 to i64
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx111, i64 0, i64 %idxprom112
  store i32 %108, i32* %arrayidx113, align 4
  store i32 %108, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end51, %if.then27, %if.then18, %cond.end, %if.then
  %113 = load i32, i32* %retval, align 4
  ret i32 %113
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
define dso_local i32 @_Z15geMaxCollectionPA4_i([4 x i32]* %arr) #0 {
entry:
  %arr.addr = alloca [4 x i32]*, align 8
  %mem = alloca [5 x [4 x [4 x i32]]], align 16
  store [4 x i32]* %arr, [4 x i32]** %arr.addr, align 8
  %arraydecay = getelementptr inbounds [5 x [4 x [4 x i32]]], [5 x [4 x [4 x i32]]]* %mem, i32 0, i32 0
  %0 = bitcast [4 x [4 x i32]]* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 -1, i64 320, i1 false)
  %1 = load [4 x i32]*, [4 x i32]** %arr.addr, align 8
  %arraydecay1 = getelementptr inbounds [5 x [4 x [4 x i32]]], [5 x [4 x [4 x i32]]]* %mem, i32 0, i32 0
  %call = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %1, [4 x [4 x i32]]* %arraydecay1, i32 0, i32 0, i32 3)
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [5 x [4 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x [4 x i32]]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x [4 x i32]]* @__const.main.arr to i8*), i64 80, i1 false)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %arr, i32 0, i32 0
  %call1 = call i32 @_Z15geMaxCollectionPA4_i([4 x i32]* %arraydecay)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_collect_maximum_points_in_a_grid_using_two_traversals.cpp() #0 section ".text.startup" {
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
