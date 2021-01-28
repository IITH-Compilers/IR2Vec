; ModuleID = 'npb-SP-exact_rhs2.cl'
source_filename = "npb-SP-exact_rhs2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @exact_rhs2(double* nocapture, double*, double* nocapture, double* nocapture, double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = alloca [5 x double], align 16
  %11 = bitcast [5 x double]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #5
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %16 = add i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %8, -2
  %19 = icmp slt i32 %18, %14
  %20 = add nsw i32 %7, -2
  %21 = icmp slt i32 %20, %17
  %22 = or i1 %19, %21
  br i1 %22, label %429, label %23

; <label>:23:                                     ; preds = %9
  %24 = add nsw i32 %14, -1
  %25 = mul nsw i32 %24, %7
  %26 = add nsw i32 %17, -1
  %27 = add nsw i32 %26, %25
  %28 = mul nsw i32 %27, 36
  %29 = mul i32 %27, 180
  %30 = bitcast double* %0 to [37 x [37 x [5 x double]]]*
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds double, double* %1, i64 %31
  %33 = bitcast double* %32 to [5 x double]*
  %34 = getelementptr inbounds double, double* %2, i64 %31
  %35 = bitcast double* %34 to [5 x double]*
  %36 = sext i32 %28 to i64
  %37 = getelementptr inbounds double, double* %3, i64 %36
  %38 = getelementptr inbounds double, double* %4, i64 %36
  %39 = sitofp i32 %14 to double
  %40 = fmul double %39, 0x3F9D41D41D41D41D
  %41 = sitofp i32 %17 to double
  %42 = fmul double %41, 0x3F9D41D41D41D41D
  %43 = icmp sgt i32 %6, 0
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %23
  %45 = add nsw i32 %6, -2
  br label %100

; <label>:46:                                     ; preds = %23
  %47 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 0
  %48 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 1
  %49 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 2
  %50 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 3
  %51 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 4
  %52 = zext i32 %6 to i64
  br label %53

; <label>:53:                                     ; preds = %53, %46
  %54 = phi i64 [ 0, %46 ], [ %95, %53 ]
  %55 = mul nuw nsw i64 %54, 5
  %56 = add nsw i64 %55, %31
  %57 = getelementptr double, double* %1, i64 %56
  %58 = bitcast double* %57 to i8*
  %59 = trunc i64 %54 to i32
  %60 = sitofp i32 %59 to double
  %61 = fmul double %60, 0x3F9D41D41D41D41D
  call void @exact_solution(double %61, double %42, double %40, double* nonnull %47, double* %5) #5
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
  %76 = fmul double %65, %65
  %77 = getelementptr inbounds double, double* %37, i64 %54
  store double %76, double* %77, align 8, !tbaa !8
  %78 = load double, double* %69, align 8, !tbaa !8
  %79 = call double @llvm.fmuladd.f64(double %78, double %78, double %76)
  %80 = load double, double* %72, align 8, !tbaa !8
  %81 = call double @llvm.fmuladd.f64(double %80, double %80, double %79)
  %82 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %54, i64 0
  store double %81, double* %82, align 8, !tbaa !8
  %83 = load double, double* %66, align 8, !tbaa !8
  %84 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %54, i64 1
  %85 = load double, double* %84, align 8, !tbaa !8
  %86 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %54, i64 2
  %87 = load double, double* %86, align 8, !tbaa !8
  %88 = fmul double %78, %87
  %89 = call double @llvm.fmuladd.f64(double %83, double %85, double %88)
  %90 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %54, i64 3
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = call double @llvm.fmuladd.f64(double %80, double %91, double %89)
  %93 = fmul double %92, 5.000000e-01
  %94 = getelementptr inbounds double, double* %38, i64 %54
  store double %93, double* %94, align 8, !tbaa !8
  %95 = add nuw nsw i64 %54, 1
  %96 = icmp eq i64 %95, %52
  br i1 %96, label %97, label %53

; <label>:97:                                     ; preds = %53
  %98 = add nsw i32 %6, -2
  %99 = icmp slt i32 %6, 3
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
  %111 = add i32 %6, -1
  %112 = zext i32 %111 to i64
  br label %113

