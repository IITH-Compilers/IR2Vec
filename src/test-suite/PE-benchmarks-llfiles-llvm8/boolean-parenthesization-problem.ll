; ModuleID = 'PE-benchmarks/boolean-parenthesization-problem.cpp'
source_filename = "PE-benchmarks/boolean-parenthesization-problem.cpp"
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
@__const.main.symbols = private unnamed_addr constant [5 x i8] c"TTFT\00", align 1
@__const.main.operators = private unnamed_addr constant [4 x i8] c"|&^\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_boolean_parenthesization_problem.cpp, i8* null }]

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
define dso_local i32 @_Z12countParenthPcS_i(i8* %symb, i8* %oper, i32 %n) #4 {
entry:
  %symb.addr = alloca i8*, align 8
  %oper.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %i = alloca i32, align 4
  %gap = alloca i32, align 4
  %i19 = alloca i32, align 4
  %j = alloca i32, align 4
  %g = alloca i32, align 4
  %k = alloca i32, align 4
  %tik = alloca i32, align 4
  %tkj = alloca i32, align 4
  store i8* %symb, i8** %symb.addr, align 8
  store i8* %oper, i8** %oper.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %n.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i64 %3, i64* %__vla_expr1, align 8
  %6 = load i32, i32* %n.addr, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* %n.addr, align 4
  %9 = zext i32 %8 to i64
  %10 = mul nuw i64 %7, %9
  %vla1 = alloca i32, i64 %10, align 16
  store i64 %7, i64* %__vla_expr2, align 8
  store i64 %9, i64* %__vla_expr3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %symb.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %cmp2 = icmp eq i32 %conv, 70
  %16 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 1, i32 0
  %17 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %17 to i64
  %18 = mul nsw i64 %idxprom3, %3
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 %18
  %19 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %19 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx4, i64 %idxprom5
  store i32 %cond, i32* %arrayidx6, align 4
  %20 = load i8*, i8** %symb.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 %idxprom7
  %22 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %22 to i32
  %cmp10 = icmp eq i32 %conv9, 84
  %23 = zext i1 %cmp10 to i64
  %cond11 = select i1 %cmp10, i32 1, i32 0
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = mul nsw i64 %idxprom12, %9
  %arrayidx13 = getelementptr inbounds i32, i32* %vla1, i64 %25
  %26 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %arrayidx13, i64 %idxprom14
  store i32 %cond11, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %gap, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc191, %for.end
  %28 = load i32, i32* %gap, align 4
  %29 = load i32, i32* %n.addr, align 4
  %cmp17 = icmp slt i32 %28, %29
  br i1 %cmp17, label %for.body18, label %for.end193

for.body18:                                       ; preds = %for.cond16
  store i32 0, i32* %i19, align 4
  %30 = load i32, i32* %gap, align 4
  store i32 %30, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc187, %for.body18
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %31, %32
  br i1 %cmp21, label %for.body22, label %for.end190

for.body22:                                       ; preds = %for.cond20
  %33 = load i32, i32* %i19, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = mul nsw i64 %idxprom23, %3
  %arrayidx24 = getelementptr inbounds i32, i32* %vla, i64 %34
  %35 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %arrayidx24, i64 %idxprom25
  store i32 0, i32* %arrayidx26, align 4
  %36 = load i32, i32* %i19, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = mul nsw i64 %idxprom27, %9
  %arrayidx28 = getelementptr inbounds i32, i32* %vla1, i64 %37
  %38 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %38 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %arrayidx28, i64 %idxprom29
  store i32 0, i32* %arrayidx30, align 4
  store i32 0, i32* %g, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc184, %for.body22
  %39 = load i32, i32* %g, align 4
  %40 = load i32, i32* %gap, align 4
  %cmp32 = icmp slt i32 %39, %40
  br i1 %cmp32, label %for.body33, label %for.end186

