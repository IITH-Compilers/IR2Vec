; ModuleID = 'mriQ.cl'
source_filename = "mriQ.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.kValues = type { float, float, float, float }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ComputeQ_GPU(i32, i32, float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture, float* nocapture, %struct.kValues* nocapture readonly) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %10 = shl i64 %9, 8
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %12 = add i64 %10, %11
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds float, float* %2, i64 %14
  %16 = load float, float* %15, align 4, !tbaa !8
  %17 = getelementptr inbounds float, float* %3, i64 %14
  %18 = load float, float* %17, align 4, !tbaa !8
  %19 = getelementptr inbounds float, float* %4, i64 %14
  %20 = load float, float* %19, align 4, !tbaa !8
  %21 = getelementptr inbounds float, float* %5, i64 %14
  %22 = load float, float* %21, align 4, !tbaa !8
  %23 = getelementptr inbounds float, float* %6, i64 %14
  %24 = load float, float* %23, align 4, !tbaa !8
  br label %25

; <label>:25:                                     ; preds = %48, %8
  %26 = phi i64 [ 0, %8 ], [ %52, %48 ]
  %27 = phi i32 [ %1, %8 ], [ %51, %48 ]
  %28 = phi float [ %22, %8 ], [ %50, %48 ]
  %29 = phi float [ %24, %8 ], [ %49, %48 ]
  %30 = icmp slt i32 %27, %0
  br i1 %30, label %31, label %48

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.kValues, %struct.kValues* %7, i64 %26, i32 0
  %33 = load float, float* %32, align 4, !tbaa !12
  %34 = getelementptr inbounds %struct.kValues, %struct.kValues* %7, i64 %26, i32 1
  %35 = load float, float* %34, align 4, !tbaa !14
  %36 = fmul float %18, %35
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %16, float %36)
  %38 = getelementptr inbounds %struct.kValues, %struct.kValues* %7, i64 %26, i32 2
  %39 = load float, float* %38, align 4, !tbaa !15
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %20, float %37)
  %41 = fmul float %40, 0x401921FB60000000
  %42 = getelementptr inbounds %struct.kValues, %struct.kValues* %7, i64 %26, i32 3
  %43 = load float, float* %42, align 4, !tbaa !16
  %44 = tail call float @_Z3cosf(float %41) #3
  %45 = tail call float @llvm.fmuladd.f32(float %43, float %44, float %28)
  %46 = tail call float @_Z3sinf(float %41) #3
  %47 = tail call float @llvm.fmuladd.f32(float %43, float %46, float %29)
  br label %48

; <label>:48:                                     ; preds = %31, %25
  %49 = phi float [ %47, %31 ], [ %29, %25 ]
  %50 = phi float [ %45, %31 ], [ %28, %25 ]
  %51 = add nsw i32 %27, 1
  %52 = add nuw nsw i64 %26, 1
  %53 = icmp eq i64 %52, 1024
  br i1 %53, label %54, label %25

; <label>:54:                                     ; preds = %48
  store float %50, float* %21, align 4, !tbaa !8
  store float %49, float* %23, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind readnone
declare float @_Z3cosf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z3sinf(float) local_unnamed_addr #1

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
!4 = !{i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"int", !"float*", !"float*", !"float*", !"float*", !"float*", !"struct kValues*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"kValues", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!14 = !{!13, !9, i64 4}
!15 = !{!13, !9, i64 8}
!16 = !{!13, !9, i64 12}
