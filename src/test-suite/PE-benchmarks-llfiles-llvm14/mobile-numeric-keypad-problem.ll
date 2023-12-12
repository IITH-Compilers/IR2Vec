; ModuleID = 'PE-benchmarks/mobile-numeric-keypad-problem.cpp'
source_filename = "PE-benchmarks/mobile-numeric-keypad-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const._Z8getCountPA3_ci.row = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 -1, i32 0, i32 1], align 16
@__const._Z8getCountPA3_ci.col = private unnamed_addr constant [5 x i32] [i32 0, i32 -1, i32 0, i32 1, i32 0], align 16
@__const.main.keypad = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"456", [3 x i8] c"789", [3 x i8] c"*0#"], align 1
@.str = private unnamed_addr constant [36 x i8] c"Count for numbers of length %d: %dn\00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z8getCountPA3_ci([3 x i8]* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  %8 = alloca i8*, align 8
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
  store [3 x i8]* %0, [3 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load [3 x i8]*, [3 x i8]** %4, align 8
  %20 = icmp eq [3 x i8]* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %224

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 10, i32* %3, align 4
  br label %224

29:                                               ; preds = %25
  %30 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([5 x i32]* @__const._Z8getCountPA3_ci.row to i8*), i64 20, i1 false)
  %31 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([5 x i32]* @__const._Z8getCountPA3_ci.col to i8*), i64 20, i1 false)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %8, align 8
  %36 = mul nuw i64 10, %34
  %37 = alloca i32, i64 %36, align 16
  store i64 %34, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %52, %29
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 9
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, %34
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %34
  %50 = getelementptr inbounds i32, i32* %37, i64 %49
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %38, !llvm.loop !6

55:                                               ; preds = %38
  store i32 2, i32* %12, align 4
  br label %56

56:                                               ; preds = %200, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %203

60:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %196, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %199

64:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %192, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %195

68:                                               ; preds = %65
  %69 = load [3 x i8]*, [3 x i8]** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i8], [3 x i8]* %69, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %72, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 42
  br i1 %78, label %79, label %191

79:                                               ; preds = %68
  %80 = load [3 x i8]*, [3 x i8]** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %80, i64 %82
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %83, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 35
  br i1 %89, label %90, label %191

90:                                               ; preds = %79
  %91 = load [3 x i8]*, [3 x i8]** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %91, i64 %93
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %94, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = sub nsw i32 %99, 48
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, %34
  %104 = getelementptr inbounds i32, i32* %37, i64 %103
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 0, i32* %107, align 4
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %187, %90
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 5
  br i1 %110, label %111, label %190

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %112, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %118, %122
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %186

126:                                              ; preds = %111
  %127 = load i32, i32* %14, align 4
  %128 = icmp sle i32 %127, 3
  br i1 %128, label %129, label %186

129:                                              ; preds = %126
  %130 = load i32, i32* %15, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %129
  %133 = load i32, i32* %15, align 4
  %134 = icmp sle i32 %133, 2
  br i1 %134, label %135, label %186

135:                                              ; preds = %132
  %136 = load [3 x i8]*, [3 x i8]** %4, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i8], [3 x i8]* %136, i64 %138
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x i8], [3 x i8]* %139, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 42
  br i1 %145, label %146, label %186

146:                                              ; preds = %135
  %147 = load [3 x i8]*, [3 x i8]** %4, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x i8], [3 x i8]* %147, i64 %149
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i8], [3 x i8]* %150, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 35
  br i1 %156, label %157, label %186

157:                                              ; preds = %146
  %158 = load [3 x i8]*, [3 x i8]** %4, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %158, i64 %160
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x i8], [3 x i8]* %161, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = sub nsw i32 %166, 48
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, %34
  %171 = getelementptr inbounds i32, i32* %37, i64 %170
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = mul nsw i64 %178, %34
  %180 = getelementptr inbounds i32, i32* %37, i64 %179
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %176
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %157, %146, %135, %132, %129, %126, %111
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %108, !llvm.loop !8

190:                                              ; preds = %108
  br label %191

191:                                              ; preds = %190, %79, %68
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %65, !llvm.loop !9

195:                                              ; preds = %65
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %61, !llvm.loop !10

199:                                              ; preds = %61
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %56, !llvm.loop !11

203:                                              ; preds = %56
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %204

204:                                              ; preds = %218, %203
  %205 = load i32, i32* %10, align 4
  %206 = icmp sle i32 %205, 9
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = mul nsw i64 %209, %34
  %211 = getelementptr inbounds i32, i32* %37, i64 %210
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %18, align 4
  br label %218

218:                                              ; preds = %207
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %204, !llvm.loop !12

221:                                              ; preds = %204
  %222 = load i32, i32* %18, align 4
  store i32 %222, i32* %3, align 4
  %223 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %223)
  br label %224

224:                                              ; preds = %221, %28, %24
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4 x [3 x i8]], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = bitcast [4 x [3 x i8]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([4 x [3 x i8]], [4 x [3 x i8]]* @__const.main.keypad, i32 0, i32 0, i32 0), i64 12, i1 false)
  %8 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %6, i64 0, i64 0
  %9 = call noundef i32 @_Z8getCountPA3_ci([3 x i8]* noundef %8, i32 noundef 1)
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef %9)
  %11 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %6, i64 0, i64 0
  %12 = call noundef i32 @_Z8getCountPA3_ci([3 x i8]* noundef %11, i32 noundef 2)
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 2, i32 noundef %12)
  %14 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %6, i64 0, i64 0
  %15 = call noundef i32 @_Z8getCountPA3_ci([3 x i8]* noundef %14, i32 noundef 3)
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 3, i32 noundef %15)
  %17 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %6, i64 0, i64 0
  %18 = call noundef i32 @_Z8getCountPA3_ci([3 x i8]* noundef %17, i32 noundef 4)
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 4, i32 noundef %18)
  %20 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %6, i64 0, i64 0
  %21 = call noundef i32 @_Z8getCountPA3_ci([3 x i8]* noundef %20, i32 noundef 5)
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef 5, i32 noundef %21)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #4

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
