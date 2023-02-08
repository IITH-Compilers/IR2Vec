; ModuleID = 'shoc-1.1.5-Stencil2D-StencilKernel.cl'
source_filename = "shoc-1.1.5-Stencil2D-StencilKernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @StencilKernel(float* nocapture readonly, float* nocapture, i32, float, float, float, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z12get_group_idj(i32 1) #5
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z14get_num_groupsj(i32 1) #5
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @_Z12get_local_idj(i32 1) #5
  %17 = trunc i64 %16 to i32
  %18 = tail call i64 @_Z14get_local_sizej(i32 1) #5
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 @ToGlobalRow(i32 %9, i32 16, i32 %15) #6
  %21 = tail call i32 @ToGlobalCol(i32 %11, i32 %19, i32 %17) #6
  %22 = mul nsw i32 %19, %13
  %23 = add nsw i32 %22, 2
  %24 = srem i32 %23, %2
  %25 = icmp eq i32 %24, 0
  %26 = sub nsw i32 %2, %24
  %27 = select i1 %25, i32 0, i32 %26
  %28 = add i32 %27, %22
  %29 = add nsw i32 %15, -1
  %30 = add nsw i32 %20, -1
  br label %33

; <label>:31:                                     ; preds = %33
  %32 = icmp eq i32 %17, 0
  br i1 %32, label %48, label %65

; <label>:33:                                     ; preds = %33, %7
  %34 = phi i32 [ 0, %7 ], [ %46, %33 ]
  %35 = add nsw i32 %29, %34
  %36 = tail call i32 @ToFlatHaloedIdx(i32 %35, i32 %17, i32 %19) #6
  %37 = add nsw i32 %30, %34
  %38 = tail call i32 @ToFlatHaloedIdx(i32 %37, i32 %21, i32 %28) #6
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %0, i64 %39
  %41 = bitcast float* %40 to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds float, float* %6, i64 %43
  %45 = bitcast float* %44 to i32*
  store i32 %42, i32* %45, align 4, !tbaa !8
  %46 = add nuw nsw i32 %34, 1
  %47 = icmp eq i32 %46, 18
  br i1 %47, label %31, label %33

; <label>:48:                                     ; preds = %31
  %49 = add nsw i32 %21, -1
  br label %50

; <label>:50:                                     ; preds = %50, %48
  %51 = phi i32 [ 0, %48 ], [ %63, %50 ]
  %52 = add nsw i32 %29, %51
  %53 = tail call i32 @ToFlatHaloedIdx(i32 %52, i32 -1, i32 %19) #6
  %54 = add nsw i32 %30, %51
  %55 = tail call i32 @ToFlatHaloedIdx(i32 %54, i32 %49, i32 %28) #6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %0, i64 %56
  %58 = bitcast float* %57 to i32*
  %59 = load i32, i32* %58, align 4, !tbaa !8
  %60 = sext i32 %53 to i64
  %61 = getelementptr inbounds float, float* %6, i64 %60
  %62 = bitcast float* %61 to i32*
  store i32 %59, i32* %62, align 4, !tbaa !8
  %63 = add nuw nsw i32 %51, 1
  %64 = icmp eq i32 %63, 18
  br i1 %64, label %86, label %50

; <label>:65:                                     ; preds = %31
  %66 = add nsw i32 %19, -1
  %67 = icmp eq i32 %66, %17
  br i1 %67, label %68, label %86

; <label>:68:                                     ; preds = %65
  %69 = add nsw i32 %17, 1
  %70 = add nsw i32 %21, 1
  br label %71

; <label>:71:                                     ; preds = %71, %68
  %72 = phi i32 [ 0, %68 ], [ %84, %71 ]
  %73 = add nsw i32 %29, %72
  %74 = tail call i32 @ToFlatHaloedIdx(i32 %73, i32 %69, i32 %19) #6
  %75 = add nsw i32 %30, %72
  %76 = tail call i32 @ToFlatHaloedIdx(i32 %75, i32 %70, i32 %28) #6
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %0, i64 %77
  %79 = bitcast float* %78 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !8
  %81 = sext i32 %74 to i64
  %82 = getelementptr inbounds float, float* %6, i64 %81
  %83 = bitcast float* %82 to i32*
  store i32 %80, i32* %83, align 4, !tbaa !8
  %84 = add nuw nsw i32 %72, 1
  %85 = icmp eq i32 %84, 18
  br i1 %85, label %86, label %71

