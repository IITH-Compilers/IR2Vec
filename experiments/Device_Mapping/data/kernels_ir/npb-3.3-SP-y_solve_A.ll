; ModuleID = 'npb-SP-y_solve.cl'
source_filename = "npb-SP-y_solve.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @y_solve(double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double*, double* nocapture, double* nocapture, double*, double*, double*, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %14 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %15 = add i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %18 = add i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %16, %11
  %21 = icmp sgt i32 %19, %9
  %22 = or i1 %20, %21
  br i1 %22, label %737, label %23

; <label>:23:                                     ; preds = %13
  %24 = bitcast double* %0 to [65 x [65 x double]]*
  %25 = bitcast double* %2 to [65 x [65 x double]]*
  %26 = add nsw i32 %16, -1
  %27 = mul nsw i32 %26, %9
  %28 = add nsw i32 %19, -1
  %29 = add nsw i32 %28, %27
  %30 = shl nsw i32 %29, 6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %4, i64 %31
  %33 = mul i32 %29, 325
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %6, i64 %34
  %36 = bitcast double* %35 to [5 x double]*
  %37 = getelementptr inbounds double, double* %7, i64 %34
  %38 = bitcast double* %37 to [5 x double]*
  %39 = getelementptr inbounds double, double* %8, i64 %34
  %40 = bitcast double* %39 to [5 x double]*
  %41 = add nsw i32 %10, 1
  %42 = sext i32 %41 to i64
  store double 0.000000e+00, double* %35, align 8, !tbaa !8
  store double 0.000000e+00, double* %37, align 8, !tbaa !8
  store double 0.000000e+00, double* %39, align 8, !tbaa !8
  %43 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %42, i64 0
  store double 0.000000e+00, double* %43, align 8, !tbaa !8
  %44 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %42, i64 0
  store double 0.000000e+00, double* %44, align 8, !tbaa !8
  %45 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %42, i64 0
  store double 0.000000e+00, double* %45, align 8, !tbaa !8
  %46 = getelementptr inbounds double, double* %35, i64 1
  store double 0.000000e+00, double* %46, align 8, !tbaa !8
  %47 = getelementptr inbounds double, double* %37, i64 1
  store double 0.000000e+00, double* %47, align 8, !tbaa !8
  %48 = getelementptr inbounds double, double* %39, i64 1
  store double 0.000000e+00, double* %48, align 8, !tbaa !8
  %49 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %42, i64 1
  store double 0.000000e+00, double* %49, align 8, !tbaa !8
  %50 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %42, i64 1
  store double 0.000000e+00, double* %50, align 8, !tbaa !8
  %51 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %42, i64 1
  store double 0.000000e+00, double* %51, align 8, !tbaa !8
  %52 = getelementptr inbounds double, double* %35, i64 2
  %53 = getelementptr inbounds double, double* %37, i64 2
  %54 = getelementptr inbounds double, double* %39, i64 2
  %55 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %42, i64 2
  %56 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %42, i64 2
  %57 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %42, i64 2
  %58 = getelementptr inbounds double, double* %35, i64 3
  store double 0.000000e+00, double* %58, align 8, !tbaa !8
  %59 = getelementptr inbounds double, double* %37, i64 3
  store double 0.000000e+00, double* %59, align 8, !tbaa !8
  %60 = getelementptr inbounds double, double* %39, i64 3
  store double 0.000000e+00, double* %60, align 8, !tbaa !8
  %61 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %42, i64 3
  store double 0.000000e+00, double* %61, align 8, !tbaa !8
  %62 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %42, i64 3
  store double 0.000000e+00, double* %62, align 8, !tbaa !8
  %63 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %42, i64 3
  store double 0.000000e+00, double* %63, align 8, !tbaa !8
  %64 = getelementptr inbounds double, double* %35, i64 4
  store double 0.000000e+00, double* %64, align 8, !tbaa !8
  %65 = getelementptr inbounds double, double* %37, i64 4
  store double 0.000000e+00, double* %65, align 8, !tbaa !8
  %66 = getelementptr inbounds double, double* %39, i64 4
  store double 0.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %42, i64 4
  store double 0.000000e+00, double* %67, align 8, !tbaa !8
  %68 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %42, i64 4
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %42, i64 4
  store double 0.000000e+00, double* %69, align 8, !tbaa !8
  %70 = bitcast double* %1 to [65 x [65 x double]]*
  %71 = bitcast double* %3 to [65 x [65 x [5 x double]]]*
  %72 = getelementptr inbounds double, double* %5, i64 %31
  store double 1.000000e+00, double* %52, align 8, !tbaa !8
  store double 1.000000e+00, double* %53, align 8, !tbaa !8
  store double 1.000000e+00, double* %54, align 8, !tbaa !8
  store double 1.000000e+00, double* %55, align 8, !tbaa !8
  store double 1.000000e+00, double* %56, align 8, !tbaa !8
  store double 1.000000e+00, double* %57, align 8, !tbaa !8
  %73 = shl i64 %15, 32
  %74 = ashr exact i64 %73, 32
  %75 = shl i64 %18, 32
  %76 = ashr exact i64 %75, 32
  %77 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 0, i64 %76
  %78 = load double, double* %77, align 8, !tbaa !8
  %79 = fmul double %78, 1.000000e-01
  %80 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 0, i64 %76
  %81 = load double, double* %80, align 8, !tbaa !8
  store double %81, double* %32, align 8, !tbaa !8
  %82 = tail call double @llvm.fmuladd.f64(double %79, double 0x3FF5555555555555, double 7.500000e-01)
  %83 = tail call double @llvm.fmuladd.f64(double %79, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %84 = fcmp ogt double %82, %83
  %85 = select i1 %84, double %82, double %83
  %86 = fadd double %79, 7.500000e-01
  %87 = fcmp ogt double %86, 7.500000e-01
  %88 = select i1 %87, double %86, double 7.500000e-01
  %89 = fcmp ogt double %85, %88
  %90 = select i1 %89, double %85, double %88
  store double %90, double* %72, align 8, !tbaa !8
  %91 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 0, i64 %76
  %92 = load double, double* %91, align 8, !tbaa !8
  %93 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 1, i64 %76
  %94 = load double, double* %93, align 8, !tbaa !8
  %95 = fmul double %94, 1.000000e-01
  %96 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 1, i64 %76
  %97 = load double, double* %96, align 8, !tbaa !8
  %98 = getelementptr inbounds double, double* %32, i64 1
  store double %97, double* %98, align 8, !tbaa !8
  %99 = tail call double @llvm.fmuladd.f64(double %95, double 0x3FF5555555555555, double 7.500000e-01)
  %100 = tail call double @llvm.fmuladd.f64(double %95, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %101 = fcmp ogt double %99, %100
  %102 = select i1 %101, double %99, double %100
  %103 = fadd double %95, 7.500000e-01
  %104 = fcmp ogt double %103, 7.500000e-01
  %105 = select i1 %104, double %103, double 7.500000e-01
  %106 = fcmp ogt double %102, %105
  %107 = select i1 %106, double %102, double %105
  %108 = getelementptr inbounds double, double* %72, i64 1
  store double %107, double* %108, align 8, !tbaa !8
  %109 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 1, i64 %76
  %110 = load double, double* %109, align 8, !tbaa !8
  %111 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 2, i64 %76
  %112 = load double, double* %111, align 8, !tbaa !8
  %113 = fmul double %112, 1.000000e-01
  %114 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 2, i64 %76
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds double, double* %32, i64 2
  store double %115, double* %116, align 8, !tbaa !8
  %117 = tail call double @llvm.fmuladd.f64(double %113, double 0x3FF5555555555555, double 7.500000e-01)
  %118 = tail call double @llvm.fmuladd.f64(double %113, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %119 = fcmp ogt double %117, %118
  %120 = select i1 %119, double %117, double %118
  %121 = fadd double %113, 7.500000e-01
  %122 = fcmp ogt double %121, 7.500000e-01
  %123 = select i1 %122, double %121, double 7.500000e-01
  %124 = fcmp ogt double %120, %123
  %125 = select i1 %124, double %120, double %123
  %126 = getelementptr inbounds double, double* %72, i64 2
  store double %125, double* %126, align 8, !tbaa !8
  %127 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 2, i64 %76
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = getelementptr inbounds double, double* %35, i64 5
  store double 0.000000e+00, double* %129, align 8, !tbaa !8
  %130 = fmul double %90, 0x4017D0624DD2F1AB
  %131 = fsub double -0.000000e+00, %130
  %132 = tail call double @llvm.fmuladd.f64(double %81, double -4.725000e-02, double %131)
  %133 = getelementptr inbounds double, double* %129, i64 1
  store double %132, double* %133, align 8, !tbaa !8
  %134 = tail call double @llvm.fmuladd.f64(double %107, double 0x4027D0624DD2F1AB, double 1.000000e+00)
  %135 = fadd double %134, 1.875000e-03
  %136 = getelementptr inbounds double, double* %129, i64 2
  store double %135, double* %136, align 8, !tbaa !8
  %137 = fmul double %125, 0x4017D0624DD2F1AB
  %138 = fsub double -0.000000e+00, %137
  %139 = tail call double @llvm.fmuladd.f64(double %115, double 4.725000e-02, double %138)
  %140 = fadd double %139, -1.500000e-03
  %141 = getelementptr inbounds double, double* %129, i64 3
  store double %140, double* %141, align 8, !tbaa !8
  %142 = getelementptr inbounds double, double* %129, i64 4
  store double 3.750000e-04, double* %142, align 8, !tbaa !8
  %143 = getelementptr inbounds double, double* %37, i64 5
  store double 0.000000e+00, double* %143, align 8, !tbaa !8
  %144 = tail call double @llvm.fmuladd.f64(double %92, double -4.725000e-02, double %132)
  %145 = getelementptr inbounds double, double* %143, i64 1
  store double %144, double* %145, align 8, !tbaa !8
  %146 = getelementptr inbounds double, double* %143, i64 2
  store double %135, double* %146, align 8, !tbaa !8
  %147 = tail call double @llvm.fmuladd.f64(double %128, double 4.725000e-02, double %140)
  %148 = getelementptr inbounds double, double* %143, i64 3
  store double %147, double* %148, align 8, !tbaa !8
  %149 = getelementptr inbounds double, double* %143, i64 4
  store double 3.750000e-04, double* %149, align 8, !tbaa !8
  %150 = getelementptr inbounds double, double* %39, i64 5
  store double 0.000000e+00, double* %150, align 8, !tbaa !8
  %151 = tail call double @llvm.fmuladd.f64(double %92, double 4.725000e-02, double %132)
  %152 = getelementptr inbounds double, double* %150, i64 1
  store double %151, double* %152, align 8, !tbaa !8
  %153 = getelementptr inbounds double, double* %150, i64 2
  store double %135, double* %153, align 8, !tbaa !8
  %154 = tail call double @llvm.fmuladd.f64(double %128, double -4.725000e-02, double %140)
  %155 = getelementptr inbounds double, double* %150, i64 3
  store double %154, double* %155, align 8, !tbaa !8
  %156 = getelementptr inbounds double, double* %150, i64 4
  store double 3.750000e-04, double* %156, align 8, !tbaa !8
  %157 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 3, i64 %76
  %158 = load double, double* %157, align 8, !tbaa !8
  %159 = fmul double %158, 1.000000e-01
  %160 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 3, i64 %76
  %161 = load double, double* %160, align 8, !tbaa !8
  %162 = getelementptr inbounds double, double* %32, i64 3
  store double %161, double* %162, align 8, !tbaa !8
  %163 = tail call double @llvm.fmuladd.f64(double %159, double 0x3FF5555555555555, double 7.500000e-01)
  %164 = tail call double @llvm.fmuladd.f64(double %159, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %165 = fcmp ogt double %163, %164
  %166 = select i1 %165, double %163, double %164
  %167 = fadd double %159, 7.500000e-01
  %168 = fcmp ogt double %167, 7.500000e-01
  %169 = select i1 %168, double %167, double 7.500000e-01
  %170 = fcmp ogt double %166, %169
  %171 = select i1 %170, double %166, double %169
  %172 = getelementptr inbounds double, double* %72, i64 3
  store double %171, double* %172, align 8, !tbaa !8
  %173 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 3, i64 %76
  %174 = load double, double* %173, align 8, !tbaa !8
  %175 = getelementptr inbounds double, double* %35, i64 10
  store double 0.000000e+00, double* %175, align 8, !tbaa !8
  %176 = fmul double %107, 0x4017D0624DD2F1AB
  %177 = fsub double -0.000000e+00, %176
  %178 = tail call double @llvm.fmuladd.f64(double %97, double -4.725000e-02, double %177)
  %179 = fadd double %178, -1.500000e-03
  %180 = getelementptr inbounds double, double* %175, i64 1
  store double %179, double* %180, align 8, !tbaa !8
  %181 = tail call double @llvm.fmuladd.f64(double %125, double 0x4027D0624DD2F1AB, double 1.000000e+00)
  %182 = fadd double %181, 0x3F626E978D4FDF3C
  %183 = getelementptr inbounds double, double* %175, i64 2
  store double %182, double* %183, align 8, !tbaa !8
  %184 = fmul double %171, 0x4017D0624DD2F1AB
  %185 = fsub double -0.000000e+00, %184
  %186 = tail call double @llvm.fmuladd.f64(double %161, double 4.725000e-02, double %185)
  %187 = fadd double %186, -1.500000e-03
  %188 = getelementptr inbounds double, double* %175, i64 3
  store double %187, double* %188, align 8, !tbaa !8
  %189 = getelementptr inbounds double, double* %175, i64 4
  store double 3.750000e-04, double* %189, align 8, !tbaa !8
  %190 = getelementptr inbounds double, double* %37, i64 10
  store double 0.000000e+00, double* %190, align 8, !tbaa !8
  %191 = tail call double @llvm.fmuladd.f64(double %110, double -4.725000e-02, double %179)
  %192 = getelementptr inbounds double, double* %190, i64 1
  store double %191, double* %192, align 8, !tbaa !8
  %193 = getelementptr inbounds double, double* %190, i64 2
  store double %182, double* %193, align 8, !tbaa !8
  %194 = tail call double @llvm.fmuladd.f64(double %174, double 4.725000e-02, double %187)
  %195 = getelementptr inbounds double, double* %190, i64 3
  store double %194, double* %195, align 8, !tbaa !8
  %196 = getelementptr inbounds double, double* %190, i64 4
  store double 3.750000e-04, double* %196, align 8, !tbaa !8
  %197 = getelementptr inbounds double, double* %39, i64 10
  store double 0.000000e+00, double* %197, align 8, !tbaa !8
  %198 = tail call double @llvm.fmuladd.f64(double %110, double 4.725000e-02, double %179)
  %199 = getelementptr inbounds double, double* %197, i64 1
  store double %198, double* %199, align 8, !tbaa !8
  %200 = getelementptr inbounds double, double* %197, i64 2
  store double %182, double* %200, align 8, !tbaa !8
  %201 = tail call double @llvm.fmuladd.f64(double %174, double -4.725000e-02, double %187)
  %202 = getelementptr inbounds double, double* %197, i64 3
  store double %201, double* %202, align 8, !tbaa !8
  %203 = getelementptr inbounds double, double* %197, i64 4
  store double 3.750000e-04, double* %203, align 8, !tbaa !8
  %204 = icmp slt i32 %12, 7
  %205 = add i32 %12, -3
  br i1 %204, label %265, label %206

; <label>:206:                                    ; preds = %23
  %207 = zext i32 %205 to i64
  br label %208

; <label>:208:                                    ; preds = %208, %206
  %209 = phi i64 [ %216, %208 ], [ 3, %206 ]
  %210 = phi double [ %234, %208 ], [ %174, %206 ]
  %211 = phi double [ %210, %208 ], [ %128, %206 ]
  %212 = phi double [ %231, %208 ], [ %171, %206 ]
  %213 = phi double [ %212, %208 ], [ %125, %206 ]
  %214 = phi double [ %221, %208 ], [ %161, %206 ]
  %215 = phi double [ %214, %208 ], [ %115, %206 ]
  %216 = add nuw nsw i64 %209, 1
  %217 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 %216, i64 %76
  %218 = load double, double* %217, align 8, !tbaa !8
  %219 = fmul double %218, 1.000000e-01
  %220 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 %216, i64 %76
  %221 = load double, double* %220, align 8, !tbaa !8
  %222 = getelementptr inbounds double, double* %32, i64 %216
  store double %221, double* %222, align 8, !tbaa !8
  %223 = tail call double @llvm.fmuladd.f64(double %219, double 0x3FF5555555555555, double 7.500000e-01)
  %224 = tail call double @llvm.fmuladd.f64(double %219, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %225 = fcmp ogt double %223, %224
  %226 = select i1 %225, double %223, double %224
  %227 = fadd double %219, 7.500000e-01
  %228 = fcmp ogt double %227, 7.500000e-01
  %229 = select i1 %228, double %227, double 7.500000e-01
  %230 = fcmp ogt double %226, %229
  %231 = select i1 %230, double %226, double %229
  %232 = getelementptr inbounds double, double* %72, i64 %216
  store double %231, double* %232, align 8, !tbaa !8
  %233 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 %216, i64 %76
  %234 = load double, double* %233, align 8, !tbaa !8
  %235 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %209, i64 0
  store double 3.750000e-04, double* %235, align 8, !tbaa !8
  %236 = fmul double %213, 0x4017D0624DD2F1AB
  %237 = fsub double -0.000000e+00, %236
  %238 = tail call double @llvm.fmuladd.f64(double %215, double -4.725000e-02, double %237)
  %239 = fadd double %238, -1.500000e-03
  %240 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %209, i64 1
  store double %239, double* %240, align 8, !tbaa !8
  %241 = tail call double @llvm.fmuladd.f64(double %212, double 0x4027D0624DD2F1AB, double 1.000000e+00)
  %242 = fadd double %241, 0x3F626E978D4FDF3C
  %243 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %209, i64 2
  store double %242, double* %243, align 8, !tbaa !8
  %244 = fmul double %231, 0x4017D0624DD2F1AB
  %245 = fsub double -0.000000e+00, %244
  %246 = tail call double @llvm.fmuladd.f64(double %221, double 4.725000e-02, double %245)
  %247 = fadd double %246, -1.500000e-03
  %248 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %209, i64 3
  store double %247, double* %248, align 8, !tbaa !8
  %249 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %209, i64 4
  store double 3.750000e-04, double* %249, align 8, !tbaa !8
  %250 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %209, i64 0
  store double 3.750000e-04, double* %250, align 8, !tbaa !8
  %251 = tail call double @llvm.fmuladd.f64(double %211, double -4.725000e-02, double %239)
  %252 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %209, i64 1
  store double %251, double* %252, align 8, !tbaa !8
  %253 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %209, i64 2
  store double %242, double* %253, align 8, !tbaa !8
  %254 = tail call double @llvm.fmuladd.f64(double %234, double 4.725000e-02, double %247)
  %255 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %209, i64 3
  store double %254, double* %255, align 8, !tbaa !8
  %256 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %209, i64 4
  store double 3.750000e-04, double* %256, align 8, !tbaa !8
  %257 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %209, i64 0
  store double 3.750000e-04, double* %257, align 8, !tbaa !8
  %258 = tail call double @llvm.fmuladd.f64(double %211, double 4.725000e-02, double %239)
  %259 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %209, i64 1
  store double %258, double* %259, align 8, !tbaa !8
  %260 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %209, i64 2
  store double %242, double* %260, align 8, !tbaa !8
  %261 = tail call double @llvm.fmuladd.f64(double %234, double -4.725000e-02, double %247)
  %262 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %209, i64 3
  store double %261, double* %262, align 8, !tbaa !8
  %263 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %209, i64 4
  store double 3.750000e-04, double* %263, align 8, !tbaa !8
  %264 = icmp eq i64 %216, %207
  br i1 %264, label %265, label %208

; <label>:265:                                    ; preds = %208, %23
  %266 = phi double [ %115, %23 ], [ %214, %208 ]
  %267 = phi double [ %161, %23 ], [ %221, %208 ]
  %268 = phi double [ %125, %23 ], [ %212, %208 ]
  %269 = phi double [ %171, %23 ], [ %231, %208 ]
  %270 = phi double [ %128, %23 ], [ %210, %208 ]
  %271 = phi double [ %174, %23 ], [ %234, %208 ]
  %272 = add nsw i32 %12, -2
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 %273, i64 %76
  %275 = load double, double* %274, align 8, !tbaa !8
  %276 = fmul double %275, 1.000000e-01
  %277 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 %273, i64 %76
  %278 = load double, double* %277, align 8, !tbaa !8
  %279 = getelementptr inbounds double, double* %32, i64 %273
  store double %278, double* %279, align 8, !tbaa !8
  %280 = tail call double @llvm.fmuladd.f64(double %276, double 0x3FF5555555555555, double 7.500000e-01)
  %281 = tail call double @llvm.fmuladd.f64(double %276, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %282 = fcmp ogt double %280, %281
  %283 = select i1 %282, double %280, double %281
  %284 = fadd double %276, 7.500000e-01
  %285 = fcmp ogt double %284, 7.500000e-01
  %286 = select i1 %285, double %284, double 7.500000e-01
  %287 = fcmp ogt double %283, %286
  %288 = select i1 %287, double %283, double %286
  %289 = getelementptr inbounds double, double* %72, i64 %273
  store double %288, double* %289, align 8, !tbaa !8
  %290 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 %273, i64 %76
  %291 = load double, double* %290, align 8, !tbaa !8
  %292 = sext i32 %205 to i64
  %293 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %292, i64 0
  store double 3.750000e-04, double* %293, align 8, !tbaa !8
  %294 = fmul double %268, 0x4017D0624DD2F1AB
  %295 = fsub double -0.000000e+00, %294
  %296 = tail call double @llvm.fmuladd.f64(double %266, double -4.725000e-02, double %295)
  %297 = fadd double %296, -1.500000e-03
  %298 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %292, i64 1
  store double %297, double* %298, align 8, !tbaa !8
  %299 = tail call double @llvm.fmuladd.f64(double %269, double 0x4027D0624DD2F1AB, double 1.000000e+00)
  %300 = fadd double %299, 0x3F626E978D4FDF3C
  %301 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %292, i64 2
  store double %300, double* %301, align 8, !tbaa !8
  %302 = fmul double %288, 0x4017D0624DD2F1AB
  %303 = fsub double -0.000000e+00, %302
  %304 = tail call double @llvm.fmuladd.f64(double %278, double 4.725000e-02, double %303)
  %305 = fadd double %304, -1.500000e-03
  %306 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %292, i64 3
  store double %305, double* %306, align 8, !tbaa !8
  %307 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %292, i64 4
  store double 0.000000e+00, double* %307, align 8, !tbaa !8
  %308 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %292, i64 0
  store double 3.750000e-04, double* %308, align 8, !tbaa !8
  %309 = tail call double @llvm.fmuladd.f64(double %270, double -4.725000e-02, double %297)
  %310 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %292, i64 1
  store double %309, double* %310, align 8, !tbaa !8
  %311 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %292, i64 2
  store double %300, double* %311, align 8, !tbaa !8
  %312 = tail call double @llvm.fmuladd.f64(double %291, double 4.725000e-02, double %305)
  %313 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %292, i64 3
  store double %312, double* %313, align 8, !tbaa !8
  %314 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %292, i64 4
  store double 0.000000e+00, double* %314, align 8, !tbaa !8
  %315 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %292, i64 0
  store double 3.750000e-04, double* %315, align 8, !tbaa !8
  %316 = tail call double @llvm.fmuladd.f64(double %270, double 4.725000e-02, double %297)
  %317 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %292, i64 1
  store double %316, double* %317, align 8, !tbaa !8
  %318 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %292, i64 2
  store double %300, double* %318, align 8, !tbaa !8
  %319 = tail call double @llvm.fmuladd.f64(double %291, double -4.725000e-02, double %305)
  %320 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %292, i64 3
  store double %319, double* %320, align 8, !tbaa !8
  %321 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %292, i64 4
  store double 0.000000e+00, double* %321, align 8, !tbaa !8
  %322 = add nsw i32 %12, -1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %70, i64 %74, i64 %323, i64 %76
  %325 = load double, double* %324, align 8, !tbaa !8
  %326 = fmul double %325, 1.000000e-01
  %327 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %74, i64 %323, i64 %76
  %328 = load double, double* %327, align 8, !tbaa !8
  %329 = getelementptr inbounds double, double* %32, i64 %323
  store double %328, double* %329, align 8, !tbaa !8
  %330 = tail call double @llvm.fmuladd.f64(double %326, double 0x3FF5555555555555, double 7.500000e-01)
  %331 = tail call double @llvm.fmuladd.f64(double %326, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %332 = fcmp ogt double %330, %331
  %333 = select i1 %332, double %330, double %331
  %334 = fadd double %326, 7.500000e-01
  %335 = fcmp ogt double %334, 7.500000e-01
  %336 = select i1 %335, double %334, double 7.500000e-01
  %337 = fcmp ogt double %333, %336
  %338 = select i1 %337, double %333, double %336
  %339 = getelementptr inbounds double, double* %72, i64 %323
  store double %338, double* %339, align 8, !tbaa !8
  %340 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %25, i64 %74, i64 %323, i64 %76
  %341 = load double, double* %340, align 8, !tbaa !8
  %342 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %273, i64 0
  store double 3.750000e-04, double* %342, align 8, !tbaa !8
  %343 = fmul double %269, 0x4017D0624DD2F1AB
  %344 = fsub double -0.000000e+00, %343
  %345 = tail call double @llvm.fmuladd.f64(double %267, double -4.725000e-02, double %344)
  %346 = fadd double %345, -1.500000e-03
  %347 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %273, i64 1
  store double %346, double* %347, align 8, !tbaa !8
  %348 = tail call double @llvm.fmuladd.f64(double %288, double 0x4027D0624DD2F1AB, double 1.000000e+00)
  %349 = fadd double %348, 1.875000e-03
  %350 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %273, i64 2
  store double %349, double* %350, align 8, !tbaa !8
  %351 = fmul double %338, 0x4017D0624DD2F1AB
  %352 = fsub double -0.000000e+00, %351
  %353 = tail call double @llvm.fmuladd.f64(double %328, double 4.725000e-02, double %352)
  %354 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %273, i64 3
  store double %353, double* %354, align 8, !tbaa !8
  %355 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %273, i64 4
  store double 0.000000e+00, double* %355, align 8, !tbaa !8
  %356 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %273, i64 0
  store double 3.750000e-04, double* %356, align 8, !tbaa !8
  %357 = tail call double @llvm.fmuladd.f64(double %271, double -4.725000e-02, double %346)
  %358 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %273, i64 1
  store double %357, double* %358, align 8, !tbaa !8
  %359 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %273, i64 2
  store double %349, double* %359, align 8, !tbaa !8
  %360 = tail call double @llvm.fmuladd.f64(double %341, double 4.725000e-02, double %353)
  %361 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %273, i64 3
  store double %360, double* %361, align 8, !tbaa !8
  %362 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %273, i64 4
  store double 0.000000e+00, double* %362, align 8, !tbaa !8
  %363 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %273, i64 0
  store double 3.750000e-04, double* %363, align 8, !tbaa !8
  %364 = tail call double @llvm.fmuladd.f64(double %271, double 4.725000e-02, double %346)
  %365 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %273, i64 1
  store double %364, double* %365, align 8, !tbaa !8
  %366 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %273, i64 2
  store double %349, double* %366, align 8, !tbaa !8
  %367 = tail call double @llvm.fmuladd.f64(double %341, double -4.725000e-02, double %353)
  %368 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %273, i64 3
  store double %367, double* %368, align 8, !tbaa !8
  %369 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %273, i64 4
  store double 0.000000e+00, double* %369, align 8, !tbaa !8
  %370 = load double, double* %52, align 8, !tbaa !8
  %371 = load double, double* %58, align 8, !tbaa !8
  %372 = load double, double* %133, align 8, !tbaa !8
  %373 = load double, double* %136, align 8, !tbaa !8
  %374 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 0, i64 %76
  %375 = bitcast [5 x double]* %374 to i64*
  %376 = load i64, i64* %375, align 8, !tbaa !8
  %377 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 0, i64 %76, i64 1
  %378 = bitcast double* %377 to i64*
  %379 = load i64, i64* %378, align 8, !tbaa !8
  %380 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 0, i64 %76, i64 2
  %381 = bitcast double* %380 to i64*
  %382 = load i64, i64* %381, align 8, !tbaa !8
  %383 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 1, i64 %76
  %384 = bitcast [5 x double]* %383 to i64*
  %385 = load i64, i64* %384, align 8, !tbaa !8
  %386 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 1, i64 %76, i64 1
  %387 = bitcast double* %386 to i64*
  %388 = load i64, i64* %387, align 8, !tbaa !8
  %389 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 1, i64 %76, i64 2
  %390 = bitcast double* %389 to i64*
  %391 = load i64, i64* %390, align 8, !tbaa !8
  %392 = icmp slt i32 %12, 3
  br i1 %392, label %461, label %393

; <label>:393:                                    ; preds = %265
  %394 = zext i32 %272 to i64
  br label %395

; <label>:395:                                    ; preds = %395, %393
  %396 = phi i64 [ %460, %395 ], [ %391, %393 ]
  %397 = phi i64 [ %459, %395 ], [ %388, %393 ]
  %398 = phi i64 [ %458, %395 ], [ %385, %393 ]
  %399 = phi i64 [ %457, %395 ], [ %382, %393 ]
  %400 = phi i64 [ %456, %395 ], [ %379, %393 ]
  %401 = phi i64 [ %455, %395 ], [ %376, %393 ]
  %402 = phi i64 [ %407, %395 ], [ 0, %393 ]
  %403 = phi double [ %452, %395 ], [ %371, %393 ]
  %404 = phi double [ %426, %395 ], [ %370, %393 ]
  %405 = phi double [ %453, %395 ], [ %373, %393 ]
  %406 = phi double [ %448, %395 ], [ %372, %393 ]
  %407 = add nuw nsw i64 %402, 1
  %408 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %402, i64 4
  %409 = load double, double* %408, align 8, !tbaa !8
  %410 = fdiv double 1.000000e+00, %404
  %411 = fmul double %410, %403
  %412 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %402, i64 3
  store double %411, double* %412, align 8, !tbaa !8
  %413 = fmul double %410, %409
  store double %413, double* %408, align 8, !tbaa !8
  %414 = bitcast i64 %401 to double
  %415 = fmul double %410, %414
  %416 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %402, i64 %76, i64 0
  store double %415, double* %416, align 8, !tbaa !8
  %417 = bitcast i64 %400 to double
  %418 = fmul double %410, %417
  %419 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %402, i64 %76, i64 1
  store double %418, double* %419, align 8, !tbaa !8
  %420 = bitcast i64 %399 to double
  %421 = fmul double %410, %420
  %422 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %402, i64 %76, i64 2
  store double %421, double* %422, align 8, !tbaa !8
  %423 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %407, i64 3
  %424 = load double, double* %423, align 8, !tbaa !8
  %425 = fsub double -0.000000e+00, %406
  %426 = tail call double @llvm.fmuladd.f64(double %425, double %411, double %405)
  %427 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %407, i64 2
  store double %426, double* %427, align 8, !tbaa !8
  %428 = bitcast i64 %398 to double
  %429 = tail call double @llvm.fmuladd.f64(double %425, double %415, double %428)
  %430 = bitcast i64 %397 to double
  %431 = tail call double @llvm.fmuladd.f64(double %425, double %418, double %430)
  %432 = bitcast i64 %396 to double
  %433 = tail call double @llvm.fmuladd.f64(double %425, double %421, double %432)
  %434 = add nuw nsw i64 %402, 2
  %435 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %434, i64 0
  %436 = load double, double* %435, align 8, !tbaa !8
  %437 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %434, i64 1
  %438 = load double, double* %437, align 8, !tbaa !8
  %439 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %434, i64 2
  %440 = load double, double* %439, align 8, !tbaa !8
  %441 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %434, i64 %76, i64 0
  %442 = load double, double* %441, align 8, !tbaa !8
  %443 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %434, i64 %76, i64 1
  %444 = load double, double* %443, align 8, !tbaa !8
  %445 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %434, i64 %76, i64 2
  %446 = load double, double* %445, align 8, !tbaa !8
  %447 = fsub double -0.000000e+00, %436
  %448 = tail call double @llvm.fmuladd.f64(double %447, double %411, double %438)
  store double %448, double* %437, align 8, !tbaa !8
  %449 = tail call double @llvm.fmuladd.f64(double %447, double %415, double %442)
  %450 = tail call double @llvm.fmuladd.f64(double %447, double %418, double %444)
  %451 = tail call double @llvm.fmuladd.f64(double %447, double %421, double %446)
  %452 = tail call double @llvm.fmuladd.f64(double %425, double %413, double %424)
  %453 = tail call double @llvm.fmuladd.f64(double %447, double %413, double %440)
  %454 = icmp eq i64 %407, %394
  %455 = bitcast double %429 to i64
  %456 = bitcast double %431 to i64
  %457 = bitcast double %433 to i64
  %458 = bitcast double %449 to i64
  %459 = bitcast double %450 to i64
  %460 = bitcast double %451 to i64
  br i1 %454, label %461, label %395

; <label>:461:                                    ; preds = %395, %265
  %462 = phi i64 [ %391, %265 ], [ %460, %395 ]
  %463 = phi i64 [ %388, %265 ], [ %459, %395 ]
  %464 = phi i64 [ %385, %265 ], [ %458, %395 ]
  %465 = phi i64 [ %382, %265 ], [ %457, %395 ]
  %466 = phi i64 [ %379, %265 ], [ %456, %395 ]
  %467 = phi i64 [ %376, %265 ], [ %455, %395 ]
  %468 = phi double [ %372, %265 ], [ %448, %395 ]
  %469 = phi double [ %373, %265 ], [ %453, %395 ]
  %470 = phi double [ %370, %265 ], [ %426, %395 ]
  %471 = phi double [ %371, %265 ], [ %452, %395 ]
  %472 = load double, double* %355, align 8, !tbaa !8
  %473 = fdiv double 1.000000e+00, %470
  %474 = fmul double %473, %471
  store double %474, double* %354, align 8, !tbaa !8
  %475 = fmul double %473, %472
  store double %475, double* %355, align 8, !tbaa !8
  %476 = bitcast i64 %467 to double
  %477 = fmul double %473, %476
  %478 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %273, i64 %76, i64 0
  store double %477, double* %478, align 8, !tbaa !8
  %479 = bitcast i64 %466 to double
  %480 = fmul double %473, %479
  %481 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %273, i64 %76, i64 1
  store double %480, double* %481, align 8, !tbaa !8
  %482 = bitcast i64 %465 to double
  %483 = fmul double %473, %482
  %484 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %273, i64 %76, i64 2
  store double %483, double* %484, align 8, !tbaa !8
  %485 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %323, i64 3
  %486 = load double, double* %485, align 8, !tbaa !8
  %487 = fsub double -0.000000e+00, %468
  %488 = tail call double @llvm.fmuladd.f64(double %487, double %474, double %469)
  %489 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %323, i64 2
  store double %488, double* %489, align 8, !tbaa !8
  %490 = tail call double @llvm.fmuladd.f64(double %487, double %475, double %486)
  store double %490, double* %485, align 8, !tbaa !8
  %491 = bitcast i64 %464 to double
  %492 = tail call double @llvm.fmuladd.f64(double %487, double %477, double %491)
  %493 = bitcast i64 %463 to double
  %494 = tail call double @llvm.fmuladd.f64(double %487, double %480, double %493)
  %495 = bitcast i64 %462 to double
  %496 = tail call double @llvm.fmuladd.f64(double %487, double %483, double %495)
  %497 = fdiv double 1.000000e+00, %488
  %498 = fmul double %497, %492
  %499 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %323, i64 %76, i64 0
  store double %498, double* %499, align 8, !tbaa !8
  %500 = fmul double %497, %494
  %501 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %323, i64 %76, i64 1
  store double %500, double* %501, align 8, !tbaa !8
  %502 = fmul double %497, %496
  %503 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %323, i64 %76, i64 2
  store double %502, double* %503, align 8, !tbaa !8
  %504 = load double, double* %53, align 8, !tbaa !8
  %505 = load double, double* %59, align 8, !tbaa !8
  %506 = load double, double* %145, align 8, !tbaa !8
  %507 = load double, double* %146, align 8, !tbaa !8
  %508 = load double, double* %54, align 8, !tbaa !8
  %509 = load double, double* %60, align 8, !tbaa !8
  %510 = load double, double* %152, align 8, !tbaa !8
  %511 = load double, double* %153, align 8, !tbaa !8
  %512 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 0, i64 %76, i64 3
  %513 = bitcast double* %512 to i64*
  %514 = load i64, i64* %513, align 8, !tbaa !8
  %515 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 0, i64 %76, i64 4
  %516 = bitcast double* %515 to i64*
  %517 = load i64, i64* %516, align 8, !tbaa !8
  %518 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 1, i64 %76, i64 3
  %519 = bitcast double* %518 to i64*
  %520 = load i64, i64* %519, align 8, !tbaa !8
  %521 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 1, i64 %76, i64 4
  %522 = bitcast double* %521 to i64*
  %523 = load i64, i64* %522, align 8, !tbaa !8
  br i1 %392, label %605, label %524

; <label>:524:                                    ; preds = %461
  %525 = zext i32 %272 to i64
  br label %526

; <label>:526:                                    ; preds = %526, %524
  %527 = phi i64 [ %604, %526 ], [ %523, %524 ]
  %528 = phi i64 [ %603, %526 ], [ %517, %524 ]
  %529 = phi i64 [ %602, %526 ], [ %520, %524 ]
  %530 = phi i64 [ %601, %526 ], [ %514, %524 ]
  %531 = phi i64 [ %540, %526 ], [ 0, %524 ]
  %532 = phi double [ %597, %526 ], [ %510, %524 ]
  %533 = phi double [ %598, %526 ], [ %511, %524 ]
  %534 = phi double [ %583, %526 ], [ %508, %524 ]
  %535 = phi double [ %585, %526 ], [ %509, %524 ]
  %536 = phi double [ %568, %526 ], [ %506, %524 ]
  %537 = phi double [ %569, %526 ], [ %507, %524 ]
  %538 = phi double [ %554, %526 ], [ %504, %524 ]
  %539 = phi double [ %556, %526 ], [ %505, %524 ]
  %540 = add nuw nsw i64 %531, 1
  %541 = add nuw nsw i64 %531, 2
  %542 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %531, i64 4
  %543 = load double, double* %542, align 8, !tbaa !8
  %544 = fdiv double 1.000000e+00, %538
  %545 = fmul double %539, %544
  %546 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %531, i64 3
  store double %545, double* %546, align 8, !tbaa !8
  %547 = fmul double %544, %543
  store double %547, double* %542, align 8, !tbaa !8
  %548 = bitcast i64 %530 to double
  %549 = fmul double %544, %548
  %550 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %531, i64 %76, i64 3
  store double %549, double* %550, align 8, !tbaa !8
  %551 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %540, i64 3
  %552 = load double, double* %551, align 8, !tbaa !8
  %553 = fsub double -0.000000e+00, %536
  %554 = tail call double @llvm.fmuladd.f64(double %553, double %545, double %537)
  %555 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %540, i64 2
  store double %554, double* %555, align 8, !tbaa !8
  %556 = tail call double @llvm.fmuladd.f64(double %553, double %547, double %552)
  %557 = bitcast i64 %529 to double
  %558 = tail call double @llvm.fmuladd.f64(double %553, double %549, double %557)
  %559 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %541, i64 0
  %560 = load double, double* %559, align 8, !tbaa !8
  %561 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %541, i64 1
  %562 = load double, double* %561, align 8, !tbaa !8
  %563 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %541, i64 2
  %564 = load double, double* %563, align 8, !tbaa !8
  %565 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %541, i64 %76, i64 3
  %566 = load double, double* %565, align 8, !tbaa !8
  %567 = fsub double -0.000000e+00, %560
  %568 = tail call double @llvm.fmuladd.f64(double %567, double %545, double %562)
  store double %568, double* %561, align 8, !tbaa !8
  %569 = tail call double @llvm.fmuladd.f64(double %567, double %547, double %564)
  %570 = tail call double @llvm.fmuladd.f64(double %567, double %549, double %566)
  %571 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %531, i64 4
  %572 = load double, double* %571, align 8, !tbaa !8
  %573 = fdiv double 1.000000e+00, %534
  %574 = fmul double %535, %573
  %575 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %531, i64 3
  store double %574, double* %575, align 8, !tbaa !8
  %576 = fmul double %573, %572
  store double %576, double* %571, align 8, !tbaa !8
  %577 = bitcast i64 %528 to double
  %578 = fmul double %573, %577
  %579 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %531, i64 %76, i64 4
  store double %578, double* %579, align 8, !tbaa !8
  %580 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %540, i64 3
  %581 = load double, double* %580, align 8, !tbaa !8
  %582 = fsub double -0.000000e+00, %532
  %583 = tail call double @llvm.fmuladd.f64(double %582, double %574, double %533)
  %584 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %540, i64 2
  store double %583, double* %584, align 8, !tbaa !8
  %585 = tail call double @llvm.fmuladd.f64(double %582, double %576, double %581)
  %586 = bitcast i64 %527 to double
  %587 = tail call double @llvm.fmuladd.f64(double %582, double %578, double %586)
  %588 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %541, i64 0
  %589 = load double, double* %588, align 8, !tbaa !8
  %590 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %541, i64 1
  %591 = load double, double* %590, align 8, !tbaa !8
  %592 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %541, i64 2
  %593 = load double, double* %592, align 8, !tbaa !8
  %594 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %541, i64 %76, i64 4
  %595 = load double, double* %594, align 8, !tbaa !8
  %596 = fsub double -0.000000e+00, %589
  %597 = tail call double @llvm.fmuladd.f64(double %596, double %574, double %591)
  store double %597, double* %590, align 8, !tbaa !8
  %598 = tail call double @llvm.fmuladd.f64(double %596, double %576, double %593)
  %599 = tail call double @llvm.fmuladd.f64(double %596, double %578, double %595)
  %600 = icmp eq i64 %540, %525
  %601 = bitcast double %558 to i64
  %602 = bitcast double %570 to i64
  %603 = bitcast double %587 to i64
  %604 = bitcast double %599 to i64
  br i1 %600, label %605, label %526

; <label>:605:                                    ; preds = %526, %461
  %606 = phi i64 [ %523, %461 ], [ %604, %526 ]
  %607 = phi i64 [ %517, %461 ], [ %603, %526 ]
  %608 = phi i64 [ %520, %461 ], [ %602, %526 ]
  %609 = phi i64 [ %514, %461 ], [ %601, %526 ]
  %610 = phi double [ %505, %461 ], [ %556, %526 ]
  %611 = phi double [ %504, %461 ], [ %554, %526 ]
  %612 = phi double [ %507, %461 ], [ %569, %526 ]
  %613 = phi double [ %506, %461 ], [ %568, %526 ]
  %614 = phi double [ %509, %461 ], [ %585, %526 ]
  %615 = phi double [ %508, %461 ], [ %583, %526 ]
  %616 = phi double [ %511, %461 ], [ %598, %526 ]
  %617 = phi double [ %510, %461 ], [ %597, %526 ]
  %618 = load double, double* %362, align 8, !tbaa !8
  %619 = fdiv double 1.000000e+00, %611
  %620 = fmul double %610, %619
  store double %620, double* %361, align 8, !tbaa !8
  %621 = fmul double %619, %618
  store double %621, double* %362, align 8, !tbaa !8
  %622 = bitcast i64 %609 to double
  %623 = fmul double %619, %622
  %624 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %273, i64 %76, i64 3
  store double %623, double* %624, align 8, !tbaa !8
  %625 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %323, i64 3
  %626 = load double, double* %625, align 8, !tbaa !8
  %627 = fsub double -0.000000e+00, %613
  %628 = tail call double @llvm.fmuladd.f64(double %627, double %620, double %612)
  %629 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %323, i64 2
  store double %628, double* %629, align 8, !tbaa !8
  %630 = tail call double @llvm.fmuladd.f64(double %627, double %621, double %626)
  store double %630, double* %625, align 8, !tbaa !8
  %631 = bitcast i64 %608 to double
  %632 = tail call double @llvm.fmuladd.f64(double %627, double %623, double %631)
  %633 = load double, double* %369, align 8, !tbaa !8
  %634 = fdiv double 1.000000e+00, %615
  %635 = fmul double %614, %634
  store double %635, double* %368, align 8, !tbaa !8
  %636 = fmul double %634, %633
  store double %636, double* %369, align 8, !tbaa !8
  %637 = bitcast i64 %607 to double
  %638 = fmul double %634, %637
  %639 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %273, i64 %76, i64 4
  store double %638, double* %639, align 8, !tbaa !8
  %640 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %323, i64 3
  %641 = load double, double* %640, align 8, !tbaa !8
  %642 = fsub double -0.000000e+00, %617
  %643 = tail call double @llvm.fmuladd.f64(double %642, double %635, double %616)
  %644 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %323, i64 2
  store double %643, double* %644, align 8, !tbaa !8
  %645 = tail call double @llvm.fmuladd.f64(double %642, double %636, double %641)
  store double %645, double* %640, align 8, !tbaa !8
  %646 = bitcast i64 %606 to double
  %647 = tail call double @llvm.fmuladd.f64(double %642, double %638, double %646)
  %648 = fdiv double %632, %628
  %649 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %323, i64 %76, i64 3
  store double %648, double* %649, align 8, !tbaa !8
  %650 = fdiv double %647, %643
  %651 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %323, i64 %76, i64 4
  store double %650, double* %651, align 8, !tbaa !8
  %652 = load double, double* %354, align 8, !tbaa !8
  %653 = fsub double -0.000000e+00, %652
  %654 = bitcast double* %499 to i64*
  %655 = load i64, i64* %654, align 8, !tbaa !8
  %656 = load double, double* %478, align 8, !tbaa !8
  %657 = bitcast i64 %655 to double
  %658 = tail call double @llvm.fmuladd.f64(double %653, double %657, double %656)
  store double %658, double* %478, align 8, !tbaa !8
  %659 = bitcast double* %501 to i64*
  %660 = load i64, i64* %659, align 8, !tbaa !8
  %661 = load double, double* %481, align 8, !tbaa !8
  %662 = bitcast i64 %660 to double
  %663 = tail call double @llvm.fmuladd.f64(double %653, double %662, double %661)
  store double %663, double* %481, align 8, !tbaa !8
  %664 = bitcast double* %503 to i64*
  %665 = load i64, i64* %664, align 8, !tbaa !8
  %666 = load double, double* %484, align 8, !tbaa !8
  %667 = bitcast i64 %665 to double
  %668 = tail call double @llvm.fmuladd.f64(double %653, double %667, double %666)
  store double %668, double* %484, align 8, !tbaa !8
  %669 = load double, double* %624, align 8, !tbaa !8
  %670 = load double, double* %361, align 8, !tbaa !8
  %671 = fsub double -0.000000e+00, %670
  %672 = tail call double @llvm.fmuladd.f64(double %671, double %648, double %669)
  store double %672, double* %624, align 8, !tbaa !8
  %673 = load double, double* %639, align 8, !tbaa !8
  %674 = load double, double* %368, align 8, !tbaa !8
  %675 = fsub double -0.000000e+00, %674
  %676 = tail call double @llvm.fmuladd.f64(double %675, double %650, double %673)
  store double %676, double* %639, align 8, !tbaa !8
  %677 = icmp sgt i32 %12, 2
  br i1 %677, label %678, label %737

; <label>:678:                                    ; preds = %605
  br label %679

; <label>:679:                                    ; preds = %678, %679
  %680 = phi double [ %731, %679 ], [ %676, %678 ]
  %681 = phi double [ %680, %679 ], [ %650, %678 ]
  %682 = phi double [ %721, %679 ], [ %672, %678 ]
  %683 = phi double [ %682, %679 ], [ %648, %678 ]
  %684 = phi double [ %711, %679 ], [ %668, %678 ]
  %685 = phi i64 [ %736, %679 ], [ %665, %678 ]
  %686 = phi double [ %706, %679 ], [ %663, %678 ]
  %687 = phi i64 [ %735, %679 ], [ %660, %678 ]
  %688 = phi double [ %701, %679 ], [ %658, %678 ]
  %689 = phi i64 [ %734, %679 ], [ %655, %678 ]
  %690 = phi i64 [ %732, %679 ], [ %292, %678 ]
  %691 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %690, i64 3
  %692 = load double, double* %691, align 8, !tbaa !8
  %693 = getelementptr inbounds [5 x double], [5 x double]* %36, i64 %690, i64 4
  %694 = load double, double* %693, align 8, !tbaa !8
  %695 = fsub double -0.000000e+00, %692
  %696 = fsub double -0.000000e+00, %694
  %697 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %690, i64 %76, i64 0
  %698 = load double, double* %697, align 8, !tbaa !8
  %699 = tail call double @llvm.fmuladd.f64(double %695, double %688, double %698)
  %700 = bitcast i64 %689 to double
  %701 = tail call double @llvm.fmuladd.f64(double %696, double %700, double %699)
  store double %701, double* %697, align 8, !tbaa !8
  %702 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %690, i64 %76, i64 1
  %703 = load double, double* %702, align 8, !tbaa !8
  %704 = tail call double @llvm.fmuladd.f64(double %695, double %686, double %703)
  %705 = bitcast i64 %687 to double
  %706 = tail call double @llvm.fmuladd.f64(double %696, double %705, double %704)
  store double %706, double* %702, align 8, !tbaa !8
  %707 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %690, i64 %76, i64 2
  %708 = load double, double* %707, align 8, !tbaa !8
  %709 = tail call double @llvm.fmuladd.f64(double %695, double %684, double %708)
  %710 = bitcast i64 %685 to double
  %711 = tail call double @llvm.fmuladd.f64(double %696, double %710, double %709)
  store double %711, double* %707, align 8, !tbaa !8
  %712 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %690, i64 %76, i64 3
  %713 = load double, double* %712, align 8, !tbaa !8
  %714 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %690, i64 3
  %715 = load double, double* %714, align 8, !tbaa !8
  %716 = fsub double -0.000000e+00, %715
  %717 = tail call double @llvm.fmuladd.f64(double %716, double %682, double %713)
  %718 = getelementptr inbounds [5 x double], [5 x double]* %38, i64 %690, i64 4
  %719 = load double, double* %718, align 8, !tbaa !8
  %720 = fsub double -0.000000e+00, %719
  %721 = tail call double @llvm.fmuladd.f64(double %720, double %683, double %717)
  store double %721, double* %712, align 8, !tbaa !8
  %722 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %71, i64 %74, i64 %690, i64 %76, i64 4
  %723 = load double, double* %722, align 8, !tbaa !8
  %724 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %690, i64 3
  %725 = load double, double* %724, align 8, !tbaa !8
  %726 = fsub double -0.000000e+00, %725
  %727 = tail call double @llvm.fmuladd.f64(double %726, double %680, double %723)
  %728 = getelementptr inbounds [5 x double], [5 x double]* %40, i64 %690, i64 4
  %729 = load double, double* %728, align 8, !tbaa !8
  %730 = fsub double -0.000000e+00, %729
  %731 = tail call double @llvm.fmuladd.f64(double %730, double %681, double %727)
  store double %731, double* %722, align 8, !tbaa !8
  %732 = add nsw i64 %690, -1
  %733 = icmp sgt i64 %690, 0
  %734 = bitcast double %688 to i64
  %735 = bitcast double %686 to i64
  %736 = bitcast double %684 to i64
  br i1 %733, label %679, label %737

; <label>:737:                                    ; preds = %679, %605, %13
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind readnone }

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
