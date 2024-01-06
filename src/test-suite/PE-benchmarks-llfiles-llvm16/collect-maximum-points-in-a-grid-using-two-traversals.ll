; ModuleID = 'PE-benchmarks/collect-maximum-points-in-a-grid-using-two-traversals.cpp'
source_filename = "PE-benchmarks/collect-maximum-points-in-a-grid-using-two-traversals.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZSt3maxIiERKT_S2_S2_ = comdat any

@__const.main.arr = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 3, i32 6, i32 8, i32 2], [4 x i32] [i32 5, i32 2, i32 4, i32 3], [4 x i32] [i32 1, i32 1, i32 20, i32 10], [4 x i32] [i32 1, i32 1, i32 20, i32 10], [4 x i32] [i32 1, i32 1, i32 20, i32 10]], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"Maximum collection is \00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef zeroext i1 @_Z7isValidiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, ptr %6, align 4
  %23 = icmp slt i32 %22, 4
  br label %24

24:                                               ; preds = %21, %18, %15, %12, %9, %3
  %25 = phi i1 [ false, %18 ], [ false, %15 ], [ false, %12 ], [ false, %9 ], [ false, %3 ], [ %23, %21 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  %23 = load i32, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  %25 = load i32, ptr %11, align 4
  %26 = call noundef zeroext i1 @_Z7isValidiii(i32 noundef %23, i32 noundef %24, i32 noundef %25)
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 -2147483648, ptr %6, align 4
  br label %254

28:                                               ; preds = %5
  %29 = load i32, ptr %9, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load i32, ptr %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load i32, ptr %11, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32, ptr %10, align 4
  %39 = load i32, ptr %11, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load ptr, ptr %7, align 8
  %43 = load i32, ptr %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], ptr %42, i64 %44
  %46 = load i32, ptr %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], ptr %45, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4
  br label %68

50:                                               ; preds = %37
  %51 = load ptr, ptr %7, align 8
  %52 = load i32, ptr %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr %51, i64 %53
  %55 = load i32, ptr %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], ptr %54, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %7, align 8
  %60 = load i32, ptr %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], ptr %59, i64 %61
  %63 = load i32, ptr %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], ptr %62, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = add nsw i32 %58, %66
  br label %68

68:                                               ; preds = %50, %41
  %69 = phi i32 [ %49, %41 ], [ %67, %50 ]
  store i32 %69, ptr %6, align 4
  br label %254

70:                                               ; preds = %34, %31, %28
  %71 = load i32, ptr %9, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -2147483648, ptr %6, align 4
  br label %254

74:                                               ; preds = %70
  %75 = load ptr, ptr %8, align 8
  %76 = load i32, ptr %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x [4 x i32]], ptr %75, i64 %77
  %79 = load i32, ptr %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x [4 x i32]], ptr %78, i64 0, i64 %80
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], ptr %81, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %99

87:                                               ; preds = %74
  %88 = load ptr, ptr %8, align 8
  %89 = load i32, ptr %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x [4 x i32]], ptr %88, i64 %90
  %92 = load i32, ptr %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x [4 x i32]], ptr %91, i64 0, i64 %93
  %95 = load i32, ptr %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], ptr %94, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %6, align 4
  br label %254

99:                                               ; preds = %74
  store i32 -2147483648, ptr %12, align 4
  %100 = load i32, ptr %10, align 4
  %101 = load i32, ptr %11, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load ptr, ptr %7, align 8
  %105 = load i32, ptr %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i32], ptr %104, i64 %106
  %108 = load i32, ptr %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], ptr %107, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4
  br label %130

112:                                              ; preds = %99
  %113 = load ptr, ptr %7, align 8
  %114 = load i32, ptr %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], ptr %113, i64 %115
  %117 = load i32, ptr %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], ptr %116, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %7, align 8
  %122 = load i32, ptr %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], ptr %121, i64 %123
  %125 = load i32, ptr %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i32], ptr %124, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = add nsw i32 %120, %128
  br label %130

