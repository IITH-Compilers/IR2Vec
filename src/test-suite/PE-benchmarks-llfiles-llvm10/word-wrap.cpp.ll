; ModuleID = 'temp/word-wrap.cpp'
source_filename = "temp/word-wrap.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"Line number \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c": From word no. \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@__const.main.l = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 2, i32 5], align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_word_wrap.cpp, i8* null }]

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
define dso_local void @_Z13solveWordWrapPiii(i32* %l, i32 %n, i32 %M) #0 {
entry:
  %l.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %l, i32** %l.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = load i32, i32* %n.addr, align 4
  %add1 = add nsw i32 %2, 1
  %3 = zext i32 %add1 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 %3, i64* %__vla_expr1, align 8
  %6 = load i32, i32* %n.addr, align 4
  %add2 = add nsw i32 %6, 1
  %7 = zext i32 %add2 to i64
  %8 = load i32, i32* %n.addr, align 4
  %add3 = add nsw i32 %8, 1
  %9 = zext i32 %add3 to i64
  %10 = mul nuw i64 %7, %9
  %vla4 = alloca i32, i64 %10, align 16
  store i64 %7, i64* %__vla_expr2, align 8
  store i64 %9, i64* %__vla_expr3, align 8
  %11 = load i32, i32* %n.addr, align 4
  %add5 = add nsw i32 %11, 1
  %12 = zext i32 %add5 to i64
  %vla6 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %__vla_expr4, align 8
  %13 = load i32, i32* %n.addr, align 4
  %add7 = add nsw i32 %13, 1
  %14 = zext i32 %add7 to i64
  %vla8 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %__vla_expr5, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %M.addr, align 4
  %18 = load i32*, i32** %l.addr, align 8
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  %sub9 = sub nsw i32 %17, %20
  %21 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = mul nsw i64 %idxprom10, %3
  %arrayidx11 = getelementptr inbounds i32, i32* %vla, i64 %22
  %23 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %arrayidx11, i64 %idxprom12
  store i32 %sub9, i32* %arrayidx13, align 4
  %24 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %24, 1
  store i32 %add14, i32* %j, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp sle i32 %25, %26
  br i1 %cmp16, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond15
  %27 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = mul nsw i64 %idxprom18, %3
  %arrayidx19 = getelementptr inbounds i32, i32* %vla, i64 %28
  %29 = load i32, i32* %j, align 4
  %sub20 = sub nsw i32 %29, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %arrayidx19, i64 %idxprom21
  %30 = load i32, i32* %arrayidx22, align 4
  %31 = load i32*, i32** %l.addr, align 8
  %32 = load i32, i32* %j, align 4
  %sub23 = sub nsw i32 %32, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 %idxprom24
  %33 = load i32, i32* %arrayidx25, align 4
  %sub26 = sub nsw i32 %30, %33
  %sub27 = sub nsw i32 %sub26, 1
  %34 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = mul nsw i64 %idxprom28, %3
  %arrayidx29 = getelementptr inbounds i32, i32* %vla, i64 %35
  %36 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %arrayidx29, i64 %idxprom30
  store i32 %sub27, i32* %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body17
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond15

for.end:                                          ; preds = %for.cond15
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %38 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end34:                                        ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc78, %for.end34
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %n.addr, align 4
  %cmp36 = icmp sle i32 %39, %40
  br i1 %cmp36, label %for.body37, label %for.end80

for.body37:                                       ; preds = %for.cond35
  %41 = load i32, i32* %i, align 4
  store i32 %41, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc75, %for.body37
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %n.addr, align 4
  %cmp39 = icmp sle i32 %42, %43
  br i1 %cmp39, label %for.body40, label %for.end77

for.body40:                                       ; preds = %for.cond38
  %44 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = mul nsw i64 %idxprom41, %3
  %arrayidx42 = getelementptr inbounds i32, i32* %vla, i64 %45
  %46 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds i32, i32* %arrayidx42, i64 %idxprom43
  %47 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp slt i32 %47, 0
  br i1 %cmp45, label %if.then, label %if.else

