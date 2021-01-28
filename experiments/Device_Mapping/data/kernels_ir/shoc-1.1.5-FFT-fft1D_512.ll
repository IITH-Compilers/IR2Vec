; ModuleID = 'shoc-1.1.5-FFT-fft1D_512.cl'
source_filename = "shoc-1.1.5-FFT-fft1D_512.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@fft1D_512.smem = internal global [576 x float] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @fft1D_512(<2 x float>*) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %2 = alloca [8 x <2 x float>], align 16
  %3 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %6 = shl i64 %5, 9
  %7 = add i64 %6, %3
  %8 = ashr i32 %4, 3
  %9 = bitcast [8 x <2 x float>]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #6
  %10 = shl i64 %7, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 %11
  %13 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 0
  call void @globalLoads8(<2 x float>* nonnull %13, <2 x float>* %12, i32 64) #6
  %14 = bitcast [8 x <2 x float>]* %2 to double*
  %15 = load double, double* %14, align 16, !tbaa !9
  %16 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 4
  %17 = bitcast <2 x float>* %16 to double*
  %18 = load double, double* %17, align 16, !tbaa !9
  %19 = call double @cmplx_add(double %15, double %18) #6
  store double %19, double* %14, align 16, !tbaa !9
  %20 = load double, double* %17, align 16, !tbaa !9
  %21 = call double @cmplx_sub(double %15, double %20) #6
  store double %21, double* %17, align 16, !tbaa !9
  %22 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 1
  %23 = bitcast <2 x float>* %22 to double*
  %24 = load double, double* %23, align 8, !tbaa !9
  %25 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 5
  %26 = bitcast <2 x float>* %25 to double*
  %27 = load double, double* %26, align 8, !tbaa !9
  %28 = call double @cmplx_add(double %24, double %27) #6
  store double %28, double* %23, align 8, !tbaa !9
  %29 = load double, double* %26, align 8, !tbaa !9
  %30 = call double @cmplx_sub(double %24, double %29) #6
  store double %30, double* %26, align 8, !tbaa !9
  %31 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 2
  %32 = bitcast <2 x float>* %31 to double*
  %33 = load double, double* %32, align 16, !tbaa !9
  %34 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 6
  %35 = bitcast <2 x float>* %34 to double*
  %36 = load double, double* %35, align 16, !tbaa !9
  %37 = call double @cmplx_add(double %33, double %36) #6
  store double %37, double* %32, align 16, !tbaa !9
  %38 = load double, double* %35, align 16, !tbaa !9
  %39 = call double @cmplx_sub(double %33, double %38) #6
  store double %39, double* %35, align 16, !tbaa !9
  %40 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 3
  %41 = bitcast <2 x float>* %40 to double*
  %42 = load double, double* %41, align 8, !tbaa !9
  %43 = getelementptr inbounds [8 x <2 x float>], [8 x <2 x float>]* %2, i64 0, i64 7
  %44 = bitcast <2 x float>* %43 to double*
  %45 = load double, double* %44, align 8, !tbaa !9
  %46 = call double @cmplx_add(double %42, double %45) #6
  store double %46, double* %41, align 8, !tbaa !9
  %47 = load double, double* %44, align 8, !tbaa !9
  %48 = call double @cmplx_sub(double %42, double %47) #6
  store double %48, double* %44, align 8, !tbaa !9
  %49 = load double, double* %26, align 8, !tbaa !9
  %50 = call double @cmplx_mul(double %49, double 0xBF8000003F800000) #6
  %51 = call double @cm_fl_mul(double %50, float 0x3FE6A09E60000000) #6
  store double %51, double* %26, align 8, !tbaa !9
  %52 = load double, double* %35, align 16, !tbaa !9
  %53 = call double @cmplx_mul(double %52, double -7.812500e-03) #6
  store double %53, double* %35, align 16, !tbaa !9
  %54 = load double, double* %44, align 8, !tbaa !9
  %55 = call double @cmplx_mul(double %54, double 0xBF800000BF800000) #6
  %56 = call double @cm_fl_mul(double %55, float 0x3FE6A09E60000000) #6
  store double %56, double* %44, align 8, !tbaa !9
  %57 = load double, double* %14, align 16, !tbaa !9
  %58 = load double, double* %32, align 16, !tbaa !9
  %59 = call double @cmplx_add(double %57, double %58) #6
  store double %59, double* %14, align 16, !tbaa !9
  %60 = load double, double* %32, align 16, !tbaa !9
  %61 = call double @cmplx_sub(double %57, double %60) #6
  store double %61, double* %32, align 16, !tbaa !9
  %62 = load double, double* %23, align 8, !tbaa !9
  %63 = load double, double* %41, align 8, !tbaa !9
  %64 = call double @cmplx_add(double %62, double %63) #6
  store double %64, double* %23, align 8, !tbaa !9
  %65 = load double, double* %41, align 8, !tbaa !9
  %66 = call double @cmplx_sub(double %62, double %65) #6
  store double %66, double* %41, align 8, !tbaa !9
  %67 = call double @cmplx_mul(double %66, double -7.812500e-03) #6
  store double %67, double* %41, align 8, !tbaa !9
  %68 = load double, double* %14, align 16, !tbaa !9
  %69 = load double, double* %23, align 8, !tbaa !9
  %70 = call double @cmplx_add(double %68, double %69) #6
  store double %70, double* %14, align 16, !tbaa !9
  %71 = load double, double* %23, align 8, !tbaa !9
  %72 = call double @cmplx_sub(double %68, double %71) #6
  store double %72, double* %23, align 8, !tbaa !9
  %73 = load double, double* %32, align 16, !tbaa !9
  %74 = load double, double* %41, align 8, !tbaa !9
  %75 = call double @cmplx_add(double %73, double %74) #6
  store double %75, double* %32, align 16, !tbaa !9
  %76 = load double, double* %41, align 8, !tbaa !9
  %77 = call double @cmplx_sub(double %73, double %76) #6
  store double %77, double* %41, align 8, !tbaa !9
  %78 = load double, double* %17, align 16, !tbaa !9
  %79 = load double, double* %35, align 16, !tbaa !9
  %80 = call double @cmplx_add(double %78, double %79) #6
  store double %80, double* %17, align 16, !tbaa !9
  %81 = load double, double* %35, align 16, !tbaa !9
  %82 = call double @cmplx_sub(double %78, double %81) #6
  store double %82, double* %35, align 16, !tbaa !9
  %83 = load double, double* %26, align 8, !tbaa !9
  %84 = load double, double* %44, align 8, !tbaa !9
  %85 = call double @cmplx_add(double %83, double %84) #6
  store double %85, double* %26, align 8, !tbaa !9
  %86 = load double, double* %44, align 8, !tbaa !9
  %87 = call double @cmplx_sub(double %83, double %86) #6
  store double %87, double* %44, align 8, !tbaa !9
  %88 = call double @cmplx_mul(double %87, double -7.812500e-03) #6
  store double %88, double* %44, align 8, !tbaa !9
  %89 = load double, double* %17, align 16, !tbaa !9
  %90 = load double, double* %26, align 8, !tbaa !9
  %91 = call double @cmplx_add(double %89, double %90) #6
  store double %91, double* %17, align 16, !tbaa !9
  %92 = load double, double* %26, align 8, !tbaa !9
  %93 = call double @cmplx_sub(double %89, double %92) #6
  store double %93, double* %26, align 8, !tbaa !9
  %94 = load double, double* %35, align 16, !tbaa !9
  %95 = load double, double* %44, align 8, !tbaa !9
  %96 = call double @cmplx_add(double %94, double %95) #6
  store double %96, double* %35, align 16, !tbaa !9
  %97 = load double, double* %44, align 8, !tbaa !9
  %98 = call double @cmplx_sub(double %94, double %97) #6
  store double %98, double* %44, align 8, !tbaa !9
  %99 = sitofp i32 %4 to float
  %100 = load double, double* %23, align 8, !tbaa !9
  %101 = fmul float %99, 0xBFA921FB60000000
  %102 = call double @exp_i(float %101) #6
  %103 = call double @cmplx_mul(double %100, double %102) #6
  store double %103, double* %23, align 8, !tbaa !9
  %104 = load double, double* %32, align 16, !tbaa !9
  %105 = fmul float %99, 0xBF9921FB60000000
  %106 = call double @exp_i(float %105) #6
  %107 = call double @cmplx_mul(double %104, double %106) #6
  store double %107, double* %32, align 16, !tbaa !9
  %108 = load double, double* %41, align 8, !tbaa !9
  %109 = fmul float %99, 0xBFB2D97C80000000
  %110 = call double @exp_i(float %109) #6
  %111 = call double @cmplx_mul(double %108, double %110) #6
  store double %111, double* %41, align 8, !tbaa !9
  %112 = load double, double* %17, align 16, !tbaa !9
  %113 = fmul float %99, 0xBF8921FB60000000
  %114 = call double @exp_i(float %113) #6
  %115 = call double @cmplx_mul(double %112, double %114) #6
  store double %115, double* %17, align 16, !tbaa !9
  %116 = load double, double* %26, align 8, !tbaa !9
  %117 = fmul float %99, 0xBFAF6A7A40000000
  %118 = call double @exp_i(float %117) #6
  %119 = call double @cmplx_mul(double %116, double %118) #6
  store double %119, double* %26, align 8, !tbaa !9
  %120 = load double, double* %35, align 16, !tbaa !9
  %121 = fmul float %99, 0xBFA2D97C80000000
  %122 = call double @exp_i(float %121) #6
  %123 = call double @cmplx_mul(double %120, double %122) #6
  store double %123, double* %35, align 16, !tbaa !9
  %124 = load double, double* %44, align 8, !tbaa !9
  %125 = fmul float %99, 0xBFB5FDBC00000000
  %126 = call double @exp_i(float %125) #6
  %127 = call double @cmplx_mul(double %124, double %126) #6
  store double %127, double* %44, align 8, !tbaa !9
  %128 = and i32 %4, 7
  %129 = shl nsw i32 %8, 3
  %130 = or i32 %129, %128
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [576 x float], [576 x float]* @fft1D_512.smem, i64 0, i64 %131
  call void @storex8(<2 x float>* nonnull %13, float* %132, i32 66) #6
  call void @_Z7barrierj(i32 1) #7
  %133 = mul nuw nsw i32 %128, 66
  %134 = add nsw i32 %133, %8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [576 x float], [576 x float]* @fft1D_512.smem, i64 0, i64 %135
  call void @loadx8(<2 x float>* nonnull %13, float* %136, i32 8) #6
  call void @_Z7barrierj(i32 1) #7
  call void @storey8(<2 x float>* nonnull %13, float* %132, i32 66) #6
  call void @_Z7barrierj(i32 1) #7
  call void @loady8(<2 x float>* nonnull %13, float* %136, i32 8) #6
  call void @_Z7barrierj(i32 1) #7
  %137 = load double, double* %14, align 16, !tbaa !9
  %138 = load double, double* %17, align 16, !tbaa !9
  %139 = call double @cmplx_add(double %137, double %138) #6
  store double %139, double* %14, align 16, !tbaa !9
  %140 = load double, double* %17, align 16, !tbaa !9
  %141 = call double @cmplx_sub(double %137, double %140) #6
  store double %141, double* %17, align 16, !tbaa !9
  %142 = load double, double* %23, align 8, !tbaa !9
  %143 = load double, double* %26, align 8, !tbaa !9
  %144 = call double @cmplx_add(double %142, double %143) #6
  store double %144, double* %23, align 8, !tbaa !9
  %145 = load double, double* %26, align 8, !tbaa !9
  %146 = call double @cmplx_sub(double %142, double %145) #6
  store double %146, double* %26, align 8, !tbaa !9
  %147 = load double, double* %32, align 16, !tbaa !9
  %148 = load double, double* %35, align 16, !tbaa !9
  %149 = call double @cmplx_add(double %147, double %148) #6
  store double %149, double* %32, align 16, !tbaa !9
  %150 = load double, double* %35, align 16, !tbaa !9
  %151 = call double @cmplx_sub(double %147, double %150) #6
  store double %151, double* %35, align 16, !tbaa !9
  %152 = load double, double* %41, align 8, !tbaa !9
  %153 = load double, double* %44, align 8, !tbaa !9
  %154 = call double @cmplx_add(double %152, double %153) #6
  store double %154, double* %41, align 8, !tbaa !9
  %155 = load double, double* %44, align 8, !tbaa !9
  %156 = call double @cmplx_sub(double %152, double %155) #6
  store double %156, double* %44, align 8, !tbaa !9
  %157 = load double, double* %26, align 8, !tbaa !9
  %158 = call double @cmplx_mul(double %157, double 0xBF8000003F800000) #6
  %159 = call double @cm_fl_mul(double %158, float 0x3FE6A09E60000000) #6
  store double %159, double* %26, align 8, !tbaa !9
  %160 = load double, double* %35, align 16, !tbaa !9
  %161 = call double @cmplx_mul(double %160, double -7.812500e-03) #6
  store double %161, double* %35, align 16, !tbaa !9
  %162 = load double, double* %44, align 8, !tbaa !9
  %163 = call double @cmplx_mul(double %162, double 0xBF800000BF800000) #6
  %164 = call double @cm_fl_mul(double %163, float 0x3FE6A09E60000000) #6
  store double %164, double* %44, align 8, !tbaa !9
  %165 = load double, double* %14, align 16, !tbaa !9
  %166 = load double, double* %32, align 16, !tbaa !9
  %167 = call double @cmplx_add(double %165, double %166) #6
  store double %167, double* %14, align 16, !tbaa !9
  %168 = load double, double* %32, align 16, !tbaa !9
  %169 = call double @cmplx_sub(double %165, double %168) #6
  store double %169, double* %32, align 16, !tbaa !9
  %170 = load double, double* %23, align 8, !tbaa !9
  %171 = load double, double* %41, align 8, !tbaa !9
  %172 = call double @cmplx_add(double %170, double %171) #6
  store double %172, double* %23, align 8, !tbaa !9
  %173 = load double, double* %41, align 8, !tbaa !9
  %174 = call double @cmplx_sub(double %170, double %173) #6
  store double %174, double* %41, align 8, !tbaa !9
  %175 = call double @cmplx_mul(double %174, double -7.812500e-03) #6
  store double %175, double* %41, align 8, !tbaa !9
  %176 = load double, double* %14, align 16, !tbaa !9
  %177 = load double, double* %23, align 8, !tbaa !9
  %178 = call double @cmplx_add(double %176, double %177) #6
  store double %178, double* %14, align 16, !tbaa !9
  %179 = load double, double* %23, align 8, !tbaa !9
  %180 = call double @cmplx_sub(double %176, double %179) #6
  store double %180, double* %23, align 8, !tbaa !9
  %181 = load double, double* %32, align 16, !tbaa !9
  %182 = load double, double* %41, align 8, !tbaa !9
  %183 = call double @cmplx_add(double %181, double %182) #6
  store double %183, double* %32, align 16, !tbaa !9
  %184 = load double, double* %41, align 8, !tbaa !9
  %185 = call double @cmplx_sub(double %181, double %184) #6
  store double %185, double* %41, align 8, !tbaa !9
  %186 = load double, double* %17, align 16, !tbaa !9
  %187 = load double, double* %35, align 16, !tbaa !9
  %188 = call double @cmplx_add(double %186, double %187) #6
  store double %188, double* %17, align 16, !tbaa !9
  %189 = load double, double* %35, align 16, !tbaa !9
  %190 = call double @cmplx_sub(double %186, double %189) #6
  store double %190, double* %35, align 16, !tbaa !9
  %191 = load double, double* %26, align 8, !tbaa !9
  %192 = load double, double* %44, align 8, !tbaa !9
  %193 = call double @cmplx_add(double %191, double %192) #6
  store double %193, double* %26, align 8, !tbaa !9
  %194 = load double, double* %44, align 8, !tbaa !9
  %195 = call double @cmplx_sub(double %191, double %194) #6
  store double %195, double* %44, align 8, !tbaa !9
  %196 = call double @cmplx_mul(double %195, double -7.812500e-03) #6
  store double %196, double* %44, align 8, !tbaa !9
  %197 = load double, double* %17, align 16, !tbaa !9
  %198 = load double, double* %26, align 8, !tbaa !9
  %199 = call double @cmplx_add(double %197, double %198) #6
  store double %199, double* %17, align 16, !tbaa !9
  %200 = load double, double* %26, align 8, !tbaa !9
  %201 = call double @cmplx_sub(double %197, double %200) #6
  store double %201, double* %26, align 8, !tbaa !9
  %202 = load double, double* %35, align 16, !tbaa !9
  %203 = load double, double* %44, align 8, !tbaa !9
  %204 = call double @cmplx_add(double %202, double %203) #6
  store double %204, double* %35, align 16, !tbaa !9
  %205 = load double, double* %44, align 8, !tbaa !9
  %206 = call double @cmplx_sub(double %202, double %205) #6
  store double %206, double* %44, align 8, !tbaa !9
  %207 = sitofp i32 %8 to float
  %208 = load double, double* %23, align 8, !tbaa !9
  %209 = fmul float %207, 0xBFD921FB60000000
  %210 = call double @exp_i(float %209) #6
  %211 = call double @cmplx_mul(double %208, double %210) #6
  store double %211, double* %23, align 8, !tbaa !9
  %212 = load double, double* %32, align 16, !tbaa !9
  %213 = fmul float %207, 0xBFC921FB60000000
  %214 = call double @exp_i(float %213) #6
  %215 = call double @cmplx_mul(double %212, double %214) #6
  store double %215, double* %32, align 16, !tbaa !9
  %216 = load double, double* %41, align 8, !tbaa !9
  %217 = fmul float %207, 0xBFE2D97C80000000
  %218 = call double @exp_i(float %217) #6
  %219 = call double @cmplx_mul(double %216, double %218) #6
  store double %219, double* %41, align 8, !tbaa !9
  %220 = load double, double* %17, align 16, !tbaa !9
  %221 = fmul float %207, 0xBFB921FB60000000
  %222 = call double @exp_i(float %221) #6
  %223 = call double @cmplx_mul(double %220, double %222) #6
  store double %223, double* %17, align 16, !tbaa !9
  %224 = load double, double* %26, align 8, !tbaa !9
  %225 = fmul float %207, 0xBFDF6A7A40000000
  %226 = call double @exp_i(float %225) #6
  %227 = call double @cmplx_mul(double %224, double %226) #6
  store double %227, double* %26, align 8, !tbaa !9
  %228 = load double, double* %35, align 16, !tbaa !9
  %229 = fmul float %207, 0xBFD2D97C80000000
  %230 = call double @exp_i(float %229) #6
  %231 = call double @cmplx_mul(double %228, double %230) #6
  store double %231, double* %35, align 16, !tbaa !9
  %232 = load double, double* %44, align 8, !tbaa !9
  %233 = fmul float %207, 0xBFE5FDBC00000000
  %234 = call double @exp_i(float %233) #6
  %235 = call double @cmplx_mul(double %232, double %234) #6
  store double %235, double* %44, align 8, !tbaa !9
  call void @storex8(<2 x float>* nonnull %13, float* %132, i32 72) #6
  call void @_Z7barrierj(i32 1) #7
  %236 = mul nsw i32 %8, 72
  %237 = or i32 %236, %128
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [576 x float], [576 x float]* @fft1D_512.smem, i64 0, i64 %238
  call void @loadx8(<2 x float>* nonnull %13, float* %239, i32 8) #6
  call void @_Z7barrierj(i32 1) #7
  call void @storey8(<2 x float>* nonnull %13, float* %132, i32 72) #6
  call void @_Z7barrierj(i32 1) #7
  call void @loady8(<2 x float>* nonnull %13, float* %239, i32 8) #6
  %240 = load double, double* %14, align 16, !tbaa !9
  %241 = load double, double* %17, align 16, !tbaa !9
  %242 = call double @cmplx_add(double %240, double %241) #6
  store double %242, double* %14, align 16, !tbaa !9
  %243 = load double, double* %17, align 16, !tbaa !9
  %244 = call double @cmplx_sub(double %240, double %243) #6
  store double %244, double* %17, align 16, !tbaa !9
  %245 = load double, double* %23, align 8, !tbaa !9
  %246 = load double, double* %26, align 8, !tbaa !9
  %247 = call double @cmplx_add(double %245, double %246) #6
  store double %247, double* %23, align 8, !tbaa !9
  %248 = load double, double* %26, align 8, !tbaa !9
  %249 = call double @cmplx_sub(double %245, double %248) #6
  store double %249, double* %26, align 8, !tbaa !9
  %250 = load double, double* %32, align 16, !tbaa !9
  %251 = load double, double* %35, align 16, !tbaa !9
  %252 = call double @cmplx_add(double %250, double %251) #6
  store double %252, double* %32, align 16, !tbaa !9
  %253 = load double, double* %35, align 16, !tbaa !9
  %254 = call double @cmplx_sub(double %250, double %253) #6
  store double %254, double* %35, align 16, !tbaa !9
  %255 = load double, double* %41, align 8, !tbaa !9
  %256 = load double, double* %44, align 8, !tbaa !9
  %257 = call double @cmplx_add(double %255, double %256) #6
  store double %257, double* %41, align 8, !tbaa !9
  %258 = load double, double* %44, align 8, !tbaa !9
  %259 = call double @cmplx_sub(double %255, double %258) #6
  store double %259, double* %44, align 8, !tbaa !9
  %260 = load double, double* %26, align 8, !tbaa !9
  %261 = call double @cmplx_mul(double %260, double 0xBF8000003F800000) #6
  %262 = call double @cm_fl_mul(double %261, float 0x3FE6A09E60000000) #6
  store double %262, double* %26, align 8, !tbaa !9
  %263 = load double, double* %35, align 16, !tbaa !9
  %264 = call double @cmplx_mul(double %263, double -7.812500e-03) #6
  store double %264, double* %35, align 16, !tbaa !9
  %265 = load double, double* %44, align 8, !tbaa !9
  %266 = call double @cmplx_mul(double %265, double 0xBF800000BF800000) #6
  %267 = call double @cm_fl_mul(double %266, float 0x3FE6A09E60000000) #6
  store double %267, double* %44, align 8, !tbaa !9
  %268 = load double, double* %14, align 16, !tbaa !9
  %269 = load double, double* %32, align 16, !tbaa !9
  %270 = call double @cmplx_add(double %268, double %269) #6
  store double %270, double* %14, align 16, !tbaa !9
  %271 = load double, double* %32, align 16, !tbaa !9
  %272 = call double @cmplx_sub(double %268, double %271) #6
  store double %272, double* %32, align 16, !tbaa !9
  %273 = load double, double* %23, align 8, !tbaa !9
  %274 = load double, double* %41, align 8, !tbaa !9
  %275 = call double @cmplx_add(double %273, double %274) #6
  store double %275, double* %23, align 8, !tbaa !9
  %276 = load double, double* %41, align 8, !tbaa !9
  %277 = call double @cmplx_sub(double %273, double %276) #6
  store double %277, double* %41, align 8, !tbaa !9
  %278 = call double @cmplx_mul(double %277, double -7.812500e-03) #6
  store double %278, double* %41, align 8, !tbaa !9
  %279 = load double, double* %14, align 16, !tbaa !9
  %280 = load double, double* %23, align 8, !tbaa !9
  %281 = call double @cmplx_add(double %279, double %280) #6
  store double %281, double* %14, align 16, !tbaa !9
  %282 = load double, double* %23, align 8, !tbaa !9
  %283 = call double @cmplx_sub(double %279, double %282) #6
  store double %283, double* %23, align 8, !tbaa !9
  %284 = load double, double* %32, align 16, !tbaa !9
  %285 = load double, double* %41, align 8, !tbaa !9
  %286 = call double @cmplx_add(double %284, double %285) #6
  store double %286, double* %32, align 16, !tbaa !9
  %287 = load double, double* %41, align 8, !tbaa !9
  %288 = call double @cmplx_sub(double %284, double %287) #6
  store double %288, double* %41, align 8, !tbaa !9
  %289 = load double, double* %17, align 16, !tbaa !9
  %290 = load double, double* %35, align 16, !tbaa !9
  %291 = call double @cmplx_add(double %289, double %290) #6
  store double %291, double* %17, align 16, !tbaa !9
  %292 = load double, double* %35, align 16, !tbaa !9
  %293 = call double @cmplx_sub(double %289, double %292) #6
  store double %293, double* %35, align 16, !tbaa !9
  %294 = load double, double* %26, align 8, !tbaa !9
  %295 = load double, double* %44, align 8, !tbaa !9
  %296 = call double @cmplx_add(double %294, double %295) #6
  store double %296, double* %26, align 8, !tbaa !9
  %297 = load double, double* %44, align 8, !tbaa !9
  %298 = call double @cmplx_sub(double %294, double %297) #6
  store double %298, double* %44, align 8, !tbaa !9
  %299 = call double @cmplx_mul(double %298, double -7.812500e-03) #6
  store double %299, double* %44, align 8, !tbaa !9
  %300 = load double, double* %17, align 16, !tbaa !9
  %301 = load double, double* %26, align 8, !tbaa !9
  %302 = call double @cmplx_add(double %300, double %301) #6
  store double %302, double* %17, align 16, !tbaa !9
  %303 = load double, double* %26, align 8, !tbaa !9
  %304 = call double @cmplx_sub(double %300, double %303) #6
  store double %304, double* %26, align 8, !tbaa !9
  %305 = load double, double* %35, align 16, !tbaa !9
  %306 = load double, double* %44, align 8, !tbaa !9
  %307 = call double @cmplx_add(double %305, double %306) #6
  store double %307, double* %35, align 16, !tbaa !9
  %308 = load double, double* %44, align 8, !tbaa !9
  %309 = call double @cmplx_sub(double %305, double %308) #6
  store double %309, double* %44, align 8, !tbaa !9
  call void @globalStores8(<2 x float>* nonnull %13, <2 x float>* %12, i32 64) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

declare void @globalLoads8(<2 x float>*, <2 x float>*, i32) local_unnamed_addr #3

declare double @cmplx_add(double, double) local_unnamed_addr #3

declare double @cmplx_sub(double, double) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare double @cm_fl_mul(double, float) local_unnamed_addr #3

declare double @cmplx_mul(double, double) local_unnamed_addr #3

declare double @exp_i(float) local_unnamed_addr #3

declare void @storex8(<2 x float>*, float*, i32) local_unnamed_addr #3

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #4

declare void @loadx8(<2 x float>*, float*, i32) local_unnamed_addr #3

declare void @storey8(<2 x float>*, float*, i32) local_unnamed_addr #3

declare void @loady8(<2 x float>*, float*, i32) local_unnamed_addr #3

declare void @globalStores8(<2 x float>*, <2 x float>*, i32) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!4 = !{i32 1}
!5 = !{!"none"}
!6 = !{!"float2*"}
!7 = !{!"float __attribute__((ext_vector_type(2)))*"}
!8 = !{!""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
