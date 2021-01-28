; ModuleID = 'npb-SP-exact_rhs4.cl'
source_filename = "npb-SP-exact_rhs4.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @exact_rhs4(double* nocapture, double*, double* nocapture, double* nocapture, double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = alloca [5 x double], align 16
  %11 = bitcast [5 x double]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #5
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %16 = add i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %7, -2
  %19 = icmp slt i32 %18, %14
  %20 = add nsw i32 %6, -2
  %21 = icmp slt i32 %20, %17
  %22 = or i1 %19, %21
  br i1 %22, label %433, label %23

; <label>:23:                                     ; preds = %9
  %24 = add nsw i32 %14, -1
  %25 = mul nsw i32 %24, %6
  %26 = add nsw i32 %17, -1
  %27 = add nsw i32 %26, %25
  %28 = mul nsw i32 %27, 12
  %29 = mul i32 %27, 60
  %30 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds double, double* %1, i64 %31
  %33 = bitcast double* %32 to [5 x double]*
  %34 = getelementptr inbounds double, double* %2, i64 %31
  %35 = bitcast double* %34 to [5 x double]*
  %36 = sext i32 %28 to i64
  %37 = getelementptr inbounds double, double* %3, i64 %36
  %38 = getelementptr inbounds double, double* %4, i64 %36
  %39 = sitofp i32 %14 to double
  %40 = fmul double %39, 0x3FB745D1745D1746
  %41 = sitofp i32 %17 to double
  %42 = fmul double %41, 0x3FB745D1745D1746
  %43 = icmp sgt i32 %8, 0
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %23
  %45 = add nsw i32 %8, -2
  br label %100

; <label>:46:                                     ; preds = %23
  %47 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 0
  %48 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 1
  %49 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 2
  %50 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 3
  %51 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 4
  %52 = zext i32 %8 to i64
  br label %53

; <label>:53:                                     ; preds = %53, %46
  %54 = phi i64 [ 0, %46 ], [ %95, %53 ]
  %55 = mul nuw nsw i64 %54, 5
  %56 = add nsw i64 %55, %31
  %57 = getelementptr double, double* %1, i64 %56
  %58 = bitcast double* %57 to i8*
  %59 = trunc i64 %54 to i32
  %60 = sitofp i32 %59 to double
  %61 = fmul double %60, 0x3FB745D1745D1746
  call void @exact_solution(double %42, double %40, double %61, double* nonnull %47, double* %5) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* nonnull %11, i64 40, i32 8, i1 false)
  %62 = load double, double* %47, align 16, !tbaa !8
  %63 = fdiv double 1.000000e+00, %62
  %64 = load double, double* %48, align 8, !tbaa !8
  %65 = fmul double %63, %64
  %66 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %54, i64 1
  store double %65, double* %66, align 8, !tbaa !8
  %67 = load double, double* %49, align 16, !tbaa !8
  %68 = fmul double %63, %67
  %69 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %54, i64 2
  store double %68, double* %69, align 8, !tbaa !8
  %70 = load double, double* %50, align 8, !tbaa !8
  %71 = fmul double %63, %70
  %72 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %54, i64 3
  store double %71, double* %72, align 8, !tbaa !8
  %73 = load double, double* %51, align 16, !tbaa !8
  %74 = fmul double %63, %73
  %75 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %54, i64 4
  store double %74, double* %75, align 8, !tbaa !8
  %76 = fmul double %71, %71
  %77 = getelementptr inbounds double, double* %37, i64 %54
  store double %76, double* %77, align 8, !tbaa !8
  %78 = load double, double* %66, align 8, !tbaa !8
  %79 = call double @llvm.fmuladd.f64(double %78, double %78, double %76)
  %80 = load double, double* %69, align 8, !tbaa !8
  %81 = call double @llvm.fmuladd.f64(double %80, double %80, double %79)
  %82 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %54, i64 0
  store double %81, double* %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %54, i64 1
  %84 = load double, double* %83, align 8, !tbaa !8
  %85 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %54, i64 2
  %86 = load double, double* %85, align 8, !tbaa !8
  %87 = fmul double %80, %86
  %88 = call double @llvm.fmuladd.f64(double %78, double %84, double %87)
  %89 = load double, double* %72, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %54, i64 3
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = call double @llvm.fmuladd.f64(double %89, double %91, double %88)
  %93 = fmul double %92, 5.000000e-01
  %94 = getelementptr inbounds double, double* %38, i64 %54
  store double %93, double* %94, align 8, !tbaa !8
  %95 = add nuw nsw i64 %54, 1
  %96 = icmp eq i64 %95, %52
  br i1 %96, label %97, label %53

; <label>:97:                                     ; preds = %53
  %98 = add nsw i32 %8, -2
  %99 = icmp slt i32 %8, 3
  br i1 %99, label %100, label %106

; <label>:100:                                    ; preds = %44, %97
  %101 = phi i32 [ %45, %44 ], [ %98, %97 ]
  %102 = shl i64 %13, 32
  %103 = ashr exact i64 %102, 32
  %104 = shl i64 %16, 32
  %105 = ashr exact i64 %104, 32
  br label %271

