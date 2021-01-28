; ModuleID = 'polybench-gpu-1.0-gramschmidt-gramschmidt_kernel3.cl'
source_filename = "polybench-gpu-1.0-gramschmidt-gramschmidt_kernel3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @gramschmidt_kernel3(float* nocapture, float* nocapture, float* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = add nsw i32 %3, 1
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %11, %5
  br i1 %12, label %13, label %131

; <label>:13:                                     ; preds = %6
  %14 = mul nsw i32 %5, %3
  %15 = add nsw i32 %14, %11
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %1, i64 %16
  store float 0.000000e+00, float* %17, align 4, !tbaa !9
  %18 = icmp sgt i32 %4, 0
  br i1 %18, label %19, label %131

; <label>:19:                                     ; preds = %13
  %20 = sext i32 %5 to i64
  %21 = sext i32 %3 to i64
  %22 = shl i64 %10, 32
  %23 = ashr exact i64 %22, 32
  %24 = zext i32 %4 to i64
  %25 = and i64 %24, 1
  %26 = icmp eq i32 %4, 1
  br i1 %26, label %53, label %27

; <label>:27:                                     ; preds = %19
  %28 = sub nsw i64 %24, %25
  br label %29

; <label>:29:                                     ; preds = %29, %27
  %30 = phi float [ 0.000000e+00, %27 ], [ %49, %29 ]
  %31 = phi i64 [ 0, %27 ], [ %50, %29 ]
  %32 = phi i64 [ %28, %27 ], [ %51, %29 ]
  %33 = mul nsw i64 %31, %20
  %34 = add nsw i64 %33, %21
  %35 = getelementptr inbounds float, float* %2, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !9
  %37 = add nsw i64 %33, %23
  %38 = getelementptr inbounds float, float* %0, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !9
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %39, float %30)
  store float %40, float* %17, align 4, !tbaa !9
  %41 = or i64 %31, 1
  %42 = mul nsw i64 %41, %20
  %43 = add nsw i64 %42, %21
  %44 = getelementptr inbounds float, float* %2, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !9
  %46 = add nsw i64 %42, %23
  %47 = getelementptr inbounds float, float* %0, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !9
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %48, float %40)
  store float %49, float* %17, align 4, !tbaa !9
  %50 = add nsw i64 %31, 2
  %51 = add i64 %32, -2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %29

; <label>:53:                                     ; preds = %29, %19
  %54 = phi float [ undef, %19 ], [ %49, %29 ]
  %55 = phi float [ 0.000000e+00, %19 ], [ %49, %29 ]
  %56 = phi i64 [ 0, %19 ], [ %50, %29 ]
  %57 = icmp eq i64 %25, 0
  br i1 %57, label %67, label %58

; <label>:58:                                     ; preds = %53
  %59 = mul nsw i64 %56, %20
  %60 = add nsw i64 %59, %21
  %61 = getelementptr inbounds float, float* %2, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !9
  %63 = add nsw i64 %59, %23
  %64 = getelementptr inbounds float, float* %0, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !9
  %66 = tail call float @llvm.fmuladd.f32(float %62, float %65, float %55)
  store float %66, float* %17, align 4, !tbaa !9
  br label %67

; <label>:67:                                     ; preds = %53, %58
  %68 = phi float [ %54, %53 ], [ %66, %58 ]
  br i1 %18, label %69, label %131

; <label>:69:                                     ; preds = %67
  %70 = sext i32 %5 to i64
  %71 = sext i32 %3 to i64
  %72 = shl i64 %10, 32
  %73 = ashr exact i64 %72, 32
  %74 = zext i32 %4 to i64
  %75 = getelementptr inbounds float, float* %2, i64 %71
  %76 = load float, float* %75, align 4, !tbaa !9
  %77 = getelementptr inbounds float, float* %0, i64 %73
  %78 = load float, float* %77, align 4, !tbaa !9
  %79 = fsub float -0.000000e+00, %76
  %80 = tail call float @llvm.fmuladd.f32(float %79, float %68, float %78)
  store float %80, float* %77, align 4, !tbaa !9
  %81 = icmp eq i32 %4, 1
  br i1 %81, label %131, label %82

; <label>:82:                                     ; preds = %69
  %83 = and i32 %4, 1
  %84 = xor i32 %83, 1
  %85 = icmp eq i32 %4, 2
  br i1 %85, label %117, label %86

; <label>:86:                                     ; preds = %82
  %87 = zext i32 %84 to i64
  %88 = add nsw i64 %74, -1
  %89 = sub nsw i64 %88, %87
  br label %90

; <label>:90:                                     ; preds = %90, %86
  %91 = phi i64 [ 1, %86 ], [ %114, %90 ]
  %92 = phi i64 [ %89, %86 ], [ %115, %90 ]
  %93 = load float, float* %17, align 4, !tbaa !9
  %94 = mul nsw i64 %91, %70
  %95 = add nsw i64 %94, %71
  %96 = getelementptr inbounds float, float* %2, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !9
  %98 = add nsw i64 %94, %73
  %99 = getelementptr inbounds float, float* %0, i64 %98
  %100 = load float, float* %99, align 4, !tbaa !9
  %101 = fsub float -0.000000e+00, %97
  %102 = tail call float @llvm.fmuladd.f32(float %101, float %93, float %100)
  store float %102, float* %99, align 4, !tbaa !9
  %103 = add nuw nsw i64 %91, 1
  %104 = load float, float* %17, align 4, !tbaa !9
  %105 = mul nsw i64 %103, %70
  %106 = add nsw i64 %105, %71
  %107 = getelementptr inbounds float, float* %2, i64 %106
  %108 = load float, float* %107, align 4, !tbaa !9
  %109 = add nsw i64 %105, %73
  %110 = getelementptr inbounds float, float* %0, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !9
  %112 = fsub float -0.000000e+00, %108
  %113 = tail call float @llvm.fmuladd.f32(float %112, float %104, float %111)
  store float %113, float* %110, align 4, !tbaa !9
  %114 = add nsw i64 %91, 2
  %115 = add i64 %92, -2
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %90

; <label>:117:                                    ; preds = %90, %82
  %118 = phi i64 [ 1, %82 ], [ %114, %90 ]
  %119 = icmp eq i32 %84, 0
  br i1 %119, label %131, label %120

; <label>:120:                                    ; preds = %117
  %121 = load float, float* %17, align 4, !tbaa !9
  %122 = mul nsw i64 %118, %70
  %123 = add nsw i64 %122, %71
  %124 = getelementptr inbounds float, float* %2, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !9
  %126 = add nsw i64 %122, %73
  %127 = getelementptr inbounds float, float* %0, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !9
  %129 = fsub float -0.000000e+00, %125
  %130 = tail call float @llvm.fmuladd.f32(float %129, float %121, float %128)
  store float %130, float* %127, align 4, !tbaa !9
  br label %131

; <label>:131:                                    ; preds = %120, %117, %69, %13, %67, %6
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
!6 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int", !"int"}
!7 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!8 = !{!"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
