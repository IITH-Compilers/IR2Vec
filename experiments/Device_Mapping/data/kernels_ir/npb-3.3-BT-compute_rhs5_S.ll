; ModuleID = 'npb-BT-compute_rhs5_S.cl'
source_filename = "npb-BT-compute_rhs5_S.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_rhs5(double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %12 = alloca [5 x double], align 16
  %13 = alloca [5 x double], align 16
  %14 = alloca [5 x double], align 16
  %15 = alloca [5 x double], align 16
  %16 = alloca [5 x double], align 16
  %17 = bitcast [5 x double]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #4
  %18 = bitcast [5 x double]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #4
  %19 = bitcast [5 x double]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %19) #4
  %20 = bitcast [5 x double]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #4
  %21 = bitcast [5 x double]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %21) #4
  call void @llvm.memset.p0i8.i64(i8* nonnull %21, i8 0, i64 40, i32 16, i1 false)
  %22 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %26 = add i64 %25, 1
  %27 = add nsw i32 %9, -2
  %28 = icmp slt i32 %27, %24
  br i1 %28, label %1057, label %29

; <label>:29:                                     ; preds = %11
  %30 = trunc i64 %26 to i32
  %31 = add nsw i32 %8, -2
  %32 = icmp slt i32 %31, %30
  br i1 %32, label %1057, label %33

