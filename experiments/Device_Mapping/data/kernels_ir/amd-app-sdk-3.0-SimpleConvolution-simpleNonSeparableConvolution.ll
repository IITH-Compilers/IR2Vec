; ModuleID = 'SimpleConvolution-simpleNonSeparableConvolution.cl'
source_filename = "SimpleConvolution-simpleNonSeparableConvolution.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @simpleNonSeparableConvolution(i32* nocapture readonly, float* nocapture readonly, i32* nocapture, <2 x i32>, <2 x i32>, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = extractelement <2 x i32> %3, i64 0
  %10 = urem i32 %8, %9
  %11 = udiv i32 %8, %9
  %12 = extractelement <2 x i32> %4, i64 0
  %13 = extractelement <2 x i32> %3, i64 1
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %100

; <label>:15:                                     ; preds = %6
  %16 = extractelement <2 x i32> %4, i64 1
  %17 = add i32 %11, %16
  %18 = icmp ult i32 %11, %17
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = add i32 %10, %12
  %21 = icmp ult i32 %10, %20
  %22 = zext i32 %10 to i64
  %23 = zext i32 %12 to i64
  %24 = and i64 %23, 1
  %25 = icmp eq i32 %12, 1
  %26 = sub nsw i64 %23, %24
  %27 = icmp eq i64 %24, 0
  br label %34

; <label>:28:                                     ; preds = %60, %15
  %29 = phi float [ 0.000000e+00, %15 ], [ %61, %60 ]
  %30 = fadd float %29, 5.000000e-01
  %31 = fptosi float %30 to i32
  %32 = and i64 %7, 4294967295
  %33 = getelementptr inbounds i32, i32* %2, i64 %32
  store i32 %31, i32* %33, align 4, !tbaa !9
  br label %100

; <label>:34:                                     ; preds = %60, %19
  %35 = phi float [ 0.000000e+00, %19 ], [ %61, %60 ]
  %36 = phi i32 [ %11, %19 ], [ %62, %60 ]
  %37 = phi i32 [ 0, %19 ], [ %63, %60 ]
  br i1 %21, label %38, label %60

; <label>:38:                                     ; preds = %34
  %39 = mul i32 %37, %12
  %40 = mul i32 %36, %5
  br i1 %25, label %42, label %41

; <label>:41:                                     ; preds = %38
  br label %65

; <label>:42:                                     ; preds = %65, %38
  %43 = phi float [ undef, %38 ], [ %95, %65 ]
  %44 = phi i64 [ 0, %38 ], [ %97, %65 ]
  %45 = phi i64 [ %22, %38 ], [ %96, %65 ]
  %46 = phi float [ %35, %38 ], [ %95, %65 ]
  br i1 %27, label %60, label %47

; <label>:47:                                     ; preds = %42
  %48 = trunc i64 %45 to i32
  %49 = add i32 %40, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !9
  %53 = uitofp i32 %52 to float
  %54 = trunc i64 %44 to i32
  %55 = add i32 %39, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %1, i64 %56
  %58 = load float, float* %57, align 4, !tbaa !13
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %58, float %46)
  br label %60

; <label>:60:                                     ; preds = %47, %42, %34
  %61 = phi float [ %35, %34 ], [ %43, %42 ], [ %59, %47 ]
  %62 = add nuw i32 %36, 1
  %63 = add nuw nsw i32 %37, 1
  %64 = icmp eq i32 %63, %16
  br i1 %64, label %28, label %34

; <label>:65:                                     ; preds = %65, %41
  %66 = phi i64 [ 0, %41 ], [ %97, %65 ]
  %67 = phi i64 [ %22, %41 ], [ %96, %65 ]
  %68 = phi float [ %35, %41 ], [ %95, %65 ]
  %69 = phi i64 [ %26, %41 ], [ %98, %65 ]
  %70 = trunc i64 %66 to i32
  %71 = add i32 %39, %70
  %72 = trunc i64 %67 to i32
  %73 = add i32 %40, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !9
  %77 = uitofp i32 %76 to float
  %78 = zext i32 %71 to i64
  %79 = getelementptr inbounds float, float* %1, i64 %78
  %80 = load float, float* %79, align 4, !tbaa !13
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %80, float %68)
  %82 = add nuw nsw i64 %67, 1
  %83 = trunc i64 %66 to i32
  %84 = or i32 %83, 1
  %85 = add i32 %39, %84
  %86 = trunc i64 %82 to i32
  %87 = add i32 %40, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %0, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !9
  %91 = uitofp i32 %90 to float
  %92 = zext i32 %85 to i64
  %93 = getelementptr inbounds float, float* %1, i64 %92
  %94 = load float, float* %93, align 4, !tbaa !13
  %95 = tail call float @llvm.fmuladd.f32(float %91, float %94, float %81)
  %96 = add nsw i64 %67, 2
  %97 = add nsw i64 %66, 2
  %98 = add i64 %69, -2
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %42, label %65

; <label>:100:                                    ; preds = %6, %28
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"uint*", !"float*", !"int*", !"uint2", !"uint2", !"uint"}
!7 = !{!"uint*", !"float*", !"int*", !"uint __attribute__((ext_vector_type(2)))", !"uint __attribute__((ext_vector_type(2)))", !"uint"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !11, i64 0}
