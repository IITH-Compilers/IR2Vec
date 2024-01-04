; ModuleID = 'PE-benchmarks/sort-n-numbers-range-0-n2-1-linear-time.cpp'
source_filename = "PE-benchmarks/sort-n-numbers-range-0-n2-1-linear-time.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 40, i32 12, i32 45, i32 32, i32 33, i32 1, i32 22], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"Given array is n\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nSorted array is n\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z9countSortPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %12 = load i32, ptr %5, align 4
  %13 = zext i32 %12 to i64
  %14 = call ptr @llvm.stacksave()
  store ptr %14, ptr %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, ptr %8, align 8
  %16 = load i32, ptr %5, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, ptr %10, align 8
  store i32 0, ptr %11, align 4
  br label %19

19:                                               ; preds = %27, %3
  %20 = load i32, ptr %11, align 4
  %21 = load i32, ptr %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %18, i64 %25
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %11, align 4
  br label %19, !llvm.loop !6

30:                                               ; preds = %19
  store i32 0, ptr %9, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, ptr %9, align 4
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %6, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, ptr %5, align 4
  %44 = srem i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %18, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, ptr %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %9, align 4
  br label %31, !llvm.loop !8

52:                                               ; preds = %31
  store i32 1, ptr %9, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, ptr %9, align 4
  %55 = load i32, ptr %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32, ptr %9, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %18, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %18, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = add nsw i32 %66, %62
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %57
  %69 = load i32, ptr %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %9, align 4
  br label %53, !llvm.loop !9

71:                                               ; preds = %53
  %72 = load i32, ptr %5, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, ptr %9, align 4
  br label %74

74:                                               ; preds = %111, %71
  %75 = load i32, ptr %9, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = load i32, ptr %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %83, i64 %85
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %6, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, ptr %5, align 4
  %91 = srem i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %18, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %15, i64 %96
  store i32 %82, ptr %97, align 4
  %98 = load ptr, ptr %4, align 8
  %99 = load i32, ptr %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %98, i64 %100
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %6, align 4
  %104 = sdiv i32 %102, %103
  %105 = load i32, ptr %5, align 4
  %106 = srem i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %18, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %77
  %112 = load i32, ptr %9, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, ptr %9, align 4
  br label %74, !llvm.loop !10

114:                                              ; preds = %74
  store i32 0, ptr %9, align 4
  br label %115

115:                                              ; preds = %128, %114
  %116 = load i32, ptr %9, align 4
  %117 = load i32, ptr %5, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32, ptr %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %15, i64 %121
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %4, align 8
  %125 = load i32, ptr %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %124, i64 %126
  store i32 %123, ptr %127, align 4
  br label %128

128:                                              ; preds = %119
  %129 = load i32, ptr %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %9, align 4
  br label %115, !llvm.loop !11

131:                                              ; preds = %115
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z4sortPii(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = call noundef i32 @_Z9countSortPiii(ptr noundef %5, i32 noundef %6, i32 noundef 1)
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %4, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call noundef i32 @_Z9countSortPiii(ptr noundef %8, i32 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z8printArrPii(ptr noundef %0, i32 noundef %1) #3 {
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
  br label %6, !llvm.loop !12

21:                                               ; preds = %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #5 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 28, i1 false)
  store i32 7, ptr %3, align 4
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %5 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %3, align 4
  call void @_Z8printArrPii(ptr noundef %5, i32 noundef %6)
  %7 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 0
  %8 = load i32, ptr %3, align 4
  call void @_Z4sortPii(ptr noundef %7, i32 noundef %8)
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %10 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 0
  %11 = load i32, ptr %3, align 4
  call void @_Z8printArrPii(ptr noundef %10, i32 noundef %11)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!12 = distinct !{!12, !7}
