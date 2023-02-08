; ModuleID = 'parboil-0.2-stencil-naive_kernel.cl'
source_filename = "parboil-0.2-stencil-naive_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @naive_kernel(float, float, float* nocapture readonly, float* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %12 = add i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %15 = add i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 %4, -1
  %18 = icmp sgt i32 %17, %10
  br i1 %18, label %19, label %76

; <label>:19:                                     ; preds = %7
  %20 = add nsw i32 %16, 1
  %21 = mul nsw i32 %20, %5
  %22 = add nsw i32 %21, %13
  %23 = mul nsw i32 %22, %4
  %24 = add nsw i32 %23, %10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %2, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !8
  %28 = add nsw i32 %16, -1
  %29 = mul nsw i32 %28, %5
  %30 = add nsw i32 %29, %13
  %31 = mul nsw i32 %30, %4
  %32 = add nsw i32 %31, %10
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %2, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !8
  %36 = fadd float %27, %35
  %37 = add nsw i32 %13, 1
  %38 = mul nsw i32 %16, %5
  %39 = add nsw i32 %37, %38
  %40 = mul nsw i32 %39, %4
  %41 = add nsw i32 %40, %10
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %2, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !8
  %45 = fadd float %36, %44
  %46 = add nsw i32 %13, -1
  %47 = add nsw i32 %46, %38
  %48 = mul nsw i32 %47, %4
  %49 = add nsw i32 %48, %10
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %2, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !8
  %53 = fadd float %45, %52
  %54 = add nsw i32 %10, 1
  %55 = add nsw i32 %38, %13
  %56 = mul nsw i32 %55, %4
  %57 = add nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %2, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !8
  %61 = fadd float %53, %60
  %62 = add nsw i32 %10, -1
  %63 = add nsw i32 %62, %56
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %2, i64 %64
  %66 = load float, float* %65, align 4, !tbaa !8
  %67 = fadd float %61, %66
  %68 = add nsw i32 %56, %10
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %2, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !8
  %72 = fmul float %71, %0
  %73 = fsub float -0.000000e+00, %72
  %74 = tail call float @llvm.fmuladd.f32(float %1, float %67, float %73)
  %75 = getelementptr inbounds float, float* %3, i64 %69
  store float %74, float* %75, align 4, !tbaa !8
  br label %76

; <label>:76:                                     ; preds = %19, %7
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
!4 = !{i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float", !"float", !"float*", !"float*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
