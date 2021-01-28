; ModuleID = 'polybench-gpu-1.0-correlation-mean_kernel.cl'
source_filename = "polybench-gpu-1.0-correlation-mean_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @mean_kernel(float* nocapture, float* nocapture readonly, float, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %3
  br i1 %8, label %9, label %75

; <label>:9:                                      ; preds = %5
  %10 = shl i64 %6, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds float, float* %0, i64 %11
  store float 0.000000e+00, float* %12, align 4, !tbaa !9
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %72

; <label>:14:                                     ; preds = %9
  %15 = sext i32 %3 to i64
  %16 = shl i64 %6, 32
  %17 = ashr exact i64 %16, 32
  %18 = zext i32 %4 to i64
  %19 = add nsw i64 %18, -1
  %20 = and i64 %18, 3
  %21 = icmp ult i64 %19, 3
  br i1 %21, label %54, label %22

; <label>:22:                                     ; preds = %14
  %23 = sub nsw i64 %18, %20
  br label %24

; <label>:24:                                     ; preds = %24, %22
  %25 = phi float [ 0.000000e+00, %22 ], [ %50, %24 ]
  %26 = phi i64 [ 0, %22 ], [ %51, %24 ]
  %27 = phi i64 [ %23, %22 ], [ %52, %24 ]
  %28 = mul nsw i64 %26, %15
  %29 = add nsw i64 %28, %17
  %30 = getelementptr inbounds float, float* %1, i64 %29
  %31 = load float, float* %30, align 4, !tbaa !9
  %32 = fadd float %31, %25
  store float %32, float* %12, align 4, !tbaa !9
  %33 = or i64 %26, 1
  %34 = mul nsw i64 %33, %15
  %35 = add nsw i64 %34, %17
  %36 = getelementptr inbounds float, float* %1, i64 %35
  %37 = load float, float* %36, align 4, !tbaa !9
  %38 = fadd float %37, %32
  store float %38, float* %12, align 4, !tbaa !9
  %39 = or i64 %26, 2
  %40 = mul nsw i64 %39, %15
  %41 = add nsw i64 %40, %17
  %42 = getelementptr inbounds float, float* %1, i64 %41
  %43 = load float, float* %42, align 4, !tbaa !9
  %44 = fadd float %43, %38
  store float %44, float* %12, align 4, !tbaa !9
  %45 = or i64 %26, 3
  %46 = mul nsw i64 %45, %15
  %47 = add nsw i64 %46, %17
  %48 = getelementptr inbounds float, float* %1, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !9
  %50 = fadd float %49, %44
  store float %50, float* %12, align 4, !tbaa !9
  %51 = add nsw i64 %26, 4
  %52 = add i64 %27, -4
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %24

; <label>:54:                                     ; preds = %24, %14
  %55 = phi float [ undef, %14 ], [ %50, %24 ]
  %56 = phi float [ 0.000000e+00, %14 ], [ %50, %24 ]
  %57 = phi i64 [ 0, %14 ], [ %51, %24 ]
  %58 = icmp eq i64 %20, 0
  br i1 %58, label %72, label %59

; <label>:59:                                     ; preds = %54
  br label %60

; <label>:60:                                     ; preds = %60, %59
  %61 = phi float [ %56, %59 ], [ %68, %60 ]
  %62 = phi i64 [ %57, %59 ], [ %69, %60 ]
  %63 = phi i64 [ %20, %59 ], [ %70, %60 ]
  %64 = mul nsw i64 %62, %15
  %65 = add nsw i64 %64, %17
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !9
  %68 = fadd float %67, %61
  store float %68, float* %12, align 4, !tbaa !9
  %69 = add nuw nsw i64 %62, 1
  %70 = add i64 %63, -1
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %60, !llvm.loop !13

; <label>:72:                                     ; preds = %54, %60, %9
  %73 = phi float [ 0.000000e+00, %9 ], [ %55, %54 ], [ %68, %60 ]
  %74 = fdiv float %73, %2, !fpmath !15
  store float %74, float* %12, align 4, !tbaa !9
  br label %75

; <label>:75:                                     ; preds = %72, %5
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{float 2.500000e+00}