; <label>:113:                                    ; preds = %113, %106
  %114 = phi i64 [ %116, %113 ], [ 1, %106 ]
  %115 = add nsw i64 %114, -1
  %116 = add nuw nsw i64 %114, 1
  %117 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %108, i64 %110, i64 %114, i64 0
  %118 = load double, double* %117, align 8, !tbaa !8
  %119 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 1
  %120 = load double, double* %119, align 8, !tbaa !8
  %121 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 1
  %122 = load double, double* %121, align 8, !tbaa !8
  %123 = fsub double %120, %122
  %124 = call double @llvm.fmuladd.f64(double %123, double -1.750000e+01, double %118)
  %125 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 0
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 0
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = call double @llvm.fmuladd.f64(double %128, double -2.000000e+00, double %126)
  %130 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 0
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = fadd double %129, %131
  %133 = call double @llvm.fmuladd.f64(double %132, double 0x408CB60000000002, double %124)
  store double %133, double* %117, align 8, !tbaa !8
  %134 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %108, i64 %110, i64 %114, i64 1
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = load double, double* %119, align 8, !tbaa !8
  %137 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 1
  %138 = load double, double* %137, align 8, !tbaa !8
  %139 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 4
  %140 = load double, double* %139, align 8, !tbaa !8
  %141 = getelementptr inbounds double, double* %38, i64 %116
  %142 = load double, double* %141, align 8, !tbaa !8
  %143 = fsub double %140, %142
  %144 = fmul double %143, 4.000000e-01
  %145 = call double @llvm.fmuladd.f64(double %136, double %138, double %144)
  %146 = load double, double* %121, align 8, !tbaa !8
  %147 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 1
  %148 = load double, double* %147, align 8, !tbaa !8
  %149 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 4
  %150 = load double, double* %149, align 8, !tbaa !8
  %151 = getelementptr inbounds double, double* %38, i64 %115
  %152 = load double, double* %151, align 8, !tbaa !8
  %153 = fsub double %150, %152
  %154 = fmul double %153, 4.000000e-01
  %155 = call double @llvm.fmuladd.f64(double %146, double %148, double %154)
  %156 = fsub double %145, %155
  %157 = call double @llvm.fmuladd.f64(double %156, double -1.750000e+01, double %135)
  %158 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 1
  %159 = load double, double* %158, align 8, !tbaa !8
  %160 = call double @llvm.fmuladd.f64(double %159, double -2.000000e+00, double %138)
  %161 = fadd double %148, %160
  %162 = call double @llvm.fmuladd.f64(double %161, double 0x40646AAAAAAAAAAA, double %157)
  %163 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 1
  %164 = load double, double* %163, align 8, !tbaa !8
  %165 = call double @llvm.fmuladd.f64(double %164, double -2.000000e+00, double %136)
  %166 = fadd double %146, %165
  %167 = call double @llvm.fmuladd.f64(double %166, double 0x408CB60000000002, double %162)
  store double %167, double* %134, align 8, !tbaa !8
  %168 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %108, i64 %110, i64 %114, i64 2
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 2
  %171 = load double, double* %170, align 8, !tbaa !8
  %172 = load double, double* %137, align 8, !tbaa !8
  %173 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 2
  %174 = load double, double* %173, align 8, !tbaa !8
  %175 = load double, double* %147, align 8, !tbaa !8
  %176 = fmul double %174, %175
  %177 = fsub double -0.000000e+00, %176
  %178 = call double @llvm.fmuladd.f64(double %171, double %172, double %177)
  %179 = call double @llvm.fmuladd.f64(double %178, double -1.750000e+01, double %169)
  %180 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 2
  %181 = load double, double* %180, align 8, !tbaa !8
  %182 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 2
  %183 = load double, double* %182, align 8, !tbaa !8
  %184 = call double @llvm.fmuladd.f64(double %183, double -2.000000e+00, double %181)
  %185 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 2
  %186 = load double, double* %185, align 8, !tbaa !8
  %187 = fadd double %184, %186
  %188 = call double @llvm.fmuladd.f64(double %187, double 1.225000e+02, double %179)
  %189 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 2
  %190 = load double, double* %189, align 8, !tbaa !8
  %191 = call double @llvm.fmuladd.f64(double %190, double -2.000000e+00, double %171)
  %192 = fadd double %174, %191
  %193 = call double @llvm.fmuladd.f64(double %192, double 0x408CB60000000002, double %188)
  store double %193, double* %168, align 8, !tbaa !8
  %194 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %108, i64 %110, i64 %114, i64 3
  %195 = load double, double* %194, align 8, !tbaa !8
  %196 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %116, i64 3
  %197 = load double, double* %196, align 8, !tbaa !8
  %198 = load double, double* %137, align 8, !tbaa !8
  %199 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %115, i64 3
  %200 = load double, double* %199, align 8, !tbaa !8
  %201 = load double, double* %147, align 8, !tbaa !8
  %202 = fmul double %200, %201
  %203 = fsub double -0.000000e+00, %202
  %204 = call double @llvm.fmuladd.f64(double %197, double %198, double %203)
  %205 = call double @llvm.fmuladd.f64(double %204, double -1.750000e+01, double %195)
  %206 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 3
  %207 = load double, double* %206, align 8, !tbaa !8
  %208 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 3
  %209 = load double, double* %208, align 8, !tbaa !8
  %210 = call double @llvm.fmuladd.f64(double %209, double -2.000000e+00, double %207)
  %211 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 3
  %212 = load double, double* %211, align 8, !tbaa !8
  %213 = fadd double %210, %212
  %214 = call double @llvm.fmuladd.f64(double %213, double 1.225000e+02, double %205)
  %215 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 3
  %216 = load double, double* %215, align 8, !tbaa !8
  %217 = call double @llvm.fmuladd.f64(double %216, double -2.000000e+00, double %197)
  %218 = fadd double %200, %217
  %219 = call double @llvm.fmuladd.f64(double %218, double 0x408CB60000000002, double %214)
  store double %219, double* %194, align 8, !tbaa !8
  %220 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %108, i64 %110, i64 %114, i64 4
  %221 = load double, double* %220, align 8, !tbaa !8
  %222 = load double, double* %137, align 8, !tbaa !8
  %223 = load double, double* %139, align 8, !tbaa !8
  %224 = load double, double* %141, align 8, !tbaa !8
  %225 = fmul double %224, 4.000000e-01
  %226 = fsub double -0.000000e+00, %225
  %227 = call double @llvm.fmuladd.f64(double %223, double 1.400000e+00, double %226)
  %228 = load double, double* %147, align 8, !tbaa !8
  %229 = load double, double* %149, align 8, !tbaa !8
  %230 = load double, double* %151, align 8, !tbaa !8
  %231 = fmul double %230, 4.000000e-01
  %232 = fsub double -0.000000e+00, %231
  %233 = call double @llvm.fmuladd.f64(double %229, double 1.400000e+00, double %232)
  %234 = fmul double %228, %233
  %235 = fsub double -0.000000e+00, %234
  %236 = call double @llvm.fmuladd.f64(double %222, double %227, double %235)
  %237 = call double @llvm.fmuladd.f64(double %236, double -1.750000e+01, double %221)
  %238 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 0
  %239 = load double, double* %238, align 8, !tbaa !8
  %240 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 0
  %241 = load double, double* %240, align 8, !tbaa !8
  %242 = call double @llvm.fmuladd.f64(double %241, double -2.000000e+00, double %239)
  %243 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 0
  %244 = load double, double* %243, align 8, !tbaa !8
  %245 = fadd double %242, %244
  %246 = call double @llvm.fmuladd.f64(double %245, double 0xC04D666666666664, double %237)
  %247 = getelementptr inbounds double, double* %37, i64 %116
  %248 = load double, double* %247, align 8, !tbaa !8
  %249 = getelementptr inbounds double, double* %37, i64 %114
  %250 = load double, double* %249, align 8, !tbaa !8
  %251 = call double @llvm.fmuladd.f64(double %250, double -2.000000e+00, double %248)
  %252 = getelementptr inbounds double, double* %37, i64 %115
  %253 = load double, double* %252, align 8, !tbaa !8
  %254 = fadd double %251, %253
  %255 = call double @llvm.fmuladd.f64(double %254, double 0x40346AAAAAAAAAAA, double %246)
  %256 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %116, i64 4
  %257 = load double, double* %256, align 8, !tbaa !8
  %258 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %114, i64 4
  %259 = load double, double* %258, align 8, !tbaa !8
  %260 = call double @llvm.fmuladd.f64(double %259, double -2.000000e+00, double %257)
  %261 = getelementptr inbounds [5 x double], [5 x double]* %35, i64 %115, i64 4
  %262 = load double, double* %261, align 8, !tbaa !8
  %263 = fadd double %260, %262
  %264 = call double @llvm.fmuladd.f64(double %263, double 0x406E033333333332, double %255)
  %265 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %114, i64 4
  %266 = load double, double* %265, align 8, !tbaa !8
  %267 = call double @llvm.fmuladd.f64(double %266, double -2.000000e+00, double %223)
  %268 = fadd double %229, %267
  %269 = call double @llvm.fmuladd.f64(double %268, double 0x408CB60000000002, double %264)
  store double %269, double* %220, align 8, !tbaa !8
  %270 = icmp eq i64 %116, %112
  br i1 %270, label %271, label %113

