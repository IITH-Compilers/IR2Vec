; ModuleID = 'PE-benchmarks/coin-change.cpp'
source_filename = "PE-benchmarks/coin-change.cpp"
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
@__const.main.arr = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_coin_change.cpp, ptr null }]

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
define dso_local noundef i32 @_Z5countPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %14 = load i32, ptr %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %5, align 4
  %18 = zext i32 %17 to i64
  %19 = call ptr @llvm.stacksave()
  store ptr %19, ptr %11, align 8
  %20 = mul nuw i64 %16, %18
  %21 = alloca i32, i64 %20, align 16
  store i64 %16, ptr %12, align 8
  store i64 %18, ptr %13, align 8
  store i32 0, ptr %7, align 4
  br label %22

22:                                               ; preds = %32, %3
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = mul nsw i64 0, %18
  %28 = getelementptr inbounds i32, ptr %21, i64 %27
  %29 = load i32, ptr %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  store i32 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %22, !llvm.loop !6

35:                                               ; preds = %22
  store i32 1, ptr %7, align 4
  br label %36

36:                                               ; preds = %102, %35
  %37 = load i32, ptr %7, align 4
  %38 = load i32, ptr %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %105

41:                                               ; preds = %36
  store i32 0, ptr %8, align 4
  br label %42

42:                                               ; preds = %98, %41
  %43 = load i32, ptr %8, align 4
  %44 = load i32, ptr %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = load i32, ptr %7, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = sub nsw i32 %47, %52
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i32, ptr %7, align 4
  %57 = load ptr, ptr %4, align 8
  %58 = load i32, ptr %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = sub nsw i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %18
  %65 = getelementptr inbounds i32, ptr %21, i64 %64
  %66 = load i32, ptr %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %65, i64 %67
  %69 = load i32, ptr %68, align 4
  br label %71

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %55
  %72 = phi i32 [ %69, %55 ], [ 0, %70 ]
  store i32 %72, ptr %9, align 4
  %73 = load i32, ptr %8, align 4
  %74 = icmp sge i32 %73, 1
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, ptr %7, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, %18
  %79 = getelementptr inbounds i32, ptr %21, i64 %78
  %80 = load i32, ptr %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %79, i64 %82
  %84 = load i32, ptr %83, align 4
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %75
  %87 = phi i32 [ %84, %75 ], [ 0, %85 ]
  store i32 %87, ptr %10, align 4
  %88 = load i32, ptr %9, align 4
  %89 = load i32, ptr %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, ptr %7, align 4
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %18
  %94 = getelementptr inbounds i32, ptr %21, i64 %93
  %95 = load i32, ptr %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  store i32 %90, ptr %97, align 4
  br label %98

98:                                               ; preds = %86
  %99 = load i32, ptr %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %8, align 4
  br label %42, !llvm.loop !8

101:                                              ; preds = %42
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %7, align 4
  br label %36, !llvm.loop !9

105:                                              ; preds = %36
  %106 = load i32, ptr %6, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, %18
  %109 = getelementptr inbounds i32, ptr %21, i64 %108
  %110 = load i32, ptr %5, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %109, i64 %112
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %11, align 8
  call void @llvm.stackrestore(ptr %115)
  ret i32 %114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #5

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #6 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 @__const.main.arr, i64 12, i1 false)
  store i32 3, ptr %3, align 4
  store i32 4, ptr %4, align 4
  %5 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call noundef i32 @_Z5countPiii(ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_coin_change.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231208085846+6009708b4367-1~exp1~20231208085949.74)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
