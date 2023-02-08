; ModuleID = 'PE-benchmarks/magic-square.cpp'
source_filename = "PE-benchmarks/magic-square.cpp"
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
@.str = private unnamed_addr constant [24 x i8] c"The Magic Square for n=\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c":\0ASum of each row or column \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c":\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_magic_square.cpp, i8* null }]

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
define dso_local void @_Z14generateSquarei(i32 %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = mul nuw i64 %10, %12
  %15 = alloca i32, i64 %14, align 16
  store i64 %10, i64* %4, align 8
  store i64 %12, i64* %5, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = mul nuw i64 %10, %12
  %18 = mul nuw i64 4, %17
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 %18, i1 false)
  %19 = load i32, i32* %2, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %76, %61, %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = mul nsw i32 %25, %26
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %51

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, %12
  %55 = getelementptr inbounds i32, i32* %15, i64 %54
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %23, !llvm.loop !2

66:                                               ; preds = %51
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %12
  %72 = getelementptr inbounds i32, i32* %15, i64 %71
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %67, i32* %75, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  br label %23, !llvm.loop !2

81:                                               ; preds = %23
  %82 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %2, align 4
  %84 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %82, i32 %83)
  %85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 %86, %90
  %92 = sdiv i32 %91, 2
  %93 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %85, i32 %92)
  %94 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %120, %81
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %2, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %2, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, %12
  %108 = getelementptr inbounds i32, i32* %15, i64 %107
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, i32 %112)
  %114 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %100, !llvm.loop !4

118:                                              ; preds = %100
  %119 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %95, !llvm.loop !5

123:                                              ; preds = %95
  %124 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %124)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 7, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @_Z14generateSquarei(i32 %3)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_magic_square.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