for.body33:                                       ; preds = %for.cond31
  %41 = load i32, i32* %i19, align 4
  %42 = load i32, i32* %g, align 4
  %add = add nsw i32 %41, %42
  store i32 %add, i32* %k, align 4
  %43 = load i32, i32* %i19, align 4
  %idxprom34 = sext i32 %43 to i64
  %44 = mul nsw i64 %idxprom34, %9
  %arrayidx35 = getelementptr inbounds i32, i32* %vla1, i64 %44
  %45 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %45 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %arrayidx35, i64 %idxprom36
  %46 = load i32, i32* %arrayidx37, align 4
  %47 = load i32, i32* %i19, align 4
  %idxprom38 = sext i32 %47 to i64
  %48 = mul nsw i64 %idxprom38, %3
  %arrayidx39 = getelementptr inbounds i32, i32* %vla, i64 %48
  %49 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %49 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %arrayidx39, i64 %idxprom40
  %50 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %46, %50
  store i32 %add42, i32* %tik, align 4
  %51 = load i32, i32* %k, align 4
  %add43 = add nsw i32 %51, 1
  %idxprom44 = sext i32 %add43 to i64
  %52 = mul nsw i64 %idxprom44, %9
  %arrayidx45 = getelementptr inbounds i32, i32* %vla1, i64 %52
  %53 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %53 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %arrayidx45, i64 %idxprom46
  %54 = load i32, i32* %arrayidx47, align 4
  %55 = load i32, i32* %k, align 4
  %add48 = add nsw i32 %55, 1
  %idxprom49 = sext i32 %add48 to i64
  %56 = mul nsw i64 %idxprom49, %3
  %arrayidx50 = getelementptr inbounds i32, i32* %vla, i64 %56
  %57 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %57 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %arrayidx50, i64 %idxprom51
  %58 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %54, %58
  store i32 %add53, i32* %tkj, align 4
  %59 = load i8*, i8** %oper.addr, align 8
  %60 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %60 to i64
  %arrayidx55 = getelementptr inbounds i8, i8* %59, i64 %idxprom54
  %61 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %61 to i32
  %cmp57 = icmp eq i32 %conv56, 38
  br i1 %cmp57, label %if.then, label %if.end

if.then:                                          ; preds = %for.body33
  %62 = load i32, i32* %i19, align 4
  %idxprom58 = sext i32 %62 to i64
  %63 = mul nsw i64 %idxprom58, %9
  %arrayidx59 = getelementptr inbounds i32, i32* %vla1, i64 %63
  %64 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %arrayidx59, i64 %idxprom60
  %65 = load i32, i32* %arrayidx61, align 4
  %66 = load i32, i32* %k, align 4
  %add62 = add nsw i32 %66, 1
  %idxprom63 = sext i32 %add62 to i64
  %67 = mul nsw i64 %idxprom63, %9
  %arrayidx64 = getelementptr inbounds i32, i32* %vla1, i64 %67
  %68 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds i32, i32* %arrayidx64, i64 %idxprom65
  %69 = load i32, i32* %arrayidx66, align 4
  %mul = mul nsw i32 %65, %69
  %70 = load i32, i32* %i19, align 4
  %idxprom67 = sext i32 %70 to i64
  %71 = mul nsw i64 %idxprom67, %9
  %arrayidx68 = getelementptr inbounds i32, i32* %vla1, i64 %71
  %72 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %72 to i64
  %arrayidx70 = getelementptr inbounds i32, i32* %arrayidx68, i64 %idxprom69
  %73 = load i32, i32* %arrayidx70, align 4
  %add71 = add nsw i32 %73, %mul
  store i32 %add71, i32* %arrayidx70, align 4
  %74 = load i32, i32* %tik, align 4
  %75 = load i32, i32* %tkj, align 4
  %mul72 = mul nsw i32 %74, %75
  %76 = load i32, i32* %i19, align 4
  %idxprom73 = sext i32 %76 to i64
  %77 = mul nsw i64 %idxprom73, %9
  %arrayidx74 = getelementptr inbounds i32, i32* %vla1, i64 %77
  %78 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %78 to i64
  %arrayidx76 = getelementptr inbounds i32, i32* %arrayidx74, i64 %idxprom75
  %79 = load i32, i32* %arrayidx76, align 4
  %80 = load i32, i32* %k, align 4
  %add77 = add nsw i32 %80, 1
  %idxprom78 = sext i32 %add77 to i64
  %81 = mul nsw i64 %idxprom78, %9
  %arrayidx79 = getelementptr inbounds i32, i32* %vla1, i64 %81
  %82 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %82 to i64
  %arrayidx81 = getelementptr inbounds i32, i32* %arrayidx79, i64 %idxprom80
  %83 = load i32, i32* %arrayidx81, align 4
  %mul82 = mul nsw i32 %79, %83
  %sub = sub nsw i32 %mul72, %mul82
  %84 = load i32, i32* %i19, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = mul nsw i64 %idxprom83, %3
  %arrayidx84 = getelementptr inbounds i32, i32* %vla, i64 %85
  %86 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %86 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %arrayidx84, i64 %idxprom85
  %87 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %87, %sub
  store i32 %add87, i32* %arrayidx86, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body33
  %88 = load i8*, i8** %oper.addr, align 8
  %89 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %89 to i64
  %arrayidx89 = getelementptr inbounds i8, i8* %88, i64 %idxprom88
  %90 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %90 to i32
  %cmp91 = icmp eq i32 %conv90, 124
  br i1 %cmp91, label %if.then92, label %if.end125