130:                                              ; preds = %112, %103
  %131 = phi i32 [ %111, %103 ], [ %129, %112 ]
  store i32 %131, ptr %13, align 4
  %132 = load i32, ptr %13, align 4
  %133 = load ptr, ptr %7, align 8
  %134 = load ptr, ptr %8, align 8
  %135 = load i32, ptr %9, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, ptr %10, align 4
  %138 = load i32, ptr %11, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %133, ptr noundef %134, i32 noundef %136, i32 noundef %137, i32 noundef %139)
  %141 = add nsw i32 %132, %140
  store i32 %141, ptr %14, align 4
  %142 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %14)
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %12, align 4
  %144 = load i32, ptr %13, align 4
  %145 = load ptr, ptr %7, align 8
  %146 = load ptr, ptr %8, align 8
  %147 = load i32, ptr %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, ptr %10, align 4
  %150 = load i32, ptr %11, align 4
  %151 = add nsw i32 %150, 1
  %152 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %145, ptr noundef %146, i32 noundef %148, i32 noundef %149, i32 noundef %151)
  %153 = add nsw i32 %144, %152
  store i32 %153, ptr %15, align 4
  %154 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %15)
  %155 = load i32, ptr %154, align 4
  store i32 %155, ptr %12, align 4
  %156 = load i32, ptr %13, align 4
  %157 = load ptr, ptr %7, align 8
  %158 = load ptr, ptr %8, align 8
  %159 = load i32, ptr %9, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, ptr %10, align 4
  %162 = load i32, ptr %11, align 4
  %163 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %157, ptr noundef %158, i32 noundef %160, i32 noundef %161, i32 noundef %162)
  %164 = add nsw i32 %156, %163
  store i32 %164, ptr %16, align 4
  %165 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %16)
  %166 = load i32, ptr %165, align 4
  store i32 %166, ptr %12, align 4
  %167 = load i32, ptr %13, align 4
  %168 = load ptr, ptr %7, align 8
  %169 = load ptr, ptr %8, align 8
  %170 = load i32, ptr %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32, ptr %10, align 4
  %173 = sub nsw i32 %172, 1
  %174 = load i32, ptr %11, align 4
  %175 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %168, ptr noundef %169, i32 noundef %171, i32 noundef %173, i32 noundef %174)
  %176 = add nsw i32 %167, %175
  store i32 %176, ptr %17, align 4
  %177 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %17)
  %178 = load i32, ptr %177, align 4
  store i32 %178, ptr %12, align 4
  %179 = load i32, ptr %13, align 4
  %180 = load ptr, ptr %7, align 8
  %181 = load ptr, ptr %8, align 8
  %182 = load i32, ptr %9, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, ptr %10, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, ptr %11, align 4
  %187 = sub nsw i32 %186, 1
  %188 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %180, ptr noundef %181, i32 noundef %183, i32 noundef %185, i32 noundef %187)
  %189 = add nsw i32 %179, %188
  store i32 %189, ptr %18, align 4
  %190 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %18)
  %191 = load i32, ptr %190, align 4
  store i32 %191, ptr %12, align 4
  %192 = load i32, ptr %13, align 4
  %193 = load ptr, ptr %7, align 8
  %194 = load ptr, ptr %8, align 8
  %195 = load i32, ptr %9, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, ptr %10, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, ptr %11, align 4
  %200 = add nsw i32 %199, 1
  %201 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %193, ptr noundef %194, i32 noundef %196, i32 noundef %198, i32 noundef %200)
  %202 = add nsw i32 %192, %201
  store i32 %202, ptr %19, align 4
  %203 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %19)
  %204 = load i32, ptr %203, align 4
  store i32 %204, ptr %12, align 4
  %205 = load i32, ptr %13, align 4
  %206 = load ptr, ptr %7, align 8
  %207 = load ptr, ptr %8, align 8
  %208 = load i32, ptr %9, align 4
  %209 = add nsw i32 %208, 1
  %210 = load i32, ptr %10, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, ptr %11, align 4
  %213 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %206, ptr noundef %207, i32 noundef %209, i32 noundef %211, i32 noundef %212)
  %214 = add nsw i32 %205, %213
  store i32 %214, ptr %20, align 4
  %215 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %20)
  %216 = load i32, ptr %215, align 4
  store i32 %216, ptr %12, align 4
  %217 = load i32, ptr %13, align 4
  %218 = load ptr, ptr %7, align 8
  %219 = load ptr, ptr %8, align 8
  %220 = load i32, ptr %9, align 4
  %221 = add nsw i32 %220, 1
  %222 = load i32, ptr %10, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, ptr %11, align 4
  %225 = sub nsw i32 %224, 1
  %226 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %218, ptr noundef %219, i32 noundef %221, i32 noundef %223, i32 noundef %225)
  %227 = add nsw i32 %217, %226
  store i32 %227, ptr %21, align 4
  %228 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %21)
  %229 = load i32, ptr %228, align 4
  store i32 %229, ptr %12, align 4
  %230 = load i32, ptr %13, align 4
  %231 = load ptr, ptr %7, align 8
  %232 = load ptr, ptr %8, align 8
  %233 = load i32, ptr %9, align 4
  %234 = add nsw i32 %233, 1
  %235 = load i32, ptr %10, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i32, ptr %11, align 4
  %238 = add nsw i32 %237, 1
  %239 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %231, ptr noundef %232, i32 noundef %234, i32 noundef %236, i32 noundef %238)
  %240 = add nsw i32 %230, %239
  store i32 %240, ptr %22, align 4
  %241 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %22)
  %242 = load i32, ptr %241, align 4
  store i32 %242, ptr %12, align 4
  %243 = load i32, ptr %12, align 4
  %244 = load ptr, ptr %8, align 8
  %245 = load i32, ptr %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x [4 x i32]], ptr %244, i64 %246
  %248 = load i32, ptr %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4 x [4 x i32]], ptr %247, i64 0, i64 %249
  %251 = load i32, ptr %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x i32], ptr %250, i64 0, i64 %252
  store i32 %243, ptr %253, align 4
  store i32 %243, ptr %6, align 4
  br label %254

254:                                              ; preds = %130, %87, %73, %68, %27
  %255 = load i32, ptr %6, align 4
  ret i32 %255
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat {
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

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z15geMaxCollectionPA4_i(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [5 x [4 x [4 x i32]]], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [5 x [4 x [4 x i32]]], ptr %3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 -1, i64 320, i1 false)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds [5 x [4 x [4 x i32]]], ptr %3, i64 0, i64 0
  %7 = call noundef i32 @_Z10getMaxUtilPA4_iPA4_S_iii(ptr noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 3)
  ret i32 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x [4 x i32]], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 80, i1 false)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %4 = getelementptr inbounds [5 x [4 x i32]], ptr %2, i64 0, i64 0
  %5 = call noundef i32 @_Z15geMaxCollectionPA4_i(ptr noundef %4)
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230710042046+7cbf1a259152-1~exp1~20230710162136.105)"}
