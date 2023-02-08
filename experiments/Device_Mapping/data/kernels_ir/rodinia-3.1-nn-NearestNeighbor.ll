; ModuleID = 'rodinia-3.1-nn-NearestNeighbor.cl'
source_filename = "rodinia-3.1-nn-NearestNeighbor.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.latLong = type { float, float }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @NearestNeighbor(%struct.latLong* nocapture readonly, float* nocapture, i32, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %22

; <label>:9:                                      ; preds = %5
  %10 = shl i64 %6, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds float, float* %1, i64 %11
  %13 = getelementptr inbounds %struct.latLong, %struct.latLong* %0, i64 %11, i32 0
  %14 = load float, float* %13, align 4, !tbaa !9
  %15 = fsub float %3, %14
  %16 = getelementptr inbounds %struct.latLong, %struct.latLong* %0, i64 %11, i32 1
  %17 = load float, float* %16, align 4, !tbaa !14
  %18 = fsub float %4, %17
  %19 = fmul float %18, %18
  %20 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %19)
  %21 = tail call float @_Z4sqrtf(float %20) #3
  store float %21, float* %12, align 4, !tbaa !15
  br label %22

; <label>:22:                                     ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"LatLong*", !"float*", !"int", !"float", !"float"}
!7 = !{!"struct latLong*", !"float*", !"int", !"float", !"float"}
!8 = !{!"", !"", !"", !"", !""}
!9 = !{!10, !11, i64 0}
!10 = !{!"latLong", !11, i64 0, !11, i64 4}
!11 = !{!"float", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!10, !11, i64 4}
!15 = !{!11, !11, i64 0}
