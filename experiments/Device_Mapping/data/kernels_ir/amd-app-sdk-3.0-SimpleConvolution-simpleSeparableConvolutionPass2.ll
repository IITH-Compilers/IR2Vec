; ModuleID = 'SimpleConvolution-simpleSeparableConvolutionPass2.cl'
source_filename = "SimpleConvolution-simpleSeparableConvolutionPass2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @simpleSeparableConvolutionPass2(float* nocapture readonly, float* nocapture readonly, i32* nocapture, <2 x i32>, i32, <2 x i32>) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = extractelement <2 x i32> %3, i64 0
  %8 = extractelement <2 x i32> %3, i64 1
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = urem i32 %10, %8
  %12 = udiv i32 %10, %8
  %13 = icmp ult i32 %12, %7
  br i1 %13, label %14, label %46

; <label>:14:                                     ; preds = %6
  %15 = add i32 %11, %4
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %14
  %18 = extractelement <2 x i32> %5, i64 1
  %19 = mul i32 %12, %18
  %20 = zext i32 %11 to i64
  %21 = zext i32 %4 to i64
  br label %31

; <label>:22:                                     ; preds = %31
  %23 = fadd float %43, 5.000000e-01
  %24 = fptosi float %23 to i32
  br label %25

; <label>:25:                                     ; preds = %22, %14
  %26 = phi i32 [ 0, %14 ], [ %24, %22 ]
  %27 = mul i32 %11, %7
  %28 = add i32 %27, %12
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %2, i64 %29
  store i32 %26, i32* %30, align 4, !tbaa !9
  br label %46

; <label>:31:                                     ; preds = %31, %17
  %32 = phi i64 [ 0, %17 ], [ %40, %31 ]
  %33 = phi i64 [ %20, %17 ], [ %44, %31 ]
  %34 = phi float [ 0.000000e+00, %17 ], [ %43, %31 ]
  %35 = trunc i64 %33 to i32
  %36 = add i32 %19, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %0, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !13
  %40 = add nuw nsw i64 %32, 1
  %41 = getelementptr inbounds float, float* %1, i64 %32
  %42 = load float, float* %41, align 4, !tbaa !13
  %43 = tail call float @_Z3madfff(float %39, float %42, float %34) #2
  %44 = add nuw nsw i64 %33, 1
  %45 = icmp eq i64 %40, %21
  br i1 %45, label %22, label %31

; <label>:46:                                     ; preds = %6, %25
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
!6 = !{!"float*", !"float*", !"int*", !"uint2", !"uint", !"uint2"}
!7 = !{!"float*", !"float*", !"int*", !"uint __attribute__((ext_vector_type(2)))", !"uint", !"uint __attribute__((ext_vector_type(2)))"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !11, i64 0}
