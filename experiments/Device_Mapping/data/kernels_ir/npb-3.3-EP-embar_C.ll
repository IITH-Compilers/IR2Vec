; ModuleID = 'npb-EP-embar.cl'
source_filename = "npb-EP-embar.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @embar(double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, double* nocapture, i32, double) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [256 x double], align 16
  %13 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #6
  %14 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #6
  %15 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #6
  %16 = bitcast [256 x double]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %16) #6
  %17 = tail call i64 @_Z13get_global_idj(i32 0) #7
  %18 = tail call i64 @_Z12get_local_idj(i32 0) #7
  %19 = trunc i64 %18 to i32
  %20 = tail call i64 @_Z14get_local_sizej(i32 0) #7
  %21 = trunc i64 %20 to i32
  %22 = shl i64 %20, 32
  %23 = ashr exact i64 %22, 32
  %24 = shl i64 %18, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds double, double* %0, i64 %25
  store double 0.000000e+00, double* %26, align 8, !tbaa !8
  %27 = add nsw i64 %23, %25
  %28 = getelementptr inbounds double, double* %0, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !8
  %29 = ashr exact i64 %22, 31
  %30 = add nsw i64 %29, %25
  %31 = getelementptr inbounds double, double* %0, i64 %30
  store double 0.000000e+00, double* %31, align 8, !tbaa !8
  %32 = mul nsw i64 %23, 3
  %33 = add nsw i64 %32, %25
  %34 = getelementptr inbounds double, double* %0, i64 %33
  store double 0.000000e+00, double* %34, align 8, !tbaa !8
  %35 = ashr exact i64 %22, 30
  %36 = add nsw i64 %35, %25
  %37 = getelementptr inbounds double, double* %0, i64 %36
  store double 0.000000e+00, double* %37, align 8, !tbaa !8
  %38 = mul nsw i64 %23, 5
  %39 = add nsw i64 %38, %25
  %40 = getelementptr inbounds double, double* %0, i64 %39
  store double 0.000000e+00, double* %40, align 8, !tbaa !8
  %41 = mul nsw i64 %23, 6
  %42 = add nsw i64 %41, %25
  %43 = getelementptr inbounds double, double* %0, i64 %42
  store double 0.000000e+00, double* %43, align 8, !tbaa !8
  %44 = mul nsw i64 %23, 7
  %45 = add nsw i64 %44, %25
  %46 = getelementptr inbounds double, double* %0, i64 %45
  store double 0.000000e+00, double* %46, align 8, !tbaa !8
  %47 = ashr exact i64 %22, 29
  %48 = add nsw i64 %47, %25
  %49 = getelementptr inbounds double, double* %0, i64 %48
  store double 0.000000e+00, double* %49, align 8, !tbaa !8
  %50 = mul nsw i64 %23, 9
  %51 = add nsw i64 %50, %25
  %52 = getelementptr inbounds double, double* %0, i64 %51
  store double 0.000000e+00, double* %52, align 8, !tbaa !8
  %53 = trunc i64 %17 to i32
  %54 = add i32 %6, 1
  %55 = add i32 %54, %53
  store double 0x41B033C4D7000000, double* %9, align 8, !tbaa !8
  store double %7, double* %10, align 8, !tbaa !8
  br label %56

; <label>:56:                                     ; preds = %8, %68
  %57 = phi i32 [ 1, %8 ], [ %71, %68 ]
  %58 = phi i32 [ %55, %8 ], [ %59, %68 ]
  %59 = sdiv i32 %58, 2
  %60 = shl nsw i32 %59, 1
  %61 = icmp eq i32 %60, %58
  br i1 %61, label %65, label %62

; <label>:62:                                     ; preds = %56
  %63 = load double, double* %10, align 8, !tbaa !8
  %64 = call double @randlc(double* nonnull %9, double %63) #6
  br label %65

; <label>:65:                                     ; preds = %56, %62
  %66 = add i32 %58, 1
  %67 = icmp ult i32 %66, 3
  br i1 %67, label %73, label %68

