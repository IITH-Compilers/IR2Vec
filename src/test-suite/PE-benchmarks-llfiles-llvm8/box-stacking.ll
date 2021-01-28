; ModuleID = 'PE-benchmarks/box-stacking.cpp'
source_filename = "PE-benchmarks/box-stacking.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Box = type { i32, i32, i32 }

@__const.main.arr = private unnamed_addr constant [4 x %struct.Box] [%struct.Box { i32 4, i32 6, i32 7 }, %struct.Box { i32 1, i32 2, i32 3 }, %struct.Box { i32 4, i32 5, i32 6 }, %struct.Box { i32 10, i32 12, i32 32 }], align 16
@.str = private unnamed_addr constant [44 x i8] c"The maximum possible height of stack is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3minii(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z3maxii(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z7comparePKvS0_(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.Box*
  %d = getelementptr inbounds %struct.Box, %struct.Box* %1, i32 0, i32 2
  %2 = load i32, i32* %d, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct.Box*
  %w = getelementptr inbounds %struct.Box, %struct.Box* %4, i32 0, i32 1
  %5 = load i32, i32* %w, align 4
  %mul = mul nsw i32 %2, %5
  %6 = load i8*, i8** %a.addr, align 8
  %7 = bitcast i8* %6 to %struct.Box*
  %d1 = getelementptr inbounds %struct.Box, %struct.Box* %7, i32 0, i32 2
  %8 = load i32, i32* %d1, align 4
  %9 = load i8*, i8** %a.addr, align 8
  %10 = bitcast i8* %9 to %struct.Box*
  %w2 = getelementptr inbounds %struct.Box, %struct.Box* %10, i32 0, i32 1
  %11 = load i32, i32* %w2, align 4
  %mul3 = mul nsw i32 %8, %11
  %sub = sub nsw i32 %mul, %mul3
  ret i32 %sub
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z14maxStackHeightP3Boxi(%struct.Box* %arr, i32 %n) #1 {
entry:
  %arr.addr = alloca %struct.Box*, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %__vla_expr1 = alloca i64, align 8
  %i78 = alloca i32, align 4
  %i90 = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %i134 = alloca i32, align 4
  store %struct.Box* %arr, %struct.Box** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 3, %0
  %1 = zext i32 %mul to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca %struct.Box, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Box, %struct.Box* %5, i64 %idxprom
  %h = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %h, align 4
  %8 = load i32, i32* %index, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom1
  %h3 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx2, i32 0, i32 0
  store i32 %7, i32* %h3, align 4
  %9 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct.Box, %struct.Box* %9, i64 %idxprom4
  %d = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx5, i32 0, i32 2
  %11 = load i32, i32* %d, align 4
  %12 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds %struct.Box, %struct.Box* %12, i64 %idxprom6
  %w = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx7, i32 0, i32 1
  %14 = load i32, i32* %w, align 4
  %call = call i32 @_Z3maxii(i32 %11, i32 %14)
  %15 = load i32, i32* %index, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom8
  %d10 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx9, i32 0, i32 2
  store i32 %call, i32* %d10, align 4
  %16 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds %struct.Box, %struct.Box* %16, i64 %idxprom11
  %d13 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx12, i32 0, i32 2
  %18 = load i32, i32* %d13, align 4
  %19 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds %struct.Box, %struct.Box* %19, i64 %idxprom14
  %w16 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx15, i32 0, i32 1
  %21 = load i32, i32* %w16, align 4
  %call17 = call i32 @_Z3minii(i32 %18, i32 %21)
  %22 = load i32, i32* %index, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom18
  %w20 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx19, i32 0, i32 1
  store i32 %call17, i32* %w20, align 4
  %23 = load i32, i32* %index, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %index, align 4
  %24 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds %struct.Box, %struct.Box* %24, i64 %idxprom21
  %w23 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx22, i32 0, i32 1
  %26 = load i32, i32* %w23, align 4
  %27 = load i32, i32* %index, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom24
  %h26 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx25, i32 0, i32 0
  store i32 %26, i32* %h26, align 4
  %28 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds %struct.Box, %struct.Box* %28, i64 %idxprom27
  %h29 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx28, i32 0, i32 0
  %30 = load i32, i32* %h29, align 4
  %31 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds %struct.Box, %struct.Box* %31, i64 %idxprom30
  %d32 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx31, i32 0, i32 2
  %33 = load i32, i32* %d32, align 4
  %call33 = call i32 @_Z3maxii(i32 %30, i32 %33)
  %34 = load i32, i32* %index, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom34
  %d36 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx35, i32 0, i32 2
  store i32 %call33, i32* %d36, align 4
  %35 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %36 to i64
  %arrayidx38 = getelementptr inbounds %struct.Box, %struct.Box* %35, i64 %idxprom37
  %h39 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx38, i32 0, i32 0
  %37 = load i32, i32* %h39, align 4
  %38 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds %struct.Box, %struct.Box* %38, i64 %idxprom40
  %d42 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx41, i32 0, i32 2
  %40 = load i32, i32* %d42, align 4
  %call43 = call i32 @_Z3minii(i32 %37, i32 %40)
  %41 = load i32, i32* %index, align 4
  %idxprom44 = sext i32 %41 to i64
  %arrayidx45 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom44
  %w46 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx45, i32 0, i32 1
  store i32 %call43, i32* %w46, align 4
  %42 = load i32, i32* %index, align 4
  %inc47 = add nsw i32 %42, 1
  store i32 %inc47, i32* %index, align 4
  %43 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %44 to i64
  %arrayidx49 = getelementptr inbounds %struct.Box, %struct.Box* %43, i64 %idxprom48
  %d50 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx49, i32 0, i32 2
  %45 = load i32, i32* %d50, align 4
  %46 = load i32, i32* %index, align 4
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom51
  %h53 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx52, i32 0, i32 0
  store i32 %45, i32* %h53, align 4
  %47 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %48 to i64
  %arrayidx55 = getelementptr inbounds %struct.Box, %struct.Box* %47, i64 %idxprom54
  %h56 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx55, i32 0, i32 0
  %49 = load i32, i32* %h56, align 4
  %50 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %51 to i64
  %arrayidx58 = getelementptr inbounds %struct.Box, %struct.Box* %50, i64 %idxprom57
  %w59 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx58, i32 0, i32 1
  %52 = load i32, i32* %w59, align 4
  %call60 = call i32 @_Z3maxii(i32 %49, i32 %52)
  %53 = load i32, i32* %index, align 4
  %idxprom61 = sext i32 %53 to i64
  %arrayidx62 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom61
  %d63 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx62, i32 0, i32 2
  store i32 %call60, i32* %d63, align 4
  %54 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %55 to i64
  %arrayidx65 = getelementptr inbounds %struct.Box, %struct.Box* %54, i64 %idxprom64
  %h66 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx65, i32 0, i32 0
  %56 = load i32, i32* %h66, align 4
  %57 = load %struct.Box*, %struct.Box** %arr.addr, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %58 to i64
  %arrayidx68 = getelementptr inbounds %struct.Box, %struct.Box* %57, i64 %idxprom67
  %w69 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx68, i32 0, i32 1
  %59 = load i32, i32* %w69, align 4
  %call70 = call i32 @_Z3minii(i32 %56, i32 %59)
  %60 = load i32, i32* %index, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom71
  %w73 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx72, i32 0, i32 1
  store i32 %call70, i32* %w73, align 4
  %61 = load i32, i32* %index, align 4
  %inc74 = add nsw i32 %61, 1
  store i32 %inc74, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %62, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i32, i32* %n.addr, align 4
  %mul76 = mul nsw i32 3, %63
  store i32 %mul76, i32* %n.addr, align 4
  %64 = bitcast %struct.Box* %vla to i8*
  %65 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %65 to i64
  call void @qsort(i8* %64, i64 %conv, i64 12, i32 (i8*, i8*)* @_Z7comparePKvS0_)
  %66 = load i32, i32* %n.addr, align 4
  %67 = zext i32 %66 to i64
  %vla77 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %__vla_expr1, align 8
  store i32 0, i32* %i78, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc87, %for.end
  %68 = load i32, i32* %i78, align 4
  %69 = load i32, i32* %n.addr, align 4
  %cmp80 = icmp slt i32 %68, %69
  br i1 %cmp80, label %for.body81, label %for.end89

