; ModuleID = 'rodinia-3.1-particlefilter-likelihood_kernel.cl'
source_filename = "rodinia-3.1-particlefilter-likelihood_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @likelihood_kernel(float* nocapture, float* nocapture, float* nocapture readonly, float* nocapture readonly, float* nocapture readnone, i32*, i32* nocapture readonly, float* nocapture, i8*, float* nocapture readnone, float* nocapture, i32, i32, i32, i32, i32, i32, i32*, float* nocapture, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %21 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %22 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %23 = trunc i64 %22 to i32
  %24 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %25 = trunc i64 %24 to i32
  %26 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %27 = icmp slt i32 %25, %11
  br i1 %27, label %28, label %52

; <label>:28:                                     ; preds = %20
  %29 = shl i64 %24, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds float, float* %2, i64 %30
  %32 = bitcast float* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = getelementptr inbounds float, float* %0, i64 %30
  %35 = bitcast float* %34 to i32*
  store i32 %33, i32* %35, align 4, !tbaa !8
  %36 = getelementptr inbounds float, float* %3, i64 %30
  %37 = bitcast float* %36 to i32*
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = getelementptr inbounds float, float* %1, i64 %30
  %40 = bitcast float* %39 to i32*
  store i32 %38, i32* %40, align 4, !tbaa !8
  %41 = sitofp i32 %11 to float
  %42 = fdiv float 1.000000e+00, %41, !fpmath !12
  %43 = getelementptr inbounds float, float* %10, i64 %30
  store float %42, float* %43, align 4, !tbaa !8
  %44 = load float, float* %34, align 4, !tbaa !8
  %45 = fadd float %44, 1.000000e+00
  %46 = tail call float @d_randn(i32* %17, i32 %25) #6
  %47 = tail call float @llvm.fmuladd.f32(float %46, float 5.000000e+00, float %45)
  store float %47, float* %34, align 4, !tbaa !8
  %48 = load float, float* %39, align 4, !tbaa !8
  %49 = fadd float %48, -2.000000e+00
  %50 = tail call float @d_randn(i32* %17, i32 %25) #6
  %51 = tail call float @llvm.fmuladd.f32(float %50, float 2.000000e+00, float %49)
  store float %51, float* %39, align 4, !tbaa !8
  br label %52

; <label>:52:                                     ; preds = %28, %20
  %53 = phi i1 [ true, %28 ], [ false, %20 ]
  tail call void @_Z7barrierj(i32 2) #7
  br i1 %53, label %54, label %107

; <label>:54:                                     ; preds = %52
  %55 = icmp sgt i32 %12, 0
  %56 = shl i64 %24, 32
  %57 = ashr exact i64 %56, 32
  br i1 %55, label %58, label %97

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds float, float* %0, i64 %57
  %60 = getelementptr inbounds float, float* %1, i64 %57
  %61 = mul nsw i32 %25, %12
  %62 = sext i32 %61 to i64
  %63 = zext i32 %12 to i64
  br label %64

; <label>:64:                                     ; preds = %64, %58
  %65 = phi i64 [ 0, %58 ], [ %95, %64 ]
  %66 = load float, float* %59, align 4, !tbaa !8
  %67 = tail call float @dev_round_float(float %66) #6
  %68 = shl i64 %65, 33
  %69 = ashr exact i64 %68, 32
  %70 = or i64 %69, 1
  %71 = getelementptr inbounds i32, i32* %6, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !13
  %73 = sitofp i32 %72 to float
  %74 = fadd float %67, %73
  %75 = fptosi float %74 to i32
  %76 = load float, float* %60, align 4, !tbaa !8
  %77 = tail call float @dev_round_float(float %76) #6
  %78 = trunc i64 %65 to i32
  %79 = shl i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %6, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !13
  %83 = sitofp i32 %82 to float
  %84 = fadd float %77, %83
  %85 = fptosi float %84 to i32
  %86 = mul nsw i32 %75, %15
  %87 = add i32 %86, %85
  %88 = mul i32 %87, %16
  %89 = add nsw i32 %88, %14
  %90 = tail call i32 @_Z3absi(i32 %89) #5
  %91 = add nsw i64 %65, %62
  %92 = getelementptr inbounds i32, i32* %5, i64 %91
  %93 = icmp slt i32 %90, %13
  %94 = select i1 %93, i32 %90, i32 0
  store i32 %94, i32* %92, align 4, !tbaa !13
  %95 = add nuw nsw i64 %65, 1
  %96 = icmp eq i64 %95, %63
  br i1 %96, label %97, label %64

