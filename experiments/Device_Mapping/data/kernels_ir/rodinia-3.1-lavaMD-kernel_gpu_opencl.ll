; ModuleID = 'rodinia-3.1-lavaMD-kernel_gpu_opencl.cl'
source_filename = "rodinia-3.1-lavaMD-kernel_gpu_opencl.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.FOUR_VECTOR = type { float, float, float, float }
%struct.par_str = type { float }
%struct.dim_str = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.box_str = type { i32, i32, i32, i32, i64, i32, [26 x %struct.nei_str] }
%struct.nei_str = type { i32, i32, i32, i32, i64 }

@kernel_gpu_opencl.rA_shared = internal unnamed_addr global [100 x %struct.FOUR_VECTOR] undef, align 16
@kernel_gpu_opencl.rB_shared = internal unnamed_addr global [100 x %struct.FOUR_VECTOR] undef, align 16
@kernel_gpu_opencl.qB_shared = internal unnamed_addr global [100 x float] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_gpu_opencl(%struct.par_str* byval nocapture readonly align 4, %struct.dim_str* byval nocapture readonly align 8, %struct.box_str* nocapture readonly, %struct.FOUR_VECTOR* nocapture readonly, float* nocapture readonly, %struct.FOUR_VECTOR* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %10 = shl i64 %7, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i64 0, i32 4
  %13 = load i64, i64* %12, align 8, !tbaa !9
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %15, label %219

; <label>:15:                                     ; preds = %6
  %16 = trunc i64 %9 to i32
  %17 = getelementptr inbounds %struct.par_str, %struct.par_str* %0, i64 0, i32 0
  %18 = load float, float* %17, align 4, !tbaa !15
  %19 = fmul float %18, 2.000000e+00
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds %struct.box_str, %struct.box_str* %2, i64 %11, i32 4
  %22 = load i64, i64* %21, align 8, !tbaa !18
  %23 = icmp slt i32 %16, 100
  br i1 %23, label %24, label %80

; <label>:24:                                     ; preds = %15
  %25 = shl i64 %9, 32
  %26 = ashr exact i64 %25, 32
  %27 = shl i64 %22, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp sgt i64 %26, -28
  %30 = select i1 %29, i64 %26, i64 -28
  %31 = add nsw i64 %30, 127
  %32 = sub nsw i64 %31, %26
  %33 = lshr i64 %32, 7
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37

; <label>:37:                                     ; preds = %24
  br label %38

; <label>:38:                                     ; preds = %38, %37
  %39 = phi i64 [ %26, %37 ], [ %46, %38 ]
  %40 = phi i64 [ %35, %37 ], [ %47, %38 ]
  %41 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %39
  %42 = add nsw i64 %39, %28
  %43 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %42
  %44 = bitcast %struct.FOUR_VECTOR* %41 to i8*
  %45 = bitcast %struct.FOUR_VECTOR* %43 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 4, i1 false), !tbaa.struct !20
  %46 = add nsw i64 %39, 128
  %47 = add i64 %40, -1
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %38, !llvm.loop !22

; <label>:49:                                     ; preds = %38, %24
  %50 = phi i64 [ %26, %24 ], [ %46, %38 ]
  %51 = icmp ult i64 %32, 384
  br i1 %51, label %80, label %52

; <label>:52:                                     ; preds = %49
  br label %53

; <label>:53:                                     ; preds = %53, %52
  %54 = phi i64 [ %50, %52 ], [ %78, %53 ]
  %55 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %54
  %56 = add nsw i64 %54, %28
  %57 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %56
  %58 = bitcast %struct.FOUR_VECTOR* %55 to i8*
  %59 = bitcast %struct.FOUR_VECTOR* %57 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 4, i1 false), !tbaa.struct !20
  %60 = add nsw i64 %54, 128
  %61 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %60
  %62 = add nsw i64 %60, %28
  %63 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %62
  %64 = bitcast %struct.FOUR_VECTOR* %61 to i8*
  %65 = bitcast %struct.FOUR_VECTOR* %63 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 4, i1 false), !tbaa.struct !20
  %66 = add nsw i64 %54, 256
  %67 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %66
  %68 = add nsw i64 %66, %28
  %69 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %68
  %70 = bitcast %struct.FOUR_VECTOR* %67 to i8*
  %71 = bitcast %struct.FOUR_VECTOR* %69 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 4, i1 false), !tbaa.struct !20
  %72 = add nsw i64 %54, 384
  %73 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %72
  %74 = add nsw i64 %72, %28
  %75 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %74
  %76 = bitcast %struct.FOUR_VECTOR* %73 to i8*
  %77 = bitcast %struct.FOUR_VECTOR* %75 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 16, i32 4, i1 false), !tbaa.struct !20
  %78 = add nsw i64 %54, 512
  %79 = icmp slt i64 %54, -412
  br i1 %79, label %53, label %80