if.then92:                                        ; preds = %if.end
  %91 = load i32, i32* %i19, align 4
  %idxprom93 = sext i32 %91 to i64
  %92 = mul nsw i64 %idxprom93, %3
  %arrayidx94 = getelementptr inbounds i32, i32* %vla, i64 %92
  %93 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %93 to i64
  %arrayidx96 = getelementptr inbounds i32, i32* %arrayidx94, i64 %idxprom95
  %94 = load i32, i32* %arrayidx96, align 4
  %95 = load i32, i32* %k, align 4
  %add97 = add nsw i32 %95, 1
  %idxprom98 = sext i32 %add97 to i64
  %96 = mul nsw i64 %idxprom98, %3
  %arrayidx99 = getelementptr inbounds i32, i32* %vla, i64 %96
  %97 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %97 to i64
  %arrayidx101 = getelementptr inbounds i32, i32* %arrayidx99, i64 %idxprom100
  %98 = load i32, i32* %arrayidx101, align 4
  %mul102 = mul nsw i32 %94, %98
  %99 = load i32, i32* %i19, align 4
  %idxprom103 = sext i32 %99 to i64
  %100 = mul nsw i64 %idxprom103, %3
  %arrayidx104 = getelementptr inbounds i32, i32* %vla, i64 %100
  %101 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %101 to i64
  %arrayidx106 = getelementptr inbounds i32, i32* %arrayidx104, i64 %idxprom105
  %102 = load i32, i32* %arrayidx106, align 4
  %add107 = add nsw i32 %102, %mul102
  store i32 %add107, i32* %arrayidx106, align 4
  %103 = load i32, i32* %tik, align 4
  %104 = load i32, i32* %tkj, align 4
  %mul108 = mul nsw i32 %103, %104
  %105 = load i32, i32* %i19, align 4
  %idxprom109 = sext i32 %105 to i64
  %106 = mul nsw i64 %idxprom109, %3
  %arrayidx110 = getelementptr inbounds i32, i32* %vla, i64 %106
  %107 = load i32, i32* %k, align 4
  %idxprom111 = sext i32 %107 to i64
  %arrayidx112 = getelementptr inbounds i32, i32* %arrayidx110, i64 %idxprom111
  %108 = load i32, i32* %arrayidx112, align 4
  %109 = load i32, i32* %k, align 4
  %add113 = add nsw i32 %109, 1
  %idxprom114 = sext i32 %add113 to i64
  %110 = mul nsw i64 %idxprom114, %3
  %arrayidx115 = getelementptr inbounds i32, i32* %vla, i64 %110
  %111 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %111 to i64
  %arrayidx117 = getelementptr inbounds i32, i32* %arrayidx115, i64 %idxprom116
  %112 = load i32, i32* %arrayidx117, align 4
  %mul118 = mul nsw i32 %108, %112
  %sub119 = sub nsw i32 %mul108, %mul118
  %113 = load i32, i32* %i19, align 4
  %idxprom120 = sext i32 %113 to i64
  %114 = mul nsw i64 %idxprom120, %9
  %arrayidx121 = getelementptr inbounds i32, i32* %vla1, i64 %114
  %115 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %115 to i64
  %arrayidx123 = getelementptr inbounds i32, i32* %arrayidx121, i64 %idxprom122
  %116 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %116, %sub119
  store i32 %add124, i32* %arrayidx123, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then92, %if.end
  %117 = load i8*, i8** %oper.addr, align 8
  %118 = load i32, i32* %k, align 4
  %idxprom126 = sext i32 %118 to i64
  %arrayidx127 = getelementptr inbounds i8, i8* %117, i64 %idxprom126
  %119 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %119 to i32
  %cmp129 = icmp eq i32 %conv128, 94
  br i1 %cmp129, label %if.then130, label %if.end183