; <label>:106:                                    ; preds = %97
  %107 = shl i64 %13, 32
  %108 = ashr exact i64 %107, 32
  %109 = shl i64 %16, 32
  %110 = ashr exact i64 %109, 32
  %111 = add i32 %8, -1
  %112 = zext i32 %111 to i64
  br label %113

; <label>:113:                                    ; preds = %113, %106
  %114 = phi i64 [ %116, %113 ], [ 1, %106 ]
  %115 = add nsw i64 %114, -1
  %116 = add nuw nsw i64 %114, 1
  %117 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %114, i64 %108, i64 %110, i64 0
  %118 = load double, double* %117, align 8, !tbaa !8
  %119 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 3
  %120 = load double, double* %119, align 8, !tbaa !8
  %121 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 3
  %122 = load double, double* %121, align 8, !tbaa !8
  %123 = fsub double %120, %122
  %124 = call double @llvm.fmuladd.f64(double %123, double -5.500000e+00, double %118)
  %125 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 0
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 0
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = call double @llvm.fmuladd.f64(double %128, double -2.000000e+00, double %126)
  %130 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 0
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = fadd double %129, %131
  %133 = call double @llvm.fmuladd.f64(double %132, double 1.210000e+02, double %124)
  store double %133, double* %117, align 8, !tbaa !8
  %134 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %114, i64 %108, i64 %110, i64 1
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 1
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 3
  %139 = load double, double* %138, align 8, !tbaa !8
  %140 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 1
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 3
  %143 = load double, double* %142, align 8, !tbaa !8
  %144 = fmul double %141, %143
  %145 = fsub double -0.000000e+00, %144
  %146 = call double @llvm.fmuladd.f64(double %137, double %139, double %145)
  %147 = call double @llvm.fmuladd.f64(double %146, double -5.500000e+00, double %135)
  %148 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 1
  %149 = load double, double* %148, align 8, !tbaa !8
  %150 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 1
  %151 = load double, double* %150, align 8, !tbaa !8
  %152 = call double @llvm.fmuladd.f64(double %151, double -2.000000e+00, double %149)
  %153 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 1
  %154 = load double, double* %153, align 8, !tbaa !8
  %155 = fadd double %152, %154
  %156 = call double @llvm.fmuladd.f64(double %155, double 0x4028333333333334, double %147)
  %157 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 1
  %158 = load double, double* %157, align 8, !tbaa !8
  %159 = call double @llvm.fmuladd.f64(double %158, double -2.000000e+00, double %137)
  %160 = fadd double %141, %159
  %161 = call double @llvm.fmuladd.f64(double %160, double 1.210000e+02, double %156)
  store double %161, double* %134, align 8, !tbaa !8
  %162 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %114, i64 %108, i64 %110, i64 2
  %163 = load double, double* %162, align 8, !tbaa !8
  %164 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 2
  %165 = load double, double* %164, align 8, !tbaa !8
  %166 = load double, double* %138, align 8, !tbaa !8
  %167 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 2
  %168 = load double, double* %167, align 8, !tbaa !8
  %169 = load double, double* %142, align 8, !tbaa !8
  %170 = fmul double %168, %169
  %171 = fsub double -0.000000e+00, %170
  %172 = call double @llvm.fmuladd.f64(double %165, double %166, double %171)
  %173 = call double @llvm.fmuladd.f64(double %172, double -5.500000e+00, double %163)
  %174 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 2
  %175 = load double, double* %174, align 8, !tbaa !8
  %176 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 2
  %177 = load double, double* %176, align 8, !tbaa !8
  %178 = call double @llvm.fmuladd.f64(double %177, double -2.000000e+00, double %175)
  %179 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 2
  %180 = load double, double* %179, align 8, !tbaa !8
  %181 = fadd double %178, %180
  %182 = call double @llvm.fmuladd.f64(double %181, double 0x4028333333333334, double %173)
  %183 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 2
  %184 = load double, double* %183, align 8, !tbaa !8
  %185 = call double @llvm.fmuladd.f64(double %184, double -2.000000e+00, double %165)
  %186 = fadd double %168, %185
  %187 = call double @llvm.fmuladd.f64(double %186, double 1.210000e+02, double %182)
  store double %187, double* %162, align 8, !tbaa !8
  %188 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %114, i64 %108, i64 %110, i64 3
  %189 = load double, double* %188, align 8, !tbaa !8
  %190 = load double, double* %119, align 8, !tbaa !8
  %191 = load double, double* %138, align 8, !tbaa !8
  %192 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 4
  %193 = load double, double* %192, align 8, !tbaa !8
  %194 = getelementptr inbounds double, double* %38, i64 %116
  %195 = load double, double* %194, align 8, !tbaa !8
  %196 = fsub double %193, %195
  %197 = fmul double %196, 4.000000e-01
  %198 = call double @llvm.fmuladd.f64(double %190, double %191, double %197)
  %199 = load double, double* %121, align 8, !tbaa !8
  %200 = load double, double* %142, align 8, !tbaa !8
  %201 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 4
  %202 = load double, double* %201, align 8, !tbaa !8
  %203 = getelementptr inbounds double, double* %38, i64 %115
  %204 = load double, double* %203, align 8, !tbaa !8
  %205 = fsub double %202, %204
  %206 = fmul double %205, 4.000000e-01
  %207 = call double @llvm.fmuladd.f64(double %199, double %200, double %206)
  %208 = fsub double %198, %207
  %209 = call double @llvm.fmuladd.f64(double %208, double -5.500000e+00, double %189)
  %210 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 3
  %211 = load double, double* %210, align 8, !tbaa !8
  %212 = call double @llvm.fmuladd.f64(double %211, double -2.000000e+00, double %191)
  %213 = fadd double %200, %212
  %214 = call double @llvm.fmuladd.f64(double %213, double 0x4030222222222222, double %209)
  %215 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 3
  %216 = load double, double* %215, align 8, !tbaa !8
  %217 = call double @llvm.fmuladd.f64(double %216, double -2.000000e+00, double %190)
  %218 = fadd double %199, %217
  %219 = call double @llvm.fmuladd.f64(double %218, double 1.210000e+02, double %214)
  store double %219, double* %188, align 8, !tbaa !8
  %220 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %114, i64 %108, i64 %110, i64 4
  %221 = load double, double* %220, align 8, !tbaa !8
  %222 = load double, double* %138, align 8, !tbaa !8
  %223 = load double, double* %192, align 8, !tbaa !8
  %224 = load double, double* %194, align 8, !tbaa !8
  %225 = fmul double %224, 4.000000e-01
  %226 = fsub double -0.000000e+00, %225
  %227 = call double @llvm.fmuladd.f64(double %223, double 1.400000e+00, double %226)
  %228 = load double, double* %142, align 8, !tbaa !8
  %229 = load double, double* %201, align 8, !tbaa !8
  %230 = load double, double* %203, align 8, !tbaa !8
  %231 = fmul double %230, 4.000000e-01
  %232 = fsub double -0.000000e+00, %231
  %233 = call double @llvm.fmuladd.f64(double %229, double 1.400000e+00, double %232)
  %234 = fmul double %228, %233
  %235 = fsub double -0.000000e+00, %234
  %236 = call double @llvm.fmuladd.f64(double %222, double %227, double %235)
  %237 = call double @llvm.fmuladd.f64(double %236, double -5.500000e+00, double %221)
  %238 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 0
  %239 = load double, double* %238, align 8, !tbaa !8
  %240 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 0
  %241 = load double, double* %240, align 8, !tbaa !8
  %242 = call double @llvm.fmuladd.f64(double %241, double -2.000000e+00, double %239)
  %243 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 0
  %244 = load double, double* %243, align 8, !tbaa !8
  %245 = fadd double %242, %244
  %246 = call double @llvm.fmuladd.f64(double %245, double 0xC0173B645A1CAC07, double %237)
  %247 = getelementptr inbounds double, double* %37, i64 %116
  %248 = load double, double* %247, align 8, !tbaa !8
  %249 = getelementptr inbounds double, double* %37, i64 %114
  %250 = load double, double* %249, align 8, !tbaa !8
  %251 = call double @llvm.fmuladd.f64(double %250, double -2.000000e+00, double %248)
  %252 = getelementptr inbounds double, double* %37, i64 %115
  %253 = load double, double* %252, align 8, !tbaa !8
  %254 = fadd double %251, %253
  %255 = call double @llvm.fmuladd.f64(double %254, double 0x4000222222222222, double %246)
  %256 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 4
  %257 = load double, double* %256, align 8, !tbaa !8
  %258 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 4
  %259 = load double, double* %258, align 8, !tbaa !8
  %260 = call double @llvm.fmuladd.f64(double %259, double -2.000000e+00, double %257)
  %261 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 4
  %262 = load double, double* %261, align 8, !tbaa !8
  %263 = fadd double %260, %262
  %264 = call double @llvm.fmuladd.f64(double %263, double 0x4037B74BC6A7EF9D, double %255)
  %265 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 4
  %266 = load double, double* %265, align 8, !tbaa !8
  %267 = call double @llvm.fmuladd.f64(double %266, double -2.000000e+00, double %223)
  %268 = fadd double %229, %267
  %269 = call double @llvm.fmuladd.f64(double %268, double 1.210000e+02, double %264)
  store double %269, double* %220, align 8, !tbaa !8
  %270 = icmp eq i64 %116, %112
  br i1 %270, label %271, label %113

