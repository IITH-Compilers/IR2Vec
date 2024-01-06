; ModuleID = 'PE-benchmarks/maximum-size-sub-matrix-with-all-1s-in-a-binary-matrix.cpp'
source_filename = "PE-benchmarks/maximum-size-sub-matrix-with-all-1s-in-a-binary-matrix.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZSt3minIiERKT_S2_S2_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [30 x i8] c"Maximum size sub-matrix is: \0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.M = private unnamed_addr constant [6 x [5 x i32]] [[5 x i32] [i32 0, i32 1, i32 1, i32 0, i32 1], [5 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0], [5 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] zeroinitializer], align 16

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z17printMaxSubSquarePA5_i(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x [5 x i32]], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32], ptr %13, i64 %15
  %17 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 0
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %20
  %22 = getelementptr inbounds [5 x i32], ptr %21, i64 0, i64 0
  store i32 %18, ptr %22, align 4
  br label %23

23:                                               ; preds = %12
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %3, align 4
  br label %9, !llvm.loop !6

26:                                               ; preds = %9
  store i32 0, ptr %4, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds [5 x i32], ptr %31, i64 0
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], ptr %32, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 0
  %38 = load i32, ptr %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i32], ptr %37, i64 0, i64 %39
  store i32 %36, ptr %40, align 4
  br label %41

41:                                               ; preds = %30
  %42 = load i32, ptr %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %4, align 4
  br label %27, !llvm.loop !8

44:                                               ; preds = %27
  store i32 1, ptr %3, align 4
  br label %45

45:                                               ; preds = %107, %44
  %46 = load i32, ptr %3, align 4
  %47 = icmp slt i32 %46, 6
  br i1 %47, label %48, label %110

48:                                               ; preds = %45
  store i32 1, ptr %4, align 4
  br label %49

49:                                               ; preds = %103, %48
  %50 = load i32, ptr %4, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %106

52:                                               ; preds = %49
  %53 = load ptr, ptr %2, align 8
  %54 = load i32, ptr %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x i32], ptr %53, i64 %55
  %57 = load i32, ptr %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x i32], ptr %56, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %95

62:                                               ; preds = %52
  %63 = load i32, ptr %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %64
  %66 = load i32, ptr %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i32], ptr %65, i64 0, i64 %68
  %70 = load i32, ptr %3, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %72
  %74 = load i32, ptr %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x i32], ptr %73, i64 0, i64 %75
  %77 = load i32, ptr %3, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %79
  %81 = load i32, ptr %4, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x i32], ptr %80, i64 0, i64 %83
  %85 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %76, ptr noundef nonnull align 4 dereferenceable(4) %84)
  %86 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %69, ptr noundef nonnull align 4 dereferenceable(4) %85)
  %87 = load i32, ptr %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, ptr %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %90
  %92 = load i32, ptr %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [5 x i32], ptr %91, i64 0, i64 %93
  store i32 %88, ptr %94, align 4
  br label %102

95:                                               ; preds = %52
  %96 = load i32, ptr %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %97
  %99 = load i32, ptr %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [5 x i32], ptr %98, i64 0, i64 %100
  store i32 0, ptr %101, align 4
  br label %102

102:                                              ; preds = %95, %62
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %4, align 4
  br label %49, !llvm.loop !9

106:                                              ; preds = %49
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %3, align 4
  br label %45, !llvm.loop !10

110:                                              ; preds = %45
  %111 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 0
  %112 = getelementptr inbounds [5 x i32], ptr %111, i64 0, i64 0
  %113 = load i32, ptr %112, align 16
  store i32 %113, ptr %6, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %3, align 4
  br label %114

114:                                              ; preds = %146, %110
  %115 = load i32, ptr %3, align 4
  %116 = icmp slt i32 %115, 6
  br i1 %116, label %117, label %149

117:                                              ; preds = %114
  store i32 0, ptr %4, align 4
  br label %118

118:                                              ; preds = %142, %117
  %119 = load i32, ptr %4, align 4
  %120 = icmp slt i32 %119, 5
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load i32, ptr %6, align 4
  %123 = load i32, ptr %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %124
  %126 = load i32, ptr %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [5 x i32], ptr %125, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4
  %130 = icmp slt i32 %122, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %121
  %132 = load i32, ptr %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [6 x [5 x i32]], ptr %5, i64 0, i64 %133
  %135 = load i32, ptr %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [5 x i32], ptr %134, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %6, align 4
  %139 = load i32, ptr %3, align 4
  store i32 %139, ptr %7, align 4
  %140 = load i32, ptr %4, align 4
  store i32 %140, ptr %8, align 4
  br label %141

141:                                              ; preds = %131, %121
  br label %142

142:                                              ; preds = %141
  %143 = load i32, ptr %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr %4, align 4
  br label %118, !llvm.loop !11

145:                                              ; preds = %118
  br label %146

146:                                              ; preds = %145
  %147 = load i32, ptr %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %3, align 4
  br label %114, !llvm.loop !12

149:                                              ; preds = %114
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %151 = load i32, ptr %7, align 4
  store i32 %151, ptr %3, align 4
  br label %152

152:                                              ; preds = %182, %149
  %153 = load i32, ptr %3, align 4
  %154 = load i32, ptr %7, align 4
  %155 = load i32, ptr %6, align 4
  %156 = sub nsw i32 %154, %155
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %152
  %159 = load i32, ptr %8, align 4
  store i32 %159, ptr %4, align 4
  br label %160

160:                                              ; preds = %177, %158
  %161 = load i32, ptr %4, align 4
  %162 = load i32, ptr %8, align 4
  %163 = load i32, ptr %6, align 4
  %164 = sub nsw i32 %162, %163
  %165 = icmp sgt i32 %161, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load ptr, ptr %2, align 8
  %168 = load i32, ptr %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [5 x i32], ptr %167, i64 %169
  %171 = load i32, ptr %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [5 x i32], ptr %170, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %174)
  %176 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %175, ptr noundef @.str.1)
  br label %177

177:                                              ; preds = %166
  %178 = load i32, ptr %4, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, ptr %4, align 4
  br label %160, !llvm.loop !13

180:                                              ; preds = %160
  %181 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  br label %182

182:                                              ; preds = %180
  %183 = load i32, ptr %3, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, ptr %3, align 4
  br label %152, !llvm.loop !14

185:                                              ; preds = %152
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 comdat {
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca [6 x [5 x i32]], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %1, ptr align 16 @__const.main.M, i64 120, i1 false)
  %2 = getelementptr inbounds [6 x [5 x i32]], ptr %1, i64 0, i64 0
  call void @_Z17printMaxSubSquarePA5_i(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230710042046+7cbf1a259152-1~exp1~20230710162136.105)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
