; ModuleID = 'shoc-1.1.5-Spmv-spmv_csr_scalar_kernel.cl'
source_filename = "shoc-1.1.5-Spmv-spmv_csr_scalar_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @spmv_csr_scalar_kernel(float* noalias nocapture readonly, float* noalias nocapture readonly, i32* noalias nocapture readonly, i32* noalias nocapture readonly, i32, float* noalias nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, %4
  br i1 %9, label %10, label %93

; <label>:10:                                     ; preds = %6
  %11 = shl i64 %7, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i32, i32* %3, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = add i64 %11, 4294967296
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds i32, i32* %3, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %50

; <label>:20:                                     ; preds = %10
  %21 = sext i32 %14 to i64
  %22 = sext i32 %18 to i64
  %23 = sub nsw i64 %22, %21
  %24 = add nsw i64 %22, -1
  %25 = sub nsw i64 %24, %21
  %26 = and i64 %23, 3
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %44, label %28

; <label>:28:                                     ; preds = %20
  br label %29

; <label>:29:                                     ; preds = %29, %28
  %30 = phi i64 [ %21, %28 ], [ %41, %29 ]
  %31 = phi float [ 0.000000e+00, %28 ], [ %40, %29 ]
  %32 = phi i64 [ %26, %28 ], [ %42, %29 ]
  %33 = getelementptr inbounds i32, i32* %2, i64 %30
  %34 = load i32, i32* %33, align 4, !tbaa !8
  %35 = getelementptr inbounds float, float* %0, i64 %30
  %36 = load float, float* %35, align 4, !tbaa !12
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds float, float* %1, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !12
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %39, float %31)
  %41 = add nsw i64 %30, 1
  %42 = add i64 %32, -1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %29, !llvm.loop !14

; <label>:44:                                     ; preds = %29, %20
  %45 = phi float [ undef, %20 ], [ %40, %29 ]
  %46 = phi i64 [ %21, %20 ], [ %41, %29 ]
  %47 = phi float [ 0.000000e+00, %20 ], [ %40, %29 ]
  %48 = icmp ult i64 %25, 3
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %44
  br label %53

; <label>:50:                                     ; preds = %44, %53, %10
  %51 = phi float [ 0.000000e+00, %10 ], [ %45, %44 ], [ %90, %53 ]
  %52 = getelementptr inbounds float, float* %5, i64 %12
  store float %51, float* %52, align 4, !tbaa !12
  br label %93

; <label>:53:                                     ; preds = %53, %49
  %54 = phi i64 [ %46, %49 ], [ %91, %53 ]
  %55 = phi float [ %47, %49 ], [ %90, %53 ]
  %56 = getelementptr inbounds i32, i32* %2, i64 %54
  %57 = load i32, i32* %56, align 4, !tbaa !8
  %58 = getelementptr inbounds float, float* %0, i64 %54
  %59 = load float, float* %58, align 4, !tbaa !12
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds float, float* %1, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !12
  %63 = tail call float @llvm.fmuladd.f32(float %59, float %62, float %55)
  %64 = add nsw i64 %54, 1
  %65 = getelementptr inbounds i32, i32* %2, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !8
  %67 = getelementptr inbounds float, float* %0, i64 %64
  %68 = load float, float* %67, align 4, !tbaa !12
  %69 = sext i32 %66 to i64
  %70 = getelementptr inbounds float, float* %1, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !12
  %72 = tail call float @llvm.fmuladd.f32(float %68, float %71, float %63)
  %73 = add nsw i64 %54, 2
  %74 = getelementptr inbounds i32, i32* %2, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !8
  %76 = getelementptr inbounds float, float* %0, i64 %73
  %77 = load float, float* %76, align 4, !tbaa !12
  %78 = sext i32 %75 to i64
  %79 = getelementptr inbounds float, float* %1, i64 %78
  %80 = load float, float* %79, align 4, !tbaa !12
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %80, float %72)
  %82 = add nsw i64 %54, 3
  %83 = getelementptr inbounds i32, i32* %2, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !8
  %85 = getelementptr inbounds float, float* %0, i64 %82
  %86 = load float, float* %85, align 4, !tbaa !12
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds float, float* %1, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !12
  %90 = tail call float @llvm.fmuladd.f32(float %86, float %89, float %81)
  %91 = add nsw i64 %54, 4
  %92 = icmp eq i64 %91, %22
  br i1 %92, label %50, label %53

; <label>:93:                                     ; preds = %50, %6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int*", !"int*", !"int", !"float*"}
!7 = !{!"restrict const", !"restrict const", !"restrict const", !"restrict const", !"", !"restrict"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