; <label>:68:                                     ; preds = %65
  %69 = load double, double* %10, align 8, !tbaa !8
  %70 = call double @randlc(double* nonnull %10, double %69) #6
  %71 = add nuw nsw i32 %57, 1
  %72 = icmp ult i32 %57, 100
  br i1 %72, label %56, label %73

; <label>:73:                                     ; preds = %65, %68
  %74 = bitcast double* %9 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !8
  %76 = bitcast double* %11 to i64*
  store i64 %75, i64* %76, align 8, !tbaa !8
  %77 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 0
  br label %78

; <label>:78:                                     ; preds = %73, %123
  %79 = phi double [ 0.000000e+00, %73 ], [ %120, %123 ]
  %80 = phi double [ 0.000000e+00, %73 ], [ %119, %123 ]
  %81 = phi i32 [ 0, %73 ], [ %124, %123 ]
  call void @vranlc(i32 256, double* nonnull %11, double 0x41D2309CE5400000, double* nonnull %77) #6
  br label %82

; <label>:82:                                     ; preds = %118, %78
  %83 = phi i64 [ 0, %78 ], [ %121, %118 ]
  %84 = phi double [ %79, %78 ], [ %120, %118 ]
  %85 = phi double [ %80, %78 ], [ %119, %118 ]
  %86 = shl nsw i64 %83, 1
  %87 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %86
  %88 = load double, double* %87, align 16, !tbaa !8
  %89 = call double @llvm.fmuladd.f64(double %88, double 2.000000e+00, double -1.000000e+00)
  %90 = or i64 %86, 1
  %91 = getelementptr inbounds [256 x double], [256 x double]* %12, i64 0, i64 %90
  %92 = load double, double* %91, align 8, !tbaa !8
  %93 = call double @llvm.fmuladd.f64(double %92, double 2.000000e+00, double -1.000000e+00)
  %94 = fmul double %93, %93
  %95 = call double @llvm.fmuladd.f64(double %89, double %89, double %94)
  %96 = fcmp ugt double %95, 1.000000e+00
  br i1 %96, label %118, label %97

; <label>:97:                                     ; preds = %82
  %98 = call double @_Z3logd(double %95) #7
  %99 = fmul double %98, -2.000000e+00
  %100 = fdiv double %99, %95
  %101 = call double @_Z4sqrtd(double %100) #7
  store double %101, double* %10, align 8, !tbaa !8
  %102 = fmul double %89, %101
  %103 = fmul double %93, %101
  %104 = call double @_Z4fabsd(double %102) #7
  %105 = call double @_Z4fabsd(double %103) #7
  %106 = fcmp ogt double %104, %105
  %107 = select i1 %106, double %102, double %103
  %108 = call double @_Z4fabsd(double %107) #7
  %109 = fptosi double %108 to i32
  %110 = mul nsw i32 %109, %21
  %111 = add nsw i32 %110, %19
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, double* %0, i64 %112
  %114 = load double, double* %113, align 8, !tbaa !8
  %115 = fadd double %114, 1.000000e+00
  store double %115, double* %113, align 8, !tbaa !8
  %116 = fadd double %85, %102
  %117 = fadd double %84, %103
  br label %118

; <label>:118:                                    ; preds = %82, %97
  %119 = phi double [ %116, %97 ], [ %85, %82 ]
  %120 = phi double [ %117, %97 ], [ %84, %82 ]
  %121 = add nuw nsw i64 %83, 1
  %122 = icmp eq i64 %121, 128
  br i1 %122, label %123, label %82

; <label>:123:                                    ; preds = %118
  store double %95, double* %9, align 8, !tbaa !8
  %124 = add nuw nsw i32 %81, 128
  %125 = icmp ult i32 %81, 65408
  br i1 %125, label %78, label %126

; <label>:126:                                    ; preds = %123
  %127 = shl i64 %18, 32
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds double, double* %1, i64 %128
  store double %119, double* %129, align 8, !tbaa !8
  %130 = getelementptr inbounds double, double* %2, i64 %128
  store double %120, double* %130, align 8, !tbaa !8
  call void @_Z7barrierj(i32 1) #8
  %131 = lshr i64 %20, 1
  %132 = trunc i64 %131 to i32
  %133 = icmp sgt i32 %132, 0
  br label %134