; <label>:271:                                    ; preds = %113, %100
  %272 = phi i32 [ %101, %100 ], [ %98, %113 ]
  %273 = phi i64 [ %105, %100 ], [ %110, %113 ]
  %274 = phi i64 [ %103, %100 ], [ %108, %113 ]
  %275 = getelementptr inbounds double, double* %32, i64 5
  %276 = getelementptr inbounds double, double* %32, i64 10
  %277 = getelementptr inbounds double, double* %32, i64 15
  %278 = getelementptr inbounds double, double* %32, i64 20
  %279 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 1, i64 0
  %280 = load double, double* %279, align 8, !tbaa !8
  %281 = load double, double* %275, align 8, !tbaa !8
  %282 = load double, double* %276, align 8, !tbaa !8
  %283 = fmul double %282, 4.000000e+00
  %284 = fsub double -0.000000e+00, %283
  %285 = call double @llvm.fmuladd.f64(double %281, double 5.000000e+00, double %284)
  %286 = load double, double* %277, align 8, !tbaa !8
  %287 = fadd double %286, %285
  %288 = call double @llvm.fmuladd.f64(double %287, double -2.500000e-01, double %280)
  store double %288, double* %279, align 8, !tbaa !8
  %289 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 2, i64 0
  %290 = load double, double* %289, align 8, !tbaa !8
  %291 = load double, double* %275, align 8, !tbaa !8
  %292 = load double, double* %276, align 8, !tbaa !8
  %293 = fmul double %292, 6.000000e+00
  %294 = call double @llvm.fmuladd.f64(double %291, double -4.000000e+00, double %293)
  %295 = load double, double* %277, align 8, !tbaa !8
  %296 = call double @llvm.fmuladd.f64(double %295, double -4.000000e+00, double %294)
  %297 = load double, double* %278, align 8, !tbaa !8
  %298 = fadd double %297, %296
  %299 = call double @llvm.fmuladd.f64(double %298, double -2.500000e-01, double %290)
  store double %299, double* %289, align 8, !tbaa !8
  %300 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 1, i64 1
  %301 = load double, double* %300, align 8, !tbaa !8
  %302 = getelementptr inbounds double, double* %275, i64 1
  %303 = load double, double* %302, align 8, !tbaa !8
  %304 = getelementptr inbounds double, double* %276, i64 1
  %305 = load double, double* %304, align 8, !tbaa !8
  %306 = fmul double %305, 4.000000e+00
  %307 = fsub double -0.000000e+00, %306
  %308 = call double @llvm.fmuladd.f64(double %303, double 5.000000e+00, double %307)
  %309 = getelementptr inbounds double, double* %277, i64 1
  %310 = load double, double* %309, align 8, !tbaa !8
  %311 = fadd double %310, %308
  %312 = call double @llvm.fmuladd.f64(double %311, double -2.500000e-01, double %301)
  store double %312, double* %300, align 8, !tbaa !8
  %313 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 2, i64 1
  %314 = load double, double* %313, align 8, !tbaa !8
  %315 = load double, double* %302, align 8, !tbaa !8
  %316 = load double, double* %304, align 8, !tbaa !8
  %317 = fmul double %316, 6.000000e+00
  %318 = call double @llvm.fmuladd.f64(double %315, double -4.000000e+00, double %317)
  %319 = load double, double* %309, align 8, !tbaa !8
  %320 = call double @llvm.fmuladd.f64(double %319, double -4.000000e+00, double %318)
  %321 = getelementptr inbounds double, double* %278, i64 1
  %322 = load double, double* %321, align 8, !tbaa !8
  %323 = fadd double %322, %320
  %324 = call double @llvm.fmuladd.f64(double %323, double -2.500000e-01, double %314)
  store double %324, double* %313, align 8, !tbaa !8
  %325 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 1, i64 2
  %326 = load double, double* %325, align 8, !tbaa !8
  %327 = getelementptr inbounds double, double* %275, i64 2
  %328 = load double, double* %327, align 8, !tbaa !8
  %329 = getelementptr inbounds double, double* %276, i64 2
  %330 = load double, double* %329, align 8, !tbaa !8
  %331 = fmul double %330, 4.000000e+00
  %332 = fsub double -0.000000e+00, %331
  %333 = call double @llvm.fmuladd.f64(double %328, double 5.000000e+00, double %332)
  %334 = getelementptr inbounds double, double* %277, i64 2
  %335 = load double, double* %334, align 8, !tbaa !8
  %336 = fadd double %335, %333
  %337 = call double @llvm.fmuladd.f64(double %336, double -2.500000e-01, double %326)
  store double %337, double* %325, align 8, !tbaa !8
  %338 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 2, i64 2
  %339 = load double, double* %338, align 8, !tbaa !8
  %340 = load double, double* %327, align 8, !tbaa !8
  %341 = load double, double* %329, align 8, !tbaa !8
  %342 = fmul double %341, 6.000000e+00
  %343 = call double @llvm.fmuladd.f64(double %340, double -4.000000e+00, double %342)
  %344 = load double, double* %334, align 8, !tbaa !8
  %345 = call double @llvm.fmuladd.f64(double %344, double -4.000000e+00, double %343)
  %346 = getelementptr inbounds double, double* %278, i64 2
  %347 = load double, double* %346, align 8, !tbaa !8
  %348 = fadd double %347, %345
  %349 = call double @llvm.fmuladd.f64(double %348, double -2.500000e-01, double %339)
  store double %349, double* %338, align 8, !tbaa !8
  %350 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 1, i64 3
  %351 = load double, double* %350, align 8, !tbaa !8
  %352 = getelementptr inbounds double, double* %275, i64 3
  %353 = load double, double* %352, align 8, !tbaa !8
  %354 = getelementptr inbounds double, double* %276, i64 3
  %355 = load double, double* %354, align 8, !tbaa !8
  %356 = fmul double %355, 4.000000e+00
  %357 = fsub double -0.000000e+00, %356
  %358 = call double @llvm.fmuladd.f64(double %353, double 5.000000e+00, double %357)
  %359 = getelementptr inbounds double, double* %277, i64 3
  %360 = load double, double* %359, align 8, !tbaa !8
  %361 = fadd double %360, %358
  %362 = call double @llvm.fmuladd.f64(double %361, double -2.500000e-01, double %351)
  store double %362, double* %350, align 8, !tbaa !8
  %363 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 2, i64 3
  %364 = load double, double* %363, align 8, !tbaa !8
  %365 = load double, double* %352, align 8, !tbaa !8
  %366 = load double, double* %354, align 8, !tbaa !8
  %367 = fmul double %366, 6.000000e+00
  %368 = call double @llvm.fmuladd.f64(double %365, double -4.000000e+00, double %367)
  %369 = load double, double* %359, align 8, !tbaa !8
  %370 = call double @llvm.fmuladd.f64(double %369, double -4.000000e+00, double %368)
  %371 = getelementptr inbounds double, double* %278, i64 3
  %372 = load double, double* %371, align 8, !tbaa !8
  %373 = fadd double %372, %370
  %374 = call double @llvm.fmuladd.f64(double %373, double -2.500000e-01, double %364)
  store double %374, double* %363, align 8, !tbaa !8
  %375 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 1, i64 4
  %376 = load double, double* %375, align 8, !tbaa !8
  %377 = getelementptr inbounds double, double* %275, i64 4
  %378 = load double, double* %377, align 8, !tbaa !8
  %379 = getelementptr inbounds double, double* %276, i64 4
  %380 = load double, double* %379, align 8, !tbaa !8
  %381 = fmul double %380, 4.000000e+00
  %382 = fsub double -0.000000e+00, %381
  %383 = call double @llvm.fmuladd.f64(double %378, double 5.000000e+00, double %382)
  %384 = getelementptr inbounds double, double* %277, i64 4
  %385 = load double, double* %384, align 8, !tbaa !8
  %386 = fadd double %385, %383
  %387 = call double @llvm.fmuladd.f64(double %386, double -2.500000e-01, double %376)
  store double %387, double* %375, align 8, !tbaa !8
  %388 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 2, i64 4
  %389 = load double, double* %388, align 8, !tbaa !8
  %390 = load double, double* %377, align 8, !tbaa !8
  %391 = load double, double* %379, align 8, !tbaa !8
  %392 = fmul double %391, 6.000000e+00
  %393 = call double @llvm.fmuladd.f64(double %390, double -4.000000e+00, double %392)
  %394 = load double, double* %384, align 8, !tbaa !8
  %395 = call double @llvm.fmuladd.f64(double %394, double -4.000000e+00, double %393)
  %396 = getelementptr inbounds double, double* %278, i64 4
  %397 = load double, double* %396, align 8, !tbaa !8
  %398 = fadd double %397, %395
  %399 = call double @llvm.fmuladd.f64(double %398, double -2.500000e-01, double %389)
  store double %399, double* %388, align 8, !tbaa !8
  %400 = icmp slt i32 %6, 7
  %401 = add i32 %6, -3
  br i1 %400, label %537, label %402

