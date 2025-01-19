; ModuleID = 'PE-benchmarks/partition-problem.cpp'
source_filename = "PE-benchmarks/partition-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 3, i32 1, i32 1, i32 2, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [45 x i8] c"Can be divided into two subsets of equal sum\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Can not be divided into two subsets of equal sum\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z12findPartiionPii(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, ptr %6, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4
  br label %12, !llvm.loop !6

27:                                               ; preds = %12
  %28 = load i32, ptr %6, align 4
  %29 = srem i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i1 false, ptr %3, align 1
  br label %167

32:                                               ; preds = %27
  %33 = load i32, ptr %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call ptr @llvm.stacksave.p0()
  store ptr %40, ptr %9, align 8
  %41 = mul nuw i64 %36, %39
  %42 = alloca i8, i64 %41, align 16
  store i64 %36, ptr %10, align 8
  store i64 %39, ptr %11, align 8
  store i32 0, ptr %7, align 4
  br label %43

43:                                               ; preds = %53, %32
  %44 = load i32, ptr %7, align 4
  %45 = load i32, ptr %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = mul nsw i64 0, %39
  %49 = getelementptr inbounds i8, ptr %42, i64 %48
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  store i8 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %7, align 4
  br label %43, !llvm.loop !8

56:                                               ; preds = %43
  store i32 1, ptr %7, align 4
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i32, ptr %7, align 4
  %59 = load i32, ptr %6, align 4
  %60 = sdiv i32 %59, 2
  %61 = icmp sle i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, ptr %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %39
  %66 = getelementptr inbounds i8, ptr %42, i64 %65
  %67 = getelementptr inbounds i8, ptr %66, i64 0
  store i8 0, ptr %67, align 1
  br label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %7, align 4
  br label %57, !llvm.loop !9

71:                                               ; preds = %57
  store i32 1, ptr %7, align 4
  br label %72

72:                                               ; preds = %152, %71
  %73 = load i32, ptr %7, align 4
  %74 = load i32, ptr %6, align 4
  %75 = sdiv i32 %74, 2
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %155

77:                                               ; preds = %72
  store i32 1, ptr %8, align 4
  br label %78

78:                                               ; preds = %148, %77
  %79 = load i32, ptr %8, align 4
  %80 = load i32, ptr %5, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %151

82:                                               ; preds = %78
  %83 = load i32, ptr %7, align 4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %39
  %86 = getelementptr inbounds i8, ptr %42, i64 %85
  %87 = load i32, ptr %8, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = trunc i8 %91 to i1
  %93 = load i32, ptr %7, align 4
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, %39
  %96 = getelementptr inbounds i8, ptr %42, i64 %95
  %97 = load i32, ptr %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  %100 = zext i1 %92 to i8
  store i8 %100, ptr %99, align 1
  %101 = load i32, ptr %7, align 4
  %102 = load ptr, ptr %4, align 8
  %103 = load i32, ptr %8, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %102, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp sge i32 %101, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %82
  %110 = load i32, ptr %7, align 4
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %39
  %113 = getelementptr inbounds i8, ptr %42, i64 %112
  %114 = load i32, ptr %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %113, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = trunc i8 %117 to i1
  br i1 %118, label %137, label %119

119:                                              ; preds = %109
  %120 = load i32, ptr %7, align 4
  %121 = load ptr, ptr %4, align 8
  %122 = load i32, ptr %8, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %121, i64 %124
  %126 = load i32, ptr %125, align 4
  %127 = sub nsw i32 %120, %126
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, %39
  %130 = getelementptr inbounds i8, ptr %42, i64 %129
  %131 = load i32, ptr %8, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = trunc i8 %135 to i1
  br label %137

137:                                              ; preds = %119, %109
  %138 = phi i1 [ true, %109 ], [ %136, %119 ]
  %139 = load i32, ptr %7, align 4
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %140, %39
  %142 = getelementptr inbounds i8, ptr %42, i64 %141
  %143 = load i32, ptr %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %142, i64 %144
  %146 = zext i1 %138 to i8
  store i8 %146, ptr %145, align 1
  br label %147

147:                                              ; preds = %137, %82
  br label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %8, align 4
  br label %78, !llvm.loop !10

151:                                              ; preds = %78
  br label %152

152:                                              ; preds = %151
  %153 = load i32, ptr %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %7, align 4
  br label %72, !llvm.loop !11

155:                                              ; preds = %72
  %156 = load i32, ptr %6, align 4
  %157 = sdiv i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = mul nsw i64 %158, %39
  %160 = getelementptr inbounds i8, ptr %42, i64 %159
  %161 = load i32, ptr %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %160, i64 %162
  %164 = load i8, ptr %163, align 1
  %165 = trunc i8 %164 to i1
  store i1 %165, ptr %3, align 1
  %166 = load ptr, ptr %9, align 8
  call void @llvm.stackrestore.p0(ptr %166)
  br label %167

167:                                              ; preds = %155, %31
  %168 = load i1, ptr %3, align 1
  ret i1 %168
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 24, i1 false)
  store i32 6, ptr %3, align 4
  %4 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0
  %5 = load i32, ptr %3, align 4
  %6 = call noundef zeroext i1 @_Z12findPartiionPii(ptr noundef %4, i32 noundef %5)
  %7 = zext i1 %6 to i32
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %13

11:                                               ; preds = %0
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %13

13:                                               ; preds = %11, %9
  %14 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

declare i32 @getchar() #4

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.1.7 (https://github.com/llvm/llvm-project.git cd708029e0b2869e80abe31ddb175f7c35361f90)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