; <label>:134:                                    ; preds = %154, %126
  %135 = phi i64 [ 0, %126 ], [ %155, %154 ]
  br i1 %133, label %136, label %154

; <label>:136:                                    ; preds = %134
  %137 = mul nsw i64 %135, %23
  %138 = add nsw i64 %137, %25
  %139 = getelementptr inbounds double, double* %0, i64 %138
  %140 = trunc i64 %138 to i32
  br label %141

; <label>:141:                                    ; preds = %151, %136
  %142 = phi i32 [ %132, %136 ], [ %152, %151 ]
  %143 = icmp sgt i32 %142, %19
  br i1 %143, label %144, label %151

; <label>:144:                                    ; preds = %141
  %145 = add nsw i32 %142, %140
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %0, i64 %146
  %148 = load double, double* %147, align 8, !tbaa !8
  %149 = load double, double* %139, align 8, !tbaa !8
  %150 = fadd double %148, %149
  store double %150, double* %139, align 8, !tbaa !8
  br label %151

; <label>:151:                                    ; preds = %144, %141
  call void @_Z7barrierj(i32 1) #8
  %152 = lshr i32 %142, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %141

; <label>:154:                                    ; preds = %151, %134
  %155 = add nuw nsw i64 %135, 1
  %156 = icmp eq i64 %155, 10
  br i1 %156, label %157, label %134

; <label>:157:                                    ; preds = %154
  br i1 %133, label %158, label %176

; <label>:158:                                    ; preds = %157
  br label %159

; <label>:159:                                    ; preds = %158, %173
  %160 = phi i32 [ %174, %173 ], [ %132, %158 ]
  %161 = icmp sgt i32 %160, %19
  br i1 %161, label %162, label %173

; <label>:162:                                    ; preds = %159
  %163 = add nsw i32 %160, %19
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %1, i64 %164
  %166 = load double, double* %165, align 8, !tbaa !8
  %167 = load double, double* %129, align 8, !tbaa !8
  %168 = fadd double %166, %167
  store double %168, double* %129, align 8, !tbaa !8
  %169 = getelementptr inbounds double, double* %2, i64 %164
  %170 = load double, double* %169, align 8, !tbaa !8
  %171 = load double, double* %130, align 8, !tbaa !8
  %172 = fadd double %170, %171
  store double %172, double* %130, align 8, !tbaa !8
  br label %173

; <label>:173:                                    ; preds = %162, %159
  call void @_Z7barrierj(i32 1) #8
  %174 = lshr i32 %160, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %159

; <label>:176:                                    ; preds = %173, %157
  %177 = icmp eq i32 %19, 0
  br i1 %177, label %178, label %250

