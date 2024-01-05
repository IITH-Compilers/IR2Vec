; ModuleID = 'PE-benchmarks/count-of-n-digit-numbers-whose-sum-of-digits-equals-to-given-sum.cpp'
source_filename = "PE-benchmarks/count-of-n-digit-numbers-whose-sum-of-digits-equals-to-given-sum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@lookup = dso_local global [101 x [501 x i64]] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i64 @_Z8countRecii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  store i64 %13, i64* %3, align 8
  br label %61

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [101 x [501 x i64]], [101 x [501 x i64]]* @lookup, i64 0, i64 %16
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [501 x i64], [501 x i64]* %17, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [101 x [501 x i64]], [101 x [501 x i64]]* @lookup, i64 0, i64 %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [501 x i64], [501 x i64]* %26, i64 0, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %61

31:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call noundef i64 @_Z8countRecii(i32 noundef %42, i32 noundef %45)
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %40, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %32, !llvm.loop !6

53:                                               ; preds = %32
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [101 x [501 x i64]], [101 x [501 x i64]]* @lookup, i64 0, i64 %56
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [501 x i64], [501 x i64]* %57, i64 0, i64 %59
  store i64 %54, i64* %60, align 8
  store i64 %54, i64* %3, align 8
  br label %61

61:                                               ; preds = %53, %23, %10
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i64 @_Z10finalCountii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([101 x [501 x i64]]* @lookup to i8*), i8 -1, i64 404808, i1 false)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 9
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %11, %12
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call noundef i64 @_Z8countRecii(i32 noundef %17, i32 noundef %20)
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %15, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7, !llvm.loop !8

28:                                               ; preds = %7
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %2, align 4
  store i32 5, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call noundef i64 @_Z10finalCountii(i32 noundef %4, i32 noundef %5)
  %7 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %6)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i64 noundef) #3

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
