; ModuleID = 'PE-benchmarks/largest-independent-set-problem.cpp'
source_filename = "PE-benchmarks/largest-independent-set-problem.cpp"
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
%class.node = type { i32, i32, %class.node*, %class.node* }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [40 x i8] c"Size of the Largest Independent Set is \00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4LISSP4node(%class.node* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %class.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.node* %0, %class.node** %3, align 8
  %6 = load %class.node*, %class.node** %3, align 8
  %7 = icmp eq %class.node* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

9:                                                ; preds = %1
  %10 = load %class.node*, %class.node** %3, align 8
  %11 = getelementptr inbounds %class.node, %class.node* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %class.node*, %class.node** %3, align 8
  %16 = getelementptr inbounds %class.node, %class.node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %9
  %19 = load %class.node*, %class.node** %3, align 8
  %20 = getelementptr inbounds %class.node, %class.node* %19, i32 0, i32 2
  %21 = load %class.node*, %class.node** %20, align 8
  %22 = icmp eq %class.node* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %class.node*, %class.node** %3, align 8
  %25 = getelementptr inbounds %class.node, %class.node* %24, i32 0, i32 3
  %26 = load %class.node*, %class.node** %25, align 8
  %27 = icmp eq %class.node* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %class.node*, %class.node** %3, align 8
  %30 = getelementptr inbounds %class.node, %class.node* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  store i32 1, i32* %2, align 4
  br label %91