; <label>:402:                                    ; preds = %271
  %403 = zext i32 %401 to i64
  br label %404

; <label>:404:                                    ; preds = %404, %402
  %405 = phi i64 [ %418, %404 ], [ 3, %402 ]
  %406 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %405, i64 0
  %407 = load double, double* %406, align 8, !tbaa !8
  %408 = add nsw i64 %405, -2
  %409 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %408, i64 0
  %410 = load double, double* %409, align 8, !tbaa !8
  %411 = add nsw i64 %405, -1
  %412 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %411, i64 0
  %413 = load double, double* %412, align 8, !tbaa !8
  %414 = call double @llvm.fmuladd.f64(double %413, double -4.000000e+00, double %410)
  %415 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %405, i64 0
  %416 = load double, double* %415, align 8, !tbaa !8
  %417 = call double @llvm.fmuladd.f64(double %416, double 6.000000e+00, double %414)
  %418 = add nuw nsw i64 %405, 1
  %419 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %418, i64 0
  %420 = load double, double* %419, align 8, !tbaa !8
  %421 = call double @llvm.fmuladd.f64(double %420, double -4.000000e+00, double %417)
  %422 = add nuw nsw i64 %405, 2
  %423 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %422, i64 0
  %424 = load double, double* %423, align 8, !tbaa !8
  %425 = fadd double %421, %424
  %426 = call double @llvm.fmuladd.f64(double %425, double -2.500000e-01, double %407)
  store double %426, double* %406, align 8, !tbaa !8
  %427 = icmp eq i64 %418, %403
  br i1 %427, label %428, label %404

