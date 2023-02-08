; ModuleID = 'polybench-gpu-1.0-syr2k-syr2k_kernel.cl'
source_filename = "polybench-gpu-1.0-syr2k-syr2k_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @syr2k_kernel(float* nocapture readonly, float* nocapture readonly, float* nocapture, float, float, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %11, %6
  %13 = icmp slt i32 %9, %6
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %91

; <label>:15:                                     ; preds = %7
  %16 = mul nsw i32 %11, %6
  %17 = add nsw i32 %16, %9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %2, i64 %18
  %20 = load float, float* %19, align 4, !tbaa !9
  %21 = fmul float %20, %4
  store float %21, float* %19, align 4, !tbaa !9
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %23, label %91

; <label>:23:                                     ; preds = %15
  %24 = mul nsw i32 %11, %5
  %25 = mul nsw i32 %9, %5
  %26 = sext i32 %25 to i64
  %27 = sext i32 %24 to i64
  %28 = zext i32 %5 to i64
  %29 = and i64 %28, 1
  %30 = icmp eq i32 %5, 1
  br i1 %30, label %71, label %31

; <label>:31:                                     ; preds = %23
  %32 = sub nsw i64 %28, %29
  br label %33

; <label>:33:                                     ; preds = %33, %31
  %34 = phi float [ %21, %31 ], [ %67, %33 ]
  %35 = phi i64 [ 0, %31 ], [ %68, %33 ]
  %36 = phi i64 [ %32, %31 ], [ %69, %33 ]
  %37 = add nsw i64 %35, %27
  %38 = getelementptr inbounds float, float* %0, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !9
  %40 = fmul float %39, %3
  %41 = add nsw i64 %35, %26
  %42 = getelementptr inbounds float, float* %1, i64 %41
  %43 = load float, float* %42, align 4, !tbaa !9
  %44 = getelementptr inbounds float, float* %1, i64 %37
  %45 = load float, float* %44, align 4, !tbaa !9
  %46 = fmul float %45, %3
  %47 = getelementptr inbounds float, float* %0, i64 %41
  %48 = load float, float* %47, align 4, !tbaa !9
  %49 = fmul float %46, %48
  %50 = tail call float @llvm.fmuladd.f32(float %40, float %43, float %49)
  %51 = fadd float %34, %50
  store float %51, float* %19, align 4, !tbaa !9
  %52 = or i64 %35, 1
  %53 = add nsw i64 %52, %27
  %54 = getelementptr inbounds float, float* %0, i64 %53
  %55 = load float, float* %54, align 4, !tbaa !9
  %56 = fmul float %55, %3
  %57 = add nsw i64 %52, %26
  %58 = getelementptr inbounds float, float* %1, i64 %57
  %59 = load float, float* %58, align 4, !tbaa !9
  %60 = getelementptr inbounds float, float* %1, i64 %53
  %61 = load float, float* %60, align 4, !tbaa !9
  %62 = fmul float %61, %3
  %63 = getelementptr inbounds float, float* %0, i64 %57
  %64 = load float, float* %63, align 4, !tbaa !9
  %65 = fmul float %62, %64
  %66 = tail call float @llvm.fmuladd.f32(float %56, float %59, float %65)
  %67 = fadd float %51, %66
  store float %67, float* %19, align 4, !tbaa !9
  %68 = add nsw i64 %35, 2
  %69 = add i64 %36, -2
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %33

; <label>:71:                                     ; preds = %33, %23
  %72 = phi float [ %21, %23 ], [ %67, %33 ]
  %73 = phi i64 [ 0, %23 ], [ %68, %33 ]
  %74 = icmp eq i64 %29, 0
  br i1 %74, label %91, label %75

; <label>:75:                                     ; preds = %71
  %76 = add nsw i64 %73, %27
  %77 = getelementptr inbounds float, float* %0, i64 %76
  %78 = load float, float* %77, align 4, !tbaa !9
  %79 = fmul float %78, %3
  %80 = add nsw i64 %73, %26
  %81 = getelementptr inbounds float, float* %1, i64 %80
  %82 = load float, float* %81, align 4, !tbaa !9
  %83 = getelementptr inbounds float, float* %1, i64 %76
  %84 = load float, float* %83, align 4, !tbaa !9
  %85 = fmul float %84, %3
  %86 = getelementptr inbounds float, float* %0, i64 %80
  %87 = load float, float* %86, align 4, !tbaa !9
  %88 = fmul float %85, %87
  %89 = tail call float @llvm.fmuladd.f32(float %79, float %82, float %88)
  %90 = fadd float %72, %89
  store float %90, float* %19, align 4, !tbaa !9
  br label %91

; <label>:91:                                     ; preds = %75, %71, %15, %7
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"DATA_TYPE", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