31:                                               ; preds = %23, %18
  %32 = load %class.node*, %class.node** %3, align 8
  %33 = getelementptr inbounds %class.node, %class.node* %32, i32 0, i32 2
  %34 = load %class.node*, %class.node** %33, align 8
  %35 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %34)
  %36 = load %class.node*, %class.node** %3, align 8
  %37 = getelementptr inbounds %class.node, %class.node* %36, i32 0, i32 3
  %38 = load %class.node*, %class.node** %37, align 8
  %39 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %38)
  %40 = add nsw i32 %35, %39
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %41 = load %class.node*, %class.node** %3, align 8
  %42 = getelementptr inbounds %class.node, %class.node* %41, i32 0, i32 2
  %43 = load %class.node*, %class.node** %42, align 8
  %44 = icmp ne %class.node* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %31
  %46 = load %class.node*, %class.node** %3, align 8
  %47 = getelementptr inbounds %class.node, %class.node* %46, i32 0, i32 2
  %48 = load %class.node*, %class.node** %47, align 8
  %49 = getelementptr inbounds %class.node, %class.node* %48, i32 0, i32 2
  %50 = load %class.node*, %class.node** %49, align 8
  %51 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %50)
  %52 = load %class.node*, %class.node** %3, align 8
  %53 = getelementptr inbounds %class.node, %class.node* %52, i32 0, i32 2
  %54 = load %class.node*, %class.node** %53, align 8
  %55 = getelementptr inbounds %class.node, %class.node* %54, i32 0, i32 3
  %56 = load %class.node*, %class.node** %55, align 8
  %57 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %56)
  %58 = add nsw i32 %51, %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %45, %31
  %62 = load %class.node*, %class.node** %3, align 8
  %63 = getelementptr inbounds %class.node, %class.node* %62, i32 0, i32 3
  %64 = load %class.node*, %class.node** %63, align 8
  %65 = icmp ne %class.node* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %class.node*, %class.node** %3, align 8
  %68 = getelementptr inbounds %class.node, %class.node* %67, i32 0, i32 3
  %69 = load %class.node*, %class.node** %68, align 8
  %70 = getelementptr inbounds %class.node, %class.node* %69, i32 0, i32 2
  %71 = load %class.node*, %class.node** %70, align 8
  %72 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %71)
  %73 = load %class.node*, %class.node** %3, align 8
  %74 = getelementptr inbounds %class.node, %class.node* %73, i32 0, i32 3
  %75 = load %class.node*, %class.node** %74, align 8
  %76 = getelementptr inbounds %class.node, %class.node* %75, i32 0, i32 3
  %77 = load %class.node*, %class.node** %76, align 8
  %78 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %77)
  %79 = add nsw i32 %72, %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %66, %61
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call noundef i32 @_Z3maxii(i32 noundef %83, i32 noundef %84)
  %86 = load %class.node*, %class.node** %3, align 8
  %87 = getelementptr inbounds %class.node, %class.node* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %class.node*, %class.node** %3, align 8
  %89 = getelementptr inbounds %class.node, %class.node* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %82, %28, %14, %8
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef %class.node* @_Z7newNodei(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %class.node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 24) #6
  %5 = bitcast i8* %4 to %class.node*
  %6 = bitcast %class.node* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 24, i1 false)
  store %class.node* %5, %class.node** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %class.node*, %class.node** %3, align 8
  %9 = getelementptr inbounds %class.node, %class.node* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %class.node*, %class.node** %3, align 8
  %11 = getelementptr inbounds %class.node, %class.node* %10, i32 0, i32 3
  store %class.node* null, %class.node** %11, align 8
  %12 = load %class.node*, %class.node** %3, align 8
  %13 = getelementptr inbounds %class.node, %class.node* %12, i32 0, i32 2
  store %class.node* null, %class.node** %13, align 8
  %14 = load %class.node*, %class.node** %3, align 8
  %15 = getelementptr inbounds %class.node, %class.node* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %class.node*, %class.node** %3, align 8
  ret %class.node* %16
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca %class.node*, align 8
  store i32 0, i32* %1, align 4
  %3 = call noundef %class.node* @_Z7newNodei(i32 noundef 20)
  store %class.node* %3, %class.node** %2, align 8
  %4 = call noundef %class.node* @_Z7newNodei(i32 noundef 8)
  %5 = load %class.node*, %class.node** %2, align 8
  %6 = getelementptr inbounds %class.node, %class.node* %5, i32 0, i32 2
  store %class.node* %4, %class.node** %6, align 8
  %7 = call noundef %class.node* @_Z7newNodei(i32 noundef 4)
  %8 = load %class.node*, %class.node** %2, align 8
  %9 = getelementptr inbounds %class.node, %class.node* %8, i32 0, i32 2
  %10 = load %class.node*, %class.node** %9, align 8
  %11 = getelementptr inbounds %class.node, %class.node* %10, i32 0, i32 2
  store %class.node* %7, %class.node** %11, align 8
  %12 = call noundef %class.node* @_Z7newNodei(i32 noundef 12)
  %13 = load %class.node*, %class.node** %2, align 8
  %14 = getelementptr inbounds %class.node, %class.node* %13, i32 0, i32 2
  %15 = load %class.node*, %class.node** %14, align 8
  %16 = getelementptr inbounds %class.node, %class.node* %15, i32 0, i32 3
  store %class.node* %12, %class.node** %16, align 8
  %17 = call noundef %class.node* @_Z7newNodei(i32 noundef 10)
  %18 = load %class.node*, %class.node** %2, align 8
  %19 = getelementptr inbounds %class.node, %class.node* %18, i32 0, i32 2
  %20 = load %class.node*, %class.node** %19, align 8
  %21 = getelementptr inbounds %class.node, %class.node* %20, i32 0, i32 3
  %22 = load %class.node*, %class.node** %21, align 8
  %23 = getelementptr inbounds %class.node, %class.node* %22, i32 0, i32 2
  store %class.node* %17, %class.node** %23, align 8
  %24 = call noundef %class.node* @_Z7newNodei(i32 noundef 14)
  %25 = load %class.node*, %class.node** %2, align 8
  %26 = getelementptr inbounds %class.node, %class.node* %25, i32 0, i32 2
  %27 = load %class.node*, %class.node** %26, align 8
  %28 = getelementptr inbounds %class.node, %class.node* %27, i32 0, i32 3
  %29 = load %class.node*, %class.node** %28, align 8
  %30 = getelementptr inbounds %class.node, %class.node* %29, i32 0, i32 3
  store %class.node* %24, %class.node** %30, align 8
  %31 = call noundef %class.node* @_Z7newNodei(i32 noundef 22)
  %32 = load %class.node*, %class.node** %2, align 8
  %33 = getelementptr inbounds %class.node, %class.node* %32, i32 0, i32 3
  store %class.node* %31, %class.node** %33, align 8
  %34 = call noundef %class.node* @_Z7newNodei(i32 noundef 25)
  %35 = load %class.node*, %class.node** %2, align 8
  %36 = getelementptr inbounds %class.node, %class.node* %35, i32 0, i32 3
  %37 = load %class.node*, %class.node** %36, align 8
  %38 = getelementptr inbounds %class.node, %class.node* %37, i32 0, i32 3
  store %class.node* %34, %class.node** %38, align 8
  %39 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %40 = load %class.node*, %class.node** %2, align 8
  %41 = call noundef i32 @_Z4LISSP4node(%class.node* noundef %40)
  %42 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %39, i32 noundef %41)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #5

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.1-++20220402053234+23d08271a4b2-1~exp1~20220402053315.111"}