; <label>:33:                                     ; preds = %29
  %34 = bitcast double* %1 to [13 x [13 x double]]*
  %35 = bitcast double* %2 to [13 x [13 x double]]*
  %36 = bitcast double* %3 to [13 x [13 x double]]*
  %37 = bitcast double* %4 to [13 x [13 x double]]*
  %38 = bitcast double* %5 to [13 x [13 x double]]*
  %39 = bitcast double* %6 to [13 x [13 x double]]*
  %40 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %41 = shl i64 %23, 32
  %42 = ashr exact i64 %41, 32
  %43 = shl i64 %26, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 0, i64 %42, i64 %44
  %46 = bitcast [5 x double]* %45 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !8
  %48 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %49 = bitcast [5 x double]* %12 to i64*
  store i64 %47, i64* %49, align 16, !tbaa !8
  %50 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 0, i64 %42, i64 %44, i64 1
  %51 = bitcast double* %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !8
  %53 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 1
  %54 = bitcast double* %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !8
  %55 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 0, i64 %42, i64 %44, i64 2
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !8
  %58 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 2
  %59 = bitcast double* %58 to i64*
  store i64 %57, i64* %59, align 16, !tbaa !8
  %60 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 0, i64 %42, i64 %44, i64 3
  %61 = bitcast double* %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !8
  %63 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 3
  %64 = bitcast double* %63 to i64*
  store i64 %62, i64* %64, align 8, !tbaa !8
  %65 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 0, i64 %42, i64 %44, i64 4
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !8
  %68 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 4
  %69 = bitcast double* %68 to i64*
  store i64 %67, i64* %69, align 16, !tbaa !8
  %70 = getelementptr inbounds double, double* %0, i64 845
  %71 = bitcast double* %70 to [13 x [13 x [5 x double]]]*
  %72 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44
  %73 = bitcast [5 x double]* %72 to i64*
  %74 = load i64, i64* %73, align 8, !tbaa !8
  %75 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %76 = bitcast [5 x double]* %13 to i64*
  store i64 %74, i64* %76, align 16, !tbaa !8
  %77 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 1
  %78 = bitcast double* %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 1
  %81 = bitcast double* %80 to i64*
  store i64 %79, i64* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 2
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !8
  %85 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 2
  %86 = bitcast double* %85 to i64*
  store i64 %84, i64* %86, align 16, !tbaa !8
  %87 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 3
  %88 = bitcast double* %87 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 3
  %91 = bitcast double* %90 to i64*
  store i64 %89, i64* %91, align 8, !tbaa !8
  %92 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 4
  %93 = bitcast double* %92 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !8
  %95 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 4
  %96 = bitcast double* %95 to i64*
  store i64 %94, i64* %96, align 16, !tbaa !8
  %97 = getelementptr inbounds double, double* %0, i64 1690
  %98 = bitcast double* %97 to [13 x [13 x [5 x double]]]*
  %99 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44
  %100 = bitcast [5 x double]* %99 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !8
  %102 = bitcast [5 x double]* %14 to i64*
  store i64 %101, i64* %102, align 16, !tbaa !8
  %103 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 1
  %104 = bitcast double* %103 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 1
  %107 = bitcast double* %106 to i64*
  store i64 %105, i64* %107, align 8, !tbaa !8
  %108 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 2
  %109 = bitcast double* %108 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !8
  %111 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 2
  %112 = bitcast double* %111 to i64*
  store i64 %110, i64* %112, align 16, !tbaa !8
  %113 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 3
  %114 = bitcast double* %113 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 3
  %117 = bitcast double* %116 to i64*
  store i64 %115, i64* %117, align 8, !tbaa !8
  %118 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 4
  %119 = bitcast double* %118 to i64*
  %120 = load i64, i64* %119, align 8, !tbaa !8
  %121 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 4
  %122 = bitcast double* %121 to i64*
  store i64 %120, i64* %122, align 16, !tbaa !8
  %123 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %34, i64 0, i64 %42, i64 %44
  %124 = load double, double* %123, align 8, !tbaa !8
  %125 = getelementptr inbounds double, double* %1, i64 169
  %126 = bitcast double* %125 to [13 x [13 x double]]*
  %127 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %126, i64 0, i64 %42, i64 %44
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %35, i64 0, i64 %42, i64 %44
  %130 = load double, double* %129, align 8, !tbaa !8
  %131 = getelementptr inbounds double, double* %2, i64 169
  %132 = bitcast double* %131 to [13 x [13 x double]]*
  %133 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %132, i64 0, i64 %42, i64 %44
  %134 = load double, double* %133, align 8, !tbaa !8
  %135 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %36, i64 0, i64 %42, i64 %44
  %136 = load double, double* %135, align 8, !tbaa !8
  %137 = getelementptr inbounds double, double* %3, i64 169
  %138 = bitcast double* %137 to [13 x [13 x double]]*
  %139 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %138, i64 0, i64 %42, i64 %44
  %140 = load double, double* %139, align 8, !tbaa !8
  %141 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %37, i64 0, i64 %42, i64 %44
  %142 = load double, double* %141, align 8, !tbaa !8
  %143 = getelementptr inbounds double, double* %4, i64 169
  %144 = bitcast double* %143 to [13 x [13 x double]]*
  %145 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %144, i64 0, i64 %42, i64 %44
  %146 = load double, double* %145, align 8, !tbaa !8
  %147 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %38, i64 0, i64 %42, i64 %44
  %148 = load double, double* %147, align 8, !tbaa !8
  %149 = getelementptr inbounds double, double* %5, i64 169
  %150 = bitcast double* %149 to [13 x [13 x double]]*
  %151 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %150, i64 0, i64 %42, i64 %44
  %152 = load double, double* %151, align 8, !tbaa !8
  %153 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %39, i64 0, i64 %42, i64 %44
  %154 = load double, double* %153, align 8, !tbaa !8
  %155 = getelementptr inbounds double, double* %6, i64 169
  %156 = bitcast double* %155 to [13 x [13 x double]]*
  %157 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %156, i64 0, i64 %42, i64 %44
  %158 = load double, double* %157, align 8, !tbaa !8
  %159 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %160 = bitcast [5 x double]* %16 to i64*
  %161 = load i64, i64* %160, align 16, !tbaa !8
  %162 = bitcast [5 x double]* %15 to i64*
  store i64 %161, i64* %162, align 16, !tbaa !8
  %163 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %164 = bitcast double* %163 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !8
  %166 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 1
  %167 = bitcast double* %166 to i64*
  store i64 %165, i64* %167, align 8, !tbaa !8
  %168 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  %169 = bitcast double* %168 to i64*
  %170 = load i64, i64* %169, align 16, !tbaa !8
  %171 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 2
  %172 = bitcast double* %171 to i64*
  store i64 %170, i64* %172, align 16, !tbaa !8
  %173 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  %174 = bitcast double* %173 to i64*
  %175 = load i64, i64* %174, align 8, !tbaa !8
  %176 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 3
  %177 = bitcast double* %176 to i64*
  store i64 %175, i64* %177, align 8, !tbaa !8
  %178 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
  %179 = bitcast double* %178 to i64*
  %180 = load i64, i64* %179, align 16, !tbaa !8
  %181 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 4
  %182 = bitcast double* %181 to i64*
  store i64 %180, i64* %182, align 16, !tbaa !8
  store i64 %47, i64* %160, align 16, !tbaa !8
  store i64 %52, i64* %164, align 8, !tbaa !8
  store i64 %57, i64* %169, align 16, !tbaa !8
  store i64 %62, i64* %174, align 8, !tbaa !8
  store i64 %67, i64* %179, align 16, !tbaa !8
  store i64 %74, i64* %49, align 16, !tbaa !8
  store i64 %79, i64* %54, align 8, !tbaa !8
  store i64 %84, i64* %59, align 16, !tbaa !8
  store i64 %89, i64* %64, align 8, !tbaa !8
  store i64 %94, i64* %69, align 16, !tbaa !8
  store i64 %101, i64* %76, align 16, !tbaa !8
  store i64 %105, i64* %81, align 8, !tbaa !8
  store i64 %110, i64* %86, align 16, !tbaa !8
  store i64 %115, i64* %91, align 8, !tbaa !8
  store i64 %120, i64* %96, align 16, !tbaa !8
  %183 = getelementptr inbounds double, double* %0, i64 2535
  %184 = bitcast double* %183 to [13 x [13 x [5 x double]]]*
  %185 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44
  %186 = bitcast [5 x double]* %185 to i64*
  %187 = load i64, i64* %186, align 8, !tbaa !8
  store i64 %187, i64* %102, align 16, !tbaa !8
  %188 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 1
  %189 = bitcast double* %188 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !8
  store i64 %190, i64* %107, align 8, !tbaa !8
  %191 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 2
  %192 = bitcast double* %191 to i64*
  %193 = load i64, i64* %192, align 8, !tbaa !8
  store i64 %193, i64* %112, align 16, !tbaa !8
  %194 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 3
  %195 = bitcast double* %194 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !8
  store i64 %196, i64* %117, align 8, !tbaa !8
  %197 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 4
  %198 = bitcast double* %197 to i64*
  %199 = load i64, i64* %198, align 8, !tbaa !8
  store i64 %199, i64* %122, align 16, !tbaa !8
  %200 = getelementptr inbounds double, double* %1, i64 338
  %201 = bitcast double* %200 to [13 x [13 x double]]*
  %202 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %201, i64 0, i64 %42, i64 %44
  %203 = load double, double* %202, align 8, !tbaa !8
  %204 = getelementptr inbounds double, double* %2, i64 338
  %205 = bitcast double* %204 to [13 x [13 x double]]*
  %206 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %205, i64 0, i64 %42, i64 %44
  %207 = load double, double* %206, align 8, !tbaa !8
  %208 = getelementptr inbounds double, double* %3, i64 338
  %209 = bitcast double* %208 to [13 x [13 x double]]*
  %210 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %209, i64 0, i64 %42, i64 %44
  %211 = load double, double* %210, align 8, !tbaa !8
  %212 = getelementptr inbounds double, double* %4, i64 338
  %213 = bitcast double* %212 to [13 x [13 x double]]*
  %214 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %213, i64 0, i64 %42, i64 %44
  %215 = load double, double* %214, align 8, !tbaa !8
  %216 = getelementptr inbounds double, double* %5, i64 338
  %217 = bitcast double* %216 to [13 x [13 x double]]*
  %218 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %217, i64 0, i64 %42, i64 %44
  %219 = load double, double* %218, align 8, !tbaa !8
  %220 = getelementptr inbounds double, double* %6, i64 338
  %221 = bitcast double* %220 to [13 x [13 x double]]*
  %222 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %221, i64 0, i64 %42, i64 %44
  %223 = load double, double* %222, align 8, !tbaa !8
  %224 = getelementptr inbounds double, double* %7, i64 845
  %225 = bitcast double* %224 to [13 x [13 x [5 x double]]]*
  %226 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 0
  %227 = load double, double* %226, align 8, !tbaa !8
  %228 = bitcast i64 %101 to double
  %229 = bitcast i64 %74 to double
  %230 = tail call double @llvm.fmuladd.f64(double %229, double -2.000000e+00, double %228)
  %231 = bitcast i64 %47 to double
  %232 = fadd double %230, %231
  %233 = tail call double @llvm.fmuladd.f64(double %232, double 1.210000e+02, double %227)
  %234 = bitcast i64 %115 to double
  %235 = bitcast i64 %62 to double
  %236 = fsub double %234, %235
  %237 = tail call double @llvm.fmuladd.f64(double %236, double -5.500000e+00, double %233)
  %238 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 1
  %239 = load double, double* %238, align 8, !tbaa !8
  %240 = bitcast i64 %105 to double
  %241 = bitcast i64 %79 to double
  %242 = tail call double @llvm.fmuladd.f64(double %241, double -2.000000e+00, double %240)
  %243 = bitcast i64 %52 to double
  %244 = fadd double %242, %243
  %245 = tail call double @llvm.fmuladd.f64(double %244, double 1.210000e+02, double %239)
  %246 = tail call double @llvm.fmuladd.f64(double %128, double -2.000000e+00, double %203)
  %247 = fadd double %124, %246
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 0x4028333333333334, double %245)
  %249 = fmul double %136, %243
  %250 = fsub double -0.000000e+00, %249
  %251 = tail call double @llvm.fmuladd.f64(double %240, double %211, double %250)
  %252 = tail call double @llvm.fmuladd.f64(double %251, double -5.500000e+00, double %248)
  %253 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 2
  %254 = load double, double* %253, align 8, !tbaa !8
  %255 = bitcast i64 %110 to double
  %256 = bitcast i64 %84 to double
  %257 = tail call double @llvm.fmuladd.f64(double %256, double -2.000000e+00, double %255)
  %258 = bitcast i64 %57 to double
  %259 = fadd double %257, %258
  %260 = tail call double @llvm.fmuladd.f64(double %259, double 1.210000e+02, double %254)
  %261 = tail call double @llvm.fmuladd.f64(double %134, double -2.000000e+00, double %207)
  %262 = fadd double %130, %261
  %263 = tail call double @llvm.fmuladd.f64(double %262, double 0x4028333333333334, double %260)
  %264 = fmul double %136, %258
  %265 = fsub double -0.000000e+00, %264
  %266 = tail call double @llvm.fmuladd.f64(double %255, double %211, double %265)
  %267 = tail call double @llvm.fmuladd.f64(double %266, double -5.500000e+00, double %263)
  %268 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 3
  %269 = load double, double* %268, align 8, !tbaa !8
  %270 = load double, double* %63, align 8, !tbaa !8
  %271 = tail call double @llvm.fmuladd.f64(double %270, double -2.000000e+00, double %234)
  %272 = fadd double %271, %235
  %273 = tail call double @llvm.fmuladd.f64(double %272, double 1.210000e+02, double %269)
  %274 = tail call double @llvm.fmuladd.f64(double %140, double -2.000000e+00, double %211)
  %275 = fadd double %136, %274
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 0x4030222222222222, double %273)
  %277 = fmul double %136, %235
  %278 = fsub double -0.000000e+00, %277
  %279 = tail call double @llvm.fmuladd.f64(double %234, double %211, double %278)
  %280 = load double, double* %95, align 16, !tbaa !8
  %281 = fsub double %280, %223
  %282 = load double, double* %178, align 16, !tbaa !8
  %283 = fsub double %281, %282
  %284 = fadd double %154, %283
  %285 = tail call double @llvm.fmuladd.f64(double %284, double 4.000000e-01, double %279)
  %286 = tail call double @llvm.fmuladd.f64(double %285, double -5.500000e+00, double %276)
  %287 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 4
  %288 = load double, double* %287, align 8, !tbaa !8
  %289 = load double, double* %68, align 16, !tbaa !8
  %290 = tail call double @llvm.fmuladd.f64(double %289, double -2.000000e+00, double %280)
  %291 = fadd double %282, %290
  %292 = tail call double @llvm.fmuladd.f64(double %291, double 1.210000e+02, double %288)
  %293 = tail call double @llvm.fmuladd.f64(double %146, double -2.000000e+00, double %215)
  %294 = fadd double %142, %293
  %295 = tail call double @llvm.fmuladd.f64(double %294, double 0xC0273B645A1CAC07, double %292)
  %296 = fmul double %140, 2.000000e+00
  %297 = fmul double %140, %296
  %298 = fsub double -0.000000e+00, %297
  %299 = tail call double @llvm.fmuladd.f64(double %211, double %211, double %298)
  %300 = tail call double @llvm.fmuladd.f64(double %136, double %136, double %299)
  %301 = tail call double @llvm.fmuladd.f64(double %300, double 0x4000222222222222, double %295)
  %302 = fmul double %289, 2.000000e+00
  %303 = fmul double %152, %302
  %304 = fsub double -0.000000e+00, %303
  %305 = tail call double @llvm.fmuladd.f64(double %280, double %219, double %304)
  %306 = tail call double @llvm.fmuladd.f64(double %282, double %148, double %305)
  %307 = tail call double @llvm.fmuladd.f64(double %306, double 0x4037B74BC6A7EF9D, double %301)
  %308 = fmul double %223, 4.000000e-01
  %309 = fsub double -0.000000e+00, %308
  %310 = tail call double @llvm.fmuladd.f64(double %280, double 1.400000e+00, double %309)
  %311 = fmul double %154, 4.000000e-01
  %312 = fsub double -0.000000e+00, %311
  %313 = tail call double @llvm.fmuladd.f64(double %282, double 1.400000e+00, double %312)
  %314 = fmul double %136, %313
  %315 = fsub double -0.000000e+00, %314
  %316 = tail call double @llvm.fmuladd.f64(double %310, double %211, double %315)
  %317 = tail call double @llvm.fmuladd.f64(double %316, double -5.500000e+00, double %307)
  %318 = tail call double @_Z3maxdd(double 7.500000e-01, double 1.000000e+00) #5
  %319 = tail call double @_Z3maxdd(double 7.500000e-01, double %318) #5
  %320 = fmul double %319, 2.500000e-01
  %321 = fsub double -0.000000e+00, %320
  %322 = load double, double* %48, align 16, !tbaa !8
  %323 = load double, double* %75, align 16, !tbaa !8
  %324 = fmul double %323, 4.000000e+00
  %325 = fsub double -0.000000e+00, %324
  %326 = tail call double @llvm.fmuladd.f64(double %322, double 5.000000e+00, double %325)
  %327 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 0
  %328 = load double, double* %327, align 16, !tbaa !8
  %329 = fadd double %328, %326
  %330 = tail call double @llvm.fmuladd.f64(double %321, double %329, double %237)
  store double %330, double* %226, align 8, !tbaa !8
  %331 = load double, double* %53, align 8, !tbaa !8
  %332 = load double, double* %80, align 8, !tbaa !8
  %333 = fmul double %332, 4.000000e+00
  %334 = fsub double -0.000000e+00, %333
  %335 = tail call double @llvm.fmuladd.f64(double %331, double 5.000000e+00, double %334)
  %336 = load double, double* %106, align 8, !tbaa !8
  %337 = fadd double %336, %335
  %338 = tail call double @llvm.fmuladd.f64(double %321, double %337, double %252)
  store double %338, double* %238, align 8, !tbaa !8
  %339 = load double, double* %58, align 16, !tbaa !8
  %340 = load double, double* %85, align 16, !tbaa !8
  %341 = fmul double %340, 4.000000e+00
  %342 = fsub double -0.000000e+00, %341
  %343 = tail call double @llvm.fmuladd.f64(double %339, double 5.000000e+00, double %342)
  %344 = load double, double* %111, align 16, !tbaa !8
  %345 = fadd double %344, %343
  %346 = tail call double @llvm.fmuladd.f64(double %321, double %345, double %267)
  store double %346, double* %253, align 8, !tbaa !8
  %347 = load double, double* %90, align 8, !tbaa !8
  %348 = fmul double %347, 4.000000e+00
  %349 = fsub double -0.000000e+00, %348
  %350 = tail call double @llvm.fmuladd.f64(double %270, double 5.000000e+00, double %349)
  %351 = load double, double* %116, align 8, !tbaa !8
  %352 = fadd double %351, %350
  %353 = tail call double @llvm.fmuladd.f64(double %321, double %352, double %286)
  store double %353, double* %268, align 8, !tbaa !8
  %354 = fmul double %280, 4.000000e+00
  %355 = fsub double -0.000000e+00, %354
  %356 = tail call double @llvm.fmuladd.f64(double %289, double 5.000000e+00, double %355)
  %357 = load double, double* %121, align 16, !tbaa !8
  %358 = fadd double %357, %356
  %359 = tail call double @llvm.fmuladd.f64(double %321, double %358, double %317)
  store double %359, double* %287, align 8, !tbaa !8
  %360 = bitcast double* %7 to [13 x [13 x [5 x double]]]*
  store i64 %47, i64* %162, align 16, !tbaa !8
  store i64 %52, i64* %167, align 8, !tbaa !8
  store i64 %57, i64* %172, align 16, !tbaa !8
  store i64 %62, i64* %177, align 8, !tbaa !8
  store i64 %67, i64* %182, align 16, !tbaa !8
  store i64 %74, i64* %160, align 16, !tbaa !8
  store i64 %79, i64* %164, align 8, !tbaa !8
  store i64 %84, i64* %169, align 16, !tbaa !8
  store i64 %89, i64* %174, align 8, !tbaa !8
  store i64 %94, i64* %179, align 16, !tbaa !8
  store i64 %101, i64* %49, align 16, !tbaa !8
  store i64 %105, i64* %54, align 8, !tbaa !8
  store i64 %110, i64* %59, align 16, !tbaa !8
  store i64 %115, i64* %64, align 8, !tbaa !8
  store i64 %120, i64* %69, align 16, !tbaa !8
  store i64 %187, i64* %76, align 16, !tbaa !8
  store i64 %190, i64* %81, align 8, !tbaa !8
  store i64 %193, i64* %86, align 16, !tbaa !8
  store i64 %196, i64* %91, align 8, !tbaa !8
  store i64 %199, i64* %96, align 16, !tbaa !8
  %361 = getelementptr inbounds double, double* %0, i64 3380
  %362 = bitcast double* %361 to [13 x [13 x [5 x double]]]*
  %363 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %362, i64 0, i64 %42, i64 %44
  %364 = bitcast [5 x double]* %363 to i64*
  %365 = load i64, i64* %364, align 8, !tbaa !8
  store i64 %365, i64* %102, align 16, !tbaa !8
  %366 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %362, i64 0, i64 %42, i64 %44, i64 1
  %367 = bitcast double* %366 to i64*
  %368 = load i64, i64* %367, align 8, !tbaa !8
  store i64 %368, i64* %107, align 8, !tbaa !8
  %369 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %362, i64 0, i64 %42, i64 %44, i64 2
  %370 = bitcast double* %369 to i64*
  %371 = load i64, i64* %370, align 8, !tbaa !8
  store i64 %371, i64* %112, align 16, !tbaa !8
  %372 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %362, i64 0, i64 %42, i64 %44, i64 3
  %373 = bitcast double* %372 to i64*
  %374 = load i64, i64* %373, align 8, !tbaa !8
  store i64 %374, i64* %117, align 8, !tbaa !8
  %375 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %362, i64 0, i64 %42, i64 %44, i64 4
  %376 = bitcast double* %375 to i64*
  %377 = load i64, i64* %376, align 8, !tbaa !8
  store i64 %377, i64* %122, align 16, !tbaa !8
  %378 = getelementptr inbounds double, double* %1, i64 507
  %379 = bitcast double* %378 to [13 x [13 x double]]*
  %380 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %379, i64 0, i64 %42, i64 %44
  %381 = load double, double* %380, align 8, !tbaa !8
  %382 = getelementptr inbounds double, double* %2, i64 507
  %383 = bitcast double* %382 to [13 x [13 x double]]*
  %384 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %383, i64 0, i64 %42, i64 %44
  %385 = load double, double* %384, align 8, !tbaa !8
  %386 = getelementptr inbounds double, double* %3, i64 507
  %387 = bitcast double* %386 to [13 x [13 x double]]*
  %388 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %387, i64 0, i64 %42, i64 %44
  %389 = load double, double* %388, align 8, !tbaa !8
  %390 = getelementptr inbounds double, double* %4, i64 507
  %391 = bitcast double* %390 to [13 x [13 x double]]*
  %392 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %391, i64 0, i64 %42, i64 %44
  %393 = load double, double* %392, align 8, !tbaa !8
  %394 = getelementptr inbounds double, double* %5, i64 507
  %395 = bitcast double* %394 to [13 x [13 x double]]*
  %396 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %395, i64 0, i64 %42, i64 %44
  %397 = load double, double* %396, align 8, !tbaa !8
  %398 = getelementptr inbounds double, double* %6, i64 507
  %399 = bitcast double* %398 to [13 x [13 x double]]*
  %400 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %399, i64 0, i64 %42, i64 %44
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = getelementptr inbounds double, double* %7, i64 1690
  %403 = bitcast double* %402 to [13 x [13 x [5 x double]]]*
  %404 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %403, i64 0, i64 %42, i64 %44, i64 0
  %405 = load double, double* %404, align 8, !tbaa !8
  %406 = bitcast i64 %187 to double
  %407 = tail call double @llvm.fmuladd.f64(double %228, double -2.000000e+00, double %406)
  %408 = fadd double %407, %229
  %409 = tail call double @llvm.fmuladd.f64(double %408, double 1.210000e+02, double %405)
  %410 = bitcast i64 %196 to double
  %411 = bitcast i64 %89 to double
  %412 = fsub double %410, %411
  %413 = tail call double @llvm.fmuladd.f64(double %412, double -5.500000e+00, double %409)
  %414 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %403, i64 0, i64 %42, i64 %44, i64 1
  %415 = load double, double* %414, align 8, !tbaa !8
  %416 = bitcast i64 %190 to double
  %417 = tail call double @llvm.fmuladd.f64(double %240, double -2.000000e+00, double %416)
  %418 = fadd double %417, %241
  %419 = tail call double @llvm.fmuladd.f64(double %418, double 1.210000e+02, double %415)
  %420 = tail call double @llvm.fmuladd.f64(double %203, double -2.000000e+00, double %381)
  %421 = fadd double %128, %420
  %422 = tail call double @llvm.fmuladd.f64(double %421, double 0x4028333333333334, double %419)
  %423 = fmul double %140, %241
  %424 = fsub double -0.000000e+00, %423
  %425 = tail call double @llvm.fmuladd.f64(double %416, double %389, double %424)
  %426 = tail call double @llvm.fmuladd.f64(double %425, double -5.500000e+00, double %422)
  %427 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %403, i64 0, i64 %42, i64 %44, i64 2
  %428 = load double, double* %427, align 8, !tbaa !8
  %429 = bitcast i64 %193 to double
  %430 = tail call double @llvm.fmuladd.f64(double %255, double -2.000000e+00, double %429)
  %431 = fadd double %430, %256
  %432 = tail call double @llvm.fmuladd.f64(double %431, double 1.210000e+02, double %428)
  %433 = tail call double @llvm.fmuladd.f64(double %207, double -2.000000e+00, double %385)
  %434 = fadd double %134, %433
  %435 = tail call double @llvm.fmuladd.f64(double %434, double 0x4028333333333334, double %432)
  %436 = fmul double %140, %256
  %437 = fsub double -0.000000e+00, %436
  %438 = tail call double @llvm.fmuladd.f64(double %429, double %389, double %437)
  %439 = tail call double @llvm.fmuladd.f64(double %438, double -5.500000e+00, double %435)
  %440 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %403, i64 0, i64 %42, i64 %44, i64 3
  %441 = load double, double* %440, align 8, !tbaa !8
  %442 = load double, double* %63, align 8, !tbaa !8
  %443 = tail call double @llvm.fmuladd.f64(double %442, double -2.000000e+00, double %410)
  %444 = fadd double %443, %411
  %445 = tail call double @llvm.fmuladd.f64(double %444, double 1.210000e+02, double %441)
  %446 = tail call double @llvm.fmuladd.f64(double %211, double -2.000000e+00, double %389)
  %447 = fadd double %140, %446
  %448 = tail call double @llvm.fmuladd.f64(double %447, double 0x4030222222222222, double %445)
  %449 = fmul double %140, %411
  %450 = fsub double -0.000000e+00, %449
  %451 = tail call double @llvm.fmuladd.f64(double %410, double %389, double %450)
  %452 = load double, double* %95, align 16, !tbaa !8
  %453 = fsub double %452, %401
  %454 = load double, double* %178, align 16, !tbaa !8
  %455 = fsub double %453, %454
  %456 = fadd double %158, %455
  %457 = tail call double @llvm.fmuladd.f64(double %456, double 4.000000e-01, double %451)
  %458 = tail call double @llvm.fmuladd.f64(double %457, double -5.500000e+00, double %448)
  %459 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %403, i64 0, i64 %42, i64 %44, i64 4
  %460 = load double, double* %459, align 8, !tbaa !8
  %461 = load double, double* %68, align 16, !tbaa !8
  %462 = tail call double @llvm.fmuladd.f64(double %461, double -2.000000e+00, double %452)
  %463 = fadd double %454, %462
  %464 = tail call double @llvm.fmuladd.f64(double %463, double 1.210000e+02, double %460)
  %465 = tail call double @llvm.fmuladd.f64(double %215, double -2.000000e+00, double %393)
  %466 = fadd double %146, %465
  %467 = tail call double @llvm.fmuladd.f64(double %466, double 0xC0273B645A1CAC07, double %464)
  %468 = fmul double %211, 2.000000e+00
  %469 = fmul double %211, %468
  %470 = fsub double -0.000000e+00, %469
  %471 = tail call double @llvm.fmuladd.f64(double %389, double %389, double %470)
  %472 = tail call double @llvm.fmuladd.f64(double %140, double %140, double %471)
  %473 = tail call double @llvm.fmuladd.f64(double %472, double 0x4000222222222222, double %467)
  %474 = fmul double %461, 2.000000e+00
  %475 = fmul double %219, %474
  %476 = fsub double -0.000000e+00, %475
  %477 = tail call double @llvm.fmuladd.f64(double %452, double %397, double %476)
  %478 = tail call double @llvm.fmuladd.f64(double %454, double %152, double %477)
  %479 = tail call double @llvm.fmuladd.f64(double %478, double 0x4037B74BC6A7EF9D, double %473)
  %480 = fmul double %401, 4.000000e-01
  %481 = fsub double -0.000000e+00, %480
  %482 = tail call double @llvm.fmuladd.f64(double %452, double 1.400000e+00, double %481)
  %483 = fmul double %158, 4.000000e-01
  %484 = fsub double -0.000000e+00, %483
  %485 = tail call double @llvm.fmuladd.f64(double %454, double 1.400000e+00, double %484)
  %486 = fmul double %140, %485
  %487 = fsub double -0.000000e+00, %486
  %488 = tail call double @llvm.fmuladd.f64(double %482, double %389, double %487)
  %489 = tail call double @llvm.fmuladd.f64(double %488, double -5.500000e+00, double %479)
  %490 = load double, double* %159, align 16, !tbaa !8
  %491 = load double, double* %48, align 16, !tbaa !8
  %492 = fmul double %491, 6.000000e+00
  %493 = tail call double @llvm.fmuladd.f64(double %490, double -4.000000e+00, double %492)
  %494 = load double, double* %75, align 16, !tbaa !8
  %495 = tail call double @llvm.fmuladd.f64(double %494, double -4.000000e+00, double %493)
  %496 = load double, double* %327, align 16, !tbaa !8
  %497 = fadd double %496, %495
  %498 = tail call double @llvm.fmuladd.f64(double %321, double %497, double %413)
  store double %498, double* %404, align 8, !tbaa !8
  %499 = load double, double* %163, align 8, !tbaa !8
  %500 = load double, double* %53, align 8, !tbaa !8
  %501 = fmul double %500, 6.000000e+00
  %502 = tail call double @llvm.fmuladd.f64(double %499, double -4.000000e+00, double %501)
  %503 = load double, double* %80, align 8, !tbaa !8
  %504 = tail call double @llvm.fmuladd.f64(double %503, double -4.000000e+00, double %502)
  %505 = load double, double* %106, align 8, !tbaa !8
  %506 = fadd double %505, %504
  %507 = tail call double @llvm.fmuladd.f64(double %321, double %506, double %426)
  store double %507, double* %414, align 8, !tbaa !8
  %508 = load double, double* %168, align 16, !tbaa !8
  %509 = load double, double* %58, align 16, !tbaa !8
  %510 = fmul double %509, 6.000000e+00
  %511 = tail call double @llvm.fmuladd.f64(double %508, double -4.000000e+00, double %510)
  %512 = load double, double* %85, align 16, !tbaa !8
  %513 = tail call double @llvm.fmuladd.f64(double %512, double -4.000000e+00, double %511)
  %514 = load double, double* %111, align 16, !tbaa !8
  %515 = fadd double %514, %513
  %516 = tail call double @llvm.fmuladd.f64(double %321, double %515, double %439)
  store double %516, double* %427, align 8, !tbaa !8
  %517 = load double, double* %173, align 8, !tbaa !8
  %518 = fmul double %442, 6.000000e+00
  %519 = tail call double @llvm.fmuladd.f64(double %517, double -4.000000e+00, double %518)
  %520 = load double, double* %90, align 8, !tbaa !8
  %521 = tail call double @llvm.fmuladd.f64(double %520, double -4.000000e+00, double %519)
  %522 = load double, double* %116, align 8, !tbaa !8
  %523 = fadd double %522, %521
  %524 = tail call double @llvm.fmuladd.f64(double %321, double %523, double %458)
  store double %524, double* %440, align 8, !tbaa !8
  %525 = fmul double %461, 6.000000e+00
  %526 = tail call double @llvm.fmuladd.f64(double %454, double -4.000000e+00, double %525)
  %527 = tail call double @llvm.fmuladd.f64(double %452, double -4.000000e+00, double %526)
  %528 = load double, double* %121, align 16, !tbaa !8
  %529 = fadd double %528, %527
  %530 = tail call double @llvm.fmuladd.f64(double %321, double %529, double %489)
  store double %530, double* %459, align 8, !tbaa !8
  %531 = icmp slt i32 %10, 7
  %532 = bitcast double %490 to i64
  %533 = bitcast double %499 to i64
  %534 = bitcast double %508 to i64
  %535 = bitcast double %517 to i64
  %536 = bitcast double %454 to i64
  %537 = bitcast double %461 to i64
  br i1 %531, label %538, label %545

