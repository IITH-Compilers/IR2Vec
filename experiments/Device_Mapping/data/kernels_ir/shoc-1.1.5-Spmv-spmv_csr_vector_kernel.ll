; ModuleID = 'shoc-1.1.5-Spmv-spmv_csr_vector_kernel.cl'
source_filename = "shoc-1.1.5-Spmv-spmv_csr_vector_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@spmv_csr_vector_kernel.partialSums = internal global [128 x float] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @spmv_csr_vector_kernel(float* noalias nocapture readonly, float* noalias nocapture readonly, i32* noalias nocapture readonly, i32* noalias nocapture readonly, i32, i32, float* noalias nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %5, -1
  %11 = and i32 %10, %9
  %12 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %13 = sext i32 %5 to i64
  %14 = udiv i64 %12, %13
  %15 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %16 = shl i64 %14, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 %17, %15
  %19 = sdiv i32 %9, %5
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = trunc i64 %21 to i32
  %23 = shl i64 %8, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds [128 x float], [128 x float]* @spmv_csr_vector_kernel.partialSums, i64 0, i64 %24
  store volatile float 0.000000e+00, float* %25, align 4, !tbaa !8
  %26 = icmp slt i32 %22, %4
  br i1 %26, label %27, label %76

; <label>:27:                                     ; preds = %7
  %28 = shl i64 %21, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds i32, i32* %3, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !12
  %32 = add i64 %28, 4294967296
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i32, i32* %3, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !12
  %36 = add nsw i32 %31, %11
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %27
  %39 = sext i32 %36 to i64
  %40 = sext i32 %35 to i64
  br label %45

; <label>:41:                                     ; preds = %45, %27
  %42 = phi float [ 0.000000e+00, %27 ], [ %55, %45 ]
  store volatile float %42, float* %25, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %43 = icmp sgt i32 %5, 1
  br i1 %43, label %44, label %71

; <label>:44:                                     ; preds = %41
  br label %58

; <label>:45:                                     ; preds = %38, %45
  %46 = phi i64 [ %39, %38 ], [ %56, %45 ]
  %47 = phi float [ 0.000000e+00, %38 ], [ %55, %45 ]
  %48 = getelementptr inbounds i32, i32* %2, i64 %46
  %49 = load i32, i32* %48, align 4, !tbaa !12
  %50 = getelementptr inbounds float, float* %0, i64 %46
  %51 = load float, float* %50, align 4, !tbaa !8
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds float, float* %1, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = tail call float @llvm.fmuladd.f32(float %51, float %54, float %47)
  %56 = add i64 %46, %13
  %57 = icmp slt i64 %56, %40
  br i1 %57, label %45, label %41

; <label>:58:                                     ; preds = %44, %69
  %59 = phi i32 [ %60, %69 ], [ %5, %44 ]
  %60 = sdiv i32 %59, 2
  %61 = icmp slt i32 %11, %60
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %58
  %63 = add nsw i32 %60, %9
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [128 x float], [128 x float]* @spmv_csr_vector_kernel.partialSums, i64 0, i64 %64
  %66 = load volatile float, float* %65, align 4, !tbaa !8
  %67 = load volatile float, float* %25, align 4, !tbaa !8
  %68 = fadd float %66, %67
  store volatile float %68, float* %25, align 4, !tbaa !8
  br label %69

; <label>:69:                                     ; preds = %62, %58
  tail call void @_Z7barrierj(i32 1) #5
  %70 = icmp sgt i32 %59, 3
  br i1 %70, label %58, label %71

; <label>:71:                                     ; preds = %69, %41
  %72 = icmp eq i32 %11, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %71
  %74 = load volatile float, float* %25, align 4, !tbaa !8
  %75 = getelementptr inbounds float, float* %6, i64 %29
  store float %74, float* %75, align 4, !tbaa !8
  br label %76

; <label>:76:                                     ; preds = %71, %73, %7
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int*", !"int*", !"int", !"int", !"float*"}
!7 = !{!"restrict const", !"restrict const", !"restrict const", !"restrict const", !"", !"", !"restrict"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
