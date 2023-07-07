; ModuleID = 'PE-benchmarks/minimum-number-of-jumps-to-reach-end-of-a-given-array.cpp'
source_filename = "PE-benchmarks/minimum-number-of-jumps-to-reach-end-of-a-given-array.cpp"
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
@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 6, i32 1, i32 0, i32 9], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [41 x i8] c"Minimum number of jumps to reach end is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_minimum_number_of_jumps_to_reach_end_of_a_given_array.cpp, ptr null }]

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
define dso_local noundef i32 @_Z3minii(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %5, %6
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

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z8minJumpsPii(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 4)
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  %14 = select i1 %12, i64 -1, i64 %13
  %15 = call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #10
  store ptr %15, ptr %6, align 8
  %16 = load i32, ptr %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 0
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store i32 2147483647, ptr %3, align 4
  br label %89

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds i32, ptr %25, i64 0
  store i32 0, ptr %26, align 4
  store i32 1, ptr %7, align 4
  br label %27

27:                                               ; preds = %79, %24
  %28 = load i32, ptr %7, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  store i32 2147483647, ptr %35, align 4
  store i32 0, ptr %8, align 4
  br label %36

36:                                               ; preds = %75, %31
  %37 = load i32, ptr %8, align 4
  %38 = load i32, ptr %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %42, %47
  %49 = icmp sle i32 %41, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %40
  %51 = load ptr, ptr %6, align 8
  %52 = load i32, ptr %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %51, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 2147483647
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %63, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = call noundef i32 @_Z3minii(i32 noundef %62, i32 noundef %68)
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %70, i64 %72
  store i32 %69, ptr %73, align 4
  br label %78

74:                                               ; preds = %50, %40
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %8, align 4
  br label %36, !llvm.loop !6

78:                                               ; preds = %57, %36
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %7, align 4
  br label %27, !llvm.loop !8

82:                                               ; preds = %27
  %83 = load ptr, ptr %6, align 8
  %84 = load i32, ptr %5, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %3, align 4
  br label %89

89:                                               ; preds = %82, %23
  %90 = load i32, ptr %3, align 4
  ret i32 %90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #7

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #8 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 24, i1 false)
  store i32 6, ptr %3, align 4
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %5 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %3, align 4
  %7 = call noundef i32 @_Z8minJumpsPii(ptr noundef %5, i32 noundef %6)
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %7)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_minimum_number_of_jumps_to_reach_end_of_a_given_array.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { builtin allocsize(0) }

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
