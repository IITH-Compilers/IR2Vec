; ModuleID = 'PE-benchmarks/minimum-cost-polygon-triangulation.cpp'
source_filename = "PE-benchmarks/minimum-cost-polygon-triangulation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.Point = type { i32, i32 }

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef double @_Z3mindd(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %4, align 8
  %7 = fcmp ole double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, ptr %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load double, ptr %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z4dist5PointS_(i64 %0, i64 %1) #1 {
  %3 = alloca %struct.Point, align 4
  %4 = alloca %struct.Point, align 4
  store i64 %0, ptr %3, align 4
  store i64 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.Point, ptr %3, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.Point, ptr %4, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = sub nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.Point, ptr %3, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.Point, ptr %4, i32 0, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 %11, %13
  %15 = mul nsw i32 %9, %14
  %16 = getelementptr inbounds %struct.Point, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.Point, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub nsw i32 %17, %19
  %21 = getelementptr inbounds %struct.Point, ptr %3, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.Point, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = mul nsw i32 %20, %25
  %27 = add nsw i32 %15, %26
  %28 = call noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %27)
  ret double %28
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %0) #0 comdat {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = call double @sqrt(double noundef %4) #8
  ret double %5
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z4costP5Pointiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Point, align 4
  %10 = alloca %struct.Point, align 4
  %11 = alloca %struct.Point, align 4
  %12 = alloca %struct.Point, align 4
  %13 = alloca %struct.Point, align 4
  %14 = alloca %struct.Point, align 4
  %15 = alloca %struct.Point, align 4
  %16 = alloca %struct.Point, align 4
  %17 = alloca %struct.Point, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Point, ptr %18, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %21, i64 8, i1 false)
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Point, ptr %22, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %25, i64 8, i1 false)
  %26 = load ptr, ptr %5, align 8
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Point, ptr %26, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %29, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %9, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %10, i64 8, i1 false)
  %30 = load i64, ptr %12, align 4
  %31 = load i64, ptr %13, align 4
  %32 = call noundef double @_Z4dist5PointS_(i64 %30, i64 %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %10, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %11, i64 8, i1 false)
  %33 = load i64, ptr %14, align 4
  %34 = load i64, ptr %15, align 4
  %35 = call noundef double @_Z4dist5PointS_(i64 %33, i64 %34)
  %36 = fadd double %32, %35
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %11, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %9, i64 8, i1 false)
  %37 = load i64, ptr %16, align 4
  %38 = load i64, ptr %17, align 4
  %39 = call noundef double @_Z4dist5PointS_(i64 %37, i64 %38)
  %40 = fadd double %36, %39
  ret double %40
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z5mTCDPP5Pointi(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca double, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store double 0.000000e+00, ptr %3, align 8
  br label %129

17:                                               ; preds = %2
  %18 = load i32, ptr %5, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, ptr %5, align 4
  %21 = zext i32 %20 to i64
  %22 = call ptr @llvm.stacksave()
  store ptr %22, ptr %6, align 8
  %23 = mul nuw i64 %19, %21
  %24 = alloca double, i64 %23, align 16
  store i64 %19, ptr %7, align 8
  store i64 %21, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %25

25:                                               ; preds = %117, %17
  %26 = load i32, ptr %9, align 4
  %27 = load i32, ptr %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %120

29:                                               ; preds = %25
  store i32 0, ptr %10, align 4
  %30 = load i32, ptr %9, align 4
  store i32 %30, ptr %11, align 4
  br label %31

31:                                               ; preds = %111, %29
  %32 = load i32, ptr %11, align 4
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  %36 = load i32, ptr %11, align 4
  %37 = load i32, ptr %10, align 4
  %38 = add nsw i32 %37, 2
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, ptr %10, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %21
  %44 = getelementptr inbounds double, ptr %24, i64 %43
  %45 = load i32, ptr %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %44, i64 %46
  store double 0.000000e+00, ptr %47, align 8
  br label %110

48:                                               ; preds = %35
  %49 = load i32, ptr %10, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, %21
  %52 = getelementptr inbounds double, ptr %24, i64 %51
  %53 = load i32, ptr %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %52, i64 %54
  store double 1.000000e+06, ptr %55, align 8
  %56 = load i32, ptr %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %12, align 4
  br label %58

58:                                               ; preds = %106, %48
  %59 = load i32, ptr %12, align 4
  %60 = load i32, ptr %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %58
  %63 = load i32, ptr %10, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %21
  %66 = getelementptr inbounds double, ptr %24, i64 %65
  %67 = load i32, ptr %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %66, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = load i32, ptr %12, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %21
  %74 = getelementptr inbounds double, ptr %24, i64 %73
  %75 = load i32, ptr %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %74, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = fadd double %70, %78
  %80 = load ptr, ptr %4, align 8
  %81 = load i32, ptr %10, align 4
  %82 = load i32, ptr %11, align 4
  %83 = load i32, ptr %12, align 4
  %84 = call noundef double @_Z4costP5Pointiii(ptr noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83)
  %85 = fadd double %79, %84
  store double %85, ptr %13, align 8
  %86 = load i32, ptr %10, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, %21
  %89 = getelementptr inbounds double, ptr %24, i64 %88
  %90 = load i32, ptr %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = load double, ptr %13, align 8
  %95 = fcmp ogt double %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %62
  %97 = load double, ptr %13, align 8
  %98 = load i32, ptr %10, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %21
  %101 = getelementptr inbounds double, ptr %24, i64 %100
  %102 = load i32, ptr %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, ptr %101, i64 %103
  store double %97, ptr %104, align 8
  br label %105

105:                                              ; preds = %96, %62
  br label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %12, align 4
  br label %58, !llvm.loop !6

109:                                              ; preds = %58
  br label %110

110:                                              ; preds = %109, %40
  br label %111

111:                                              ; preds = %110
  %112 = load i32, ptr %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %10, align 4
  %114 = load i32, ptr %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %11, align 4
  br label %31, !llvm.loop !8

116:                                              ; preds = %31
  br label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %9, align 4
  br label %25, !llvm.loop !9

120:                                              ; preds = %25
  %121 = mul nsw i64 0, %21
  %122 = getelementptr inbounds double, ptr %24, i64 %121
  %123 = load i32, ptr %5, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr %122, i64 %125
  %127 = load double, ptr %126, align 8
  store double %127, ptr %3, align 8
  %128 = load ptr, ptr %6, align 8
  call void @llvm.stackrestore(ptr %128)
  br label %129

129:                                              ; preds = %120, %16
  %130 = load double, ptr %3, align 8
  ret double %130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %struct.Point], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds [5 x %struct.Point], ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Point, ptr %4, i32 0, i32 0
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds [5 x %struct.Point], ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.Point, ptr %6, i32 0, i32 0
  store i32 2, ptr %7, align 16
  %8 = getelementptr inbounds %struct.Point, ptr %6, i32 0, i32 1
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds [5 x %struct.Point], ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.Point, ptr %9, i32 0, i32 0
  store i32 1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.Point, ptr %9, i32 0, i32 1
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds [5 x %struct.Point], ptr %2, i32 0, i32 4
  %13 = getelementptr inbounds %struct.Point, ptr %12, i32 0, i32 1
  store i32 2, ptr %13, align 4
  store i32 5, ptr %3, align 4
  %14 = getelementptr inbounds [5 x %struct.Point], ptr %2, i64 0, i64 0
  %15 = load i32, ptr %3, align 4
  %16 = call noundef double @_Z5mTCDPP5Pointi(ptr noundef %14, i32 noundef %15)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %16)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) #6

; Function Attrs: nounwind
declare double @sqrt(double noundef) #7

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
