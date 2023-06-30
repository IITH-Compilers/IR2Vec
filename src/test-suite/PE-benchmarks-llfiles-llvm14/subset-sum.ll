; ModuleID = 'PE-benchmarks/subset-sum.cpp'
source_filename = "PE-benchmarks/subset-sum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@_ZL11total_nodes = internal global i32 0, align 4
@__const.main.weights = private unnamed_addr constant [8 x i32] [i32 15, i32 22, i32 14, i32 26, i32 32, i32 9, i32 16, i32 8], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"Nodes generated %dn\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z11printSubsetPii(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef 5, i32 noundef %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6, !llvm.loop !6

20:                                               ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z10comparatorPKvS0_(i8* noundef %0, i8* noundef %1) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %12, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z10subset_sumPiS_iiiii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @_ZL11total_nodes, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @_ZL11total_nodes, align 4
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %7
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %11, align 4
  call void @_Z11printSubsetPii(i32* noundef %22, i32 noundef %23)
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %29, %34
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %35, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %28
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %51, %56
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %14, align 4
  call void @_Z10subset_sumPiS_iiiii(i32* noundef %46, i32* noundef %47, i32 noundef %48, i32 noundef %50, i32 noundef %57, i32 noundef %59, i32 noundef %60)
  br label %61

61:                                               ; preds = %45, %28, %21
  br label %123

62:                                               ; preds = %7
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %122

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = load i32, i32* %14, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %66
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %118, %76
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %92, %97
  %99 = load i32, i32* %14, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %82
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %107, %112
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* %14, align 4
  call void @_Z10subset_sumPiS_iiiii(i32* noundef %102, i32* noundef %103, i32 noundef %104, i32 noundef %106, i32 noundef %113, i32 noundef %115, i32 noundef %116)
  br label %117

117:                                              ; preds = %101, %82
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %78, !llvm.loop !8

121:                                              ; preds = %78
  br label %122

122:                                              ; preds = %121, %66, %62
  br label %123

123:                                              ; preds = %61, %122
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z15generateSubsetsPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @malloc(i64 noundef %12) #6
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  call void @qsort(i8* noundef %16, i64 noundef %18, i64 noundef 4, i32 (i8*, i8*)* noundef @_Z10comparatorPKvS0_)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %19, !llvm.loop !9

34:                                               ; preds = %19
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  call void @_Z10subset_sumPiS_iiiii(i32* noundef %45, i32* noundef %46, i32 noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %48)
  br label %49

49:                                               ; preds = %44, %40, %34
  %50 = load i32*, i32** %7, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* noundef %51) #6
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [8 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @__const.main.weights to i8*), i64 32, i1 false)
  store i32 53, i32* %3, align 4
  store i32 8, i32* %4, align 4
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  call void @_Z15generateSubsetsPiii(i32* noundef %6, i32 noundef %7, i32 noundef %8)
  %9 = load i32, i32* @_ZL11total_nodes, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.1-++20220402053234+23d08271a4b2-1~exp1~20220402053315.111"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
