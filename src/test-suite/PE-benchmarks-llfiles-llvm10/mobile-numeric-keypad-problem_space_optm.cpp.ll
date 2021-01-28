; ModuleID = 'temp/mobile-numeric-keypad-problem_space_optm.cpp'
source_filename = "temp/mobile-numeric-keypad-problem_space_optm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.keypad = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"456", [3 x i8] c"789", [3 x i8] c"*0#"], align 1
@.str = private unnamed_addr constant [36 x i8] c"Count for numbers of length %d: %dn\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z8getCountPA3_ci([3 x i8]* %keypad, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %keypad.addr = alloca [3 x i8]*, align 8
  %n.addr = alloca i32, align 4
  %odd = alloca [10 x i32], align 16
  %even = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %useOdd = alloca i32, align 4
  %totalCount = alloca i32, align 4
  store [3 x i8]* %keypad, [3 x i8]** %keypad.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %cmp = icmp eq [3 x i8]* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 10, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %useOdd, align 4
  store i32 0, i32* %totalCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %3 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %3, 9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc155, %for.end
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp sle i32 %6, %7
  br i1 %cmp7, label %for.body8, label %for.end157

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %useOdd, align 4
  %sub = sub nsw i32 1, %8
  store i32 %sub, i32* %useOdd, align 4
  %9 = load i32, i32* %useOdd, align 4
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body8
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 0
  %10 = load i32, i32* %arrayidx11, align 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 8
  %11 = load i32, i32* %arrayidx12, align 16
  %add = add nsw i32 %10, %11
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 0
  store i32 %add, i32* %arrayidx13, align 16
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 1
  %12 = load i32, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 2
  %13 = load i32, i32* %arrayidx15, align 8
  %add16 = add nsw i32 %12, %13
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 4
  %14 = load i32, i32* %arrayidx17, align 16
  %add18 = add nsw i32 %add16, %14
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 1
  store i32 %add18, i32* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 2
  %15 = load i32, i32* %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 1
  %16 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %15, %16
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 3
  %17 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %add22, %17
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 5
  %18 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %add24, %18
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 2
  store i32 %add26, i32* %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 3
  %19 = load i32, i32* %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 2
  %20 = load i32, i32* %arrayidx29, align 8
  %add30 = add nsw i32 %19, %20
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 6
  %21 = load i32, i32* %arrayidx31, align 8
  %add32 = add nsw i32 %add30, %21
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 3
  store i32 %add32, i32* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 4
  %22 = load i32, i32* %arrayidx34, align 16
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 1
  %23 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %22, %23
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 5
  %24 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %add36, %24
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 7
  %25 = load i32, i32* %arrayidx39, align 4
  %add40 = add nsw i32 %add38, %25
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 4
  store i32 %add40, i32* %arrayidx41, align 16
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 5
  %26 = load i32, i32* %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 2
  %27 = load i32, i32* %arrayidx43, align 8
  %add44 = add nsw i32 %26, %27
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 4
  %28 = load i32, i32* %arrayidx45, align 16
  %add46 = add nsw i32 %add44, %28
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 8
  %29 = load i32, i32* %arrayidx47, align 16
  %add48 = add nsw i32 %add46, %29
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 6
  %30 = load i32, i32* %arrayidx49, align 8
  %add50 = add nsw i32 %add48, %30
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 5
  store i32 %add50, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 6
  %31 = load i32, i32* %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 3
  %32 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %31, %32
  %arrayidx55 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 5
  %33 = load i32, i32* %arrayidx55, align 4
  %add56 = add nsw i32 %add54, %33
  %arrayidx57 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 9
  %34 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %add56, %34
  %arrayidx59 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 6
  store i32 %add58, i32* %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 7
  %35 = load i32, i32* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 4
  %36 = load i32, i32* %arrayidx61, align 16
  %add62 = add nsw i32 %35, %36
  %arrayidx63 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 8
  %37 = load i32, i32* %arrayidx63, align 16
  %add64 = add nsw i32 %add62, %37
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 7
  store i32 %add64, i32* %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 8
  %38 = load i32, i32* %arrayidx66, align 16
  %arrayidx67 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 0
  %39 = load i32, i32* %arrayidx67, align 16
  %add68 = add nsw i32 %38, %39
  %arrayidx69 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 5
  %40 = load i32, i32* %arrayidx69, align 4
  %add70 = add nsw i32 %add68, %40
  %arrayidx71 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 7
  %41 = load i32, i32* %arrayidx71, align 4
  %add72 = add nsw i32 %add70, %41
  %arrayidx73 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 9
  %42 = load i32, i32* %arrayidx73, align 4
  %add74 = add nsw i32 %add72, %42
  %arrayidx75 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 8
  store i32 %add74, i32* %arrayidx75, align 16
  %arrayidx76 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 9
  %43 = load i32, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 6
  %44 = load i32, i32* %arrayidx77, align 8
  %add78 = add nsw i32 %43, %44
  %arrayidx79 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 8
  %45 = load i32, i32* %arrayidx79, align 16
  %add80 = add nsw i32 %add78, %45
  %arrayidx81 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 9
  store i32 %add80, i32* %arrayidx81, align 4
  br label %if.end154

