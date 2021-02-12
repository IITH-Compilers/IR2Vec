; ModuleID = 'temp/mobile-numeric-keypad-problem.cpp'
source_filename = "temp/mobile-numeric-keypad-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const._Z8getCountPA3_ci.row = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 1], align 16
@__const._Z8getCountPA3_ci.col = private unnamed_addr constant [5 x i32] [i32 0, i32 -1, i32 0, i32 1, i32 0], align 16
@__const.main.keypad = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"456", [3 x i8] c"789", [3 x i8] c"*0#"], align 1
@.str = private unnamed_addr constant [36 x i8] c"Count for numbers of length %d: %dn\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z8getCountPA3_ci([3 x i8]* %keypad, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %keypad.addr = alloca [3 x i8]*, align 8
  %n.addr = alloca i32, align 4
  %row = alloca [5 x i32], align 16
  %col = alloca [5 x i32], align 16
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %move = alloca i32, align 4
  %ro = alloca i32, align 4
  %co = alloca i32, align 4
  %num = alloca i32, align 4
  %nextNum = alloca i32, align 4
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
  %3 = bitcast [5 x i32]* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([5 x i32]* @__const._Z8getCountPA3_ci.row to i8*), i64 20, i1 false)
  %4 = bitcast [5 x i32]* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([5 x i32]* @__const._Z8getCountPA3_ci.col to i8*), i64 20, i1 false)
  %5 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = zext i32 %add to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %saved_stack, align 8
  %8 = mul nuw i64 10, %6
  %vla = alloca i32, i64 %8, align 16
  store i64 %6, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %move, align 4
  store i32 0, i32* %ro, align 4
  store i32 0, i32* %co, align 4
  store i32 0, i32* %num, align 4
  store i32 0, i32* %nextNum, align 4
  store i32 0, i32* %totalCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %9, 9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = mul nsw i64 %idxprom, %6
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %11
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx, i64 0
  store i32 0, i32* %arrayidx6, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom7, %6
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 %13
  %arrayidx9 = getelementptr inbounds i32, i32* %arrayidx8, i64 1
  store i32 1, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %k, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc98, %for.end
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp sle i32 %15, %16
  br i1 %cmp11, label %for.body12, label %for.end100

for.body12:                                       ; preds = %for.cond10
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc95, %for.body12
  %17 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %17, 4
  br i1 %cmp14, label %for.body15, label %for.end97

for.body15:                                       ; preds = %for.cond13
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc92, %for.body15
  %18 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %18, 3
  br i1 %cmp17, label %for.body18, label %for.end94

for.body18:                                       ; preds = %for.cond16
  %19 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 %idxprom19
  %21 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx20, i64 0, i64 %idxprom21
  %22 = load i8, i8* %arrayidx22, align 1
  %conv = sext i8 %22 to i32
  %cmp23 = icmp ne i32 %conv, 42
  br i1 %cmp23, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %for.body18
  %23 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [3 x i8], [3 x i8]* %23, i64 %idxprom24
  %25 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx25, i64 0, i64 %idxprom26
  %26 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %26 to i32
  %cmp29 = icmp ne i32 %conv28, 35
  br i1 %cmp29, label %if.then30, label %if.end91

if.then30:                                        ; preds = %land.lhs.true
  %27 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [3 x i8], [3 x i8]* %27, i64 %idxprom31
  %29 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx32, i64 0, i64 %idxprom33
  %30 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %30 to i32
  %sub = sub nsw i32 %conv35, 48
  store i32 %sub, i32* %num, align 4
  %31 = load i32, i32* %num, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = mul nsw i64 %idxprom36, %6
  %arrayidx37 = getelementptr inbounds i32, i32* %vla, i64 %32
  %33 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %arrayidx37, i64 %idxprom38
  store i32 0, i32* %arrayidx39, align 4
  store i32 0, i32* %move, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc88, %if.then30
  %34 = load i32, i32* %move, align 4
  %cmp41 = icmp slt i32 %34, 5
  br i1 %cmp41, label %for.body42, label %for.end90

for.body42:                                       ; preds = %for.cond40
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %move, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [5 x i32], [5 x i32]* %row, i64 0, i64 %idxprom43
  %37 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %35, %37
  store i32 %add45, i32* %ro, align 4
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %move, align 4
  %idxprom46 = sext i32 %39 to i64
  %arrayidx47 = getelementptr inbounds [5 x i32], [5 x i32]* %col, i64 0, i64 %idxprom46
  %40 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %38, %40
  store i32 %add48, i32* %co, align 4
  %41 = load i32, i32* %ro, align 4
  %cmp49 = icmp sge i32 %41, 0
  br i1 %cmp49, label %land.lhs.true50, label %if.end87

land.lhs.true50:                                  ; preds = %for.body42
  %42 = load i32, i32* %ro, align 4
  %cmp51 = icmp sle i32 %42, 3
  br i1 %cmp51, label %land.lhs.true52, label %if.end87

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %43 = load i32, i32* %co, align 4
  %cmp53 = icmp sge i32 %43, 0
  br i1 %cmp53, label %land.lhs.true54, label %if.end87

