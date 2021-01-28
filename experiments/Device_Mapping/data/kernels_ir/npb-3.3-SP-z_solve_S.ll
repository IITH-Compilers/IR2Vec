; ModuleID = 'npb-SP-z_solve.cl'
source_filename = "npb-SP-z_solve.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @z_solve(double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double*, double* nocapture, double* nocapture, double*, double*, double*, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %14 = alloca [5 x double], align 16
  %15 = alloca [5 x double], align 16
  %16 = bitcast [5 x double]* %15 to i8*
  %17 = bitcast [5 x double]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #4
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #4
  %18 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %19 = add i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp sgt i32 %20, %10
  %25 = icmp sgt i32 %23, %9
  %26 = or i1 %24, %25
  br i1 %26, label %792, label %27

; <label>:27:                                     ; preds = %13
  %28 = bitcast double* %0 to [13 x [13 x double]]*
  %29 = bitcast double* %2 to [13 x [13 x double]]*
  %30 = add nsw i32 %20, -1
  %31 = mul nsw i32 %30, %9
  %32 = add nsw i32 %23, -1
  %33 = add nsw i32 %32, %31
  %34 = mul nsw i32 %33, 12
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %4, i64 %35
  %37 = mul i32 %33, 65
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %6, i64 %38
  %40 = bitcast double* %39 to [5 x double]*
  %41 = getelementptr inbounds double, double* %7, i64 %38
  %42 = bitcast double* %41 to [5 x double]*
  %43 = getelementptr inbounds double, double* %8, i64 %38
  %44 = bitcast double* %43 to [5 x double]*
  %45 = add nsw i32 %11, 1
  %46 = sext i32 %45 to i64
  store double 0.000000e+00, double* %39, align 8, !tbaa !8
  store double 0.000000e+00, double* %41, align 8, !tbaa !8
  store double 0.000000e+00, double* %43, align 8, !tbaa !8
  %47 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %46, i64 0
  store double 0.000000e+00, double* %47, align 8, !tbaa !8
  %48 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %46, i64 0
  store double 0.000000e+00, double* %48, align 8, !tbaa !8
  %49 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %46, i64 0
  store double 0.000000e+00, double* %49, align 8, !tbaa !8
  %50 = getelementptr inbounds double, double* %39, i64 1
  store double 0.000000e+00, double* %50, align 8, !tbaa !8
  %51 = getelementptr inbounds double, double* %41, i64 1
  store double 0.000000e+00, double* %51, align 8, !tbaa !8
  %52 = getelementptr inbounds double, double* %43, i64 1
  store double 0.000000e+00, double* %52, align 8, !tbaa !8
  %53 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %46, i64 1
  store double 0.000000e+00, double* %53, align 8, !tbaa !8
  %54 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %46, i64 1
  store double 0.000000e+00, double* %54, align 8, !tbaa !8
  %55 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %46, i64 1
  store double 0.000000e+00, double* %55, align 8, !tbaa !8
  %56 = getelementptr inbounds double, double* %39, i64 2
  %57 = getelementptr inbounds double, double* %41, i64 2
  %58 = getelementptr inbounds double, double* %43, i64 2
  %59 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %46, i64 2
  %60 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %46, i64 2
  %61 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %46, i64 2
  %62 = getelementptr inbounds double, double* %39, i64 3
  store double 0.000000e+00, double* %62, align 8, !tbaa !8
  %63 = getelementptr inbounds double, double* %41, i64 3
  store double 0.000000e+00, double* %63, align 8, !tbaa !8
  %64 = getelementptr inbounds double, double* %43, i64 3
  store double 0.000000e+00, double* %64, align 8, !tbaa !8
  %65 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %46, i64 3
  store double 0.000000e+00, double* %65, align 8, !tbaa !8
  %66 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %46, i64 3
  store double 0.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %46, i64 3
  store double 0.000000e+00, double* %67, align 8, !tbaa !8
  %68 = getelementptr inbounds double, double* %39, i64 4
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds double, double* %41, i64 4
  store double 0.000000e+00, double* %69, align 8, !tbaa !8
  %70 = getelementptr inbounds double, double* %43, i64 4
  store double 0.000000e+00, double* %70, align 8, !tbaa !8
  %71 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %46, i64 4
  store double 0.000000e+00, double* %71, align 8, !tbaa !8
  %72 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %46, i64 4
  store double 0.000000e+00, double* %72, align 8, !tbaa !8
  %73 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %46, i64 4
  store double 0.000000e+00, double* %73, align 8, !tbaa !8
  %74 = bitcast double* %1 to [13 x [13 x double]]*
  %75 = bitcast double* %3 to [13 x [13 x [5 x double]]]*
  %76 = getelementptr inbounds double, double* %5, i64 %35
  store double 1.000000e+00, double* %56, align 8, !tbaa !8
  store double 1.000000e+00, double* %57, align 8, !tbaa !8
  store double 1.000000e+00, double* %58, align 8, !tbaa !8
  store double 1.000000e+00, double* %59, align 8, !tbaa !8
  store double 1.000000e+00, double* %60, align 8, !tbaa !8
  store double 1.000000e+00, double* %61, align 8, !tbaa !8
  %77 = shl i64 %19, 32
  %78 = ashr exact i64 %77, 32
  %79 = shl i64 %22, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %74, i64 0, i64 %78, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !8
  %83 = fmul double %82, 1.000000e-01
  %84 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %28, i64 0, i64 %78, i64 %80
  %85 = load double, double* %84, align 8, !tbaa !8
  store double %85, double* %36, align 8, !tbaa !8
  %86 = tail call double @llvm.fmuladd.f64(double %83, double 0x3FF5555555555555, double 1.000000e+00)
  %87 = tail call double @llvm.fmuladd.f64(double %83, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %88 = fcmp ogt double %86, %87
  %89 = select i1 %88, double %86, double %87
  %90 = fadd double %83, 1.000000e+00
  %91 = fcmp ogt double %90, 1.000000e+00
  %92 = select i1 %91, double %90, double 1.000000e+00
  %93 = fcmp ogt double %89, %92
  %94 = select i1 %93, double %89, double %92
  store double %94, double* %76, align 8, !tbaa !8
  %95 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %29, i64 0, i64 %78, i64 %80
  %96 = load double, double* %95, align 8, !tbaa !8
  %97 = getelementptr inbounds double, double* %1, i64 169
  %98 = bitcast double* %97 to [13 x [13 x double]]*
  %99 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %98, i64 0, i64 %78, i64 %80
  %100 = load double, double* %99, align 8, !tbaa !8
  %101 = fmul double %100, 1.000000e-01
  %102 = getelementptr inbounds double, double* %0, i64 169
  %103 = bitcast double* %102 to [13 x [13 x double]]*
  %104 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %103, i64 0, i64 %78, i64 %80
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds double, double* %36, i64 1
  store double %105, double* %106, align 8, !tbaa !8
  %107 = tail call double @llvm.fmuladd.f64(double %101, double 0x3FF5555555555555, double 1.000000e+00)
  %108 = tail call double @llvm.fmuladd.f64(double %101, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %109 = fcmp ogt double %107, %108
  %110 = select i1 %109, double %107, double %108
  %111 = fadd double %101, 1.000000e+00
  %112 = fcmp ogt double %111, 1.000000e+00
  %113 = select i1 %112, double %111, double 1.000000e+00
  %114 = fcmp ogt double %110, %113
  %115 = select i1 %114, double %110, double %113
  %116 = getelementptr inbounds double, double* %76, i64 1
  store double %115, double* %116, align 8, !tbaa !8
  %117 = getelementptr inbounds double, double* %2, i64 169
  %118 = bitcast double* %117 to [13 x [13 x double]]*
  %119 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %118, i64 0, i64 %78, i64 %80
  %120 = load double, double* %119, align 8, !tbaa !8
  %121 = getelementptr inbounds double, double* %1, i64 338
  %122 = bitcast double* %121 to [13 x [13 x double]]*
  %123 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %122, i64 0, i64 %78, i64 %80
  %124 = load double, double* %123, align 8, !tbaa !8
  %125 = fmul double %124, 1.000000e-01
  %126 = getelementptr inbounds double, double* %0, i64 338
  %127 = bitcast double* %126 to [13 x [13 x double]]*
  %128 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %127, i64 0, i64 %78, i64 %80
  %129 = load double, double* %128, align 8, !tbaa !8
  %130 = getelementptr inbounds double, double* %36, i64 2
  store double %129, double* %130, align 8, !tbaa !8
  %131 = tail call double @llvm.fmuladd.f64(double %125, double 0x3FF5555555555555, double 1.000000e+00)
  %132 = tail call double @llvm.fmuladd.f64(double %125, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %133 = fcmp ogt double %131, %132
  %134 = select i1 %133, double %131, double %132
  %135 = fadd double %125, 1.000000e+00
  %136 = fcmp ogt double %135, 1.000000e+00
  %137 = select i1 %136, double %135, double 1.000000e+00
  %138 = fcmp ogt double %134, %137
  %139 = select i1 %138, double %134, double %137
  %140 = getelementptr inbounds double, double* %76, i64 2
  store double %139, double* %140, align 8, !tbaa !8
  %141 = getelementptr inbounds double, double* %2, i64 338
  %142 = bitcast double* %141 to [13 x [13 x double]]*
  %143 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %142, i64 0, i64 %78, i64 %80
  %144 = load double, double* %143, align 8, !tbaa !8
  %145 = getelementptr inbounds double, double* %39, i64 5
  store double 0.000000e+00, double* %145, align 8, !tbaa !8
  %146 = fmul double %94, 1.815000e+00
  %147 = fsub double -0.000000e+00, %146
  %148 = tail call double @llvm.fmuladd.f64(double %85, double 0xBFB51EB851EB851E, double %147)
  %149 = getelementptr inbounds double, double* %145, i64 1
  store double %148, double* %149, align 8, !tbaa !8
  %150 = tail call double @llvm.fmuladd.f64(double %115, double 3.630000e+00, double 1.000000e+00)
  %151 = fadd double %150, 1.875000e-02
  %152 = getelementptr inbounds double, double* %145, i64 2
  store double %151, double* %152, align 8, !tbaa !8
  %153 = fmul double %139, 1.815000e+00
  %154 = fsub double -0.000000e+00, %153
  %155 = tail call double @llvm.fmuladd.f64(double %129, double 0x3FB51EB851EB851E, double %154)
  %156 = fadd double %155, -1.500000e-02
  %157 = getelementptr inbounds double, double* %145, i64 3
  store double %156, double* %157, align 8, !tbaa !8
  %158 = getelementptr inbounds double, double* %145, i64 4
  store double 3.750000e-03, double* %158, align 8, !tbaa !8
  %159 = getelementptr inbounds double, double* %41, i64 5
  store double 0.000000e+00, double* %159, align 8, !tbaa !8
  %160 = tail call double @llvm.fmuladd.f64(double %96, double 0xBFB51EB851EB851E, double %148)
  %161 = getelementptr inbounds double, double* %159, i64 1
  store double %160, double* %161, align 8, !tbaa !8
  %162 = getelementptr inbounds double, double* %159, i64 2
  store double %151, double* %162, align 8, !tbaa !8
  %163 = tail call double @llvm.fmuladd.f64(double %144, double 0x3FB51EB851EB851E, double %156)
  %164 = getelementptr inbounds double, double* %159, i64 3
  store double %163, double* %164, align 8, !tbaa !8
  %165 = getelementptr inbounds double, double* %159, i64 4
  store double 3.750000e-03, double* %165, align 8, !tbaa !8
  %166 = getelementptr inbounds double, double* %43, i64 5
  store double 0.000000e+00, double* %166, align 8, !tbaa !8
  %167 = tail call double @llvm.fmuladd.f64(double %96, double 0x3FB51EB851EB851E, double %148)
  %168 = getelementptr inbounds double, double* %166, i64 1
  store double %167, double* %168, align 8, !tbaa !8
  %169 = getelementptr inbounds double, double* %166, i64 2
  store double %151, double* %169, align 8, !tbaa !8
  %170 = tail call double @llvm.fmuladd.f64(double %144, double 0xBFB51EB851EB851E, double %156)
  %171 = getelementptr inbounds double, double* %166, i64 3
  store double %170, double* %171, align 8, !tbaa !8
  %172 = getelementptr inbounds double, double* %166, i64 4
  store double 3.750000e-03, double* %172, align 8, !tbaa !8
  %173 = getelementptr inbounds double, double* %1, i64 507
  %174 = bitcast double* %173 to [13 x [13 x double]]*
  %175 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %174, i64 0, i64 %78, i64 %80
  %176 = load double, double* %175, align 8, !tbaa !8
  %177 = fmul double %176, 1.000000e-01
  %178 = getelementptr inbounds double, double* %0, i64 507
  %179 = bitcast double* %178 to [13 x [13 x double]]*
  %180 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %179, i64 0, i64 %78, i64 %80
  %181 = load double, double* %180, align 8, !tbaa !8
  %182 = getelementptr inbounds double, double* %36, i64 3
  store double %181, double* %182, align 8, !tbaa !8
  %183 = tail call double @llvm.fmuladd.f64(double %177, double 0x3FF5555555555555, double 1.000000e+00)
  %184 = tail call double @llvm.fmuladd.f64(double %177, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %185 = fcmp ogt double %183, %184
  %186 = select i1 %185, double %183, double %184
  %187 = fadd double %177, 1.000000e+00
  %188 = fcmp ogt double %187, 1.000000e+00
  %189 = select i1 %188, double %187, double 1.000000e+00
  %190 = fcmp ogt double %186, %189
  %191 = select i1 %190, double %186, double %189
  %192 = getelementptr inbounds double, double* %76, i64 3
  store double %191, double* %192, align 8, !tbaa !8
  %193 = getelementptr inbounds double, double* %2, i64 507
  %194 = bitcast double* %193 to [13 x [13 x double]]*
  %195 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %194, i64 0, i64 %78, i64 %80
  %196 = load double, double* %195, align 8, !tbaa !8
  %197 = getelementptr inbounds double, double* %39, i64 10
  store double 0.000000e+00, double* %197, align 8, !tbaa !8
  %198 = fmul double %115, 1.815000e+00
  %199 = fsub double -0.000000e+00, %198
  %200 = tail call double @llvm.fmuladd.f64(double %105, double 0xBFB51EB851EB851E, double %199)
  %201 = fadd double %200, -1.500000e-02
  %202 = getelementptr inbounds double, double* %197, i64 1
  store double %201, double* %202, align 8, !tbaa !8
  %203 = tail call double @llvm.fmuladd.f64(double %139, double 3.630000e+00, double 1.000000e+00)
  %204 = fadd double %203, 2.250000e-02
  %205 = getelementptr inbounds double, double* %197, i64 2
  store double %204, double* %205, align 8, !tbaa !8
  %206 = fmul double %191, 1.815000e+00
  %207 = fsub double -0.000000e+00, %206
  %208 = tail call double @llvm.fmuladd.f64(double %181, double 0x3FB51EB851EB851E, double %207)
  %209 = fadd double %208, -1.500000e-02
  %210 = getelementptr inbounds double, double* %197, i64 3
  store double %209, double* %210, align 8, !tbaa !8
  %211 = getelementptr inbounds double, double* %197, i64 4
  store double 3.750000e-03, double* %211, align 8, !tbaa !8
  %212 = getelementptr inbounds double, double* %41, i64 10
  store double 0.000000e+00, double* %212, align 8, !tbaa !8
  %213 = tail call double @llvm.fmuladd.f64(double %120, double 0xBFB51EB851EB851E, double %201)
  %214 = getelementptr inbounds double, double* %212, i64 1
  store double %213, double* %214, align 8, !tbaa !8
  %215 = getelementptr inbounds double, double* %212, i64 2
  store double %204, double* %215, align 8, !tbaa !8
  %216 = tail call double @llvm.fmuladd.f64(double %196, double 0x3FB51EB851EB851E, double %209)
  %217 = getelementptr inbounds double, double* %212, i64 3
  store double %216, double* %217, align 8, !tbaa !8
  %218 = getelementptr inbounds double, double* %212, i64 4
  store double 3.750000e-03, double* %218, align 8, !tbaa !8
  %219 = getelementptr inbounds double, double* %43, i64 10
  store double 0.000000e+00, double* %219, align 8, !tbaa !8
  %220 = tail call double @llvm.fmuladd.f64(double %120, double 0x3FB51EB851EB851E, double %201)
  %221 = getelementptr inbounds double, double* %219, i64 1
  store double %220, double* %221, align 8, !tbaa !8
  %222 = getelementptr inbounds double, double* %219, i64 2
  store double %204, double* %222, align 8, !tbaa !8
  %223 = tail call double @llvm.fmuladd.f64(double %196, double 0xBFB51EB851EB851E, double %209)
  %224 = getelementptr inbounds double, double* %219, i64 3
  store double %223, double* %224, align 8, !tbaa !8
  %225 = getelementptr inbounds double, double* %219, i64 4
  store double 3.750000e-03, double* %225, align 8, !tbaa !8
  %226 = icmp slt i32 %11, 5
  %227 = add i32 %11, -1
  br i1 %226, label %287, label %228

; <label>:228:                                    ; preds = %27
  %229 = zext i32 %227 to i64
  br label %230

; <label>:230:                                    ; preds = %230, %228
  %231 = phi i64 [ %238, %230 ], [ 3, %228 ]
  %232 = phi double [ %256, %230 ], [ %196, %228 ]
  %233 = phi double [ %232, %230 ], [ %144, %228 ]
  %234 = phi double [ %253, %230 ], [ %191, %228 ]
  %235 = phi double [ %234, %230 ], [ %139, %228 ]
  %236 = phi double [ %243, %230 ], [ %181, %228 ]
  %237 = phi double [ %236, %230 ], [ %129, %228 ]
  %238 = add nuw nsw i64 %231, 1
  %239 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %74, i64 %238, i64 %78, i64 %80
  %240 = load double, double* %239, align 8, !tbaa !8
  %241 = fmul double %240, 1.000000e-01
  %242 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %28, i64 %238, i64 %78, i64 %80
  %243 = load double, double* %242, align 8, !tbaa !8
  %244 = getelementptr inbounds double, double* %36, i64 %238
  store double %243, double* %244, align 8, !tbaa !8
  %245 = tail call double @llvm.fmuladd.f64(double %241, double 0x3FF5555555555555, double 1.000000e+00)
  %246 = tail call double @llvm.fmuladd.f64(double %241, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %247 = fcmp ogt double %245, %246
  %248 = select i1 %247, double %245, double %246
  %249 = fadd double %241, 1.000000e+00
  %250 = fcmp ogt double %249, 1.000000e+00
  %251 = select i1 %250, double %249, double 1.000000e+00
  %252 = fcmp ogt double %248, %251
  %253 = select i1 %252, double %248, double %251
  %254 = getelementptr inbounds double, double* %76, i64 %238
  store double %253, double* %254, align 8, !tbaa !8
  %255 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %29, i64 %238, i64 %78, i64 %80
  %256 = load double, double* %255, align 8, !tbaa !8
  %257 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %231, i64 0
  store double 3.750000e-03, double* %257, align 8, !tbaa !8
  %258 = fmul double %235, 1.815000e+00
  %259 = fsub double -0.000000e+00, %258
  %260 = tail call double @llvm.fmuladd.f64(double %237, double 0xBFB51EB851EB851E, double %259)
  %261 = fadd double %260, -1.500000e-02
  %262 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %231, i64 1
  store double %261, double* %262, align 8, !tbaa !8
  %263 = tail call double @llvm.fmuladd.f64(double %234, double 3.630000e+00, double 1.000000e+00)
  %264 = fadd double %263, 2.250000e-02
  %265 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %231, i64 2
  store double %264, double* %265, align 8, !tbaa !8
  %266 = fmul double %253, 1.815000e+00
  %267 = fsub double -0.000000e+00, %266
  %268 = tail call double @llvm.fmuladd.f64(double %243, double 0x3FB51EB851EB851E, double %267)
  %269 = fadd double %268, -1.500000e-02
  %270 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %231, i64 3
  store double %269, double* %270, align 8, !tbaa !8
  %271 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %231, i64 4
  store double 3.750000e-03, double* %271, align 8, !tbaa !8
  %272 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %231, i64 0
  store double 3.750000e-03, double* %272, align 8, !tbaa !8
  %273 = tail call double @llvm.fmuladd.f64(double %233, double 0xBFB51EB851EB851E, double %261)
  %274 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %231, i64 1
  store double %273, double* %274, align 8, !tbaa !8
  %275 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %231, i64 2
  store double %264, double* %275, align 8, !tbaa !8
  %276 = tail call double @llvm.fmuladd.f64(double %256, double 0x3FB51EB851EB851E, double %269)
  %277 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %231, i64 3
  store double %276, double* %277, align 8, !tbaa !8
  %278 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %231, i64 4
  store double 3.750000e-03, double* %278, align 8, !tbaa !8
  %279 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %231, i64 0
  store double 3.750000e-03, double* %279, align 8, !tbaa !8
  %280 = tail call double @llvm.fmuladd.f64(double %233, double 0x3FB51EB851EB851E, double %261)
  %281 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %231, i64 1
  store double %280, double* %281, align 8, !tbaa !8
  %282 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %231, i64 2
  store double %264, double* %282, align 8, !tbaa !8
  %283 = tail call double @llvm.fmuladd.f64(double %256, double 0xBFB51EB851EB851E, double %269)
  %284 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %231, i64 3
  store double %283, double* %284, align 8, !tbaa !8
  %285 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %231, i64 4
  store double 3.750000e-03, double* %285, align 8, !tbaa !8
  %286 = icmp eq i64 %238, %229
  br i1 %286, label %287, label %230

; <label>:287:                                    ; preds = %230, %27
  %288 = phi double [ %129, %27 ], [ %236, %230 ]
  %289 = phi double [ %181, %27 ], [ %243, %230 ]
  %290 = phi double [ %139, %27 ], [ %234, %230 ]
  %291 = phi double [ %191, %27 ], [ %253, %230 ]
  %292 = phi double [ %144, %27 ], [ %232, %230 ]
  %293 = phi double [ %196, %27 ], [ %256, %230 ]
  %294 = sext i32 %11 to i64
  %295 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %74, i64 %294, i64 %78, i64 %80
  %296 = load double, double* %295, align 8, !tbaa !8
  %297 = fmul double %296, 1.000000e-01
  %298 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %28, i64 %294, i64 %78, i64 %80
  %299 = load double, double* %298, align 8, !tbaa !8
  %300 = getelementptr inbounds double, double* %36, i64 %294
  store double %299, double* %300, align 8, !tbaa !8
  %301 = tail call double @llvm.fmuladd.f64(double %297, double 0x3FF5555555555555, double 1.000000e+00)
  %302 = tail call double @llvm.fmuladd.f64(double %297, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %303 = fcmp ogt double %301, %302
  %304 = select i1 %303, double %301, double %302
  %305 = fadd double %297, 1.000000e+00
  %306 = fcmp ogt double %305, 1.000000e+00
  %307 = select i1 %306, double %305, double 1.000000e+00
  %308 = fcmp ogt double %304, %307
  %309 = select i1 %308, double %304, double %307
  %310 = getelementptr inbounds double, double* %76, i64 %294
  store double %309, double* %310, align 8, !tbaa !8
  %311 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %29, i64 %294, i64 %78, i64 %80
  %312 = load double, double* %311, align 8, !tbaa !8
  %313 = sext i32 %227 to i64
  %314 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %313, i64 0
  store double 3.750000e-03, double* %314, align 8, !tbaa !8
  %315 = fmul double %290, 1.815000e+00
  %316 = fsub double -0.000000e+00, %315
  %317 = tail call double @llvm.fmuladd.f64(double %288, double 0xBFB51EB851EB851E, double %316)
  %318 = fadd double %317, -1.500000e-02
  %319 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %313, i64 1
  store double %318, double* %319, align 8, !tbaa !8
  %320 = tail call double @llvm.fmuladd.f64(double %291, double 3.630000e+00, double 1.000000e+00)
  %321 = fadd double %320, 2.250000e-02
  %322 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %313, i64 2
  store double %321, double* %322, align 8, !tbaa !8
  %323 = fmul double %309, 1.815000e+00
  %324 = fsub double -0.000000e+00, %323
  %325 = tail call double @llvm.fmuladd.f64(double %299, double 0x3FB51EB851EB851E, double %324)
  %326 = fadd double %325, -1.500000e-02
  %327 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %313, i64 3
  store double %326, double* %327, align 8, !tbaa !8
  %328 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %313, i64 4
  store double 0.000000e+00, double* %328, align 8, !tbaa !8
  %329 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %313, i64 0
  store double 3.750000e-03, double* %329, align 8, !tbaa !8
  %330 = tail call double @llvm.fmuladd.f64(double %292, double 0xBFB51EB851EB851E, double %318)
  %331 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %313, i64 1
  store double %330, double* %331, align 8, !tbaa !8
  %332 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %313, i64 2
  store double %321, double* %332, align 8, !tbaa !8
  %333 = tail call double @llvm.fmuladd.f64(double %312, double 0x3FB51EB851EB851E, double %326)
  %334 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %313, i64 3
  store double %333, double* %334, align 8, !tbaa !8
  %335 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %313, i64 4
  store double 0.000000e+00, double* %335, align 8, !tbaa !8
  %336 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %313, i64 0
  store double 3.750000e-03, double* %336, align 8, !tbaa !8
  %337 = tail call double @llvm.fmuladd.f64(double %292, double 0x3FB51EB851EB851E, double %318)
  %338 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %313, i64 1
  store double %337, double* %338, align 8, !tbaa !8
  %339 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %313, i64 2
  store double %321, double* %339, align 8, !tbaa !8
  %340 = tail call double @llvm.fmuladd.f64(double %312, double 0xBFB51EB851EB851E, double %326)
  %341 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %313, i64 3
  store double %340, double* %341, align 8, !tbaa !8
  %342 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %313, i64 4
  store double 0.000000e+00, double* %342, align 8, !tbaa !8
  %343 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %74, i64 %46, i64 %78, i64 %80
  %344 = load double, double* %343, align 8, !tbaa !8
  %345 = fmul double %344, 1.000000e-01
  %346 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %28, i64 %46, i64 %78, i64 %80
  %347 = load double, double* %346, align 8, !tbaa !8
  %348 = getelementptr inbounds double, double* %36, i64 %46
  store double %347, double* %348, align 8, !tbaa !8
  %349 = tail call double @llvm.fmuladd.f64(double %345, double 0x3FF5555555555555, double 1.000000e+00)
  %350 = tail call double @llvm.fmuladd.f64(double %345, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %351 = fcmp ogt double %349, %350
  %352 = select i1 %351, double %349, double %350
  %353 = fadd double %345, 1.000000e+00
  %354 = fcmp ogt double %353, 1.000000e+00
  %355 = select i1 %354, double %353, double 1.000000e+00
  %356 = fcmp ogt double %352, %355
  %357 = select i1 %356, double %352, double %355
  %358 = getelementptr inbounds double, double* %76, i64 %46
  store double %357, double* %358, align 8, !tbaa !8
  %359 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %29, i64 %46, i64 %78, i64 %80
  %360 = load double, double* %359, align 8, !tbaa !8
  %361 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %294, i64 0
  store double 3.750000e-03, double* %361, align 8, !tbaa !8
  %362 = fmul double %291, 1.815000e+00
  %363 = fsub double -0.000000e+00, %362
  %364 = tail call double @llvm.fmuladd.f64(double %289, double 0xBFB51EB851EB851E, double %363)
  %365 = fadd double %364, -1.500000e-02
  %366 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %294, i64 1
  store double %365, double* %366, align 8, !tbaa !8
  %367 = tail call double @llvm.fmuladd.f64(double %309, double 3.630000e+00, double 1.000000e+00)
  %368 = fadd double %367, 1.875000e-02
  %369 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %294, i64 2
  store double %368, double* %369, align 8, !tbaa !8
  %370 = fmul double %357, 1.815000e+00
  %371 = fsub double -0.000000e+00, %370
  %372 = tail call double @llvm.fmuladd.f64(double %347, double 0x3FB51EB851EB851E, double %371)
  %373 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %294, i64 3
  store double %372, double* %373, align 8, !tbaa !8
  %374 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %294, i64 4
  store double 0.000000e+00, double* %374, align 8, !tbaa !8
  %375 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %294, i64 0
  store double 3.750000e-03, double* %375, align 8, !tbaa !8
  %376 = tail call double @llvm.fmuladd.f64(double %293, double 0xBFB51EB851EB851E, double %365)
  %377 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %294, i64 1
  store double %376, double* %377, align 8, !tbaa !8
  %378 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %294, i64 2
  store double %368, double* %378, align 8, !tbaa !8
  %379 = tail call double @llvm.fmuladd.f64(double %360, double 0x3FB51EB851EB851E, double %372)
  %380 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %294, i64 3
  store double %379, double* %380, align 8, !tbaa !8
  %381 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %294, i64 4
  store double 0.000000e+00, double* %381, align 8, !tbaa !8
  %382 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %294, i64 0
  store double 3.750000e-03, double* %382, align 8, !tbaa !8
  %383 = tail call double @llvm.fmuladd.f64(double %293, double 0x3FB51EB851EB851E, double %365)
  %384 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %294, i64 1
  store double %383, double* %384, align 8, !tbaa !8
  %385 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %294, i64 2
  store double %368, double* %385, align 8, !tbaa !8
  %386 = tail call double @llvm.fmuladd.f64(double %360, double 0xBFB51EB851EB851E, double %372)
  %387 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %294, i64 3
  store double %386, double* %387, align 8, !tbaa !8
  %388 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %294, i64 4
  store double 0.000000e+00, double* %388, align 8, !tbaa !8
  %389 = load double, double* %56, align 8, !tbaa !8
  %390 = load double, double* %62, align 8, !tbaa !8
  %391 = load double, double* %149, align 8, !tbaa !8
  %392 = load double, double* %152, align 8, !tbaa !8
  %393 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 0, i64 %78, i64 %80
  %394 = bitcast [5 x double]* %393 to i64*
  %395 = load i64, i64* %394, align 8, !tbaa !8
  %396 = bitcast [5 x double]* %15 to i64*
  store i64 %395, i64* %396, align 16, !tbaa !8
  %397 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 0, i64 %78, i64 %80, i64 1
  %398 = bitcast double* %397 to i64*
  %399 = load i64, i64* %398, align 8, !tbaa !8
  %400 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 1
  %401 = bitcast double* %400 to i64*
  store i64 %399, i64* %401, align 8, !tbaa !8
  %402 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 0, i64 %78, i64 %80, i64 2
  %403 = bitcast double* %402 to i64*
  %404 = load i64, i64* %403, align 8, !tbaa !8
  %405 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 2
  %406 = bitcast double* %405 to i64*
  store i64 %404, i64* %406, align 16, !tbaa !8
  %407 = getelementptr inbounds double, double* %3, i64 845
  %408 = bitcast double* %407 to [13 x [13 x [5 x double]]]*
  %409 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %408, i64 0, i64 %78, i64 %80
  %410 = bitcast [5 x double]* %409 to i64*
  %411 = load i64, i64* %410, align 8, !tbaa !8
  %412 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %408, i64 0, i64 %78, i64 %80, i64 1
  %413 = bitcast double* %412 to i64*
  %414 = load i64, i64* %413, align 8, !tbaa !8
  %415 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %408, i64 0, i64 %78, i64 %80, i64 2
  %416 = bitcast double* %415 to i64*
  %417 = load i64, i64* %416, align 8, !tbaa !8
  %418 = add nsw i32 %12, -3
  %419 = icmp slt i32 %12, 3
  br i1 %419, label %420, label %426

; <label>:420:                                    ; preds = %287
  %421 = add nsw i32 %12, -2
  %422 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 1
  %423 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 2
  %424 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 0
  %425 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  br label %500

; <label>:426:                                    ; preds = %287
  %427 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 1
  %428 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 2
  %429 = add i32 %12, -2
  %430 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 0
  %431 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %432 = zext i32 %429 to i64
  br label %433

; <label>:433:                                    ; preds = %433, %426
  %434 = phi i64 [ %498, %433 ], [ %417, %426 ]
  %435 = phi i64 [ %497, %433 ], [ %414, %426 ]
  %436 = phi i64 [ %496, %433 ], [ %411, %426 ]
  %437 = phi i64 [ %495, %433 ], [ %404, %426 ]
  %438 = phi i64 [ %494, %433 ], [ %399, %426 ]
  %439 = phi i64 [ %493, %433 ], [ %395, %426 ]
  %440 = phi i64 [ %445, %433 ], [ 0, %426 ]
  %441 = phi double [ %490, %433 ], [ %390, %426 ]
  %442 = phi double [ %464, %433 ], [ %389, %426 ]
  %443 = phi double [ %491, %433 ], [ %392, %426 ]
  %444 = phi double [ %486, %433 ], [ %391, %426 ]
  %445 = add nuw nsw i64 %440, 1
  %446 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %440, i64 4
  %447 = load double, double* %446, align 8, !tbaa !8
  %448 = fdiv double 1.000000e+00, %442
  %449 = fmul double %448, %441
  %450 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %440, i64 3
  store double %449, double* %450, align 8, !tbaa !8
  %451 = fmul double %448, %447
  store double %451, double* %446, align 8, !tbaa !8
  %452 = bitcast i64 %439 to double
  %453 = fmul double %448, %452
  %454 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %440, i64 %78, i64 %80, i64 0
  store double %453, double* %454, align 8, !tbaa !8
  %455 = bitcast i64 %438 to double
  %456 = fmul double %448, %455
  %457 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %440, i64 %78, i64 %80, i64 1
  store double %456, double* %457, align 8, !tbaa !8
  %458 = bitcast i64 %437 to double
  %459 = fmul double %448, %458
  %460 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %440, i64 %78, i64 %80, i64 2
  store double %459, double* %460, align 8, !tbaa !8
  %461 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %445, i64 3
  %462 = load double, double* %461, align 8, !tbaa !8
  %463 = fsub double -0.000000e+00, %444
  %464 = tail call double @llvm.fmuladd.f64(double %463, double %449, double %443)
  %465 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %445, i64 2
  store double %464, double* %465, align 8, !tbaa !8
  %466 = bitcast i64 %436 to double
  %467 = tail call double @llvm.fmuladd.f64(double %463, double %453, double %466)
  %468 = bitcast i64 %435 to double
  %469 = tail call double @llvm.fmuladd.f64(double %463, double %456, double %468)
  %470 = bitcast i64 %434 to double
  %471 = tail call double @llvm.fmuladd.f64(double %463, double %459, double %470)
  %472 = add nuw nsw i64 %440, 2
  %473 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %472, i64 0
  %474 = load double, double* %473, align 8, !tbaa !8
  %475 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %472, i64 1
  %476 = load double, double* %475, align 8, !tbaa !8
  %477 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %472, i64 2
  %478 = load double, double* %477, align 8, !tbaa !8
  %479 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %472, i64 %78, i64 %80, i64 0
  %480 = load double, double* %479, align 8, !tbaa !8
  %481 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %472, i64 %78, i64 %80, i64 1
  %482 = load double, double* %481, align 8, !tbaa !8
  %483 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %472, i64 %78, i64 %80, i64 2
  %484 = load double, double* %483, align 8, !tbaa !8
  %485 = fsub double -0.000000e+00, %474
  %486 = tail call double @llvm.fmuladd.f64(double %485, double %449, double %476)
  store double %486, double* %475, align 8, !tbaa !8
  %487 = tail call double @llvm.fmuladd.f64(double %485, double %453, double %480)
  %488 = tail call double @llvm.fmuladd.f64(double %485, double %456, double %482)
  %489 = tail call double @llvm.fmuladd.f64(double %485, double %459, double %484)
  %490 = tail call double @llvm.fmuladd.f64(double %463, double %451, double %462)
  %491 = tail call double @llvm.fmuladd.f64(double %485, double %451, double %478)
  %492 = icmp eq i64 %445, %432
  %493 = bitcast double %467 to i64
  %494 = bitcast double %469 to i64
  %495 = bitcast double %471 to i64
  %496 = bitcast double %487 to i64
  %497 = bitcast double %488 to i64
  %498 = bitcast double %489 to i64
  br i1 %492, label %499, label %433

; <label>:499:                                    ; preds = %433
  store double %453, double* %430, align 16, !tbaa !8
  store double %456, double* %427, align 8, !tbaa !8
  store double %459, double* %428, align 16, !tbaa !8
  store double %467, double* %431, align 16, !tbaa !8
  store double %469, double* %400, align 8, !tbaa !8
  store double %471, double* %405, align 16, !tbaa !8
  br label %500

; <label>:500:                                    ; preds = %499, %420
  %501 = phi double* [ %425, %420 ], [ %431, %499 ]
  %502 = phi double* [ %424, %420 ], [ %430, %499 ]
  %503 = phi double* [ %423, %420 ], [ %428, %499 ]
  %504 = phi double* [ %422, %420 ], [ %427, %499 ]
  %505 = phi i32 [ %421, %420 ], [ %429, %499 ]
  %506 = phi i64 [ %417, %420 ], [ %498, %499 ]
  %507 = phi i64 [ %414, %420 ], [ %497, %499 ]
  %508 = phi i64 [ %411, %420 ], [ %496, %499 ]
  %509 = phi i64 [ %404, %420 ], [ %495, %499 ]
  %510 = phi i64 [ %399, %420 ], [ %494, %499 ]
  %511 = phi i64 [ %395, %420 ], [ %493, %499 ]
  %512 = phi double [ %391, %420 ], [ %486, %499 ]
  %513 = phi double [ %392, %420 ], [ %491, %499 ]
  %514 = phi double [ %389, %420 ], [ %464, %499 ]
  %515 = phi double [ %390, %420 ], [ %490, %499 ]
  %516 = bitcast [5 x double]* %14 to i64*
  %517 = bitcast double* %504 to i64*
  %518 = bitcast double* %503 to i64*
  %519 = sext i32 %505 to i64
  %520 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %519, i64 4
  %521 = load double, double* %520, align 8, !tbaa !8
  store i64 %511, i64* %516, align 16, !tbaa !8
  store i64 %510, i64* %517, align 8, !tbaa !8
  store i64 %509, i64* %518, align 16, !tbaa !8
  %522 = fdiv double 1.000000e+00, %514
  %523 = fmul double %522, %515
  %524 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %519, i64 3
  store double %523, double* %524, align 8, !tbaa !8
  %525 = fmul double %522, %521
  store double %525, double* %520, align 8, !tbaa !8
  %526 = bitcast i64 %511 to double
  %527 = fmul double %522, %526
  store double %527, double* %502, align 8, !tbaa !8
  %528 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %519, i64 %78, i64 %80, i64 0
  store double %527, double* %528, align 8, !tbaa !8
  %529 = bitcast i64 %510 to double
  %530 = fmul double %522, %529
  store double %530, double* %504, align 8, !tbaa !8
  %531 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %519, i64 %78, i64 %80, i64 1
  store double %530, double* %531, align 8, !tbaa !8
  %532 = bitcast i64 %509 to double
  %533 = fmul double %522, %532
  store double %533, double* %503, align 8, !tbaa !8
  %534 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %519, i64 %78, i64 %80, i64 2
  store double %533, double* %534, align 8, !tbaa !8
  %535 = add nsw i32 %12, -1
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %536, i64 3
  %538 = load double, double* %537, align 8, !tbaa !8
  store i64 %508, i64* %396, align 16, !tbaa !8
  %539 = fsub double -0.000000e+00, %512
  %540 = tail call double @llvm.fmuladd.f64(double %539, double %523, double %513)
  %541 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %536, i64 2
  store double %540, double* %541, align 8, !tbaa !8
  %542 = tail call double @llvm.fmuladd.f64(double %539, double %525, double %538)
  store double %542, double* %537, align 8, !tbaa !8
  %543 = bitcast i64 %508 to double
  %544 = tail call double @llvm.fmuladd.f64(double %539, double %527, double %543)
  store double %544, double* %501, align 8, !tbaa !8
  %545 = bitcast i64 %507 to double
  %546 = tail call double @llvm.fmuladd.f64(double %539, double %530, double %545)
  store double %546, double* %400, align 8, !tbaa !8
  %547 = bitcast i64 %506 to double
  %548 = tail call double @llvm.fmuladd.f64(double %539, double %533, double %547)
  store double %548, double* %405, align 16, !tbaa !8
  %549 = fdiv double 1.000000e+00, %540
  %550 = fmul double %549, %544
  %551 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %536, i64 %78, i64 %80, i64 0
  store double %550, double* %551, align 8, !tbaa !8
  %552 = fmul double %549, %546
  %553 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %536, i64 %78, i64 %80, i64 1
  store double %552, double* %553, align 8, !tbaa !8
  %554 = fmul double %549, %548
  %555 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %536, i64 %78, i64 %80, i64 2
  store double %554, double* %555, align 8, !tbaa !8
  %556 = load double, double* %57, align 8, !tbaa !8
  %557 = load double, double* %63, align 8, !tbaa !8
  %558 = load double, double* %161, align 8, !tbaa !8
  %559 = load double, double* %162, align 8, !tbaa !8
  %560 = load double, double* %58, align 8, !tbaa !8
  %561 = load double, double* %64, align 8, !tbaa !8
  %562 = load double, double* %168, align 8, !tbaa !8
  %563 = load double, double* %169, align 8, !tbaa !8
  %564 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 0, i64 %78, i64 %80, i64 3
  %565 = bitcast double* %564 to i64*
  %566 = load i64, i64* %565, align 8, !tbaa !8
  %567 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 3
  %568 = bitcast double* %567 to i64*
  store i64 %566, i64* %568, align 8, !tbaa !8
  %569 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 0, i64 %78, i64 %80, i64 4
  %570 = bitcast double* %569 to i64*
  %571 = load i64, i64* %570, align 8, !tbaa !8
  %572 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 4
  %573 = bitcast double* %572 to i64*
  store i64 %571, i64* %573, align 16, !tbaa !8
  %574 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %408, i64 0, i64 %78, i64 %80, i64 3
  %575 = bitcast double* %574 to i64*
  %576 = load i64, i64* %575, align 8, !tbaa !8
  %577 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %408, i64 0, i64 %78, i64 %80, i64 4
  %578 = bitcast double* %577 to i64*
  %579 = load i64, i64* %578, align 8, !tbaa !8
  %580 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 3
  %581 = bitcast double* %580 to i64*
  %582 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 4
  %583 = bitcast double* %582 to i64*
  br i1 %419, label %666, label %584

; <label>:584:                                    ; preds = %500
  %585 = zext i32 %505 to i64
  br label %586

; <label>:586:                                    ; preds = %586, %584
  %587 = phi i64 [ %664, %586 ], [ %579, %584 ]
  %588 = phi i64 [ %663, %586 ], [ %571, %584 ]
  %589 = phi i64 [ %662, %586 ], [ %576, %584 ]
  %590 = phi i64 [ %661, %586 ], [ %566, %584 ]
  %591 = phi i64 [ %600, %586 ], [ 0, %584 ]
  %592 = phi double [ %657, %586 ], [ %562, %584 ]
  %593 = phi double [ %658, %586 ], [ %563, %584 ]
  %594 = phi double [ %643, %586 ], [ %560, %584 ]
  %595 = phi double [ %645, %586 ], [ %561, %584 ]
  %596 = phi double [ %628, %586 ], [ %558, %584 ]
  %597 = phi double [ %629, %586 ], [ %559, %584 ]
  %598 = phi double [ %614, %586 ], [ %556, %584 ]
  %599 = phi double [ %616, %586 ], [ %557, %584 ]
  %600 = add nuw nsw i64 %591, 1
  %601 = add nuw nsw i64 %591, 2
  %602 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %591, i64 4
  %603 = load double, double* %602, align 8, !tbaa !8
  %604 = fdiv double 1.000000e+00, %598
  %605 = fmul double %599, %604
  %606 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %591, i64 3
  store double %605, double* %606, align 8, !tbaa !8
  %607 = fmul double %604, %603
  store double %607, double* %602, align 8, !tbaa !8
  %608 = bitcast i64 %590 to double
  %609 = fmul double %604, %608
  %610 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %591, i64 %78, i64 %80, i64 3
  store double %609, double* %610, align 8, !tbaa !8
  %611 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %600, i64 3
  %612 = load double, double* %611, align 8, !tbaa !8
  %613 = fsub double -0.000000e+00, %596
  %614 = tail call double @llvm.fmuladd.f64(double %613, double %605, double %597)
  %615 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %600, i64 2
  store double %614, double* %615, align 8, !tbaa !8
  %616 = tail call double @llvm.fmuladd.f64(double %613, double %607, double %612)
  %617 = bitcast i64 %589 to double
  %618 = tail call double @llvm.fmuladd.f64(double %613, double %609, double %617)
  %619 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %601, i64 0
  %620 = load double, double* %619, align 8, !tbaa !8
  %621 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %601, i64 1
  %622 = load double, double* %621, align 8, !tbaa !8
  %623 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %601, i64 2
  %624 = load double, double* %623, align 8, !tbaa !8
  %625 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %601, i64 %78, i64 %80, i64 3
  %626 = load double, double* %625, align 8, !tbaa !8
  %627 = fsub double -0.000000e+00, %620
  %628 = tail call double @llvm.fmuladd.f64(double %627, double %605, double %622)
  store double %628, double* %621, align 8, !tbaa !8
  %629 = tail call double @llvm.fmuladd.f64(double %627, double %607, double %624)
  %630 = tail call double @llvm.fmuladd.f64(double %627, double %609, double %626)
  %631 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %591, i64 4
  %632 = load double, double* %631, align 8, !tbaa !8
  %633 = fdiv double 1.000000e+00, %594
  %634 = fmul double %595, %633
  %635 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %591, i64 3
  store double %634, double* %635, align 8, !tbaa !8
  %636 = fmul double %633, %632
  store double %636, double* %631, align 8, !tbaa !8
  %637 = bitcast i64 %588 to double
  %638 = fmul double %633, %637
  %639 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %591, i64 %78, i64 %80, i64 4
  store double %638, double* %639, align 8, !tbaa !8
  %640 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %600, i64 3
  %641 = load double, double* %640, align 8, !tbaa !8
  %642 = fsub double -0.000000e+00, %592
  %643 = tail call double @llvm.fmuladd.f64(double %642, double %634, double %593)
  %644 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %600, i64 2
  store double %643, double* %644, align 8, !tbaa !8
  %645 = tail call double @llvm.fmuladd.f64(double %642, double %636, double %641)
  %646 = bitcast i64 %587 to double
  %647 = tail call double @llvm.fmuladd.f64(double %642, double %638, double %646)
  %648 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %601, i64 0
  %649 = load double, double* %648, align 8, !tbaa !8
  %650 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %601, i64 1
  %651 = load double, double* %650, align 8, !tbaa !8
  %652 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %601, i64 2
  %653 = load double, double* %652, align 8, !tbaa !8
  %654 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %601, i64 %78, i64 %80, i64 4
  %655 = load double, double* %654, align 8, !tbaa !8
  %656 = fsub double -0.000000e+00, %649
  %657 = tail call double @llvm.fmuladd.f64(double %656, double %634, double %651)
  store double %657, double* %650, align 8, !tbaa !8
  %658 = tail call double @llvm.fmuladd.f64(double %656, double %636, double %653)
  %659 = tail call double @llvm.fmuladd.f64(double %656, double %638, double %655)
  %660 = icmp eq i64 %600, %585
  %661 = bitcast double %618 to i64
  %662 = bitcast double %630 to i64
  %663 = bitcast double %647 to i64
  %664 = bitcast double %659 to i64
  br i1 %660, label %665, label %586

; <label>:665:                                    ; preds = %586
  store double %609, double* %580, align 8, !tbaa !8
  store double %618, double* %567, align 8, !tbaa !8
  store double %638, double* %582, align 16, !tbaa !8
  store double %647, double* %572, align 16, !tbaa !8
  br label %666

; <label>:666:                                    ; preds = %500, %665
  %667 = phi i64 [ %664, %665 ], [ %579, %500 ]
  %668 = phi i64 [ %663, %665 ], [ %571, %500 ]
  %669 = phi i64 [ %662, %665 ], [ %576, %500 ]
  %670 = phi i64 [ %661, %665 ], [ %566, %500 ]
  %671 = phi double [ %616, %665 ], [ %557, %500 ]
  %672 = phi double [ %614, %665 ], [ %556, %500 ]
  %673 = phi double [ %629, %665 ], [ %559, %500 ]
  %674 = phi double [ %628, %665 ], [ %558, %500 ]
  %675 = phi double [ %645, %665 ], [ %561, %500 ]
  %676 = phi double [ %643, %665 ], [ %560, %500 ]
  %677 = phi double [ %658, %665 ], [ %563, %500 ]
  %678 = phi double [ %657, %665 ], [ %562, %500 ]
  %679 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %519, i64 4
  %680 = load double, double* %679, align 8, !tbaa !8
  store i64 %670, i64* %581, align 8, !tbaa !8
  %681 = fdiv double 1.000000e+00, %672
  %682 = fmul double %671, %681
  %683 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %519, i64 3
  store double %682, double* %683, align 8, !tbaa !8
  %684 = fmul double %681, %680
  store double %684, double* %679, align 8, !tbaa !8
  %685 = bitcast i64 %670 to double
  %686 = fmul double %681, %685
  %687 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %519, i64 %78, i64 %80, i64 3
  store double %686, double* %687, align 8, !tbaa !8
  %688 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %536, i64 3
  %689 = load double, double* %688, align 8, !tbaa !8
  %690 = fsub double -0.000000e+00, %674
  %691 = tail call double @llvm.fmuladd.f64(double %690, double %682, double %673)
  %692 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %536, i64 2
  store double %691, double* %692, align 8, !tbaa !8
  %693 = tail call double @llvm.fmuladd.f64(double %690, double %684, double %689)
  store double %693, double* %688, align 8, !tbaa !8
  %694 = bitcast i64 %669 to double
  %695 = tail call double @llvm.fmuladd.f64(double %690, double %686, double %694)
  %696 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %519, i64 4
  %697 = load double, double* %696, align 8, !tbaa !8
  store i64 %668, i64* %583, align 16, !tbaa !8
  %698 = fdiv double 1.000000e+00, %676
  %699 = fmul double %675, %698
  %700 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %519, i64 3
  store double %699, double* %700, align 8, !tbaa !8
  %701 = fmul double %698, %697
  store double %701, double* %696, align 8, !tbaa !8
  %702 = bitcast i64 %668 to double
  %703 = fmul double %698, %702
  %704 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %519, i64 %78, i64 %80, i64 4
  store double %703, double* %704, align 8, !tbaa !8
  %705 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %536, i64 3
  %706 = load double, double* %705, align 8, !tbaa !8
  %707 = fsub double -0.000000e+00, %678
  %708 = tail call double @llvm.fmuladd.f64(double %707, double %699, double %677)
  %709 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %536, i64 2
  store double %708, double* %709, align 8, !tbaa !8
  %710 = tail call double @llvm.fmuladd.f64(double %707, double %701, double %706)
  store double %710, double* %705, align 8, !tbaa !8
  %711 = bitcast i64 %667 to double
  %712 = tail call double @llvm.fmuladd.f64(double %707, double %703, double %711)
  %713 = fdiv double %695, %691
  %714 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %536, i64 %78, i64 %80, i64 3
  store double %713, double* %714, align 8, !tbaa !8
  %715 = fdiv double %712, %708
  %716 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %536, i64 %78, i64 %80, i64 4
  store double %715, double* %716, align 8, !tbaa !8
  %717 = load double, double* %524, align 8, !tbaa !8
  %718 = fsub double -0.000000e+00, %717
  %719 = load double, double* %551, align 8, !tbaa !8
  store double %719, double* %501, align 8, !tbaa !8
  %720 = load double, double* %528, align 8, !tbaa !8
  %721 = tail call double @llvm.fmuladd.f64(double %718, double %719, double %720)
  store double %721, double* %502, align 8, !tbaa !8
  store double %721, double* %528, align 8, !tbaa !8
  %722 = load double, double* %553, align 8, !tbaa !8
  store double %722, double* %400, align 8, !tbaa !8
  %723 = load double, double* %531, align 8, !tbaa !8
  %724 = tail call double @llvm.fmuladd.f64(double %718, double %722, double %723)
  store double %724, double* %504, align 8, !tbaa !8
  store double %724, double* %531, align 8, !tbaa !8
  %725 = load double, double* %555, align 8, !tbaa !8
  store double %725, double* %405, align 16, !tbaa !8
  %726 = load double, double* %534, align 8, !tbaa !8
  %727 = tail call double @llvm.fmuladd.f64(double %718, double %725, double %726)
  store double %727, double* %503, align 8, !tbaa !8
  store double %727, double* %534, align 8, !tbaa !8
  store double %713, double* %567, align 8, !tbaa !8
  %728 = load double, double* %687, align 8, !tbaa !8
  %729 = load double, double* %683, align 8, !tbaa !8
  %730 = fsub double -0.000000e+00, %729
  %731 = tail call double @llvm.fmuladd.f64(double %730, double %713, double %728)
  store double %731, double* %580, align 8, !tbaa !8
  store double %731, double* %687, align 8, !tbaa !8
  store double %715, double* %572, align 16, !tbaa !8
  %732 = load double, double* %704, align 8, !tbaa !8
  %733 = load double, double* %700, align 8, !tbaa !8
  %734 = fsub double -0.000000e+00, %733
  %735 = tail call double @llvm.fmuladd.f64(double %734, double %715, double %732)
  store double %735, double* %582, align 16, !tbaa !8
  store double %735, double* %704, align 8, !tbaa !8
  %736 = icmp sgt i32 %12, 2
  br i1 %736, label %737, label %792

; <label>:737:                                    ; preds = %666
  %738 = sext i32 %418 to i64
  br label %739

; <label>:739:                                    ; preds = %737, %739
  %740 = phi double [ %735, %737 ], [ %788, %739 ]
  %741 = phi double [ %715, %737 ], [ %740, %739 ]
  %742 = phi double [ %731, %737 ], [ %778, %739 ]
  %743 = phi double [ %713, %737 ], [ %742, %739 ]
  %744 = phi double [ %727, %737 ], [ %768, %739 ]
  %745 = phi double [ %725, %737 ], [ %744, %739 ]
  %746 = phi double [ %724, %737 ], [ %764, %739 ]
  %747 = phi double [ %722, %737 ], [ %746, %739 ]
  %748 = phi double [ %721, %737 ], [ %760, %739 ]
  %749 = phi double [ %719, %737 ], [ %748, %739 ]
  %750 = phi i64 [ %738, %737 ], [ %789, %739 ]
  %751 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %750, i64 3
  %752 = load double, double* %751, align 8, !tbaa !8
  %753 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %750, i64 4
  %754 = load double, double* %753, align 8, !tbaa !8
  %755 = fsub double -0.000000e+00, %752
  %756 = fsub double -0.000000e+00, %754
  %757 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %750, i64 %78, i64 %80, i64 0
  %758 = load double, double* %757, align 8, !tbaa !8
  %759 = tail call double @llvm.fmuladd.f64(double %755, double %748, double %758)
  %760 = tail call double @llvm.fmuladd.f64(double %756, double %749, double %759)
  store double %760, double* %757, align 8, !tbaa !8
  %761 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %750, i64 %78, i64 %80, i64 1
  %762 = load double, double* %761, align 8, !tbaa !8
  %763 = tail call double @llvm.fmuladd.f64(double %755, double %746, double %762)
  %764 = tail call double @llvm.fmuladd.f64(double %756, double %747, double %763)
  store double %764, double* %761, align 8, !tbaa !8
  %765 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %750, i64 %78, i64 %80, i64 2
  %766 = load double, double* %765, align 8, !tbaa !8
  %767 = tail call double @llvm.fmuladd.f64(double %755, double %744, double %766)
  %768 = tail call double @llvm.fmuladd.f64(double %756, double %745, double %767)
  store double %768, double* %765, align 8, !tbaa !8
  %769 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %750, i64 %78, i64 %80, i64 3
  %770 = load double, double* %769, align 8, !tbaa !8
  %771 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %750, i64 3
  %772 = load double, double* %771, align 8, !tbaa !8
  %773 = fsub double -0.000000e+00, %772
  %774 = tail call double @llvm.fmuladd.f64(double %773, double %742, double %770)
  %775 = getelementptr inbounds [5 x double], [5 x double]* %42, i64 %750, i64 4
  %776 = load double, double* %775, align 8, !tbaa !8
  %777 = fsub double -0.000000e+00, %776
  %778 = tail call double @llvm.fmuladd.f64(double %777, double %743, double %774)
  store double %778, double* %769, align 8, !tbaa !8
  %779 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %75, i64 %750, i64 %78, i64 %80, i64 4
  %780 = load double, double* %779, align 8, !tbaa !8
  %781 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %750, i64 3
  %782 = load double, double* %781, align 8, !tbaa !8
  %783 = fsub double -0.000000e+00, %782
  %784 = tail call double @llvm.fmuladd.f64(double %783, double %740, double %780)
  %785 = getelementptr inbounds [5 x double], [5 x double]* %44, i64 %750, i64 4
  %786 = load double, double* %785, align 8, !tbaa !8
  %787 = fsub double -0.000000e+00, %786
  %788 = tail call double @llvm.fmuladd.f64(double %787, double %741, double %784)
  store double %788, double* %779, align 8, !tbaa !8
  %789 = add nsw i64 %750, -1
  %790 = icmp sgt i64 %750, 0
  br i1 %790, label %739, label %791

; <label>:791:                                    ; preds = %739
  store double %748, double* %501, align 8, !tbaa !8
  store double %760, double* %502, align 8, !tbaa !8
  store double %746, double* %400, align 8, !tbaa !8
  store double %744, double* %405, align 16, !tbaa !8
  store double %742, double* %567, align 8, !tbaa !8
  store double %778, double* %580, align 8, !tbaa !8
  store double %740, double* %572, align 16, !tbaa !8
  store double %788, double* %582, align 16, !tbaa !8
  store double %764, double* %504, align 8, !tbaa !8
  store double %768, double* %503, align 8, !tbaa !8
  br label %792

; <label>:792:                                    ; preds = %791, %666, %13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