for.body81:                                       ; preds = %for.cond79
  %70 = load i32, i32* %i78, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom82
  %h84 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx83, i32 0, i32 0
  %71 = load i32, i32* %h84, align 4
  %72 = load i32, i32* %i78, align 4
  %idxprom85 = sext i32 %72 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom85
  store i32 %71, i32* %arrayidx86, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body81
  %73 = load i32, i32* %i78, align 4
  %inc88 = add nsw i32 %73, 1
  store i32 %inc88, i32* %i78, align 4
  br label %for.cond79

for.end89:                                        ; preds = %for.cond79
  store i32 1, i32* %i90, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc131, %for.end89
  %74 = load i32, i32* %i90, align 4
  %75 = load i32, i32* %n.addr, align 4
  %cmp92 = icmp slt i32 %74, %75
  br i1 %cmp92, label %for.body93, label %for.end133

for.body93:                                       ; preds = %for.cond91
  store i32 0, i32* %j, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc128, %for.body93
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %i90, align 4
  %cmp95 = icmp slt i32 %76, %77
  br i1 %cmp95, label %for.body96, label %for.end130

for.body96:                                       ; preds = %for.cond94
  %78 = load i32, i32* %i90, align 4
  %idxprom97 = sext i32 %78 to i64
  %arrayidx98 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom97
  %w99 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx98, i32 0, i32 1
  %79 = load i32, i32* %w99, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %80 to i64
  %arrayidx101 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom100
  %w102 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx101, i32 0, i32 1
  %81 = load i32, i32* %w102, align 4
  %cmp103 = icmp slt i32 %79, %81
  br i1 %cmp103, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body96
  %82 = load i32, i32* %i90, align 4
  %idxprom104 = sext i32 %82 to i64
  %arrayidx105 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom104
  %d106 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx105, i32 0, i32 2
  %83 = load i32, i32* %d106, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %84 to i64
  %arrayidx108 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom107
  %d109 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx108, i32 0, i32 2
  %85 = load i32, i32* %d109, align 4
  %cmp110 = icmp slt i32 %83, %85
  br i1 %cmp110, label %land.lhs.true111, label %if.end

