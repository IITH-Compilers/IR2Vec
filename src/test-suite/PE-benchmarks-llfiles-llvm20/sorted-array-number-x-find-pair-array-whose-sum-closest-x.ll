; ModuleID = 'PE-benchmarks/sorted-array-number-x-find-pair-array-whose-sum-closest-x.cpp'
source_filename = "PE-benchmarks/sorted-array-number-x-find-pair-array-whose-sum-closest-x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [22 x i8] c" The closest pair is \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 10, i32 22, i32 28, i32 29, i32 30, i32 40], align 16

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z12printClosestPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %9, align 4
  %12 = load i32, ptr %5, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, ptr %10, align 4
  store i32 2147483647, ptr %11, align 4
  br label %14

14:                                               ; preds = %72, %3
  %15 = load i32, ptr %10, align 4
  %16 = load i32, ptr %9, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %23, %28
  %30 = load i32, ptr %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = load i32, ptr %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %18
  %36 = load i32, ptr %9, align 4
  store i32 %36, ptr %7, align 4
  %37 = load i32, ptr %10, align 4
  store i32 %37, ptr %8, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %42, %47
  %49 = load i32, ptr %6, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @llvm.abs.i32(i32 %50, i1 true)
  store i32 %51, ptr %11, align 4
  br label %52

52:                                               ; preds = %35, %18
  %53 = load ptr, ptr %4, align 8
  %54 = load i32, ptr %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = add nsw i32 %57, %62
  %64 = load i32, ptr %6, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32, ptr %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %10, align 4
  br label %72

69:                                               ; preds = %52
  %70 = load i32, ptr %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %9, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %14, !llvm.loop !6

73:                                               ; preds = %14
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %75 = load ptr, ptr %4, align 8
  %76 = load i32, ptr %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %75, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %74, i32 noundef %79)
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef @.str.1)
  %82 = load ptr, ptr %4, align 8
  %83 = load i32, ptr %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %82, i64 %84
  %86 = load i32, ptr %85, align 4
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %81, i32 noundef %86)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 24, i1 false)
  store i32 54, ptr %3, align 4
  store i32 6, ptr %4, align 4
  %5 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %3, align 4
  call void @_Z12printClosestPiii(ptr noundef %5, i32 noundef %6, i32 noundef %7)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.0 (++20250204023448+d185bd94ff77-1~exp1~20250204023606.14)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