; <label>:428:                                    ; preds = %404
  br i1 %400, label %537, label %430

; <label>:429:                                    ; preds = %537, %9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #5
  ret void

; <label>:430:                                    ; preds = %428
  %431 = zext i32 %401 to i64
  br label %432

; <label>:432:                                    ; preds = %432, %430
  %433 = phi i64 [ %446, %432 ], [ 3, %430 ]
  %434 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %433, i64 1
  %435 = load double, double* %434, align 8, !tbaa !8
  %436 = add nsw i64 %433, -2
  %437 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %436, i64 1
  %438 = load double, double* %437, align 8, !tbaa !8
  %439 = add nsw i64 %433, -1
  %440 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %439, i64 1
  %441 = load double, double* %440, align 8, !tbaa !8
  %442 = call double @llvm.fmuladd.f64(double %441, double -4.000000e+00, double %438)
  %443 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %433, i64 1
  %444 = load double, double* %443, align 8, !tbaa !8
  %445 = call double @llvm.fmuladd.f64(double %444, double 6.000000e+00, double %442)
  %446 = add nuw nsw i64 %433, 1
  %447 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %446, i64 1
  %448 = load double, double* %447, align 8, !tbaa !8
  %449 = call double @llvm.fmuladd.f64(double %448, double -4.000000e+00, double %445)
  %450 = add nuw nsw i64 %433, 2
  %451 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %450, i64 1
  %452 = load double, double* %451, align 8, !tbaa !8
  %453 = fadd double %449, %452
  %454 = call double @llvm.fmuladd.f64(double %453, double -2.500000e-01, double %435)
  store double %454, double* %434, align 8, !tbaa !8
  %455 = icmp eq i64 %446, %431
  br i1 %455, label %456, label %432

