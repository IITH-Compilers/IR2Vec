; ModuleID = 'nvidia-4.2-MatVecMul-MatVecMulUncoalesced0.cl'
source_filename = "nvidia-4.2-MatVecMul-MatVecMulUncoalesced0.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MatVecMulUncoalesced0(float* nocapture readonly, float* nocapture readonly, i32, i32, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = icmp ult i32 %7, %3
  br i1 %8, label %9, label %73

; <label>:9:                                      ; preds = %5
  %10 = mul i32 %7, %2
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds float, float* %0, i64 %11
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %39, label %14

; <label>:14:                                     ; preds = %9
  %15 = zext i32 %2 to i64
  %16 = add nsw i64 %15, -1
  %17 = and i64 %15, 3
  %18 = icmp ult i64 %16, 3
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %14
  %20 = sub nsw i64 %15, %17
  br label %43

; <label>:21:                                     ; preds = %43, %14
  %22 = phi float [ undef, %14 ], [ %69, %43 ]
  %23 = phi i64 [ 0, %14 ], [ %70, %43 ]
  %24 = phi float [ 0.000000e+00, %14 ], [ %69, %43 ]
  %25 = icmp eq i64 %17, 0
  br i1 %25, label %39, label %26

; <label>:26:                                     ; preds = %21
  br label %27

; <label>:27:                                     ; preds = %27, %26
  %28 = phi i64 [ %23, %26 ], [ %36, %27 ]
  %29 = phi float [ %24, %26 ], [ %35, %27 ]
  %30 = phi i64 [ %17, %26 ], [ %37, %27 ]
  %31 = getelementptr inbounds float, float* %12, i64 %28
  %32 = load float, float* %31, align 4, !tbaa !8
  %33 = getelementptr inbounds float, float* %1, i64 %28
  %34 = load float, float* %33, align 4, !tbaa !8
  %35 = tail call float @llvm.fmuladd.f32(float %32, float %34, float %29)
  %36 = add nuw nsw i64 %28, 1
  %37 = add i64 %30, -1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %27, !llvm.loop !12

; <label>:39:                                     ; preds = %21, %27, %9
  %40 = phi float [ 0.000000e+00, %9 ], [ %22, %21 ], [ %35, %27 ]
  %41 = and i64 %6, 4294967295
  %42 = getelementptr inbounds float, float* %4, i64 %41
  store float %40, float* %42, align 4, !tbaa !8
  br label %73

; <label>:43:                                     ; preds = %43, %19
  %44 = phi i64 [ 0, %19 ], [ %70, %43 ]
  %45 = phi float [ 0.000000e+00, %19 ], [ %69, %43 ]
  %46 = phi i64 [ %20, %19 ], [ %71, %43 ]
  %47 = getelementptr inbounds float, float* %12, i64 %44
  %48 = load float, float* %47, align 4, !tbaa !8
  %49 = getelementptr inbounds float, float* %1, i64 %44
  %50 = load float, float* %49, align 4, !tbaa !8
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %50, float %45)
  %52 = or i64 %44, 1
  %53 = getelementptr inbounds float, float* %12, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = getelementptr inbounds float, float* %1, i64 %52
  %56 = load float, float* %55, align 4, !tbaa !8
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %56, float %51)
  %58 = or i64 %44, 2
  %59 = getelementptr inbounds float, float* %12, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !8
  %61 = getelementptr inbounds float, float* %1, i64 %58
  %62 = load float, float* %61, align 4, !tbaa !8
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %62, float %57)
  %64 = or i64 %44, 3
  %65 = getelementptr inbounds float, float* %12, i64 %64
  %66 = load float, float* %65, align 4, !tbaa !8
  %67 = getelementptr inbounds float, float* %1, i64 %64
  %68 = load float, float* %67, align 4, !tbaa !8
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %68, float %63)
  %70 = add nsw i64 %44, 4
  %71 = add i64 %46, -4
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %21, label %43

; <label>:73:                                     ; preds = %39, %5
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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"uint", !"uint", !"float*"}
!7 = !{!"const", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
