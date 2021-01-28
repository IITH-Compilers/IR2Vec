; ModuleID = 'rodinia-3.1-leukocyte-GICOV_kernel.cl'
source_filename = "rodinia-3.1-leukocyte-GICOV_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @GICOV_kernel(i32, float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %12 = trunc i64 %11 to i32
  %13 = mul nsw i32 %9, %8
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %15, label %73

; <label>:15:                                     ; preds = %10
  %16 = sdiv i32 %12, %8
  %17 = add nsw i32 %16, 22
  %18 = srem i32 %12, %8
  %19 = add nsw i32 %18, 22
  br label %20

; <label>:20:                                     ; preds = %59, %15
  %21 = phi i64 [ 0, %15 ], [ %66, %59 ]
  %22 = phi float [ 0.000000e+00, %15 ], [ %65, %59 ]
  %23 = mul nuw nsw i64 %21, 150
  br label %24

; <label>:24:                                     ; preds = %24, %20
  %25 = phi i64 [ 0, %20 ], [ %51, %24 ]
  %26 = phi float [ 0.000000e+00, %20 ], [ %55, %24 ]
  %27 = phi float [ 0.000000e+00, %20 ], [ %57, %24 ]
  %28 = phi float [ 0.000000e+00, %20 ], [ %49, %24 ]
  %29 = add nuw nsw i64 %25, %23
  %30 = getelementptr inbounds i32, i32* %6, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !8
  %32 = add nsw i32 %31, %19
  %33 = getelementptr inbounds i32, i32* %5, i64 %29
  %34 = load i32, i32* %33, align 4, !tbaa !8
  %35 = add nsw i32 %34, %17
  %36 = mul nsw i32 %35, %0
  %37 = add nsw i32 %32, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %1, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !12
  %41 = getelementptr inbounds float, float* %4, i64 %25
  %42 = load float, float* %41, align 4, !tbaa !12
  %43 = getelementptr inbounds float, float* %2, i64 %38
  %44 = load float, float* %43, align 4, !tbaa !12
  %45 = getelementptr inbounds float, float* %3, i64 %25
  %46 = load float, float* %45, align 4, !tbaa !12
  %47 = fmul float %44, %46
  %48 = tail call float @llvm.fmuladd.f32(float %40, float %42, float %47)
  %49 = fadd float %28, %48
  %50 = fsub float %48, %26
  %51 = add nuw nsw i64 %25, 1
  %52 = trunc i64 %51 to i32
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %50, %53, !fpmath !14
  %55 = fadd float %26, %54
  %56 = fsub float %48, %55
  %57 = tail call float @llvm.fmuladd.f32(float %50, float %56, float %27)
  %58 = icmp eq i64 %51, 150
  br i1 %58, label %59, label %24

; <label>:59:                                     ; preds = %24
  %60 = fdiv float %49, 1.500000e+02, !fpmath !14
  %61 = fdiv float %57, 1.490000e+02, !fpmath !14
  %62 = fmul float %60, %60
  %63 = fdiv float %62, %61, !fpmath !14
  %64 = fcmp ogt float %63, %22
  %65 = select i1 %64, float %63, float %22
  %66 = add nuw nsw i64 %21, 1
  %67 = icmp eq i64 %66, 7
  br i1 %67, label %68, label %20

; <label>:68:                                     ; preds = %59
  %69 = mul nsw i32 %17, %0
  %70 = add nsw i32 %69, %19
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %7, i64 %71
  store float %65, float* %72, align 4, !tbaa !12
  br label %73

; <label>:73:                                     ; preds = %10, %68
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
!4 = !{i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"float*", !"float*", !"float*", !"float*", !"int*", !"int*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !"const", !"const", !"const", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
!14 = !{float 2.500000e+00}