if.else:                                          ; preds = %for.body8
  %arrayidx82 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 0
  %46 = load i32, i32* %arrayidx82, align 16
  %arrayidx83 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 8
  %47 = load i32, i32* %arrayidx83, align 16
  %add84 = add nsw i32 %46, %47
  %arrayidx85 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 0
  store i32 %add84, i32* %arrayidx85, align 16
  %arrayidx86 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 1
  %48 = load i32, i32* %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 2
  %49 = load i32, i32* %arrayidx87, align 8
  %add88 = add nsw i32 %48, %49
  %arrayidx89 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 4
  %50 = load i32, i32* %arrayidx89, align 16
  %add90 = add nsw i32 %add88, %50
  %arrayidx91 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 1
  store i32 %add90, i32* %arrayidx91, align 4
  %arrayidx92 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 2
  %51 = load i32, i32* %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 1
  %52 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %51, %52
  %arrayidx95 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 3
  %53 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %add94, %53
  %arrayidx97 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 5
  %54 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %add96, %54
  %arrayidx99 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 2
  store i32 %add98, i32* %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 3
  %55 = load i32, i32* %arrayidx100, align 4
  %arrayidx101 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 2
  %56 = load i32, i32* %arrayidx101, align 8
  %add102 = add nsw i32 %55, %56
  %arrayidx103 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 6
  %57 = load i32, i32* %arrayidx103, align 8
  %add104 = add nsw i32 %add102, %57
  %arrayidx105 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 3
  store i32 %add104, i32* %arrayidx105, align 4
  %arrayidx106 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 4
  %58 = load i32, i32* %arrayidx106, align 16
  %arrayidx107 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 1
  %59 = load i32, i32* %arrayidx107, align 4
  %add108 = add nsw i32 %58, %59
  %arrayidx109 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 5
  %60 = load i32, i32* %arrayidx109, align 4
  %add110 = add nsw i32 %add108, %60
  %arrayidx111 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 7
  %61 = load i32, i32* %arrayidx111, align 4
  %add112 = add nsw i32 %add110, %61
  %arrayidx113 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 4
  store i32 %add112, i32* %arrayidx113, align 16
  %arrayidx114 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 5
  %62 = load i32, i32* %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 2
  %63 = load i32, i32* %arrayidx115, align 8
  %add116 = add nsw i32 %62, %63
  %arrayidx117 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 4
  %64 = load i32, i32* %arrayidx117, align 16
  %add118 = add nsw i32 %add116, %64
  %arrayidx119 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 8
  %65 = load i32, i32* %arrayidx119, align 16
  %add120 = add nsw i32 %add118, %65
  %arrayidx121 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 6
  %66 = load i32, i32* %arrayidx121, align 8
  %add122 = add nsw i32 %add120, %66
  %arrayidx123 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 5
  store i32 %add122, i32* %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 6
  %67 = load i32, i32* %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 3
  %68 = load i32, i32* %arrayidx125, align 4
  %add126 = add nsw i32 %67, %68
  %arrayidx127 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 5
  %69 = load i32, i32* %arrayidx127, align 4
  %add128 = add nsw i32 %add126, %69
  %arrayidx129 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 9
  %70 = load i32, i32* %arrayidx129, align 4
  %add130 = add nsw i32 %add128, %70
  %arrayidx131 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 6
  store i32 %add130, i32* %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 7
  %71 = load i32, i32* %arrayidx132, align 4
  %arrayidx133 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 4
  %72 = load i32, i32* %arrayidx133, align 16
  %add134 = add nsw i32 %71, %72
  %arrayidx135 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 8
  %73 = load i32, i32* %arrayidx135, align 16
  %add136 = add nsw i32 %add134, %73
  %arrayidx137 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 7
  store i32 %add136, i32* %arrayidx137, align 4
  %arrayidx138 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 8
  %74 = load i32, i32* %arrayidx138, align 16
  %arrayidx139 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 0
  %75 = load i32, i32* %arrayidx139, align 16
  %add140 = add nsw i32 %74, %75
  %arrayidx141 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 5
  %76 = load i32, i32* %arrayidx141, align 4
  %add142 = add nsw i32 %add140, %76
  %arrayidx143 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 7
  %77 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %add142, %77
  %arrayidx145 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 9
  %78 = load i32, i32* %arrayidx145, align 4
  %add146 = add nsw i32 %add144, %78
  %arrayidx147 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 8
  store i32 %add146, i32* %arrayidx147, align 16
  %arrayidx148 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 9
  %79 = load i32, i32* %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 6
  %80 = load i32, i32* %arrayidx149, align 8
  %add150 = add nsw i32 %79, %80
  %arrayidx151 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 8
  %81 = load i32, i32* %arrayidx151, align 16
  %add152 = add nsw i32 %add150, %81
  %arrayidx153 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 9
  store i32 %add152, i32* %arrayidx153, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.else, %if.then10
  br label %for.inc155