; <label>:456:                                    ; preds = %432
  br i1 %400, label %537, label %457

; <label>:457:                                    ; preds = %456
  %458 = zext i32 %401 to i64
  br label %459

; <label>:459:                                    ; preds = %459, %457
  %460 = phi i64 [ %473, %459 ], [ 3, %457 ]
  %461 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %460, i64 2
  %462 = load double, double* %461, align 8, !tbaa !8
  %463 = add nsw i64 %460, -2
  %464 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %463, i64 2
  %465 = load double, double* %464, align 8, !tbaa !8
  %466 = add nsw i64 %460, -1
  %467 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %466, i64 2
  %468 = load double, double* %467, align 8, !tbaa !8
  %469 = call double @llvm.fmuladd.f64(double %468, double -4.000000e+00, double %465)
  %470 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %460, i64 2
  %471 = load double, double* %470, align 8, !tbaa !8
  %472 = call double @llvm.fmuladd.f64(double %471, double 6.000000e+00, double %469)
  %473 = add nuw nsw i64 %460, 1
  %474 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %473, i64 2
  %475 = load double, double* %474, align 8, !tbaa !8
  %476 = call double @llvm.fmuladd.f64(double %475, double -4.000000e+00, double %472)
  %477 = add nuw nsw i64 %460, 2
  %478 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %477, i64 2
  %479 = load double, double* %478, align 8, !tbaa !8
  %480 = fadd double %476, %479
  %481 = call double @llvm.fmuladd.f64(double %480, double -2.500000e-01, double %462)
  store double %481, double* %461, align 8, !tbaa !8
  %482 = icmp eq i64 %473, %458
  br i1 %482, label %483, label %459

; <label>:483:                                    ; preds = %459
  br i1 %400, label %537, label %484

; <label>:484:                                    ; preds = %483
  %485 = zext i32 %401 to i64
  br label %486

; <label>:486:                                    ; preds = %486, %484
  %487 = phi i64 [ %500, %486 ], [ 3, %484 ]
  %488 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %487, i64 3
  %489 = load double, double* %488, align 8, !tbaa !8
  %490 = add nsw i64 %487, -2
  %491 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %490, i64 3
  %492 = load double, double* %491, align 8, !tbaa !8
  %493 = add nsw i64 %487, -1
  %494 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %493, i64 3
  %495 = load double, double* %494, align 8, !tbaa !8
  %496 = call double @llvm.fmuladd.f64(double %495, double -4.000000e+00, double %492)
  %497 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %487, i64 3
  %498 = load double, double* %497, align 8, !tbaa !8
  %499 = call double @llvm.fmuladd.f64(double %498, double 6.000000e+00, double %496)
  %500 = add nuw nsw i64 %487, 1
  %501 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %500, i64 3
  %502 = load double, double* %501, align 8, !tbaa !8
  %503 = call double @llvm.fmuladd.f64(double %502, double -4.000000e+00, double %499)
  %504 = add nuw nsw i64 %487, 2
  %505 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %504, i64 3
  %506 = load double, double* %505, align 8, !tbaa !8
  %507 = fadd double %503, %506
  %508 = call double @llvm.fmuladd.f64(double %507, double -2.500000e-01, double %489)
  store double %508, double* %488, align 8, !tbaa !8
  %509 = icmp eq i64 %500, %485
  br i1 %509, label %510, label %486

; <label>:510:                                    ; preds = %486
  br i1 %400, label %537, label %511

; <label>:511:                                    ; preds = %510
  %512 = zext i32 %401 to i64
  br label %513