; <label>:178:                                    ; preds = %176
  %179 = call i64 @_Z12get_group_idj(i32 0) #7
  %180 = mul i64 %179, 42949672960
  %181 = ashr exact i64 %180, 32
  %182 = bitcast double* %0 to i64*
  %183 = load i64, i64* %182, align 8, !tbaa !8
  %184 = getelementptr inbounds double, double* %3, i64 %181
  %185 = bitcast double* %184 to i64*
  store i64 %183, i64* %185, align 8, !tbaa !8
  %186 = getelementptr inbounds double, double* %0, i64 %23
  %187 = bitcast double* %186 to i64*
  %188 = load i64, i64* %187, align 8, !tbaa !8
  %189 = or i64 %181, 1
  %190 = getelementptr inbounds double, double* %3, i64 %189
  %191 = bitcast double* %190 to i64*
  store i64 %188, i64* %191, align 8, !tbaa !8
  %192 = getelementptr inbounds double, double* %0, i64 %29
  %193 = bitcast double* %192 to i64*
  %194 = load i64, i64* %193, align 8, !tbaa !8
  %195 = add nsw i64 %181, 2
  %196 = getelementptr inbounds double, double* %3, i64 %195
  %197 = bitcast double* %196 to i64*
  store i64 %194, i64* %197, align 8, !tbaa !8
  %198 = getelementptr inbounds double, double* %0, i64 %32
  %199 = bitcast double* %198 to i64*
  %200 = load i64, i64* %199, align 8, !tbaa !8
  %201 = add nsw i64 %181, 3
  %202 = getelementptr inbounds double, double* %3, i64 %201
  %203 = bitcast double* %202 to i64*
  store i64 %200, i64* %203, align 8, !tbaa !8
  %204 = getelementptr inbounds double, double* %0, i64 %35
  %205 = bitcast double* %204 to i64*
  %206 = load i64, i64* %205, align 8, !tbaa !8
  %207 = add nsw i64 %181, 4
  %208 = getelementptr inbounds double, double* %3, i64 %207
  %209 = bitcast double* %208 to i64*
  store i64 %206, i64* %209, align 8, !tbaa !8
  %210 = getelementptr inbounds double, double* %0, i64 %38
  %211 = bitcast double* %210 to i64*
  %212 = load i64, i64* %211, align 8, !tbaa !8
  %213 = add nsw i64 %181, 5
  %214 = getelementptr inbounds double, double* %3, i64 %213
  %215 = bitcast double* %214 to i64*
  store i64 %212, i64* %215, align 8, !tbaa !8
  %216 = getelementptr inbounds double, double* %0, i64 %41
  %217 = bitcast double* %216 to i64*
  %218 = load i64, i64* %217, align 8, !tbaa !8
  %219 = add nsw i64 %181, 6
  %220 = getelementptr inbounds double, double* %3, i64 %219
  %221 = bitcast double* %220 to i64*
  store i64 %218, i64* %221, align 8, !tbaa !8
  %222 = getelementptr inbounds double, double* %0, i64 %44
  %223 = bitcast double* %222 to i64*
  %224 = load i64, i64* %223, align 8, !tbaa !8
  %225 = add nsw i64 %181, 7
  %226 = getelementptr inbounds double, double* %3, i64 %225
  %227 = bitcast double* %226 to i64*
  store i64 %224, i64* %227, align 8, !tbaa !8
  %228 = getelementptr inbounds double, double* %0, i64 %47
  %229 = bitcast double* %228 to i64*
  %230 = load i64, i64* %229, align 8, !tbaa !8
  %231 = add nsw i64 %181, 8
  %232 = getelementptr inbounds double, double* %3, i64 %231
  %233 = bitcast double* %232 to i64*
  store i64 %230, i64* %233, align 8, !tbaa !8
  %234 = getelementptr inbounds double, double* %0, i64 %50
  %235 = bitcast double* %234 to i64*
  %236 = load i64, i64* %235, align 8, !tbaa !8
  %237 = add nsw i64 %181, 9
  %238 = getelementptr inbounds double, double* %3, i64 %237
  %239 = bitcast double* %238 to i64*
  store i64 %236, i64* %239, align 8, !tbaa !8
  %240 = bitcast double* %1 to i64*
  %241 = load i64, i64* %240, align 8, !tbaa !8
  %242 = shl i64 %179, 32
  %243 = ashr exact i64 %242, 32
  %244 = getelementptr inbounds double, double* %4, i64 %243
  %245 = bitcast double* %244 to i64*
  store i64 %241, i64* %245, align 8, !tbaa !8
  %246 = bitcast double* %2 to i64*
  %247 = load i64, i64* %246, align 8, !tbaa !8
  %248 = getelementptr inbounds double, double* %5, i64 %243
  %249 = bitcast double* %248 to i64*
  store i64 %247, i64* %249, align 8, !tbaa !8
  br label %250

; <label>:250:                                    ; preds = %178, %176
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %16) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #2

declare double @randlc(double*, double) local_unnamed_addr #3

declare void @vranlc(i32, double*, double, double*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind readnone
declare double @_Z4sqrtd(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @_Z3logd(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @_Z4fabsd(double) local_unnamed_addr #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 3, i32 3, i32 3, i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"double"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
