; ModuleID = 'PE-benchmarks/find-k-closest-elements-given-value.cpp'
source_filename = "PE-benchmarks/find-k-closest-elements-given-value.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@__const.main.arr = private unnamed_addr constant [13 x i32] [i32 12, i32 16, i32 22, i32 30, i32 35, i32 39, i32 42, i32 45, i32 48, i32 50, i32 53, i32 55, i32 56], align 16

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z13findCrossOverPiiii(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %5, align 4
  br label %75

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %75

53:                                               ; preds = %42, %30
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @_Z13findCrossOverPiiii(i32* %62, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %53
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @_Z13findCrossOverPiiii(i32* %69, i32 %70, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %61, %51, %28, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z13printKclosestPiiii(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @_Z13findCrossOverPiiii(i32* %12, i32 0, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %4
  br label %30

30:                                               ; preds = %75, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33, %30
  %42 = phi i1 [ false, %33 ], [ false, %30 ], [ %40, %37 ]
  br i1 %42, label %43, label %78

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %44, %49
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp slt i32 %50, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %43
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %75

67:                                               ; preds = %43
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %30, !llvm.loop !2

78:                                               ; preds = %41
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i1 [ false, %79 ], [ %85, %83 ]
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %9, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %79, !llvm.loop !4

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %109, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i1 [ false, %99 ], [ %106, %103 ]
  br i1 %108, label %109, label %119

109:                                              ; preds = %107
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %99, !llvm.loop !5

119:                                              ; preds = %107
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [13 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [13 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([13 x i32]* @__const.main.arr to i8*), i64 52, i1 false)
  store i32 13, i32* %3, align 4
  store i32 35, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %7 = getelementptr inbounds [13 x i32], [13 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  call void @_Z13printKclosestPiiii(i32* %7, i32 %8, i32 4, i32 %9)
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