; <label>:97:                                     ; preds = %64, %54
  %98 = tail call float @calcLikelihoodSum(i8* %8, i32* %5, i32 %12, i32 %25) #6
  %99 = getelementptr inbounds float, float* %7, i64 %57
  %100 = sitofp i32 %12 to float
  %101 = fdiv float %98, %100, !fpmath !12
  %102 = fadd float %101, -3.000000e+02
  store float %102, float* %99, align 4, !tbaa !8
  %103 = getelementptr inbounds float, float* %10, i64 %57
  %104 = load float, float* %103, align 4, !tbaa !8
  %105 = tail call float @_Z3expf(float %102) #5
  %106 = fmul float %104, %105
  store float %106, float* %103, align 4, !tbaa !8
  br label %107

; <label>:107:                                    ; preds = %97, %52
  %108 = shl i64 %22, 32
  %109 = ashr exact i64 %108, 32
  %110 = getelementptr inbounds float, float* %19, i64 %109
  store float 0.000000e+00, float* %110, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 3) #7
  br i1 %27, label %111, label %118

; <label>:111:                                    ; preds = %107
  %112 = shl i64 %24, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds float, float* %10, i64 %113
  %115 = bitcast float* %114 to i32*
  %116 = load i32, i32* %115, align 4, !tbaa !8
  %117 = bitcast float* %110 to i32*
  store i32 %116, i32* %117, align 4, !tbaa !8
  br label %118

; <label>:118:                                    ; preds = %111, %107
  tail call void @_Z7barrierj(i32 1) #7
  %119 = lshr i64 %26, 1
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

; <label>:122:                                    ; preds = %118
  br label %125

; <label>:123:                                    ; preds = %135, %118
  %124 = icmp eq i32 %23, 0
  br i1 %124, label %138, label %145

; <label>:125:                                    ; preds = %122, %135
  %126 = phi i32 [ %136, %135 ], [ %120, %122 ]
  %127 = icmp ugt i32 %126, %23
  br i1 %127, label %128, label %135

; <label>:128:                                    ; preds = %125
  %129 = add i32 %126, %23
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %19, i64 %130
  %132 = load float, float* %131, align 4, !tbaa !8
  %133 = load float, float* %110, align 4, !tbaa !8
  %134 = fadd float %132, %133
  store float %134, float* %110, align 4, !tbaa !8
  br label %135

; <label>:135:                                    ; preds = %128, %125
  tail call void @_Z7barrierj(i32 1) #7
  %136 = lshr i32 %126, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %123, label %125

; <label>:138:                                    ; preds = %123
  %139 = bitcast float* %19 to i32*
  %140 = load i32, i32* %139, align 4, !tbaa !8
  %141 = shl i64 %21, 32
  %142 = ashr exact i64 %141, 32
  %143 = getelementptr inbounds float, float* %18, i64 %142
  %144 = bitcast float* %143 to i32*
  store i32 %140, i32* %144, align 4, !tbaa !8
  br label %145

; <label>:145:                                    ; preds = %138, %123
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

declare float @d_randn(i32*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #4

declare float @dev_round_float(float) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @_Z3absi(i32) local_unnamed_addr #1

declare float @calcLikelihoodSum(i8*, i32*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare float @_Z3expf(float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"int*", !"int*", !"float*", !"uchar*", !"float*", !"float*", !"int", !"int", !"int", !"int", !"int", !"int", !"int*", !"float*", !"float*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !10, i64 0}