land.lhs.true111:                                 ; preds = %land.lhs.true
  %86 = load i32, i32* %i90, align 4
  %idxprom112 = sext i32 %86 to i64
  %arrayidx113 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom112
  %87 = load i32, i32* %arrayidx113, align 4
  %88 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %88 to i64
  %arrayidx115 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom114
  %89 = load i32, i32* %arrayidx115, align 4
  %90 = load i32, i32* %i90, align 4
  %idxprom116 = sext i32 %90 to i64
  %arrayidx117 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom116
  %h118 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx117, i32 0, i32 0
  %91 = load i32, i32* %h118, align 4
  %add = add nsw i32 %89, %91
  %cmp119 = icmp slt i32 %87, %add
  br i1 %cmp119, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true111
  %92 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %92 to i64
  %arrayidx121 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom120
  %93 = load i32, i32* %arrayidx121, align 4
  %94 = load i32, i32* %i90, align 4
  %idxprom122 = sext i32 %94 to i64
  %arrayidx123 = getelementptr inbounds %struct.Box, %struct.Box* %vla, i64 %idxprom122
  %h124 = getelementptr inbounds %struct.Box, %struct.Box* %arrayidx123, i32 0, i32 0
  %95 = load i32, i32* %h124, align 4
  %add125 = add nsw i32 %93, %95
  %96 = load i32, i32* %i90, align 4
  %idxprom126 = sext i32 %96 to i64
  %arrayidx127 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom126
  store i32 %add125, i32* %arrayidx127, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true111, %land.lhs.true, %for.body96
  br label %for.inc128

for.inc128:                                       ; preds = %if.end
  %97 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %97, 1
  store i32 %inc129, i32* %j, align 4
  br label %for.cond94

for.end130:                                       ; preds = %for.cond94
  br label %for.inc131

for.inc131:                                       ; preds = %for.end130
  %98 = load i32, i32* %i90, align 4
  %inc132 = add nsw i32 %98, 1
  store i32 %inc132, i32* %i90, align 4
  br label %for.cond91

for.end133:                                       ; preds = %for.cond91
  store i32 -1, i32* %max, align 4
  store i32 0, i32* %i134, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc145, %for.end133
  %99 = load i32, i32* %i134, align 4
  %100 = load i32, i32* %n.addr, align 4
  %cmp136 = icmp slt i32 %99, %100
  br i1 %cmp136, label %for.body137, label %for.end147

for.body137:                                      ; preds = %for.cond135
  %101 = load i32, i32* %max, align 4
  %102 = load i32, i32* %i134, align 4
  %idxprom138 = sext i32 %102 to i64
  %arrayidx139 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom138
  %103 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp slt i32 %101, %103
  br i1 %cmp140, label %if.then141, label %if.end144

if.then141:                                       ; preds = %for.body137
  %104 = load i32, i32* %i134, align 4
  %idxprom142 = sext i32 %104 to i64
  %arrayidx143 = getelementptr inbounds i32, i32* %vla77, i64 %idxprom142
  %105 = load i32, i32* %arrayidx143, align 4
  store i32 %105, i32* %max, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %for.body137
  br label %for.inc145

for.inc145:                                       ; preds = %if.end144
  %106 = load i32, i32* %i134, align 4
  %inc146 = add nsw i32 %106, 1
  store i32 %inc146, i32* %i134, align 4
  br label %for.cond135

for.end147:                                       ; preds = %for.cond135
  %107 = load i32, i32* %max, align 4
  %108 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %108)
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [4 x %struct.Box], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x %struct.Box]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x %struct.Box]* @__const.main.arr to i8*), i64 48, i1 false)
  store i32 4, i32* %n, align 4
  %arraydecay = getelementptr inbounds [4 x %struct.Box], [4 x %struct.Box]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %call = call i32 @_Z14maxStackHeightP3Boxi(%struct.Box* %arraydecay, i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
