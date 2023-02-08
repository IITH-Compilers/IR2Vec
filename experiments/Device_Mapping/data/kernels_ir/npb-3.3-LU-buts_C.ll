; ModuleID = 'npb-LU-buts.cl'
source_filename = "npb-LU-buts.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @buts(double* nocapture, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = alloca [5 x [5 x double]], align 16
  %12 = alloca [5 x [5 x double]], align 16
  %13 = alloca [5 x [5 x double]], align 16
  %14 = alloca [5 x [5 x double]], align 16
  %15 = alloca [5 x [5 x double]], align 16
  %16 = alloca [5 x double], align 16
  %17 = bitcast [5 x [5 x double]]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %17) #4
  %18 = bitcast [5 x [5 x double]]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %18) #4
  %19 = bitcast [5 x [5 x double]]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %19) #4
  %20 = bitcast [5 x [5 x double]]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %20) #4
  %21 = bitcast [5 x [5 x double]]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %21) #4
  %22 = bitcast [5 x double]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #4
  %23 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %24 = sext i32 %8 to i64
  %25 = add nsw i64 %24, 1
  %26 = add i64 %25, %23
  %27 = trunc i64 %26 to i32
  %28 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %29 = sext i32 %9 to i64
  %30 = add nsw i64 %29, 1
  %31 = add i64 %30, %28
  %32 = sext i32 %7 to i64
  %33 = add nsw i64 %32, 1
  %34 = sub nsw i64 %33, %24
  %35 = sub nsw i64 %34, %29
  %36 = sub i64 %35, %23
  %37 = sub i64 %36, %28
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %4, -1
  %40 = icmp sgt i32 %39, %27
  br i1 %40, label %41, label %915

; <label>:41:                                     ; preds = %10
  %42 = trunc i64 %31 to i32
  %43 = add nsw i32 %5, -1
  %44 = icmp sgt i32 %43, %42
  %45 = icmp sgt i32 %38, 0
  %46 = and i1 %44, %45
  %47 = add nsw i32 %6, -1
  %48 = icmp sgt i32 %47, %38
  %49 = and i1 %48, %46
  br i1 %49, label %50, label %915

