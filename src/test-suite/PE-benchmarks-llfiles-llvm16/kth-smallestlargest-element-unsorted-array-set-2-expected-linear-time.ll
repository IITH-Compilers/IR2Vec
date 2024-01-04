; ModuleID = 'PE-benchmarks/kth-smallestlargest-element-unsorted-array-set-2-expected-linear-time.cpp'
source_filename = "PE-benchmarks/kth-smallestlargest-element-unsorted-array-set-2-expected-linear-time.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 12, i32 3, i32 5, i32 7, i32 4, i32 19, i32 26], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [26 x i8] c"K'th smallest element is \00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z11kthSmallestPiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %11 = load i32, ptr %9, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %4
  %14 = load i32, ptr %9, align 4
  %15 = load i32, ptr %8, align 4
  %16 = load i32, ptr %7, align 4
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = icmp sle i32 %14, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %13
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %8, align 4
  %24 = call noundef i32 @_Z15randomPartitionPiii(ptr noundef %21, i32 noundef %22, i32 noundef %23)
  store i32 %24, ptr %10, align 4
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %7, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, ptr %9, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load ptr, ptr %6, align 8
  %33 = load i32, ptr %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %5, align 4
  br label %64

37:                                               ; preds = %20
  %38 = load i32, ptr %10, align 4
  %39 = load i32, ptr %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, ptr %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %7, align 4
  %47 = load i32, ptr %10, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, ptr %9, align 4
  %50 = call noundef i32 @_Z11kthSmallestPiiii(ptr noundef %45, i32 noundef %46, i32 noundef %48, i32 noundef %49)
  store i32 %50, ptr %5, align 4
  br label %64

51:                                               ; preds = %37
  %52 = load ptr, ptr %6, align 8
  %53 = load i32, ptr %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, ptr %8, align 4
  %56 = load i32, ptr %9, align 4
  %57 = load i32, ptr %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = call noundef i32 @_Z11kthSmallestPiiii(ptr noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef %61)
  store i32 %62, ptr %5, align 4
  br label %64

63:                                               ; preds = %13, %4
  store i32 2147483647, ptr %5, align 4
  br label %64

64:                                               ; preds = %63, %51, %44, %31
  %65 = load i32, ptr %5, align 4
  ret i32 %65
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z15randomPartitionPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load i32, ptr %6, align 4
  %10 = load i32, ptr %5, align 4
  %11 = sub nsw i32 %9, %10
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %7, align 4
  %13 = call i32 @rand() #6
  %14 = load i32, ptr %7, align 4
  %15 = srem i32 %13, %14
  store i32 %15, ptr %8, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %8, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %16, i64 %20
  %22 = load ptr, ptr %4, align 8
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  call void @_Z4swapPiS_(ptr noundef %21, ptr noundef %25)
  %26 = load ptr, ptr %4, align 8
  %27 = load i32, ptr %5, align 4
  %28 = load i32, ptr %6, align 4
  %29 = call noundef i32 @_Z9partitionPiii(ptr noundef %26, i32 noundef %27, i32 noundef %28)
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z4swapPiS_(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %3, align 8
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %5, align 4
  %12 = load ptr, ptr %4, align 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z9partitionPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %5, align 4
  store i32 %15, ptr %8, align 4
  %16 = load i32, ptr %5, align 4
  store i32 %16, ptr %9, align 4
  br label %17

17:                                               ; preds = %42, %3
  %18 = load i32, ptr %9, align 4
  %19 = load i32, ptr %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 8
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  call void @_Z4swapPiS_(ptr noundef %34, ptr noundef %38)
  %39 = load i32, ptr %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %8, align 4
  br label %41

41:                                               ; preds = %30, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %9, align 4
  br label %17, !llvm.loop !6

45:                                               ; preds = %17
  %46 = load ptr, ptr %4, align 8
  %47 = load i32, ptr %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %46, i64 %48
  %50 = load ptr, ptr %4, align 8
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %50, i64 %52
  call void @_Z4swapPiS_(ptr noundef %49, ptr noundef %53)
  %54 = load i32, ptr %8, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 28, i1 false)
  store i32 7, ptr %3, align 4
  store i32 3, ptr %4, align 4
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %6 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 0
  %7 = load i32, ptr %3, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, ptr %4, align 4
  %10 = call noundef i32 @_Z11kthSmallestPiiii(ptr noundef %6, i32 noundef 0, i32 noundef %8, i32 noundef %9)
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %10)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230710042046+7cbf1a259152-1~exp1~20230710162136.105)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