; <label>:538:                                    ; preds = %33
  %539 = load i64, i64* %64, align 8, !tbaa !8
  %540 = bitcast i64 %539 to double
  %541 = load i64, i64* %96, align 16, !tbaa !8
  %542 = bitcast i64 %541 to double
  %543 = add nsw i32 %10, -3
  %544 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  br label %741

; <label>:545:                                    ; preds = %33
  %546 = add i32 %10, -3
  %547 = load double, double* %63, align 8, !tbaa !8
  %548 = load i64, i64* %96, align 16, !tbaa !8
  %549 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %550 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %551 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %552 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %553 = zext i32 %546 to i64
  br label %554

; <label>:554:                                    ; preds = %554, %545
  %555 = phi double [ %728, %554 ], [ %528, %545 ]
  %556 = phi double [ %721, %554 ], [ %522, %545 ]
  %557 = phi double [ %714, %554 ], [ %514, %545 ]
  %558 = phi double [ %707, %554 ], [ %505, %545 ]
  %559 = phi double [ %700, %554 ], [ %496, %545 ]
  %560 = phi i64 [ %738, %554 ], [ %548, %545 ]
  %561 = phi double [ %556, %554 ], [ %520, %545 ]
  %562 = phi double [ %557, %554 ], [ %512, %545 ]
  %563 = phi double [ %558, %554 ], [ %503, %545 ]
  %564 = phi double [ %559, %554 ], [ %494, %545 ]
  %565 = phi i64 [ %737, %554 ], [ %537, %545 ]
  %566 = phi double [ %561, %554 ], [ %547, %545 ]
  %567 = phi double [ %562, %554 ], [ %509, %545 ]
  %568 = phi double [ %563, %554 ], [ %500, %545 ]
  %569 = phi double [ %564, %554 ], [ %491, %545 ]
  %570 = phi i64 [ %736, %554 ], [ %536, %545 ]
  %571 = phi i64 [ %735, %554 ], [ %535, %545 ]
  %572 = phi i64 [ %734, %554 ], [ %534, %545 ]
  %573 = phi i64 [ %733, %554 ], [ %533, %545 ]
  %574 = phi i64 [ %732, %554 ], [ %532, %545 ]
  %575 = phi i64 [ %604, %554 ], [ 3, %545 ]
  %576 = phi double [ %577, %554 ], [ %203, %545 ]
  %577 = phi double [ %606, %554 ], [ %381, %545 ]
  %578 = phi double [ %579, %554 ], [ %207, %545 ]
  %579 = phi double [ %608, %554 ], [ %385, %545 ]
  %580 = phi double [ %616, %554 ], [ %401, %545 ]
  %581 = phi double [ %580, %554 ], [ %223, %545 ]
  %582 = phi double [ %614, %554 ], [ %397, %545 ]
  %583 = phi double [ %582, %554 ], [ %219, %545 ]
  %584 = phi double [ %612, %554 ], [ %393, %545 ]
  %585 = phi double [ %584, %554 ], [ %215, %545 ]
  %586 = phi double [ %610, %554 ], [ %389, %545 ]
  %587 = phi double [ %586, %554 ], [ %211, %545 ]
  store i64 %574, i64* %162, align 16, !tbaa !8
  store i64 %573, i64* %167, align 8, !tbaa !8
  store i64 %572, i64* %172, align 16, !tbaa !8
  store i64 %571, i64* %177, align 8, !tbaa !8
  store i64 %570, i64* %182, align 16, !tbaa !8
  store i64 %565, i64* %179, align 16, !tbaa !8
  store i64 %560, i64* %69, align 16, !tbaa !8
  %588 = add nuw nsw i64 %575, 2
  %589 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %588, i64 %42, i64 %44
  %590 = bitcast [5 x double]* %589 to i64*
  %591 = load i64, i64* %590, align 8, !tbaa !8
  store i64 %591, i64* %102, align 16, !tbaa !8
  %592 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %588, i64 %42, i64 %44, i64 1
  %593 = bitcast double* %592 to i64*
  %594 = load i64, i64* %593, align 8, !tbaa !8
  store i64 %594, i64* %107, align 8, !tbaa !8
  %595 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %588, i64 %42, i64 %44, i64 2
  %596 = bitcast double* %595 to i64*
  %597 = load i64, i64* %596, align 8, !tbaa !8
  store i64 %597, i64* %112, align 16, !tbaa !8
  %598 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %588, i64 %42, i64 %44, i64 3
  %599 = bitcast double* %598 to i64*
  %600 = load i64, i64* %599, align 8, !tbaa !8
  store i64 %600, i64* %117, align 8, !tbaa !8
  %601 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %588, i64 %42, i64 %44, i64 4
  %602 = bitcast double* %601 to i64*
  %603 = load i64, i64* %602, align 8, !tbaa !8
  store i64 %603, i64* %122, align 16, !tbaa !8
  %604 = add nuw nsw i64 %575, 1
  %605 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %34, i64 %604, i64 %42, i64 %44
  %606 = load double, double* %605, align 8, !tbaa !8
  %607 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %35, i64 %604, i64 %42, i64 %44
  %608 = load double, double* %607, align 8, !tbaa !8
  %609 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %36, i64 %604, i64 %42, i64 %44
  %610 = load double, double* %609, align 8, !tbaa !8
  %611 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %37, i64 %604, i64 %42, i64 %44
  %612 = load double, double* %611, align 8, !tbaa !8
  %613 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %38, i64 %604, i64 %42, i64 %44
  %614 = load double, double* %613, align 8, !tbaa !8
  %615 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %39, i64 %604, i64 %42, i64 %44
  %616 = load double, double* %615, align 8, !tbaa !8
  %617 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %575, i64 %42, i64 %44, i64 0
  %618 = load double, double* %617, align 8, !tbaa !8
  %619 = tail call double @llvm.fmuladd.f64(double %564, double -2.000000e+00, double %559)
  %620 = fadd double %619, %569
  %621 = tail call double @llvm.fmuladd.f64(double %620, double 1.210000e+02, double %618)
  %622 = fsub double %556, %566
  %623 = tail call double @llvm.fmuladd.f64(double %622, double -5.500000e+00, double %621)
  %624 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %575, i64 %42, i64 %44, i64 1
  %625 = load double, double* %624, align 8, !tbaa !8
  %626 = tail call double @llvm.fmuladd.f64(double %563, double -2.000000e+00, double %558)
  %627 = fadd double %626, %568
  %628 = tail call double @llvm.fmuladd.f64(double %627, double 1.210000e+02, double %625)
  %629 = tail call double @llvm.fmuladd.f64(double %577, double -2.000000e+00, double %606)
  %630 = fadd double %576, %629
  %631 = tail call double @llvm.fmuladd.f64(double %630, double 0x4028333333333334, double %628)
  %632 = fmul double %587, %568
  %633 = fsub double -0.000000e+00, %632
  %634 = tail call double @llvm.fmuladd.f64(double %558, double %610, double %633)
  %635 = tail call double @llvm.fmuladd.f64(double %634, double -5.500000e+00, double %631)
  %636 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %575, i64 %42, i64 %44, i64 2
  %637 = load double, double* %636, align 8, !tbaa !8
  %638 = tail call double @llvm.fmuladd.f64(double %562, double -2.000000e+00, double %557)
  %639 = fadd double %638, %567
  %640 = tail call double @llvm.fmuladd.f64(double %639, double 1.210000e+02, double %637)
  %641 = tail call double @llvm.fmuladd.f64(double %579, double -2.000000e+00, double %608)
  %642 = fadd double %578, %641
  %643 = tail call double @llvm.fmuladd.f64(double %642, double 0x4028333333333334, double %640)
  %644 = fmul double %587, %567
  %645 = fsub double -0.000000e+00, %644
  %646 = tail call double @llvm.fmuladd.f64(double %557, double %610, double %645)
  %647 = tail call double @llvm.fmuladd.f64(double %646, double -5.500000e+00, double %643)
  %648 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %575, i64 %42, i64 %44, i64 3
  %649 = load double, double* %648, align 8, !tbaa !8
  %650 = tail call double @llvm.fmuladd.f64(double %561, double -2.000000e+00, double %556)
  %651 = fadd double %566, %650
  %652 = tail call double @llvm.fmuladd.f64(double %651, double 1.210000e+02, double %649)
  %653 = tail call double @llvm.fmuladd.f64(double %586, double -2.000000e+00, double %610)
  %654 = fadd double %587, %653
  %655 = tail call double @llvm.fmuladd.f64(double %654, double 0x4030222222222222, double %652)
  %656 = fmul double %587, %566
  %657 = fsub double -0.000000e+00, %656
  %658 = tail call double @llvm.fmuladd.f64(double %556, double %610, double %657)
  %659 = fsub double %555, %616
  %660 = load double, double* %178, align 16, !tbaa !8
  %661 = fsub double %659, %660
  %662 = fadd double %581, %661
  %663 = tail call double @llvm.fmuladd.f64(double %662, double 4.000000e-01, double %658)
  %664 = tail call double @llvm.fmuladd.f64(double %663, double -5.500000e+00, double %655)
  %665 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %575, i64 %42, i64 %44, i64 4
  %666 = load double, double* %665, align 8, !tbaa !8
  %667 = load double, double* %68, align 16, !tbaa !8
  %668 = tail call double @llvm.fmuladd.f64(double %667, double -2.000000e+00, double %555)
  %669 = fadd double %660, %668
  %670 = tail call double @llvm.fmuladd.f64(double %669, double 1.210000e+02, double %666)
  %671 = tail call double @llvm.fmuladd.f64(double %584, double -2.000000e+00, double %612)
  %672 = fadd double %585, %671
  %673 = tail call double @llvm.fmuladd.f64(double %672, double 0xC0273B645A1CAC07, double %670)
  %674 = fmul double %586, 2.000000e+00
  %675 = fmul double %586, %674
  %676 = fsub double -0.000000e+00, %675
  %677 = tail call double @llvm.fmuladd.f64(double %610, double %610, double %676)
  %678 = tail call double @llvm.fmuladd.f64(double %587, double %587, double %677)
  %679 = tail call double @llvm.fmuladd.f64(double %678, double 0x4000222222222222, double %673)
  %680 = fmul double %667, 2.000000e+00
  %681 = fmul double %582, %680
  %682 = fsub double -0.000000e+00, %681
  %683 = tail call double @llvm.fmuladd.f64(double %555, double %614, double %682)
  %684 = tail call double @llvm.fmuladd.f64(double %660, double %583, double %683)
  %685 = tail call double @llvm.fmuladd.f64(double %684, double 0x4037B74BC6A7EF9D, double %679)
  %686 = fmul double %616, 4.000000e-01
  %687 = fsub double -0.000000e+00, %686
  %688 = tail call double @llvm.fmuladd.f64(double %555, double 1.400000e+00, double %687)
  %689 = fmul double %581, 4.000000e-01
  %690 = fsub double -0.000000e+00, %689
  %691 = tail call double @llvm.fmuladd.f64(double %660, double 1.400000e+00, double %690)
  %692 = fmul double %587, %691
  %693 = fsub double -0.000000e+00, %692
  %694 = tail call double @llvm.fmuladd.f64(double %688, double %610, double %693)
  %695 = tail call double @llvm.fmuladd.f64(double %694, double -5.500000e+00, double %685)
  %696 = load double, double* %552, align 16, !tbaa !8
  %697 = tail call double @llvm.fmuladd.f64(double %569, double -4.000000e+00, double %696)
  %698 = tail call double @llvm.fmuladd.f64(double %564, double 6.000000e+00, double %697)
  %699 = tail call double @llvm.fmuladd.f64(double %559, double -4.000000e+00, double %698)
  %700 = load double, double* %327, align 16, !tbaa !8
  %701 = fadd double %699, %700
  %702 = tail call double @llvm.fmuladd.f64(double %321, double %701, double %623)
  store double %702, double* %617, align 8, !tbaa !8
  %703 = load double, double* %166, align 8, !tbaa !8
  %704 = tail call double @llvm.fmuladd.f64(double %568, double -4.000000e+00, double %703)
  %705 = tail call double @llvm.fmuladd.f64(double %563, double 6.000000e+00, double %704)
  %706 = tail call double @llvm.fmuladd.f64(double %558, double -4.000000e+00, double %705)
  %707 = load double, double* %106, align 8, !tbaa !8
  %708 = fadd double %706, %707
  %709 = tail call double @llvm.fmuladd.f64(double %321, double %708, double %635)
  store double %709, double* %624, align 8, !tbaa !8
  %710 = load double, double* %171, align 16, !tbaa !8
  %711 = tail call double @llvm.fmuladd.f64(double %567, double -4.000000e+00, double %710)
  %712 = tail call double @llvm.fmuladd.f64(double %562, double 6.000000e+00, double %711)
  %713 = tail call double @llvm.fmuladd.f64(double %557, double -4.000000e+00, double %712)
  %714 = load double, double* %111, align 16, !tbaa !8
  %715 = fadd double %713, %714
  %716 = tail call double @llvm.fmuladd.f64(double %321, double %715, double %647)
  store double %716, double* %636, align 8, !tbaa !8
  %717 = load double, double* %176, align 8, !tbaa !8
  %718 = tail call double @llvm.fmuladd.f64(double %566, double -4.000000e+00, double %717)
  %719 = tail call double @llvm.fmuladd.f64(double %561, double 6.000000e+00, double %718)
  %720 = tail call double @llvm.fmuladd.f64(double %556, double -4.000000e+00, double %719)
  %721 = load double, double* %116, align 8, !tbaa !8
  %722 = fadd double %720, %721
  %723 = tail call double @llvm.fmuladd.f64(double %321, double %722, double %664)
  store double %723, double* %648, align 8, !tbaa !8
  %724 = load double, double* %181, align 16, !tbaa !8
  %725 = tail call double @llvm.fmuladd.f64(double %660, double -4.000000e+00, double %724)
  %726 = tail call double @llvm.fmuladd.f64(double %667, double 6.000000e+00, double %725)
  %727 = tail call double @llvm.fmuladd.f64(double %555, double -4.000000e+00, double %726)
  %728 = load double, double* %121, align 16, !tbaa !8
  %729 = fadd double %727, %728
  %730 = tail call double @llvm.fmuladd.f64(double %321, double %729, double %695)
  store double %730, double* %665, align 8, !tbaa !8
  %731 = icmp eq i64 %604, %553
  %732 = bitcast double %569 to i64
  %733 = bitcast double %568 to i64
  %734 = bitcast double %567 to i64
  %735 = bitcast double %566 to i64
  %736 = bitcast double %660 to i64
  %737 = bitcast double %667 to i64
  %738 = bitcast double %555 to i64
  br i1 %731, label %739, label %554

