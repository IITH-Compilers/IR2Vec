; ModuleID = 'npb-SP-compute_rhs5.cl'
source_filename = "npb-SP-compute_rhs5.cl"
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
  %22 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %26 = add i64 %25, 1
  %27 = add nsw i32 %9, -2
  %28 = icmp slt i32 %27, %24
  br i1 %28, label %1053, label %29

; <label>:29:                                     ; preds = %11
  %30 = trunc i64 %26 to i32
  %31 = add nsw i32 %8, -2
  %32 = icmp slt i32 %31, %30
  br i1 %32, label %1053, label %33

; <label>:33:                                     ; preds = %29
  %34 = bitcast double* %0 to [163 x [163 x [5 x double]]]*
  %35 = bitcast double* %1 to [163 x [163 x double]]*
  %36 = bitcast double* %2 to [163 x [163 x double]]*
  %37 = bitcast double* %3 to [163 x [163 x double]]*
  %38 = bitcast double* %4 to [163 x [163 x double]]*
  %39 = bitcast double* %5 to [163 x [163 x double]]*
  %40 = bitcast double* %6 to [163 x [163 x double]]*
  %41 = shl i64 %23, 32
  %42 = ashr exact i64 %41, 32
  %43 = shl i64 %26, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 0, i64 %42, i64 %44
  %46 = bitcast [5 x double]* %45 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !8
  %48 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %49 = bitcast [5 x double]* %12 to i64*
  store i64 %47, i64* %49, align 16, !tbaa !8
  %50 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 0, i64 %42, i64 %44, i64 1
  %51 = bitcast double* %50 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !8
  %53 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 1
  %54 = bitcast double* %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !8
  %55 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 0, i64 %42, i64 %44, i64 2
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !8
  %58 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 2
  %59 = bitcast double* %58 to i64*
  store i64 %57, i64* %59, align 16, !tbaa !8
  %60 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 0, i64 %42, i64 %44, i64 3
  %61 = bitcast double* %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !8
  %63 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 3
  %64 = bitcast double* %63 to i64*
  store i64 %62, i64* %64, align 8, !tbaa !8
  %65 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 0, i64 %42, i64 %44, i64 4
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !8
  %68 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 4
  %69 = bitcast double* %68 to i64*
  store i64 %67, i64* %69, align 16, !tbaa !8
  %70 = getelementptr inbounds double, double* %0, i64 132845
  %71 = bitcast double* %70 to [163 x [163 x [5 x double]]]*
  %72 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44
  %73 = bitcast [5 x double]* %72 to i64*
  %74 = load i64, i64* %73, align 8, !tbaa !8
  %75 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %76 = bitcast [5 x double]* %13 to i64*
  store i64 %74, i64* %76, align 16, !tbaa !8
  %77 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 1
  %78 = bitcast double* %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 1
  %81 = bitcast double* %80 to i64*
  store i64 %79, i64* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 2
  %83 = bitcast double* %82 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !8
  %85 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 2
  %86 = bitcast double* %85 to i64*
  store i64 %84, i64* %86, align 16, !tbaa !8
  %87 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 3
  %88 = bitcast double* %87 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 3
  %91 = bitcast double* %90 to i64*
  store i64 %89, i64* %91, align 8, !tbaa !8
  %92 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %71, i64 0, i64 %42, i64 %44, i64 4
  %93 = bitcast double* %92 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !8
  %95 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 4
  %96 = bitcast double* %95 to i64*
  store i64 %94, i64* %96, align 16, !tbaa !8
  %97 = getelementptr inbounds double, double* %0, i64 265690
  %98 = bitcast double* %97 to [163 x [163 x [5 x double]]]*
  %99 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44
  %100 = bitcast [5 x double]* %99 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !8
  %102 = bitcast [5 x double]* %14 to i64*
  store i64 %101, i64* %102, align 16, !tbaa !8
  %103 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 1
  %104 = bitcast double* %103 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 1
  %107 = bitcast double* %106 to i64*
  store i64 %105, i64* %107, align 8, !tbaa !8
  %108 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 2
  %109 = bitcast double* %108 to i64*
  %110 = load i64, i64* %109, align 8, !tbaa !8
  %111 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 2
  %112 = bitcast double* %111 to i64*
  store i64 %110, i64* %112, align 16, !tbaa !8
  %113 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 3
  %114 = bitcast double* %113 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !8
  %116 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 3
  %117 = bitcast double* %116 to i64*
  store i64 %115, i64* %117, align 8, !tbaa !8
  %118 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %98, i64 0, i64 %42, i64 %44, i64 4
  %119 = bitcast double* %118 to i64*
  %120 = load i64, i64* %119, align 8, !tbaa !8
  %121 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 4
  %122 = bitcast double* %121 to i64*
  store i64 %120, i64* %122, align 16, !tbaa !8
  %123 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %35, i64 0, i64 %42, i64 %44
  %124 = load double, double* %123, align 8, !tbaa !8
  %125 = getelementptr inbounds double, double* %1, i64 26569
  %126 = bitcast double* %125 to [163 x [163 x double]]*
  %127 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %126, i64 0, i64 %42, i64 %44
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %36, i64 0, i64 %42, i64 %44
  %130 = load double, double* %129, align 8, !tbaa !8
  %131 = getelementptr inbounds double, double* %2, i64 26569
  %132 = bitcast double* %131 to [163 x [163 x double]]*
  %133 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %132, i64 0, i64 %42, i64 %44
  %134 = load double, double* %133, align 8, !tbaa !8
  %135 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %37, i64 0, i64 %42, i64 %44
  %136 = load double, double* %135, align 8, !tbaa !8
  %137 = getelementptr inbounds double, double* %3, i64 26569
  %138 = bitcast double* %137 to [163 x [163 x double]]*
  %139 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %138, i64 0, i64 %42, i64 %44
  %140 = load double, double* %139, align 8, !tbaa !8
  %141 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %38, i64 0, i64 %42, i64 %44
  %142 = load double, double* %141, align 8, !tbaa !8
  %143 = getelementptr inbounds double, double* %4, i64 26569
  %144 = bitcast double* %143 to [163 x [163 x double]]*
  %145 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %144, i64 0, i64 %42, i64 %44
  %146 = load double, double* %145, align 8, !tbaa !8
  %147 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %39, i64 0, i64 %42, i64 %44
  %148 = load double, double* %147, align 8, !tbaa !8
  %149 = getelementptr inbounds double, double* %5, i64 26569
  %150 = bitcast double* %149 to [163 x [163 x double]]*
  %151 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %150, i64 0, i64 %42, i64 %44
  %152 = load double, double* %151, align 8, !tbaa !8
  %153 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %40, i64 0, i64 %42, i64 %44
  %154 = load double, double* %153, align 8, !tbaa !8
  %155 = getelementptr inbounds double, double* %6, i64 26569
  %156 = bitcast double* %155 to [163 x [163 x double]]*
  %157 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %156, i64 0, i64 %42, i64 %44
  %158 = load double, double* %157, align 8, !tbaa !8
  %159 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %160 = bitcast [5 x double]* %15 to i64*
  %161 = load i64, i64* %160, align 16, !tbaa !8
  %162 = bitcast [5 x double]* %16 to i64*
  store i64 %161, i64* %162, align 16, !tbaa !8
  %163 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 1
  %164 = bitcast double* %163 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !8
  %166 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 1
  %167 = bitcast double* %166 to i64*
  store i64 %165, i64* %167, align 8, !tbaa !8
  %168 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 2
  %169 = bitcast double* %168 to i64*
  %170 = load i64, i64* %169, align 16, !tbaa !8
  %171 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 2
  %172 = bitcast double* %171 to i64*
  store i64 %170, i64* %172, align 16, !tbaa !8
  %173 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 3
  %174 = bitcast double* %173 to i64*
  %175 = load i64, i64* %174, align 8, !tbaa !8
  %176 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 3
  %177 = bitcast double* %176 to i64*
  store i64 %175, i64* %177, align 8, !tbaa !8
  %178 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 4
  %179 = bitcast double* %178 to i64*
  %180 = load i64, i64* %179, align 16, !tbaa !8
  %181 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 4
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
  %183 = getelementptr inbounds double, double* %0, i64 398535
  %184 = bitcast double* %183 to [163 x [163 x [5 x double]]]*
  %185 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44
  %186 = bitcast [5 x double]* %185 to i64*
  %187 = load i64, i64* %186, align 8, !tbaa !8
  store i64 %187, i64* %102, align 16, !tbaa !8
  %188 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 1
  %189 = bitcast double* %188 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !8
  store i64 %190, i64* %107, align 8, !tbaa !8
  %191 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 2
  %192 = bitcast double* %191 to i64*
  %193 = load i64, i64* %192, align 8, !tbaa !8
  store i64 %193, i64* %112, align 16, !tbaa !8
  %194 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 3
  %195 = bitcast double* %194 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !8
  store i64 %196, i64* %117, align 8, !tbaa !8
  %197 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %184, i64 0, i64 %42, i64 %44, i64 4
  %198 = bitcast double* %197 to i64*
  %199 = load i64, i64* %198, align 8, !tbaa !8
  store i64 %199, i64* %122, align 16, !tbaa !8
  %200 = getelementptr inbounds double, double* %1, i64 53138
  %201 = bitcast double* %200 to [163 x [163 x double]]*
  %202 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %201, i64 0, i64 %42, i64 %44
  %203 = load double, double* %202, align 8, !tbaa !8
  %204 = getelementptr inbounds double, double* %2, i64 53138
  %205 = bitcast double* %204 to [163 x [163 x double]]*
  %206 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %205, i64 0, i64 %42, i64 %44
  %207 = load double, double* %206, align 8, !tbaa !8
  %208 = getelementptr inbounds double, double* %3, i64 53138
  %209 = bitcast double* %208 to [163 x [163 x double]]*
  %210 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %209, i64 0, i64 %42, i64 %44
  %211 = load double, double* %210, align 8, !tbaa !8
  %212 = getelementptr inbounds double, double* %4, i64 53138
  %213 = bitcast double* %212 to [163 x [163 x double]]*
  %214 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %213, i64 0, i64 %42, i64 %44
  %215 = load double, double* %214, align 8, !tbaa !8
  %216 = getelementptr inbounds double, double* %5, i64 53138
  %217 = bitcast double* %216 to [163 x [163 x double]]*
  %218 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %217, i64 0, i64 %42, i64 %44
  %219 = load double, double* %218, align 8, !tbaa !8
  %220 = getelementptr inbounds double, double* %6, i64 53138
  %221 = bitcast double* %220 to [163 x [163 x double]]*
  %222 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %221, i64 0, i64 %42, i64 %44
  %223 = load double, double* %222, align 8, !tbaa !8
  %224 = getelementptr inbounds double, double* %7, i64 132845
  %225 = bitcast double* %224 to [163 x [163 x [5 x double]]]*
  %226 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 0
  %227 = load double, double* %226, align 8, !tbaa !8
  %228 = bitcast i64 %101 to double
  %229 = bitcast i64 %74 to double
  %230 = tail call double @llvm.fmuladd.f64(double %229, double -2.000000e+00, double %228)
  %231 = bitcast i64 %47 to double
  %232 = fadd double %230, %231
  %233 = tail call double @llvm.fmuladd.f64(double %232, double 0x40D9504000000001, double %227)
  %234 = bitcast i64 %115 to double
  %235 = bitcast i64 %62 to double
  %236 = fsub double %234, %235
  %237 = tail call double @llvm.fmuladd.f64(double %236, double -8.050000e+01, double %233)
  %238 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 1
  %239 = load double, double* %238, align 8, !tbaa !8
  %240 = bitcast i64 %105 to double
  %241 = bitcast i64 %79 to double
  %242 = tail call double @llvm.fmuladd.f64(double %241, double -2.000000e+00, double %240)
  %243 = bitcast i64 %52 to double
  %244 = fadd double %242, %243
  %245 = tail call double @llvm.fmuladd.f64(double %244, double 0x40D9504000000001, double %239)
  %246 = tail call double @llvm.fmuladd.f64(double %128, double -2.000000e+00, double %203)
  %247 = fadd double %124, %246
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 0x40A4403333333334, double %245)
  %249 = fmul double %136, %243
  %250 = fsub double -0.000000e+00, %249
  %251 = tail call double @llvm.fmuladd.f64(double %240, double %211, double %250)
  %252 = tail call double @llvm.fmuladd.f64(double %251, double -8.050000e+01, double %248)
  %253 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 2
  %254 = load double, double* %253, align 8, !tbaa !8
  %255 = bitcast i64 %110 to double
  %256 = bitcast i64 %84 to double
  %257 = tail call double @llvm.fmuladd.f64(double %256, double -2.000000e+00, double %255)
  %258 = bitcast i64 %57 to double
  %259 = fadd double %257, %258
  %260 = tail call double @llvm.fmuladd.f64(double %259, double 0x40D9504000000001, double %254)
  %261 = tail call double @llvm.fmuladd.f64(double %134, double -2.000000e+00, double %207)
  %262 = fadd double %130, %261
  %263 = tail call double @llvm.fmuladd.f64(double %262, double 0x40A4403333333334, double %260)
  %264 = fmul double %136, %258
  %265 = fsub double -0.000000e+00, %264
  %266 = tail call double @llvm.fmuladd.f64(double %255, double %211, double %265)
  %267 = tail call double @llvm.fmuladd.f64(double %266, double -8.050000e+01, double %263)
  %268 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 3
  %269 = load double, double* %268, align 8, !tbaa !8
  %270 = load double, double* %63, align 8, !tbaa !8
  %271 = tail call double @llvm.fmuladd.f64(double %270, double -2.000000e+00, double %234)
  %272 = fadd double %271, %235
  %273 = tail call double @llvm.fmuladd.f64(double %272, double 0x40D9504000000001, double %269)
  %274 = tail call double @llvm.fmuladd.f64(double %140, double -2.000000e+00, double %211)
  %275 = fadd double %136, %274
  %276 = tail call double @llvm.fmuladd.f64(double %275, double 0x40AB004444444445, double %273)
  %277 = fmul double %136, %235
  %278 = fsub double -0.000000e+00, %277
  %279 = tail call double @llvm.fmuladd.f64(double %234, double %211, double %278)
  %280 = load double, double* %95, align 16, !tbaa !8
  %281 = fsub double %280, %223
  %282 = load double, double* %178, align 16, !tbaa !8
  %283 = fsub double %281, %282
  %284 = fadd double %154, %283
  %285 = tail call double @llvm.fmuladd.f64(double %284, double 4.000000e-01, double %279)
  %286 = tail call double @llvm.fmuladd.f64(double %285, double -8.050000e+01, double %276)
  %287 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %225, i64 0, i64 %42, i64 %44, i64 4
  %288 = load double, double* %287, align 8, !tbaa !8
  %289 = load double, double* %68, align 16, !tbaa !8
  %290 = tail call double @llvm.fmuladd.f64(double %289, double -2.000000e+00, double %280)
  %291 = fadd double %282, %290
  %292 = tail call double @llvm.fmuladd.f64(double %291, double 0x40D9504000000001, double %288)
  %293 = tail call double @llvm.fmuladd.f64(double %146, double -2.000000e+00, double %215)
  %294 = fadd double %142, %293
  %295 = tail call double @llvm.fmuladd.f64(double %294, double 0xC0A370D4FDF3B645, double %292)
  %296 = fmul double %140, 2.000000e+00
  %297 = fmul double %140, %296
  %298 = fsub double -0.000000e+00, %297
  %299 = tail call double @llvm.fmuladd.f64(double %211, double %211, double %298)
  %300 = tail call double @llvm.fmuladd.f64(double %136, double %136, double %299)
  %301 = tail call double @llvm.fmuladd.f64(double %300, double 0x407B004444444445, double %295)
  %302 = fmul double %289, 2.000000e+00
  %303 = fmul double %152, %302
  %304 = fsub double -0.000000e+00, %303
  %305 = tail call double @llvm.fmuladd.f64(double %280, double %219, double %304)
  %306 = tail call double @llvm.fmuladd.f64(double %282, double %148, double %305)
  %307 = tail call double @llvm.fmuladd.f64(double %306, double 0x40B3D884189374BC, double %301)
  %308 = fmul double %223, 4.000000e-01
  %309 = fsub double -0.000000e+00, %308
  %310 = tail call double @llvm.fmuladd.f64(double %280, double 1.400000e+00, double %309)
  %311 = fmul double %154, 4.000000e-01
  %312 = fsub double -0.000000e+00, %311
  %313 = tail call double @llvm.fmuladd.f64(double %282, double 1.400000e+00, double %312)
  %314 = fmul double %136, %313
  %315 = fsub double -0.000000e+00, %314
  %316 = tail call double @llvm.fmuladd.f64(double %310, double %211, double %315)
  %317 = tail call double @llvm.fmuladd.f64(double %316, double -8.050000e+01, double %307)
  %318 = load double, double* %48, align 16, !tbaa !8
  %319 = load double, double* %75, align 16, !tbaa !8
  %320 = fmul double %319, 4.000000e+00
  %321 = fsub double -0.000000e+00, %320
  %322 = tail call double @llvm.fmuladd.f64(double %318, double 5.000000e+00, double %321)
  %323 = getelementptr inbounds [5 x double], [5 x double]* %14, i64 0, i64 0
  %324 = load double, double* %323, align 16, !tbaa !8
  %325 = fadd double %324, %322
  %326 = tail call double @llvm.fmuladd.f64(double %325, double -2.500000e-01, double %237)
  store double %326, double* %226, align 8, !tbaa !8
  %327 = load double, double* %53, align 8, !tbaa !8
  %328 = load double, double* %80, align 8, !tbaa !8
  %329 = fmul double %328, 4.000000e+00
  %330 = fsub double -0.000000e+00, %329
  %331 = tail call double @llvm.fmuladd.f64(double %327, double 5.000000e+00, double %330)
  %332 = load double, double* %106, align 8, !tbaa !8
  %333 = fadd double %332, %331
  %334 = tail call double @llvm.fmuladd.f64(double %333, double -2.500000e-01, double %252)
  store double %334, double* %238, align 8, !tbaa !8
  %335 = load double, double* %58, align 16, !tbaa !8
  %336 = load double, double* %85, align 16, !tbaa !8
  %337 = fmul double %336, 4.000000e+00
  %338 = fsub double -0.000000e+00, %337
  %339 = tail call double @llvm.fmuladd.f64(double %335, double 5.000000e+00, double %338)
  %340 = load double, double* %111, align 16, !tbaa !8
  %341 = fadd double %340, %339
  %342 = tail call double @llvm.fmuladd.f64(double %341, double -2.500000e-01, double %267)
  store double %342, double* %253, align 8, !tbaa !8
  %343 = load double, double* %90, align 8, !tbaa !8
  %344 = fmul double %343, 4.000000e+00
  %345 = fsub double -0.000000e+00, %344
  %346 = tail call double @llvm.fmuladd.f64(double %270, double 5.000000e+00, double %345)
  %347 = load double, double* %116, align 8, !tbaa !8
  %348 = fadd double %347, %346
  %349 = tail call double @llvm.fmuladd.f64(double %348, double -2.500000e-01, double %286)
  store double %349, double* %268, align 8, !tbaa !8
  %350 = fmul double %280, 4.000000e+00
  %351 = fsub double -0.000000e+00, %350
  %352 = tail call double @llvm.fmuladd.f64(double %289, double 5.000000e+00, double %351)
  %353 = load double, double* %121, align 16, !tbaa !8
  %354 = fadd double %353, %352
  %355 = tail call double @llvm.fmuladd.f64(double %354, double -2.500000e-01, double %317)
  store double %355, double* %287, align 8, !tbaa !8
  %356 = bitcast double* %7 to [163 x [163 x [5 x double]]]*
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
  %357 = getelementptr inbounds double, double* %0, i64 531380
  %358 = bitcast double* %357 to [163 x [163 x [5 x double]]]*
  %359 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %358, i64 0, i64 %42, i64 %44
  %360 = bitcast [5 x double]* %359 to i64*
  %361 = load i64, i64* %360, align 8, !tbaa !8
  store i64 %361, i64* %102, align 16, !tbaa !8
  %362 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %358, i64 0, i64 %42, i64 %44, i64 1
  %363 = bitcast double* %362 to i64*
  %364 = load i64, i64* %363, align 8, !tbaa !8
  store i64 %364, i64* %107, align 8, !tbaa !8
  %365 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %358, i64 0, i64 %42, i64 %44, i64 2
  %366 = bitcast double* %365 to i64*
  %367 = load i64, i64* %366, align 8, !tbaa !8
  store i64 %367, i64* %112, align 16, !tbaa !8
  %368 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %358, i64 0, i64 %42, i64 %44, i64 3
  %369 = bitcast double* %368 to i64*
  %370 = load i64, i64* %369, align 8, !tbaa !8
  store i64 %370, i64* %117, align 8, !tbaa !8
  %371 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %358, i64 0, i64 %42, i64 %44, i64 4
  %372 = bitcast double* %371 to i64*
  %373 = load i64, i64* %372, align 8, !tbaa !8
  store i64 %373, i64* %122, align 16, !tbaa !8
  %374 = getelementptr inbounds double, double* %1, i64 79707
  %375 = bitcast double* %374 to [163 x [163 x double]]*
  %376 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %375, i64 0, i64 %42, i64 %44
  %377 = load double, double* %376, align 8, !tbaa !8
  %378 = getelementptr inbounds double, double* %2, i64 79707
  %379 = bitcast double* %378 to [163 x [163 x double]]*
  %380 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %379, i64 0, i64 %42, i64 %44
  %381 = load double, double* %380, align 8, !tbaa !8
  %382 = getelementptr inbounds double, double* %3, i64 79707
  %383 = bitcast double* %382 to [163 x [163 x double]]*
  %384 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %383, i64 0, i64 %42, i64 %44
  %385 = load double, double* %384, align 8, !tbaa !8
  %386 = getelementptr inbounds double, double* %4, i64 79707
  %387 = bitcast double* %386 to [163 x [163 x double]]*
  %388 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %387, i64 0, i64 %42, i64 %44
  %389 = load double, double* %388, align 8, !tbaa !8
  %390 = getelementptr inbounds double, double* %5, i64 79707
  %391 = bitcast double* %390 to [163 x [163 x double]]*
  %392 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %391, i64 0, i64 %42, i64 %44
  %393 = load double, double* %392, align 8, !tbaa !8
  %394 = getelementptr inbounds double, double* %6, i64 79707
  %395 = bitcast double* %394 to [163 x [163 x double]]*
  %396 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %395, i64 0, i64 %42, i64 %44
  %397 = load double, double* %396, align 8, !tbaa !8
  %398 = getelementptr inbounds double, double* %7, i64 265690
  %399 = bitcast double* %398 to [163 x [163 x [5 x double]]]*
  %400 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %399, i64 0, i64 %42, i64 %44, i64 0
  %401 = load double, double* %400, align 8, !tbaa !8
  %402 = bitcast i64 %187 to double
  %403 = tail call double @llvm.fmuladd.f64(double %228, double -2.000000e+00, double %402)
  %404 = fadd double %403, %229
  %405 = tail call double @llvm.fmuladd.f64(double %404, double 0x40D9504000000001, double %401)
  %406 = bitcast i64 %196 to double
  %407 = bitcast i64 %89 to double
  %408 = fsub double %406, %407
  %409 = tail call double @llvm.fmuladd.f64(double %408, double -8.050000e+01, double %405)
  %410 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %399, i64 0, i64 %42, i64 %44, i64 1
  %411 = load double, double* %410, align 8, !tbaa !8
  %412 = bitcast i64 %190 to double
  %413 = tail call double @llvm.fmuladd.f64(double %240, double -2.000000e+00, double %412)
  %414 = fadd double %413, %241
  %415 = tail call double @llvm.fmuladd.f64(double %414, double 0x40D9504000000001, double %411)
  %416 = tail call double @llvm.fmuladd.f64(double %203, double -2.000000e+00, double %377)
  %417 = fadd double %128, %416
  %418 = tail call double @llvm.fmuladd.f64(double %417, double 0x40A4403333333334, double %415)
  %419 = fmul double %140, %241
  %420 = fsub double -0.000000e+00, %419
  %421 = tail call double @llvm.fmuladd.f64(double %412, double %385, double %420)
  %422 = tail call double @llvm.fmuladd.f64(double %421, double -8.050000e+01, double %418)
  %423 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %399, i64 0, i64 %42, i64 %44, i64 2
  %424 = load double, double* %423, align 8, !tbaa !8
  %425 = bitcast i64 %193 to double
  %426 = tail call double @llvm.fmuladd.f64(double %255, double -2.000000e+00, double %425)
  %427 = fadd double %426, %256
  %428 = tail call double @llvm.fmuladd.f64(double %427, double 0x40D9504000000001, double %424)
  %429 = tail call double @llvm.fmuladd.f64(double %207, double -2.000000e+00, double %381)
  %430 = fadd double %134, %429
  %431 = tail call double @llvm.fmuladd.f64(double %430, double 0x40A4403333333334, double %428)
  %432 = fmul double %140, %256
  %433 = fsub double -0.000000e+00, %432
  %434 = tail call double @llvm.fmuladd.f64(double %425, double %385, double %433)
  %435 = tail call double @llvm.fmuladd.f64(double %434, double -8.050000e+01, double %431)
  %436 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %399, i64 0, i64 %42, i64 %44, i64 3
  %437 = load double, double* %436, align 8, !tbaa !8
  %438 = load double, double* %63, align 8, !tbaa !8
  %439 = tail call double @llvm.fmuladd.f64(double %438, double -2.000000e+00, double %406)
  %440 = fadd double %439, %407
  %441 = tail call double @llvm.fmuladd.f64(double %440, double 0x40D9504000000001, double %437)
  %442 = tail call double @llvm.fmuladd.f64(double %211, double -2.000000e+00, double %385)
  %443 = fadd double %140, %442
  %444 = tail call double @llvm.fmuladd.f64(double %443, double 0x40AB004444444445, double %441)
  %445 = fmul double %140, %407
  %446 = fsub double -0.000000e+00, %445
  %447 = tail call double @llvm.fmuladd.f64(double %406, double %385, double %446)
  %448 = load double, double* %95, align 16, !tbaa !8
  %449 = fsub double %448, %397
  %450 = load double, double* %178, align 16, !tbaa !8
  %451 = fsub double %449, %450
  %452 = fadd double %158, %451
  %453 = tail call double @llvm.fmuladd.f64(double %452, double 4.000000e-01, double %447)
  %454 = tail call double @llvm.fmuladd.f64(double %453, double -8.050000e+01, double %444)
  %455 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %399, i64 0, i64 %42, i64 %44, i64 4
  %456 = load double, double* %455, align 8, !tbaa !8
  %457 = load double, double* %68, align 16, !tbaa !8
  %458 = tail call double @llvm.fmuladd.f64(double %457, double -2.000000e+00, double %448)
  %459 = fadd double %450, %458
  %460 = tail call double @llvm.fmuladd.f64(double %459, double 0x40D9504000000001, double %456)
  %461 = tail call double @llvm.fmuladd.f64(double %215, double -2.000000e+00, double %389)
  %462 = fadd double %146, %461
  %463 = tail call double @llvm.fmuladd.f64(double %462, double 0xC0A370D4FDF3B645, double %460)
  %464 = fmul double %211, 2.000000e+00
  %465 = fmul double %211, %464
  %466 = fsub double -0.000000e+00, %465
  %467 = tail call double @llvm.fmuladd.f64(double %385, double %385, double %466)
  %468 = tail call double @llvm.fmuladd.f64(double %140, double %140, double %467)
  %469 = tail call double @llvm.fmuladd.f64(double %468, double 0x407B004444444445, double %463)
  %470 = fmul double %457, 2.000000e+00
  %471 = fmul double %219, %470
  %472 = fsub double -0.000000e+00, %471
  %473 = tail call double @llvm.fmuladd.f64(double %448, double %393, double %472)
  %474 = tail call double @llvm.fmuladd.f64(double %450, double %152, double %473)
  %475 = tail call double @llvm.fmuladd.f64(double %474, double 0x40B3D884189374BC, double %469)
  %476 = fmul double %397, 4.000000e-01
  %477 = fsub double -0.000000e+00, %476
  %478 = tail call double @llvm.fmuladd.f64(double %448, double 1.400000e+00, double %477)
  %479 = fmul double %158, 4.000000e-01
  %480 = fsub double -0.000000e+00, %479
  %481 = tail call double @llvm.fmuladd.f64(double %450, double 1.400000e+00, double %480)
  %482 = fmul double %140, %481
  %483 = fsub double -0.000000e+00, %482
  %484 = tail call double @llvm.fmuladd.f64(double %478, double %385, double %483)
  %485 = tail call double @llvm.fmuladd.f64(double %484, double -8.050000e+01, double %475)
  %486 = load double, double* %159, align 16, !tbaa !8
  %487 = load double, double* %48, align 16, !tbaa !8
  %488 = fmul double %487, 6.000000e+00
  %489 = tail call double @llvm.fmuladd.f64(double %486, double -4.000000e+00, double %488)
  %490 = load double, double* %75, align 16, !tbaa !8
  %491 = tail call double @llvm.fmuladd.f64(double %490, double -4.000000e+00, double %489)
  %492 = load double, double* %323, align 16, !tbaa !8
  %493 = fadd double %492, %491
  %494 = tail call double @llvm.fmuladd.f64(double %493, double -2.500000e-01, double %409)
  store double %494, double* %400, align 8, !tbaa !8
  %495 = load double, double* %163, align 8, !tbaa !8
  %496 = load double, double* %53, align 8, !tbaa !8
  %497 = fmul double %496, 6.000000e+00
  %498 = tail call double @llvm.fmuladd.f64(double %495, double -4.000000e+00, double %497)
  %499 = load double, double* %80, align 8, !tbaa !8
  %500 = tail call double @llvm.fmuladd.f64(double %499, double -4.000000e+00, double %498)
  %501 = load double, double* %106, align 8, !tbaa !8
  %502 = fadd double %501, %500
  %503 = tail call double @llvm.fmuladd.f64(double %502, double -2.500000e-01, double %422)
  store double %503, double* %410, align 8, !tbaa !8
  %504 = load double, double* %168, align 16, !tbaa !8
  %505 = load double, double* %58, align 16, !tbaa !8
  %506 = fmul double %505, 6.000000e+00
  %507 = tail call double @llvm.fmuladd.f64(double %504, double -4.000000e+00, double %506)
  %508 = load double, double* %85, align 16, !tbaa !8
  %509 = tail call double @llvm.fmuladd.f64(double %508, double -4.000000e+00, double %507)
  %510 = load double, double* %111, align 16, !tbaa !8
  %511 = fadd double %510, %509
  %512 = tail call double @llvm.fmuladd.f64(double %511, double -2.500000e-01, double %435)
  store double %512, double* %423, align 8, !tbaa !8
  %513 = load double, double* %173, align 8, !tbaa !8
  %514 = fmul double %438, 6.000000e+00
  %515 = tail call double @llvm.fmuladd.f64(double %513, double -4.000000e+00, double %514)
  %516 = load double, double* %90, align 8, !tbaa !8
  %517 = tail call double @llvm.fmuladd.f64(double %516, double -4.000000e+00, double %515)
  %518 = load double, double* %116, align 8, !tbaa !8
  %519 = fadd double %518, %517
  %520 = tail call double @llvm.fmuladd.f64(double %519, double -2.500000e-01, double %454)
  store double %520, double* %436, align 8, !tbaa !8
  %521 = fmul double %457, 6.000000e+00
  %522 = tail call double @llvm.fmuladd.f64(double %450, double -4.000000e+00, double %521)
  %523 = tail call double @llvm.fmuladd.f64(double %448, double -4.000000e+00, double %522)
  %524 = load double, double* %121, align 16, !tbaa !8
  %525 = fadd double %524, %523
  %526 = tail call double @llvm.fmuladd.f64(double %525, double -2.500000e-01, double %485)
  store double %526, double* %455, align 8, !tbaa !8
  %527 = icmp slt i32 %10, 7
  %528 = bitcast double %486 to i64
  %529 = bitcast double %495 to i64
  %530 = bitcast double %504 to i64
  %531 = bitcast double %513 to i64
  %532 = bitcast double %450 to i64
  %533 = bitcast double %457 to i64
  br i1 %527, label %534, label %541

