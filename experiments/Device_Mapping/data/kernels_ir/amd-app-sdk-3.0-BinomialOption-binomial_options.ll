; ModuleID = 'BinomialOption_Kernels.cl'
source_filename = "BinomialOption_Kernels.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @binomial_options(i32, <4 x float>* nocapture readonly, <4 x float>* nocapture, <4 x float>* nocapture, <4 x float>* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %6 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds <4 x float>, <4 x float>* %1, i64 %9
  %11 = load <4 x float>, <4 x float>* %10, align 16, !tbaa !9
  %12 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %11
  %13 = fmul <4 x float> %11, <float 3.000000e+01, float 3.000000e+01, float 3.000000e+01, float 3.000000e+01>
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> <float 5.000000e+00, float 5.000000e+00, float 5.000000e+00, float 5.000000e+00>, <4 x float> %13)
  %15 = fmul <4 x float> %11, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %16 = fadd <4 x float> %12, %15
  %17 = fmul <4 x float> %11, <float 1.000000e+01, float 1.000000e+01, float 1.000000e+01, float 1.000000e+01>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float> %17)
  %19 = sitofp i32 %0 to float
  %20 = fdiv float 1.000000e+00, %19, !fpmath !12
  %21 = insertelement <4 x float> undef, float %20, i32 0
  %22 = shufflevector <4 x float> %21, <4 x float> undef, <4 x i32> zeroinitializer
  %23 = fmul <4 x float> %22, %18
  %24 = tail call <4 x float> @_Z4sqrtDv4_f(<4 x float> %23) #4
  %25 = fmul <4 x float> %24, <float 0x3FD3333340000000, float 0x3FD3333340000000, float 0x3FD3333340000000, float 0x3FD3333340000000>
  %26 = fmul <4 x float> %23, <float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000>
  %27 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %26) #4
  %28 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %27, !fpmath !12
  %29 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %25) #4
  %30 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %29, !fpmath !12
  %31 = fsub <4 x float> %27, %30
  %32 = fsub <4 x float> %29, %30
  %33 = fdiv <4 x float> %31, %32, !fpmath !12
  %34 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %33
  %35 = fmul <4 x float> %28, %33
  %36 = fmul <4 x float> %28, %34
  %37 = uitofp i32 %7 to float
  %38 = fsub float -0.000000e+00, %19
  %39 = tail call float @llvm.fmuladd.f32(float %37, float 2.000000e+00, float %38)
  %40 = insertelement <4 x float> undef, float %39, i32 0
  %41 = shufflevector <4 x float> %40, <4 x float> undef, <4 x i32> zeroinitializer
  %42 = fmul <4 x float> %25, %41
  %43 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %42) #4
  %44 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %16
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %43, <4 x float> %44)
  %46 = extractelement <4 x float> %45, i64 0
  %47 = fcmp ogt float %46, 0.000000e+00
  %48 = select i1 %47, float %46, float 0.000000e+00
  %49 = and i64 %6, 4294967295
  %50 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 %49
  %51 = insertelement <4 x float> undef, float %48, i64 0
  %52 = extractelement <4 x float> %45, i64 1
  %53 = fcmp ogt float %52, 0.000000e+00
  %54 = select i1 %53, float %52, float 0.000000e+00
  %55 = insertelement <4 x float> %51, float %54, i64 1
  %56 = extractelement <4 x float> %45, i64 2
  %57 = fcmp ogt float %56, 0.000000e+00
  %58 = select i1 %57, float %56, float 0.000000e+00
  %59 = insertelement <4 x float> %55, float %58, i64 2
  %60 = extractelement <4 x float> %45, i64 3
  %61 = fcmp ogt float %60, 0.000000e+00
  %62 = select i1 %61, float %60, float 0.000000e+00
  %63 = insertelement <4 x float> %59, float %62, i64 3
  store <4 x float> %63, <4 x float>* %50, align 16
  tail call void @_Z7barrierj(i32 1) #5
  %64 = icmp sgt i32 %0, 0
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %5
  %66 = add i64 %6, 1
  %67 = and i64 %66, 4294967295
  %68 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 %67
  %69 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 %49
  %70 = getelementptr inbounds <4 x float>, <4 x float>* %4, i64 %67
  br label %73

; <label>:71:                                     ; preds = %89, %5
  %72 = icmp eq i32 %7, 0
  br i1 %72, label %92, label %95

; <label>:73:                                     ; preds = %65, %89
  %74 = phi i32 [ %0, %65 ], [ %90, %89 ]
  %75 = icmp ugt i32 %74, %7
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %73
  %77 = load <4 x float>, <4 x float>* %50, align 16, !tbaa !9
  %78 = load <4 x float>, <4 x float>* %68, align 16, !tbaa !9
  %79 = fmul <4 x float> %36, %78
  %80 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %77, <4 x float> %79)
  store <4 x float> %80, <4 x float>* %69, align 16, !tbaa !9
  br label %81

; <label>:81:                                     ; preds = %76, %73
  tail call void @_Z7barrierj(i32 1) #5
  %82 = add nsw i32 %74, -1
  %83 = icmp ugt i32 %82, %7
  br i1 %83, label %84, label %89

; <label>:84:                                     ; preds = %81
  %85 = load <4 x float>, <4 x float>* %69, align 16, !tbaa !9
  %86 = load <4 x float>, <4 x float>* %70, align 16, !tbaa !9
  %87 = fmul <4 x float> %36, %86
  %88 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %85, <4 x float> %87)
  store <4 x float> %88, <4 x float>* %50, align 16, !tbaa !9
  br label %89

; <label>:89:                                     ; preds = %84, %81
  tail call void @_Z7barrierj(i32 1) #5
  %90 = add nsw i32 %74, -2
  %91 = icmp sgt i32 %74, 2
  br i1 %91, label %73, label %71

; <label>:92:                                     ; preds = %71
  %93 = load <4 x float>, <4 x float>* %3, align 16, !tbaa !9
  %94 = getelementptr inbounds <4 x float>, <4 x float>* %2, i64 %9
  store <4 x float> %93, <4 x float>* %94, align 16, !tbaa !9
  br label %95

; <label>:95:                                     ; preds = %92, %71
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nounwind readnone
declare <4 x float> @_Z4sqrtDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare <4 x float> @_Z3expDv4_f(<4 x float>) local_unnamed_addr #1

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
!4 = !{i32 0, i32 1, i32 1, i32 3, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"float4*", !"float4*", !"float4*", !"float4*"}
!7 = !{!"int", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*"}
!8 = !{!"", !"const", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