; <label>:513:                                    ; preds = %513, %511
  %514 = phi i64 [ %527, %513 ], [ 3, %511 ]
  %515 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %514, i64 4
  %516 = load double, double* %515, align 8, !tbaa !8
  %517 = add nsw i64 %514, -2
  %518 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %517, i64 4
  %519 = load double, double* %518, align 8, !tbaa !8
  %520 = add nsw i64 %514, -1
  %521 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %520, i64 4
  %522 = load double, double* %521, align 8, !tbaa !8
  %523 = call double @llvm.fmuladd.f64(double %522, double -4.000000e+00, double %519)
  %524 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %514, i64 4
  %525 = load double, double* %524, align 8, !tbaa !8
  %526 = call double @llvm.fmuladd.f64(double %525, double 6.000000e+00, double %523)
  %527 = add nuw nsw i64 %514, 1
  %528 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %527, i64 4
  %529 = load double, double* %528, align 8, !tbaa !8
  %530 = call double @llvm.fmuladd.f64(double %529, double -4.000000e+00, double %526)
  %531 = add nuw nsw i64 %514, 2
  %532 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %531, i64 4
  %533 = load double, double* %532, align 8, !tbaa !8
  %534 = fadd double %530, %533
  %535 = call double @llvm.fmuladd.f64(double %534, double -2.500000e-01, double %516)
  store double %535, double* %515, align 8, !tbaa !8
  %536 = icmp eq i64 %527, %512
  br i1 %536, label %537, label %513

