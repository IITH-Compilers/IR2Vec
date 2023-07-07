; ModuleID = 'PE-benchmarks/Iterative_QuickSort.cpp'
source_filename = "PE-benchmarks/Iterative_QuickSort.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.arr = private unnamed_addr constant [8 x i32] [i32 4, i32 3, i32 5, i32 2, i32 1, i32 3, i32 2, i32 3], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Iterative_QuickSort.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z4swapPiS_(ptr noundef %0, ptr noundef %1) #4 {
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
define dso_local noundef i32 @_Z9partitionPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
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
  %16 = sub nsw i32 %15, 1
  store i32 %16, ptr %8, align 4
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr %9, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, ptr %9, align 4
  %20 = load i32, ptr %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load i32, ptr %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %8, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %34, i64 %36
  %38 = load ptr, ptr %4, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  call void @_Z4swapPiS_(ptr noundef %37, ptr noundef %41)
  br label %42

42:                                               ; preds = %31, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %9, align 4
  br label %18, !llvm.loop !6

46:                                               ; preds = %18
  %47 = load ptr, ptr %4, align 8
  %48 = load i32, ptr %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  %52 = load ptr, ptr %4, align 8
  %53 = load i32, ptr %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  call void @_Z4swapPiS_(ptr noundef %51, ptr noundef %55)
  %56 = load i32, ptr %8, align 4
  %57 = add nsw i32 %56, 1
  ret i32 %57
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z18quickSortIterativePiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %11 = load i32, ptr %6, align 4
  %12 = load i32, ptr %5, align 4
  %13 = sub nsw i32 %11, %12
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call ptr @llvm.stacksave()
  store ptr %16, ptr %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, ptr %8, align 8
  store i32 -1, ptr %9, align 4
  %18 = load i32, ptr %5, align 4
  %19 = load i32, ptr %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %17, i64 %21
  store i32 %18, ptr %22, align 4
  %23 = load i32, ptr %6, align 4
  %24 = load i32, ptr %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %17, i64 %26
  store i32 %23, ptr %27, align 4
  br label %28

28:                                               ; preds = %79, %3
  %29 = load i32, ptr %9, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = load i32, ptr %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %9, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, ptr %17, i64 %34
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %6, align 4
  %37 = load i32, ptr %9, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %9, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, ptr %17, i64 %39
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %5, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %5, align 4
  %44 = load i32, ptr %6, align 4
  %45 = call noundef i32 @_Z9partitionPiii(ptr noundef %42, i32 noundef %43, i32 noundef %44)
  store i32 %45, ptr %10, align 4
  %46 = load i32, ptr %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, ptr %5, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %31
  %51 = load i32, ptr %5, align 4
  %52 = load i32, ptr %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %17, i64 %54
  store i32 %51, ptr %55, align 4
  %56 = load i32, ptr %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, ptr %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %17, i64 %60
  store i32 %57, ptr %61, align 4
  br label %62

62:                                               ; preds = %50, %31
  %63 = load i32, ptr %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, ptr %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i32, ptr %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, ptr %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %17, i64 %72
  store i32 %69, ptr %73, align 4
  %74 = load i32, ptr %6, align 4
  %75 = load i32, ptr %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %17, i64 %77
  store i32 %74, ptr %78, align 4
  br label %79

79:                                               ; preds = %67, %62
  br label %28, !llvm.loop !8

80:                                               ; preds = %28
  %81 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore(ptr %81)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #5

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z8printArrPii(ptr noundef %0, i32 noundef %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %15)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef @.str)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %5, align 4
  br label %6, !llvm.loop !9

21:                                               ; preds = %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 32, i1 false)
  store i32 8, ptr %3, align 4
  %4 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 0
  %5 = load i32, ptr %3, align 4
  %6 = sub nsw i32 %5, 1
  call void @_Z18quickSortIterativePiii(ptr noundef %4, i32 noundef 0, i32 noundef %6)
  %7 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 0
  %8 = load i32, ptr %3, align 4
  call void @_Z8printArrPii(ptr noundef %7, i32 noundef %8)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_Iterative_QuickSort.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
