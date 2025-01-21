; ModuleID = 'PE-benchmarks/longest-bitonic-subsequence.cpp'
source_filename = "PE-benchmarks/longest-bitonic-subsequence.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [16 x i32] [i32 0, i32 8, i32 4, i32 12, i32 2, i32 10, i32 6, i32 14, i32 1, i32 9, i32 5, i32 13, i32 3, i32 11, i32 7, i32 15], align 16
@.str = private unnamed_addr constant [21 x i8] c"Length of LBS is %d\0A\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z3lbsPii(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %11, i64 4)
  %13 = extractvalue { i64, i1 } %12, 1
  %14 = extractvalue { i64, i1 } %12, 0
  %15 = select i1 %13, i64 -1, i64 %14
  %16 = call noalias noundef nonnull ptr @_Znam(i64 noundef %15) #6
  store ptr %16, ptr %7, align 8
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %26, %2
  %18 = load i32, ptr %5, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %7, align 8
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %5, align 4
  br label %17, !llvm.loop !6

29:                                               ; preds = %17
  store i32 1, ptr %5, align 4
  br label %30

30:                                               ; preds = %80, %29
  %31 = load i32, ptr %5, align 4
  %32 = load i32, ptr %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  store i32 0, ptr %6, align 4
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 8
  %41 = load i32, ptr %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %3, align 8
  %46 = load i32, ptr %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %44, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %39
  %52 = load ptr, ptr %7, align 8
  %53 = load i32, ptr %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %7, align 8
  %58 = load i32, ptr %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load ptr, ptr %7, align 8
  %66 = load i32, ptr %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %65, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = load ptr, ptr %7, align 8
  %72 = load i32, ptr %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %71, i64 %73
  store i32 %70, ptr %74, align 4
  br label %75

75:                                               ; preds = %64, %51, %39
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %6, align 4
  br label %35, !llvm.loop !8

79:                                               ; preds = %35
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %5, align 4
  br label %30, !llvm.loop !9

83:                                               ; preds = %30
  %84 = load i32, ptr %4, align 4
  %85 = sext i32 %84 to i64
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %85, i64 4)
  %87 = extractvalue { i64, i1 } %86, 1
  %88 = extractvalue { i64, i1 } %86, 0
  %89 = select i1 %87, i64 -1, i64 %88
  %90 = call noalias noundef nonnull ptr @_Znam(i64 noundef %89) #6
  store ptr %90, ptr %8, align 8
  store i32 0, ptr %5, align 4
  br label %91

91:                                               ; preds = %100, %83
  %92 = load i32, ptr %5, align 4
  %93 = load i32, ptr %4, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load ptr, ptr %8, align 8
  %97 = load i32, ptr %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %96, i64 %98
  store i32 1, ptr %99, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %5, align 4
  br label %91, !llvm.loop !10

103:                                              ; preds = %91
  %104 = load i32, ptr %4, align 4
  %105 = sub nsw i32 %104, 2
  store i32 %105, ptr %5, align 4
  br label %106

106:                                              ; preds = %157, %103
  %107 = load i32, ptr %5, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %160

109:                                              ; preds = %106
  %110 = load i32, ptr %4, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, ptr %6, align 4
  br label %112

112:                                              ; preds = %153, %109
  %113 = load i32, ptr %6, align 4
  %114 = load i32, ptr %5, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %112
  %117 = load ptr, ptr %3, align 8
  %118 = load i32, ptr %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %117, i64 %119
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %3, align 8
  %123 = load i32, ptr %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %122, i64 %124
  %126 = load i32, ptr %125, align 4
  %127 = icmp sgt i32 %121, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %116
  %129 = load ptr, ptr %8, align 8
  %130 = load i32, ptr %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, ptr %129, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %8, align 8
  %135 = load i32, ptr %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %134, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = icmp slt i32 %133, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %128
  %142 = load ptr, ptr %8, align 8
  %143 = load i32, ptr %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, ptr %142, i64 %144
  %146 = load i32, ptr %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = load ptr, ptr %8, align 8
  %149 = load i32, ptr %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %148, i64 %150
  store i32 %147, ptr %151, align 4
  br label %152

152:                                              ; preds = %141, %128, %116
  br label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %6, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, ptr %6, align 4
  br label %112, !llvm.loop !11

156:                                              ; preds = %112
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %5, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, ptr %5, align 4
  br label %106, !llvm.loop !12

160:                                              ; preds = %106
  %161 = load ptr, ptr %7, align 8
  %162 = getelementptr inbounds i32, ptr %161, i64 0
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds i32, ptr %164, i64 0
  %166 = load i32, ptr %165, align 4
  %167 = add nsw i32 %163, %166
  %168 = sub nsw i32 %167, 1
  store i32 %168, ptr %9, align 4
  store i32 1, ptr %5, align 4
  br label %169

169:                                              ; preds = %202, %160
  %170 = load i32, ptr %5, align 4
  %171 = load i32, ptr %4, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %205

173:                                              ; preds = %169
  %174 = load ptr, ptr %7, align 8
  %175 = load i32, ptr %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %174, i64 %176
  %178 = load i32, ptr %177, align 4
  %179 = load ptr, ptr %8, align 8
  %180 = load i32, ptr %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %179, i64 %181
  %183 = load i32, ptr %182, align 4
  %184 = add nsw i32 %178, %183
  %185 = sub nsw i32 %184, 1
  %186 = load i32, ptr %9, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %173
  %189 = load ptr, ptr %7, align 8
  %190 = load i32, ptr %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, ptr %189, i64 %191
  %193 = load i32, ptr %192, align 4
  %194 = load ptr, ptr %8, align 8
  %195 = load i32, ptr %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %194, i64 %196
  %198 = load i32, ptr %197, align 4
  %199 = add nsw i32 %193, %198
  %200 = sub nsw i32 %199, 1
  store i32 %200, ptr %9, align 4
  br label %201

201:                                              ; preds = %188, %173
  br label %202

202:                                              ; preds = %201
  %203 = load i32, ptr %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %5, align 4
  br label %169, !llvm.loop !13

205:                                              ; preds = %169
  %206 = load i32, ptr %9, align 4
  ret i32 %206
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 64, i1 false)
  store i32 16, ptr %3, align 4
  %4 = getelementptr inbounds [16 x i32], ptr %2, i64 0, i64 0
  %5 = load i32, ptr %3, align 4
  %6 = call noundef i32 @_Z3lbsPii(ptr noundef %4, i32 noundef %5)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.1.7 (https://github.com/llvm/llvm-project.git cd708029e0b2869e80abe31ddb175f7c35361f90)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
