; ModuleID = 'PE-benchmarks/program-wish-womens-day.cpp'
source_filename = "PE-benchmarks/program-wish-womens-day.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"HappY Women's DaY\00", align 1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 5, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %68, %0
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %2, align 4
  %12 = mul nsw i32 2, %11
  %13 = icmp sle i32 %10, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %9
  store i32 0, ptr %4, align 4
  br label %15

15:                                               ; preds = %56, %14
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr %2, align 4
  %18 = mul nsw i32 2, %17
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, ptr %3, align 4
  %25 = load i32, ptr %2, align 4
  %26 = sub nsw i32 %24, %25
  %27 = mul nsw i32 %23, %26
  %28 = load i32, ptr %4, align 4
  %29 = load i32, ptr %2, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, ptr %4, align 4
  %32 = load i32, ptr %2, align 4
  %33 = sub nsw i32 %31, %32
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 %27, %34
  %36 = call noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %35)
  %37 = fptrunc double %36 to float
  store float %37, ptr %5, align 4
  %38 = load float, ptr %5, align 4
  %39 = fpext float %38 to double
  %40 = load i32, ptr %2, align 4
  %41 = sitofp i32 %40 to double
  %42 = fsub double %41, 5.000000e-01
  %43 = fcmp ogt double %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %20
  %45 = load float, ptr %5, align 4
  %46 = fpext float %45 to double
  %47 = load i32, ptr %2, align 4
  %48 = sitofp i32 %47 to double
  %49 = fadd double %48, 5.000000e-01
  %50 = fcmp olt double %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %55

53:                                               ; preds = %44, %20
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4
  br label %15, !llvm.loop !6

59:                                               ; preds = %15
  %60 = load i32, ptr %3, align 4
  %61 = load i32, ptr %2, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef @.str.2)
  br label %66

66:                                               ; preds = %63, %59
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %3, align 4
  br label %9, !llvm.loop !8

71:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %72

72:                                               ; preds = %132, %71
  %73 = load i32, ptr %6, align 4
  %74 = load i32, ptr %2, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %72
  %77 = load i32, ptr %6, align 4
  %78 = load i32, ptr %2, align 4
  %79 = sdiv i32 %78, 2
  %80 = add nsw i32 %79, 1
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %76
  store i32 0, ptr %7, align 4
  br label %83

83:                                               ; preds = %107, %82
  %84 = load i32, ptr %7, align 4
  %85 = load i32, ptr %2, align 4
  %86 = mul nsw i32 2, %85
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load i32, ptr %7, align 4
  %90 = load i32, ptr %2, align 4
  %91 = load i32, ptr %2, align 4
  %92 = sdiv i32 %91, 2
  %93 = sub nsw i32 %90, %92
  %94 = icmp sge i32 %89, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load i32, ptr %7, align 4
  %97 = load i32, ptr %2, align 4
  %98 = load i32, ptr %2, align 4
  %99 = sdiv i32 %98, 2
  %100 = add nsw i32 %97, %99
  %101 = icmp sle i32 %96, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %106

104:                                              ; preds = %95, %88
  %105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  br label %106

106:                                              ; preds = %104, %102
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %7, align 4
  br label %83, !llvm.loop !9

110:                                              ; preds = %83
  br label %130

111:                                              ; preds = %76
  store i32 0, ptr %8, align 4
  br label %112

112:                                              ; preds = %126, %111
  %113 = load i32, ptr %8, align 4
  %114 = load i32, ptr %2, align 4
  %115 = mul nsw i32 2, %114
  %116 = icmp sle i32 %113, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load i32, ptr %8, align 4
  %119 = load i32, ptr %2, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %125

123:                                              ; preds = %117
  %124 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %8, align 4
  br label %112, !llvm.loop !10

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %110
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %132

132:                                              ; preds = %130
  %133 = load i32, ptr %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %6, align 4
  br label %72, !llvm.loop !11

135:                                              ; preds = %72
  %136 = load i32, ptr %1, align 4
  ret i32 %136
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 noundef %0) #1 comdat {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = call double @sqrt(double noundef %4) #4
  ret double %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

attributes #0 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