; <label>:271:                                    ; preds = %113, %100
  %272 = phi i32 [ %101, %100 ], [ %98, %113 ]
  %273 = phi i64 [ %105, %100 ], [ %110, %113 ]
  %274 = phi i64 [ %103, %100 ], [ %108, %113 ]
  %275 = getelementptr inbounds double, double* %0, i64 845
  %276 = bitcast double* %275 to [13 x [13 x [5 x double]]]*
  %277 = getelementptr inbounds double, double* %32, i64 5
  %278 = getelementptr inbounds double, double* %32, i64 10
  %279 = getelementptr inbounds double, double* %32, i64 15
  %280 = getelementptr inbounds double, double* %0, i64 1690
  %281 = bitcast double* %280 to [13 x [13 x [5 x double]]]*
  %282 = getelementptr inbounds double, double* %32, i64 20
  %283 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %276, i64 0, i64 %274, i64 %273, i64 0
  %284 = load double, double* %283, align 8, !tbaa !8
  %285 = load double, double* %277, align 8, !tbaa !8
  %286 = load double, double* %278, align 8, !tbaa !8
  %287 = fmul double %286, 4.000000e+00
  %288 = fsub double -0.000000e+00, %287
  %289 = call double @llvm.fmuladd.f64(double %285, double 5.000000e+00, double %288)
  %290 = load double, double* %279, align 8, !tbaa !8
  %291 = fadd double %290, %289
  %292 = call double @llvm.fmuladd.f64(double %291, double -2.500000e-01, double %284)
  store double %292, double* %283, align 8, !tbaa !8
  %293 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %281, i64 0, i64 %274, i64 %273, i64 0
  %294 = load double, double* %293, align 8, !tbaa !8
  %295 = load double, double* %277, align 8, !tbaa !8
  %296 = load double, double* %278, align 8, !tbaa !8
  %297 = fmul double %296, 6.000000e+00
  %298 = call double @llvm.fmuladd.f64(double %295, double -4.000000e+00, double %297)
  %299 = load double, double* %279, align 8, !tbaa !8
  %300 = call double @llvm.fmuladd.f64(double %299, double -4.000000e+00, double %298)
  %301 = load double, double* %282, align 8, !tbaa !8
  %302 = fadd double %301, %300
  %303 = call double @llvm.fmuladd.f64(double %302, double -2.500000e-01, double %294)
  store double %303, double* %293, align 8, !tbaa !8
  %304 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %276, i64 0, i64 %274, i64 %273, i64 1
  %305 = load double, double* %304, align 8, !tbaa !8
  %306 = getelementptr inbounds double, double* %277, i64 1
  %307 = load double, double* %306, align 8, !tbaa !8
  %308 = getelementptr inbounds double, double* %278, i64 1
  %309 = load double, double* %308, align 8, !tbaa !8
  %310 = fmul double %309, 4.000000e+00
  %311 = fsub double -0.000000e+00, %310
  %312 = call double @llvm.fmuladd.f64(double %307, double 5.000000e+00, double %311)
  %313 = getelementptr inbounds double, double* %279, i64 1
  %314 = load double, double* %313, align 8, !tbaa !8
  %315 = fadd double %314, %312
  %316 = call double @llvm.fmuladd.f64(double %315, double -2.500000e-01, double %305)
  store double %316, double* %304, align 8, !tbaa !8
  %317 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %281, i64 0, i64 %274, i64 %273, i64 1
  %318 = load double, double* %317, align 8, !tbaa !8
  %319 = load double, double* %306, align 8, !tbaa !8
  %320 = load double, double* %308, align 8, !tbaa !8
  %321 = fmul double %320, 6.000000e+00
  %322 = call double @llvm.fmuladd.f64(double %319, double -4.000000e+00, double %321)
  %323 = load double, double* %313, align 8, !tbaa !8
  %324 = call double @llvm.fmuladd.f64(double %323, double -4.000000e+00, double %322)
  %325 = getelementptr inbounds double, double* %282, i64 1
  %326 = load double, double* %325, align 8, !tbaa !8
  %327 = fadd double %326, %324
  %328 = call double @llvm.fmuladd.f64(double %327, double -2.500000e-01, double %318)
  store double %328, double* %317, align 8, !tbaa !8
  %329 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %276, i64 0, i64 %274, i64 %273, i64 2
  %330 = load double, double* %329, align 8, !tbaa !8
  %331 = getelementptr inbounds double, double* %277, i64 2
  %332 = load double, double* %331, align 8, !tbaa !8
  %333 = getelementptr inbounds double, double* %278, i64 2
  %334 = load double, double* %333, align 8, !tbaa !8
  %335 = fmul double %334, 4.000000e+00
  %336 = fsub double -0.000000e+00, %335
  %337 = call double @llvm.fmuladd.f64(double %332, double 5.000000e+00, double %336)
  %338 = getelementptr inbounds double, double* %279, i64 2
  %339 = load double, double* %338, align 8, !tbaa !8
  %340 = fadd double %339, %337
  %341 = call double @llvm.fmuladd.f64(double %340, double -2.500000e-01, double %330)
  store double %341, double* %329, align 8, !tbaa !8
  %342 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %281, i64 0, i64 %274, i64 %273, i64 2
  %343 = load double, double* %342, align 8, !tbaa !8
  %344 = load double, double* %331, align 8, !tbaa !8
  %345 = load double, double* %333, align 8, !tbaa !8
  %346 = fmul double %345, 6.000000e+00
  %347 = call double @llvm.fmuladd.f64(double %344, double -4.000000e+00, double %346)
  %348 = load double, double* %338, align 8, !tbaa !8
  %349 = call double @llvm.fmuladd.f64(double %348, double -4.000000e+00, double %347)
  %350 = getelementptr inbounds double, double* %282, i64 2
  %351 = load double, double* %350, align 8, !tbaa !8
  %352 = fadd double %351, %349
  %353 = call double @llvm.fmuladd.f64(double %352, double -2.500000e-01, double %343)
  store double %353, double* %342, align 8, !tbaa !8
  %354 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %276, i64 0, i64 %274, i64 %273, i64 3
  %355 = load double, double* %354, align 8, !tbaa !8
  %356 = getelementptr inbounds double, double* %277, i64 3
  %357 = load double, double* %356, align 8, !tbaa !8
  %358 = getelementptr inbounds double, double* %278, i64 3
  %359 = load double, double* %358, align 8, !tbaa !8
  %360 = fmul double %359, 4.000000e+00
  %361 = fsub double -0.000000e+00, %360
  %362 = call double @llvm.fmuladd.f64(double %357, double 5.000000e+00, double %361)
  %363 = getelementptr inbounds double, double* %279, i64 3
  %364 = load double, double* %363, align 8, !tbaa !8
  %365 = fadd double %364, %362
  %366 = call double @llvm.fmuladd.f64(double %365, double -2.500000e-01, double %355)
  store double %366, double* %354, align 8, !tbaa !8
  %367 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %281, i64 0, i64 %274, i64 %273, i64 3
  %368 = load double, double* %367, align 8, !tbaa !8
  %369 = load double, double* %356, align 8, !tbaa !8
  %370 = load double, double* %358, align 8, !tbaa !8
  %371 = fmul double %370, 6.000000e+00
  %372 = call double @llvm.fmuladd.f64(double %369, double -4.000000e+00, double %371)
  %373 = load double, double* %363, align 8, !tbaa !8
  %374 = call double @llvm.fmuladd.f64(double %373, double -4.000000e+00, double %372)
  %375 = getelementptr inbounds double, double* %282, i64 3
  %376 = load double, double* %375, align 8, !tbaa !8
  %377 = fadd double %376, %374
  %378 = call double @llvm.fmuladd.f64(double %377, double -2.500000e-01, double %368)
  store double %378, double* %367, align 8, !tbaa !8
  %379 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %276, i64 0, i64 %274, i64 %273, i64 4
  %380 = load double, double* %379, align 8, !tbaa !8
  %381 = getelementptr inbounds double, double* %277, i64 4
  %382 = load double, double* %381, align 8, !tbaa !8
  %383 = getelementptr inbounds double, double* %278, i64 4
  %384 = load double, double* %383, align 8, !tbaa !8
  %385 = fmul double %384, 4.000000e+00
  %386 = fsub double -0.000000e+00, %385
  %387 = call double @llvm.fmuladd.f64(double %382, double 5.000000e+00, double %386)
  %388 = getelementptr inbounds double, double* %279, i64 4
  %389 = load double, double* %388, align 8, !tbaa !8
  %390 = fadd double %389, %387
  %391 = call double @llvm.fmuladd.f64(double %390, double -2.500000e-01, double %380)
  store double %391, double* %379, align 8, !tbaa !8
  %392 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %281, i64 0, i64 %274, i64 %273, i64 4
  %393 = load double, double* %392, align 8, !tbaa !8
  %394 = load double, double* %381, align 8, !tbaa !8
  %395 = load double, double* %383, align 8, !tbaa !8
  %396 = fmul double %395, 6.000000e+00
  %397 = call double @llvm.fmuladd.f64(double %394, double -4.000000e+00, double %396)
  %398 = load double, double* %388, align 8, !tbaa !8
  %399 = call double @llvm.fmuladd.f64(double %398, double -4.000000e+00, double %397)
  %400 = getelementptr inbounds double, double* %282, i64 4
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = fadd double %401, %399
  %403 = call double @llvm.fmuladd.f64(double %402, double -2.500000e-01, double %393)
  store double %403, double* %392, align 8, !tbaa !8
  %404 = icmp slt i32 %8, 7
  %405 = add i32 %8, -3
  br i1 %404, label %541, label %406

