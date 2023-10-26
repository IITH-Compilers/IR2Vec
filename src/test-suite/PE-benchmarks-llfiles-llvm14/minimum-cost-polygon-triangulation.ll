; ModuleID = 'PE-benchmarks/minimum-cost-polygon-triangulation.cpp'
source_filename = "PE-benchmarks/minimum-cost-polygon-triangulation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
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
%struct.Point = type { i32, i32 }

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_minimum_cost_polygon_triangulation.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef double @_Z3mindd(double noundef %0, double noundef %1) #4 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp ole double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z4dist5PointS_(i64 %0, i64 %1) #5 {
  %3 = alloca %struct.Point, align 4
  %4 = alloca %struct.Point, align 4
  %5 = bitcast %struct.Point* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.Point* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = mul nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.Point, %struct.Point* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  %28 = mul nsw i32 %22, %27
  %29 = add nsw i32 %17, %28
  %30 = call noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %29)
  ret double %30
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %0) #4 comdat {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = call double @sqrt(double noundef %4) #3
  ret double %5
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z4costP5Pointiii(%struct.Point* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = alloca %struct.Point*, align 8
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
  store %struct.Point* %0, %struct.Point** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.Point*, %struct.Point** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Point, %struct.Point* %18, i64 %20
  %22 = bitcast %struct.Point* %9 to i8*
  %23 = bitcast %struct.Point* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = load %struct.Point*, %struct.Point** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Point, %struct.Point* %24, i64 %26
  %28 = bitcast %struct.Point* %10 to i8*
  %29 = bitcast %struct.Point* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  %30 = load %struct.Point*, %struct.Point** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Point, %struct.Point* %30, i64 %32
  %34 = bitcast %struct.Point* %11 to i8*
  %35 = bitcast %struct.Point* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = bitcast %struct.Point* %12 to i8*
  %37 = bitcast %struct.Point* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 8, i1 false)
  %38 = bitcast %struct.Point* %13 to i8*
  %39 = bitcast %struct.Point* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = bitcast %struct.Point* %12 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = bitcast %struct.Point* %13 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call noundef double @_Z4dist5PointS_(i64 %41, i64 %43)
  %45 = bitcast %struct.Point* %14 to i8*
  %46 = bitcast %struct.Point* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 8, i1 false)
  %47 = bitcast %struct.Point* %15 to i8*
  %48 = bitcast %struct.Point* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = bitcast %struct.Point* %14 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = bitcast %struct.Point* %15 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call noundef double @_Z4dist5PointS_(i64 %50, i64 %52)
  %54 = fadd double %44, %53
  %55 = bitcast %struct.Point* %16 to i8*
  %56 = bitcast %struct.Point* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  %57 = bitcast %struct.Point* %17 to i8*
  %58 = bitcast %struct.Point* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  %59 = bitcast %struct.Point* %16 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = bitcast %struct.Point* %17 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call noundef double @_Z4dist5PointS_(i64 %60, i64 %62)
  %64 = fadd double %54, %63
  ret double %64
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef double @_Z5mTCDPP5Pointi(%struct.Point* noundef %0, i32 noundef %1) #5 {
  %3 = alloca double, align 8
  %4 = alloca %struct.Point*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.Point* %0, %struct.Point** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %129

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = mul nuw i64 %19, %21
  %24 = alloca double, i64 %23, align 16
  store i64 %19, i64* %7, align 8
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %117, %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %120

29:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %111, %29
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 2
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %21
  %44 = getelementptr inbounds double, double* %24, i64 %43
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  store double 0.000000e+00, double* %47, align 8
  br label %110

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, %21
  %52 = getelementptr inbounds double, double* %24, i64 %51
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  store double 1.000000e+06, double* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %106, %48
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %21
  %66 = getelementptr inbounds double, double* %24, i64 %65
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %21
  %74 = getelementptr inbounds double, double* %24, i64 %73
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fadd double %70, %78
  %80 = load %struct.Point*, %struct.Point** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call noundef double @_Z4costP5Pointiii(%struct.Point* noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83)
  %85 = fadd double %79, %84
  store double %85, double* %13, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, %21
  %89 = getelementptr inbounds double, double* %24, i64 %88
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double, double* %13, align 8
  %95 = fcmp ogt double %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %62
  %97 = load double, double* %13, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %21
  %101 = getelementptr inbounds double, double* %24, i64 %100
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  store double %97, double* %104, align 8
  br label %105

105:                                              ; preds = %96, %62
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %58, !llvm.loop !6

109:                                              ; preds = %58
  br label %110

110:                                              ; preds = %109, %40
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %31, !llvm.loop !8

116:                                              ; preds = %31
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %25, !llvm.loop !9

120:                                              ; preds = %25
  %121 = mul nsw i64 0, %21
  %122 = getelementptr inbounds double, double* %24, i64 %121
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %122, i64 %125
  %127 = load double, double* %126, align 8
  store double %127, double* %3, align 8
  %128 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %129

129:                                              ; preds = %120, %16
  %130 = load double, double* %3, align 8
  ret double %130
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #8 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %struct.Point], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [5 x %struct.Point]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = bitcast i8* %4 to [5 x %struct.Point]*
  %6 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Point, %struct.Point* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 0
  store i32 2, i32* %9, align 16
  %10 = getelementptr inbounds %struct.Point, %struct.Point* %8, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.Point, %struct.Point* %11, i32 0, i32 1
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %5, i32 0, i32 4
  %15 = getelementptr inbounds %struct.Point, %struct.Point* %14, i32 0, i32 1
  store i32 2, i32* %15, align 4
  store i32 5, i32* %3, align 4
  %16 = getelementptr inbounds [5 x %struct.Point], [5 x %struct.Point]* %2, i64 0, i64 0
  %17 = load i32, i32* %3, align 4
  %18 = call noundef double @_Z5mTCDPP5Pointi(%struct.Point* noundef %16, i32 noundef %17)
  %19 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %18)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), double noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_minimum_cost_polygon_triangulation.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }

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
!9 = distinct !{!9, !7}