; <label>:534:                                    ; preds = %33
  %535 = load i64, i64* %64, align 8, !tbaa !8
  %536 = bitcast i64 %535 to double
  %537 = load i64, i64* %96, align 16, !tbaa !8
  %538 = bitcast i64 %537 to double
  %539 = add nsw i32 %10, -3
  %540 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  br label %737

; <label>:541:                                    ; preds = %33
  %542 = add i32 %10, -3
  %543 = load double, double* %63, align 8, !tbaa !8
  %544 = load i64, i64* %96, align 16, !tbaa !8
  %545 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  %546 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  %547 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  %548 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  %549 = zext i32 %542 to i64
  br label %550

; <label>:550:                                    ; preds = %550, %541
  %551 = phi double [ %724, %550 ], [ %524, %541 ]
  %552 = phi double [ %717, %550 ], [ %518, %541 ]
  %553 = phi double [ %710, %550 ], [ %510, %541 ]
  %554 = phi double [ %703, %550 ], [ %501, %541 ]
  %555 = phi double [ %696, %550 ], [ %492, %541 ]
  %556 = phi i64 [ %734, %550 ], [ %544, %541 ]
  %557 = phi double [ %552, %550 ], [ %516, %541 ]
  %558 = phi double [ %553, %550 ], [ %508, %541 ]
  %559 = phi double [ %554, %550 ], [ %499, %541 ]
  %560 = phi double [ %555, %550 ], [ %490, %541 ]
  %561 = phi i64 [ %733, %550 ], [ %533, %541 ]
  %562 = phi double [ %557, %550 ], [ %543, %541 ]
  %563 = phi double [ %558, %550 ], [ %505, %541 ]
  %564 = phi double [ %559, %550 ], [ %496, %541 ]
  %565 = phi double [ %560, %550 ], [ %487, %541 ]
  %566 = phi i64 [ %732, %550 ], [ %532, %541 ]
  %567 = phi i64 [ %731, %550 ], [ %531, %541 ]
  %568 = phi i64 [ %730, %550 ], [ %530, %541 ]
  %569 = phi i64 [ %729, %550 ], [ %529, %541 ]
  %570 = phi i64 [ %728, %550 ], [ %528, %541 ]
  %571 = phi i64 [ %600, %550 ], [ 3, %541 ]
  %572 = phi double [ %573, %550 ], [ %203, %541 ]
  %573 = phi double [ %602, %550 ], [ %377, %541 ]
  %574 = phi double [ %575, %550 ], [ %207, %541 ]
  %575 = phi double [ %604, %550 ], [ %381, %541 ]
  %576 = phi double [ %612, %550 ], [ %397, %541 ]
  %577 = phi double [ %576, %550 ], [ %223, %541 ]
  %578 = phi double [ %610, %550 ], [ %393, %541 ]
  %579 = phi double [ %578, %550 ], [ %219, %541 ]
  %580 = phi double [ %608, %550 ], [ %389, %541 ]
  %581 = phi double [ %580, %550 ], [ %215, %541 ]
  %582 = phi double [ %606, %550 ], [ %385, %541 ]
  %583 = phi double [ %582, %550 ], [ %211, %541 ]
  store i64 %570, i64* %162, align 16, !tbaa !8
  store i64 %569, i64* %167, align 8, !tbaa !8
  store i64 %568, i64* %172, align 16, !tbaa !8
  store i64 %567, i64* %177, align 8, !tbaa !8
  store i64 %566, i64* %182, align 16, !tbaa !8
  store i64 %561, i64* %179, align 16, !tbaa !8
  store i64 %556, i64* %69, align 16, !tbaa !8
  %584 = add nuw nsw i64 %571, 2
  %585 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %584, i64 %42, i64 %44
  %586 = bitcast [5 x double]* %585 to i64*
  %587 = load i64, i64* %586, align 8, !tbaa !8
  store i64 %587, i64* %102, align 16, !tbaa !8
  %588 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %584, i64 %42, i64 %44, i64 1
  %589 = bitcast double* %588 to i64*
  %590 = load i64, i64* %589, align 8, !tbaa !8
  store i64 %590, i64* %107, align 8, !tbaa !8
  %591 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %584, i64 %42, i64 %44, i64 2
  %592 = bitcast double* %591 to i64*
  %593 = load i64, i64* %592, align 8, !tbaa !8
  store i64 %593, i64* %112, align 16, !tbaa !8
  %594 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %584, i64 %42, i64 %44, i64 3
  %595 = bitcast double* %594 to i64*
  %596 = load i64, i64* %595, align 8, !tbaa !8
  store i64 %596, i64* %117, align 8, !tbaa !8
  %597 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %584, i64 %42, i64 %44, i64 4
  %598 = bitcast double* %597 to i64*
  %599 = load i64, i64* %598, align 8, !tbaa !8
  store i64 %599, i64* %122, align 16, !tbaa !8
  %600 = add nuw nsw i64 %571, 1
  %601 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %35, i64 %600, i64 %42, i64 %44
  %602 = load double, double* %601, align 8, !tbaa !8
  %603 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %36, i64 %600, i64 %42, i64 %44
  %604 = load double, double* %603, align 8, !tbaa !8
  %605 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %37, i64 %600, i64 %42, i64 %44
  %606 = load double, double* %605, align 8, !tbaa !8
  %607 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %38, i64 %600, i64 %42, i64 %44
  %608 = load double, double* %607, align 8, !tbaa !8
  %609 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %39, i64 %600, i64 %42, i64 %44
  %610 = load double, double* %609, align 8, !tbaa !8
  %611 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %40, i64 %600, i64 %42, i64 %44
  %612 = load double, double* %611, align 8, !tbaa !8
  %613 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %571, i64 %42, i64 %44, i64 0
  %614 = load double, double* %613, align 8, !tbaa !8
  %615 = tail call double @llvm.fmuladd.f64(double %560, double -2.000000e+00, double %555)
  %616 = fadd double %615, %565
  %617 = tail call double @llvm.fmuladd.f64(double %616, double 0x40D9504000000001, double %614)
  %618 = fsub double %552, %562
  %619 = tail call double @llvm.fmuladd.f64(double %618, double -8.050000e+01, double %617)
  %620 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %571, i64 %42, i64 %44, i64 1
  %621 = load double, double* %620, align 8, !tbaa !8
  %622 = tail call double @llvm.fmuladd.f64(double %559, double -2.000000e+00, double %554)
  %623 = fadd double %622, %564
  %624 = tail call double @llvm.fmuladd.f64(double %623, double 0x40D9504000000001, double %621)
  %625 = tail call double @llvm.fmuladd.f64(double %573, double -2.000000e+00, double %602)
  %626 = fadd double %572, %625
  %627 = tail call double @llvm.fmuladd.f64(double %626, double 0x40A4403333333334, double %624)
  %628 = fmul double %583, %564
  %629 = fsub double -0.000000e+00, %628
  %630 = tail call double @llvm.fmuladd.f64(double %554, double %606, double %629)
  %631 = tail call double @llvm.fmuladd.f64(double %630, double -8.050000e+01, double %627)
  %632 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %571, i64 %42, i64 %44, i64 2
  %633 = load double, double* %632, align 8, !tbaa !8
  %634 = tail call double @llvm.fmuladd.f64(double %558, double -2.000000e+00, double %553)
  %635 = fadd double %634, %563
  %636 = tail call double @llvm.fmuladd.f64(double %635, double 0x40D9504000000001, double %633)
  %637 = tail call double @llvm.fmuladd.f64(double %575, double -2.000000e+00, double %604)
  %638 = fadd double %574, %637
  %639 = tail call double @llvm.fmuladd.f64(double %638, double 0x40A4403333333334, double %636)
  %640 = fmul double %583, %563
  %641 = fsub double -0.000000e+00, %640
  %642 = tail call double @llvm.fmuladd.f64(double %553, double %606, double %641)
  %643 = tail call double @llvm.fmuladd.f64(double %642, double -8.050000e+01, double %639)
  %644 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %571, i64 %42, i64 %44, i64 3
  %645 = load double, double* %644, align 8, !tbaa !8
  %646 = tail call double @llvm.fmuladd.f64(double %557, double -2.000000e+00, double %552)
  %647 = fadd double %562, %646
  %648 = tail call double @llvm.fmuladd.f64(double %647, double 0x40D9504000000001, double %645)
  %649 = tail call double @llvm.fmuladd.f64(double %582, double -2.000000e+00, double %606)
  %650 = fadd double %583, %649
  %651 = tail call double @llvm.fmuladd.f64(double %650, double 0x40AB004444444445, double %648)
  %652 = fmul double %583, %562
  %653 = fsub double -0.000000e+00, %652
  %654 = tail call double @llvm.fmuladd.f64(double %552, double %606, double %653)
  %655 = fsub double %551, %612
  %656 = load double, double* %178, align 16, !tbaa !8
  %657 = fsub double %655, %656
  %658 = fadd double %577, %657
  %659 = tail call double @llvm.fmuladd.f64(double %658, double 4.000000e-01, double %654)
  %660 = tail call double @llvm.fmuladd.f64(double %659, double -8.050000e+01, double %651)
  %661 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %571, i64 %42, i64 %44, i64 4
  %662 = load double, double* %661, align 8, !tbaa !8
  %663 = load double, double* %68, align 16, !tbaa !8
  %664 = tail call double @llvm.fmuladd.f64(double %663, double -2.000000e+00, double %551)
  %665 = fadd double %656, %664
  %666 = tail call double @llvm.fmuladd.f64(double %665, double 0x40D9504000000001, double %662)
  %667 = tail call double @llvm.fmuladd.f64(double %580, double -2.000000e+00, double %608)
  %668 = fadd double %581, %667
  %669 = tail call double @llvm.fmuladd.f64(double %668, double 0xC0A370D4FDF3B645, double %666)
  %670 = fmul double %582, 2.000000e+00
  %671 = fmul double %582, %670
  %672 = fsub double -0.000000e+00, %671
  %673 = tail call double @llvm.fmuladd.f64(double %606, double %606, double %672)
  %674 = tail call double @llvm.fmuladd.f64(double %583, double %583, double %673)
  %675 = tail call double @llvm.fmuladd.f64(double %674, double 0x407B004444444445, double %669)
  %676 = fmul double %663, 2.000000e+00
  %677 = fmul double %578, %676
  %678 = fsub double -0.000000e+00, %677
  %679 = tail call double @llvm.fmuladd.f64(double %551, double %610, double %678)
  %680 = tail call double @llvm.fmuladd.f64(double %656, double %579, double %679)
  %681 = tail call double @llvm.fmuladd.f64(double %680, double 0x40B3D884189374BC, double %675)
  %682 = fmul double %612, 4.000000e-01
  %683 = fsub double -0.000000e+00, %682
  %684 = tail call double @llvm.fmuladd.f64(double %551, double 1.400000e+00, double %683)
  %685 = fmul double %577, 4.000000e-01
  %686 = fsub double -0.000000e+00, %685
  %687 = tail call double @llvm.fmuladd.f64(double %656, double 1.400000e+00, double %686)
  %688 = fmul double %583, %687
  %689 = fsub double -0.000000e+00, %688
  %690 = tail call double @llvm.fmuladd.f64(double %684, double %606, double %689)
  %691 = tail call double @llvm.fmuladd.f64(double %690, double -8.050000e+01, double %681)
  %692 = load double, double* %548, align 16, !tbaa !8
  %693 = tail call double @llvm.fmuladd.f64(double %565, double -4.000000e+00, double %692)
  %694 = tail call double @llvm.fmuladd.f64(double %560, double 6.000000e+00, double %693)
  %695 = tail call double @llvm.fmuladd.f64(double %555, double -4.000000e+00, double %694)
  %696 = load double, double* %323, align 16, !tbaa !8
  %697 = fadd double %695, %696
  %698 = tail call double @llvm.fmuladd.f64(double %697, double -2.500000e-01, double %619)
  store double %698, double* %613, align 8, !tbaa !8
  %699 = load double, double* %166, align 8, !tbaa !8
  %700 = tail call double @llvm.fmuladd.f64(double %564, double -4.000000e+00, double %699)
  %701 = tail call double @llvm.fmuladd.f64(double %559, double 6.000000e+00, double %700)
  %702 = tail call double @llvm.fmuladd.f64(double %554, double -4.000000e+00, double %701)
  %703 = load double, double* %106, align 8, !tbaa !8
  %704 = fadd double %702, %703
  %705 = tail call double @llvm.fmuladd.f64(double %704, double -2.500000e-01, double %631)
  store double %705, double* %620, align 8, !tbaa !8
  %706 = load double, double* %171, align 16, !tbaa !8
  %707 = tail call double @llvm.fmuladd.f64(double %563, double -4.000000e+00, double %706)
  %708 = tail call double @llvm.fmuladd.f64(double %558, double 6.000000e+00, double %707)
  %709 = tail call double @llvm.fmuladd.f64(double %553, double -4.000000e+00, double %708)
  %710 = load double, double* %111, align 16, !tbaa !8
  %711 = fadd double %709, %710
  %712 = tail call double @llvm.fmuladd.f64(double %711, double -2.500000e-01, double %643)
  store double %712, double* %632, align 8, !tbaa !8
  %713 = load double, double* %176, align 8, !tbaa !8
  %714 = tail call double @llvm.fmuladd.f64(double %562, double -4.000000e+00, double %713)
  %715 = tail call double @llvm.fmuladd.f64(double %557, double 6.000000e+00, double %714)
  %716 = tail call double @llvm.fmuladd.f64(double %552, double -4.000000e+00, double %715)
  %717 = load double, double* %116, align 8, !tbaa !8
  %718 = fadd double %716, %717
  %719 = tail call double @llvm.fmuladd.f64(double %718, double -2.500000e-01, double %660)
  store double %719, double* %644, align 8, !tbaa !8
  %720 = load double, double* %181, align 16, !tbaa !8
  %721 = tail call double @llvm.fmuladd.f64(double %656, double -4.000000e+00, double %720)
  %722 = tail call double @llvm.fmuladd.f64(double %663, double 6.000000e+00, double %721)
  %723 = tail call double @llvm.fmuladd.f64(double %551, double -4.000000e+00, double %722)
  %724 = load double, double* %121, align 16, !tbaa !8
  %725 = fadd double %723, %724
  %726 = tail call double @llvm.fmuladd.f64(double %725, double -2.500000e-01, double %691)
  store double %726, double* %661, align 8, !tbaa !8
  %727 = icmp eq i64 %600, %549
  %728 = bitcast double %565 to i64
  %729 = bitcast double %564 to i64
  %730 = bitcast double %563 to i64
  %731 = bitcast double %562 to i64
  %732 = bitcast double %656 to i64
  %733 = bitcast double %663 to i64
  %734 = bitcast double %551 to i64
  br i1 %727, label %735, label %550