; <label>:406:                                    ; preds = %271
  %407 = zext i32 %405 to i64
  br label %408

; <label>:408:                                    ; preds = %408, %406
  %409 = phi i64 [ %422, %408 ], [ 3, %406 ]
  %410 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %409, i64 %274, i64 %273, i64 0
  %411 = load double, double* %410, align 8, !tbaa !8
  %412 = add nsw i64 %409, -2
  %413 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %412, i64 0
  %414 = load double, double* %413, align 8, !tbaa !8
  %415 = add nsw i64 %409, -1
  %416 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %415, i64 0
  %417 = load double, double* %416, align 8, !tbaa !8
  %418 = call double @llvm.fmuladd.f64(double %417, double -4.000000e+00, double %414)
  %419 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %409, i64 0
  %420 = load double, double* %419, align 8, !tbaa !8
  %421 = call double @llvm.fmuladd.f64(double %420, double 6.000000e+00, double %418)
  %422 = add nuw nsw i64 %409, 1
  %423 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %422, i64 0
  %424 = load double, double* %423, align 8, !tbaa !8
  %425 = call double @llvm.fmuladd.f64(double %424, double -4.000000e+00, double %421)
  %426 = add nuw nsw i64 %409, 2
  %427 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %426, i64 0
  %428 = load double, double* %427, align 8, !tbaa !8
  %429 = fadd double %425, %428
  %430 = call double @llvm.fmuladd.f64(double %429, double -2.500000e-01, double %411)
  store double %430, double* %410, align 8, !tbaa !8
  %431 = icmp eq i64 %422, %407
  br i1 %431, label %432, label %408