if.then130:                                       ; preds = %if.end125
  %120 = load i32, i32* %i19, align 4
  %idxprom131 = sext i32 %120 to i64
  %121 = mul nsw i64 %idxprom131, %3
  %arrayidx132 = getelementptr inbounds i32, i32* %vla, i64 %121
  %122 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %122 to i64
  %arrayidx134 = getelementptr inbounds i32, i32* %arrayidx132, i64 %idxprom133
  %123 = load i32, i32* %arrayidx134, align 4
  %124 = load i32, i32* %k, align 4
  %add135 = add nsw i32 %124, 1
  %idxprom136 = sext i32 %add135 to i64
  %125 = mul nsw i64 %idxprom136, %9
  %arrayidx137 = getelementptr inbounds i32, i32* %vla1, i64 %125
  %126 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %126 to i64
  %arrayidx139 = getelementptr inbounds i32, i32* %arrayidx137, i64 %idxprom138
  %127 = load i32, i32* %arrayidx139, align 4
  %mul140 = mul nsw i32 %123, %127
  %128 = load i32, i32* %i19, align 4
  %idxprom141 = sext i32 %128 to i64
  %129 = mul nsw i64 %idxprom141, %9
  %arrayidx142 = getelementptr inbounds i32, i32* %vla1, i64 %129
  %130 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %130 to i64
  %arrayidx144 = getelementptr inbounds i32, i32* %arrayidx142, i64 %idxprom143
  %131 = load i32, i32* %arrayidx144, align 4
  %132 = load i32, i32* %k, align 4
  %add145 = add nsw i32 %132, 1
  %idxprom146 = sext i32 %add145 to i64
  %133 = mul nsw i64 %idxprom146, %3
  %arrayidx147 = getelementptr inbounds i32, i32* %vla, i64 %133
  %134 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %134 to i64
  %arrayidx149 = getelementptr inbounds i32, i32* %arrayidx147, i64 %idxprom148
  %135 = load i32, i32* %arrayidx149, align 4
  %mul150 = mul nsw i32 %131, %135
  %add151 = add nsw i32 %mul140, %mul150
  %136 = load i32, i32* %i19, align 4
  %idxprom152 = sext i32 %136 to i64
  %137 = mul nsw i64 %idxprom152, %9
  %arrayidx153 = getelementptr inbounds i32, i32* %vla1, i64 %137
  %138 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %138 to i64
  %arrayidx155 = getelementptr inbounds i32, i32* %arrayidx153, i64 %idxprom154
  %139 = load i32, i32* %arrayidx155, align 4
  %add156 = add nsw i32 %139, %add151
  store i32 %add156, i32* %arrayidx155, align 4
  %140 = load i32, i32* %i19, align 4
  %idxprom157 = sext i32 %140 to i64
  %141 = mul nsw i64 %idxprom157, %9
  %arrayidx158 = getelementptr inbounds i32, i32* %vla1, i64 %141
  %142 = load i32, i32* %k, align 4
  %idxprom159 = sext i32 %142 to i64
  %arrayidx160 = getelementptr inbounds i32, i32* %arrayidx158, i64 %idxprom159
  %143 = load i32, i32* %arrayidx160, align 4
  %144 = load i32, i32* %k, align 4
  %add161 = add nsw i32 %144, 1
  %idxprom162 = sext i32 %add161 to i64
  %145 = mul nsw i64 %idxprom162, %9
  %arrayidx163 = getelementptr inbounds i32, i32* %vla1, i64 %145
  %146 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %146 to i64
  %arrayidx165 = getelementptr inbounds i32, i32* %arrayidx163, i64 %idxprom164
  %147 = load i32, i32* %arrayidx165, align 4
  %mul166 = mul nsw i32 %143, %147
  %148 = load i32, i32* %i19, align 4
  %idxprom167 = sext i32 %148 to i64
  %149 = mul nsw i64 %idxprom167, %3
  %arrayidx168 = getelementptr inbounds i32, i32* %vla, i64 %149
  %150 = load i32, i32* %k, align 4
  %idxprom169 = sext i32 %150 to i64
  %arrayidx170 = getelementptr inbounds i32, i32* %arrayidx168, i64 %idxprom169
  %151 = load i32, i32* %arrayidx170, align 4
  %152 = load i32, i32* %k, align 4
  %add171 = add nsw i32 %152, 1
  %idxprom172 = sext i32 %add171 to i64
  %153 = mul nsw i64 %idxprom172, %3
  %arrayidx173 = getelementptr inbounds i32, i32* %vla, i64 %153
  %154 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %154 to i64
  %arrayidx175 = getelementptr inbounds i32, i32* %arrayidx173, i64 %idxprom174
  %155 = load i32, i32* %arrayidx175, align 4
  %mul176 = mul nsw i32 %151, %155
  %add177 = add nsw i32 %mul166, %mul176
  %156 = load i32, i32* %i19, align 4
  %idxprom178 = sext i32 %156 to i64
  %157 = mul nsw i64 %idxprom178, %3
  %arrayidx179 = getelementptr inbounds i32, i32* %vla, i64 %157
  %158 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %158 to i64
  %arrayidx181 = getelementptr inbounds i32, i32* %arrayidx179, i64 %idxprom180
  %159 = load i32, i32* %arrayidx181, align 4
  %add182 = add nsw i32 %159, %add177
  store i32 %add182, i32* %arrayidx181, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then130, %if.end125
  br label %for.inc184

