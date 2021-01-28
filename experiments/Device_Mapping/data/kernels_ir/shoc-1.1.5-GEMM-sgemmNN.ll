; ModuleID = 'shoc-1.1.5-GEMM-sgemmNN.cl'
source_filename = "shoc-1.1.5-GEMM-sgemmNN.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@sgemmNN.bs = internal unnamed_addr global [16 x [17 x float]] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @sgemmNN(float* nocapture readonly, i32, float* nocapture readonly, i32, float* nocapture, i32, i32, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = alloca [16 x float], align 16
  %11 = bitcast [16 x float]* %10 to i8*
  %12 = alloca [4 x float], align 16
  %13 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z12get_local_idj(i32 1) #5
  %16 = trunc i64 %15 to i32
  %17 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 6
  %20 = tail call i64 @_Z12get_group_idj(i32 1) #5
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 4
  %23 = shl i32 %16, 4
  %24 = add nsw i32 %23, %14
  %25 = add nsw i32 %24, %19
  %26 = sext i32 %25 to i64
  %27 = add nsw i32 %22, %16
  %28 = mul nsw i32 %27, %3
  %29 = add nsw i32 %28, %14
  %30 = sext i32 %29 to i64
  %31 = mul nsw i32 %22, %5
  %32 = add nsw i32 %31, %25
  %33 = sext i32 %32 to i64
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #6
  call void @llvm.memset.p0i8.i64(i8* nonnull %11, i8 0, i64 64, i32 16, i1 false)
  %34 = getelementptr inbounds float, float* %0, i64 %26
  %35 = getelementptr inbounds float, float* %2, i64 %30
  %36 = getelementptr inbounds float, float* %4, i64 %33
  %37 = bitcast [4 x float]* %12 to i8*
  %38 = shl i64 %13, 32
  %39 = ashr exact i64 %38, 32
  %40 = shl i64 %15, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 %39, i64 %41
  %43 = bitcast float* %42 to i32*
  %44 = shl nsw i32 %3, 2
  %45 = sext i32 %44 to i64
  %46 = add i64 %40, 17179869184
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 %39, i64 %47
  %49 = bitcast float* %48 to i32*
  %50 = shl nsw i32 %3, 3
  %51 = sext i32 %50 to i64
  %52 = add i64 %40, 34359738368
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 %39, i64 %53
  %55 = bitcast float* %54 to i32*
  %56 = mul nsw i32 %3, 12
  %57 = sext i32 %56 to i64
  %58 = add i64 %40, 51539607552
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 %39, i64 %59
  %61 = bitcast float* %60 to i32*
  %62 = shl nsw i32 %1, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %65 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %66 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 1
  %67 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 2
  %68 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 3
  %69 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 4
  %70 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 5
  %71 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 6
  %72 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 7
  %73 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 8
  %74 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 9
  %75 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 10
  %76 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 11
  %77 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 12
  %78 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 13
  %79 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 14
  %80 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 15
  %81 = bitcast [4 x float]* %12 to i32*
  %82 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 1
  %83 = sext i32 %1 to i64
  %84 = bitcast float* %82 to i32*
  %85 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 2
  %86 = shl nsw i32 %1, 1
  %87 = sext i32 %86 to i64
  %88 = bitcast float* %85 to i32*
  %89 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 3
  %90 = mul nsw i32 %1, 3
  %91 = sext i32 %90 to i64
  %92 = bitcast float* %89 to i32*
  %93 = bitcast [4 x float]* %12 to i32*
  %94 = shl nsw i64 %83, 1
  %95 = mul nsw i64 %83, 3
  br label %96