; <label>:432:                                    ; preds = %408
  br i1 %404, label %541, label %434

; <label>:433:                                    ; preds = %541, %9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #5
  ret void

; <label>:434:                                    ; preds = %432
  %435 = zext i32 %405 to i64
  br label %436

; <label>:436:                                    ; preds = %436, %434
  %437 = phi i64 [ %450, %436 ], [ 3, %434 ]
  %438 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %437, i64 %274, i64 %273, i64 1
  %439 = load double, double* %438, align 8, !tbaa !8
  %440 = add nsw i64 %437, -2
  %441 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %440, i64 1
  %442 = load double, double* %441, align 8, !tbaa !8
  %443 = add nsw i64 %437, -1
  %444 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %443, i64 1
  %445 = load double, double* %444, align 8, !tbaa !8
  %446 = call double @llvm.fmuladd.f64(double %445, double -4.000000e+00, double %442)
  %447 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %437, i64 1
  %448 = load double, double* %447, align 8, !tbaa !8
  %449 = call double @llvm.fmuladd.f64(double %448, double 6.000000e+00, double %446)
  %450 = add nuw nsw i64 %437, 1
  %451 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %450, i64 1
  %452 = load double, double* %451, align 8, !tbaa !8
  %453 = call double @llvm.fmuladd.f64(double %452, double -4.000000e+00, double %449)
  %454 = add nuw nsw i64 %437, 2
  %455 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %454, i64 1
  %456 = load double, double* %455, align 8, !tbaa !8
  %457 = fadd double %453, %456
  %458 = call double @llvm.fmuladd.f64(double %457, double -2.500000e-01, double %439)
  store double %458, double* %438, align 8, !tbaa !8
  %459 = icmp eq i64 %450, %435
  br i1 %459, label %460, label %436