; <label>:80:                                     ; preds = %49, %53, %15
  tail call void @_Z7barrierj(i32 1) #6
  %81 = getelementptr inbounds %struct.box_str, %struct.box_str* %2, i64 %11, i32 5
  %82 = load i32, i32* %81, align 8, !tbaa !24
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %219, label %84

; <label>:84:                                     ; preds = %80
  %85 = shl i64 %9, 32
  %86 = ashr exact i64 %85, 32
  %87 = shl i64 %22, 32
  %88 = ashr exact i64 %87, 32
  %89 = icmp sgt i64 %86, -28
  %90 = select i1 %89, i64 %86, i64 -28
  %91 = add nsw i64 %90, 127
  %92 = sub nsw i64 %91, %86
  %93 = lshr i64 %92, 7
  %94 = and i64 %93, 1
  %95 = icmp eq i64 %94, 0
  %96 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %86
  %97 = bitcast %struct.FOUR_VECTOR* %96 to i8*
  %98 = getelementptr inbounds [100 x float], [100 x float]* @kernel_gpu_opencl.qB_shared, i64 0, i64 %86
  %99 = bitcast float* %98 to i32*
  %100 = add nsw i64 %86, 128
  %101 = icmp eq i64 %93, 0
  br label %102

; <label>:102:                                    ; preds = %214, %84
  %103 = phi i64 [ %215, %214 ], [ 0, %84 ]
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %109, label %105

; <label>:105:                                    ; preds = %102
  %106 = add nsw i64 %103, -1
  %107 = getelementptr inbounds %struct.box_str, %struct.box_str* %2, i64 %11, i32 6, i64 %106, i32 3
  %108 = load i32, i32* %107, align 4, !tbaa !25
  br label %109

; <label>:109:                                    ; preds = %102, %105
  %110 = phi i32 [ %108, %105 ], [ %8, %102 ]
  br i1 %23, label %111, label %152

; <label>:111:                                    ; preds = %109
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.box_str, %struct.box_str* %2, i64 %112, i32 4
  %114 = load i64, i64* %113, align 8, !tbaa !18
  %115 = shl i64 %114, 32
  %116 = ashr exact i64 %115, 32
  br i1 %95, label %117, label %124

; <label>:117:                                    ; preds = %111
  %118 = add nsw i64 %86, %116
  %119 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %118
  %120 = bitcast %struct.FOUR_VECTOR* %119 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %120, i64 16, i32 4, i1 false), !tbaa.struct !20
  %121 = getelementptr inbounds float, float* %4, i64 %118
  %122 = bitcast float* %121 to i32*
  %123 = load i32, i32* %122, align 4, !tbaa !21
  store i32 %123, i32* %99, align 4, !tbaa !21
  br label %124

; <label>:124:                                    ; preds = %117, %111
  %125 = phi i64 [ %100, %117 ], [ %86, %111 ]
  br i1 %101, label %152, label %126

; <label>:126:                                    ; preds = %124
  br label %127

; <label>:127:                                    ; preds = %127, %126
  %128 = phi i64 [ %125, %126 ], [ %150, %127 ]
  %129 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %128
  %130 = add nsw i64 %128, %116
  %131 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %130
  %132 = bitcast %struct.FOUR_VECTOR* %129 to i8*
  %133 = bitcast %struct.FOUR_VECTOR* %131 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 16, i32 4, i1 false), !tbaa.struct !20
  %134 = getelementptr inbounds float, float* %4, i64 %130
  %135 = bitcast float* %134 to i32*
  %136 = load i32, i32* %135, align 4, !tbaa !21
  %137 = getelementptr inbounds [100 x float], [100 x float]* @kernel_gpu_opencl.qB_shared, i64 0, i64 %128
  %138 = bitcast float* %137 to i32*
  store i32 %136, i32* %138, align 4, !tbaa !21
  %139 = add nsw i64 %128, 128
  %140 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %139
  %141 = add nsw i64 %139, %116
  %142 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %3, i64 %141
  %143 = bitcast %struct.FOUR_VECTOR* %140 to i8*
  %144 = bitcast %struct.FOUR_VECTOR* %142 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 16, i32 4, i1 false), !tbaa.struct !20
  %145 = getelementptr inbounds float, float* %4, i64 %141
  %146 = bitcast float* %145 to i32*
  %147 = load i32, i32* %146, align 4, !tbaa !21
  %148 = getelementptr inbounds [100 x float], [100 x float]* @kernel_gpu_opencl.qB_shared, i64 0, i64 %139
  %149 = bitcast float* %148 to i32*
  store i32 %147, i32* %149, align 4, !tbaa !21
  %150 = add nsw i64 %128, 256
  %151 = icmp slt i64 %128, -156
  br i1 %151, label %127, label %152

; <label>:152:                                    ; preds = %124, %127, %109
  %153 = phi i1 [ false, %109 ], [ %23, %127 ], [ %23, %124 ]
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %153, label %154, label %214

; <label>:154:                                    ; preds = %152
  br label %155