; <label>:735:                                    ; preds = %550
  store double %565, double* %545, align 16, !tbaa !8
  store double %564, double* %163, align 8, !tbaa !8
  store double %563, double* %168, align 16, !tbaa !8
  store double %562, double* %173, align 8, !tbaa !8
  store double %560, double* %546, align 16, !tbaa !8
  store double %559, double* %53, align 8, !tbaa !8
  store double %558, double* %58, align 16, !tbaa !8
  store double %557, double* %63, align 8, !tbaa !8
  store double %555, double* %547, align 16, !tbaa !8
  store double %554, double* %80, align 8, !tbaa !8
  store double %553, double* %85, align 16, !tbaa !8
  store double %552, double* %90, align 8, !tbaa !8
  store double %551, double* %95, align 16, !tbaa !8
  %736 = bitcast double %557 to i64
  br label %737

; <label>:737:                                    ; preds = %534, %735
  %738 = phi double* [ %540, %534 ], [ %548, %735 ]
  %739 = phi i32 [ %539, %534 ], [ %542, %735 ]
  %740 = phi double [ %524, %534 ], [ %724, %735 ]
  %741 = phi double [ %518, %534 ], [ %717, %735 ]
  %742 = phi double [ %510, %534 ], [ %710, %735 ]
  %743 = phi double [ %501, %534 ], [ %703, %735 ]
  %744 = phi double [ %492, %534 ], [ %696, %735 ]
  %745 = phi double [ %538, %534 ], [ %551, %735 ]
  %746 = phi i64 [ %537, %534 ], [ %734, %735 ]
  %747 = phi double [ %516, %534 ], [ %552, %735 ]
  %748 = phi double [ %508, %534 ], [ %553, %735 ]
  %749 = phi double [ %499, %534 ], [ %554, %735 ]
  %750 = phi double [ %490, %534 ], [ %555, %735 ]
  %751 = phi i64 [ %533, %534 ], [ %733, %735 ]
  %752 = phi double [ %536, %534 ], [ %557, %735 ]
  %753 = phi i64 [ %535, %534 ], [ %736, %735 ]
  %754 = phi double [ %505, %534 ], [ %558, %735 ]
  %755 = phi double [ %496, %534 ], [ %559, %735 ]
  %756 = phi double [ %487, %534 ], [ %560, %735 ]
  %757 = phi i64 [ %532, %534 ], [ %732, %735 ]
  %758 = phi i64 [ %531, %534 ], [ %731, %735 ]
  %759 = phi i64 [ %530, %534 ], [ %730, %735 ]
  %760 = phi i64 [ %529, %534 ], [ %729, %735 ]
  %761 = phi i64 [ %528, %534 ], [ %728, %735 ]
  %762 = phi double [ %211, %534 ], [ %582, %735 ]
  %763 = phi double [ %385, %534 ], [ %606, %735 ]
  %764 = phi double [ %215, %534 ], [ %580, %735 ]
  %765 = phi double [ %389, %534 ], [ %608, %735 ]
  %766 = phi double [ %219, %534 ], [ %578, %735 ]
  %767 = phi double [ %393, %534 ], [ %610, %735 ]
  %768 = phi double [ %223, %534 ], [ %576, %735 ]
  %769 = phi double [ %397, %534 ], [ %612, %735 ]
  %770 = phi double [ %381, %534 ], [ %604, %735 ]
  %771 = phi double [ %207, %534 ], [ %575, %735 ]
  %772 = phi double [ %377, %534 ], [ %602, %735 ]
  %773 = phi double [ %203, %534 ], [ %573, %735 ]
  store i64 %761, i64* %162, align 16, !tbaa !8
  store i64 %760, i64* %167, align 8, !tbaa !8
  store i64 %759, i64* %172, align 16, !tbaa !8
  store i64 %758, i64* %177, align 8, !tbaa !8
  store i64 %757, i64* %182, align 16, !tbaa !8
  %774 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  store double %756, double* %774, align 16, !tbaa !8
  store double %755, double* %163, align 8, !tbaa !8
  store double %754, double* %168, align 16, !tbaa !8
  store double %752, double* %173, align 8, !tbaa !8
  store i64 %751, i64* %179, align 16, !tbaa !8
  %775 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %750, double* %775, align 16, !tbaa !8
  store double %749, double* %53, align 8, !tbaa !8
  store double %748, double* %58, align 16, !tbaa !8
  store double %747, double* %63, align 8, !tbaa !8
  store double %745, double* %68, align 16, !tbaa !8
  %776 = getelementptr inbounds [5 x double], [5 x double]* %13, i64 0, i64 0
  store double %744, double* %776, align 16, !tbaa !8
  store double %743, double* %80, align 8, !tbaa !8
  store double %742, double* %85, align 16, !tbaa !8
  store double %741, double* %90, align 8, !tbaa !8
  store double %740, double* %95, align 16, !tbaa !8
  %777 = add nsw i32 %10, -1
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %778, i64 %42, i64 %44
  %780 = bitcast [5 x double]* %779 to i64*
  %781 = load i64, i64* %780, align 8, !tbaa !8
  store i64 %781, i64* %102, align 16, !tbaa !8
  %782 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %778, i64 %42, i64 %44, i64 1
  %783 = bitcast double* %782 to i64*
  %784 = load i64, i64* %783, align 8, !tbaa !8
  store i64 %784, i64* %107, align 8, !tbaa !8
  %785 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %778, i64 %42, i64 %44, i64 2
  %786 = bitcast double* %785 to i64*
  %787 = load i64, i64* %786, align 8, !tbaa !8
  store i64 %787, i64* %112, align 16, !tbaa !8
  %788 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %778, i64 %42, i64 %44, i64 3
  %789 = bitcast double* %788 to i64*
  %790 = load i64, i64* %789, align 8, !tbaa !8
  store i64 %790, i64* %117, align 8, !tbaa !8
  %791 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %34, i64 %778, i64 %42, i64 %44, i64 4
  %792 = bitcast double* %791 to i64*
  %793 = load i64, i64* %792, align 8, !tbaa !8
  store i64 %793, i64* %122, align 16, !tbaa !8
  %794 = add nsw i32 %10, -2
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %35, i64 %795, i64 %42, i64 %44
  %797 = load double, double* %796, align 8, !tbaa !8
  %798 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %36, i64 %795, i64 %42, i64 %44
  %799 = load double, double* %798, align 8, !tbaa !8
  %800 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %37, i64 %795, i64 %42, i64 %44
  %801 = load double, double* %800, align 8, !tbaa !8
  %802 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %38, i64 %795, i64 %42, i64 %44
  %803 = load double, double* %802, align 8, !tbaa !8
  %804 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %39, i64 %795, i64 %42, i64 %44
  %805 = load double, double* %804, align 8, !tbaa !8
  %806 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %40, i64 %795, i64 %42, i64 %44
  %807 = load double, double* %806, align 8, !tbaa !8
  %808 = sext i32 %739 to i64
  %809 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %808, i64 %42, i64 %44, i64 0
  %810 = load double, double* %809, align 8, !tbaa !8
  %811 = tail call double @llvm.fmuladd.f64(double %750, double -2.000000e+00, double %744)
  %812 = fadd double %811, %756
  %813 = tail call double @llvm.fmuladd.f64(double %812, double 0x40D9504000000001, double %810)
  %814 = fsub double %741, %752
  %815 = tail call double @llvm.fmuladd.f64(double %814, double -8.050000e+01, double %813)
  %816 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %808, i64 %42, i64 %44, i64 1
  %817 = load double, double* %816, align 8, !tbaa !8
  %818 = tail call double @llvm.fmuladd.f64(double %749, double -2.000000e+00, double %743)
  %819 = fadd double %818, %755
  %820 = tail call double @llvm.fmuladd.f64(double %819, double 0x40D9504000000001, double %817)
  %821 = tail call double @llvm.fmuladd.f64(double %772, double -2.000000e+00, double %797)
  %822 = fadd double %773, %821
  %823 = tail call double @llvm.fmuladd.f64(double %822, double 0x40A4403333333334, double %820)
  %824 = fmul double %762, %755
  %825 = fsub double -0.000000e+00, %824
  %826 = tail call double @llvm.fmuladd.f64(double %743, double %801, double %825)
  %827 = tail call double @llvm.fmuladd.f64(double %826, double -8.050000e+01, double %823)
  %828 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %808, i64 %42, i64 %44, i64 2
  %829 = load double, double* %828, align 8, !tbaa !8
  %830 = tail call double @llvm.fmuladd.f64(double %748, double -2.000000e+00, double %742)
  %831 = fadd double %830, %754
  %832 = tail call double @llvm.fmuladd.f64(double %831, double 0x40D9504000000001, double %829)
  %833 = tail call double @llvm.fmuladd.f64(double %770, double -2.000000e+00, double %799)
  %834 = fadd double %771, %833
  %835 = tail call double @llvm.fmuladd.f64(double %834, double 0x40A4403333333334, double %832)
  %836 = fmul double %762, %754
  %837 = fsub double -0.000000e+00, %836
  %838 = tail call double @llvm.fmuladd.f64(double %742, double %801, double %837)
  %839 = tail call double @llvm.fmuladd.f64(double %838, double -8.050000e+01, double %835)
  %840 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %808, i64 %42, i64 %44, i64 3
  %841 = load double, double* %840, align 8, !tbaa !8
  %842 = tail call double @llvm.fmuladd.f64(double %747, double -2.000000e+00, double %741)
  %843 = fadd double %752, %842
  %844 = tail call double @llvm.fmuladd.f64(double %843, double 0x40D9504000000001, double %841)
  %845 = tail call double @llvm.fmuladd.f64(double %763, double -2.000000e+00, double %801)
  %846 = fadd double %762, %845
  %847 = tail call double @llvm.fmuladd.f64(double %846, double 0x40AB004444444445, double %844)
  %848 = fmul double %762, %752
  %849 = fsub double -0.000000e+00, %848
  %850 = tail call double @llvm.fmuladd.f64(double %741, double %801, double %849)
  %851 = fsub double %740, %807
  %852 = load double, double* %178, align 16, !tbaa !8
  %853 = fsub double %851, %852
  %854 = fadd double %768, %853
  %855 = tail call double @llvm.fmuladd.f64(double %854, double 4.000000e-01, double %850)
  %856 = tail call double @llvm.fmuladd.f64(double %855, double -8.050000e+01, double %847)
  %857 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %808, i64 %42, i64 %44, i64 4
  %858 = load double, double* %857, align 8, !tbaa !8
  %859 = load double, double* %68, align 16, !tbaa !8
  %860 = tail call double @llvm.fmuladd.f64(double %859, double -2.000000e+00, double %740)
  %861 = fadd double %852, %860
  %862 = tail call double @llvm.fmuladd.f64(double %861, double 0x40D9504000000001, double %858)
  %863 = tail call double @llvm.fmuladd.f64(double %765, double -2.000000e+00, double %803)
  %864 = fadd double %764, %863
  %865 = tail call double @llvm.fmuladd.f64(double %864, double 0xC0A370D4FDF3B645, double %862)
  %866 = fmul double %763, 2.000000e+00
  %867 = fmul double %763, %866
  %868 = fsub double -0.000000e+00, %867
  %869 = tail call double @llvm.fmuladd.f64(double %801, double %801, double %868)
  %870 = tail call double @llvm.fmuladd.f64(double %762, double %762, double %869)
  %871 = tail call double @llvm.fmuladd.f64(double %870, double 0x407B004444444445, double %865)
  %872 = fmul double %859, 2.000000e+00
  %873 = fmul double %767, %872
  %874 = fsub double -0.000000e+00, %873
  %875 = tail call double @llvm.fmuladd.f64(double %740, double %805, double %874)
  %876 = tail call double @llvm.fmuladd.f64(double %852, double %766, double %875)
  %877 = tail call double @llvm.fmuladd.f64(double %876, double 0x40B3D884189374BC, double %871)
  %878 = fmul double %807, 4.000000e-01
  %879 = fsub double -0.000000e+00, %878
  %880 = tail call double @llvm.fmuladd.f64(double %740, double 1.400000e+00, double %879)
  %881 = fmul double %768, 4.000000e-01
  %882 = fsub double -0.000000e+00, %881
  %883 = tail call double @llvm.fmuladd.f64(double %852, double 1.400000e+00, double %882)
  %884 = fmul double %762, %883
  %885 = fsub double -0.000000e+00, %884
  %886 = tail call double @llvm.fmuladd.f64(double %880, double %801, double %885)
  %887 = tail call double @llvm.fmuladd.f64(double %886, double -8.050000e+01, double %877)
  %888 = load double, double* %738, align 8, !tbaa !8
  %889 = load double, double* %159, align 16, !tbaa !8
  %890 = tail call double @llvm.fmuladd.f64(double %889, double -4.000000e+00, double %888)
  %891 = load double, double* %48, align 16, !tbaa !8
  %892 = tail call double @llvm.fmuladd.f64(double %891, double 6.000000e+00, double %890)
  %893 = load double, double* %75, align 16, !tbaa !8
  %894 = tail call double @llvm.fmuladd.f64(double %893, double -4.000000e+00, double %892)
  %895 = tail call double @llvm.fmuladd.f64(double %894, double -2.500000e-01, double %815)
  store double %895, double* %809, align 8, !tbaa !8
  %896 = load double, double* %166, align 8, !tbaa !8
  %897 = load double, double* %163, align 8, !tbaa !8
  %898 = tail call double @llvm.fmuladd.f64(double %897, double -4.000000e+00, double %896)
  %899 = load double, double* %53, align 8, !tbaa !8
  %900 = tail call double @llvm.fmuladd.f64(double %899, double 6.000000e+00, double %898)
  %901 = load double, double* %80, align 8, !tbaa !8
  %902 = tail call double @llvm.fmuladd.f64(double %901, double -4.000000e+00, double %900)
  %903 = tail call double @llvm.fmuladd.f64(double %902, double -2.500000e-01, double %827)
  store double %903, double* %816, align 8, !tbaa !8
  %904 = load double, double* %171, align 16, !tbaa !8
  %905 = load double, double* %168, align 16, !tbaa !8
  %906 = tail call double @llvm.fmuladd.f64(double %905, double -4.000000e+00, double %904)
  %907 = load double, double* %58, align 16, !tbaa !8
  %908 = tail call double @llvm.fmuladd.f64(double %907, double 6.000000e+00, double %906)
  %909 = load double, double* %85, align 16, !tbaa !8
  %910 = tail call double @llvm.fmuladd.f64(double %909, double -4.000000e+00, double %908)
  %911 = tail call double @llvm.fmuladd.f64(double %910, double -2.500000e-01, double %839)
  store double %911, double* %828, align 8, !tbaa !8
  %912 = load double, double* %176, align 8, !tbaa !8
  %913 = load double, double* %173, align 8, !tbaa !8
  %914 = tail call double @llvm.fmuladd.f64(double %913, double -4.000000e+00, double %912)
  %915 = load double, double* %63, align 8, !tbaa !8
  %916 = tail call double @llvm.fmuladd.f64(double %915, double 6.000000e+00, double %914)
  %917 = load double, double* %90, align 8, !tbaa !8
  %918 = tail call double @llvm.fmuladd.f64(double %917, double -4.000000e+00, double %916)
  %919 = tail call double @llvm.fmuladd.f64(double %918, double -2.500000e-01, double %856)
  store double %919, double* %840, align 8, !tbaa !8
  %920 = load double, double* %181, align 16, !tbaa !8
  %921 = tail call double @llvm.fmuladd.f64(double %852, double -4.000000e+00, double %920)
  %922 = tail call double @llvm.fmuladd.f64(double %859, double 6.000000e+00, double %921)
  %923 = load double, double* %95, align 16, !tbaa !8
  %924 = tail call double @llvm.fmuladd.f64(double %923, double -4.000000e+00, double %922)
  %925 = tail call double @llvm.fmuladd.f64(double %924, double -2.500000e-01, double %887)
  store double %925, double* %857, align 8, !tbaa !8
  %926 = getelementptr inbounds [5 x double], [5 x double]* %16, i64 0, i64 0
  store double %756, double* %926, align 16, !tbaa !8
  store double %755, double* %166, align 8, !tbaa !8
  store double %754, double* %171, align 16, !tbaa !8
  store i64 %753, i64* %177, align 8, !tbaa !8
  store i64 %751, i64* %182, align 16, !tbaa !8
  %927 = getelementptr inbounds [5 x double], [5 x double]* %15, i64 0, i64 0
  store double %750, double* %927, align 16, !tbaa !8
  store double %749, double* %163, align 8, !tbaa !8
  store double %748, double* %168, align 16, !tbaa !8
  store double %747, double* %173, align 8, !tbaa !8
  store i64 %746, i64* %179, align 16, !tbaa !8
  %928 = getelementptr inbounds [5 x double], [5 x double]* %12, i64 0, i64 0
  store double %744, double* %928, align 16, !tbaa !8
  store double %743, double* %53, align 8, !tbaa !8
  store double %742, double* %58, align 16, !tbaa !8
  store double %741, double* %63, align 8, !tbaa !8
  store double %740, double* %68, align 16, !tbaa !8
  store i64 %781, i64* %76, align 16, !tbaa !8
  store i64 %784, i64* %81, align 8, !tbaa !8
  store i64 %787, i64* %86, align 16, !tbaa !8
  store i64 %790, i64* %91, align 8, !tbaa !8
  store i64 %793, i64* %96, align 16, !tbaa !8
  %929 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %35, i64 %778, i64 %42, i64 %44
  %930 = load double, double* %929, align 8, !tbaa !8
  %931 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %36, i64 %778, i64 %42, i64 %44
  %932 = load double, double* %931, align 8, !tbaa !8
  %933 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %37, i64 %778, i64 %42, i64 %44
  %934 = load double, double* %933, align 8, !tbaa !8
  %935 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %38, i64 %778, i64 %42, i64 %44
  %936 = load double, double* %935, align 8, !tbaa !8
  %937 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %39, i64 %778, i64 %42, i64 %44
  %938 = load double, double* %937, align 8, !tbaa !8
  %939 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %40, i64 %778, i64 %42, i64 %44
  %940 = load double, double* %939, align 8, !tbaa !8
  %941 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %795, i64 %42, i64 %44, i64 0
  %942 = load double, double* %941, align 8, !tbaa !8
  %943 = bitcast i64 %781 to double
  %944 = tail call double @llvm.fmuladd.f64(double %744, double -2.000000e+00, double %943)
  %945 = fadd double %944, %750
  %946 = tail call double @llvm.fmuladd.f64(double %945, double 0x40D9504000000001, double %942)
  %947 = bitcast i64 %790 to double
  %948 = fsub double %947, %747
  %949 = tail call double @llvm.fmuladd.f64(double %948, double -8.050000e+01, double %946)
  %950 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %795, i64 %42, i64 %44, i64 1
  %951 = load double, double* %950, align 8, !tbaa !8
  %952 = bitcast i64 %784 to double
  %953 = tail call double @llvm.fmuladd.f64(double %743, double -2.000000e+00, double %952)
  %954 = fadd double %953, %749
  %955 = tail call double @llvm.fmuladd.f64(double %954, double 0x40D9504000000001, double %951)
  %956 = tail call double @llvm.fmuladd.f64(double %797, double -2.000000e+00, double %930)
  %957 = fadd double %772, %956
  %958 = tail call double @llvm.fmuladd.f64(double %957, double 0x40A4403333333334, double %955)
  %959 = fmul double %763, %749
  %960 = fsub double -0.000000e+00, %959
  %961 = tail call double @llvm.fmuladd.f64(double %952, double %934, double %960)
  %962 = tail call double @llvm.fmuladd.f64(double %961, double -8.050000e+01, double %958)
  %963 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %795, i64 %42, i64 %44, i64 2
  %964 = load double, double* %963, align 8, !tbaa !8
  %965 = bitcast i64 %787 to double
  %966 = tail call double @llvm.fmuladd.f64(double %742, double -2.000000e+00, double %965)
  %967 = fadd double %966, %748
  %968 = tail call double @llvm.fmuladd.f64(double %967, double 0x40D9504000000001, double %964)
  %969 = tail call double @llvm.fmuladd.f64(double %799, double -2.000000e+00, double %932)
  %970 = fadd double %770, %969
  %971 = tail call double @llvm.fmuladd.f64(double %970, double 0x40A4403333333334, double %968)
  %972 = fmul double %763, %748
  %973 = fsub double -0.000000e+00, %972
  %974 = tail call double @llvm.fmuladd.f64(double %965, double %934, double %973)
  %975 = tail call double @llvm.fmuladd.f64(double %974, double -8.050000e+01, double %971)
  %976 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %795, i64 %42, i64 %44, i64 3
  %977 = load double, double* %976, align 8, !tbaa !8
  %978 = tail call double @llvm.fmuladd.f64(double %741, double -2.000000e+00, double %947)
  %979 = fadd double %747, %978
  %980 = tail call double @llvm.fmuladd.f64(double %979, double 0x40D9504000000001, double %977)
  %981 = tail call double @llvm.fmuladd.f64(double %801, double -2.000000e+00, double %934)
  %982 = fadd double %763, %981
  %983 = tail call double @llvm.fmuladd.f64(double %982, double 0x40AB004444444445, double %980)
  %984 = fmul double %763, %747
  %985 = fsub double -0.000000e+00, %984
  %986 = tail call double @llvm.fmuladd.f64(double %947, double %934, double %985)
  %987 = bitcast i64 %793 to double
  %988 = fsub double %987, %940
  %989 = fsub double %988, %745
  %990 = fadd double %769, %989
  %991 = tail call double @llvm.fmuladd.f64(double %990, double 4.000000e-01, double %986)
  %992 = tail call double @llvm.fmuladd.f64(double %991, double -8.050000e+01, double %983)
  %993 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %356, i64 %795, i64 %42, i64 %44, i64 4
  %994 = load double, double* %993, align 8, !tbaa !8
  %995 = tail call double @llvm.fmuladd.f64(double %740, double -2.000000e+00, double %987)
  %996 = fadd double %745, %995
  %997 = tail call double @llvm.fmuladd.f64(double %996, double 0x40D9504000000001, double %994)
  %998 = tail call double @llvm.fmuladd.f64(double %803, double -2.000000e+00, double %936)
  %999 = fadd double %765, %998
  %1000 = tail call double @llvm.fmuladd.f64(double %999, double 0xC0A370D4FDF3B645, double %997)
  %1001 = fmul double %801, 2.000000e+00
  %1002 = fmul double %801, %1001
  %1003 = fsub double -0.000000e+00, %1002
  %1004 = tail call double @llvm.fmuladd.f64(double %934, double %934, double %1003)
  %1005 = tail call double @llvm.fmuladd.f64(double %763, double %763, double %1004)
  %1006 = tail call double @llvm.fmuladd.f64(double %1005, double 0x407B004444444445, double %1000)
  %1007 = fmul double %740, 2.000000e+00
  %1008 = fmul double %805, %1007
  %1009 = fsub double -0.000000e+00, %1008
  %1010 = tail call double @llvm.fmuladd.f64(double %987, double %938, double %1009)
  %1011 = tail call double @llvm.fmuladd.f64(double %745, double %767, double %1010)
  %1012 = tail call double @llvm.fmuladd.f64(double %1011, double 0x40B3D884189374BC, double %1006)
  %1013 = fmul double %940, 4.000000e-01
  %1014 = fsub double -0.000000e+00, %1013
  %1015 = tail call double @llvm.fmuladd.f64(double %987, double 1.400000e+00, double %1014)
  %1016 = fmul double %769, 4.000000e-01
  %1017 = fsub double -0.000000e+00, %1016
  %1018 = tail call double @llvm.fmuladd.f64(double %745, double 1.400000e+00, double %1017)
  %1019 = fmul double %763, %1018
  %1020 = fsub double -0.000000e+00, %1019
  %1021 = tail call double @llvm.fmuladd.f64(double %1015, double %934, double %1020)
  %1022 = tail call double @llvm.fmuladd.f64(double %1021, double -8.050000e+01, double %1012)
  %1023 = load double, double* %738, align 8, !tbaa !8
  %1024 = load double, double* %159, align 16, !tbaa !8
  %1025 = tail call double @llvm.fmuladd.f64(double %1024, double -4.000000e+00, double %1023)
  %1026 = load double, double* %48, align 16, !tbaa !8
  %1027 = tail call double @llvm.fmuladd.f64(double %1026, double 5.000000e+00, double %1025)
  %1028 = tail call double @llvm.fmuladd.f64(double %1027, double -2.500000e-01, double %949)
  store double %1028, double* %941, align 8, !tbaa !8
  %1029 = load double, double* %166, align 8, !tbaa !8
  %1030 = load double, double* %163, align 8, !tbaa !8
  %1031 = tail call double @llvm.fmuladd.f64(double %1030, double -4.000000e+00, double %1029)
  %1032 = load double, double* %53, align 8, !tbaa !8
  %1033 = tail call double @llvm.fmuladd.f64(double %1032, double 5.000000e+00, double %1031)
  %1034 = tail call double @llvm.fmuladd.f64(double %1033, double -2.500000e-01, double %962)
  store double %1034, double* %950, align 8, !tbaa !8
  %1035 = load double, double* %171, align 16, !tbaa !8
  %1036 = load double, double* %168, align 16, !tbaa !8
  %1037 = tail call double @llvm.fmuladd.f64(double %1036, double -4.000000e+00, double %1035)
  %1038 = load double, double* %58, align 16, !tbaa !8
  %1039 = tail call double @llvm.fmuladd.f64(double %1038, double 5.000000e+00, double %1037)
  %1040 = tail call double @llvm.fmuladd.f64(double %1039, double -2.500000e-01, double %975)
  store double %1040, double* %963, align 8, !tbaa !8
  %1041 = load double, double* %176, align 8, !tbaa !8
  %1042 = load double, double* %173, align 8, !tbaa !8
  %1043 = tail call double @llvm.fmuladd.f64(double %1042, double -4.000000e+00, double %1041)
  %1044 = load double, double* %63, align 8, !tbaa !8
  %1045 = tail call double @llvm.fmuladd.f64(double %1044, double 5.000000e+00, double %1043)
  %1046 = tail call double @llvm.fmuladd.f64(double %1045, double -2.500000e-01, double %992)
  store double %1046, double* %976, align 8, !tbaa !8
  %1047 = load double, double* %181, align 16, !tbaa !8
  %1048 = load double, double* %178, align 16, !tbaa !8
  %1049 = tail call double @llvm.fmuladd.f64(double %1048, double -4.000000e+00, double %1047)
  %1050 = load double, double* %68, align 16, !tbaa !8
  %1051 = tail call double @llvm.fmuladd.f64(double %1050, double 5.000000e+00, double %1049)
  %1052 = tail call double @llvm.fmuladd.f64(double %1051, double -2.500000e-01, double %1022)
  store double %1052, double* %993, align 8, !tbaa !8
  br label %1053

; <label>:1053:                                   ; preds = %737, %11, %29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #4
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"const", !"const", !"const", !"const", !"const", !"const", !"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