if.then:                                          ; preds = %for.body40
  %48 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %48 to i64
  %49 = mul nsw i64 %idxprom46, %9
  %arrayidx47 = getelementptr inbounds i32, i32* %vla4, i64 %49
  %50 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %50 to i64
  %arrayidx49 = getelementptr inbounds i32, i32* %arrayidx47, i64 %idxprom48
  store i32 2147483647, i32* %arrayidx49, align 4
  br label %if.end74

if.else:                                          ; preds = %for.body40
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %n.addr, align 4
  %cmp50 = icmp eq i32 %51, %52
  br i1 %cmp50, label %land.lhs.true, label %if.else61

land.lhs.true:                                    ; preds = %if.else
  %53 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = mul nsw i64 %idxprom51, %3
  %arrayidx52 = getelementptr inbounds i32, i32* %vla, i64 %54
  %55 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %55 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %arrayidx52, i64 %idxprom53
  %56 = load i32, i32* %arrayidx54, align 4
  %cmp55 = icmp sge i32 %56, 0
  br i1 %cmp55, label %if.then56, label %if.else61

if.then56:                                        ; preds = %land.lhs.true
  %57 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %57 to i64
  %58 = mul nsw i64 %idxprom57, %9
  %arrayidx58 = getelementptr inbounds i32, i32* %vla4, i64 %58
  %59 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %59 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %arrayidx58, i64 %idxprom59
  store i32 0, i32* %arrayidx60, align 4
  br label %if.end

if.else61:                                        ; preds = %land.lhs.true, %if.else
  %60 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %60 to i64
  %61 = mul nsw i64 %idxprom62, %3
  %arrayidx63 = getelementptr inbounds i32, i32* %vla, i64 %61
  %62 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %62 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %arrayidx63, i64 %idxprom64
  %63 = load i32, i32* %arrayidx65, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %64 to i64
  %65 = mul nsw i64 %idxprom66, %3
  %arrayidx67 = getelementptr inbounds i32, i32* %vla, i64 %65
  %66 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %66 to i64
  %arrayidx69 = getelementptr inbounds i32, i32* %arrayidx67, i64 %idxprom68
  %67 = load i32, i32* %arrayidx69, align 4
  %mul = mul nsw i32 %63, %67
  %68 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %68 to i64
  %69 = mul nsw i64 %idxprom70, %9
  %arrayidx71 = getelementptr inbounds i32, i32* %vla4, i64 %69
  %70 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %70 to i64
  %arrayidx73 = getelementptr inbounds i32, i32* %arrayidx71, i64 %idxprom72
  store i32 %mul, i32* %arrayidx73, align 4
  br label %if.end

if.end:                                           ; preds = %if.else61, %if.then56
  br label %if.end74

if.end74:                                         ; preds = %if.end, %if.then
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %71 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %71, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond38

for.end77:                                        ; preds = %for.cond38
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %72 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %72, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond35

for.end80:                                        ; preds = %for.cond35
  %arrayidx81 = getelementptr inbounds i32, i32* %vla6, i64 0
  store i32 0, i32* %arrayidx81, align 16
  store i32 1, i32* %j, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc129, %for.end80
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %n.addr, align 4
  %cmp83 = icmp sle i32 %73, %74
  br i1 %cmp83, label %for.body84, label %for.end131

for.body84:                                       ; preds = %for.cond82
  %75 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %75 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %vla6, i64 %idxprom85
  store i32 2147483647, i32* %arrayidx86, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc126, %for.body84
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %j, align 4
  %cmp88 = icmp sle i32 %76, %77
  br i1 %cmp88, label %for.body89, label %for.end128

for.body89:                                       ; preds = %for.cond87
  %78 = load i32, i32* %i, align 4
  %sub90 = sub nsw i32 %78, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* %vla6, i64 %idxprom91
  %79 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp ne i32 %79, 2147483647
  br i1 %cmp93, label %land.lhs.true94, label %if.end125