for.inc155:                                       ; preds = %if.end154
  %82 = load i32, i32* %j, align 4
  %inc156 = add nsw i32 %82, 1
  store i32 %inc156, i32* %j, align 4
  br label %for.cond6

for.end157:                                       ; preds = %for.cond6
  store i32 0, i32* %totalCount, align 4
  %83 = load i32, i32* %useOdd, align 4
  %cmp158 = icmp eq i32 %83, 1
  br i1 %cmp158, label %if.then159, label %if.else169

if.then159:                                       ; preds = %for.end157
  store i32 0, i32* %i, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc166, %if.then159
  %84 = load i32, i32* %i, align 4
  %cmp161 = icmp sle i32 %84, 9
  br i1 %cmp161, label %for.body162, label %for.end168

for.body162:                                      ; preds = %for.cond160
  %85 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %85 to i64
  %arrayidx164 = getelementptr inbounds [10 x i32], [10 x i32]* %even, i64 0, i64 %idxprom163
  %86 = load i32, i32* %arrayidx164, align 4
  %87 = load i32, i32* %totalCount, align 4
  %add165 = add nsw i32 %87, %86
  store i32 %add165, i32* %totalCount, align 4
  br label %for.inc166

for.inc166:                                       ; preds = %for.body162
  %88 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %88, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond160

for.end168:                                       ; preds = %for.cond160
  br label %if.end179

if.else169:                                       ; preds = %for.end157
  store i32 0, i32* %i, align 4
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc176, %if.else169
  %89 = load i32, i32* %i, align 4
  %cmp171 = icmp sle i32 %89, 9
  br i1 %cmp171, label %for.body172, label %for.end178

for.body172:                                      ; preds = %for.cond170
  %90 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %90 to i64
  %arrayidx174 = getelementptr inbounds [10 x i32], [10 x i32]* %odd, i64 0, i64 %idxprom173
  %91 = load i32, i32* %arrayidx174, align 4
  %92 = load i32, i32* %totalCount, align 4
  %add175 = add nsw i32 %92, %91
  store i32 %add175, i32* %totalCount, align 4
  br label %for.inc176

for.inc176:                                       ; preds = %for.body172
  %93 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %93, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond170

for.end178:                                       ; preds = %for.cond170
  br label %if.end179

if.end179:                                        ; preds = %for.end178, %for.end168
  %94 = load i32, i32* %totalCount, align 4
  store i32 %94, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end179, %if.then3, %if.then
  %95 = load i32, i32* %retval, align 4
  ret i32 %95
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %keypad = alloca [4 x [3 x i8]], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x [3 x i8]]* %keypad to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x [3 x i8]], [4 x [3 x i8]]* @__const.main.keypad, i32 0, i32 0, i32 0), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %keypad, i64 0, i64 0
  %call = call i32 @_Z8getCountPA3_ci([3 x i8]* %arraydecay, i32 1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 1, i32 %call)
  %arraydecay2 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %keypad, i64 0, i64 0
  %call3 = call i32 @_Z8getCountPA3_ci([3 x i8]* %arraydecay2, i32 2)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 2, i32 %call3)
  %arraydecay5 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %keypad, i64 0, i64 0
  %call6 = call i32 @_Z8getCountPA3_ci([3 x i8]* %arraydecay5, i32 3)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 3, i32 %call6)
  %arraydecay8 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %keypad, i64 0, i64 0
  %call9 = call i32 @_Z8getCountPA3_ci([3 x i8]* %arraydecay8, i32 4)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 4, i32 %call9)
  %arraydecay11 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %keypad, i64 0, i64 0
  %call12 = call i32 @_Z8getCountPA3_ci([3 x i8]* %arraydecay11, i32 5)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 5, i32 %call12)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