; <label>:460:                                    ; preds = %436
  br i1 %404, label %541, label %461

; <label>:461:                                    ; preds = %460
  %462 = zext i32 %405 to i64
  br label %463

; <label>:463:                                    ; preds = %463, %461
  %464 = phi i64 [ %477, %463 ], [ 3, %461 ]
  %465 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %464, i64 %274, i64 %273, i64 2
  %466 = load double, double* %465, align 8, !tbaa !8
  %467 = add nsw i64 %464, -2
  %468 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %467, i64 2
  %469 = load double, double* %468, align 8, !tbaa !8
  %470 = add nsw i64 %464, -1
  %471 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %470, i64 2
  %472 = load double, double* %471, align 8, !tbaa !8
  %473 = call double @llvm.fmuladd.f64(double %472, double -4.000000e+00, double %469)
  %474 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %464, i64 2
  %475 = load double, double* %474, align 8, !tbaa !8
  %476 = call double @llvm.fmuladd.f64(double %475, double 6.000000e+00, double %473)
  %477 = add nuw nsw i64 %464, 1
  %478 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %477, i64 2
  %479 = load double, double* %478, align 8, !tbaa !8
  %480 = call double @llvm.fmuladd.f64(double %479, double -4.000000e+00, double %476)
  %481 = add nuw nsw i64 %464, 2
  %482 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %481, i64 2
  %483 = load double, double* %482, align 8, !tbaa !8
  %484 = fadd double %480, %483
  %485 = call double @llvm.fmuladd.f64(double %484, double -2.500000e-01, double %466)
  store double %485, double* %465, align 8, !tbaa !8
  %486 = icmp eq i64 %477, %462
  br i1 %486, label %487, label %463

; <label>:487:                                    ; preds = %463
  br i1 %404, label %541, label %488

; <label>:488:                                    ; preds = %487
  %489 = zext i32 %405 to i64
  br label %490

; <label>:490:                                    ; preds = %490, %488
  %491 = phi i64 [ %504, %490 ], [ 3, %488 ]
  %492 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %491, i64 %274, i64 %273, i64 3
  %493 = load double, double* %492, align 8, !tbaa !8
  %494 = add nsw i64 %491, -2
  %495 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %494, i64 3
  %496 = load double, double* %495, align 8, !tbaa !8
  %497 = add nsw i64 %491, -1
  %498 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %497, i64 3
  %499 = load double, double* %498, align 8, !tbaa !8
  %500 = call double @llvm.fmuladd.f64(double %499, double -4.000000e+00, double %496)
  %501 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %491, i64 3
  %502 = load double, double* %501, align 8, !tbaa !8
  %503 = call double @llvm.fmuladd.f64(double %502, double 6.000000e+00, double %500)
  %504 = add nuw nsw i64 %491, 1
  %505 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %504, i64 3
  %506 = load double, double* %505, align 8, !tbaa !8
  %507 = call double @llvm.fmuladd.f64(double %506, double -4.000000e+00, double %503)
  %508 = add nuw nsw i64 %491, 2
  %509 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %508, i64 3
  %510 = load double, double* %509, align 8, !tbaa !8
  %511 = fadd double %507, %510
  %512 = call double @llvm.fmuladd.f64(double %511, double -2.500000e-01, double %493)
  store double %512, double* %492, align 8, !tbaa !8
  %513 = icmp eq i64 %504, %489
  br i1 %513, label %514, label %490

