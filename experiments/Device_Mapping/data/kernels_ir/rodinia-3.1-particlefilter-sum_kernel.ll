; ModuleID = 'rodinia-3.1-particlefilter-sum_kernel.cl'
source_filename = "rodinia-3.1-particlefilter-sum_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @sum_kernel(float* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !2 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
  %3 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %77

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @_Z14get_local_sizej(i32 0) #2
  %8 = sitofp i32 %1 to float
  %9 = uitofp i64 %7 to float
  %10 = fdiv float %8, %9, !fpmath !7
  %11 = tail call float @_Z4ceilf(float %10) #2
  %12 = fptosi float %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %75

; <label>:14:                                     ; preds = %6
  %15 = zext i32 %12 to i64
  %16 = add nsw i64 %15, -1
  %17 = and i64 %15, 7
  %18 = icmp ult i64 %16, 7
  br i1 %18, label %59, label %19

; <label>:19:                                     ; preds = %14
  %20 = sub nsw i64 %15, %17
  br label %21

; <label>:21:                                     ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %56, %21 ]
  %23 = phi float [ 0.000000e+00, %19 ], [ %55, %21 ]
  %24 = phi i64 [ %20, %19 ], [ %57, %21 ]
  %25 = getelementptr inbounds float, float* %0, i64 %22
  %26 = load float, float* %25, align 4, !tbaa !8
  %27 = fadd float %23, %26
  %28 = or i64 %22, 1
  %29 = getelementptr inbounds float, float* %0, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !8
  %31 = fadd float %27, %30
  %32 = or i64 %22, 2
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = load float, float* %33, align 4, !tbaa !8
  %35 = fadd float %31, %34
  %36 = or i64 %22, 3
  %37 = getelementptr inbounds float, float* %0, i64 %36
  %38 = load float, float* %37, align 4, !tbaa !8
  %39 = fadd float %35, %38
  %40 = or i64 %22, 4
  %41 = getelementptr inbounds float, float* %0, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !8
  %43 = fadd float %39, %42
  %44 = or i64 %22, 5
  %45 = getelementptr inbounds float, float* %0, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !8
  %47 = fadd float %43, %46
  %48 = or i64 %22, 6
  %49 = getelementptr inbounds float, float* %0, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !8
  %51 = fadd float %47, %50
  %52 = or i64 %22, 7
  %53 = getelementptr inbounds float, float* %0, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = fadd float %51, %54
  %56 = add nsw i64 %22, 8
  %57 = add i64 %24, -8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %21

; <label>:59:                                     ; preds = %21, %14
  %60 = phi float [ undef, %14 ], [ %55, %21 ]
  %61 = phi i64 [ 0, %14 ], [ %56, %21 ]
  %62 = phi float [ 0.000000e+00, %14 ], [ %55, %21 ]
  %63 = icmp eq i64 %17, 0
  br i1 %63, label %75, label %64

; <label>:64:                                     ; preds = %59
  br label %65

; <label>:65:                                     ; preds = %65, %64
  %66 = phi i64 [ %61, %64 ], [ %72, %65 ]
  %67 = phi float [ %62, %64 ], [ %71, %65 ]
  %68 = phi i64 [ %17, %64 ], [ %73, %65 ]
  %69 = getelementptr inbounds float, float* %0, i64 %66
  %70 = load float, float* %69, align 4, !tbaa !8
  %71 = fadd float %67, %70
  %72 = add nuw nsw i64 %66, 1
  %73 = add i64 %68, -1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %65, !llvm.loop !12

; <label>:75:                                     ; preds = %59, %65, %6
  %76 = phi float [ 0.000000e+00, %6 ], [ %60, %59 ], [ %71, %65 ]
  store float %76, float* %0, align 4, !tbaa !8
  br label %77

; <label>:77:                                     ; preds = %75, %2
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z4ceilf(float) local_unnamed_addr #1

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
!4 = !{!"none", !"none"}
!5 = !{!"float*", !"int"}
!6 = !{!"", !""}
!7 = !{float 2.500000e+00}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