land.lhs.true54:                                  ; preds = %land.lhs.true52
  %44 = load i32, i32* %co, align 4
  %cmp55 = icmp sle i32 %44, 2
  br i1 %cmp55, label %land.lhs.true56, label %if.end87

land.lhs.true56:                                  ; preds = %land.lhs.true54
  %45 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %46 = load i32, i32* %ro, align 4
  %idxprom57 = sext i32 %46 to i64
  %arrayidx58 = getelementptr inbounds [3 x i8], [3 x i8]* %45, i64 %idxprom57
  %47 = load i32, i32* %co, align 4
  %idxprom59 = sext i32 %47 to i64
  %arrayidx60 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx58, i64 0, i64 %idxprom59
  %48 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %48 to i32
  %cmp62 = icmp ne i32 %conv61, 42
  br i1 %cmp62, label %land.lhs.true63, label %if.end87

land.lhs.true63:                                  ; preds = %land.lhs.true56
  %49 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %50 = load i32, i32* %ro, align 4
  %idxprom64 = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds [3 x i8], [3 x i8]* %49, i64 %idxprom64
  %51 = load i32, i32* %co, align 4
  %idxprom66 = sext i32 %51 to i64
  %arrayidx67 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx65, i64 0, i64 %idxprom66
  %52 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %52 to i32
  %cmp69 = icmp ne i32 %conv68, 35
  br i1 %cmp69, label %if.then70, label %if.end87

if.then70:                                        ; preds = %land.lhs.true63
  %53 = load [3 x i8]*, [3 x i8]** %keypad.addr, align 8
  %54 = load i32, i32* %ro, align 4
  %idxprom71 = sext i32 %54 to i64
  %arrayidx72 = getelementptr inbounds [3 x i8], [3 x i8]* %53, i64 %idxprom71
  %55 = load i32, i32* %co, align 4
  %idxprom73 = sext i32 %55 to i64
  %arrayidx74 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx72, i64 0, i64 %idxprom73
  %56 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %56 to i32
  %sub76 = sub nsw i32 %conv75, 48
  store i32 %sub76, i32* %nextNum, align 4
  %57 = load i32, i32* %nextNum, align 4
  %idxprom77 = sext i32 %57 to i64
  %58 = mul nsw i64 %idxprom77, %6
  %arrayidx78 = getelementptr inbounds i32, i32* %vla, i64 %58
  %59 = load i32, i32* %k, align 4
  %sub79 = sub nsw i32 %59, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds i32, i32* %arrayidx78, i64 %idxprom80
  %60 = load i32, i32* %arrayidx81, align 4
  %61 = load i32, i32* %num, align 4
  %idxprom82 = sext i32 %61 to i64
  %62 = mul nsw i64 %idxprom82, %6
  %arrayidx83 = getelementptr inbounds i32, i32* %vla, i64 %62
  %63 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %63 to i64
  %arrayidx85 = getelementptr inbounds i32, i32* %arrayidx83, i64 %idxprom84
  %64 = load i32, i32* %arrayidx85, align 4
  %add86 = add nsw i32 %64, %60
  store i32 %add86, i32* %arrayidx85, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then70, %land.lhs.true63, %land.lhs.true56, %land.lhs.true54, %land.lhs.true52, %land.lhs.true50, %for.body42
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %65 = load i32, i32* %move, align 4
  %inc89 = add nsw i32 %65, 1
  store i32 %inc89, i32* %move, align 4
  br label %for.cond40

for.end90:                                        ; preds = %for.cond40
  br label %if.end91

if.end91:                                         ; preds = %for.end90, %land.lhs.true, %for.body18
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %66 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %66, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond16

for.end94:                                        ; preds = %for.cond16
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %67 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %67, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond13

for.end97:                                        ; preds = %for.cond13
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %68 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %68, 1
  store i32 %inc99, i32* %k, align 4
  br label %for.cond10

for.end100:                                       ; preds = %for.cond10
  store i32 0, i32* %totalCount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc109, %for.end100
  %69 = load i32, i32* %i, align 4
  %cmp102 = icmp sle i32 %69, 9
  br i1 %cmp102, label %for.body103, label %for.end111

for.body103:                                      ; preds = %for.cond101
  %70 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %70 to i64
  %71 = mul nsw i64 %idxprom104, %6
  %arrayidx105 = getelementptr inbounds i32, i32* %vla, i64 %71
  %72 = load i32, i32* %n.addr, align 4
  %idxprom106 = sext i32 %72 to i64
  %arrayidx107 = getelementptr inbounds i32, i32* %arrayidx105, i64 %idxprom106
  %73 = load i32, i32* %arrayidx107, align 4
  %74 = load i32, i32* %totalCount, align 4
  %add108 = add nsw i32 %74, %73
  store i32 %add108, i32* %totalCount, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %for.body103
  %75 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %75, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond101

for.end111:                                       ; preds = %for.cond101
  %76 = load i32, i32* %totalCount, align 4
  store i32 %76, i32* %retval, align 4
  %77 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %return

return:                                           ; preds = %for.end111, %if.then3, %if.then
  %78 = load i32, i32* %retval, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %keypad = alloca [4 x [3 x i8]], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
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

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