land.lhs.true94:                                  ; preds = %for.body89
  %80 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %80 to i64
  %81 = mul nsw i64 %idxprom95, %9
  %arrayidx96 = getelementptr inbounds i32, i32* %vla4, i64 %81
  %82 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %82 to i64
  %arrayidx98 = getelementptr inbounds i32, i32* %arrayidx96, i64 %idxprom97
  %83 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp ne i32 %83, 2147483647
  br i1 %cmp99, label %land.lhs.true100, label %if.end125

land.lhs.true100:                                 ; preds = %land.lhs.true94
  %84 = load i32, i32* %i, align 4
  %sub101 = sub nsw i32 %84, 1
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds i32, i32* %vla6, i64 %idxprom102
  %85 = load i32, i32* %arrayidx103, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %86 to i64
  %87 = mul nsw i64 %idxprom104, %9
  %arrayidx105 = getelementptr inbounds i32, i32* %vla4, i64 %87
  %88 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %88 to i64
  %arrayidx107 = getelementptr inbounds i32, i32* %arrayidx105, i64 %idxprom106
  %89 = load i32, i32* %arrayidx107, align 4
  %add108 = add nsw i32 %85, %89
  %90 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %90 to i64
  %arrayidx110 = getelementptr inbounds i32, i32* %vla6, i64 %idxprom109
  %91 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp slt i32 %add108, %91
  br i1 %cmp111, label %if.then112, label %if.end125

if.then112:                                       ; preds = %land.lhs.true100
  %92 = load i32, i32* %i, align 4
  %sub113 = sub nsw i32 %92, 1
  %idxprom114 = sext i32 %sub113 to i64
  %arrayidx115 = getelementptr inbounds i32, i32* %vla6, i64 %idxprom114
  %93 = load i32, i32* %arrayidx115, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %94 to i64
  %95 = mul nsw i64 %idxprom116, %9
  %arrayidx117 = getelementptr inbounds i32, i32* %vla4, i64 %95
  %96 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %96 to i64
  %arrayidx119 = getelementptr inbounds i32, i32* %arrayidx117, i64 %idxprom118
  %97 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %93, %97
  %98 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %98 to i64
  %arrayidx122 = getelementptr inbounds i32, i32* %vla6, i64 %idxprom121
  store i32 %add120, i32* %arrayidx122, align 4
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %100 to i64
  %arrayidx124 = getelementptr inbounds i32, i32* %vla8, i64 %idxprom123
  store i32 %99, i32* %arrayidx124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then112, %land.lhs.true100, %land.lhs.true94, %for.body89
  br label %for.inc126

for.inc126:                                       ; preds = %if.end125
  %101 = load i32, i32* %i, align 4
  %inc127 = add nsw i32 %101, 1
  store i32 %inc127, i32* %i, align 4
  br label %for.cond87

for.end128:                                       ; preds = %for.cond87
  br label %for.inc129

for.inc129:                                       ; preds = %for.end128
  %102 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %102, 1
  store i32 %inc130, i32* %j, align 4
  br label %for.cond82

for.end131:                                       ; preds = %for.cond82
  %103 = load i32, i32* %n.addr, align 4
  %call = call i32 @_Z13printSolutionPii(i32* %vla8, i32 %103)
  %104 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline uwtable
define dso_local i32 @_Z13printSolutionPii(i32* %p, i32 %n) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %k, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %p.addr, align 8
  %4 = load i32*, i32** %p.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %6, 1
  %call = call i32 @_Z13printSolutionPii(i32* %3, i32 %sub)
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %k, align 4
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call3, i32 %7)
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %p.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call5, i32 %10)
  %call9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* %n.addr, align 4
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call9, i32 %11)
  %call11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call10, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %12 = load i32, i32* %k, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %l = alloca [4 x i32], align 16
  %n = alloca i32, align 4
  %M = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %l to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.l to i8*), i64 16, i1 false)
  store i32 4, i32* %n, align 4
  store i32 6, i32* %M, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %l, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %M, align 4
  call void @_Z13solveWordWrapPiii(i32* %arraydecay, i32 %1, i32 %2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_word_wrap.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
