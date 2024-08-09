; ModuleID = 'PE-benchmarks/mobile-numeric-keypad-problem.cpp'
source_filename = "PE-benchmarks/mobile-numeric-keypad-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const._Z8getCountPA3_ci.row = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 1], align 16
@__const._Z8getCountPA3_ci.col = private unnamed_addr constant [5 x i32] [i32 0, i32 -1, i32 0, i32 1, i32 0], align 16
@__const.main.keypad = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"456", [3 x i8] c"789", [3 x i8] c"*0#"], align 1
@.str = private unnamed_addr constant [36 x i8] c"Count for numbers of length %d: %dn\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z8getCountPA3_ci(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, ptr %5, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 0, ptr %3, align 4
  br label %222

25:                                               ; preds = %21
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 10, ptr %3, align 4
  br label %222

29:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const._Z8getCountPA3_ci.row, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const._Z8getCountPA3_ci.col, i64 20, i1 false)
  %30 = load i32, ptr %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call ptr @llvm.stacksave()
  store ptr %33, ptr %8, align 8
  %34 = mul nuw i64 10, %32
  %35 = alloca i32, i64 %34, align 16
  store i64 %32, ptr %9, align 8
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  store i32 0, ptr %16, align 4
  store i32 0, ptr %17, align 4
  store i32 0, ptr %18, align 4
  store i32 0, ptr %10, align 4
  br label %36

36:                                               ; preds = %50, %29
  %37 = load i32, ptr %10, align 4
  %38 = icmp sle i32 %37, 9
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, ptr %10, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, %32
  %43 = getelementptr inbounds i32, ptr %35, i64 %42
  %44 = getelementptr inbounds i32, ptr %43, i64 0
  store i32 0, ptr %44, align 4
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %32
  %48 = getelementptr inbounds i32, ptr %35, i64 %47
  %49 = getelementptr inbounds i32, ptr %48, i64 1
  store i32 1, ptr %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, ptr %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %10, align 4
  br label %36, !llvm.loop !6

53:                                               ; preds = %36
  store i32 2, ptr %12, align 4
  br label %54

54:                                               ; preds = %198, %53
  %55 = load i32, ptr %12, align 4
  %56 = load i32, ptr %5, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %201

58:                                               ; preds = %54
  store i32 0, ptr %10, align 4
  br label %59

59:                                               ; preds = %194, %58
  %60 = load i32, ptr %10, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %197

62:                                               ; preds = %59
  store i32 0, ptr %11, align 4
  br label %63

63:                                               ; preds = %190, %62
  %64 = load i32, ptr %11, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %193

66:                                               ; preds = %63
  %67 = load ptr, ptr %4, align 8
  %68 = load i32, ptr %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x i8], ptr %67, i64 %69
  %71 = load i32, ptr %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i8], ptr %70, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 42
  br i1 %76, label %77, label %189

77:                                               ; preds = %66
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i8], ptr %78, i64 %80
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x i8], ptr %81, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 35
  br i1 %87, label %88, label %189

88:                                               ; preds = %77
  %89 = load ptr, ptr %4, align 8
  %90 = load i32, ptr %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i8], ptr %89, i64 %91
  %93 = load i32, ptr %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x i8], ptr %92, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 48
  store i32 %98, ptr %16, align 4
  %99 = load i32, ptr %16, align 4
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, %32
  %102 = getelementptr inbounds i32, ptr %35, i64 %101
  %103 = load i32, ptr %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %102, i64 %104
  store i32 0, ptr %105, align 4
  store i32 0, ptr %13, align 4
  br label %106

106:                                              ; preds = %185, %88
  %107 = load i32, ptr %13, align 4
  %108 = icmp slt i32 %107, 5
  br i1 %108, label %109, label %188

109:                                              ; preds = %106
  %110 = load i32, ptr %10, align 4
  %111 = load i32, ptr %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4
  %115 = add nsw i32 %110, %114
  store i32 %115, ptr %14, align 4
  %116 = load i32, ptr %11, align 4
  %117 = load i32, ptr %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [5 x i32], ptr %7, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = add nsw i32 %116, %120
  store i32 %121, ptr %15, align 4
  %122 = load i32, ptr %14, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %184

124:                                              ; preds = %109
  %125 = load i32, ptr %14, align 4
  %126 = icmp sle i32 %125, 3
  br i1 %126, label %127, label %184

127:                                              ; preds = %124
  %128 = load i32, ptr %15, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %184

130:                                              ; preds = %127
  %131 = load i32, ptr %15, align 4
  %132 = icmp sle i32 %131, 2
  br i1 %132, label %133, label %184

