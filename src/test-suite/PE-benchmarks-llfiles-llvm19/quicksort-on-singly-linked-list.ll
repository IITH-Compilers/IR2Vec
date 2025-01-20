; ModuleID = 'PE-benchmarks/quicksort-on-singly-linked-list.cpp'
source_filename = "PE-benchmarks/quicksort-on-singly-linked-list.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.Node = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Linked List after sorting \0A\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z4pushPP4Nodei(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #5
  store ptr %6, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.Node, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %3, align 8
  store ptr %14, ptr %15, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9printListP4Node(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.Node, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %2, align 8
  br label %3, !llvm.loop !6

14:                                               ; preds = %3
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef ptr @_Z7getTailP4Node(ptr noundef %0) #3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.Node, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i1 [ false, %3 ], [ %10, %6 ]
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.Node, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %2, align 8
  br label %3, !llvm.loop !8

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 8
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef ptr @_Z9partitionP4NodeS0_PS0_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %14 = load ptr, ptr %6, align 8
  store ptr %14, ptr %9, align 8
  store ptr null, ptr %10, align 8
  %15 = load ptr, ptr %5, align 8
  store ptr %15, ptr %11, align 8
  %16 = load ptr, ptr %9, align 8
  store ptr %16, ptr %12, align 8
  br label %17

17:                                               ; preds = %61, %4
  %18 = load ptr, ptr %11, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = icmp ne ptr %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr inbounds %struct.Node, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.Node, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %11, align 8
  %35 = load ptr, ptr %7, align 8
  store ptr %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %33, %29
  %37 = load ptr, ptr %11, align 8
  store ptr %37, ptr %10, align 8
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %11, align 8
  br label %61

41:                                               ; preds = %21
  %42 = load ptr, ptr %10, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds %struct.Node, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds %struct.Node, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 8
  br label %50

50:                                               ; preds = %44, %41
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds %struct.Node, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds %struct.Node, ptr %54, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds %struct.Node, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 8
  %59 = load ptr, ptr %11, align 8
  store ptr %59, ptr %12, align 8
  %60 = load ptr, ptr %13, align 8
  store ptr %60, ptr %11, align 8
  br label %61

61:                                               ; preds = %50, %36
  br label %17, !llvm.loop !9

62:                                               ; preds = %17
  %63 = load ptr, ptr %7, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load ptr, ptr %9, align 8
  %68 = load ptr, ptr %7, align 8
  store ptr %67, ptr %68, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load ptr, ptr %12, align 8
  %71 = load ptr, ptr %8, align 8
  store ptr %70, ptr %71, align 8
  %72 = load ptr, ptr %9, align 8
  ret ptr %72
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_Z14quickSortRecurP4NodeS0_(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load ptr, ptr %4, align 8
  store ptr %17, ptr %3, align 8
  br label %57

18:                                               ; preds = %12
  store ptr null, ptr %6, align 8
  store ptr null, ptr %7, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = call noundef ptr @_Z9partitionP4NodeS0_PS0_S1_(ptr noundef %19, ptr noundef %20, ptr noundef %6, ptr noundef %7)
  store ptr %21, ptr %8, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = icmp ne ptr %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %18
  %26 = load ptr, ptr %6, align 8
  store ptr %26, ptr %9, align 8
  br label %27

27:                                               ; preds = %33, %25
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds %struct.Node, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %8, align 8
  %32 = icmp ne ptr %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds %struct.Node, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %9, align 8
  br label %27, !llvm.loop !10

37:                                               ; preds = %27
  %38 = load ptr, ptr %9, align 8
  %39 = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 1
  store ptr null, ptr %39, align 8
  %40 = load ptr, ptr %6, align 8
  %41 = load ptr, ptr %9, align 8
  %42 = call noundef ptr @_Z14quickSortRecurP4NodeS0_(ptr noundef %40, ptr noundef %41)
  store ptr %42, ptr %6, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = call noundef ptr @_Z7getTailP4Node(ptr noundef %43)
  store ptr %44, ptr %9, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds %struct.Node, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 8
  br label %48

48:                                               ; preds = %37, %18
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds %struct.Node, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = call noundef ptr @_Z14quickSortRecurP4NodeS0_(ptr noundef %51, ptr noundef %52)
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr inbounds %struct.Node, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 8
  %56 = load ptr, ptr %6, align 8
  store ptr %56, ptr %3, align 8
  br label %57

57:                                               ; preds = %48, %16
  %58 = load ptr, ptr %3, align 8
  ret ptr %58
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z9quickSortPP4Node(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = call noundef ptr @_Z7getTailP4Node(ptr noundef %6)
  %8 = call noundef ptr @_Z14quickSortRecurP4NodeS0_(ptr noundef %4, ptr noundef %7)
  %9 = load ptr, ptr %2, align 8
  store ptr %8, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store ptr null, ptr %2, align 8
  call void @_Z4pushPP4Nodei(ptr noundef %2, i32 noundef 5)
  call void @_Z4pushPP4Nodei(ptr noundef %2, i32 noundef 20)
  call void @_Z4pushPP4Nodei(ptr noundef %2, i32 noundef 4)
  call void @_Z4pushPP4Nodei(ptr noundef %2, i32 noundef 3)
  call void @_Z4pushPP4Nodei(ptr noundef %2, i32 noundef 30)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %4 = load ptr, ptr %2, align 8
  call void @_Z9printListP4Node(ptr noundef %4)
  call void @_Z9quickSortPP4Node(ptr noundef %2)
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3)
  %6 = load ptr, ptr %2, align 8
  call void @_Z9printListP4Node(ptr noundef %6)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
<<<<<<<< HEAD:src/test-suite/PE-benchmarks-llfiles-llvm18/quicksort-on-singly-linked-list.ll
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
========
!5 = !{!"clang version 19.1.7 (https://github.com/llvm/llvm-project.git cd708029e0b2869e80abe31ddb175f7c35361f90)"}
>>>>>>>> llvm19.1.7:src/test-suite/PE-benchmarks-llfiles-llvm19/quicksort-on-singly-linked-list.ll
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