; <label>:514:                                    ; preds = %490
  br i1 %404, label %541, label %515

; <label>:515:                                    ; preds = %514
  %516 = zext i32 %405 to i64
  br label %517

; <label>:517:                                    ; preds = %517, %515
  %518 = phi i64 [ %531, %517 ], [ 3, %515 ]
  %519 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %518, i64 %274, i64 %273, i64 4
  %520 = load double, double* %519, align 8, !tbaa !8
  %521 = add nsw i64 %518, -2
  %522 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %521, i64 4
  %523 = load double, double* %522, align 8, !tbaa !8
  %524 = add nsw i64 %518, -1
  %525 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %524, i64 4
  %526 = load double, double* %525, align 8, !tbaa !8
  %527 = call double @llvm.fmuladd.f64(double %526, double -4.000000e+00, double %523)
  %528 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %518, i64 4
  %529 = load double, double* %528, align 8, !tbaa !8
  %530 = call double @llvm.fmuladd.f64(double %529, double 6.000000e+00, double %527)
  %531 = add nuw nsw i64 %518, 1
  %532 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %531, i64 4
  %533 = load double, double* %532, align 8, !tbaa !8
  %534 = call double @llvm.fmuladd.f64(double %533, double -4.000000e+00, double %530)
  %535 = add nuw nsw i64 %518, 2
  %536 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %535, i64 4
  %537 = load double, double* %536, align 8, !tbaa !8
  %538 = fadd double %534, %537
  %539 = call double @llvm.fmuladd.f64(double %538, double -2.500000e-01, double %520)
  store double %539, double* %519, align 8, !tbaa !8
  %540 = icmp eq i64 %531, %516
  br i1 %540, label %541, label %517