133:                                              ; preds = %130
  %134 = load ptr, ptr %4, align 8
  %135 = load i32, ptr %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3 x i8], ptr %134, i64 %136
  %138 = load i32, ptr %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x i8], ptr %137, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 42
  br i1 %143, label %144, label %184

144:                                              ; preds = %133
  %145 = load ptr, ptr %4, align 8
  %146 = load i32, ptr %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i8], ptr %145, i64 %147
  %149 = load i32, ptr %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x i8], ptr %148, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 35
  br i1 %154, label %155, label %184

155:                                              ; preds = %144
  %156 = load ptr, ptr %4, align 8
  %157 = load i32, ptr %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x i8], ptr %156, i64 %158
  %160 = load i32, ptr %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x i8], ptr %159, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = sext i8 %163 to i32
  %165 = sub nsw i32 %164, 48
  store i32 %165, ptr %17, align 4
  %166 = load i32, ptr %17, align 4
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %167, %32
  %169 = getelementptr inbounds i32, ptr %35, i64 %168
  %170 = load i32, ptr %12, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %169, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = load i32, ptr %16, align 4
  %176 = sext i32 %175 to i64
  %177 = mul nsw i64 %176, %32
  %178 = getelementptr inbounds i32, ptr %35, i64 %177
  %179 = load i32, ptr %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, ptr %178, i64 %180
  %182 = load i32, ptr %181, align 4
  %183 = add nsw i32 %182, %174
  store i32 %183, ptr %181, align 4
  br label %184

184:                                              ; preds = %155, %144, %133, %130, %127, %124, %109
  br label %185

185:                                              ; preds = %184
  %186 = load i32, ptr %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %13, align 4
  br label %106, !llvm.loop !8

188:                                              ; preds = %106
  br label %189

189:                                              ; preds = %188, %77, %66
  br label %190

190:                                              ; preds = %189
  %191 = load i32, ptr %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr %11, align 4
  br label %63, !llvm.loop !9

193:                                              ; preds = %63
  br label %194

194:                                              ; preds = %193
  %195 = load i32, ptr %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr %10, align 4
  br label %59, !llvm.loop !10

197:                                              ; preds = %59
  br label %198

198:                                              ; preds = %197
  %199 = load i32, ptr %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %12, align 4
  br label %54, !llvm.loop !11

201:                                              ; preds = %54
  store i32 0, ptr %18, align 4
  store i32 0, ptr %10, align 4
  br label %202

202:                                              ; preds = %216, %201
  %203 = load i32, ptr %10, align 4
  %204 = icmp sle i32 %203, 9
  br i1 %204, label %205, label %219

205:                                              ; preds = %202
  %206 = load i32, ptr %10, align 4
  %207 = sext i32 %206 to i64
  %208 = mul nsw i64 %207, %32
  %209 = getelementptr inbounds i32, ptr %35, i64 %208
  %210 = load i32, ptr %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %209, i64 %211
  %213 = load i32, ptr %212, align 4
  %214 = load i32, ptr %18, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, ptr %18, align 4
  br label %216

216:                                              ; preds = %205
  %217 = load i32, ptr %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %10, align 4
  br label %202, !llvm.loop !12

219:                                              ; preds = %202
  %220 = load i32, ptr %18, align 4
  store i32 %220, ptr %3, align 4
  %221 = load ptr, ptr %8, align 8
  call void @llvm.stackrestore(ptr %221)
  br label %222

222:                                              ; preds = %219, %28, %24
  %223 = load i32, ptr %3, align 4
  ret i32 %223
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [4 x [3 x i8]], align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 @__const.main.keypad, i64 12, i1 false)
  %7 = getelementptr inbounds [4 x [3 x i8]], ptr %6, i64 0, i64 0
  %8 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %7, i32 noundef 1)
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 1, i32 noundef %8)
  %10 = getelementptr inbounds [4 x [3 x i8]], ptr %6, i64 0, i64 0
  %11 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %10, i32 noundef 2)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 2, i32 noundef %11)
  %13 = getelementptr inbounds [4 x [3 x i8]], ptr %6, i64 0, i64 0
  %14 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %13, i32 noundef 3)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 3, i32 noundef %14)
  %16 = getelementptr inbounds [4 x [3 x i8]], ptr %6, i64 0, i64 0
  %17 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %16, i32 noundef 4)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 4, i32 noundef %17)
  %19 = getelementptr inbounds [4 x [3 x i8]], ptr %6, i64 0, i64 0
  %20 = call noundef i32 @_Z8getCountPA3_ci(ptr noundef %19, i32 noundef 5)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 5, i32 noundef %20)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
