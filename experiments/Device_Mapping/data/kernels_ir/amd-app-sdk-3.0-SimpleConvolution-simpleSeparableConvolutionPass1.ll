; ModuleID = 'SimpleConvolution-simpleSeparableConvolutionPass1.cl'
source_filename = "SimpleConvolution-simpleSeparableConvolutionPass1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @simpleSeparableConvolutionPass1(i32* nocapture readonly, float* nocapture readonly, float* nocapture, <2 x i32>, i32, <2 x i32>) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = extractelement <2 x i32> %3, i64 0
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, %7
  %11 = udiv i32 %9, %7
  %12 = extractelement <2 x i32> %3, i64 1
  %13 = add i32 %4, -1
  %14 = add i32 %13, %12
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %47

; <label>:16:                                     ; preds = %6
  %17 = add i32 %10, %4
  %18 = icmp ult i32 %10, %17
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %16
  %20 = extractelement <2 x i32> %5, i64 0
  %21 = mul i32 %11, %20
  %22 = zext i32 %10 to i64
  %23 = zext i32 %4 to i64
  br label %31

; <label>:24:                                     ; preds = %31, %16
  %25 = phi float [ 0.000000e+00, %16 ], [ %44, %31 ]
  %26 = extractelement <2 x i32> %5, i64 1
  %27 = mul i32 %10, %26
  %28 = add i32 %27, %11
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %2, i64 %29
  store float %25, float* %30, align 4, !tbaa !9
  br label %47

; <label>:31:                                     ; preds = %31, %19
  %32 = phi i64 [ 0, %19 ], [ %41, %31 ]
  %33 = phi i64 [ %22, %19 ], [ %45, %31 ]
  %34 = phi float [ 0.000000e+00, %19 ], [ %44, %31 ]
  %35 = trunc i64 %33 to i32
  %36 = add i32 %21, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !13
  %40 = uitofp i32 %39 to float
  %41 = add nuw nsw i64 %32, 1
  %42 = getelementptr inbounds float, float* %1, i64 %32
  %43 = load float, float* %42, align 4, !tbaa !9
  %44 = tail call float @_Z3madfff(float %40, float %43, float %34) #2
  %45 = add nuw nsw i64 %33, 1
  %46 = icmp eq i64 %41, %23
  br i1 %46, label %24, label %31

; <label>:47:                                     ; preds = %6, %24
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z3madfff(float, float, float) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"uint*", !"float*", !"float*", !"uint2", !"uint", !"uint2"}
!7 = !{!"uint*", !"float*", !"float*", !"uint __attribute__((ext_vector_type(2)))", !"uint", !"uint __attribute__((ext_vector_type(2)))"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !11, i64 0}
