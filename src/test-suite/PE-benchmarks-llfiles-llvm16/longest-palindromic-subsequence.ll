; ModuleID = 'PE-benchmarks/longest-palindromic-subsequence.cpp'
source_filename = "PE-benchmarks/longest-palindromic-subsequence.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.seq = private unnamed_addr constant [16 x i8] c"GEEKS FOR GEEKS\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"The lnegth of the LPS is %d\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3lpsPc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = call i64 @strlen(ptr noundef %10) #6
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr %3, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, ptr %3, align 4
  %16 = zext i32 %15 to i64
  %17 = call ptr @llvm.stacksave()
  store ptr %17, ptr %7, align 8
  %18 = mul nuw i64 %14, %16
  %19 = alloca i32, i64 %18, align 16
  store i64 %14, ptr %8, align 8
  store i64 %16, ptr %9, align 8
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, %16
  %28 = getelementptr inbounds i32, ptr %19, i64 %27
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  store i32 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %4, align 4
  br label %20, !llvm.loop !6

35:                                               ; preds = %20
  store i32 2, ptr %6, align 4
  br label %36

36:                                               ; preds = %143, %35
  %37 = load i32, ptr %6, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %146

40:                                               ; preds = %36
  store i32 0, ptr %4, align 4
  br label %41

41:                                               ; preds = %139, %40
  %42 = load i32, ptr %4, align 4
  %43 = load i32, ptr %3, align 4
  %44 = load i32, ptr %6, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %142

48:                                               ; preds = %41
  %49 = load i32, ptr %4, align 4
  %50 = load i32, ptr %6, align 4
  %51 = add nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  %53 = load ptr, ptr %2, align 8
  %54 = load i32, ptr %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load ptr, ptr %2, align 8
  %60 = load i32, ptr %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %58, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %48
  %67 = load i32, ptr %6, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, ptr %4, align 4
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, %16
  %73 = getelementptr inbounds i32, ptr %19, i64 %72
  %74 = load i32, ptr %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %73, i64 %75
  store i32 2, ptr %76, align 4
  br label %138

77:                                               ; preds = %66, %48
  %78 = load ptr, ptr %2, align 8
  %79 = load i32, ptr %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = sext i8 %82 to i32
  %84 = load ptr, ptr %2, align 8
  %85 = load i32, ptr %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %84, i64 %86
  %88 = load i8, ptr %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %77
  %92 = load i32, ptr %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, %16
  %96 = getelementptr inbounds i32, ptr %19, i64 %95
  %97 = load i32, ptr %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %96, i64 %99
  %101 = load i32, ptr %100, align 4
  %102 = add nsw i32 %101, 2
  %103 = load i32, ptr %4, align 4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %16
  %106 = getelementptr inbounds i32, ptr %19, i64 %105
  %107 = load i32, ptr %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %106, i64 %108
  store i32 %102, ptr %109, align 4
  br label %137

110:                                              ; preds = %77
  %111 = load i32, ptr %4, align 4
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %16
  %114 = getelementptr inbounds i32, ptr %19, i64 %113
  %115 = load i32, ptr %5, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %114, i64 %117
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %4, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %122, %16
  %124 = getelementptr inbounds i32, ptr %19, i64 %123
  %125 = load i32, ptr %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %124, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = call noundef i32 @_Z3maxii(i32 noundef %119, i32 noundef %128)
  %130 = load i32, ptr %4, align 4
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %131, %16
  %133 = getelementptr inbounds i32, ptr %19, i64 %132
  %134 = load i32, ptr %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %133, i64 %135
  store i32 %129, ptr %136, align 4
  br label %137

137:                                              ; preds = %110, %91
  br label %138

138:                                              ; preds = %137, %69
  br label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %4, align 4
  br label %41, !llvm.loop !8

142:                                              ; preds = %41
  br label %143

143:                                              ; preds = %142
  %144 = load i32, ptr %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %6, align 4
  br label %36, !llvm.loop !9

146:                                              ; preds = %36
  %147 = mul nsw i64 0, %16
  %148 = getelementptr inbounds i32, ptr %19, i64 %147
  %149 = load i32, ptr %3, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, ptr %148, i64 %151
  %153 = load i32, ptr %152, align 4
  %154 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore(ptr %154)
  ret i32 %153
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.seq, i64 16, i1 false)
  %4 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 0
  %5 = call i64 @strlen(ptr noundef %4) #6
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 0
  %8 = call noundef i32 @_Z3lpsPc(ptr noundef %7)
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  %10 = call i32 @getchar()
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #5

declare i32 @getchar() #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230610113410+7cbf1a259152-1~exp1~20230610233423.102)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
