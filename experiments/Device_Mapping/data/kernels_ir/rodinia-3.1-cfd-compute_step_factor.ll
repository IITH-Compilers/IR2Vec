; ModuleID = 'rodinia-3.1-cfd-compute_step_factor.cl'
source_filename = "rodinia-3.1-cfd-compute_step_factor.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.FLOAT3 = type { float, float, float }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_step_factor(float* nocapture readonly, float* nocapture readonly, float* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = alloca %struct.FLOAT3, align 8
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %3
  br i1 %8, label %9, label %51

; <label>:9:                                      ; preds = %4
  %10 = shl i64 %6, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds float, float* %0, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !8
  %14 = add nsw i32 %7, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %0, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !8
  %18 = insertelement <2 x float> undef, float %17, i32 0
  %19 = shl i32 %3, 1
  %20 = add nsw i32 %19, %7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %0, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !8
  %24 = insertelement <2 x float> %18, float %23, i32 1
  %25 = mul nsw i32 %3, 3
  %26 = add nsw i32 %25, %7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !8
  %30 = shl i32 %3, 2
  %31 = add nsw i32 %30, %7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = load float, float* %33, align 4, !tbaa !8
  %35 = bitcast %struct.FLOAT3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %35) #5
  call void @compute_velocity(float %13, <2 x float> %24, float %29, %struct.FLOAT3* nonnull %5) #5
  %36 = bitcast %struct.FLOAT3* %5 to <2 x float>*
  %37 = load <2 x float>, <2 x float>* %36, align 8
  %38 = getelementptr inbounds %struct.FLOAT3, %struct.FLOAT3* %5, i64 0, i32 2
  %39 = load float, float* %38, align 8
  %40 = call float @compute_speed_sqd(<2 x float> %37, float %39) #5
  %41 = call float @compute_pressure(float %13, float %34, float %40) #5
  %42 = call float @compute_speed_of_sound(float %13, float %41) #5
  %43 = getelementptr inbounds float, float* %1, i64 %11
  %44 = load float, float* %43, align 4, !tbaa !8
  %45 = call float @_Z4sqrtf(float %44) #4
  %46 = call float @_Z4sqrtf(float %40) #4
  %47 = fadd float %42, %46
  %48 = fmul float %45, %47
  %49 = fdiv float 5.000000e-01, %48, !fpmath !12
  %50 = getelementptr inbounds float, float* %2, i64 %11
  store float %49, float* %50, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %35) #5
  br label %51

; <label>:51:                                     ; preds = %4, %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @compute_velocity(float, <2 x float>, float, %struct.FLOAT3*) local_unnamed_addr #3

declare float @compute_speed_sqd(<2 x float>, float) local_unnamed_addr #3

declare float @compute_pressure(float, float, float) local_unnamed_addr #3

declare float @compute_speed_of_sound(float, float) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"int"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