; <label>:155:                                    ; preds = %154, %211
  %156 = phi i64 [ %212, %211 ], [ %86, %154 ]
  %157 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %156, i32 0
  %158 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %156, i32 1
  %159 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %156, i32 2
  %160 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rA_shared, i64 0, i64 %156, i32 3
  %161 = add nsw i64 %156, %88
  %162 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %5, i64 %161, i32 0
  %163 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %5, i64 %161, i32 1
  %164 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %5, i64 %161, i32 2
  %165 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %5, i64 %161, i32 3
  %166 = load float, float* %162, align 4, !tbaa !27
  %167 = load float, float* %163, align 4, !tbaa !29
  %168 = load float, float* %164, align 4, !tbaa !30
  %169 = load float, float* %165, align 4, !tbaa !31
  br label %170

; <label>:170:                                    ; preds = %170, %155
  %171 = phi float [ %169, %155 ], [ %208, %170 ]
  %172 = phi float [ %168, %155 ], [ %207, %170 ]
  %173 = phi float [ %167, %155 ], [ %206, %170 ]
  %174 = phi float [ %166, %155 ], [ %205, %170 ]
  %175 = phi i64 [ 0, %155 ], [ %209, %170 ]
  %176 = load float, float* %157, align 16, !tbaa !27
  %177 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %175, i32 0
  %178 = load float, float* %177, align 16, !tbaa !27
  %179 = fadd float %176, %178
  %180 = load float, float* %158, align 4, !tbaa !29
  %181 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %175, i32 1
  %182 = load float, float* %181, align 4, !tbaa !29
  %183 = load float, float* %159, align 8, !tbaa !30
  %184 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %175, i32 2
  %185 = load float, float* %184, align 8, !tbaa !30
  %186 = fmul float %183, %185
  %187 = tail call float @llvm.fmuladd.f32(float %180, float %182, float %186)
  %188 = load float, float* %160, align 4, !tbaa !31
  %189 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR]* @kernel_gpu_opencl.rB_shared, i64 0, i64 %175, i32 3
  %190 = load float, float* %189, align 4, !tbaa !31
  %191 = tail call float @llvm.fmuladd.f32(float %188, float %190, float %187)
  %192 = fsub float %179, %191
  %193 = fmul float %20, %192
  %194 = fsub float -0.000000e+00, %193
  %195 = tail call float @_Z3expf(float %194) #5
  %196 = fmul float %195, 2.000000e+00
  %197 = fsub float %180, %182
  %198 = fmul float %197, %196
  %199 = fsub float %183, %185
  %200 = fmul float %199, %196
  %201 = fsub float %188, %190
  %202 = fmul float %201, %196
  %203 = getelementptr inbounds [100 x float], [100 x float]* @kernel_gpu_opencl.qB_shared, i64 0, i64 %175
  %204 = load float, float* %203, align 4, !tbaa !21
  %205 = tail call float @llvm.fmuladd.f32(float %204, float %195, float %174)
  store float %205, float* %162, align 4, !tbaa !27
  %206 = tail call float @llvm.fmuladd.f32(float %204, float %198, float %173)
  store float %206, float* %163, align 4, !tbaa !29
  %207 = tail call float @llvm.fmuladd.f32(float %204, float %200, float %172)
  store float %207, float* %164, align 4, !tbaa !30
  %208 = tail call float @llvm.fmuladd.f32(float %204, float %202, float %171)
  store float %208, float* %165, align 4, !tbaa !31
  %209 = add nuw nsw i64 %175, 1
  %210 = icmp eq i64 %209, 100
  br i1 %210, label %211, label %170

; <label>:211:                                    ; preds = %170
  %212 = add nsw i64 %156, 128
  %213 = icmp slt i64 %156, -28
  br i1 %213, label %155, label %214

; <label>:214:                                    ; preds = %211, %152
  tail call void @_Z7barrierj(i32 1) #6
  %215 = add nuw i64 %103, 1
  %216 = load i32, i32* %81, align 8, !tbaa !24
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %103, %217
  br i1 %218, label %102, label %219

; <label>:219:                                    ; preds = %214, %80, %6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind readnone
declare float @_Z3expf(float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind readnone }
attributes #6 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"par_str", !"dim_str", !"box_str*", !"FOUR_VECTOR*", !"float*", !"FOUR_VECTOR*"}
!7 = !{!"struct par_str", !"struct dim_str", !"struct box_str*", !"FOUR_VECTOR*", !"float*", !"FOUR_VECTOR*"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !14, i64 16}
!10 = !{!"dim_str", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"long", !12, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"par_str", !17, i64 0}
!17 = !{!"float", !12, i64 0}
!18 = !{!19, !14, i64 16}
!19 = !{!"box_str", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !14, i64 16, !11, i64 24, !12, i64 32}
!20 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21}
!21 = !{!17, !17, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!19, !11, i64 24}
!25 = !{!26, !11, i64 12}
!26 = !{!"nei_str", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !14, i64 16}
!27 = !{!28, !17, i64 0}
!28 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!29 = !{!28, !17, i64 4}
!30 = !{!28, !17, i64 8}
!31 = !{!28, !17, i64 12}
