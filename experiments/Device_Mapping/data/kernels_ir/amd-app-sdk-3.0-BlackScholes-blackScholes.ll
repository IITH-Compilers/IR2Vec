; ModuleID = 'BlackScholes_Kernels.cl'
source_filename = "BlackScholes_Kernels.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @blackScholes(<4 x float>* nocapture readonly, i32, <4 x float>* nocapture, <4 x float>* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %5 = alloca <4 x float>, align 16
  %6 = alloca <4 x float>, align 16
  %7 = bitcast <4 x float>* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #5
  %8 = bitcast <4 x float>* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #5
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %11 = sext i32 %1 to i64
  %12 = mul i64 %10, %11
  %13 = add i64 %12, %9
  %14 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %13
  %15 = load <4 x float>, <4 x float>* %14, align 16, !tbaa !9
  %16 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %15
  %17 = fmul <4 x float> %16, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float 1.000000e+01, float 1.000000e+01, float 1.000000e+01, float 1.000000e+01>, <4 x float> %17)
  %19 = fmul <4 x float> %16, <float 1.000000e+01, float 1.000000e+01, float 1.000000e+01, float 1.000000e+01>
  %20 = fadd <4 x float> %15, %19
  %21 = fmul <4 x float> %16, <float 0x3FA99999A0000000, float 0x3FA99999A0000000, float 0x3FA99999A0000000, float 0x3FA99999A0000000>
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float> %21)
  %23 = fmul <4 x float> %16, <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float> %23)
  %25 = tail call <4 x float> @_Z4sqrtDv4_f(<4 x float> %20) #6
  %26 = fmul <4 x float> %25, %24
  %27 = fdiv <4 x float> %18, %18, !fpmath !12
  %28 = tail call <4 x float> @_Z3logDv4_f(<4 x float> %27) #6
  %29 = fmul <4 x float> %24, %24
  %30 = fdiv <4 x float> %29, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, !fpmath !12
  %31 = fadd <4 x float> %22, %30
  %32 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %20, <4 x float> %28)
  %33 = fdiv <4 x float> %32, %26, !fpmath !12
  %34 = fsub <4 x float> %33, %26
  %35 = fmul <4 x float> %22, %20
  %36 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %35
  %37 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %36) #6
  %38 = fmul <4 x float> %18, %37
  call void @phi(<4 x float> %33, <4 x float>* nonnull %5) #5
  call void @phi(<4 x float> %34, <4 x float>* nonnull %6) #5
  %39 = load <4 x float>, <4 x float>* %5, align 16, !tbaa !9
  %40 = load <4 x float>, <4 x float>* %6, align 16, !tbaa !9
  %41 = fmul <4 x float> %38, %40
  %42 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %41
  %43 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %39, <4 x float> %42)
  %44 = getelementptr inbounds <4 x float>, <4 x float>* %2, i64 %13
  store <4 x float> %43, <4 x float>* %44, align 16, !tbaa !9
  %45 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %33
  call void @phi(<4 x float> %45, <4 x float>* nonnull %5) #5
  %46 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %34
  call void @phi(<4 x float> %46, <4 x float>* nonnull %6) #5
  %47 = load <4 x float>, <4 x float>* %6, align 16, !tbaa !9
  %48 = load <4 x float>, <4 x float>* %5, align 16, !tbaa !9
  %49 = fmul <4 x float> %18, %48
  %50 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %49
  %51 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %47, <4 x float> %50)
  %52 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 %13
  store <4 x float> %51, <4 x float>* %52, align 16, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nounwind readnone
declare <4 x float> @_Z4sqrtDv4_f(<4 x float>) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare <4 x float> @_Z3logDv4_f(<4 x float>) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare <4 x float> @_Z3expDv4_f(<4 x float>) local_unnamed_addr #2

declare void @phi(<4 x float>, <4 x float>*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float4*", !"int", !"float4*", !"float4*"}
!7 = !{!"float __attribute__((ext_vector_type(4)))*", !"int", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*"}
!8 = !{!"const", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
