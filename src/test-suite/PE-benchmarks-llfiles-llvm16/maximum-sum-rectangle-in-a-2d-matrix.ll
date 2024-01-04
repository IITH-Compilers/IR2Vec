; ModuleID = 'PE-benchmarks/maximum-sum-rectangle-in-a-2d-matrix.cpp'
source_filename = "PE-benchmarks/maximum-sum-rectangle-in-a-2d-matrix.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [14 x i8] c"(Top, Left) (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(Bottom, Right) (\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Max sum is: \00", align 1
@__const.main.M = private unnamed_addr constant [4 x [5 x i32]] [[5 x i32] [i32 1, i32 2, i32 -1, i32 -4, i32 -20], [5 x i32] [i32 -8, i32 -3, i32 4, i32 2, i32 1], [5 x i32] [i32 3, i32 8, i32 10, i32 1, i32 3], [5 x i32] [i32 -4, i32 -1, i32 1, i32 7, i32 -6]], align 16

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z6kadanePiS_S_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 -2147483648, ptr %11, align 4
  %14 = load ptr, ptr %8, align 8
  store i32 -1, ptr %14, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %12, align 4
  br label %15

15:                                               ; preds = %44, %4
  %16 = load i32, ptr %12, align 4
  %17 = load i32, ptr %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %10, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, ptr %10, align 4
  %27 = load i32, ptr %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  store i32 0, ptr %10, align 4
  %30 = load i32, ptr %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %13, align 4
  br label %43

32:                                               ; preds = %19
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %11, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, ptr %10, align 4
  store i32 %37, ptr %11, align 4
  %38 = load i32, ptr %13, align 4
  %39 = load ptr, ptr %7, align 8
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %12, align 4
  %41 = load ptr, ptr %8, align 8
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %36, %32
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %12, align 4
  br label %15, !llvm.loop !6

47:                                               ; preds = %15
  %48 = load ptr, ptr %8, align 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, ptr %11, align 4
  store i32 %52, ptr %5, align 4
  br label %86

53:                                               ; preds = %47
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds i32, ptr %54, i64 0
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %11, align 4
  %57 = load ptr, ptr %8, align 8
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %7, align 8
  store i32 0, ptr %58, align 4
  store i32 1, ptr %12, align 4
  br label %59

59:                                               ; preds = %81, %53
  %60 = load i32, ptr %12, align 4
  %61 = load i32, ptr %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %64, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %11, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load ptr, ptr %6, align 8
  %73 = load i32, ptr %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %11, align 4
  %77 = load i32, ptr %12, align 4
  %78 = load ptr, ptr %8, align 8
  store i32 %77, ptr %78, align 4
  %79 = load ptr, ptr %7, align 8
  store i32 %77, ptr %79, align 4
  br label %80

80:                                               ; preds = %71, %63
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %12, align 4
  br label %59, !llvm.loop !8

84:                                               ; preds = %59
  %85 = load i32, ptr %11, align 4
  store i32 %85, ptr %5, align 4
  br label %86

86:                                               ; preds = %84, %51
  %87 = load i32, ptr %5, align 4
  ret i32 %87
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z10findMaxSumPA5_i(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 -2147483648, ptr %3, align 4
  store i32 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i32, ptr %8, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 16, i1 false)
  %20 = load i32, ptr %8, align 4
  store i32 %20, ptr %9, align 4
  br label %21

21:                                               ; preds = %58, %18
  %22 = load i32, ptr %9, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  store i32 0, ptr %10, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, ptr %10, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load ptr, ptr %2, align 8
  %30 = load i32, ptr %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], ptr %29, i64 %31
  %33 = load i32, ptr %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], ptr %32, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, ptr %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %10, align 4
  br label %25, !llvm.loop !9

45:                                               ; preds = %25
  %46 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 0
  %47 = call noundef i32 @_Z6kadanePiS_S_i(ptr noundef %46, ptr noundef %13, ptr noundef %14, i32 noundef 4)
  store i32 %47, ptr %12, align 4
  %48 = load i32, ptr %12, align 4
  %49 = load i32, ptr %3, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, ptr %12, align 4
  store i32 %52, ptr %3, align 4
  %53 = load i32, ptr %8, align 4
  store i32 %53, ptr %4, align 4
  %54 = load i32, ptr %9, align 4
  store i32 %54, ptr %5, align 4
  %55 = load i32, ptr %13, align 4
  store i32 %55, ptr %6, align 4
  %56 = load i32, ptr %14, align 4
  store i32 %56, ptr %7, align 4
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %9, align 4
  br label %21, !llvm.loop !10

61:                                               ; preds = %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %8, align 4
  br label %15, !llvm.loop !11

65:                                               ; preds = %15
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %67 = load i32, ptr %6, align 4
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef %67)
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef @.str.1)
  %70 = load i32, ptr %4, align 4
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef %70)
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef @.str.2)
  %73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3)
  %75 = load i32, ptr %7, align 4
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %74, i32 noundef %75)
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef @.str.1)
  %78 = load i32, ptr %5, align 4
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %77, i32 noundef %78)
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef @.str.2)
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4)
  %83 = load i32, ptr %3, align 4
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %82, i32 noundef %83)
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [5 x i32]], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.M, i64 80, i1 false)
  %3 = getelementptr inbounds [4 x [5 x i32]], ptr %2, i64 0, i64 0
  call void @_Z10findMaxSumPA5_i(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
