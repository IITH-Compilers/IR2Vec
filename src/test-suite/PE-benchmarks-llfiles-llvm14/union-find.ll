; ModuleID = 'PE-benchmarks/union-find.cpp'
source_filename = "PE-benchmarks/union-find.cpp"
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
%class.Graph = type { i32, i32, %class.Edge* }
%class.Edge = type { i32, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [21 x i8] c"graph contains cycle\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"graph doesn't contain cycle\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_union_find.cpp, i8* null }]

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

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef %class.Graph* @_Z11createGraphii(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.Graph*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #9
  %7 = bitcast i8* %6 to %class.Graph*
  %8 = bitcast %class.Graph* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  store %class.Graph* %7, %class.Graph** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %class.Graph*, %class.Graph** %5, align 8
  %11 = getelementptr inbounds %class.Graph, %class.Graph* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %class.Graph*, %class.Graph** %5, align 8
  %14 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %class.Graph*, %class.Graph** %5, align 8
  %16 = getelementptr inbounds %class.Graph, %class.Graph* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %19, i64 8)
  %21 = extractvalue { i64, i1 } %20, 1
  %22 = extractvalue { i64, i1 } %20, 0
  %23 = select i1 %21, i64 -1, i64 %22
  %24 = call noalias noundef nonnull i8* @_Znam(i64 noundef %23) #9
  %25 = bitcast i8* %24 to %class.Edge*
  %26 = load %class.Graph*, %class.Graph** %5, align 8
  %27 = getelementptr inbounds %class.Graph, %class.Graph* %26, i32 0, i32 2
  store %class.Edge* %25, %class.Edge** %27, align 8
  %28 = load %class.Graph*, %class.Graph** %5, align 8
  ret %class.Graph* %28
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #5

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4findPii(i32* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call noundef i32 @_Z4findPii(i32* noundef %15, i32 noundef %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z5UnionPiii(i32* noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call noundef i32 @_Z4findPii(i32* noundef %9, i32 noundef %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call noundef i32 @_Z4findPii(i32* noundef %12, i32 noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z7isCycleP5Graph(%class.Graph* noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca %class.Graph*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %class.Graph* %0, %class.Graph** %3, align 8
  %8 = load %class.Graph*, %class.Graph** %3, align 8
  %9 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 4)
  %14 = extractvalue { i64, i1 } %13, 1
  %15 = extractvalue { i64, i1 } %13, 0
  %16 = select i1 %14, i64 -1, i64 %15
  %17 = call noalias noundef nonnull i8* @_Znam(i64 noundef %16) #9
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load %class.Graph*, %class.Graph** %3, align 8
  %22 = getelementptr inbounds %class.Graph, %class.Graph* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 -1, i64 %25, i1 false)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %61, %1
  %27 = load i32, i32* %5, align 4
  %28 = load %class.Graph*, %class.Graph** %3, align 8
  %29 = getelementptr inbounds %class.Graph, %class.Graph* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load %class.Graph*, %class.Graph** %3, align 8
  %35 = getelementptr inbounds %class.Graph, %class.Graph* %34, i32 0, i32 2
  %36 = load %class.Edge*, %class.Edge** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %class.Edge, %class.Edge* %36, i64 %38
  %40 = getelementptr inbounds %class.Edge, %class.Edge* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call noundef i32 @_Z4findPii(i32* noundef %33, i32 noundef %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load %class.Graph*, %class.Graph** %3, align 8
  %45 = getelementptr inbounds %class.Graph, %class.Graph* %44, i32 0, i32 2
  %46 = load %class.Edge*, %class.Edge** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %class.Edge, %class.Edge* %46, i64 %48
  %50 = getelementptr inbounds %class.Edge, %class.Edge* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call noundef i32 @_Z4findPii(i32* noundef %43, i32 noundef %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %65

57:                                               ; preds = %32
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  call void @_Z5UnionPiii(i32* noundef %58, i32 noundef %59, i32 noundef %60)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %26, !llvm.loop !6

64:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %class.Graph*, align 8
  store i32 0, i32* %1, align 4
  store i32 3, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call noundef %class.Graph* @_Z11createGraphii(i32 noundef %5, i32 noundef %6)
  store %class.Graph* %7, %class.Graph** %4, align 8
  %8 = load %class.Graph*, %class.Graph** %4, align 8
  %9 = getelementptr inbounds %class.Graph, %class.Graph* %8, i32 0, i32 2
  %10 = load %class.Edge*, %class.Edge** %9, align 8
  %11 = getelementptr inbounds %class.Edge, %class.Edge* %10, i64 0
  %12 = getelementptr inbounds %class.Edge, %class.Edge* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %class.Graph*, %class.Graph** %4, align 8
  %14 = getelementptr inbounds %class.Graph, %class.Graph* %13, i32 0, i32 2
  %15 = load %class.Edge*, %class.Edge** %14, align 8
  %16 = getelementptr inbounds %class.Edge, %class.Edge* %15, i64 0
  %17 = getelementptr inbounds %class.Edge, %class.Edge* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %class.Graph*, %class.Graph** %4, align 8
  %19 = getelementptr inbounds %class.Graph, %class.Graph* %18, i32 0, i32 2
  %20 = load %class.Edge*, %class.Edge** %19, align 8
  %21 = getelementptr inbounds %class.Edge, %class.Edge* %20, i64 1
  %22 = getelementptr inbounds %class.Edge, %class.Edge* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %class.Graph*, %class.Graph** %4, align 8
  %24 = getelementptr inbounds %class.Graph, %class.Graph* %23, i32 0, i32 2
  %25 = load %class.Edge*, %class.Edge** %24, align 8
  %26 = getelementptr inbounds %class.Edge, %class.Edge* %25, i64 1
  %27 = getelementptr inbounds %class.Edge, %class.Edge* %26, i32 0, i32 1
  store i32 2, i32* %27, align 4
  %28 = load %class.Graph*, %class.Graph** %4, align 8
  %29 = getelementptr inbounds %class.Graph, %class.Graph* %28, i32 0, i32 2
  %30 = load %class.Edge*, %class.Edge** %29, align 8
  %31 = getelementptr inbounds %class.Edge, %class.Edge* %30, i64 2
  %32 = getelementptr inbounds %class.Edge, %class.Edge* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %class.Graph*, %class.Graph** %4, align 8
  %34 = getelementptr inbounds %class.Graph, %class.Graph* %33, i32 0, i32 2
  %35 = load %class.Edge*, %class.Edge** %34, align 8
  %36 = getelementptr inbounds %class.Edge, %class.Edge* %35, i64 2
  %37 = getelementptr inbounds %class.Edge, %class.Edge* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  %38 = load %class.Graph*, %class.Graph** %4, align 8
  %39 = call noundef i32 @_Z7isCycleP5Graph(%class.Graph* noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %0
  %42 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %45

43:                                               ; preds = %0
  %44 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %41
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_union_find.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