; <label>:50:                                     ; preds = %41
  %51 = bitcast double* %0 to [163 x [163 x [5 x double]]]*
  %52 = bitcast double* %1 to [163 x [163 x [5 x double]]]*
  %53 = bitcast double* %2 to [163 x [163 x double]]*
  %54 = bitcast double* %3 to [163 x [163 x double]]*
  %55 = shl i64 %26, 32
  %56 = ashr exact i64 %55, 32
  %57 = shl i64 %31, 32
  %58 = ashr exact i64 %57, 32
  %59 = shl i64 %37, 32
  %60 = ashr exact i64 %59, 32
  %61 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %54, i64 %56, i64 %58, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fmul double %62, %62
  %64 = fmul double %62, %63
  %65 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 0
  store double 0x410FA45800000002, double* %65, align 16, !tbaa !8
  %66 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %66, align 8, !tbaa !8
  %67 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %67, align 16, !tbaa !8
  %68 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %69, align 16, !tbaa !8
  %70 = fmul double %63, 1.000000e-01
  %71 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 1
  %72 = load double, double* %71, align 8, !tbaa !8
  %73 = fmul double %70, %72
  %74 = fmul double %73, 0xC115183555555556
  %75 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 1
  store double %74, double* %75, align 8, !tbaa !8
  %76 = fmul double %62, 4.000000e-01
  %77 = tail call double @llvm.fmuladd.f64(double %76, double 0x40F5183555555556, double 1.000000e+00)
  %78 = fadd double %77, 0x410FA45000000002
  %79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 1
  store double %78, double* %79, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %80, align 8, !tbaa !8
  %81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %82, align 8, !tbaa !8
  %83 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 2
  %84 = load double, double* %83, align 8, !tbaa !8
  %85 = fmul double %70, %84
  %86 = fmul double %85, 0xC115183555555556
  %87 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 2
  store double %86, double* %87, align 16, !tbaa !8
  %88 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %88, align 8, !tbaa !8
  %89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 2
  store double %78, double* %89, align 16, !tbaa !8
  %90 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %90, align 8, !tbaa !8
  %91 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %91, align 16, !tbaa !8
  %92 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 3
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fmul double %70, %93
  %95 = fmul double %94, 0xC115183555555556
  %96 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 3
  store double %95, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %97, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %98, align 8, !tbaa !8
  %99 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 3
  store double %78, double* %99, align 8, !tbaa !8
  %100 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %100, align 8, !tbaa !8
  %101 = fmul double %72, %72
  %102 = fmul double %84, %84
  %103 = fmul double %102, 0xC0B9C936F46508DE
  %104 = tail call double @llvm.fmuladd.f64(double %101, double 0xC0B9C936F46508DF, double %103)
  %105 = fmul double %93, %93
  %106 = tail call double @llvm.fmuladd.f64(double %105, double 0xC0B9C936F46508DF, double %104)
  %107 = fmul double %63, 0x40CDC4C624DD2F1B
  %108 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %60, i64 4
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fmul double %107, %109
  %111 = tail call double @llvm.fmuladd.f64(double %106, double %64, double %110)
  %112 = fmul double %111, -4.000000e+00
  %113 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 0, i64 4
  store double %112, double* %113, align 16, !tbaa !8
  %114 = fmul double %63, 0xC0D9C936F46508DF
  %115 = fmul double %114, %72
  %116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 1, i64 4
  store double %115, double* %116, align 8, !tbaa !8
  %117 = fmul double %63, 0xC0D9C936F46508DE
  %118 = fmul double %117, %84
  %119 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 2, i64 4
  store double %118, double* %119, align 16, !tbaa !8
  %120 = fmul double %114, %93
  %121 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 3, i64 4
  store double %120, double* %121, align 8, !tbaa !8
  %122 = tail call double @llvm.fmuladd.f64(double %62, double 0x40EDC4C624DD2F1B, double 1.000000e+00)
  %123 = fadd double %122, 0x410FA45000000002
  %124 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %14, i64 0, i64 4, i64 4
  store double %123, double* %124, align 16, !tbaa !8
  %125 = add i64 %59, 4294967296
  %126 = ashr exact i64 %125, 32
  %127 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %54, i64 %56, i64 %58, i64 %126
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = fmul double %128, %128
  %130 = fmul double %128, %129
  %131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 0
  store double 0xC0E2FC3000000001, double* %131, align 16, !tbaa !8
  %132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 0
  store double 1.610000e+02, double* %132, align 8, !tbaa !8
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %133, align 16, !tbaa !8
  %134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %134, align 8, !tbaa !8
  %135 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %135, align 16, !tbaa !8
  %136 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %126, i64 1
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = fmul double %128, %137
  %139 = fsub double -0.000000e+00, %138
  %140 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %53, i64 %56, i64 %58, i64 %126
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = fmul double %141, 4.000000e-01
  %143 = fmul double %128, %142
  %144 = tail call double @llvm.fmuladd.f64(double %139, double %138, double %143)
  %145 = fmul double %129, 0xBFC1111111111111
  %146 = fmul double %145, %137
  %147 = fmul double %146, 0x40E9504000000001
  %148 = fsub double -0.000000e+00, %147
  %149 = tail call double @llvm.fmuladd.f64(double %144, double 1.610000e+02, double %148)
  %150 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 1
  store double %149, double* %150, align 8, !tbaa !8
  %151 = fmul double %138, 1.600000e+00
  %152 = fmul double %128, 0x3FC1111111111111
  %153 = fmul double %152, 0x40E9504000000001
  %154 = fsub double -0.000000e+00, %153
  %155 = tail call double @llvm.fmuladd.f64(double %151, double 1.610000e+02, double %154)
  %156 = fadd double %155, 0xC0E2FC3000000001
  %157 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 1
  store double %156, double* %157, align 8, !tbaa !8
  %158 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %126, i64 2
  %159 = load double, double* %158, align 8, !tbaa !8
  %160 = fmul double %128, %159
  %161 = fmul double %160, -4.000000e-01
  %162 = fmul double %161, 1.610000e+02
  %163 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 1
  store double %162, double* %163, align 8, !tbaa !8
  %164 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %126, i64 3
  %165 = load double, double* %164, align 8, !tbaa !8
  %166 = fmul double %128, %165
  %167 = fmul double %166, -4.000000e-01
  %168 = fmul double %167, 1.610000e+02
  %169 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 1
  store double %168, double* %169, align 8, !tbaa !8
  %170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 1
  store double 6.440000e+01, double* %170, align 8, !tbaa !8
  %171 = fmul double %137, %159
  %172 = fmul double %129, %171
  %173 = fsub double -0.000000e+00, %172
  %174 = fmul double %129, -1.000000e-01
  %175 = fmul double %174, %159
  %176 = fmul double %175, 0x40E9504000000001
  %177 = fsub double -0.000000e+00, %176
  %178 = tail call double @llvm.fmuladd.f64(double %173, double 1.610000e+02, double %177)
  %179 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 2
  store double %178, double* %179, align 16, !tbaa !8
  %180 = fmul double %160, 1.610000e+02
  %181 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 2
  store double %180, double* %181, align 8, !tbaa !8
  %182 = fmul double %128, 1.000000e-01
  %183 = fmul double %182, 0x40E9504000000001
  %184 = fsub double -0.000000e+00, %183
  %185 = tail call double @llvm.fmuladd.f64(double %138, double 1.610000e+02, double %184)
  %186 = fadd double %185, 0xC0E2FC3000000001
  %187 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 2
  store double %186, double* %187, align 16, !tbaa !8
  %188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %188, align 8, !tbaa !8
  %189 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %189, align 16, !tbaa !8
  %190 = fmul double %137, %165
  %191 = fmul double %129, %190
  %192 = fsub double -0.000000e+00, %191
  %193 = fmul double %174, %165
  %194 = fmul double %193, 0x40E9504000000001
  %195 = fsub double -0.000000e+00, %194
  %196 = tail call double @llvm.fmuladd.f64(double %192, double 1.610000e+02, double %195)
  %197 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 3
  store double %196, double* %197, align 8, !tbaa !8
  %198 = fmul double %166, 1.610000e+02
  %199 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 3
  store double %198, double* %199, align 8, !tbaa !8
  %200 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %200, align 8, !tbaa !8
  %201 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 3
  store double %186, double* %201, align 8, !tbaa !8
  %202 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %202, align 8, !tbaa !8
  %203 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %58, i64 %126, i64 4
  %204 = load double, double* %203, align 8, !tbaa !8
  %205 = fmul double %204, 1.400000e+00
  %206 = fsub double -0.000000e+00, %205
  %207 = tail call double @llvm.fmuladd.f64(double %141, double 8.000000e-01, double %206)
  %208 = fmul double %129, %137
  %209 = fmul double %208, %207
  %210 = fmul double %130, 0x3FB00AEC33E1F670
  %211 = fmul double %137, %137
  %212 = fmul double %130, 0xBFB89374BC6A7EF8
  %213 = fmul double %159, %159
  %214 = fmul double %212, %213
  %215 = fsub double -0.000000e+00, %214
  %216 = tail call double @llvm.fmuladd.f64(double %210, double %211, double %215)
  %217 = fmul double %165, %165
  %218 = fsub double -0.000000e+00, %212
  %219 = tail call double @llvm.fmuladd.f64(double %218, double %217, double %216)
  %220 = fmul double %129, 0x3FC916872B020C49
  %221 = fsub double -0.000000e+00, %220
  %222 = tail call double @llvm.fmuladd.f64(double %221, double %204, double %219)
  %223 = fmul double %222, 0x40E9504000000001
  %224 = fsub double -0.000000e+00, %223
  %225 = tail call double @llvm.fmuladd.f64(double %209, double 1.610000e+02, double %224)
  %226 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 0, i64 4
  store double %225, double* %226, align 16, !tbaa !8
  %227 = fmul double %128, %204
  %228 = fmul double %128, %141
  %229 = tail call double @llvm.fmuladd.f64(double %211, double %129, double %228)
  %230 = fmul double %229, 4.000000e-01
  %231 = fsub double -0.000000e+00, %230
  %232 = tail call double @llvm.fmuladd.f64(double %227, double 1.400000e+00, double %231)
  %233 = fmul double %129, 0xC0A96187D9C54A68
  %234 = fmul double %233, %137
  %235 = fsub double -0.000000e+00, %234
  %236 = tail call double @llvm.fmuladd.f64(double %232, double 1.610000e+02, double %235)
  %237 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 1, i64 4
  store double %236, double* %237, align 8, !tbaa !8
  %238 = fmul double %171, -4.000000e-01
  %239 = fmul double %129, %238
  %240 = fmul double %129, 0xC0B370D4FDF3B645
  %241 = fmul double %240, %159
  %242 = fsub double -0.000000e+00, %241
  %243 = tail call double @llvm.fmuladd.f64(double %239, double 1.610000e+02, double %242)
  %244 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 2, i64 4
  store double %243, double* %244, align 16, !tbaa !8
  %245 = fmul double %190, -4.000000e-01
  %246 = fmul double %129, %245
  %247 = fmul double %240, %165
  %248 = fsub double -0.000000e+00, %247
  %249 = tail call double @llvm.fmuladd.f64(double %246, double 1.610000e+02, double %248)
  %250 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 3, i64 4
  store double %249, double* %250, align 8, !tbaa !8
  %251 = fmul double %138, 1.400000e+00
  %252 = fmul double %128, 0x40C3D884189374BD
  %253 = fsub double -0.000000e+00, %252
  %254 = tail call double @llvm.fmuladd.f64(double %251, double 1.610000e+02, double %253)
  %255 = fadd double %254, 0xC0E2FC3000000001
  %256 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %11, i64 0, i64 4, i64 4
  store double %255, double* %256, align 16, !tbaa !8
  %257 = add i64 %57, 4294967296
  %258 = ashr exact i64 %257, 32
  %259 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %54, i64 %56, i64 %258, i64 %60
  %260 = load double, double* %259, align 8, !tbaa !8
  %261 = fmul double %260, %260
  %262 = fmul double %260, %261
  %263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 0
  store double 0xC0E2FC3000000001, double* %263, align 16, !tbaa !8
  %264 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %264, align 8, !tbaa !8
  %265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 0
  store double 1.610000e+02, double* %265, align 16, !tbaa !8
  %266 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %266, align 8, !tbaa !8
  %267 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %267, align 16, !tbaa !8
  %268 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %258, i64 %60, i64 1
  %269 = load double, double* %268, align 8, !tbaa !8
  %270 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %258, i64 %60, i64 2
  %271 = load double, double* %270, align 8, !tbaa !8
  %272 = fmul double %269, %271
  %273 = fmul double %261, %272
  %274 = fsub double -0.000000e+00, %273
  %275 = fmul double %261, -1.000000e-01
  %276 = fmul double %275, %269
  %277 = fmul double %276, 0x40E9504000000001
  %278 = fsub double -0.000000e+00, %277
  %279 = tail call double @llvm.fmuladd.f64(double %274, double 1.610000e+02, double %278)
  %280 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 1
  store double %279, double* %280, align 8, !tbaa !8
  %281 = fmul double %260, %271
  %282 = fmul double %260, 1.000000e-01
  %283 = fmul double %282, 0x40E9504000000001
  %284 = fsub double -0.000000e+00, %283
  %285 = tail call double @llvm.fmuladd.f64(double %281, double 1.610000e+02, double %284)
  %286 = fadd double %285, 0xC0E2FC3000000001
  %287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 1
  store double %286, double* %287, align 8, !tbaa !8
  %288 = fmul double %260, %269
  %289 = fmul double %288, 1.610000e+02
  %290 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 1
  store double %289, double* %290, align 8, !tbaa !8
  %291 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %291, align 8, !tbaa !8
  %292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %292, align 8, !tbaa !8
  %293 = fsub double -0.000000e+00, %281
  %294 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %53, i64 %56, i64 %258, i64 %60
  %295 = load double, double* %294, align 8, !tbaa !8
  %296 = fmul double %260, %295
  %297 = fmul double %296, 4.000000e-01
  %298 = tail call double @llvm.fmuladd.f64(double %293, double %281, double %297)
  %299 = fmul double %261, 0xBFC1111111111111
  %300 = fmul double %299, %271
  %301 = fmul double %300, 0x40E9504000000001
  %302 = fsub double -0.000000e+00, %301
  %303 = tail call double @llvm.fmuladd.f64(double %298, double 1.610000e+02, double %302)
  %304 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 2
  store double %303, double* %304, align 16, !tbaa !8
  %305 = fmul double %288, -4.000000e-01
  %306 = fmul double %305, 1.610000e+02
  %307 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 2
  store double %306, double* %307, align 8, !tbaa !8
  %308 = fmul double %281, 1.600000e+00
  %309 = fmul double %260, 0x3FC1111111111111
  %310 = fmul double %309, 0x40E9504000000001
  %311 = fsub double -0.000000e+00, %310
  %312 = tail call double @llvm.fmuladd.f64(double %308, double 1.610000e+02, double %311)
  %313 = fadd double %312, 0xC0E2FC3000000001
  %314 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 2
  store double %313, double* %314, align 16, !tbaa !8
  %315 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %258, i64 %60, i64 3
  %316 = load double, double* %315, align 8, !tbaa !8
  %317 = fmul double %260, %316
  %318 = fmul double %317, -4.000000e-01
  %319 = fmul double %318, 1.610000e+02
  %320 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 2
  store double %319, double* %320, align 8, !tbaa !8
  %321 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 2
  store double 6.440000e+01, double* %321, align 16, !tbaa !8
  %322 = fmul double %271, %316
  %323 = fmul double %261, %322
  %324 = fsub double -0.000000e+00, %323
  %325 = fmul double %275, %316
  %326 = fmul double %325, 0x40E9504000000001
  %327 = fsub double -0.000000e+00, %326
  %328 = tail call double @llvm.fmuladd.f64(double %324, double 1.610000e+02, double %327)
  %329 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 3
  store double %328, double* %329, align 8, !tbaa !8
  %330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %330, align 8, !tbaa !8
  %331 = fmul double %317, 1.610000e+02
  %332 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 3
  store double %331, double* %332, align 8, !tbaa !8
  %333 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 3
  store double %286, double* %333, align 8, !tbaa !8
  %334 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %334, align 8, !tbaa !8
  %335 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %56, i64 %258, i64 %60, i64 4
  %336 = load double, double* %335, align 8, !tbaa !8
  %337 = fmul double %336, 1.400000e+00
  %338 = fsub double -0.000000e+00, %337
  %339 = tail call double @llvm.fmuladd.f64(double %295, double 8.000000e-01, double %338)
  %340 = fmul double %261, %271
  %341 = fmul double %340, %339
  %342 = fmul double %262, 0x3FB89374BC6A7EF8
  %343 = fmul double %269, %269
  %344 = fmul double %262, 0xBFB00AEC33E1F670
  %345 = fmul double %271, %271
  %346 = fmul double %344, %345
  %347 = fsub double -0.000000e+00, %346
  %348 = tail call double @llvm.fmuladd.f64(double %342, double %343, double %347)
  %349 = fmul double %316, %316
  %350 = tail call double @llvm.fmuladd.f64(double %342, double %349, double %348)
  %351 = fmul double %261, 0x3FC916872B020C49
  %352 = fsub double -0.000000e+00, %351
  %353 = tail call double @llvm.fmuladd.f64(double %352, double %336, double %350)
  %354 = fmul double %353, 0x40E9504000000001
  %355 = fsub double -0.000000e+00, %354
  %356 = tail call double @llvm.fmuladd.f64(double %341, double 1.610000e+02, double %355)
  %357 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 0, i64 4
  store double %356, double* %357, align 16, !tbaa !8
  %358 = fmul double %272, -4.000000e-01
  %359 = fmul double %261, %358
  %360 = fmul double %261, 0xC0B370D4FDF3B645
  %361 = fmul double %360, %269
  %362 = fsub double -0.000000e+00, %361
  %363 = tail call double @llvm.fmuladd.f64(double %359, double 1.610000e+02, double %362)
  %364 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 1, i64 4
  store double %363, double* %364, align 8, !tbaa !8
  %365 = fmul double %260, %336
  %366 = fmul double %261, %345
  %367 = tail call double @llvm.fmuladd.f64(double %295, double %260, double %366)
  %368 = fmul double %367, 4.000000e-01
  %369 = fsub double -0.000000e+00, %368
  %370 = tail call double @llvm.fmuladd.f64(double %365, double 1.400000e+00, double %369)
  %371 = fmul double %261, 0xC0A96187D9C54A68
  %372 = fmul double %371, %271
  %373 = fsub double -0.000000e+00, %372
  %374 = tail call double @llvm.fmuladd.f64(double %370, double 1.610000e+02, double %373)
  %375 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 2, i64 4
  store double %374, double* %375, align 16, !tbaa !8
  %376 = fmul double %322, -4.000000e-01
  %377 = fmul double %261, %376
  %378 = fmul double %360, %316
  %379 = fsub double -0.000000e+00, %378
  %380 = tail call double @llvm.fmuladd.f64(double %377, double 1.610000e+02, double %379)
  %381 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 3, i64 4
  store double %380, double* %381, align 8, !tbaa !8
  %382 = fmul double %281, 1.400000e+00
  %383 = fmul double %260, 0x40C3D884189374BD
  %384 = fsub double -0.000000e+00, %383
  %385 = tail call double @llvm.fmuladd.f64(double %382, double 1.610000e+02, double %384)
  %386 = fadd double %385, 0xC0E2FC3000000001
  %387 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %12, i64 0, i64 4, i64 4
  store double %386, double* %387, align 16, !tbaa !8
  %388 = add i64 %55, 4294967296
  %389 = ashr exact i64 %388, 32
  %390 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %54, i64 %389, i64 %58, i64 %60
  %391 = load double, double* %390, align 8, !tbaa !8
  %392 = fmul double %391, %391
  %393 = fmul double %391, %392
  %394 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 0
  store double 0xC0E9504000000001, double* %394, align 16, !tbaa !8
  %395 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %395, align 8, !tbaa !8
  %396 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %396, align 16, !tbaa !8
  %397 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 0
  store double 1.610000e+02, double* %397, align 8, !tbaa !8
  %398 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %398, align 16, !tbaa !8
  %399 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %389, i64 %58, i64 %60, i64 1
  %400 = load double, double* %399, align 8, !tbaa !8
  %401 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %389, i64 %58, i64 %60, i64 3
  %402 = load double, double* %401, align 8, !tbaa !8
  %403 = fmul double %400, %402
  %404 = fmul double %392, %403
  %405 = fsub double -0.000000e+00, %404
  %406 = fmul double %392, -1.000000e-01
  %407 = fmul double %406, %400
  %408 = fmul double %407, 0x40E9504000000001
  %409 = fsub double -0.000000e+00, %408
  %410 = tail call double @llvm.fmuladd.f64(double %405, double 1.610000e+02, double %409)
  %411 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 1
  store double %410, double* %411, align 8, !tbaa !8
  %412 = fmul double %391, %402
  %413 = fmul double %391, 0x40B4403333333334
  %414 = fsub double -0.000000e+00, %413
  %415 = tail call double @llvm.fmuladd.f64(double %412, double 1.610000e+02, double %414)
  %416 = fadd double %415, 0xC0E9504000000001
  %417 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 1
  store double %416, double* %417, align 8, !tbaa !8
  %418 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %418, align 8, !tbaa !8
  %419 = fmul double %391, %400
  %420 = fmul double %419, 1.610000e+02
  %421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 1
  store double %420, double* %421, align 8, !tbaa !8
  %422 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %422, align 8, !tbaa !8
  %423 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %389, i64 %58, i64 %60, i64 2
  %424 = load double, double* %423, align 8, !tbaa !8
  %425 = fmul double %402, %424
  %426 = fmul double %392, %425
  %427 = fsub double -0.000000e+00, %426
  %428 = fmul double %406, %424
  %429 = fmul double %428, 0x40E9504000000001
  %430 = fsub double -0.000000e+00, %429
  %431 = tail call double @llvm.fmuladd.f64(double %427, double 1.610000e+02, double %430)
  %432 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 2
  store double %431, double* %432, align 16, !tbaa !8
  %433 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %433, align 8, !tbaa !8
  %434 = fmul double %391, 1.000000e-01
  %435 = fmul double %434, 0x40E9504000000001
  %436 = fsub double -0.000000e+00, %435
  %437 = tail call double @llvm.fmuladd.f64(double %412, double 1.610000e+02, double %436)
  %438 = fadd double %437, 0xC0E9504000000001
  %439 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 2
  store double %438, double* %439, align 16, !tbaa !8
  %440 = fmul double %391, %424
  %441 = fmul double %440, 1.610000e+02
  %442 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 2
  store double %441, double* %442, align 8, !tbaa !8
  %443 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %443, align 16, !tbaa !8
  %444 = fsub double -0.000000e+00, %412
  %445 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %53, i64 %389, i64 %58, i64 %60
  %446 = load double, double* %445, align 8, !tbaa !8
  %447 = fmul double %391, %446
  %448 = fmul double %447, 4.000000e-01
  %449 = tail call double @llvm.fmuladd.f64(double %444, double %412, double %448)
  %450 = fmul double %392, 0xBFC1111111111111
  %451 = fmul double %450, %402
  %452 = fmul double %451, 0x40E9504000000001
  %453 = fsub double -0.000000e+00, %452
  %454 = tail call double @llvm.fmuladd.f64(double %449, double 1.610000e+02, double %453)
  %455 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 3
  store double %454, double* %455, align 8, !tbaa !8
  %456 = fmul double %419, -4.000000e-01
  %457 = fmul double %456, 1.610000e+02
  %458 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 3
  store double %457, double* %458, align 8, !tbaa !8
  %459 = fmul double %440, -4.000000e-01
  %460 = fmul double %459, 1.610000e+02
  %461 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 3
  store double %460, double* %461, align 8, !tbaa !8
  %462 = fmul double %391, 0x3FC1111111111111
  %463 = fmul double %462, 0x40E9504000000001
  %464 = fsub double -0.000000e+00, %463
  %465 = tail call double @llvm.fmuladd.f64(double %412, double 2.576000e+02, double %464)
  %466 = fadd double %465, 0xC0E9504000000001
  %467 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 3
  store double %466, double* %467, align 8, !tbaa !8
  %468 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 3
  store double 6.440000e+01, double* %468, align 8, !tbaa !8
  %469 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %52, i64 %389, i64 %58, i64 %60, i64 4
  %470 = load double, double* %469, align 8, !tbaa !8
  %471 = fmul double %470, 1.400000e+00
  %472 = fsub double -0.000000e+00, %471
  %473 = tail call double @llvm.fmuladd.f64(double %446, double 8.000000e-01, double %472)
  %474 = fmul double %392, %402
  %475 = fmul double %474, %473
  %476 = fmul double %393, 0x3FB89374BC6A7EF8
  %477 = fmul double %400, %400
  %478 = fmul double %393, 0xBFB89374BC6A7EF8
  %479 = fmul double %424, %424
  %480 = fmul double %478, %479
  %481 = fsub double -0.000000e+00, %480
  %482 = tail call double @llvm.fmuladd.f64(double %476, double %477, double %481)
  %483 = fmul double %393, 0x3FB00AEC33E1F670
  %484 = fmul double %402, %402
  %485 = tail call double @llvm.fmuladd.f64(double %483, double %484, double %482)
  %486 = fmul double %392, 0x3FC916872B020C49
  %487 = fsub double -0.000000e+00, %486
  %488 = tail call double @llvm.fmuladd.f64(double %487, double %470, double %485)
  %489 = fmul double %488, 0x40E9504000000001
  %490 = fsub double -0.000000e+00, %489
  %491 = tail call double @llvm.fmuladd.f64(double %475, double 1.610000e+02, double %490)
  %492 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 0, i64 4
  store double %491, double* %492, align 16, !tbaa !8
  %493 = fmul double %403, -4.000000e-01
  %494 = fmul double %392, %493
  %495 = fmul double %392, 0xC0B370D4FDF3B645
  %496 = fmul double %495, %400
  %497 = fsub double -0.000000e+00, %496
  %498 = tail call double @llvm.fmuladd.f64(double %494, double 1.610000e+02, double %497)
  %499 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 1, i64 4
  store double %498, double* %499, align 8, !tbaa !8
  %500 = fmul double %425, -4.000000e-01
  %501 = fmul double %392, %500
  %502 = fmul double %495, %424
  %503 = fsub double -0.000000e+00, %502
  %504 = tail call double @llvm.fmuladd.f64(double %501, double 1.610000e+02, double %503)
  %505 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 2, i64 4
  store double %504, double* %505, align 16, !tbaa !8
  %506 = fmul double %391, %470
  %507 = fmul double %392, %484
  %508 = tail call double @llvm.fmuladd.f64(double %446, double %391, double %507)
  %509 = fmul double %508, 4.000000e-01
  %510 = fsub double -0.000000e+00, %509
  %511 = tail call double @llvm.fmuladd.f64(double %506, double 1.400000e+00, double %510)
  %512 = fmul double %392, 0xC0A96187D9C54A68
  %513 = fmul double %512, %402
  %514 = fsub double -0.000000e+00, %513
  %515 = tail call double @llvm.fmuladd.f64(double %511, double 1.610000e+02, double %514)
  %516 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 3, i64 4
  store double %515, double* %516, align 8, !tbaa !8
  %517 = fmul double %412, 1.400000e+00
  %518 = fmul double %391, 0x40C3D884189374BD
  %519 = fsub double -0.000000e+00, %518
  %520 = tail call double @llvm.fmuladd.f64(double %517, double 1.610000e+02, double %519)
  %521 = fadd double %520, 0xC0E9504000000001
  %522 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %13, i64 0, i64 4, i64 4
  store double %521, double* %522, align 16, !tbaa !8
  %523 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %389, i64 %58, i64 %60, i64 0
  %524 = load double, double* %523, align 8, !tbaa !8
  %525 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %389, i64 %58, i64 %60, i64 1
  %526 = load double, double* %525, align 8, !tbaa !8
  %527 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %389, i64 %58, i64 %60, i64 2
  %528 = load double, double* %527, align 8, !tbaa !8
  %529 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %389, i64 %58, i64 %60, i64 3
  %530 = load double, double* %529, align 8, !tbaa !8
  %531 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %389, i64 %58, i64 %60, i64 4
  %532 = load double, double* %531, align 8, !tbaa !8
  %533 = load double, double* %394, align 16, !tbaa !8
  %534 = load double, double* %395, align 8, !tbaa !8
  %535 = fmul double %534, %526
  %536 = tail call double @llvm.fmuladd.f64(double %533, double %524, double %535)
  %537 = load double, double* %396, align 16, !tbaa !8
  %538 = tail call double @llvm.fmuladd.f64(double %537, double %528, double %536)
  %539 = load double, double* %397, align 8, !tbaa !8
  %540 = tail call double @llvm.fmuladd.f64(double %539, double %530, double %538)
  %541 = load double, double* %398, align 16, !tbaa !8
  %542 = tail call double @llvm.fmuladd.f64(double %541, double %532, double %540)
  %543 = fmul double %542, 1.200000e+00
  %544 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %545 = load double, double* %411, align 8, !tbaa !8
  %546 = load double, double* %417, align 8, !tbaa !8
  %547 = fmul double %546, %526
  %548 = tail call double @llvm.fmuladd.f64(double %545, double %524, double %547)
  %549 = load double, double* %418, align 8, !tbaa !8
  %550 = tail call double @llvm.fmuladd.f64(double %549, double %528, double %548)
  %551 = load double, double* %421, align 8, !tbaa !8
  %552 = tail call double @llvm.fmuladd.f64(double %551, double %530, double %550)
  %553 = load double, double* %422, align 8, !tbaa !8
  %554 = tail call double @llvm.fmuladd.f64(double %553, double %532, double %552)
  %555 = fmul double %554, 1.200000e+00
  %556 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %557 = load double, double* %432, align 16, !tbaa !8
  %558 = load double, double* %433, align 8, !tbaa !8
  %559 = fmul double %558, %526
  %560 = tail call double @llvm.fmuladd.f64(double %557, double %524, double %559)
  %561 = load double, double* %439, align 16, !tbaa !8
  %562 = tail call double @llvm.fmuladd.f64(double %561, double %528, double %560)
  %563 = load double, double* %442, align 8, !tbaa !8
  %564 = tail call double @llvm.fmuladd.f64(double %563, double %530, double %562)
  %565 = load double, double* %443, align 16, !tbaa !8
  %566 = tail call double @llvm.fmuladd.f64(double %565, double %532, double %564)
  %567 = fmul double %566, 1.200000e+00
  %568 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  store double %567, double* %568, align 16, !tbaa !8
  %569 = load double, double* %455, align 8, !tbaa !8
  %570 = load double, double* %458, align 8, !tbaa !8
  %571 = fmul double %570, %526
  %572 = tail call double @llvm.fmuladd.f64(double %569, double %524, double %571)
  %573 = load double, double* %461, align 8, !tbaa !8
  %574 = tail call double @llvm.fmuladd.f64(double %573, double %528, double %572)
  %575 = load double, double* %467, align 8, !tbaa !8
  %576 = tail call double @llvm.fmuladd.f64(double %575, double %530, double %574)
  %577 = load double, double* %468, align 8, !tbaa !8
  %578 = tail call double @llvm.fmuladd.f64(double %577, double %532, double %576)
  %579 = fmul double %578, 1.200000e+00
  %580 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  store double %579, double* %580, align 8, !tbaa !8
  %581 = fmul double %498, %526
  %582 = tail call double @llvm.fmuladd.f64(double %491, double %524, double %581)
  %583 = tail call double @llvm.fmuladd.f64(double %504, double %528, double %582)
  %584 = tail call double @llvm.fmuladd.f64(double %515, double %530, double %583)
  %585 = tail call double @llvm.fmuladd.f64(double %521, double %532, double %584)
  %586 = fmul double %585, 1.200000e+00
  %587 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  store double %586, double* %587, align 16, !tbaa !8
  %588 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %258, i64 %60, i64 0
  %589 = load double, double* %588, align 8, !tbaa !8
  %590 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %126, i64 0
  %591 = load double, double* %590, align 8, !tbaa !8
  %592 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %258, i64 %60, i64 1
  %593 = load double, double* %592, align 8, !tbaa !8
  %594 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %126, i64 1
  %595 = load double, double* %594, align 8, !tbaa !8
  %596 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %258, i64 %60, i64 2
  %597 = load double, double* %596, align 8, !tbaa !8
  %598 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %126, i64 2
  %599 = load double, double* %598, align 8, !tbaa !8
  %600 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %258, i64 %60, i64 3
  %601 = load double, double* %600, align 8, !tbaa !8
  %602 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %126, i64 3
  %603 = load double, double* %602, align 8, !tbaa !8
  %604 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %258, i64 %60, i64 4
  %605 = load double, double* %604, align 8, !tbaa !8
  %606 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %126, i64 4
  %607 = load double, double* %606, align 8, !tbaa !8
  %608 = load double, double* %263, align 16, !tbaa !8
  %609 = load double, double* %131, align 16, !tbaa !8
  %610 = fmul double %609, %591
  %611 = tail call double @llvm.fmuladd.f64(double %608, double %589, double %610)
  %612 = load double, double* %264, align 8, !tbaa !8
  %613 = tail call double @llvm.fmuladd.f64(double %612, double %593, double %611)
  %614 = load double, double* %132, align 8, !tbaa !8
  %615 = tail call double @llvm.fmuladd.f64(double %614, double %595, double %613)
  %616 = load double, double* %265, align 16, !tbaa !8
  %617 = tail call double @llvm.fmuladd.f64(double %616, double %597, double %615)
  %618 = load double, double* %133, align 16, !tbaa !8
  %619 = tail call double @llvm.fmuladd.f64(double %618, double %599, double %617)
  %620 = load double, double* %266, align 8, !tbaa !8
  %621 = tail call double @llvm.fmuladd.f64(double %620, double %601, double %619)
  %622 = load double, double* %134, align 8, !tbaa !8
  %623 = tail call double @llvm.fmuladd.f64(double %622, double %603, double %621)
  %624 = load double, double* %267, align 16, !tbaa !8
  %625 = tail call double @llvm.fmuladd.f64(double %624, double %605, double %623)
  %626 = load double, double* %135, align 16, !tbaa !8
  %627 = tail call double @llvm.fmuladd.f64(double %626, double %607, double %625)
  %628 = tail call double @llvm.fmuladd.f64(double %627, double 1.200000e+00, double %543)
  store double %628, double* %544, align 16, !tbaa !8
  %629 = load double, double* %280, align 8, !tbaa !8
  %630 = load double, double* %150, align 8, !tbaa !8
  %631 = fmul double %630, %591
  %632 = tail call double @llvm.fmuladd.f64(double %629, double %589, double %631)
  %633 = load double, double* %287, align 8, !tbaa !8
  %634 = tail call double @llvm.fmuladd.f64(double %633, double %593, double %632)
  %635 = load double, double* %157, align 8, !tbaa !8
  %636 = tail call double @llvm.fmuladd.f64(double %635, double %595, double %634)
  %637 = load double, double* %290, align 8, !tbaa !8
  %638 = tail call double @llvm.fmuladd.f64(double %637, double %597, double %636)
  %639 = load double, double* %163, align 8, !tbaa !8
  %640 = tail call double @llvm.fmuladd.f64(double %639, double %599, double %638)
  %641 = load double, double* %291, align 8, !tbaa !8
  %642 = tail call double @llvm.fmuladd.f64(double %641, double %601, double %640)
  %643 = load double, double* %169, align 8, !tbaa !8
  %644 = tail call double @llvm.fmuladd.f64(double %643, double %603, double %642)
  %645 = load double, double* %292, align 8, !tbaa !8
  %646 = tail call double @llvm.fmuladd.f64(double %645, double %605, double %644)
  %647 = load double, double* %170, align 8, !tbaa !8
  %648 = tail call double @llvm.fmuladd.f64(double %647, double %607, double %646)
  %649 = tail call double @llvm.fmuladd.f64(double %648, double 1.200000e+00, double %555)
  store double %649, double* %556, align 8, !tbaa !8
  %650 = load double, double* %304, align 16, !tbaa !8
  %651 = load double, double* %179, align 16, !tbaa !8
  %652 = fmul double %651, %591
  %653 = tail call double @llvm.fmuladd.f64(double %650, double %589, double %652)
  %654 = load double, double* %307, align 8, !tbaa !8
  %655 = tail call double @llvm.fmuladd.f64(double %654, double %593, double %653)
  %656 = load double, double* %181, align 8, !tbaa !8
  %657 = tail call double @llvm.fmuladd.f64(double %656, double %595, double %655)
  %658 = load double, double* %314, align 16, !tbaa !8
  %659 = tail call double @llvm.fmuladd.f64(double %658, double %597, double %657)
  %660 = load double, double* %187, align 16, !tbaa !8
  %661 = tail call double @llvm.fmuladd.f64(double %660, double %599, double %659)
  %662 = load double, double* %320, align 8, !tbaa !8
  %663 = tail call double @llvm.fmuladd.f64(double %662, double %601, double %661)
  %664 = load double, double* %188, align 8, !tbaa !8
  %665 = tail call double @llvm.fmuladd.f64(double %664, double %603, double %663)
  %666 = load double, double* %321, align 16, !tbaa !8
  %667 = tail call double @llvm.fmuladd.f64(double %666, double %605, double %665)
  %668 = load double, double* %189, align 16, !tbaa !8
  %669 = tail call double @llvm.fmuladd.f64(double %668, double %607, double %667)
  %670 = tail call double @llvm.fmuladd.f64(double %669, double 1.200000e+00, double %567)
  store double %670, double* %568, align 16, !tbaa !8
  %671 = load double, double* %329, align 8, !tbaa !8
  %672 = load double, double* %197, align 8, !tbaa !8
  %673 = fmul double %672, %591
  %674 = tail call double @llvm.fmuladd.f64(double %671, double %589, double %673)
  %675 = load double, double* %330, align 8, !tbaa !8
  %676 = tail call double @llvm.fmuladd.f64(double %675, double %593, double %674)
  %677 = load double, double* %199, align 8, !tbaa !8
  %678 = tail call double @llvm.fmuladd.f64(double %677, double %595, double %676)
  %679 = load double, double* %332, align 8, !tbaa !8
  %680 = tail call double @llvm.fmuladd.f64(double %679, double %597, double %678)
  %681 = load double, double* %200, align 8, !tbaa !8
  %682 = tail call double @llvm.fmuladd.f64(double %681, double %599, double %680)
  %683 = load double, double* %333, align 8, !tbaa !8
  %684 = tail call double @llvm.fmuladd.f64(double %683, double %601, double %682)
  %685 = load double, double* %201, align 8, !tbaa !8
  %686 = tail call double @llvm.fmuladd.f64(double %685, double %603, double %684)
  %687 = load double, double* %334, align 8, !tbaa !8
  %688 = tail call double @llvm.fmuladd.f64(double %687, double %605, double %686)
  %689 = load double, double* %202, align 8, !tbaa !8
  %690 = tail call double @llvm.fmuladd.f64(double %689, double %607, double %688)
  %691 = tail call double @llvm.fmuladd.f64(double %690, double 1.200000e+00, double %579)
  store double %691, double* %580, align 8, !tbaa !8
  %692 = load double, double* %587, align 16, !tbaa !8
  %693 = load double, double* %357, align 16, !tbaa !8
  %694 = load double, double* %226, align 16, !tbaa !8
  %695 = fmul double %694, %591
  %696 = tail call double @llvm.fmuladd.f64(double %693, double %589, double %695)
  %697 = load double, double* %364, align 8, !tbaa !8
  %698 = tail call double @llvm.fmuladd.f64(double %697, double %593, double %696)
  %699 = load double, double* %237, align 8, !tbaa !8
  %700 = tail call double @llvm.fmuladd.f64(double %699, double %595, double %698)
  %701 = load double, double* %375, align 16, !tbaa !8
  %702 = tail call double @llvm.fmuladd.f64(double %701, double %597, double %700)
  %703 = load double, double* %244, align 16, !tbaa !8
  %704 = tail call double @llvm.fmuladd.f64(double %703, double %599, double %702)
  %705 = load double, double* %381, align 8, !tbaa !8
  %706 = tail call double @llvm.fmuladd.f64(double %705, double %601, double %704)
  %707 = load double, double* %250, align 8, !tbaa !8
  %708 = tail call double @llvm.fmuladd.f64(double %707, double %603, double %706)
  %709 = load double, double* %387, align 16, !tbaa !8
  %710 = tail call double @llvm.fmuladd.f64(double %709, double %605, double %708)
  %711 = load double, double* %256, align 16, !tbaa !8
  %712 = tail call double @llvm.fmuladd.f64(double %711, double %607, double %710)
  %713 = tail call double @llvm.fmuladd.f64(double %712, double 1.200000e+00, double %692)
  store double %713, double* %587, align 16, !tbaa !8
  %714 = bitcast [5 x [5 x double]]* %14 to i64*
  %715 = load i64, i64* %714, align 16, !tbaa !8
  %716 = bitcast [5 x [5 x double]]* %15 to i64*
  store i64 %715, i64* %716, align 16, !tbaa !8
  %717 = bitcast double* %66 to i64*
  %718 = load i64, i64* %717, align 8, !tbaa !8
  %719 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 1
  %720 = bitcast double* %719 to i64*
  store i64 %718, i64* %720, align 8, !tbaa !8
  %721 = bitcast double* %67 to i64*
  %722 = load i64, i64* %721, align 16, !tbaa !8
  %723 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 2
  %724 = bitcast double* %723 to i64*
  store i64 %722, i64* %724, align 16, !tbaa !8
  %725 = bitcast double* %68 to i64*
  %726 = load i64, i64* %725, align 8, !tbaa !8
  %727 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 3
  %728 = bitcast double* %727 to i64*
  store i64 %726, i64* %728, align 8, !tbaa !8
  %729 = bitcast double* %69 to i64*
  %730 = load i64, i64* %729, align 16, !tbaa !8
  %731 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 4
  %732 = bitcast double* %731 to i64*
  store i64 %730, i64* %732, align 16, !tbaa !8
  %733 = bitcast double* %75 to i64*
  %734 = load i64, i64* %733, align 8, !tbaa !8
  %735 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1
  %736 = bitcast [5 x double]* %735 to i64*
  store i64 %734, i64* %736, align 8, !tbaa !8
  %737 = bitcast double* %79 to i64*
  %738 = load i64, i64* %737, align 8, !tbaa !8
  %739 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 1
  %740 = bitcast double* %739 to i64*
  store i64 %738, i64* %740, align 8, !tbaa !8
  %741 = bitcast double* %80 to i64*
  %742 = load i64, i64* %741, align 8, !tbaa !8
  %743 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 2
  %744 = bitcast double* %743 to i64*
  store i64 %742, i64* %744, align 8, !tbaa !8
  %745 = load double, double* %81, align 8, !tbaa !8
  %746 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 3
  %747 = load double, double* %82, align 8, !tbaa !8
  %748 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 4
  %749 = bitcast double* %87 to i64*
  %750 = load i64, i64* %749, align 16, !tbaa !8
  %751 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2
  %752 = bitcast [5 x double]* %751 to i64*
  store i64 %750, i64* %752, align 16, !tbaa !8
  %753 = bitcast double* %88 to i64*
  %754 = load i64, i64* %753, align 8, !tbaa !8
  %755 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 1
  %756 = bitcast double* %755 to i64*
  store i64 %754, i64* %756, align 8, !tbaa !8
  %757 = load double, double* %89, align 16, !tbaa !8
  %758 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 2
  %759 = load double, double* %90, align 8, !tbaa !8
  %760 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 3
  %761 = load double, double* %91, align 16, !tbaa !8
  %762 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 4
  %763 = bitcast double* %96 to i64*
  %764 = load i64, i64* %763, align 8, !tbaa !8
  %765 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3
  %766 = bitcast [5 x double]* %765 to i64*
  store i64 %764, i64* %766, align 8, !tbaa !8
  %767 = load double, double* %97, align 8, !tbaa !8
  %768 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 1
  %769 = load double, double* %98, align 8, !tbaa !8
  %770 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 2
  %771 = load double, double* %99, align 8, !tbaa !8
  %772 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 3
  %773 = load double, double* %100, align 8, !tbaa !8
  %774 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 3, i64 4
  %775 = bitcast double* %113 to i64*
  %776 = load i64, i64* %775, align 16, !tbaa !8
  %777 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4
  %778 = bitcast [5 x double]* %777 to i64*
  store i64 %776, i64* %778, align 16, !tbaa !8
  %779 = load double, double* %116, align 8, !tbaa !8
  %780 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 1
  %781 = load double, double* %119, align 16, !tbaa !8
  %782 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 2
  %783 = load double, double* %121, align 8, !tbaa !8
  %784 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 3
  %785 = load double, double* %124, align 16, !tbaa !8
  %786 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 4, i64 4
  %787 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 0, i64 0
  %788 = load double, double* %787, align 16, !tbaa !8
  %789 = fdiv double 1.000000e+00, %788
  %790 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 1, i64 0
  %791 = load double, double* %790, align 8, !tbaa !8
  %792 = fmul double %789, %791
  %793 = bitcast i64 %738 to double
  %794 = load double, double* %719, align 8, !tbaa !8
  %795 = fsub double -0.000000e+00, %792
  %796 = tail call double @llvm.fmuladd.f64(double %795, double %794, double %793)
  store double %796, double* %739, align 8, !tbaa !8
  %797 = bitcast i64 %742 to double
  %798 = load double, double* %723, align 16, !tbaa !8
  %799 = tail call double @llvm.fmuladd.f64(double %795, double %798, double %797)
  store double %799, double* %743, align 8, !tbaa !8
  %800 = load double, double* %727, align 8, !tbaa !8
  %801 = tail call double @llvm.fmuladd.f64(double %795, double %800, double %745)
  store double %801, double* %746, align 8, !tbaa !8
  %802 = load double, double* %731, align 16, !tbaa !8
  %803 = tail call double @llvm.fmuladd.f64(double %795, double %802, double %747)
  store double %803, double* %748, align 8, !tbaa !8
  %804 = load double, double* %556, align 8, !tbaa !8
  %805 = load double, double* %544, align 16, !tbaa !8
  %806 = fsub double -0.000000e+00, %805
  %807 = tail call double @llvm.fmuladd.f64(double %806, double %792, double %804)
  store double %807, double* %556, align 8, !tbaa !8
  %808 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %15, i64 0, i64 2, i64 0
  %809 = load double, double* %808, align 16, !tbaa !8
  %810 = fmul double %789, %809
  %811 = bitcast i64 %754 to double
  %812 = fsub double -0.000000e+00, %810
  %813 = tail call double @llvm.fmuladd.f64(double %812, double %794, double %811)
  store double %813, double* %755, align 8, !tbaa !8
  %814 = tail call double @llvm.fmuladd.f64(double %812, double %798, double %757)
  %815 = tail call double @llvm.fmuladd.f64(double %812, double %800, double %759)
  %816 = tail call double @llvm.fmuladd.f64(double %812, double %802, double %761)
  %817 = load double, double* %568, align 16, !tbaa !8
  %818 = tail call double @llvm.fmuladd.f64(double %806, double %810, double %817)
  %819 = bitcast i64 %764 to double
  %820 = fmul double %789, %819
  %821 = fsub double -0.000000e+00, %820
  %822 = tail call double @llvm.fmuladd.f64(double %821, double %794, double %767)
  store double %822, double* %768, align 8, !tbaa !8
  %823 = tail call double @llvm.fmuladd.f64(double %821, double %798, double %769)
  %824 = tail call double @llvm.fmuladd.f64(double %821, double %800, double %771)
  %825 = tail call double @llvm.fmuladd.f64(double %821, double %802, double %773)
  %826 = load double, double* %580, align 8, !tbaa !8
  %827 = tail call double @llvm.fmuladd.f64(double %806, double %820, double %826)
  %828 = bitcast i64 %776 to double
  %829 = fmul double %789, %828
  %830 = fsub double -0.000000e+00, %829
  %831 = tail call double @llvm.fmuladd.f64(double %830, double %794, double %779)
  store double %831, double* %780, align 8, !tbaa !8
  %832 = tail call double @llvm.fmuladd.f64(double %830, double %798, double %781)
  %833 = tail call double @llvm.fmuladd.f64(double %830, double %800, double %783)
  %834 = tail call double @llvm.fmuladd.f64(double %830, double %802, double %785)
  %835 = load double, double* %587, align 16, !tbaa !8
  %836 = tail call double @llvm.fmuladd.f64(double %806, double %829, double %835)
  %837 = fdiv double 1.000000e+00, %796
  %838 = fmul double %837, %813
  %839 = fsub double -0.000000e+00, %838
  %840 = tail call double @llvm.fmuladd.f64(double %839, double %799, double %814)
  store double %840, double* %758, align 16, !tbaa !8
  %841 = tail call double @llvm.fmuladd.f64(double %839, double %801, double %815)
  store double %841, double* %760, align 8, !tbaa !8
  %842 = tail call double @llvm.fmuladd.f64(double %839, double %803, double %816)
  store double %842, double* %762, align 16, !tbaa !8
  %843 = fsub double -0.000000e+00, %807
  %844 = tail call double @llvm.fmuladd.f64(double %843, double %838, double %818)
  %845 = fmul double %837, %822
  %846 = fsub double -0.000000e+00, %845
  %847 = tail call double @llvm.fmuladd.f64(double %846, double %799, double %823)
  store double %847, double* %770, align 8, !tbaa !8
  %848 = tail call double @llvm.fmuladd.f64(double %846, double %801, double %824)
  %849 = tail call double @llvm.fmuladd.f64(double %846, double %803, double %825)
  %850 = tail call double @llvm.fmuladd.f64(double %843, double %845, double %827)
  %851 = fmul double %837, %831
  %852 = fsub double -0.000000e+00, %851
  %853 = tail call double @llvm.fmuladd.f64(double %852, double %799, double %832)
  store double %853, double* %782, align 16, !tbaa !8
  %854 = tail call double @llvm.fmuladd.f64(double %852, double %801, double %833)
  %855 = tail call double @llvm.fmuladd.f64(double %852, double %803, double %834)
  %856 = tail call double @llvm.fmuladd.f64(double %843, double %851, double %836)
  %857 = fdiv double 1.000000e+00, %840
  %858 = fmul double %857, %847
  %859 = fsub double -0.000000e+00, %858
  %860 = tail call double @llvm.fmuladd.f64(double %859, double %841, double %848)
  store double %860, double* %772, align 8, !tbaa !8
  %861 = tail call double @llvm.fmuladd.f64(double %859, double %842, double %849)
  store double %861, double* %774, align 8, !tbaa !8
  %862 = fsub double -0.000000e+00, %844
  %863 = tail call double @llvm.fmuladd.f64(double %862, double %858, double %850)
  %864 = fmul double %857, %853
  %865 = fsub double -0.000000e+00, %864
  %866 = tail call double @llvm.fmuladd.f64(double %865, double %841, double %854)
  store double %866, double* %784, align 8, !tbaa !8
  %867 = tail call double @llvm.fmuladd.f64(double %865, double %842, double %855)
  %868 = tail call double @llvm.fmuladd.f64(double %862, double %864, double %856)
  %869 = fdiv double 1.000000e+00, %860
  %870 = fmul double %869, %866
  %871 = fsub double -0.000000e+00, %870
  %872 = tail call double @llvm.fmuladd.f64(double %871, double %861, double %867)
  store double %872, double* %786, align 16, !tbaa !8
  %873 = fsub double -0.000000e+00, %863
  %874 = tail call double @llvm.fmuladd.f64(double %873, double %870, double %868)
  %875 = fdiv double %874, %872
  store double %875, double* %587, align 16, !tbaa !8
  %876 = fsub double -0.000000e+00, %861
  %877 = tail call double @llvm.fmuladd.f64(double %876, double %875, double %863)
  %878 = fdiv double %877, %860
  store double %878, double* %580, align 8, !tbaa !8
  %879 = fsub double -0.000000e+00, %841
  %880 = tail call double @llvm.fmuladd.f64(double %879, double %878, double %844)
  %881 = fsub double -0.000000e+00, %842
  %882 = tail call double @llvm.fmuladd.f64(double %881, double %875, double %880)
  %883 = fdiv double %882, %840
  store double %883, double* %568, align 16, !tbaa !8
  %884 = fsub double -0.000000e+00, %799
  %885 = tail call double @llvm.fmuladd.f64(double %884, double %883, double %807)
  %886 = fsub double -0.000000e+00, %801
  %887 = tail call double @llvm.fmuladd.f64(double %886, double %878, double %885)
  %888 = fsub double -0.000000e+00, %803
  %889 = tail call double @llvm.fmuladd.f64(double %888, double %875, double %887)
  %890 = fdiv double %889, %796
  store double %890, double* %556, align 8, !tbaa !8
  %891 = fsub double -0.000000e+00, %794
  %892 = tail call double @llvm.fmuladd.f64(double %891, double %890, double %805)
  %893 = fsub double -0.000000e+00, %798
  %894 = tail call double @llvm.fmuladd.f64(double %893, double %883, double %892)
  %895 = fsub double -0.000000e+00, %800
  %896 = tail call double @llvm.fmuladd.f64(double %895, double %878, double %894)
  %897 = fsub double -0.000000e+00, %802
  %898 = tail call double @llvm.fmuladd.f64(double %897, double %875, double %896)
  %899 = fdiv double %898, %788
  store double %899, double* %544, align 16, !tbaa !8
  %900 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 0
  %901 = load double, double* %900, align 8, !tbaa !8
  %902 = fsub double %901, %899
  store double %902, double* %900, align 8, !tbaa !8
  %903 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 1
  %904 = load double, double* %903, align 8, !tbaa !8
  %905 = fsub double %904, %890
  store double %905, double* %903, align 8, !tbaa !8
  %906 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 2
  %907 = load double, double* %906, align 8, !tbaa !8
  %908 = fsub double %907, %883
  store double %908, double* %906, align 8, !tbaa !8
  %909 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 3
  %910 = load double, double* %909, align 8, !tbaa !8
  %911 = fsub double %910, %878
  store double %911, double* %909, align 8, !tbaa !8
  %912 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %51, i64 %56, i64 %58, i64 %60, i64 4
  %913 = load double, double* %912, align 8, !tbaa !8
  %914 = fsub double %913, %875
  store double %914, double* %912, align 8, !tbaa !8
  br label %915

; <label>:915:                                    ; preds = %10, %41, %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %17) #4
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
