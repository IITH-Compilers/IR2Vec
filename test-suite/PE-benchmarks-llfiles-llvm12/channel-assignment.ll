; ModuleID = 'PE-benchmarks/channel-assignment.cpp'
source_filename = "PE-benchmarks/channel-assignment.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [56 x i8] c"The number of maximum packets sent in the time slot is \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-> R\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_channel_assignment.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable mustprogress
define dso_local zeroext i1 @_Z3bpmPA4_iiPbPi([4 x i32]* %0, i32 %1, i8* %2, i32* %3) #4 {
  %5 = alloca i1, align 1
  %6 = alloca [4 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %60, %4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %63

14:                                               ; preds = %11
  %15 = load [4 x i32]*, [4 x i32]** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 %17
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %14
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %59, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 1, i8* %35, align 1
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %31
  %43 = load [4 x i32]*, [4 x i32]** %6, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call zeroext i1 @_Z3bpmPA4_iiPbPi([4 x i32]* %43, i32 %48, i8* %49, i32* %50)
  br i1 %51, label %52, label %58

52:                                               ; preds = %42, %31
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  store i1 true, i1* %5, align 1
  br label %64

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %24, %14
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %11, !llvm.loop !2

63:                                               ; preds = %11
  store i1 false, i1* %5, align 1
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i1, i1* %5, align 1
  ret i1 %65
}

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z6maxBPMPA4_i([4 x i32]* %0) #4 {
  %2 = alloca [4 x i32]*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %2, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %9 = bitcast i32* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 -1, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 4, i1 false)
  %15 = load [4 x i32]*, [4 x i32]** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %19 = call zeroext i1 @_Z3bpmPA4_iiPbPi([4 x i32]* %15, i32 %16, i8* %17, i32* %18)
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10, !llvm.loop !4

27:                                               ; preds = %10
  %28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %28, i32 %29)
  %31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %56, %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %43, i32 %48)
  %50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  %53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %50, i32 %52)
  %54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %42, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %32, !llvm.loop !5

59:                                               ; preds = %32
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #6 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x [4 x i32]], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [3 x [4 x i32]]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 48, i1 false)
  %5 = bitcast i8* %4 to [3 x [4 x i32]]*
  %6 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i32 0, i32 0
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 3, i32* %9, align 16
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %5, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 0
  store i32 2, i32* %12, align 16
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i32 0, i32 1
  store i32 4, i32* %13, align 4
  %14 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %2, i64 0, i64 0
  %15 = call i32 @_Z6maxBPMPA4_i([4 x i32]* %14)
  store i32 %15, i32* %3, align 4
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_channel_assignment.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