; <label>:541:                                    ; preds = %517, %271, %432, %460, %487, %514
  %542 = sext i32 %405 to i64
  %543 = add nsw i32 %8, -5
  %544 = sext i32 %543 to i64
  %545 = add nsw i32 %8, -4
  %546 = sext i32 %545 to i64
  %547 = sext i32 %272 to i64
  %548 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %542, i64 %274, i64 %273, i64 0
  %549 = load double, double* %548, align 8, !tbaa !8
  %550 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %544, i64 0
  %551 = load double, double* %550, align 8, !tbaa !8
  %552 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %546, i64 0
  %553 = load double, double* %552, align 8, !tbaa !8
  %554 = call double @llvm.fmuladd.f64(double %553, double -4.000000e+00, double %551)
  %555 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 0
  %556 = load double, double* %555, align 8, !tbaa !8
  %557 = call double @llvm.fmuladd.f64(double %556, double 6.000000e+00, double %554)
  %558 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %547, i64 0
  %559 = load double, double* %558, align 8, !tbaa !8
  %560 = call double @llvm.fmuladd.f64(double %559, double -4.000000e+00, double %557)
  %561 = call double @llvm.fmuladd.f64(double %560, double -2.500000e-01, double %549)
  store double %561, double* %548, align 8, !tbaa !8
  %562 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %547, i64 %274, i64 %273, i64 0
  %563 = load double, double* %562, align 8, !tbaa !8
  %564 = load double, double* %552, align 8, !tbaa !8
  %565 = load double, double* %555, align 8, !tbaa !8
  %566 = call double @llvm.fmuladd.f64(double %565, double -4.000000e+00, double %564)
  %567 = load double, double* %558, align 8, !tbaa !8
  %568 = call double @llvm.fmuladd.f64(double %567, double 5.000000e+00, double %566)
  %569 = call double @llvm.fmuladd.f64(double %568, double -2.500000e-01, double %563)
  store double %569, double* %562, align 8, !tbaa !8
  %570 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %542, i64 %274, i64 %273, i64 1
  %571 = load double, double* %570, align 8, !tbaa !8
  %572 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %544, i64 1
  %573 = load double, double* %572, align 8, !tbaa !8
  %574 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %546, i64 1
  %575 = load double, double* %574, align 8, !tbaa !8
  %576 = call double @llvm.fmuladd.f64(double %575, double -4.000000e+00, double %573)
  %577 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 1
  %578 = load double, double* %577, align 8, !tbaa !8
  %579 = call double @llvm.fmuladd.f64(double %578, double 6.000000e+00, double %576)
  %580 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %547, i64 1
  %581 = load double, double* %580, align 8, !tbaa !8
  %582 = call double @llvm.fmuladd.f64(double %581, double -4.000000e+00, double %579)
  %583 = call double @llvm.fmuladd.f64(double %582, double -2.500000e-01, double %571)
  store double %583, double* %570, align 8, !tbaa !8
  %584 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %547, i64 %274, i64 %273, i64 1
  %585 = load double, double* %584, align 8, !tbaa !8
  %586 = load double, double* %574, align 8, !tbaa !8
  %587 = load double, double* %577, align 8, !tbaa !8
  %588 = call double @llvm.fmuladd.f64(double %587, double -4.000000e+00, double %586)
  %589 = load double, double* %580, align 8, !tbaa !8
  %590 = call double @llvm.fmuladd.f64(double %589, double 5.000000e+00, double %588)
  %591 = call double @llvm.fmuladd.f64(double %590, double -2.500000e-01, double %585)
  store double %591, double* %584, align 8, !tbaa !8
  %592 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %542, i64 %274, i64 %273, i64 2
  %593 = load double, double* %592, align 8, !tbaa !8
  %594 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %544, i64 2
  %595 = load double, double* %594, align 8, !tbaa !8
  %596 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %546, i64 2
  %597 = load double, double* %596, align 8, !tbaa !8
  %598 = call double @llvm.fmuladd.f64(double %597, double -4.000000e+00, double %595)
  %599 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 2
  %600 = load double, double* %599, align 8, !tbaa !8
  %601 = call double @llvm.fmuladd.f64(double %600, double 6.000000e+00, double %598)
  %602 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %547, i64 2
  %603 = load double, double* %602, align 8, !tbaa !8
  %604 = call double @llvm.fmuladd.f64(double %603, double -4.000000e+00, double %601)
  %605 = call double @llvm.fmuladd.f64(double %604, double -2.500000e-01, double %593)
  store double %605, double* %592, align 8, !tbaa !8
  %606 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %547, i64 %274, i64 %273, i64 2
  %607 = load double, double* %606, align 8, !tbaa !8
  %608 = load double, double* %596, align 8, !tbaa !8
  %609 = load double, double* %599, align 8, !tbaa !8
  %610 = call double @llvm.fmuladd.f64(double %609, double -4.000000e+00, double %608)
  %611 = load double, double* %602, align 8, !tbaa !8
  %612 = call double @llvm.fmuladd.f64(double %611, double 5.000000e+00, double %610)
  %613 = call double @llvm.fmuladd.f64(double %612, double -2.500000e-01, double %607)
  store double %613, double* %606, align 8, !tbaa !8
  %614 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %542, i64 %274, i64 %273, i64 3
  %615 = load double, double* %614, align 8, !tbaa !8
  %616 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %544, i64 3
  %617 = load double, double* %616, align 8, !tbaa !8
  %618 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %546, i64 3
  %619 = load double, double* %618, align 8, !tbaa !8
  %620 = call double @llvm.fmuladd.f64(double %619, double -4.000000e+00, double %617)
  %621 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 3
  %622 = load double, double* %621, align 8, !tbaa !8
  %623 = call double @llvm.fmuladd.f64(double %622, double 6.000000e+00, double %620)
  %624 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %547, i64 3
  %625 = load double, double* %624, align 8, !tbaa !8
  %626 = call double @llvm.fmuladd.f64(double %625, double -4.000000e+00, double %623)
  %627 = call double @llvm.fmuladd.f64(double %626, double -2.500000e-01, double %615)
  store double %627, double* %614, align 8, !tbaa !8
  %628 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %547, i64 %274, i64 %273, i64 3
  %629 = load double, double* %628, align 8, !tbaa !8
  %630 = load double, double* %618, align 8, !tbaa !8
  %631 = load double, double* %621, align 8, !tbaa !8
  %632 = call double @llvm.fmuladd.f64(double %631, double -4.000000e+00, double %630)
  %633 = load double, double* %624, align 8, !tbaa !8
  %634 = call double @llvm.fmuladd.f64(double %633, double 5.000000e+00, double %632)
  %635 = call double @llvm.fmuladd.f64(double %634, double -2.500000e-01, double %629)
  store double %635, double* %628, align 8, !tbaa !8
  %636 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %542, i64 %274, i64 %273, i64 4
  %637 = load double, double* %636, align 8, !tbaa !8
  %638 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %544, i64 4
  %639 = load double, double* %638, align 8, !tbaa !8
  %640 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %546, i64 4
  %641 = load double, double* %640, align 8, !tbaa !8
  %642 = call double @llvm.fmuladd.f64(double %641, double -4.000000e+00, double %639)
  %643 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 4
  %644 = load double, double* %643, align 8, !tbaa !8
  %645 = call double @llvm.fmuladd.f64(double %644, double 6.000000e+00, double %642)
  %646 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %547, i64 4
  %647 = load double, double* %646, align 8, !tbaa !8
  %648 = call double @llvm.fmuladd.f64(double %647, double -4.000000e+00, double %645)
  %649 = call double @llvm.fmuladd.f64(double %648, double -2.500000e-01, double %637)
  store double %649, double* %636, align 8, !tbaa !8
  %650 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %30, i64 %547, i64 %274, i64 %273, i64 4
  %651 = load double, double* %650, align 8, !tbaa !8
  %652 = load double, double* %640, align 8, !tbaa !8
  %653 = load double, double* %643, align 8, !tbaa !8
  %654 = call double @llvm.fmuladd.f64(double %653, double -4.000000e+00, double %652)
  %655 = load double, double* %646, align 8, !tbaa !8
  %656 = call double @llvm.fmuladd.f64(double %655, double 5.000000e+00, double %654)
  %657 = call double @llvm.fmuladd.f64(double %656, double -2.500000e-01, double %651)
  store double %657, double* %650, align 8, !tbaa !8
  br label %433
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @exact_solution(double, double, double, double*, double*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
