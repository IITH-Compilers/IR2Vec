; ModuleID = 'PE-benchmarks/subset-sum-problem.cpp'
source_filename = "PE-benchmarks/subset-sum-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.set = private unnamed_addr constant [6 x i32] [i32 3, i32 34, i32 4, i32 12, i32 5, i32 2], align 16
@.str = private unnamed_addr constant [30 x i8] c"Found a subset with given sum\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No subset with given sum\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z11isSubsetSumPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %14 = load i32, ptr %5, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call ptr @llvm.stacksave.p0()
  store ptr %20, ptr %7, align 8
  %21 = mul nuw i64 %16, %19
  %22 = alloca i8, i64 %21, align 16
  store i64 %16, ptr %8, align 8
  store i64 %19, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %23

23:                                               ; preds = %33, %3
  %24 = load i32, ptr %10, align 4
  %25 = load i32, ptr %5, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, ptr %10, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, %19
  %31 = getelementptr inbounds i8, ptr %22, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 0
  store i8 1, ptr %32, align 1
  br label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %10, align 4
  br label %23, !llvm.loop !6

36:                                               ; preds = %23
  store i32 1, ptr %11, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, ptr %11, align 4
  %39 = load i32, ptr %6, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = mul nsw i64 0, %19
  %43 = getelementptr inbounds i8, ptr %22, i64 %42
  %44 = load i32, ptr %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %11, align 4
  br label %37, !llvm.loop !8

50:                                               ; preds = %37
  store i32 1, ptr %12, align 4
  br label %51

51:                                               ; preds = %141, %50
  %52 = load i32, ptr %12, align 4
  %53 = load i32, ptr %5, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %144

55:                                               ; preds = %51
  store i32 1, ptr %13, align 4
  br label %56

56:                                               ; preds = %137, %55
  %57 = load i32, ptr %13, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %140

60:                                               ; preds = %56
  %61 = load i32, ptr %13, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = load i32, ptr %12, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %62, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %60
  %70 = load i32, ptr %12, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %19
  %74 = getelementptr inbounds i8, ptr %22, i64 %73
  %75 = load i32, ptr %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = trunc i8 %78 to i1
  %80 = load i32, ptr %12, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, %19
  %83 = getelementptr inbounds i8, ptr %22, i64 %82
  %84 = load i32, ptr %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  %87 = zext i1 %79 to i8
  store i8 %87, ptr %86, align 1
  br label %88

88:                                               ; preds = %69, %60
  %89 = load i32, ptr %13, align 4
  %90 = load ptr, ptr %4, align 8
  %91 = load i32, ptr %12, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %90, i64 %93
  %95 = load i32, ptr %94, align 4
  %96 = icmp sge i32 %89, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %88
  %98 = load i32, ptr %12, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, %19
  %102 = getelementptr inbounds i8, ptr %22, i64 %101
  %103 = load i32, ptr %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %102, i64 %104
  %106 = load i8, ptr %105, align 1
  %107 = trunc i8 %106 to i1
  br i1 %107, label %126, label %108

108:                                              ; preds = %97
  %109 = load i32, ptr %12, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %19
  %113 = getelementptr inbounds i8, ptr %22, i64 %112
  %114 = load i32, ptr %13, align 4
  %115 = load ptr, ptr %4, align 8
  %116 = load i32, ptr %12, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %115, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = sub nsw i32 %114, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %113, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = trunc i8 %124 to i1
  br label %126

126:                                              ; preds = %108, %97
  %127 = phi i1 [ true, %97 ], [ %125, %108 ]
  %128 = load i32, ptr %12, align 4
  %129 = sext i32 %128 to i64
  %130 = mul nsw i64 %129, %19
  %131 = getelementptr inbounds i8, ptr %22, i64 %130
  %132 = load i32, ptr %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %131, i64 %133
  %135 = zext i1 %127 to i8
  store i8 %135, ptr %134, align 1
  br label %136

136:                                              ; preds = %126, %88
  br label %137

137:                                              ; preds = %136
  %138 = load i32, ptr %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %13, align 4
  br label %56, !llvm.loop !9

140:                                              ; preds = %56
  br label %141

141:                                              ; preds = %140
  %142 = load i32, ptr %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %12, align 4
  br label %51, !llvm.loop !10

144:                                              ; preds = %51
  %145 = load i32, ptr %5, align 4
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %19
  %148 = getelementptr inbounds i8, ptr %22, i64 %147
  %149 = load i32, ptr %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = trunc i8 %152 to i1
  %154 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore.p0(ptr %154)
  ret i1 %153
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
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.set, i64 24, i1 false)
  store i32 9, ptr %3, align 4
  store i32 6, ptr %4, align 4
  %5 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %3, align 4
  %8 = call noundef zeroext i1 @_Z11isSubsetSumPiii(ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %15

13:                                               ; preds = %0
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %15

15:                                               ; preds = %13, %11
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

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
<<<<<<<< HEAD:src/test-suite/PE-benchmarks-llfiles-llvm18/subset-sum-problem.ll
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
========
!5 = !{!"clang version 19.1.7 (https://github.com/llvm/llvm-project.git cd708029e0b2869e80abe31ddb175f7c35361f90)"}
>>>>>>>> llvm19.1.7:src/test-suite/PE-benchmarks-llfiles-llvm19/subset-sum-problem.ll
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
