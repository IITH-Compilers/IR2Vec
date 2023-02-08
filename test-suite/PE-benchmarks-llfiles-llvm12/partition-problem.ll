; ModuleID = 'PE-benchmarks/partition-problem.cpp'
source_filename = "PE-benchmarks/partition-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 3, i32 1, i32 1, i32 2, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [45 x i8] c"Can be divided into two subsets of equal sum\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Can not be divided into two subsets of equal sum\00", align 1

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z12findPartiionPii(i32* %0, i32 %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %12, !llvm.loop !2

27:                                               ; preds = %12
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i1 false, i1* %3, align 1
  br label %167

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %9, align 8
  %41 = mul nuw i64 %36, %39
  %42 = alloca i8, i64 %41, align 16
  store i64 %36, i64* %10, align 8
  store i64 %39, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %53, %32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = mul nsw i64 0, %39
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 1, i8* %52, align 1
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %43, !llvm.loop !4

56:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 2
  %61 = icmp sle i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %39
  %66 = getelementptr inbounds i8, i8* %42, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %57, !llvm.loop !5

71:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %152, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sdiv i32 %74, 2
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %155

77:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %148, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %151

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %39
  %86 = getelementptr inbounds i8, i8* %42, i64 %85
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = trunc i8 %91 to i1
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, %39
  %96 = getelementptr inbounds i8, i8* %42, i64 %95
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = zext i1 %92 to i8
  store i8 %100, i8* %99, align 1
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %101, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %82
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %39
  %113 = getelementptr inbounds i8, i8* %42, i64 %112
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = trunc i8 %117 to i1
  br i1 %118, label %137, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %7, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %120, %126
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, %39
  %130 = getelementptr inbounds i8, i8* %42, i64 %129
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = trunc i8 %135 to i1
  br label %137

137:                                              ; preds = %119, %109
  %138 = phi i1 [ true, %109 ], [ %136, %119 ]
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %140, %39
  %142 = getelementptr inbounds i8, i8* %42, i64 %141
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = zext i1 %138 to i8
  store i8 %146, i8* %145, align 1
  br label %147

147:                                              ; preds = %137, %82
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %78, !llvm.loop !6

151:                                              ; preds = %78
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %72, !llvm.loop !7

155:                                              ; preds = %72
  %156 = load i32, i32* %6, align 4
  %157 = sdiv i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = mul nsw i64 %158, %39
  %160 = getelementptr inbounds i8, i8* %42, i64 %159
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = trunc i8 %164 to i1
  store i1 %165, i1* %3, align 1
  %166 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %166)
  br label %167

167:                                              ; preds = %155, %31
  %168 = load i1, i1* %3, align 1
  ret i1 %168
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [6 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([6 x i32]* @__const.main.arr to i8*), i64 24, i1 false)
  store i32 6, i32* %3, align 4
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %6 = load i32, i32* %3, align 4
  %7 = call zeroext i1 @_Z12findPartiionPii(i32* %5, i32 %6)
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %14

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %10
  %15 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @getchar() #4

attributes #0 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