; <label>:739:                                    ; preds = %554
  store double %569, double* %549, align 16, !tbaa !8
  store double %568, double* %163, align 8, !tbaa !8
  store double %567, double* %168, align 16, !tbaa !8
  store double %566, double* %173, align 8, !tbaa !8
  store double %564, double* %550, align 16, !tbaa !8
  store double %563, double* %53, align 8, !tbaa !8
  store double %562, double* %58, align 16, !tbaa !8
  store double %561, double* %63, align 8, !tbaa !8
  store double %559, double* %551, align 16, !tbaa !8
  store double %558, double* %80, align 8, !tbaa !8
  store double %557, double* %85, align 16, !tbaa !8
  store double %556, double* %90, align 8, !tbaa !8
  store double %555, double* %95, align 16, !tbaa !8
  %740 = bitcast double %561 to i64
  br label %741

; <label>:741:                                    ; preds = %538, %739
  %742 = phi double* [ %544, %538 ], [ %552, %739 ]
  %743 = phi i32 [ %543, %538 ], [ %546, %739 ]
  %744 = phi double [ %528, %538 ], [ %728, %739 ]
  %745 = phi double [ %522, %538 ], [ %721, %739 ]
  %746 = phi double [ %514, %538 ], [ %714, %739 ]
  %747 = phi double [ %505, %538 ], [ %707, %739 ]
  %748 = phi double [ %496, %538 ], [ %700, %739 ]
  %749 = phi double [ %542, %538 ], [ %555, %739 ]
  %750 = phi i64 [ %541, %538 ], [ %738, %739 ]
  %751 = phi double [ %520, %538 ], [ %556, %739 ]
  %752 = phi double [ %512, %538 ], [ %557, %739 ]
  %753 = phi double [ %503, %538 ], [ %558, %739 ]
  %754 = phi double [ %494, %538 ], [ %559, %739 ]
  %755 = phi i64 [ %537, %538 ], [ %737, %739 ]
  %756 = phi double [ %540, %538 ], [ %561, %739 ]
  %757 = phi i64 [ %539, %538 ], [ %740, %739 ]
  %758 = phi double [ %509, %538 ], [ %562, %739 ]
  %759 = phi double [ %500, %538 ], [ %563, %739 ]
  %760 = phi double [ %491, %538 ], [ %564, %739 ]
  %761 = phi i64 [ %536, %538 ], [ %736, %739 ]
  %762 = phi i64 [ %535, %538 ], [ %735, %739 ]
  %763 = phi i64 [ %534, %538 ], [ %734, %739 ]
  %764 = phi i64 [ %533, %538 ], [ %733, %739 ]
  %765 = phi i64 [ %532, %538 ], [ %732, %739 ]
  %766 = phi double [ %211, %538 ], [ %586, %739 ]
  %767 = phi double [ %389, %538 ], [ %610, %739 ]
  %768 = phi double [ %215, %538 ], [ %584, %739 ]
  %769 = phi double [ %393, %538 ], [ %612, %739 ]
  %770 = phi double [ %219, %538 ], [ %582, %739 ]
  %771 = phi double [ %397, %538 ], [ %614, %739 ]
  %772 = phi double [ %223, %538 ], [ %580, %739 ]
  %773 = phi double [ %401, %538 ], [ %616, %739 ]
  %774 = phi double [ %385, %538 ], [ %608, %739 ]
  %775 = phi double [ %207, %538 ], [ %579, %739 ]
  %776 = phi double [ %381, %538 ], [ %606, %739 ]
  %777 = phi double [ %203, %538 ], [ %577, %739 ]
  store i64 %765, i64* %162, align 16, !tbaa !8
  store i64 %764, i64* %167, align 8, !tbaa !8
  store i64 %763, i64* %172, align 16, !tbaa !8
  store i64 %762, i64* %177, align 8, !tbaa !8
  store i64 %761, i64* %182, align 16, !tbaa !8
  %778 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %760, double* %778, align 16, !tbaa !8
  store double %759, double* %163, align 8, !tbaa !8
  store double %758, double* %168, align 16, !tbaa !8
  store double %756, double* %173, align 8, !tbaa !8
  store i64 %755, i64* %179, align 16, !tbaa !8
  %779 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %754, double* %779, align 16, !tbaa !8
  store double %753, double* %53, align 8, !tbaa !8
  store double %752, double* %58, align 16, !tbaa !8
  store double %751, double* %63, align 8, !tbaa !8
  store double %749, double* %68, align 16, !tbaa !8
  %780 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  store double %748, double* %780, align 16, !tbaa !8
  store double %747, double* %80, align 8, !tbaa !8
  store double %746, double* %85, align 16, !tbaa !8
  store double %745, double* %90, align 8, !tbaa !8
  store double %744, double* %95, align 16, !tbaa !8
  %781 = add nsw i32 %10, -1
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %782, i64 %42, i64 %44
  %784 = bitcast [5 x double]* %783 to i64*
  %785 = load i64, i64* %784, align 8, !tbaa !8
  store i64 %785, i64* %102, align 16, !tbaa !8
  %786 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %782, i64 %42, i64 %44, i64 1
  %787 = bitcast double* %786 to i64*
  %788 = load i64, i64* %787, align 8, !tbaa !8
  store i64 %788, i64* %107, align 8, !tbaa !8
  %789 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %782, i64 %42, i64 %44, i64 2
  %790 = bitcast double* %789 to i64*
  %791 = load i64, i64* %790, align 8, !tbaa !8
  store i64 %791, i64* %112, align 16, !tbaa !8
  %792 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %782, i64 %42, i64 %44, i64 3
  %793 = bitcast double* %792 to i64*
  %794 = load i64, i64* %793, align 8, !tbaa !8
  store i64 %794, i64* %117, align 8, !tbaa !8
  %795 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %40, i64 %782, i64 %42, i64 %44, i64 4
  %796 = bitcast double* %795 to i64*
  %797 = load i64, i64* %796, align 8, !tbaa !8
  store i64 %797, i64* %122, align 16, !tbaa !8
  %798 = add nsw i32 %10, -2
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %34, i64 %799, i64 %42, i64 %44
  %801 = load double, double* %800, align 8, !tbaa !8
  %802 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %35, i64 %799, i64 %42, i64 %44
  %803 = load double, double* %802, align 8, !tbaa !8
  %804 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %36, i64 %799, i64 %42, i64 %44
  %805 = load double, double* %804, align 8, !tbaa !8
  %806 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %37, i64 %799, i64 %42, i64 %44
  %807 = load double, double* %806, align 8, !tbaa !8
  %808 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %38, i64 %799, i64 %42, i64 %44
  %809 = load double, double* %808, align 8, !tbaa !8
  %810 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %39, i64 %799, i64 %42, i64 %44
  %811 = load double, double* %810, align 8, !tbaa !8
  %812 = sext i32 %743 to i64
  %813 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %812, i64 %42, i64 %44, i64 0
  %814 = load double, double* %813, align 8, !tbaa !8
  %815 = tail call double @llvm.fmuladd.f64(double %754, double -2.000000e+00, double %748)
  %816 = fadd double %815, %760
  %817 = tail call double @llvm.fmuladd.f64(double %816, double 1.210000e+02, double %814)
  %818 = fsub double %745, %756
  %819 = tail call double @llvm.fmuladd.f64(double %818, double -5.500000e+00, double %817)
  %820 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %812, i64 %42, i64 %44, i64 1
  %821 = load double, double* %820, align 8, !tbaa !8
  %822 = tail call double @llvm.fmuladd.f64(double %753, double -2.000000e+00, double %747)
  %823 = fadd double %822, %759
  %824 = tail call double @llvm.fmuladd.f64(double %823, double 1.210000e+02, double %821)
  %825 = tail call double @llvm.fmuladd.f64(double %776, double -2.000000e+00, double %801)
  %826 = fadd double %777, %825
  %827 = tail call double @llvm.fmuladd.f64(double %826, double 0x4028333333333334, double %824)
  %828 = fmul double %766, %759
  %829 = fsub double -0.000000e+00, %828
  %830 = tail call double @llvm.fmuladd.f64(double %747, double %805, double %829)
  %831 = tail call double @llvm.fmuladd.f64(double %830, double -5.500000e+00, double %827)
  %832 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %812, i64 %42, i64 %44, i64 2
  %833 = load double, double* %832, align 8, !tbaa !8
  %834 = tail call double @llvm.fmuladd.f64(double %752, double -2.000000e+00, double %746)
  %835 = fadd double %834, %758
  %836 = tail call double @llvm.fmuladd.f64(double %835, double 1.210000e+02, double %833)
  %837 = tail call double @llvm.fmuladd.f64(double %774, double -2.000000e+00, double %803)
  %838 = fadd double %775, %837
  %839 = tail call double @llvm.fmuladd.f64(double %838, double 0x4028333333333334, double %836)
  %840 = fmul double %766, %758
  %841 = fsub double -0.000000e+00, %840
  %842 = tail call double @llvm.fmuladd.f64(double %746, double %805, double %841)
  %843 = tail call double @llvm.fmuladd.f64(double %842, double -5.500000e+00, double %839)
  %844 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %812, i64 %42, i64 %44, i64 3
  %845 = load double, double* %844, align 8, !tbaa !8
  %846 = tail call double @llvm.fmuladd.f64(double %751, double -2.000000e+00, double %745)
  %847 = fadd double %756, %846
  %848 = tail call double @llvm.fmuladd.f64(double %847, double 1.210000e+02, double %845)
  %849 = tail call double @llvm.fmuladd.f64(double %767, double -2.000000e+00, double %805)
  %850 = fadd double %766, %849
  %851 = tail call double @llvm.fmuladd.f64(double %850, double 0x4030222222222222, double %848)
  %852 = fmul double %766, %756
  %853 = fsub double -0.000000e+00, %852
  %854 = tail call double @llvm.fmuladd.f64(double %745, double %805, double %853)
  %855 = fsub double %744, %811
  %856 = load double, double* %178, align 16, !tbaa !8
  %857 = fsub double %855, %856
  %858 = fadd double %772, %857
  %859 = tail call double @llvm.fmuladd.f64(double %858, double 4.000000e-01, double %854)
  %860 = tail call double @llvm.fmuladd.f64(double %859, double -5.500000e+00, double %851)
  %861 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %812, i64 %42, i64 %44, i64 4
  %862 = load double, double* %861, align 8, !tbaa !8
  %863 = load double, double* %68, align 16, !tbaa !8
  %864 = tail call double @llvm.fmuladd.f64(double %863, double -2.000000e+00, double %744)
  %865 = fadd double %856, %864
  %866 = tail call double @llvm.fmuladd.f64(double %865, double 1.210000e+02, double %862)
  %867 = tail call double @llvm.fmuladd.f64(double %769, double -2.000000e+00, double %807)
  %868 = fadd double %768, %867
  %869 = tail call double @llvm.fmuladd.f64(double %868, double 0xC0273B645A1CAC07, double %866)
  %870 = fmul double %767, 2.000000e+00
  %871 = fmul double %767, %870
  %872 = fsub double -0.000000e+00, %871
  %873 = tail call double @llvm.fmuladd.f64(double %805, double %805, double %872)
  %874 = tail call double @llvm.fmuladd.f64(double %766, double %766, double %873)
  %875 = tail call double @llvm.fmuladd.f64(double %874, double 0x4000222222222222, double %869)
  %876 = fmul double %863, 2.000000e+00
  %877 = fmul double %771, %876
  %878 = fsub double -0.000000e+00, %877
  %879 = tail call double @llvm.fmuladd.f64(double %744, double %809, double %878)
  %880 = tail call double @llvm.fmuladd.f64(double %856, double %770, double %879)
  %881 = tail call double @llvm.fmuladd.f64(double %880, double 0x4037B74BC6A7EF9D, double %875)
  %882 = fmul double %811, 4.000000e-01
  %883 = fsub double -0.000000e+00, %882
  %884 = tail call double @llvm.fmuladd.f64(double %744, double 1.400000e+00, double %883)
  %885 = fmul double %772, 4.000000e-01
  %886 = fsub double -0.000000e+00, %885
  %887 = tail call double @llvm.fmuladd.f64(double %856, double 1.400000e+00, double %886)
  %888 = fmul double %766, %887
  %889 = fsub double -0.000000e+00, %888
  %890 = tail call double @llvm.fmuladd.f64(double %884, double %805, double %889)
  %891 = tail call double @llvm.fmuladd.f64(double %890, double -5.500000e+00, double %881)
  %892 = load double, double* %742, align 8, !tbaa !8
  %893 = load double, double* %159, align 16, !tbaa !8
  %894 = tail call double @llvm.fmuladd.f64(double %893, double -4.000000e+00, double %892)
  %895 = load double, double* %48, align 16, !tbaa !8
  %896 = tail call double @llvm.fmuladd.f64(double %895, double 6.000000e+00, double %894)
  %897 = load double, double* %75, align 16, !tbaa !8
  %898 = tail call double @llvm.fmuladd.f64(double %897, double -4.000000e+00, double %896)
  %899 = tail call double @llvm.fmuladd.f64(double %321, double %898, double %819)
  store double %899, double* %813, align 8, !tbaa !8
  %900 = load double, double* %166, align 8, !tbaa !8
  %901 = load double, double* %163, align 8, !tbaa !8
  %902 = tail call double @llvm.fmuladd.f64(double %901, double -4.000000e+00, double %900)
  %903 = load double, double* %53, align 8, !tbaa !8
  %904 = tail call double @llvm.fmuladd.f64(double %903, double 6.000000e+00, double %902)
  %905 = load double, double* %80, align 8, !tbaa !8
  %906 = tail call double @llvm.fmuladd.f64(double %905, double -4.000000e+00, double %904)
  %907 = tail call double @llvm.fmuladd.f64(double %321, double %906, double %831)
  store double %907, double* %820, align 8, !tbaa !8
  %908 = load double, double* %171, align 16, !tbaa !8
  %909 = load double, double* %168, align 16, !tbaa !8
  %910 = tail call double @llvm.fmuladd.f64(double %909, double -4.000000e+00, double %908)
  %911 = load double, double* %58, align 16, !tbaa !8
  %912 = tail call double @llvm.fmuladd.f64(double %911, double 6.000000e+00, double %910)
  %913 = load double, double* %85, align 16, !tbaa !8
  %914 = tail call double @llvm.fmuladd.f64(double %913, double -4.000000e+00, double %912)
  %915 = tail call double @llvm.fmuladd.f64(double %321, double %914, double %843)
  store double %915, double* %832, align 8, !tbaa !8
  %916 = load double, double* %176, align 8, !tbaa !8
  %917 = load double, double* %173, align 8, !tbaa !8
  %918 = tail call double @llvm.fmuladd.f64(double %917, double -4.000000e+00, double %916)
  %919 = load double, double* %63, align 8, !tbaa !8
  %920 = tail call double @llvm.fmuladd.f64(double %919, double 6.000000e+00, double %918)
  %921 = load double, double* %90, align 8, !tbaa !8
  %922 = tail call double @llvm.fmuladd.f64(double %921, double -4.000000e+00, double %920)
  %923 = tail call double @llvm.fmuladd.f64(double %321, double %922, double %860)
  store double %923, double* %844, align 8, !tbaa !8
  %924 = load double, double* %181, align 16, !tbaa !8
  %925 = tail call double @llvm.fmuladd.f64(double %856, double -4.000000e+00, double %924)
  %926 = tail call double @llvm.fmuladd.f64(double %863, double 6.000000e+00, double %925)
  %927 = load double, double* %95, align 16, !tbaa !8
  %928 = tail call double @llvm.fmuladd.f64(double %927, double -4.000000e+00, double %926)
  %929 = tail call double @llvm.fmuladd.f64(double %321, double %928, double %891)
  store double %929, double* %861, align 8, !tbaa !8
  %930 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  store double %760, double* %930, align 16, !tbaa !8
  store double %759, double* %166, align 8, !tbaa !8
  store double %758, double* %171, align 16, !tbaa !8
  store i64 %757, i64* %177, align 8, !tbaa !8
  store i64 %755, i64* %182, align 16, !tbaa !8
  %931 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %754, double* %931, align 16, !tbaa !8
  store double %753, double* %163, align 8, !tbaa !8
  store double %752, double* %168, align 16, !tbaa !8
  store double %751, double* %173, align 8, !tbaa !8
  store i64 %750, i64* %179, align 16, !tbaa !8
  %932 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %748, double* %932, align 16, !tbaa !8
  store double %747, double* %53, align 8, !tbaa !8
  store double %746, double* %58, align 16, !tbaa !8
  store double %745, double* %63, align 8, !tbaa !8
  store double %744, double* %68, align 16, !tbaa !8
  store i64 %785, i64* %76, align 16, !tbaa !8
  store i64 %788, i64* %81, align 8, !tbaa !8
  store i64 %791, i64* %86, align 16, !tbaa !8
  store i64 %794, i64* %91, align 8, !tbaa !8
  store i64 %797, i64* %96, align 16, !tbaa !8
  %933 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %34, i64 %782, i64 %42, i64 %44
  %934 = load double, double* %933, align 8, !tbaa !8
  %935 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %35, i64 %782, i64 %42, i64 %44
  %936 = load double, double* %935, align 8, !tbaa !8
  %937 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %36, i64 %782, i64 %42, i64 %44
  %938 = load double, double* %937, align 8, !tbaa !8
  %939 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %37, i64 %782, i64 %42, i64 %44
  %940 = load double, double* %939, align 8, !tbaa !8
  %941 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %38, i64 %782, i64 %42, i64 %44
  %942 = load double, double* %941, align 8, !tbaa !8
  %943 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %39, i64 %782, i64 %42, i64 %44
  %944 = load double, double* %943, align 8, !tbaa !8
  %945 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %799, i64 %42, i64 %44, i64 0
  %946 = load double, double* %945, align 8, !tbaa !8
  %947 = bitcast i64 %785 to double
  %948 = tail call double @llvm.fmuladd.f64(double %748, double -2.000000e+00, double %947)
  %949 = fadd double %948, %754
  %950 = tail call double @llvm.fmuladd.f64(double %949, double 1.210000e+02, double %946)
  %951 = bitcast i64 %794 to double
  %952 = fsub double %951, %751
  %953 = tail call double @llvm.fmuladd.f64(double %952, double -5.500000e+00, double %950)
  %954 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %799, i64 %42, i64 %44, i64 1
  %955 = load double, double* %954, align 8, !tbaa !8
  %956 = bitcast i64 %788 to double
  %957 = tail call double @llvm.fmuladd.f64(double %747, double -2.000000e+00, double %956)
  %958 = fadd double %957, %753
  %959 = tail call double @llvm.fmuladd.f64(double %958, double 1.210000e+02, double %955)
  %960 = tail call double @llvm.fmuladd.f64(double %801, double -2.000000e+00, double %934)
  %961 = fadd double %776, %960
  %962 = tail call double @llvm.fmuladd.f64(double %961, double 0x4028333333333334, double %959)
  %963 = fmul double %767, %753
  %964 = fsub double -0.000000e+00, %963
  %965 = tail call double @llvm.fmuladd.f64(double %956, double %938, double %964)
  %966 = tail call double @llvm.fmuladd.f64(double %965, double -5.500000e+00, double %962)
  %967 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %799, i64 %42, i64 %44, i64 2
  %968 = load double, double* %967, align 8, !tbaa !8
  %969 = bitcast i64 %791 to double
  %970 = tail call double @llvm.fmuladd.f64(double %746, double -2.000000e+00, double %969)
  %971 = fadd double %970, %752
  %972 = tail call double @llvm.fmuladd.f64(double %971, double 1.210000e+02, double %968)
  %973 = tail call double @llvm.fmuladd.f64(double %803, double -2.000000e+00, double %936)
  %974 = fadd double %774, %973
  %975 = tail call double @llvm.fmuladd.f64(double %974, double 0x4028333333333334, double %972)
  %976 = fmul double %767, %752
  %977 = fsub double -0.000000e+00, %976
  %978 = tail call double @llvm.fmuladd.f64(double %969, double %938, double %977)
  %979 = tail call double @llvm.fmuladd.f64(double %978, double -5.500000e+00, double %975)
  %980 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %799, i64 %42, i64 %44, i64 3
  %981 = load double, double* %980, align 8, !tbaa !8
  %982 = tail call double @llvm.fmuladd.f64(double %745, double -2.000000e+00, double %951)
  %983 = fadd double %751, %982
  %984 = tail call double @llvm.fmuladd.f64(double %983, double 1.210000e+02, double %981)
  %985 = tail call double @llvm.fmuladd.f64(double %805, double -2.000000e+00, double %938)
  %986 = fadd double %767, %985
  %987 = tail call double @llvm.fmuladd.f64(double %986, double 0x4030222222222222, double %984)
  %988 = fmul double %767, %751
  %989 = fsub double -0.000000e+00, %988
  %990 = tail call double @llvm.fmuladd.f64(double %951, double %938, double %989)
  %991 = bitcast i64 %797 to double
  %992 = fsub double %991, %944
  %993 = fsub double %992, %749
  %994 = fadd double %773, %993
  %995 = tail call double @llvm.fmuladd.f64(double %994, double 4.000000e-01, double %990)
  %996 = tail call double @llvm.fmuladd.f64(double %995, double -5.500000e+00, double %987)
  %997 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %360, i64 %799, i64 %42, i64 %44, i64 4
  %998 = load double, double* %997, align 8, !tbaa !8
  %999 = tail call double @llvm.fmuladd.f64(double %744, double -2.000000e+00, double %991)
  %1000 = fadd double %749, %999
  %1001 = tail call double @llvm.fmuladd.f64(double %1000, double 1.210000e+02, double %998)
  %1002 = tail call double @llvm.fmuladd.f64(double %807, double -2.000000e+00, double %940)
  %1003 = fadd double %769, %1002
  %1004 = tail call double @llvm.fmuladd.f64(double %1003, double 0xC0273B645A1CAC07, double %1001)
  %1005 = fmul double %805, 2.000000e+00
  %1006 = fmul double %805, %1005
  %1007 = fsub double -0.000000e+00, %1006
  %1008 = tail call double @llvm.fmuladd.f64(double %938, double %938, double %1007)
  %1009 = tail call double @llvm.fmuladd.f64(double %767, double %767, double %1008)
  %1010 = tail call double @llvm.fmuladd.f64(double %1009, double 0x4000222222222222, double %1004)
  %1011 = fmul double %744, 2.000000e+00
  %1012 = fmul double %809, %1011
  %1013 = fsub double -0.000000e+00, %1012
  %1014 = tail call double @llvm.fmuladd.f64(double %991, double %942, double %1013)
  %1015 = tail call double @llvm.fmuladd.f64(double %749, double %771, double %1014)
  %1016 = tail call double @llvm.fmuladd.f64(double %1015, double 0x4037B74BC6A7EF9D, double %1010)
  %1017 = fmul double %944, 4.000000e-01
  %1018 = fsub double -0.000000e+00, %1017
  %1019 = tail call double @llvm.fmuladd.f64(double %991, double 1.400000e+00, double %1018)
  %1020 = fmul double %773, 4.000000e-01
  %1021 = fsub double -0.000000e+00, %1020
  %1022 = tail call double @llvm.fmuladd.f64(double %749, double 1.400000e+00, double %1021)
  %1023 = fmul double %767, %1022
  %1024 = fsub double -0.000000e+00, %1023
  %1025 = tail call double @llvm.fmuladd.f64(double %1019, double %938, double %1024)
  %1026 = tail call double @llvm.fmuladd.f64(double %1025, double -5.500000e+00, double %1016)
  %1027 = load double, double* %742, align 8, !tbaa !8
  %1028 = load double, double* %159, align 16, !tbaa !8
  %1029 = tail call double @llvm.fmuladd.f64(double %1028, double -4.000000e+00, double %1027)
  %1030 = load double, double* %48, align 16, !tbaa !8
  %1031 = tail call double @llvm.fmuladd.f64(double %1030, double 5.000000e+00, double %1029)
  %1032 = tail call double @llvm.fmuladd.f64(double %321, double %1031, double %953)
  store double %1032, double* %945, align 8, !tbaa !8
  %1033 = load double, double* %166, align 8, !tbaa !8
  %1034 = load double, double* %163, align 8, !tbaa !8
  %1035 = tail call double @llvm.fmuladd.f64(double %1034, double -4.000000e+00, double %1033)
  %1036 = load double, double* %53, align 8, !tbaa !8
  %1037 = tail call double @llvm.fmuladd.f64(double %1036, double 5.000000e+00, double %1035)
  %1038 = tail call double @llvm.fmuladd.f64(double %321, double %1037, double %966)
  store double %1038, double* %954, align 8, !tbaa !8
  %1039 = load double, double* %171, align 16, !tbaa !8
  %1040 = load double, double* %168, align 16, !tbaa !8
  %1041 = tail call double @llvm.fmuladd.f64(double %1040, double -4.000000e+00, double %1039)
  %1042 = load double, double* %58, align 16, !tbaa !8
  %1043 = tail call double @llvm.fmuladd.f64(double %1042, double 5.000000e+00, double %1041)
  %1044 = tail call double @llvm.fmuladd.f64(double %321, double %1043, double %979)
  store double %1044, double* %967, align 8, !tbaa !8
  %1045 = load double, double* %176, align 8, !tbaa !8
  %1046 = load double, double* %173, align 8, !tbaa !8
  %1047 = tail call double @llvm.fmuladd.f64(double %1046, double -4.000000e+00, double %1045)
  %1048 = load double, double* %63, align 8, !tbaa !8
  %1049 = tail call double @llvm.fmuladd.f64(double %1048, double 5.000000e+00, double %1047)
  %1050 = tail call double @llvm.fmuladd.f64(double %321, double %1049, double %996)
  store double %1050, double* %980, align 8, !tbaa !8
  %1051 = load double, double* %181, align 16, !tbaa !8
  %1052 = load double, double* %178, align 16, !tbaa !8
  %1053 = tail call double @llvm.fmuladd.f64(double %1052, double -4.000000e+00, double %1051)
  %1054 = load double, double* %68, align 16, !tbaa !8
  %1055 = tail call double @llvm.fmuladd.f64(double %1054, double 5.000000e+00, double %1053)
  %1056 = tail call double @llvm.fmuladd.f64(double %321, double %1055, double %1026)
  store double %1056, double* %997, align 8, !tbaa !8
  br label %1057

; <label>:1057:                                   ; preds = %741, %11, %29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind readnone
declare double @_Z3maxdd(double, double) local_unnamed_addr #2

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"const", !"const", !"const", !"const", !"const", !"const", !"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