; <label>:537:                                    ; preds = %513, %271, %428, %456, %483, %510
  %538 = sext i32 %401 to i64
  %539 = add nsw i32 %6, -5
  %540 = sext i32 %539 to i64
  %541 = add nsw i32 %6, -4
  %542 = sext i32 %541 to i64
  %543 = sext i32 %272 to i64
  %544 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %538, i64 0
  %545 = load double, double* %544, align 8, !tbaa !8
  %546 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %540, i64 0
  %547 = load double, double* %546, align 8, !tbaa !8
  %548 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 0
  %549 = load double, double* %548, align 8, !tbaa !8
  %550 = call double @llvm.fmuladd.f64(double %549, double -4.000000e+00, double %547)
  %551 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %538, i64 0
  %552 = load double, double* %551, align 8, !tbaa !8
  %553 = call double @llvm.fmuladd.f64(double %552, double 6.000000e+00, double %550)
  %554 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %543, i64 0
  %555 = load double, double* %554, align 8, !tbaa !8
  %556 = call double @llvm.fmuladd.f64(double %555, double -4.000000e+00, double %553)
  %557 = call double @llvm.fmuladd.f64(double %556, double -2.500000e-01, double %545)
  store double %557, double* %544, align 8, !tbaa !8
  %558 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %543, i64 0
  %559 = load double, double* %558, align 8, !tbaa !8
  %560 = load double, double* %548, align 8, !tbaa !8
  %561 = load double, double* %551, align 8, !tbaa !8
  %562 = call double @llvm.fmuladd.f64(double %561, double -4.000000e+00, double %560)
  %563 = load double, double* %554, align 8, !tbaa !8
  %564 = call double @llvm.fmuladd.f64(double %563, double 5.000000e+00, double %562)
  %565 = call double @llvm.fmuladd.f64(double %564, double -2.500000e-01, double %559)
  store double %565, double* %558, align 8, !tbaa !8
  %566 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %538, i64 1
  %567 = load double, double* %566, align 8, !tbaa !8
  %568 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %540, i64 1
  %569 = load double, double* %568, align 8, !tbaa !8
  %570 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 1
  %571 = load double, double* %570, align 8, !tbaa !8
  %572 = call double @llvm.fmuladd.f64(double %571, double -4.000000e+00, double %569)
  %573 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %538, i64 1
  %574 = load double, double* %573, align 8, !tbaa !8
  %575 = call double @llvm.fmuladd.f64(double %574, double 6.000000e+00, double %572)
  %576 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %543, i64 1
  %577 = load double, double* %576, align 8, !tbaa !8
  %578 = call double @llvm.fmuladd.f64(double %577, double -4.000000e+00, double %575)
  %579 = call double @llvm.fmuladd.f64(double %578, double -2.500000e-01, double %567)
  store double %579, double* %566, align 8, !tbaa !8
  %580 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %543, i64 1
  %581 = load double, double* %580, align 8, !tbaa !8
  %582 = load double, double* %570, align 8, !tbaa !8
  %583 = load double, double* %573, align 8, !tbaa !8
  %584 = call double @llvm.fmuladd.f64(double %583, double -4.000000e+00, double %582)
  %585 = load double, double* %576, align 8, !tbaa !8
  %586 = call double @llvm.fmuladd.f64(double %585, double 5.000000e+00, double %584)
  %587 = call double @llvm.fmuladd.f64(double %586, double -2.500000e-01, double %581)
  store double %587, double* %580, align 8, !tbaa !8
  %588 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %538, i64 2
  %589 = load double, double* %588, align 8, !tbaa !8
  %590 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %540, i64 2
  %591 = load double, double* %590, align 8, !tbaa !8
  %592 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 2
  %593 = load double, double* %592, align 8, !tbaa !8
  %594 = call double @llvm.fmuladd.f64(double %593, double -4.000000e+00, double %591)
  %595 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %538, i64 2
  %596 = load double, double* %595, align 8, !tbaa !8
  %597 = call double @llvm.fmuladd.f64(double %596, double 6.000000e+00, double %594)
  %598 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %543, i64 2
  %599 = load double, double* %598, align 8, !tbaa !8
  %600 = call double @llvm.fmuladd.f64(double %599, double -4.000000e+00, double %597)
  %601 = call double @llvm.fmuladd.f64(double %600, double -2.500000e-01, double %589)
  store double %601, double* %588, align 8, !tbaa !8
  %602 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %543, i64 2
  %603 = load double, double* %602, align 8, !tbaa !8
  %604 = load double, double* %592, align 8, !tbaa !8
  %605 = load double, double* %595, align 8, !tbaa !8
  %606 = call double @llvm.fmuladd.f64(double %605, double -4.000000e+00, double %604)
  %607 = load double, double* %598, align 8, !tbaa !8
  %608 = call double @llvm.fmuladd.f64(double %607, double 5.000000e+00, double %606)
  %609 = call double @llvm.fmuladd.f64(double %608, double -2.500000e-01, double %603)
  store double %609, double* %602, align 8, !tbaa !8
  %610 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %538, i64 3
  %611 = load double, double* %610, align 8, !tbaa !8
  %612 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %540, i64 3
  %613 = load double, double* %612, align 8, !tbaa !8
  %614 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 3
  %615 = load double, double* %614, align 8, !tbaa !8
  %616 = call double @llvm.fmuladd.f64(double %615, double -4.000000e+00, double %613)
  %617 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %538, i64 3
  %618 = load double, double* %617, align 8, !tbaa !8
  %619 = call double @llvm.fmuladd.f64(double %618, double 6.000000e+00, double %616)
  %620 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %543, i64 3
  %621 = load double, double* %620, align 8, !tbaa !8
  %622 = call double @llvm.fmuladd.f64(double %621, double -4.000000e+00, double %619)
  %623 = call double @llvm.fmuladd.f64(double %622, double -2.500000e-01, double %611)
  store double %623, double* %610, align 8, !tbaa !8
  %624 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %543, i64 3
  %625 = load double, double* %624, align 8, !tbaa !8
  %626 = load double, double* %614, align 8, !tbaa !8
  %627 = load double, double* %617, align 8, !tbaa !8
  %628 = call double @llvm.fmuladd.f64(double %627, double -4.000000e+00, double %626)
  %629 = load double, double* %620, align 8, !tbaa !8
  %630 = call double @llvm.fmuladd.f64(double %629, double 5.000000e+00, double %628)
  %631 = call double @llvm.fmuladd.f64(double %630, double -2.500000e-01, double %625)
  store double %631, double* %624, align 8, !tbaa !8
  %632 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %538, i64 4
  %633 = load double, double* %632, align 8, !tbaa !8
  %634 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %540, i64 4
  %635 = load double, double* %634, align 8, !tbaa !8
  %636 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %542, i64 4
  %637 = load double, double* %636, align 8, !tbaa !8
  %638 = call double @llvm.fmuladd.f64(double %637, double -4.000000e+00, double %635)
  %639 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %538, i64 4
  %640 = load double, double* %639, align 8, !tbaa !8
  %641 = call double @llvm.fmuladd.f64(double %640, double 6.000000e+00, double %638)
  %642 = getelementptr inbounds [5 x double], [5 x double]* %33, i64 %543, i64 4
  %643 = load double, double* %642, align 8, !tbaa !8
  %644 = call double @llvm.fmuladd.f64(double %643, double -4.000000e+00, double %641)
  %645 = call double @llvm.fmuladd.f64(double %644, double -2.500000e-01, double %633)
  store double %645, double* %632, align 8, !tbaa !8
  %646 = getelementptr inbounds [37 x [37 x [5 x double]]], [37 x [37 x [5 x double]]]* %30, i64 %274, i64 %273, i64 %543, i64 4
  %647 = load double, double* %646, align 8, !tbaa !8
  %648 = load double, double* %636, align 8, !tbaa !8
  %649 = load double, double* %639, align 8, !tbaa !8
  %650 = call double @llvm.fmuladd.f64(double %649, double -4.000000e+00, double %648)
  %651 = load double, double* %642, align 8, !tbaa !8
  %652 = call double @llvm.fmuladd.f64(double %651, double 5.000000e+00, double %650)
  %653 = call double @llvm.fmuladd.f64(double %652, double -2.500000e-01, double %647)
  store double %653, double* %646, align 8, !tbaa !8
  br label %429
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