; <label>:96:                                     ; preds = %96, %9
  %97 = phi float [ 0.000000e+00, %9 ], [ %700, %96 ]
  %98 = phi float [ 0.000000e+00, %9 ], [ %698, %96 ]
  %99 = phi float [ 0.000000e+00, %9 ], [ %696, %96 ]
  %100 = phi float [ 0.000000e+00, %9 ], [ %694, %96 ]
  %101 = phi float [ 0.000000e+00, %9 ], [ %692, %96 ]
  %102 = phi float [ 0.000000e+00, %9 ], [ %690, %96 ]
  %103 = phi float [ 0.000000e+00, %9 ], [ %688, %96 ]
  %104 = phi float [ 0.000000e+00, %9 ], [ %686, %96 ]
  %105 = phi float [ 0.000000e+00, %9 ], [ %684, %96 ]
  %106 = phi float [ 0.000000e+00, %9 ], [ %682, %96 ]
  %107 = phi float [ 0.000000e+00, %9 ], [ %680, %96 ]
  %108 = phi float [ 0.000000e+00, %9 ], [ %678, %96 ]
  %109 = phi float [ 0.000000e+00, %9 ], [ %676, %96 ]
  %110 = phi float [ 0.000000e+00, %9 ], [ %674, %96 ]
  %111 = phi float [ 0.000000e+00, %9 ], [ %672, %96 ]
  %112 = phi float* [ %35, %9 ], [ %703, %96 ]
  %113 = phi float* [ %34, %9 ], [ %570, %96 ]
  %114 = phi i32 [ 0, %9 ], [ %704, %96 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #6
  %115 = bitcast float* %113 to i32*
  %116 = load i32, i32* %115, align 4, !tbaa !8
  store i32 %116, i32* %93, align 16, !tbaa !8
  %117 = getelementptr inbounds float, float* %113, i64 %83
  %118 = bitcast float* %117 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !8
  store i32 %119, i32* %84, align 4, !tbaa !8
  %120 = getelementptr inbounds float, float* %113, i64 %94
  %121 = bitcast float* %120 to i32*
  %122 = load i32, i32* %121, align 4, !tbaa !8
  store i32 %122, i32* %88, align 8, !tbaa !8
  %123 = getelementptr inbounds float, float* %113, i64 %95
  %124 = bitcast float* %123 to i32*
  %125 = load i32, i32* %124, align 4, !tbaa !8
  store i32 %125, i32* %92, align 4, !tbaa !8
  %126 = bitcast float* %112 to i32*
  %127 = load i32, i32* %126, align 4, !tbaa !8
  store i32 %127, i32* %43, align 4, !tbaa !8
  %128 = getelementptr inbounds float, float* %112, i64 %45
  %129 = bitcast float* %128 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !8
  store i32 %130, i32* %49, align 4, !tbaa !8
  %131 = getelementptr inbounds float, float* %112, i64 %51
  %132 = bitcast float* %131 to i32*
  %133 = load i32, i32* %132, align 4, !tbaa !8
  store i32 %133, i32* %55, align 4, !tbaa !8
  %134 = getelementptr inbounds float, float* %112, i64 %57
  %135 = bitcast float* %134 to i32*
  %136 = load i32, i32* %135, align 4, !tbaa !8
  store i32 %136, i32* %61, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %137 = getelementptr inbounds float, float* %113, i64 %63
  %138 = bitcast i32 %116 to float
  %139 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 0), align 16, !tbaa !8
  %140 = tail call float @llvm.fmuladd.f32(float %138, float %139, float %111)
  store float %140, float* %65, align 16, !tbaa !8
  %141 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 1), align 4, !tbaa !8
  %142 = tail call float @llvm.fmuladd.f32(float %138, float %141, float %110)
  store float %142, float* %66, align 4, !tbaa !8
  %143 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 2), align 8, !tbaa !8
  %144 = tail call float @llvm.fmuladd.f32(float %138, float %143, float %109)
  store float %144, float* %67, align 8, !tbaa !8
  %145 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 3), align 4, !tbaa !8
  %146 = tail call float @llvm.fmuladd.f32(float %138, float %145, float %108)
  store float %146, float* %68, align 4, !tbaa !8
  %147 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 4), align 16, !tbaa !8
  %148 = tail call float @llvm.fmuladd.f32(float %138, float %147, float %107)
  store float %148, float* %69, align 16, !tbaa !8
  %149 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 5), align 4, !tbaa !8
  %150 = tail call float @llvm.fmuladd.f32(float %138, float %149, float %106)
  store float %150, float* %70, align 4, !tbaa !8
  %151 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 6), align 8, !tbaa !8
  %152 = tail call float @llvm.fmuladd.f32(float %138, float %151, float %105)
  store float %152, float* %71, align 8, !tbaa !8
  %153 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 7), align 4, !tbaa !8
  %154 = tail call float @llvm.fmuladd.f32(float %138, float %153, float %104)
  store float %154, float* %72, align 4, !tbaa !8
  %155 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 8), align 16, !tbaa !8
  %156 = tail call float @llvm.fmuladd.f32(float %138, float %155, float %103)
  store float %156, float* %73, align 16, !tbaa !8
  %157 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 9), align 4, !tbaa !8
  %158 = tail call float @llvm.fmuladd.f32(float %138, float %157, float %102)
  store float %158, float* %74, align 4, !tbaa !8
  %159 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 10), align 8, !tbaa !8
  %160 = tail call float @llvm.fmuladd.f32(float %138, float %159, float %101)
  store float %160, float* %75, align 8, !tbaa !8
  %161 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 11), align 4, !tbaa !8
  %162 = tail call float @llvm.fmuladd.f32(float %138, float %161, float %100)
  store float %162, float* %76, align 4, !tbaa !8
  %163 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 12), align 16, !tbaa !8
  %164 = tail call float @llvm.fmuladd.f32(float %138, float %163, float %99)
  store float %164, float* %77, align 16, !tbaa !8
  %165 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 13), align 4, !tbaa !8
  %166 = tail call float @llvm.fmuladd.f32(float %138, float %165, float %98)
  store float %166, float* %78, align 4, !tbaa !8
  %167 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 14), align 8, !tbaa !8
  %168 = tail call float @llvm.fmuladd.f32(float %138, float %167, float %97)
  store float %168, float* %79, align 8, !tbaa !8
  %169 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 0, i64 15), align 4, !tbaa !8
  %170 = load float, float* %80, align 4, !tbaa !8
  %171 = tail call float @llvm.fmuladd.f32(float %138, float %169, float %170)
  store float %171, float* %80, align 4, !tbaa !8
  %172 = bitcast float* %137 to i32*
  %173 = load i32, i32* %172, align 4, !tbaa !8
  store i32 %173, i32* %81, align 16, !tbaa !8
  %174 = bitcast i32 %119 to float
  %175 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 0), align 4, !tbaa !8
  %176 = tail call float @llvm.fmuladd.f32(float %174, float %175, float %140)
  store float %176, float* %65, align 16, !tbaa !8
  %177 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 1), align 4, !tbaa !8
  %178 = tail call float @llvm.fmuladd.f32(float %174, float %177, float %142)
  store float %178, float* %66, align 4, !tbaa !8
  %179 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 2), align 4, !tbaa !8
  %180 = tail call float @llvm.fmuladd.f32(float %174, float %179, float %144)
  store float %180, float* %67, align 8, !tbaa !8
  %181 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 3), align 4, !tbaa !8
  %182 = tail call float @llvm.fmuladd.f32(float %174, float %181, float %146)
  store float %182, float* %68, align 4, !tbaa !8
  %183 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 4), align 4, !tbaa !8
  %184 = tail call float @llvm.fmuladd.f32(float %174, float %183, float %148)
  store float %184, float* %69, align 16, !tbaa !8
  %185 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 5), align 4, !tbaa !8
  %186 = tail call float @llvm.fmuladd.f32(float %174, float %185, float %150)
  store float %186, float* %70, align 4, !tbaa !8
  %187 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 6), align 4, !tbaa !8
  %188 = tail call float @llvm.fmuladd.f32(float %174, float %187, float %152)
  store float %188, float* %71, align 8, !tbaa !8
  %189 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 7), align 4, !tbaa !8
  %190 = tail call float @llvm.fmuladd.f32(float %174, float %189, float %154)
  store float %190, float* %72, align 4, !tbaa !8
  %191 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 8), align 4, !tbaa !8
  %192 = tail call float @llvm.fmuladd.f32(float %174, float %191, float %156)
  store float %192, float* %73, align 16, !tbaa !8
  %193 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 9), align 4, !tbaa !8
  %194 = tail call float @llvm.fmuladd.f32(float %174, float %193, float %158)
  store float %194, float* %74, align 4, !tbaa !8
  %195 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 10), align 4, !tbaa !8
  %196 = tail call float @llvm.fmuladd.f32(float %174, float %195, float %160)
  store float %196, float* %75, align 8, !tbaa !8
  %197 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 11), align 4, !tbaa !8
  %198 = tail call float @llvm.fmuladd.f32(float %174, float %197, float %162)
  store float %198, float* %76, align 4, !tbaa !8
  %199 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 12), align 4, !tbaa !8
  %200 = tail call float @llvm.fmuladd.f32(float %174, float %199, float %164)
  store float %200, float* %77, align 16, !tbaa !8
  %201 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 13), align 4, !tbaa !8
  %202 = tail call float @llvm.fmuladd.f32(float %174, float %201, float %166)
  store float %202, float* %78, align 4, !tbaa !8
  %203 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 14), align 4, !tbaa !8
  %204 = tail call float @llvm.fmuladd.f32(float %174, float %203, float %168)
  store float %204, float* %79, align 8, !tbaa !8
  %205 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 1, i64 15), align 4, !tbaa !8
  %206 = tail call float @llvm.fmuladd.f32(float %174, float %205, float %171)
  store float %206, float* %80, align 4, !tbaa !8
  %207 = getelementptr inbounds float, float* %137, i64 %83
  %208 = bitcast float* %207 to i32*
  %209 = load i32, i32* %208, align 4, !tbaa !8
  store i32 %209, i32* %84, align 4, !tbaa !8
  %210 = load float, float* %85, align 8, !tbaa !8
  %211 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 0), align 8, !tbaa !8
  %212 = tail call float @llvm.fmuladd.f32(float %210, float %211, float %176)
  store float %212, float* %65, align 16, !tbaa !8
  %213 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 1), align 4, !tbaa !8
  %214 = tail call float @llvm.fmuladd.f32(float %210, float %213, float %178)
  store float %214, float* %66, align 4, !tbaa !8
  %215 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 2), align 8, !tbaa !8
  %216 = tail call float @llvm.fmuladd.f32(float %210, float %215, float %180)
  store float %216, float* %67, align 8, !tbaa !8
  %217 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 3), align 4, !tbaa !8
  %218 = tail call float @llvm.fmuladd.f32(float %210, float %217, float %182)
  store float %218, float* %68, align 4, !tbaa !8
  %219 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 4), align 8, !tbaa !8
  %220 = tail call float @llvm.fmuladd.f32(float %210, float %219, float %184)
  store float %220, float* %69, align 16, !tbaa !8
  %221 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 5), align 4, !tbaa !8
  %222 = tail call float @llvm.fmuladd.f32(float %210, float %221, float %186)
  store float %222, float* %70, align 4, !tbaa !8
  %223 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 6), align 8, !tbaa !8
  %224 = tail call float @llvm.fmuladd.f32(float %210, float %223, float %188)
  store float %224, float* %71, align 8, !tbaa !8
  %225 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 7), align 4, !tbaa !8
  %226 = tail call float @llvm.fmuladd.f32(float %210, float %225, float %190)
  store float %226, float* %72, align 4, !tbaa !8
  %227 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 8), align 8, !tbaa !8
  %228 = tail call float @llvm.fmuladd.f32(float %210, float %227, float %192)
  store float %228, float* %73, align 16, !tbaa !8
  %229 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 9), align 4, !tbaa !8
  %230 = tail call float @llvm.fmuladd.f32(float %210, float %229, float %194)
  store float %230, float* %74, align 4, !tbaa !8
  %231 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 10), align 8, !tbaa !8
  %232 = tail call float @llvm.fmuladd.f32(float %210, float %231, float %196)
  store float %232, float* %75, align 8, !tbaa !8
  %233 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 11), align 4, !tbaa !8
  %234 = tail call float @llvm.fmuladd.f32(float %210, float %233, float %198)
  store float %234, float* %76, align 4, !tbaa !8
  %235 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 12), align 8, !tbaa !8
  %236 = tail call float @llvm.fmuladd.f32(float %210, float %235, float %200)
  store float %236, float* %77, align 16, !tbaa !8
  %237 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 13), align 4, !tbaa !8
  %238 = tail call float @llvm.fmuladd.f32(float %210, float %237, float %202)
  store float %238, float* %78, align 4, !tbaa !8
  %239 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 14), align 8, !tbaa !8
  %240 = tail call float @llvm.fmuladd.f32(float %210, float %239, float %204)
  store float %240, float* %79, align 8, !tbaa !8
  %241 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 2, i64 15), align 4, !tbaa !8
  %242 = tail call float @llvm.fmuladd.f32(float %210, float %241, float %206)
  store float %242, float* %80, align 4, !tbaa !8
  %243 = getelementptr inbounds float, float* %137, i64 %87
  %244 = bitcast float* %243 to i32*
  %245 = load i32, i32* %244, align 4, !tbaa !8
  store i32 %245, i32* %88, align 8, !tbaa !8
  %246 = load float, float* %89, align 4, !tbaa !8
  %247 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 0), align 4, !tbaa !8
  %248 = tail call float @llvm.fmuladd.f32(float %246, float %247, float %212)
  store float %248, float* %65, align 16, !tbaa !8
  %249 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 1), align 4, !tbaa !8
  %250 = tail call float @llvm.fmuladd.f32(float %246, float %249, float %214)
  store float %250, float* %66, align 4, !tbaa !8
  %251 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 2), align 4, !tbaa !8
  %252 = tail call float @llvm.fmuladd.f32(float %246, float %251, float %216)
  store float %252, float* %67, align 8, !tbaa !8
  %253 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 3), align 4, !tbaa !8
  %254 = tail call float @llvm.fmuladd.f32(float %246, float %253, float %218)
  store float %254, float* %68, align 4, !tbaa !8
  %255 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 4), align 4, !tbaa !8
  %256 = tail call float @llvm.fmuladd.f32(float %246, float %255, float %220)
  store float %256, float* %69, align 16, !tbaa !8
  %257 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 5), align 4, !tbaa !8
  %258 = tail call float @llvm.fmuladd.f32(float %246, float %257, float %222)
  store float %258, float* %70, align 4, !tbaa !8
  %259 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 6), align 4, !tbaa !8
  %260 = tail call float @llvm.fmuladd.f32(float %246, float %259, float %224)
  store float %260, float* %71, align 8, !tbaa !8
  %261 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 7), align 4, !tbaa !8
  %262 = tail call float @llvm.fmuladd.f32(float %246, float %261, float %226)
  store float %262, float* %72, align 4, !tbaa !8
  %263 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 8), align 4, !tbaa !8
  %264 = tail call float @llvm.fmuladd.f32(float %246, float %263, float %228)
  store float %264, float* %73, align 16, !tbaa !8
  %265 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 9), align 4, !tbaa !8
  %266 = tail call float @llvm.fmuladd.f32(float %246, float %265, float %230)
  store float %266, float* %74, align 4, !tbaa !8
  %267 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 10), align 4, !tbaa !8
  %268 = tail call float @llvm.fmuladd.f32(float %246, float %267, float %232)
  store float %268, float* %75, align 8, !tbaa !8
  %269 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 11), align 4, !tbaa !8
  %270 = tail call float @llvm.fmuladd.f32(float %246, float %269, float %234)
  store float %270, float* %76, align 4, !tbaa !8
  %271 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 12), align 4, !tbaa !8
  %272 = tail call float @llvm.fmuladd.f32(float %246, float %271, float %236)
  store float %272, float* %77, align 16, !tbaa !8
  %273 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 13), align 4, !tbaa !8
  %274 = tail call float @llvm.fmuladd.f32(float %246, float %273, float %238)
  store float %274, float* %78, align 4, !tbaa !8
  %275 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 14), align 4, !tbaa !8
  %276 = tail call float @llvm.fmuladd.f32(float %246, float %275, float %240)
  store float %276, float* %79, align 8, !tbaa !8
  %277 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 3, i64 15), align 4, !tbaa !8
  %278 = tail call float @llvm.fmuladd.f32(float %246, float %277, float %242)
  store float %278, float* %80, align 4, !tbaa !8
  %279 = getelementptr inbounds float, float* %137, i64 %91
  %280 = bitcast float* %279 to i32*
  %281 = load i32, i32* %280, align 4, !tbaa !8
  store i32 %281, i32* %92, align 4, !tbaa !8
  %282 = getelementptr inbounds float, float* %137, i64 %63
  %283 = load float, float* %64, align 16, !tbaa !8
  %284 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 0), align 16, !tbaa !8
  %285 = tail call float @llvm.fmuladd.f32(float %283, float %284, float %248)
  store float %285, float* %65, align 16, !tbaa !8
  %286 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 1), align 4, !tbaa !8
  %287 = tail call float @llvm.fmuladd.f32(float %283, float %286, float %250)
  store float %287, float* %66, align 4, !tbaa !8
  %288 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 2), align 8, !tbaa !8
  %289 = tail call float @llvm.fmuladd.f32(float %283, float %288, float %252)
  store float %289, float* %67, align 8, !tbaa !8
  %290 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 3), align 4, !tbaa !8
  %291 = tail call float @llvm.fmuladd.f32(float %283, float %290, float %254)
  store float %291, float* %68, align 4, !tbaa !8
  %292 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 4), align 16, !tbaa !8
  %293 = tail call float @llvm.fmuladd.f32(float %283, float %292, float %256)
  store float %293, float* %69, align 16, !tbaa !8
  %294 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 5), align 4, !tbaa !8
  %295 = tail call float @llvm.fmuladd.f32(float %283, float %294, float %258)
  store float %295, float* %70, align 4, !tbaa !8
  %296 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 6), align 8, !tbaa !8
  %297 = tail call float @llvm.fmuladd.f32(float %283, float %296, float %260)
  store float %297, float* %71, align 8, !tbaa !8
  %298 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 7), align 4, !tbaa !8
  %299 = tail call float @llvm.fmuladd.f32(float %283, float %298, float %262)
  store float %299, float* %72, align 4, !tbaa !8
  %300 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 8), align 16, !tbaa !8
  %301 = tail call float @llvm.fmuladd.f32(float %283, float %300, float %264)
  store float %301, float* %73, align 16, !tbaa !8
  %302 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 9), align 4, !tbaa !8
  %303 = tail call float @llvm.fmuladd.f32(float %283, float %302, float %266)
  store float %303, float* %74, align 4, !tbaa !8
  %304 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 10), align 8, !tbaa !8
  %305 = tail call float @llvm.fmuladd.f32(float %283, float %304, float %268)
  store float %305, float* %75, align 8, !tbaa !8
  %306 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 11), align 4, !tbaa !8
  %307 = tail call float @llvm.fmuladd.f32(float %283, float %306, float %270)
  store float %307, float* %76, align 4, !tbaa !8
  %308 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 12), align 16, !tbaa !8
  %309 = tail call float @llvm.fmuladd.f32(float %283, float %308, float %272)
  store float %309, float* %77, align 16, !tbaa !8
  %310 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 13), align 4, !tbaa !8
  %311 = tail call float @llvm.fmuladd.f32(float %283, float %310, float %274)
  store float %311, float* %78, align 4, !tbaa !8
  %312 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 14), align 8, !tbaa !8
  %313 = tail call float @llvm.fmuladd.f32(float %283, float %312, float %276)
  store float %313, float* %79, align 8, !tbaa !8
  %314 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 4, i64 15), align 4, !tbaa !8
  %315 = tail call float @llvm.fmuladd.f32(float %283, float %314, float %278)
  store float %315, float* %80, align 4, !tbaa !8
  %316 = bitcast float* %282 to i32*
  %317 = load i32, i32* %316, align 4, !tbaa !8
  store i32 %317, i32* %81, align 16, !tbaa !8
  %318 = load float, float* %82, align 4, !tbaa !8
  %319 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 0), align 4, !tbaa !8
  %320 = tail call float @llvm.fmuladd.f32(float %318, float %319, float %285)
  store float %320, float* %65, align 16, !tbaa !8
  %321 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 1), align 4, !tbaa !8
  %322 = tail call float @llvm.fmuladd.f32(float %318, float %321, float %287)
  store float %322, float* %66, align 4, !tbaa !8
  %323 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 2), align 4, !tbaa !8
  %324 = tail call float @llvm.fmuladd.f32(float %318, float %323, float %289)
  store float %324, float* %67, align 8, !tbaa !8
  %325 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 3), align 4, !tbaa !8
  %326 = tail call float @llvm.fmuladd.f32(float %318, float %325, float %291)
  store float %326, float* %68, align 4, !tbaa !8
  %327 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 4), align 4, !tbaa !8
  %328 = tail call float @llvm.fmuladd.f32(float %318, float %327, float %293)
  store float %328, float* %69, align 16, !tbaa !8
  %329 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 5), align 4, !tbaa !8
  %330 = tail call float @llvm.fmuladd.f32(float %318, float %329, float %295)
  store float %330, float* %70, align 4, !tbaa !8
  %331 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 6), align 4, !tbaa !8
  %332 = tail call float @llvm.fmuladd.f32(float %318, float %331, float %297)
  store float %332, float* %71, align 8, !tbaa !8
  %333 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 7), align 4, !tbaa !8
  %334 = tail call float @llvm.fmuladd.f32(float %318, float %333, float %299)
  store float %334, float* %72, align 4, !tbaa !8
  %335 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 8), align 4, !tbaa !8
  %336 = tail call float @llvm.fmuladd.f32(float %318, float %335, float %301)
  store float %336, float* %73, align 16, !tbaa !8
  %337 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 9), align 4, !tbaa !8
  %338 = tail call float @llvm.fmuladd.f32(float %318, float %337, float %303)
  store float %338, float* %74, align 4, !tbaa !8
  %339 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 10), align 4, !tbaa !8
  %340 = tail call float @llvm.fmuladd.f32(float %318, float %339, float %305)
  store float %340, float* %75, align 8, !tbaa !8
  %341 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 11), align 4, !tbaa !8
  %342 = tail call float @llvm.fmuladd.f32(float %318, float %341, float %307)
  store float %342, float* %76, align 4, !tbaa !8
  %343 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 12), align 4, !tbaa !8
  %344 = tail call float @llvm.fmuladd.f32(float %318, float %343, float %309)
  store float %344, float* %77, align 16, !tbaa !8
  %345 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 13), align 4, !tbaa !8
  %346 = tail call float @llvm.fmuladd.f32(float %318, float %345, float %311)
  store float %346, float* %78, align 4, !tbaa !8
  %347 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 14), align 4, !tbaa !8
  %348 = tail call float @llvm.fmuladd.f32(float %318, float %347, float %313)
  store float %348, float* %79, align 8, !tbaa !8
  %349 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 5, i64 15), align 4, !tbaa !8
  %350 = tail call float @llvm.fmuladd.f32(float %318, float %349, float %315)
  store float %350, float* %80, align 4, !tbaa !8
  %351 = getelementptr inbounds float, float* %282, i64 %83
  %352 = bitcast float* %351 to i32*
  %353 = load i32, i32* %352, align 4, !tbaa !8
  store i32 %353, i32* %84, align 4, !tbaa !8
  %354 = load float, float* %85, align 8, !tbaa !8
  %355 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 0), align 8, !tbaa !8
  %356 = tail call float @llvm.fmuladd.f32(float %354, float %355, float %320)
  store float %356, float* %65, align 16, !tbaa !8
  %357 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 1), align 4, !tbaa !8
  %358 = tail call float @llvm.fmuladd.f32(float %354, float %357, float %322)
  store float %358, float* %66, align 4, !tbaa !8
  %359 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 2), align 8, !tbaa !8
  %360 = tail call float @llvm.fmuladd.f32(float %354, float %359, float %324)
  store float %360, float* %67, align 8, !tbaa !8
  %361 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 3), align 4, !tbaa !8
  %362 = tail call float @llvm.fmuladd.f32(float %354, float %361, float %326)
  store float %362, float* %68, align 4, !tbaa !8
  %363 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 4), align 8, !tbaa !8
  %364 = tail call float @llvm.fmuladd.f32(float %354, float %363, float %328)
  store float %364, float* %69, align 16, !tbaa !8
  %365 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 5), align 4, !tbaa !8
  %366 = tail call float @llvm.fmuladd.f32(float %354, float %365, float %330)
  store float %366, float* %70, align 4, !tbaa !8
  %367 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 6), align 8, !tbaa !8
  %368 = tail call float @llvm.fmuladd.f32(float %354, float %367, float %332)
  store float %368, float* %71, align 8, !tbaa !8
  %369 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 7), align 4, !tbaa !8
  %370 = tail call float @llvm.fmuladd.f32(float %354, float %369, float %334)
  store float %370, float* %72, align 4, !tbaa !8
  %371 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 8), align 8, !tbaa !8
  %372 = tail call float @llvm.fmuladd.f32(float %354, float %371, float %336)
  store float %372, float* %73, align 16, !tbaa !8
  %373 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 9), align 4, !tbaa !8
  %374 = tail call float @llvm.fmuladd.f32(float %354, float %373, float %338)
  store float %374, float* %74, align 4, !tbaa !8
  %375 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 10), align 8, !tbaa !8
  %376 = tail call float @llvm.fmuladd.f32(float %354, float %375, float %340)
  store float %376, float* %75, align 8, !tbaa !8
  %377 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 11), align 4, !tbaa !8
  %378 = tail call float @llvm.fmuladd.f32(float %354, float %377, float %342)
  store float %378, float* %76, align 4, !tbaa !8
  %379 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 12), align 8, !tbaa !8
  %380 = tail call float @llvm.fmuladd.f32(float %354, float %379, float %344)
  store float %380, float* %77, align 16, !tbaa !8
  %381 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 13), align 4, !tbaa !8
  %382 = tail call float @llvm.fmuladd.f32(float %354, float %381, float %346)
  store float %382, float* %78, align 4, !tbaa !8
  %383 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 14), align 8, !tbaa !8
  %384 = tail call float @llvm.fmuladd.f32(float %354, float %383, float %348)
  store float %384, float* %79, align 8, !tbaa !8
  %385 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 6, i64 15), align 4, !tbaa !8
  %386 = tail call float @llvm.fmuladd.f32(float %354, float %385, float %350)
  store float %386, float* %80, align 4, !tbaa !8
  %387 = getelementptr inbounds float, float* %282, i64 %87
  %388 = bitcast float* %387 to i32*
  %389 = load i32, i32* %388, align 4, !tbaa !8
  store i32 %389, i32* %88, align 8, !tbaa !8
  %390 = load float, float* %89, align 4, !tbaa !8
  %391 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 0), align 4, !tbaa !8
  %392 = tail call float @llvm.fmuladd.f32(float %390, float %391, float %356)
  store float %392, float* %65, align 16, !tbaa !8
  %393 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 1), align 4, !tbaa !8
  %394 = tail call float @llvm.fmuladd.f32(float %390, float %393, float %358)
  store float %394, float* %66, align 4, !tbaa !8
  %395 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 2), align 4, !tbaa !8
  %396 = tail call float @llvm.fmuladd.f32(float %390, float %395, float %360)
  store float %396, float* %67, align 8, !tbaa !8
  %397 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 3), align 4, !tbaa !8
  %398 = tail call float @llvm.fmuladd.f32(float %390, float %397, float %362)
  store float %398, float* %68, align 4, !tbaa !8
  %399 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 4), align 4, !tbaa !8
  %400 = tail call float @llvm.fmuladd.f32(float %390, float %399, float %364)
  store float %400, float* %69, align 16, !tbaa !8
  %401 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 5), align 4, !tbaa !8
  %402 = tail call float @llvm.fmuladd.f32(float %390, float %401, float %366)
  store float %402, float* %70, align 4, !tbaa !8
  %403 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 6), align 4, !tbaa !8
  %404 = tail call float @llvm.fmuladd.f32(float %390, float %403, float %368)
  store float %404, float* %71, align 8, !tbaa !8
  %405 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 7), align 4, !tbaa !8
  %406 = tail call float @llvm.fmuladd.f32(float %390, float %405, float %370)
  store float %406, float* %72, align 4, !tbaa !8
  %407 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 8), align 4, !tbaa !8
  %408 = tail call float @llvm.fmuladd.f32(float %390, float %407, float %372)
  store float %408, float* %73, align 16, !tbaa !8
  %409 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 9), align 4, !tbaa !8
  %410 = tail call float @llvm.fmuladd.f32(float %390, float %409, float %374)
  store float %410, float* %74, align 4, !tbaa !8
  %411 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 10), align 4, !tbaa !8
  %412 = tail call float @llvm.fmuladd.f32(float %390, float %411, float %376)
  store float %412, float* %75, align 8, !tbaa !8
  %413 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 11), align 4, !tbaa !8
  %414 = tail call float @llvm.fmuladd.f32(float %390, float %413, float %378)
  store float %414, float* %76, align 4, !tbaa !8
  %415 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 12), align 4, !tbaa !8
  %416 = tail call float @llvm.fmuladd.f32(float %390, float %415, float %380)
  store float %416, float* %77, align 16, !tbaa !8
  %417 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 13), align 4, !tbaa !8
  %418 = tail call float @llvm.fmuladd.f32(float %390, float %417, float %382)
  store float %418, float* %78, align 4, !tbaa !8
  %419 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 14), align 4, !tbaa !8
  %420 = tail call float @llvm.fmuladd.f32(float %390, float %419, float %384)
  store float %420, float* %79, align 8, !tbaa !8
  %421 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 7, i64 15), align 4, !tbaa !8
  %422 = tail call float @llvm.fmuladd.f32(float %390, float %421, float %386)
  store float %422, float* %80, align 4, !tbaa !8
  %423 = getelementptr inbounds float, float* %282, i64 %91
  %424 = bitcast float* %423 to i32*
  %425 = load i32, i32* %424, align 4, !tbaa !8
  store i32 %425, i32* %92, align 4, !tbaa !8
  %426 = getelementptr inbounds float, float* %282, i64 %63
  %427 = load float, float* %64, align 16, !tbaa !8
  %428 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 0), align 16, !tbaa !8
  %429 = tail call float @llvm.fmuladd.f32(float %427, float %428, float %392)
  store float %429, float* %65, align 16, !tbaa !8
  %430 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 1), align 4, !tbaa !8
  %431 = tail call float @llvm.fmuladd.f32(float %427, float %430, float %394)
  store float %431, float* %66, align 4, !tbaa !8
  %432 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 2), align 8, !tbaa !8
  %433 = tail call float @llvm.fmuladd.f32(float %427, float %432, float %396)
  store float %433, float* %67, align 8, !tbaa !8
  %434 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 3), align 4, !tbaa !8
  %435 = tail call float @llvm.fmuladd.f32(float %427, float %434, float %398)
  store float %435, float* %68, align 4, !tbaa !8
  %436 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 4), align 16, !tbaa !8
  %437 = tail call float @llvm.fmuladd.f32(float %427, float %436, float %400)
  store float %437, float* %69, align 16, !tbaa !8
  %438 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 5), align 4, !tbaa !8
  %439 = tail call float @llvm.fmuladd.f32(float %427, float %438, float %402)
  store float %439, float* %70, align 4, !tbaa !8
  %440 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 6), align 8, !tbaa !8
  %441 = tail call float @llvm.fmuladd.f32(float %427, float %440, float %404)
  store float %441, float* %71, align 8, !tbaa !8
  %442 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 7), align 4, !tbaa !8
  %443 = tail call float @llvm.fmuladd.f32(float %427, float %442, float %406)
  store float %443, float* %72, align 4, !tbaa !8
  %444 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 8), align 16, !tbaa !8
  %445 = tail call float @llvm.fmuladd.f32(float %427, float %444, float %408)
  store float %445, float* %73, align 16, !tbaa !8
  %446 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 9), align 4, !tbaa !8
  %447 = tail call float @llvm.fmuladd.f32(float %427, float %446, float %410)
  store float %447, float* %74, align 4, !tbaa !8
  %448 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 10), align 8, !tbaa !8
  %449 = tail call float @llvm.fmuladd.f32(float %427, float %448, float %412)
  store float %449, float* %75, align 8, !tbaa !8
  %450 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 11), align 4, !tbaa !8
  %451 = tail call float @llvm.fmuladd.f32(float %427, float %450, float %414)
  store float %451, float* %76, align 4, !tbaa !8
  %452 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 12), align 16, !tbaa !8
  %453 = tail call float @llvm.fmuladd.f32(float %427, float %452, float %416)
  store float %453, float* %77, align 16, !tbaa !8
  %454 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 13), align 4, !tbaa !8
  %455 = tail call float @llvm.fmuladd.f32(float %427, float %454, float %418)
  store float %455, float* %78, align 4, !tbaa !8
  %456 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 14), align 8, !tbaa !8
  %457 = tail call float @llvm.fmuladd.f32(float %427, float %456, float %420)
  store float %457, float* %79, align 8, !tbaa !8
  %458 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 8, i64 15), align 4, !tbaa !8
  %459 = tail call float @llvm.fmuladd.f32(float %427, float %458, float %422)
  store float %459, float* %80, align 4, !tbaa !8
  %460 = bitcast float* %426 to i32*
  %461 = load i32, i32* %460, align 4, !tbaa !8
  store i32 %461, i32* %81, align 16, !tbaa !8
  %462 = load float, float* %82, align 4, !tbaa !8
  %463 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 0), align 4, !tbaa !8
  %464 = tail call float @llvm.fmuladd.f32(float %462, float %463, float %429)
  store float %464, float* %65, align 16, !tbaa !8
  %465 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 1), align 4, !tbaa !8
  %466 = tail call float @llvm.fmuladd.f32(float %462, float %465, float %431)
  store float %466, float* %66, align 4, !tbaa !8
  %467 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 2), align 4, !tbaa !8
  %468 = tail call float @llvm.fmuladd.f32(float %462, float %467, float %433)
  store float %468, float* %67, align 8, !tbaa !8
  %469 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 3), align 4, !tbaa !8
  %470 = tail call float @llvm.fmuladd.f32(float %462, float %469, float %435)
  store float %470, float* %68, align 4, !tbaa !8
  %471 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 4), align 4, !tbaa !8
  %472 = tail call float @llvm.fmuladd.f32(float %462, float %471, float %437)
  store float %472, float* %69, align 16, !tbaa !8
  %473 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 5), align 4, !tbaa !8
  %474 = tail call float @llvm.fmuladd.f32(float %462, float %473, float %439)
  store float %474, float* %70, align 4, !tbaa !8
  %475 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 6), align 4, !tbaa !8
  %476 = tail call float @llvm.fmuladd.f32(float %462, float %475, float %441)
  store float %476, float* %71, align 8, !tbaa !8
  %477 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 7), align 4, !tbaa !8
  %478 = tail call float @llvm.fmuladd.f32(float %462, float %477, float %443)
  store float %478, float* %72, align 4, !tbaa !8
  %479 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 8), align 4, !tbaa !8
  %480 = tail call float @llvm.fmuladd.f32(float %462, float %479, float %445)
  store float %480, float* %73, align 16, !tbaa !8
  %481 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 9), align 4, !tbaa !8
  %482 = tail call float @llvm.fmuladd.f32(float %462, float %481, float %447)
  store float %482, float* %74, align 4, !tbaa !8
  %483 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 10), align 4, !tbaa !8
  %484 = tail call float @llvm.fmuladd.f32(float %462, float %483, float %449)
  store float %484, float* %75, align 8, !tbaa !8
  %485 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 11), align 4, !tbaa !8
  %486 = tail call float @llvm.fmuladd.f32(float %462, float %485, float %451)
  store float %486, float* %76, align 4, !tbaa !8
  %487 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 12), align 4, !tbaa !8
  %488 = tail call float @llvm.fmuladd.f32(float %462, float %487, float %453)
  store float %488, float* %77, align 16, !tbaa !8
  %489 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 13), align 4, !tbaa !8
  %490 = tail call float @llvm.fmuladd.f32(float %462, float %489, float %455)
  store float %490, float* %78, align 4, !tbaa !8
  %491 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 14), align 4, !tbaa !8
  %492 = tail call float @llvm.fmuladd.f32(float %462, float %491, float %457)
  store float %492, float* %79, align 8, !tbaa !8
  %493 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 9, i64 15), align 4, !tbaa !8
  %494 = tail call float @llvm.fmuladd.f32(float %462, float %493, float %459)
  store float %494, float* %80, align 4, !tbaa !8
  %495 = getelementptr inbounds float, float* %426, i64 %83
  %496 = bitcast float* %495 to i32*
  %497 = load i32, i32* %496, align 4, !tbaa !8
  store i32 %497, i32* %84, align 4, !tbaa !8
  %498 = load float, float* %85, align 8, !tbaa !8
  %499 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 0), align 8, !tbaa !8
  %500 = tail call float @llvm.fmuladd.f32(float %498, float %499, float %464)
  store float %500, float* %65, align 16, !tbaa !8
  %501 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 1), align 4, !tbaa !8
  %502 = tail call float @llvm.fmuladd.f32(float %498, float %501, float %466)
  store float %502, float* %66, align 4, !tbaa !8
  %503 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 2), align 8, !tbaa !8
  %504 = tail call float @llvm.fmuladd.f32(float %498, float %503, float %468)
  store float %504, float* %67, align 8, !tbaa !8
  %505 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 3), align 4, !tbaa !8
  %506 = tail call float @llvm.fmuladd.f32(float %498, float %505, float %470)
  store float %506, float* %68, align 4, !tbaa !8
  %507 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 4), align 8, !tbaa !8
  %508 = tail call float @llvm.fmuladd.f32(float %498, float %507, float %472)
  store float %508, float* %69, align 16, !tbaa !8
  %509 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 5), align 4, !tbaa !8
  %510 = tail call float @llvm.fmuladd.f32(float %498, float %509, float %474)
  store float %510, float* %70, align 4, !tbaa !8
  %511 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 6), align 8, !tbaa !8
  %512 = tail call float @llvm.fmuladd.f32(float %498, float %511, float %476)
  store float %512, float* %71, align 8, !tbaa !8
  %513 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 7), align 4, !tbaa !8
  %514 = tail call float @llvm.fmuladd.f32(float %498, float %513, float %478)
  store float %514, float* %72, align 4, !tbaa !8
  %515 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 8), align 8, !tbaa !8
  %516 = tail call float @llvm.fmuladd.f32(float %498, float %515, float %480)
  store float %516, float* %73, align 16, !tbaa !8
  %517 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 9), align 4, !tbaa !8
  %518 = tail call float @llvm.fmuladd.f32(float %498, float %517, float %482)
  store float %518, float* %74, align 4, !tbaa !8
  %519 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 10), align 8, !tbaa !8
  %520 = tail call float @llvm.fmuladd.f32(float %498, float %519, float %484)
  store float %520, float* %75, align 8, !tbaa !8
  %521 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 11), align 4, !tbaa !8
  %522 = tail call float @llvm.fmuladd.f32(float %498, float %521, float %486)
  store float %522, float* %76, align 4, !tbaa !8
  %523 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 12), align 8, !tbaa !8
  %524 = tail call float @llvm.fmuladd.f32(float %498, float %523, float %488)
  store float %524, float* %77, align 16, !tbaa !8
  %525 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 13), align 4, !tbaa !8
  %526 = tail call float @llvm.fmuladd.f32(float %498, float %525, float %490)
  store float %526, float* %78, align 4, !tbaa !8
  %527 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 14), align 8, !tbaa !8
  %528 = tail call float @llvm.fmuladd.f32(float %498, float %527, float %492)
  store float %528, float* %79, align 8, !tbaa !8
  %529 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 10, i64 15), align 4, !tbaa !8
  %530 = tail call float @llvm.fmuladd.f32(float %498, float %529, float %494)
  store float %530, float* %80, align 4, !tbaa !8
  %531 = getelementptr inbounds float, float* %426, i64 %87
  %532 = bitcast float* %531 to i32*
  %533 = load i32, i32* %532, align 4, !tbaa !8
  store i32 %533, i32* %88, align 8, !tbaa !8
  %534 = load float, float* %89, align 4, !tbaa !8
  %535 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 0), align 4, !tbaa !8
  %536 = tail call float @llvm.fmuladd.f32(float %534, float %535, float %500)
  store float %536, float* %65, align 16, !tbaa !8
  %537 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 1), align 4, !tbaa !8
  %538 = tail call float @llvm.fmuladd.f32(float %534, float %537, float %502)
  store float %538, float* %66, align 4, !tbaa !8
  %539 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 2), align 4, !tbaa !8
  %540 = tail call float @llvm.fmuladd.f32(float %534, float %539, float %504)
  store float %540, float* %67, align 8, !tbaa !8
  %541 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 3), align 4, !tbaa !8
  %542 = tail call float @llvm.fmuladd.f32(float %534, float %541, float %506)
  store float %542, float* %68, align 4, !tbaa !8
  %543 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 4), align 4, !tbaa !8
  %544 = tail call float @llvm.fmuladd.f32(float %534, float %543, float %508)
  store float %544, float* %69, align 16, !tbaa !8
  %545 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 5), align 4, !tbaa !8
  %546 = tail call float @llvm.fmuladd.f32(float %534, float %545, float %510)
  store float %546, float* %70, align 4, !tbaa !8
  %547 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 6), align 4, !tbaa !8
  %548 = tail call float @llvm.fmuladd.f32(float %534, float %547, float %512)
  store float %548, float* %71, align 8, !tbaa !8
  %549 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 7), align 4, !tbaa !8
  %550 = tail call float @llvm.fmuladd.f32(float %534, float %549, float %514)
  store float %550, float* %72, align 4, !tbaa !8
  %551 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 8), align 4, !tbaa !8
  %552 = tail call float @llvm.fmuladd.f32(float %534, float %551, float %516)
  store float %552, float* %73, align 16, !tbaa !8
  %553 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 9), align 4, !tbaa !8
  %554 = tail call float @llvm.fmuladd.f32(float %534, float %553, float %518)
  store float %554, float* %74, align 4, !tbaa !8
  %555 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 10), align 4, !tbaa !8
  %556 = tail call float @llvm.fmuladd.f32(float %534, float %555, float %520)
  store float %556, float* %75, align 8, !tbaa !8
  %557 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 11), align 4, !tbaa !8
  %558 = tail call float @llvm.fmuladd.f32(float %534, float %557, float %522)
  store float %558, float* %76, align 4, !tbaa !8
  %559 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 12), align 4, !tbaa !8
  %560 = tail call float @llvm.fmuladd.f32(float %534, float %559, float %524)
  store float %560, float* %77, align 16, !tbaa !8
  %561 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 13), align 4, !tbaa !8
  %562 = tail call float @llvm.fmuladd.f32(float %534, float %561, float %526)
  store float %562, float* %78, align 4, !tbaa !8
  %563 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 14), align 4, !tbaa !8
  %564 = tail call float @llvm.fmuladd.f32(float %534, float %563, float %528)
  store float %564, float* %79, align 8, !tbaa !8
  %565 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 11, i64 15), align 4, !tbaa !8
  %566 = tail call float @llvm.fmuladd.f32(float %534, float %565, float %530)
  store float %566, float* %80, align 4, !tbaa !8
  %567 = getelementptr inbounds float, float* %426, i64 %91
  %568 = bitcast float* %567 to i32*
  %569 = load i32, i32* %568, align 4, !tbaa !8
  store i32 %569, i32* %92, align 4, !tbaa !8
  %570 = getelementptr inbounds float, float* %426, i64 %63
  %571 = load float, float* %64, align 16, !tbaa !8
  %572 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 0), align 16, !tbaa !8
  %573 = tail call float @llvm.fmuladd.f32(float %571, float %572, float %536)
  %574 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 1), align 4, !tbaa !8
  %575 = tail call float @llvm.fmuladd.f32(float %571, float %574, float %538)
  %576 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 2), align 8, !tbaa !8
  %577 = tail call float @llvm.fmuladd.f32(float %571, float %576, float %540)
  %578 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 3), align 4, !tbaa !8
  %579 = tail call float @llvm.fmuladd.f32(float %571, float %578, float %542)
  %580 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 4), align 16, !tbaa !8
  %581 = tail call float @llvm.fmuladd.f32(float %571, float %580, float %544)
  %582 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 5), align 4, !tbaa !8
  %583 = tail call float @llvm.fmuladd.f32(float %571, float %582, float %546)
  %584 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 6), align 8, !tbaa !8
  %585 = tail call float @llvm.fmuladd.f32(float %571, float %584, float %548)
  %586 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 7), align 4, !tbaa !8
  %587 = tail call float @llvm.fmuladd.f32(float %571, float %586, float %550)
  %588 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 8), align 16, !tbaa !8
  %589 = tail call float @llvm.fmuladd.f32(float %571, float %588, float %552)
  %590 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 9), align 4, !tbaa !8
  %591 = tail call float @llvm.fmuladd.f32(float %571, float %590, float %554)
  %592 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 10), align 8, !tbaa !8
  %593 = tail call float @llvm.fmuladd.f32(float %571, float %592, float %556)
  %594 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 11), align 4, !tbaa !8
  %595 = tail call float @llvm.fmuladd.f32(float %571, float %594, float %558)
  %596 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 12), align 16, !tbaa !8
  %597 = tail call float @llvm.fmuladd.f32(float %571, float %596, float %560)
  %598 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 13), align 4, !tbaa !8
  %599 = tail call float @llvm.fmuladd.f32(float %571, float %598, float %562)
  %600 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 14), align 8, !tbaa !8
  %601 = tail call float @llvm.fmuladd.f32(float %571, float %600, float %564)
  %602 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 12, i64 15), align 4, !tbaa !8
  %603 = tail call float @llvm.fmuladd.f32(float %571, float %602, float %566)
  %604 = load float, float* %82, align 4, !tbaa !8
  %605 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 0), align 4, !tbaa !8
  %606 = tail call float @llvm.fmuladd.f32(float %604, float %605, float %573)
  %607 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 1), align 4, !tbaa !8
  %608 = tail call float @llvm.fmuladd.f32(float %604, float %607, float %575)
  %609 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 2), align 4, !tbaa !8
  %610 = tail call float @llvm.fmuladd.f32(float %604, float %609, float %577)
  %611 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 3), align 4, !tbaa !8
  %612 = tail call float @llvm.fmuladd.f32(float %604, float %611, float %579)
  %613 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 4), align 4, !tbaa !8
  %614 = tail call float @llvm.fmuladd.f32(float %604, float %613, float %581)
  %615 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 5), align 4, !tbaa !8
  %616 = tail call float @llvm.fmuladd.f32(float %604, float %615, float %583)
  %617 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 6), align 4, !tbaa !8
  %618 = tail call float @llvm.fmuladd.f32(float %604, float %617, float %585)
  %619 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 7), align 4, !tbaa !8
  %620 = tail call float @llvm.fmuladd.f32(float %604, float %619, float %587)
  %621 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 8), align 4, !tbaa !8
  %622 = tail call float @llvm.fmuladd.f32(float %604, float %621, float %589)
  %623 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 9), align 4, !tbaa !8
  %624 = tail call float @llvm.fmuladd.f32(float %604, float %623, float %591)
  %625 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 10), align 4, !tbaa !8
  %626 = tail call float @llvm.fmuladd.f32(float %604, float %625, float %593)
  %627 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 11), align 4, !tbaa !8
  %628 = tail call float @llvm.fmuladd.f32(float %604, float %627, float %595)
  %629 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 12), align 4, !tbaa !8
  %630 = tail call float @llvm.fmuladd.f32(float %604, float %629, float %597)
  %631 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 13), align 4, !tbaa !8
  %632 = tail call float @llvm.fmuladd.f32(float %604, float %631, float %599)
  %633 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 14), align 4, !tbaa !8
  %634 = tail call float @llvm.fmuladd.f32(float %604, float %633, float %601)
  %635 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 13, i64 15), align 4, !tbaa !8
  %636 = tail call float @llvm.fmuladd.f32(float %604, float %635, float %603)
  %637 = load float, float* %85, align 8, !tbaa !8
  %638 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 0), align 8, !tbaa !8
  %639 = tail call float @llvm.fmuladd.f32(float %637, float %638, float %606)
  %640 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 1), align 4, !tbaa !8
  %641 = tail call float @llvm.fmuladd.f32(float %637, float %640, float %608)
  %642 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 2), align 8, !tbaa !8
  %643 = tail call float @llvm.fmuladd.f32(float %637, float %642, float %610)
  %644 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 3), align 4, !tbaa !8
  %645 = tail call float @llvm.fmuladd.f32(float %637, float %644, float %612)
  %646 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 4), align 8, !tbaa !8
  %647 = tail call float @llvm.fmuladd.f32(float %637, float %646, float %614)
  %648 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 5), align 4, !tbaa !8
  %649 = tail call float @llvm.fmuladd.f32(float %637, float %648, float %616)
  %650 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 6), align 8, !tbaa !8
  %651 = tail call float @llvm.fmuladd.f32(float %637, float %650, float %618)
  %652 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 7), align 4, !tbaa !8
  %653 = tail call float @llvm.fmuladd.f32(float %637, float %652, float %620)
  %654 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 8), align 8, !tbaa !8
  %655 = tail call float @llvm.fmuladd.f32(float %637, float %654, float %622)
  %656 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 9), align 4, !tbaa !8
  %657 = tail call float @llvm.fmuladd.f32(float %637, float %656, float %624)
  %658 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 10), align 8, !tbaa !8
  %659 = tail call float @llvm.fmuladd.f32(float %637, float %658, float %626)
  %660 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 11), align 4, !tbaa !8
  %661 = tail call float @llvm.fmuladd.f32(float %637, float %660, float %628)
  %662 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 12), align 8, !tbaa !8
  %663 = tail call float @llvm.fmuladd.f32(float %637, float %662, float %630)
  %664 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 13), align 4, !tbaa !8
  %665 = tail call float @llvm.fmuladd.f32(float %637, float %664, float %632)
  %666 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 14), align 8, !tbaa !8
  %667 = tail call float @llvm.fmuladd.f32(float %637, float %666, float %634)
  %668 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 14, i64 15), align 4, !tbaa !8
  %669 = tail call float @llvm.fmuladd.f32(float %637, float %668, float %636)
  %670 = load float, float* %89, align 4, !tbaa !8
  %671 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 0), align 4, !tbaa !8
  %672 = tail call float @llvm.fmuladd.f32(float %670, float %671, float %639)
  store float %672, float* %65, align 16, !tbaa !8
  %673 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 1), align 4, !tbaa !8
  %674 = tail call float @llvm.fmuladd.f32(float %670, float %673, float %641)
  store float %674, float* %66, align 4, !tbaa !8
  %675 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 2), align 4, !tbaa !8
  %676 = tail call float @llvm.fmuladd.f32(float %670, float %675, float %643)
  store float %676, float* %67, align 8, !tbaa !8
  %677 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 3), align 4, !tbaa !8
  %678 = tail call float @llvm.fmuladd.f32(float %670, float %677, float %645)
  store float %678, float* %68, align 4, !tbaa !8
  %679 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 4), align 4, !tbaa !8
  %680 = tail call float @llvm.fmuladd.f32(float %670, float %679, float %647)
  store float %680, float* %69, align 16, !tbaa !8
  %681 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 5), align 4, !tbaa !8
  %682 = tail call float @llvm.fmuladd.f32(float %670, float %681, float %649)
  store float %682, float* %70, align 4, !tbaa !8
  %683 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 6), align 4, !tbaa !8
  %684 = tail call float @llvm.fmuladd.f32(float %670, float %683, float %651)
  store float %684, float* %71, align 8, !tbaa !8
  %685 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 7), align 4, !tbaa !8
  %686 = tail call float @llvm.fmuladd.f32(float %670, float %685, float %653)
  store float %686, float* %72, align 4, !tbaa !8
  %687 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 8), align 4, !tbaa !8
  %688 = tail call float @llvm.fmuladd.f32(float %670, float %687, float %655)
  store float %688, float* %73, align 16, !tbaa !8
  %689 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 9), align 4, !tbaa !8
  %690 = tail call float @llvm.fmuladd.f32(float %670, float %689, float %657)
  store float %690, float* %74, align 4, !tbaa !8
  %691 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 10), align 4, !tbaa !8
  %692 = tail call float @llvm.fmuladd.f32(float %670, float %691, float %659)
  store float %692, float* %75, align 8, !tbaa !8
  %693 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 11), align 4, !tbaa !8
  %694 = tail call float @llvm.fmuladd.f32(float %670, float %693, float %661)
  store float %694, float* %76, align 4, !tbaa !8
  %695 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 12), align 4, !tbaa !8
  %696 = tail call float @llvm.fmuladd.f32(float %670, float %695, float %663)
  store float %696, float* %77, align 16, !tbaa !8
  %697 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 13), align 4, !tbaa !8
  %698 = tail call float @llvm.fmuladd.f32(float %670, float %697, float %665)
  store float %698, float* %78, align 4, !tbaa !8
  %699 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 14), align 4, !tbaa !8
  %700 = tail call float @llvm.fmuladd.f32(float %670, float %699, float %667)
  store float %700, float* %79, align 8, !tbaa !8
  %701 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @sgemmNN.bs, i64 0, i64 15, i64 15), align 4, !tbaa !8
  %702 = tail call float @llvm.fmuladd.f32(float %670, float %701, float %669)
  store float %702, float* %80, align 4, !tbaa !8
  %703 = getelementptr inbounds float, float* %112, i64 16
  %704 = add nuw nsw i32 %114, 16
  tail call void @_Z7barrierj(i32 1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #6
  %705 = icmp slt i32 %704, %6
  br i1 %705, label %96, label %706

; <label>:706:                                    ; preds = %96
  %707 = sext i32 %5 to i64
  %708 = load float, float* %36, align 4, !tbaa !8
  %709 = fmul float %708, %8
  %710 = tail call float @llvm.fmuladd.f32(float %7, float %672, float %709)
  store float %710, float* %36, align 4, !tbaa !8
  %711 = getelementptr inbounds float, float* %36, i64 %707
  %712 = load float, float* %711, align 4, !tbaa !8
  %713 = fmul float %712, %8
  %714 = tail call float @llvm.fmuladd.f32(float %7, float %674, float %713)
  store float %714, float* %711, align 4, !tbaa !8
  %715 = getelementptr inbounds float, float* %711, i64 %707
  %716 = load float, float* %715, align 4, !tbaa !8
  %717 = fmul float %716, %8
  %718 = tail call float @llvm.fmuladd.f32(float %7, float %676, float %717)
  store float %718, float* %715, align 4, !tbaa !8
  %719 = getelementptr inbounds float, float* %715, i64 %707
  %720 = load float, float* %719, align 4, !tbaa !8
  %721 = fmul float %720, %8
  %722 = tail call float @llvm.fmuladd.f32(float %7, float %678, float %721)
  store float %722, float* %719, align 4, !tbaa !8
  %723 = getelementptr inbounds float, float* %719, i64 %707
  %724 = load float, float* %723, align 4, !tbaa !8
  %725 = fmul float %724, %8
  %726 = tail call float @llvm.fmuladd.f32(float %7, float %680, float %725)
  store float %726, float* %723, align 4, !tbaa !8
  %727 = getelementptr inbounds float, float* %723, i64 %707
  %728 = load float, float* %727, align 4, !tbaa !8
  %729 = fmul float %728, %8
  %730 = tail call float @llvm.fmuladd.f32(float %7, float %682, float %729)
  store float %730, float* %727, align 4, !tbaa !8
  %731 = getelementptr inbounds float, float* %727, i64 %707
  %732 = load float, float* %731, align 4, !tbaa !8
  %733 = fmul float %732, %8
  %734 = tail call float @llvm.fmuladd.f32(float %7, float %684, float %733)
  store float %734, float* %731, align 4, !tbaa !8
  %735 = getelementptr inbounds float, float* %731, i64 %707
  %736 = load float, float* %735, align 4, !tbaa !8
  %737 = fmul float %736, %8
  %738 = tail call float @llvm.fmuladd.f32(float %7, float %686, float %737)
  store float %738, float* %735, align 4, !tbaa !8
  %739 = getelementptr inbounds float, float* %735, i64 %707
  %740 = load float, float* %739, align 4, !tbaa !8
  %741 = fmul float %740, %8
  %742 = tail call float @llvm.fmuladd.f32(float %7, float %688, float %741)
  store float %742, float* %739, align 4, !tbaa !8
  %743 = getelementptr inbounds float, float* %739, i64 %707
  %744 = load float, float* %743, align 4, !tbaa !8
  %745 = fmul float %744, %8
  %746 = tail call float @llvm.fmuladd.f32(float %7, float %690, float %745)
  store float %746, float* %743, align 4, !tbaa !8
  %747 = getelementptr inbounds float, float* %743, i64 %707
  %748 = load float, float* %747, align 4, !tbaa !8
  %749 = fmul float %748, %8
  %750 = tail call float @llvm.fmuladd.f32(float %7, float %692, float %749)
  store float %750, float* %747, align 4, !tbaa !8
  %751 = getelementptr inbounds float, float* %747, i64 %707
  %752 = load float, float* %751, align 4, !tbaa !8
  %753 = fmul float %752, %8
  %754 = tail call float @llvm.fmuladd.f32(float %7, float %694, float %753)
  store float %754, float* %751, align 4, !tbaa !8
  %755 = getelementptr inbounds float, float* %751, i64 %707
  %756 = load float, float* %755, align 4, !tbaa !8
  %757 = fmul float %756, %8
  %758 = tail call float @llvm.fmuladd.f32(float %7, float %696, float %757)
  store float %758, float* %755, align 4, !tbaa !8
  %759 = getelementptr inbounds float, float* %755, i64 %707
  %760 = load float, float* %78, align 4, !tbaa !8
  %761 = load float, float* %759, align 4, !tbaa !8
  %762 = fmul float %761, %8
  %763 = tail call float @llvm.fmuladd.f32(float %7, float %760, float %762)
  store float %763, float* %759, align 4, !tbaa !8
  %764 = getelementptr inbounds float, float* %759, i64 %707
  %765 = load float, float* %79, align 8, !tbaa !8
  %766 = load float, float* %764, align 4, !tbaa !8
  %767 = fmul float %766, %8
  %768 = tail call float @llvm.fmuladd.f32(float %7, float %765, float %767)
  store float %768, float* %764, align 4, !tbaa !8
  %769 = getelementptr inbounds float, float* %764, i64 %707
  %770 = load float, float* %80, align 4, !tbaa !8
  %771 = load float, float* %769, align 4, !tbaa !8
  %772 = fmul float %771, %8
  %773 = tail call float @llvm.fmuladd.f32(float %7, float %770, float %772)
  store float %773, float* %769, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #6
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