for.inc184:                                       ; preds = %if.end183
  %160 = load i32, i32* %g, align 4
  %inc185 = add nsw i32 %160, 1
  store i32 %inc185, i32* %g, align 4
  br label %for.cond31

for.end186:                                       ; preds = %for.cond31
  br label %for.inc187

for.inc187:                                       ; preds = %for.end186
  %161 = load i32, i32* %i19, align 4
  %inc188 = add nsw i32 %161, 1
  store i32 %inc188, i32* %i19, align 4
  %162 = load i32, i32* %j, align 4
  %inc189 = add nsw i32 %162, 1
  store i32 %inc189, i32* %j, align 4
  br label %for.cond20

for.end190:                                       ; preds = %for.cond20
  br label %for.inc191

for.inc191:                                       ; preds = %for.end190
  %163 = load i32, i32* %gap, align 4
  %inc192 = add nsw i32 %163, 1
  store i32 %inc192, i32* %gap, align 4
  br label %for.cond16

for.end193:                                       ; preds = %for.cond16
  %164 = mul nsw i64 0, %9
  %arrayidx194 = getelementptr inbounds i32, i32* %vla1, i64 %164
  %165 = load i32, i32* %n.addr, align 4
  %sub195 = sub nsw i32 %165, 1
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds i32, i32* %arrayidx194, i64 %idxprom196
  %166 = load i32, i32* %arrayidx197, align 4
  %167 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %167)
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %symbols = alloca [5 x i8], align 1
  %operators = alloca [4 x i8], align 1
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i8]* %symbols to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.symbols, i32 0, i32 0), i64 5, i1 false)
  %1 = bitcast [4 x i8]* %operators to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.operators, i32 0, i32 0), i64 4, i1 false)
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %symbols, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %symbols, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %operators, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %call3 = call i32 @_Z12countParenthPcS_i(i8* %arraydecay1, i8* %arraydecay2, i32 %2)
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %call3)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #6

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #7

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_boolean_parenthesization_problem.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
