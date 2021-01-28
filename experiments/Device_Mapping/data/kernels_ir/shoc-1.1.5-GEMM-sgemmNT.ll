; ModuleID = 'shoc-1.1.5-GEMM-sgemmNT.cl'
source_filename = "shoc-1.1.5-GEMM-sgemmNT.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@sgemmNT.bs = internal unnamed_addr global [4 x [16 x float]] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @sgemmNT(float* nocapture readonly, i32, float* nocapture readonly, i32, float* nocapture, i32, i32, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = alloca [4 x float], align 16
  %11 = bitcast [4 x float]* %10 to i8*
  %12 = alloca [16 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @_Z12get_local_idj(i32 1) #5
  %17 = trunc i64 %16 to i32
  %18 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 6
  %21 = tail call i64 @_Z12get_group_idj(i32 1) #5
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 4
  %24 = shl i32 %17, 4
  %25 = add nsw i32 %24, %15
  %26 = add nsw i32 %25, %20
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = mul nsw i32 %17, %3
  %30 = add i32 %29, %15
  %31 = add i32 %30, %23
  %32 = sext i32 %31 to i64
  %33 = mul nsw i32 %23, %5
  %34 = add nsw i32 %33, %26
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %4, i64 %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #6
  %37 = sext i32 %1 to i64
  %38 = bitcast float* %28 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !8
  %40 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  %41 = bitcast [4 x float]* %10 to i32*
  store i32 %39, i32* %41, align 16, !tbaa !8
  %42 = getelementptr inbounds float, float* %28, i64 %37
  %43 = bitcast float* %42 to i32*
  %44 = load i32, i32* %43, align 4, !tbaa !8
  %45 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 1
  %46 = bitcast float* %45 to i32*
  store i32 %44, i32* %46, align 4, !tbaa !8
  %47 = shl nsw i64 %37, 1
  %48 = getelementptr inbounds float, float* %28, i64 %47
  %49 = bitcast float* %48 to i32*
  %50 = load i32, i32* %49, align 4, !tbaa !8
  %51 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 2
  %52 = bitcast float* %51 to i32*
  store i32 %50, i32* %52, align 8, !tbaa !8
  %53 = mul nsw i64 %37, 3
  %54 = getelementptr inbounds float, float* %28, i64 %53
  %55 = bitcast float* %54 to i32*
  %56 = load i32, i32* %55, align 4, !tbaa !8
  %57 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 3
  %58 = bitcast float* %57 to i32*
  store i32 %56, i32* %58, align 4, !tbaa !8
  %59 = bitcast [16 x float]* %12 to i8*
  %60 = bitcast [4 x float]* %13 to i8*
  %61 = getelementptr inbounds float, float* %2, i64 %32
  %62 = load float, float* %61, align 4, !tbaa !8
  %63 = shl nsw i32 %1, 2
  %64 = shl nsw i32 %3, 2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %59) #6
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 64, i32 16, i1 false)
  %65 = sext i32 %63 to i64
  %66 = sext i32 %64 to i64
  %67 = shl i64 %16, 32
  %68 = ashr exact i64 %67, 32
  %69 = shl i64 %14, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds [4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 %68, i64 %70
  %72 = bitcast [4 x float]* %10 to i32*
  %73 = shl nsw i32 %1, 1
  %74 = sext i32 %73 to i64
  %75 = mul nsw i32 %1, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %78 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 0
  %79 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 1
  %80 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 2
  %81 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 3
  %82 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 4
  %83 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 5
  %84 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 6
  %85 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 7
  %86 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 8
  %87 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 9
  %88 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 10
  %89 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 11
  %90 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 12
  %91 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 13
  %92 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 14
  %93 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 15
  %94 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 1
  %95 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 2
  %96 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 3
  %97 = mul nsw i32 %6, %3
  br label %98

; <label>:98:                                     ; preds = %98, %9
  %99 = phi float [ 0.000000e+00, %9 ], [ %264, %98 ]
  %100 = phi float [ 0.000000e+00, %9 ], [ %262, %98 ]
  %101 = phi float [ 0.000000e+00, %9 ], [ %260, %98 ]
  %102 = phi float [ 0.000000e+00, %9 ], [ %258, %98 ]
  %103 = phi float [ 0.000000e+00, %9 ], [ %256, %98 ]
  %104 = phi float [ 0.000000e+00, %9 ], [ %254, %98 ]
  %105 = phi float [ 0.000000e+00, %9 ], [ %252, %98 ]
  %106 = phi float [ 0.000000e+00, %9 ], [ %250, %98 ]
  %107 = phi float [ 0.000000e+00, %9 ], [ %248, %98 ]
  %108 = phi float [ 0.000000e+00, %9 ], [ %246, %98 ]
  %109 = phi float [ 0.000000e+00, %9 ], [ %244, %98 ]
  %110 = phi float [ 0.000000e+00, %9 ], [ %242, %98 ]
  %111 = phi float [ 0.000000e+00, %9 ], [ %240, %98 ]
  %112 = phi float [ 0.000000e+00, %9 ], [ %238, %98 ]
  %113 = phi float [ 0.000000e+00, %9 ], [ %236, %98 ]
  %114 = phi float [ 0.000000e+00, %9 ], [ %234, %98 ]
  %115 = phi float* [ %61, %9 ], [ %120, %98 ]
  %116 = phi float* [ %28, %9 ], [ %119, %98 ]
  %117 = phi i32 [ %64, %9 ], [ %265, %98 ]
  %118 = phi float [ %62, %9 ], [ %132, %98 ]
  %119 = getelementptr inbounds float, float* %116, i64 %65
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %60, i8* nonnull %11, i64 16, i32 16, i1 false)
  %120 = getelementptr inbounds float, float* %115, i64 %66
  store float %118, float* %71, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %121 = bitcast float* %119 to i32*
  %122 = load i32, i32* %121, align 4, !tbaa !8
  store i32 %122, i32* %72, align 16, !tbaa !8
  %123 = getelementptr inbounds float, float* %119, i64 %37
  %124 = bitcast float* %123 to i32*
  %125 = load i32, i32* %124, align 4, !tbaa !8
  store i32 %125, i32* %46, align 4, !tbaa !8
  %126 = getelementptr inbounds float, float* %119, i64 %74
  %127 = bitcast float* %126 to i32*
  %128 = load i32, i32* %127, align 4, !tbaa !8
  store i32 %128, i32* %52, align 8, !tbaa !8
  %129 = getelementptr inbounds float, float* %119, i64 %76
  %130 = bitcast float* %129 to i32*
  %131 = load i32, i32* %130, align 4, !tbaa !8
  store i32 %131, i32* %58, align 4, !tbaa !8
  %132 = load float, float* %120, align 4, !tbaa !8
  %133 = load float, float* %77, align 16, !tbaa !8
  %134 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 0), align 16, !tbaa !8
  %135 = tail call float @llvm.fmuladd.f32(float %133, float %134, float %114)
  %136 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 1), align 4, !tbaa !8
  %137 = tail call float @llvm.fmuladd.f32(float %133, float %136, float %113)
  %138 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 2), align 8, !tbaa !8
  %139 = tail call float @llvm.fmuladd.f32(float %133, float %138, float %112)
  %140 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 3), align 4, !tbaa !8
  %141 = tail call float @llvm.fmuladd.f32(float %133, float %140, float %111)
  %142 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 4), align 16, !tbaa !8
  %143 = tail call float @llvm.fmuladd.f32(float %133, float %142, float %110)
  %144 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 5), align 4, !tbaa !8
  %145 = tail call float @llvm.fmuladd.f32(float %133, float %144, float %109)
  %146 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 6), align 8, !tbaa !8
  %147 = tail call float @llvm.fmuladd.f32(float %133, float %146, float %108)
  %148 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 7), align 4, !tbaa !8
  %149 = tail call float @llvm.fmuladd.f32(float %133, float %148, float %107)
  %150 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 8), align 16, !tbaa !8
  %151 = tail call float @llvm.fmuladd.f32(float %133, float %150, float %106)
  %152 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 9), align 4, !tbaa !8
  %153 = tail call float @llvm.fmuladd.f32(float %133, float %152, float %105)
  %154 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 10), align 8, !tbaa !8
  %155 = tail call float @llvm.fmuladd.f32(float %133, float %154, float %104)
  %156 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 11), align 4, !tbaa !8
  %157 = tail call float @llvm.fmuladd.f32(float %133, float %156, float %103)
  %158 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 12), align 16, !tbaa !8
  %159 = tail call float @llvm.fmuladd.f32(float %133, float %158, float %102)
  %160 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 13), align 4, !tbaa !8
  %161 = tail call float @llvm.fmuladd.f32(float %133, float %160, float %101)
  %162 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 14), align 8, !tbaa !8
  %163 = tail call float @llvm.fmuladd.f32(float %133, float %162, float %100)
  %164 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 15), align 4, !tbaa !8
  %165 = tail call float @llvm.fmuladd.f32(float %133, float %164, float %99)
  %166 = load float, float* %94, align 4, !tbaa !8
  %167 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 0), align 16, !tbaa !8
  %168 = tail call float @llvm.fmuladd.f32(float %166, float %167, float %135)
  %169 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 1), align 4, !tbaa !8
  %170 = tail call float @llvm.fmuladd.f32(float %166, float %169, float %137)
  %171 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 2), align 8, !tbaa !8
  %172 = tail call float @llvm.fmuladd.f32(float %166, float %171, float %139)
  %173 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 3), align 4, !tbaa !8
  %174 = tail call float @llvm.fmuladd.f32(float %166, float %173, float %141)
  %175 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 4), align 16, !tbaa !8
  %176 = tail call float @llvm.fmuladd.f32(float %166, float %175, float %143)
  %177 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 5), align 4, !tbaa !8
  %178 = tail call float @llvm.fmuladd.f32(float %166, float %177, float %145)
  %179 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 6), align 8, !tbaa !8
  %180 = tail call float @llvm.fmuladd.f32(float %166, float %179, float %147)
  %181 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 7), align 4, !tbaa !8
  %182 = tail call float @llvm.fmuladd.f32(float %166, float %181, float %149)
  %183 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 8), align 16, !tbaa !8
  %184 = tail call float @llvm.fmuladd.f32(float %166, float %183, float %151)
  %185 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 9), align 4, !tbaa !8
  %186 = tail call float @llvm.fmuladd.f32(float %166, float %185, float %153)
  %187 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 10), align 8, !tbaa !8
  %188 = tail call float @llvm.fmuladd.f32(float %166, float %187, float %155)
  %189 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 11), align 4, !tbaa !8
  %190 = tail call float @llvm.fmuladd.f32(float %166, float %189, float %157)
  %191 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 12), align 16, !tbaa !8
  %192 = tail call float @llvm.fmuladd.f32(float %166, float %191, float %159)
  %193 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 13), align 4, !tbaa !8
  %194 = tail call float @llvm.fmuladd.f32(float %166, float %193, float %161)
  %195 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 14), align 8, !tbaa !8
  %196 = tail call float @llvm.fmuladd.f32(float %166, float %195, float %163)
  %197 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 15), align 4, !tbaa !8
  %198 = tail call float @llvm.fmuladd.f32(float %166, float %197, float %165)
  %199 = load float, float* %95, align 8, !tbaa !8
  %200 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 0), align 16, !tbaa !8
  %201 = tail call float @llvm.fmuladd.f32(float %199, float %200, float %168)
  %202 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 1), align 4, !tbaa !8
  %203 = tail call float @llvm.fmuladd.f32(float %199, float %202, float %170)
  %204 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 2), align 8, !tbaa !8
  %205 = tail call float @llvm.fmuladd.f32(float %199, float %204, float %172)
  %206 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 3), align 4, !tbaa !8
  %207 = tail call float @llvm.fmuladd.f32(float %199, float %206, float %174)
  %208 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 4), align 16, !tbaa !8
  %209 = tail call float @llvm.fmuladd.f32(float %199, float %208, float %176)
  %210 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 5), align 4, !tbaa !8
  %211 = tail call float @llvm.fmuladd.f32(float %199, float %210, float %178)
  %212 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 6), align 8, !tbaa !8
  %213 = tail call float @llvm.fmuladd.f32(float %199, float %212, float %180)
  %214 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 7), align 4, !tbaa !8
  %215 = tail call float @llvm.fmuladd.f32(float %199, float %214, float %182)
  %216 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 8), align 16, !tbaa !8
  %217 = tail call float @llvm.fmuladd.f32(float %199, float %216, float %184)
  %218 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 9), align 4, !tbaa !8
  %219 = tail call float @llvm.fmuladd.f32(float %199, float %218, float %186)
  %220 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 10), align 8, !tbaa !8
  %221 = tail call float @llvm.fmuladd.f32(float %199, float %220, float %188)
  %222 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 11), align 4, !tbaa !8
  %223 = tail call float @llvm.fmuladd.f32(float %199, float %222, float %190)
  %224 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 12), align 16, !tbaa !8
  %225 = tail call float @llvm.fmuladd.f32(float %199, float %224, float %192)
  %226 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 13), align 4, !tbaa !8
  %227 = tail call float @llvm.fmuladd.f32(float %199, float %226, float %194)
  %228 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 14), align 8, !tbaa !8
  %229 = tail call float @llvm.fmuladd.f32(float %199, float %228, float %196)
  %230 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 15), align 4, !tbaa !8
  %231 = tail call float @llvm.fmuladd.f32(float %199, float %230, float %198)
  %232 = load float, float* %96, align 4, !tbaa !8
  %233 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 0), align 16, !tbaa !8
  %234 = tail call float @llvm.fmuladd.f32(float %232, float %233, float %201)
  store float %234, float* %78, align 16, !tbaa !8
  %235 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 1), align 4, !tbaa !8
  %236 = tail call float @llvm.fmuladd.f32(float %232, float %235, float %203)
  store float %236, float* %79, align 4, !tbaa !8
  %237 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 2), align 8, !tbaa !8
  %238 = tail call float @llvm.fmuladd.f32(float %232, float %237, float %205)
  store float %238, float* %80, align 8, !tbaa !8
  %239 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 3), align 4, !tbaa !8
  %240 = tail call float @llvm.fmuladd.f32(float %232, float %239, float %207)
  store float %240, float* %81, align 4, !tbaa !8
  %241 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 4), align 16, !tbaa !8
  %242 = tail call float @llvm.fmuladd.f32(float %232, float %241, float %209)
  store float %242, float* %82, align 16, !tbaa !8
  %243 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 5), align 4, !tbaa !8
  %244 = tail call float @llvm.fmuladd.f32(float %232, float %243, float %211)
  store float %244, float* %83, align 4, !tbaa !8
  %245 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 6), align 8, !tbaa !8
  %246 = tail call float @llvm.fmuladd.f32(float %232, float %245, float %213)
  store float %246, float* %84, align 8, !tbaa !8
  %247 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 7), align 4, !tbaa !8
  %248 = tail call float @llvm.fmuladd.f32(float %232, float %247, float %215)
  store float %248, float* %85, align 4, !tbaa !8
  %249 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 8), align 16, !tbaa !8
  %250 = tail call float @llvm.fmuladd.f32(float %232, float %249, float %217)
  store float %250, float* %86, align 16, !tbaa !8
  %251 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 9), align 4, !tbaa !8
  %252 = tail call float @llvm.fmuladd.f32(float %232, float %251, float %219)
  store float %252, float* %87, align 4, !tbaa !8
  %253 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 10), align 8, !tbaa !8
  %254 = tail call float @llvm.fmuladd.f32(float %232, float %253, float %221)
  store float %254, float* %88, align 8, !tbaa !8
  %255 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 11), align 4, !tbaa !8
  %256 = tail call float @llvm.fmuladd.f32(float %232, float %255, float %223)
  store float %256, float* %89, align 4, !tbaa !8
  %257 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 12), align 16, !tbaa !8
  %258 = tail call float @llvm.fmuladd.f32(float %232, float %257, float %225)
  store float %258, float* %90, align 16, !tbaa !8
  %259 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 13), align 4, !tbaa !8
  %260 = tail call float @llvm.fmuladd.f32(float %232, float %259, float %227)
  store float %260, float* %91, align 4, !tbaa !8
  %261 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 14), align 8, !tbaa !8
  %262 = tail call float @llvm.fmuladd.f32(float %232, float %261, float %229)
  store float %262, float* %92, align 8, !tbaa !8
  %263 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 15), align 4, !tbaa !8
  %264 = tail call float @llvm.fmuladd.f32(float %232, float %263, float %231)
  store float %264, float* %93, align 4, !tbaa !8
  %265 = add nsw i32 %117, %64
  tail call void @_Z7barrierj(i32 1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #6
  %266 = icmp slt i32 %265, %97
  br i1 %266, label %98, label %267

; <label>:267:                                    ; preds = %98
  store float %132, float* %71, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %268 = load float, float* %40, align 16, !tbaa !8
  %269 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 0), align 16, !tbaa !8
  %270 = tail call float @llvm.fmuladd.f32(float %268, float %269, float %234)
  %271 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 1), align 4, !tbaa !8
  %272 = tail call float @llvm.fmuladd.f32(float %268, float %271, float %236)
  %273 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 2), align 8, !tbaa !8
  %274 = tail call float @llvm.fmuladd.f32(float %268, float %273, float %238)
  %275 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 3), align 4, !tbaa !8
  %276 = tail call float @llvm.fmuladd.f32(float %268, float %275, float %240)
  %277 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 4), align 16, !tbaa !8
  %278 = tail call float @llvm.fmuladd.f32(float %268, float %277, float %242)
  %279 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 5), align 4, !tbaa !8
  %280 = tail call float @llvm.fmuladd.f32(float %268, float %279, float %244)
  %281 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 6), align 8, !tbaa !8
  %282 = tail call float @llvm.fmuladd.f32(float %268, float %281, float %246)
  %283 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 7), align 4, !tbaa !8
  %284 = tail call float @llvm.fmuladd.f32(float %268, float %283, float %248)
  %285 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 8), align 16, !tbaa !8
  %286 = tail call float @llvm.fmuladd.f32(float %268, float %285, float %250)
  %287 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 9), align 4, !tbaa !8
  %288 = tail call float @llvm.fmuladd.f32(float %268, float %287, float %252)
  %289 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 10), align 8, !tbaa !8
  %290 = tail call float @llvm.fmuladd.f32(float %268, float %289, float %254)
  %291 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 11), align 4, !tbaa !8
  %292 = tail call float @llvm.fmuladd.f32(float %268, float %291, float %256)
  %293 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 12), align 16, !tbaa !8
  %294 = tail call float @llvm.fmuladd.f32(float %268, float %293, float %258)
  %295 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 13), align 4, !tbaa !8
  %296 = tail call float @llvm.fmuladd.f32(float %268, float %295, float %260)
  %297 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 14), align 8, !tbaa !8
  %298 = tail call float @llvm.fmuladd.f32(float %268, float %297, float %262)
  %299 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 0, i64 15), align 4, !tbaa !8
  %300 = tail call float @llvm.fmuladd.f32(float %268, float %299, float %264)
  %301 = load float, float* %45, align 4, !tbaa !8
  %302 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 0), align 16, !tbaa !8
  %303 = tail call float @llvm.fmuladd.f32(float %301, float %302, float %270)
  %304 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 1), align 4, !tbaa !8
  %305 = tail call float @llvm.fmuladd.f32(float %301, float %304, float %272)
  %306 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 2), align 8, !tbaa !8
  %307 = tail call float @llvm.fmuladd.f32(float %301, float %306, float %274)
  %308 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 3), align 4, !tbaa !8
  %309 = tail call float @llvm.fmuladd.f32(float %301, float %308, float %276)
  %310 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 4), align 16, !tbaa !8
  %311 = tail call float @llvm.fmuladd.f32(float %301, float %310, float %278)
  %312 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 5), align 4, !tbaa !8
  %313 = tail call float @llvm.fmuladd.f32(float %301, float %312, float %280)
  %314 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 6), align 8, !tbaa !8
  %315 = tail call float @llvm.fmuladd.f32(float %301, float %314, float %282)
  %316 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 7), align 4, !tbaa !8
  %317 = tail call float @llvm.fmuladd.f32(float %301, float %316, float %284)
  %318 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 8), align 16, !tbaa !8
  %319 = tail call float @llvm.fmuladd.f32(float %301, float %318, float %286)
  %320 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 9), align 4, !tbaa !8
  %321 = tail call float @llvm.fmuladd.f32(float %301, float %320, float %288)
  %322 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 10), align 8, !tbaa !8
  %323 = tail call float @llvm.fmuladd.f32(float %301, float %322, float %290)
  %324 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 11), align 4, !tbaa !8
  %325 = tail call float @llvm.fmuladd.f32(float %301, float %324, float %292)
  %326 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 12), align 16, !tbaa !8
  %327 = tail call float @llvm.fmuladd.f32(float %301, float %326, float %294)
  %328 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 13), align 4, !tbaa !8
  %329 = tail call float @llvm.fmuladd.f32(float %301, float %328, float %296)
  %330 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 14), align 8, !tbaa !8
  %331 = tail call float @llvm.fmuladd.f32(float %301, float %330, float %298)
  %332 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 1, i64 15), align 4, !tbaa !8
  %333 = tail call float @llvm.fmuladd.f32(float %301, float %332, float %300)
  %334 = load float, float* %51, align 8, !tbaa !8
  %335 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 0), align 16, !tbaa !8
  %336 = tail call float @llvm.fmuladd.f32(float %334, float %335, float %303)
  %337 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 1), align 4, !tbaa !8
  %338 = tail call float @llvm.fmuladd.f32(float %334, float %337, float %305)
  %339 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 2), align 8, !tbaa !8
  %340 = tail call float @llvm.fmuladd.f32(float %334, float %339, float %307)
  %341 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 3), align 4, !tbaa !8
  %342 = tail call float @llvm.fmuladd.f32(float %334, float %341, float %309)
  %343 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 4), align 16, !tbaa !8
  %344 = tail call float @llvm.fmuladd.f32(float %334, float %343, float %311)
  %345 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 5), align 4, !tbaa !8
  %346 = tail call float @llvm.fmuladd.f32(float %334, float %345, float %313)
  %347 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 6), align 8, !tbaa !8
  %348 = tail call float @llvm.fmuladd.f32(float %334, float %347, float %315)
  %349 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 7), align 4, !tbaa !8
  %350 = tail call float @llvm.fmuladd.f32(float %334, float %349, float %317)
  %351 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 8), align 16, !tbaa !8
  %352 = tail call float @llvm.fmuladd.f32(float %334, float %351, float %319)
  %353 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 9), align 4, !tbaa !8
  %354 = tail call float @llvm.fmuladd.f32(float %334, float %353, float %321)
  %355 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 10), align 8, !tbaa !8
  %356 = tail call float @llvm.fmuladd.f32(float %334, float %355, float %323)
  %357 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 11), align 4, !tbaa !8
  %358 = tail call float @llvm.fmuladd.f32(float %334, float %357, float %325)
  %359 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 12), align 16, !tbaa !8
  %360 = tail call float @llvm.fmuladd.f32(float %334, float %359, float %327)
  %361 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 13), align 4, !tbaa !8
  %362 = tail call float @llvm.fmuladd.f32(float %334, float %361, float %329)
  %363 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 14), align 8, !tbaa !8
  %364 = tail call float @llvm.fmuladd.f32(float %334, float %363, float %331)
  %365 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 2, i64 15), align 4, !tbaa !8
  %366 = tail call float @llvm.fmuladd.f32(float %334, float %365, float %333)
  %367 = load float, float* %57, align 4, !tbaa !8
  %368 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 0), align 16, !tbaa !8
  %369 = tail call float @llvm.fmuladd.f32(float %367, float %368, float %336)
  store float %369, float* %78, align 16, !tbaa !8
  %370 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 1), align 4, !tbaa !8
  %371 = tail call float @llvm.fmuladd.f32(float %367, float %370, float %338)
  store float %371, float* %79, align 4, !tbaa !8
  %372 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 2), align 8, !tbaa !8
  %373 = tail call float @llvm.fmuladd.f32(float %367, float %372, float %340)
  store float %373, float* %80, align 8, !tbaa !8
  %374 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 3), align 4, !tbaa !8
  %375 = tail call float @llvm.fmuladd.f32(float %367, float %374, float %342)
  store float %375, float* %81, align 4, !tbaa !8
  %376 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 4), align 16, !tbaa !8
  %377 = tail call float @llvm.fmuladd.f32(float %367, float %376, float %344)
  store float %377, float* %82, align 16, !tbaa !8
  %378 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 5), align 4, !tbaa !8
  %379 = tail call float @llvm.fmuladd.f32(float %367, float %378, float %346)
  store float %379, float* %83, align 4, !tbaa !8
  %380 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 6), align 8, !tbaa !8
  %381 = tail call float @llvm.fmuladd.f32(float %367, float %380, float %348)
  store float %381, float* %84, align 8, !tbaa !8
  %382 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 7), align 4, !tbaa !8
  %383 = tail call float @llvm.fmuladd.f32(float %367, float %382, float %350)
  store float %383, float* %85, align 4, !tbaa !8
  %384 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 8), align 16, !tbaa !8
  %385 = tail call float @llvm.fmuladd.f32(float %367, float %384, float %352)
  store float %385, float* %86, align 16, !tbaa !8
  %386 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 9), align 4, !tbaa !8
  %387 = tail call float @llvm.fmuladd.f32(float %367, float %386, float %354)
  store float %387, float* %87, align 4, !tbaa !8
  %388 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 10), align 8, !tbaa !8
  %389 = tail call float @llvm.fmuladd.f32(float %367, float %388, float %356)
  store float %389, float* %88, align 8, !tbaa !8
  %390 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 11), align 4, !tbaa !8
  %391 = tail call float @llvm.fmuladd.f32(float %367, float %390, float %358)
  store float %391, float* %89, align 4, !tbaa !8
  %392 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 12), align 16, !tbaa !8
  %393 = tail call float @llvm.fmuladd.f32(float %367, float %392, float %360)
  store float %393, float* %90, align 16, !tbaa !8
  %394 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 13), align 4, !tbaa !8
  %395 = tail call float @llvm.fmuladd.f32(float %367, float %394, float %362)
  store float %395, float* %91, align 4, !tbaa !8
  %396 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 14), align 8, !tbaa !8
  %397 = tail call float @llvm.fmuladd.f32(float %367, float %396, float %364)
  store float %397, float* %92, align 8, !tbaa !8
  %398 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @sgemmNT.bs, i64 0, i64 3, i64 15), align 4, !tbaa !8
  %399 = tail call float @llvm.fmuladd.f32(float %367, float %398, float %366)
  store float %399, float* %93, align 4, !tbaa !8
  %400 = sext i32 %5 to i64
  %401 = load float, float* %36, align 4, !tbaa !8
  %402 = fmul float %401, %8
  %403 = tail call float @llvm.fmuladd.f32(float %7, float %369, float %402)
  store float %403, float* %36, align 4, !tbaa !8
  %404 = getelementptr inbounds float, float* %36, i64 %400
  %405 = load float, float* %404, align 4, !tbaa !8
  %406 = fmul float %405, %8
  %407 = tail call float @llvm.fmuladd.f32(float %7, float %371, float %406)
  store float %407, float* %404, align 4, !tbaa !8
  %408 = getelementptr inbounds float, float* %404, i64 %400
  %409 = load float, float* %408, align 4, !tbaa !8
  %410 = fmul float %409, %8
  %411 = tail call float @llvm.fmuladd.f32(float %7, float %373, float %410)
  store float %411, float* %408, align 4, !tbaa !8
  %412 = getelementptr inbounds float, float* %408, i64 %400
  %413 = load float, float* %412, align 4, !tbaa !8
  %414 = fmul float %413, %8
  %415 = tail call float @llvm.fmuladd.f32(float %7, float %375, float %414)
  store float %415, float* %412, align 4, !tbaa !8
  %416 = getelementptr inbounds float, float* %412, i64 %400
  %417 = load float, float* %416, align 4, !tbaa !8
  %418 = fmul float %417, %8
  %419 = tail call float @llvm.fmuladd.f32(float %7, float %377, float %418)
  store float %419, float* %416, align 4, !tbaa !8
  %420 = getelementptr inbounds float, float* %416, i64 %400
  %421 = load float, float* %420, align 4, !tbaa !8
  %422 = fmul float %421, %8
  %423 = tail call float @llvm.fmuladd.f32(float %7, float %379, float %422)
  store float %423, float* %420, align 4, !tbaa !8
  %424 = getelementptr inbounds float, float* %420, i64 %400
  %425 = load float, float* %424, align 4, !tbaa !8
  %426 = fmul float %425, %8
  %427 = tail call float @llvm.fmuladd.f32(float %7, float %381, float %426)
  store float %427, float* %424, align 4, !tbaa !8
  %428 = getelementptr inbounds float, float* %424, i64 %400
  %429 = load float, float* %428, align 4, !tbaa !8
  %430 = fmul float %429, %8
  %431 = tail call float @llvm.fmuladd.f32(float %7, float %383, float %430)
  store float %431, float* %428, align 4, !tbaa !8
  %432 = getelementptr inbounds float, float* %428, i64 %400
  %433 = load float, float* %432, align 4, !tbaa !8
  %434 = fmul float %433, %8
  %435 = tail call float @llvm.fmuladd.f32(float %7, float %385, float %434)
  store float %435, float* %432, align 4, !tbaa !8
  %436 = getelementptr inbounds float, float* %432, i64 %400
  %437 = load float, float* %436, align 4, !tbaa !8
  %438 = fmul float %437, %8
  %439 = tail call float @llvm.fmuladd.f32(float %7, float %387, float %438)
  store float %439, float* %436, align 4, !tbaa !8
  %440 = getelementptr inbounds float, float* %436, i64 %400
  %441 = load float, float* %440, align 4, !tbaa !8
  %442 = fmul float %441, %8
  %443 = tail call float @llvm.fmuladd.f32(float %7, float %389, float %442)
  store float %443, float* %440, align 4, !tbaa !8
  %444 = getelementptr inbounds float, float* %440, i64 %400
  %445 = load float, float* %444, align 4, !tbaa !8
  %446 = fmul float %445, %8
  %447 = tail call float @llvm.fmuladd.f32(float %7, float %391, float %446)
  store float %447, float* %444, align 4, !tbaa !8
  %448 = getelementptr inbounds float, float* %444, i64 %400
  %449 = load float, float* %448, align 4, !tbaa !8
  %450 = fmul float %449, %8
  %451 = tail call float @llvm.fmuladd.f32(float %7, float %393, float %450)
  store float %451, float* %448, align 4, !tbaa !8
  %452 = getelementptr inbounds float, float* %448, i64 %400
  %453 = load float, float* %91, align 4, !tbaa !8
  %454 = load float, float* %452, align 4, !tbaa !8
  %455 = fmul float %454, %8
  %456 = tail call float @llvm.fmuladd.f32(float %7, float %453, float %455)
  store float %456, float* %452, align 4, !tbaa !8
  %457 = getelementptr inbounds float, float* %452, i64 %400
  %458 = load float, float* %92, align 8, !tbaa !8
  %459 = load float, float* %457, align 4, !tbaa !8
  %460 = fmul float %459, %8
  %461 = tail call float @llvm.fmuladd.f32(float %7, float %458, float %460)
  store float %461, float* %457, align 4, !tbaa !8
  %462 = getelementptr inbounds float, float* %457, i64 %400
  %463 = load float, float* %93, align 4, !tbaa !8
  %464 = load float, float* %462, align 4, !tbaa !8
  %465 = fmul float %464, %8
  %466 = tail call float @llvm.fmuladd.f32(float %7, float %463, float %465)
  store float %466, float* %462, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %59) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"int", !"float*", !"int", !"float*", !"int", !"int", !"float", !"float"}
!7 = !{!"const", !"", !"const", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
