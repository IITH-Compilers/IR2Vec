; ModuleID = 'temp/sudoku.cpp'
source_filename = "temp/sudoku.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.grid = private unnamed_addr constant [9 x [9 x i32]] [[9 x i32] [i32 3, i32 0, i32 6, i32 5, i32 0, i32 8, i32 4, i32 0, i32 0], [9 x i32] [i32 5, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 8, i32 7, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1], [9 x i32] [i32 0, i32 0, i32 3, i32 0, i32 1, i32 0, i32 0, i32 8, i32 0], [9 x i32] [i32 9, i32 0, i32 0, i32 8, i32 6, i32 3, i32 0, i32 0, i32 5], [9 x i32] [i32 0, i32 5, i32 0, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0], [9 x i32] [i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 5, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 4], [9 x i32] [i32 0, i32 0, i32 5, i32 2, i32 0, i32 6, i32 3, i32 0, i32 0]], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"No solution exists\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sudoku.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z11SolveSudokuPA9_i([9 x i32]* %grid) #0 {
entry:
  %retval = alloca i1, align 1
  %grid.addr = alloca [9 x i32]*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %num = alloca i32, align 4
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  %0 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %call = call zeroext i1 @_Z22FindUnassignedLocationPA9_iRiS1_([9 x i32]* %0, i32* dereferenceable(4) %row, i32* dereferenceable(4) %col)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %num, align 4
  %cmp = icmp sle i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %3 = load i32, i32* %row, align 4
  %4 = load i32, i32* %col, align 4
  %5 = load i32, i32* %num, align 4
  %call1 = call zeroext i1 @_Z6isSafePA9_iiii([9 x i32]* %2, i32 %3, i32 %4, i32 %5)
  br i1 %call1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %for.body
  %6 = load i32, i32* %num, align 4
  %7 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %8 = load i32, i32* %row, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 %idxprom
  %9 = load i32, i32* %col, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom3
  store i32 %6, i32* %arrayidx4, align 4
  %10 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %call5 = call zeroext i1 @_Z11SolveSudokuPA9_i([9 x i32]* %10)
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  store i1 true, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.then2
  %11 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %12 = load i32, i32* %row, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 %idxprom8
  %13 = load i32, i32* %col, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %14 = load i32, i32* %num, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then
  %15 = load i1, i1* %retval, align 1
  ret i1 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z22FindUnassignedLocationPA9_iRiS1_([9 x i32]* %grid, i32* dereferenceable(4) %row, i32* dereferenceable(4) %col) #4 {
entry:
  %retval = alloca i1, align 1
  %grid.addr = alloca [9 x i32]*, align 8
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  %0 = load i32*, i32** %row.addr, align 8
  store i32 0, i32* %0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32*, i32** %row.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %col.addr, align 8
  store i32 0, i32* %3, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32*, i32** %col.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp2 = icmp slt i32 %5, 9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %7 = load i32*, i32** %row.addr, align 8
  %8 = load i32, i32* %7, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 %idxprom
  %9 = load i32*, i32** %col.addr, align 8
  %10 = load i32, i32* %9, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32*, i32** %col.addr, align 8
  %13 = load i32, i32* %12, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %12, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32*, i32** %row.addr, align 8
  %15 = load i32, i32* %14, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, i32* %14, align 4
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z6isSafePA9_iiii([9 x i32]* %grid, i32 %row, i32 %col, i32 %num) #4 {
entry:
  %grid.addr = alloca [9 x i32]*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %1 = load i32, i32* %row.addr, align 4
  %2 = load i32, i32* %num.addr, align 4
  %call = call zeroext i1 @_Z9UsedInRowPA9_iii([9 x i32]* %0, i32 %1, i32 %2)
  br i1 %call, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %4 = load i32, i32* %col.addr, align 4
  %5 = load i32, i32* %num.addr, align 4
  %call1 = call zeroext i1 @_Z9UsedInColPA9_iii([9 x i32]* %3, i32 %4, i32 %5)
  br i1 %call1, label %land.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %7 = load i32, i32* %row.addr, align 4
  %8 = load i32, i32* %row.addr, align 4
  %rem = srem i32 %8, 3
  %sub = sub nsw i32 %7, %rem
  %9 = load i32, i32* %col.addr, align 4
  %10 = load i32, i32* %col.addr, align 4
  %rem3 = srem i32 %10, 3
  %sub4 = sub nsw i32 %9, %rem3
  %11 = load i32, i32* %num.addr, align 4
  %call5 = call zeroext i1 @_Z9UsedInBoxPA9_iiii([9 x i32]* %6, i32 %sub, i32 %sub4, i32 %11)
  br i1 %call5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true2
  %12 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %13 = load i32, i32* %row.addr, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %12, i64 %idxprom
  %14 = load i32, i32* %col.addr, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %cmp = icmp eq i32 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z9UsedInRowPA9_iii([9 x i32]* %grid, i32 %row, i32 %num) #4 {
entry:
  %retval = alloca i1, align 1
  %grid.addr = alloca [9 x i32]*, align 8
  %row.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %col = alloca i32, align 4
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %col, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %2 = load i32, i32* %row.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %1, i64 %idxprom
  %3 = load i32, i32* %col, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %num.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %col, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z9UsedInColPA9_iii([9 x i32]* %grid, i32 %col, i32 %num) #4 {
entry:
  %retval = alloca i1, align 1
  %grid.addr = alloca [9 x i32]*, align 8
  %col.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %row = alloca i32, align 4
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %2 = load i32, i32* %row, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %1, i64 %idxprom
  %3 = load i32, i32* %col.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %num.addr, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %row, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @_Z9UsedInBoxPA9_iiii([9 x i32]* %grid, i32 %boxStartRow, i32 %boxStartCol, i32 %num) #4 {
entry:
  %retval = alloca i1, align 1
  %grid.addr = alloca [9 x i32]*, align 8
  %boxStartRow.addr = alloca i32, align 4
  %boxStartCol.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  store i32 %boxStartRow, i32* %boxStartRow.addr, align 4
  store i32 %boxStartCol, i32* %boxStartCol.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %col, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %3 = load i32, i32* %row, align 4
  %4 = load i32, i32* %boxStartRow.addr, align 4
  %add = add nsw i32 %3, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 %idxprom
  %5 = load i32, i32* %col, align 4
  %6 = load i32, i32* %boxStartCol.addr, align 4
  %add4 = add nsw i32 %5, %6
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %num.addr, align 4
  %cmp7 = icmp eq i32 %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %col, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %10 = load i32, i32* %row, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %row, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end10, %if.then
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

; Function Attrs: noinline uwtable
define dso_local void @_Z9printGridPA9_i([9 x i32]* %grid) #0 {
entry:
  %grid.addr = alloca [9 x i32]*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store [9 x i32]* %grid, [9 x i32]** %grid.addr, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %col, align 4
  %cmp2 = icmp slt i32 %1, 9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [9 x i32]*, [9 x i32]** %grid.addr, align 8
  %3 = load i32, i32* %row, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %col, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %5)
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %col, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, i32* %row, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, i32* %row, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %grid = alloca [9 x [9 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x [9 x i32]]* %grid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([9 x [9 x i32]]* @__const.main.grid to i8*), i64 324, i1 false)
  %arraydecay = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %grid, i64 0, i64 0
  %call = call zeroext i1 @_Z11SolveSudokuPA9_i([9 x i32]* %arraydecay)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %grid, i64 0, i64 0
  call void @_Z9printGridPA9_i([9 x i32]* %arraydecay1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_sudoku.cpp() #0 section ".text.startup" {
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
