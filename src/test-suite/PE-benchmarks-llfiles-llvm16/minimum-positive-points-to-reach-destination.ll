; ModuleID = 'PE-benchmarks/minimum-positive-points-to-reach-destination.cpp'
source_filename = "PE-benchmarks/minimum-positive-points-to-reach-destination.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.points = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 -2, i32 -3, i32 3], [3 x i32] [i32 -5, i32 -10, i32 1], [3 x i32] [i32 10, i32 30, i32 -5]], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [34 x i8] c"Minimum Initial Points Required: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_minimum_positive_points_to_reach_destination.cpp, ptr null }]

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

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z16minInitialPointsPA3_i(ptr noundef %0) #4 {
  %2 = alloca ptr, align 8
  %3 = alloca [3 x [3 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 3, ptr %4, align 4
  store i32 3, ptr %5, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = load i32, ptr %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], ptr %17, i64 %20
  %22 = load i32, ptr %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i32], ptr %21, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %42

29:                                               ; preds = %1
  %30 = load ptr, ptr %2, align 8
  %31 = load i32, ptr %4, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i32], ptr %30, i64 %33
  %35 = load i32, ptr %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], ptr %34, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @abs(i32 noundef %39) #9
  %41 = add nsw i32 %40, 1
  br label %42

42:                                               ; preds = %29, %28
  %43 = phi i32 [ 1, %28 ], [ %41, %29 ]
  %44 = load i32, ptr %4, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %46
  %48 = load i32, ptr %5, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], ptr %47, i64 0, i64 %50
  store i32 %43, ptr %51, align 4
  %52 = load i32, ptr %4, align 4
  %53 = sub nsw i32 %52, 2
  store i32 %53, ptr %6, align 4
  br label %54

54:                                               ; preds = %86, %42
  %55 = load i32, ptr %6, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load i32, ptr %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %60
  %62 = load i32, ptr %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i32], ptr %61, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %2, align 8
  %68 = load i32, ptr %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x i32], ptr %67, i64 %69
  %71 = load i32, ptr %5, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i32], ptr %70, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4
  %76 = sub nsw i32 %66, %75
  store i32 %76, ptr %7, align 4
  store i32 1, ptr %8, align 4
  %77 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %78 = load i32, ptr %77, align 4
  %79 = load i32, ptr %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %80
  %82 = load i32, ptr %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i32], ptr %81, i64 0, i64 %84
  store i32 %78, ptr %85, align 4
  br label %86

86:                                               ; preds = %57
  %87 = load i32, ptr %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, ptr %6, align 4
  br label %54, !llvm.loop !6

89:                                               ; preds = %54
  %90 = load i32, ptr %5, align 4
  %91 = sub nsw i32 %90, 2
  store i32 %91, ptr %9, align 4
  br label %92

92:                                               ; preds = %124, %89
  %93 = load i32, ptr %9, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %92
  %96 = load i32, ptr %4, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %98
  %100 = load i32, ptr %9, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i32], ptr %99, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %2, align 8
  %106 = load i32, ptr %4, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x i32], ptr %105, i64 %108
  %110 = load i32, ptr %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x i32], ptr %109, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4
  %114 = sub nsw i32 %104, %113
  store i32 %114, ptr %10, align 4
  store i32 1, ptr %11, align 4
  %115 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %4, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %119
  %121 = load i32, ptr %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i32], ptr %120, i64 0, i64 %122
  store i32 %116, ptr %123, align 4
  br label %124

124:                                              ; preds = %95
  %125 = load i32, ptr %9, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, ptr %9, align 4
  br label %92, !llvm.loop !8

127:                                              ; preds = %92
  %128 = load i32, ptr %4, align 4
  %129 = sub nsw i32 %128, 2
  store i32 %129, ptr %12, align 4
  br label %130

130:                                              ; preds = %178, %127
  %131 = load i32, ptr %12, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %181

133:                                              ; preds = %130
  %134 = load i32, ptr %5, align 4
  %135 = sub nsw i32 %134, 2
  store i32 %135, ptr %13, align 4
  br label %136

136:                                              ; preds = %174, %133
  %137 = load i32, ptr %13, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %136
  %140 = load i32, ptr %12, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %142
  %144 = load i32, ptr %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [3 x i32], ptr %143, i64 0, i64 %145
  %147 = load i32, ptr %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %148
  %150 = load i32, ptr %13, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i32], ptr %149, i64 0, i64 %152
  %154 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %146, ptr noundef nonnull align 4 dereferenceable(4) %153)
  %155 = load i32, ptr %154, align 4
  store i32 %155, ptr %14, align 4
  %156 = load i32, ptr %14, align 4
  %157 = load ptr, ptr %2, align 8
  %158 = load i32, ptr %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [3 x i32], ptr %157, i64 %159
  %161 = load i32, ptr %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [3 x i32], ptr %160, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4
  %165 = sub nsw i32 %156, %164
  store i32 %165, ptr %15, align 4
  store i32 1, ptr %16, align 4
  %166 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16)
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 %169
  %171 = load i32, ptr %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [3 x i32], ptr %170, i64 0, i64 %172
  store i32 %167, ptr %173, align 4
  br label %174

174:                                              ; preds = %139
  %175 = load i32, ptr %13, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, ptr %13, align 4
  br label %136, !llvm.loop !9

177:                                              ; preds = %136
  br label %178

178:                                              ; preds = %177
  %179 = load i32, ptr %12, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, ptr %12, align 4
  br label %130, !llvm.loop !10

181:                                              ; preds = %130
  %182 = getelementptr inbounds [3 x [3 x i32]], ptr %3, i64 0, i64 0
  %183 = getelementptr inbounds [3 x i32], ptr %182, i64 0, i64 0
  %184 = load i32, ptr %183, align 16
  ret i32 %184
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @abs(i32 noundef) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x [3 x i32]], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.points, i64 36, i1 false)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %4 = getelementptr inbounds [3 x [3 x i32]], ptr %2, i64 0, i64 0
  %5 = call noundef i32 @_Z16minInitialPointsPA3_i(ptr noundef %4)
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_minimum_positive_points_to_reach_destination.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind willreturn memory(none) }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