; <label>:86:                                     ; preds = %71, %50, %65
  tail call void @_Z7barrierj(i32 1) #7
  %87 = add nsw i32 %15, 1
  %88 = add nsw i32 %17, 1
  %89 = add nsw i32 %17, -1
  br label %91

; <label>:90:                                     ; preds = %91
  ret void

; <label>:91:                                     ; preds = %91, %86
  %92 = phi i32 [ 0, %86 ], [ %145, %91 ]
  %93 = add nsw i32 %92, %15
  %94 = tail call i32 @ToFlatHaloedIdx(i32 %93, i32 %17, i32 %19) #6
  %95 = add nsw i32 %29, %92
  %96 = tail call i32 @ToFlatHaloedIdx(i32 %95, i32 %17, i32 %19) #6
  %97 = add nsw i32 %87, %92
  %98 = tail call i32 @ToFlatHaloedIdx(i32 %97, i32 %17, i32 %19) #6
  %99 = tail call i32 @ToFlatHaloedIdx(i32 %93, i32 %88, i32 %19) #6
  %100 = tail call i32 @ToFlatHaloedIdx(i32 %93, i32 %89, i32 %19) #6
  %101 = tail call i32 @ToFlatHaloedIdx(i32 %95, i32 %88, i32 %19) #6
  %102 = tail call i32 @ToFlatHaloedIdx(i32 %97, i32 %88, i32 %19) #6
  %103 = tail call i32 @ToFlatHaloedIdx(i32 %95, i32 %89, i32 %19) #6
  %104 = tail call i32 @ToFlatHaloedIdx(i32 %97, i32 %89, i32 %19) #6
  %105 = sext i32 %94 to i64
  %106 = getelementptr inbounds float, float* %6, i64 %105
  %107 = load float, float* %106, align 4, !tbaa !8
  %108 = sext i32 %96 to i64
  %109 = getelementptr inbounds float, float* %6, i64 %108
  %110 = load float, float* %109, align 4, !tbaa !8
  %111 = sext i32 %98 to i64
  %112 = getelementptr inbounds float, float* %6, i64 %111
  %113 = load float, float* %112, align 4, !tbaa !8
  %114 = fadd float %110, %113
  %115 = sext i32 %99 to i64
  %116 = getelementptr inbounds float, float* %6, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !8
  %118 = fadd float %114, %117
  %119 = sext i32 %100 to i64
  %120 = getelementptr inbounds float, float* %6, i64 %119
  %121 = load float, float* %120, align 4, !tbaa !8
  %122 = fadd float %118, %121
  %123 = sext i32 %101 to i64
  %124 = getelementptr inbounds float, float* %6, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !8
  %126 = sext i32 %102 to i64
  %127 = getelementptr inbounds float, float* %6, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !8
  %129 = fadd float %125, %128
  %130 = sext i32 %103 to i64
  %131 = getelementptr inbounds float, float* %6, i64 %130
  %132 = load float, float* %131, align 4, !tbaa !8
  %133 = fadd float %129, %132
  %134 = sext i32 %104 to i64
  %135 = getelementptr inbounds float, float* %6, i64 %134
  %136 = load float, float* %135, align 4, !tbaa !8
  %137 = fadd float %133, %136
  %138 = fmul float %122, %4
  %139 = tail call float @llvm.fmuladd.f32(float %3, float %107, float %138)
  %140 = tail call float @llvm.fmuladd.f32(float %5, float %137, float %139)
  %141 = add nsw i32 %92, %20
  %142 = tail call i32 @ToFlatHaloedIdx(i32 %141, i32 %21, i32 %28) #6
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %1, i64 %143
  store float %140, float* %144, align 4, !tbaa !8
  %145 = add nuw nsw i32 %92, 1
  %146 = icmp eq i32 %145, 16
  br i1 %146, label %90, label %91
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

declare i32 @ToGlobalRow(i32, i32, i32) local_unnamed_addr #2

declare i32 @ToGlobalCol(i32, i32, i32) local_unnamed_addr #2

declare i32 @ToFlatHaloedIdx(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int", !"float", !"float", !"float", !"float*"}
!7 = !{!"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
