; ModuleID = 'shoc-1.1.5-MD-compute_lj_force.cl'
source_filename = "shoc-1.1.5-MD-compute_lj_force.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_lj_force(<4 x float>* nocapture, <4 x float>* nocapture readonly, i32, i32* nocapture readonly, float, float, float, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  %12 = getelementptr inbounds <4 x float>, <4 x float>* %1, i64 %11
  %13 = load <4 x float>, <4 x float>* %12, align 16, !tbaa !9
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %63

; <label>:15:                                     ; preds = %8
  %16 = extractelement <4 x float> %13, i64 0
  %17 = extractelement <4 x float> %13, i64 1
  %18 = extractelement <4 x float> %13, i64 2
  %19 = fsub float -0.000000e+00, %6
  %20 = zext i32 %2 to i64
  br label %21

; <label>:21:                                     ; preds = %59, %15
  %22 = phi i64 [ 0, %15 ], [ %61, %59 ]
  %23 = phi <4 x float> [ zeroinitializer, %15 ], [ %60, %59 ]
  %24 = trunc i64 %22 to i32
  %25 = mul nsw i32 %24, %7
  %26 = add i32 %25, %10
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %3, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !12
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds <4 x float>, <4 x float>* %1, i64 %30
  %32 = load <4 x float>, <4 x float>* %31, align 16, !tbaa !9
  %33 = extractelement <4 x float> %32, i64 0
  %34 = fsub float %16, %33
  %35 = extractelement <4 x float> %32, i64 1
  %36 = fsub float %17, %35
  %37 = extractelement <4 x float> %32, i64 2
  %38 = fsub float %18, %37
  %39 = fmul float %36, %36
  %40 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %38, float %40)
  %42 = fcmp olt float %41, %4
  br i1 %42, label %43, label %59

; <label>:43:                                     ; preds = %21
  %44 = fdiv float 1.000000e+00, %41, !fpmath !14
  %45 = fmul float %44, %44
  %46 = fmul float %44, %45
  %47 = fmul float %44, %46
  %48 = tail call float @llvm.fmuladd.f32(float %5, float %46, float %19)
  %49 = fmul float %47, %48
  %50 = extractelement <4 x float> %23, i64 0
  %51 = tail call float @llvm.fmuladd.f32(float %34, float %49, float %50)
  %52 = insertelement <4 x float> %23, float %51, i64 0
  %53 = extractelement <4 x float> %23, i64 1
  %54 = tail call float @llvm.fmuladd.f32(float %36, float %49, float %53)
  %55 = insertelement <4 x float> %52, float %54, i64 1
  %56 = extractelement <4 x float> %23, i64 2
  %57 = tail call float @llvm.fmuladd.f32(float %38, float %49, float %56)
  %58 = insertelement <4 x float> %55, float %57, i64 2
  br label %59

; <label>:59:                                     ; preds = %43, %21
  %60 = phi <4 x float> [ %58, %43 ], [ %23, %21 ]
  %61 = add nuw nsw i64 %22, 1
  %62 = icmp eq i64 %61, %20
  br i1 %62, label %63, label %21

; <label>:63:                                     ; preds = %59, %8
  %64 = phi <4 x float> [ zeroinitializer, %8 ], [ %60, %59 ]
  %65 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %11
  store <4 x float> %64, <4 x float>* %65, align 16, !tbaa !9
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
!4 = !{i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float4*", !"float4*", !"int", !"int*", !"float", !"float", !"float", !"int"}
!7 = !{!"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"int", !"int*", !"float", !"float", !"float", !"int"}
!8 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = !{float 2.500000e+00}
