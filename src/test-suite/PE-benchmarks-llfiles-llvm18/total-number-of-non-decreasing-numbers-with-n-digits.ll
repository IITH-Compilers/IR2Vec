; ModuleID = 'PE-benchmarks/total-number-of-non-decreasing-numbers-with-n-digits.cpp'
source_filename = "PE-benchmarks/total-number-of-non-decreasing-numbers-with-n-digits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i64 @_Z18countNonDecreasingi(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %11 = load i32, ptr %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call ptr @llvm.stacksave.p0()
  store ptr %14, ptr %3, align 8
  %15 = mul nuw i64 10, %13
  %16 = alloca i64, i64 %15, align 16
  store i64 %13, ptr %4, align 8
  %17 = mul nuw i64 10, %13
  %18 = mul nuw i64 8, %17
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 %18, i1 false)
  store i32 0, ptr %5, align 4
  br label %19

19:                                               ; preds = %28, %1
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, %13
  %26 = getelementptr inbounds i64, ptr %16, i64 %25
  %27 = getelementptr inbounds i64, ptr %26, i64 1
  store i64 1, ptr %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 4
  br label %19, !llvm.loop !6

31:                                               ; preds = %19
  store i32 0, ptr %6, align 4
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i32, ptr %6, align 4
  %34 = icmp sle i32 %33, 9
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  store i32 2, ptr %7, align 4
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr %2, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  store i32 0, ptr %8, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, ptr %8, align 4
  %43 = load i32, ptr %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i32, ptr %8, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, %13
  %49 = getelementptr inbounds i64, ptr %16, i64 %48
  %50 = load i32, ptr %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %49, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = load i32, ptr %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, %13
  %58 = getelementptr inbounds i64, ptr %16, i64 %57
  %59 = load i32, ptr %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %58, i64 %60
  %62 = load i64, ptr %61, align 8
  %63 = add nsw i64 %62, %54
  store i64 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %45
  %65 = load i32, ptr %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %8, align 4
  br label %41, !llvm.loop !8

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %7, align 4
  br label %36, !llvm.loop !9

71:                                               ; preds = %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %6, align 4
  br label %32, !llvm.loop !10

75:                                               ; preds = %32
  store i64 0, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i32, ptr %10, align 4
  %78 = icmp slt i32 %77, 10
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, ptr %10, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, %13
  %83 = getelementptr inbounds i64, ptr %16, i64 %82
  %84 = load i32, ptr %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, ptr %83, i64 %85
  %87 = load i64, ptr %86, align 8
  %88 = load i64, ptr %9, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, ptr %9, align 8
  br label %90

90:                                               ; preds = %79
  %91 = load i32, ptr %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %10, align 4
  br label %76, !llvm.loop !11

93:                                               ; preds = %76
  %94 = load i64, ptr %9, align 8
  %95 = load ptr, ptr %3, align 8
  call void @llvm.stackrestore.p0(ptr %95)
  ret i64 %94
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 3, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call noundef i64 @_Z18countNonDecreasingi(i32 noundef %3)
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEx(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %4)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEx(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #4

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
