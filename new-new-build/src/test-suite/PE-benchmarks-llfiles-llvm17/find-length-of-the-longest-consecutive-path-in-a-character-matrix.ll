; ModuleID = 'PE-benchmarks/find-length-of-the-longest-consecutive-path-in-a-character-matrix.cpp'
source_filename = "PE-benchmarks/find-length-of-the-longest-consecutive-path-in-a-character-matrix.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZSt3maxIiERKT_S2_S2_ = comdat any

@x = dso_local global [8 x i32] [i32 0, i32 1, i32 1, i32 -1, i32 1, i32 0, i32 -1, i32 -1], align 16
@y = dso_local global [8 x i32] [i32 1, i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 -1], align 16
@dp = dso_local global [3 x [3 x i32]] zeroinitializer, align 16
@__const.main.mat = private unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"acd", [3 x i8] c"hba", [3 x i8] c"igf"], align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z7isvalidii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = icmp sge i32 %12, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %8, %2
  store i1 false, ptr %3, align 1
  br label %19

18:                                               ; preds = %14
  store i1 true, ptr %3, align 1
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i1, ptr %3, align 1
  ret i1 %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z10isadjacentcc(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, ptr %3, align 1
  %8 = sext i8 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = icmp eq i32 %9, 1
  ret i1 %10
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z10getLenUtilPA3_ciic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i8 %3, ptr %9, align 1
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %8, align 4
  %15 = call noundef zeroext i1 @_Z7isvalidii(i32 noundef %13, i32 noundef %14)
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i8, ptr %9, align 1
  %18 = load ptr, ptr %6, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i8], ptr %18, i64 %20
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i8], ptr %21, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = call noundef zeroext i1 @_Z10isadjacentcc(i8 noundef signext %17, i8 noundef signext %25)
  br i1 %26, label %28, label %27

27:                                               ; preds = %16, %4
  store i32 0, ptr %5, align 4
  br label %86

28:                                               ; preds = %16
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x [3 x i32]], ptr @dp, i64 0, i64 %30
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i32], ptr %31, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x [3 x i32]], ptr @dp, i64 0, i64 %39
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i32], ptr %40, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %5, align 4
  br label %86

45:                                               ; preds = %28
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, ptr %11, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8
  %51 = load i32, ptr %7, align 4
  %52 = load i32, ptr %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i32], ptr @x, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = add nsw i32 %51, %55
  %57 = load i32, ptr %8, align 4
  %58 = load i32, ptr %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], ptr @y, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = add nsw i32 %57, %61
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x i8], ptr %63, i64 %65
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i8], ptr %66, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1
  %71 = call noundef i32 @_Z10getLenUtilPA3_ciic(ptr noundef %50, i32 noundef %56, i32 noundef %62, i8 noundef signext %70)
  %72 = add nsw i32 1, %71
  store i32 %72, ptr %12, align 4
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %12)
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %10, align 4
  br label %75

75:                                               ; preds = %49
  %76 = load i32, ptr %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %11, align 4
  br label %46, !llvm.loop !6

78:                                               ; preds = %46
  %79 = load i32, ptr %10, align 4
  %80 = load i32, ptr %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x [3 x i32]], ptr @dp, i64 0, i64 %81
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i32], ptr %82, i64 0, i64 %84
  store i32 %79, ptr %85, align 4
  store i32 %79, ptr %5, align 4
  br label %86

86:                                               ; preds = %78, %37, %27
  %87 = load i32, ptr %5, align 4
  ret i32 %87
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z6getLenPA3_cc(ptr noundef %0, i8 noundef signext %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  call void @llvm.memset.p0.i64(ptr align 16 @dp, i8 -1, i64 36, i1 false)
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %62, %2
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %65

13:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %58, %13
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i8], ptr %18, i64 %20
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i8], ptr %21, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, ptr %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %17
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, ptr %8, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], ptr @x, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %36, %40
  %42 = load i32, ptr %7, align 4
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i32], ptr @y, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %42, %46
  %48 = load i8, ptr %4, align 1
  %49 = call noundef i32 @_Z10getLenUtilPA3_ciic(ptr noundef %35, i32 noundef %41, i32 noundef %47, i8 noundef signext %48)
  %50 = add nsw i32 1, %49
  store i32 %50, ptr %9, align 4
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %5, align 4
  br label %53

53:                                               ; preds = %34
  %54 = load i32, ptr %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %8, align 4
  br label %31, !llvm.loop !8

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56, %17
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %14, !llvm.loop !9

61:                                               ; preds = %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %6, align 4
  br label %10, !llvm.loop !10

65:                                               ; preds = %10
  %66 = load i32, ptr %5, align 4
  ret i32 %66
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x [3 x i8]], align 1
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.mat, i64 9, i1 false)
  %3 = getelementptr inbounds [3 x [3 x i8]], ptr %2, i64 0, i64 0
  %4 = call noundef i32 @_Z6getLenPA3_cc(ptr noundef %3, i8 noundef signext 97)
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %7 = getelementptr inbounds [3 x [3 x i8]], ptr %2, i64 0, i64 0
  %8 = call noundef i32 @_Z6getLenPA3_cc(ptr noundef %7, i8 noundef signext 101)
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %11 = getelementptr inbounds [3 x [3 x i8]], ptr %2, i64 0, i64 0
  %12 = call noundef i32 @_Z6getLenPA3_cc(ptr noundef %11, i8 noundef signext 98)
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %15 = getelementptr inbounds [3 x [3 x i8]], ptr %2, i64 0, i64 0
  %16 = call noundef i32 @_Z6getLenPA3_cc(ptr noundef %15, i8 noundef signext 102)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git d097f430a172a5d798a39b416b1af84f4ec572e1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
