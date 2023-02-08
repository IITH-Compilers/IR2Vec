; ModuleID = 'rodinia-3.1-backprop-bpnn_layerforward_ocl.cl'
source_filename = "rodinia-3.1-backprop-bpnn_layerforward_ocl.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @bpnn_layerforward_ocl(float* nocapture readonly, float* nocapture readnone, float* nocapture, float* nocapture, float* nocapture, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z12get_group_idj(i32 1) #3
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z12get_local_idj(i32 1) #3
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %7, 1
  %16 = shl i32 %10, 4
  %17 = add i32 %16, %14
  %18 = mul i32 %17, %15
  %19 = add i32 %7, 2
  %20 = add i32 %19, %12
  %21 = add i32 %20, %18
  %22 = icmp eq i32 %12, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %8
  %24 = shl i64 %13, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds float, float* %4, i64 %25
  br label %38

; <label>:27:                                     ; preds = %8
  %28 = or i32 %16, 1
  %29 = add i32 %28, %14
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %0, i64 %30
  %32 = bitcast float* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = shl i64 %13, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds float, float* %4, i64 %35
  %37 = bitcast float* %36 to i32*
  store i32 %33, i32* %37, align 4, !tbaa !8
  br label %38

; <label>:38:                                     ; preds = %23, %27
  %39 = phi float* [ %26, %23 ], [ %36, %27 ]
  tail call void @_Z7barrierj(i32 1) #4
  %40 = sext i32 %21 to i64
  %41 = getelementptr inbounds float, float* %2, i64 %40
  %42 = bitcast float* %41 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !8
  %44 = shl i32 %14, 4
  %45 = add nsw i32 %44, %12
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %5, i64 %46
  %48 = bitcast float* %47 to i32*
  store i32 %43, i32* %48, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %49 = load float, float* %47, align 4, !tbaa !8
  %50 = load float, float* %39, align 4, !tbaa !8
  %51 = fmul float %49, %50
  store float %51, float* %47, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %52 = load float, float* %47, align 4, !tbaa !8
  %53 = fadd float %52, %52
  store float %53, float* %47, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %54 = and i32 %14, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %77

; <label>:56:                                     ; preds = %113
  %57 = shl i64 %13, 32
  %58 = ashr exact i64 %57, 32
  %59 = getelementptr inbounds float, float* %5, i64 %58
  %60 = bitcast float* %59 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !8
  %62 = mul nsw i32 %10, %7
  %63 = add nsw i32 %62, %14
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %3, i64 %64
  %66 = bitcast float* %65 to i32*
  store i32 %61, i32* %66, align 4, !tbaa !8
  br label %67

; <label>:67:                                     ; preds = %56, %113
  ret void

; <label>:68:                                     ; preds = %38
  %69 = load float, float* %47, align 4, !tbaa !8
  %70 = shl i32 %14, 4
  %71 = add i32 %70, 16
  %72 = add nsw i32 %71, %12
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %5, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !8
  %76 = fadd float %69, %75
  store float %76, float* %47, align 4, !tbaa !8
  br label %77

; <label>:77:                                     ; preds = %68, %38
  tail call void @_Z7barrierj(i32 1) #4
  %78 = and i32 %14, 3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

; <label>:80:                                     ; preds = %77
  %81 = load float, float* %47, align 4, !tbaa !8
  %82 = shl i32 %14, 4
  %83 = add i32 %82, 32
  %84 = add nsw i32 %83, %12
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %5, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !8
  %88 = fadd float %81, %87
  store float %88, float* %47, align 4, !tbaa !8
  br label %89

; <label>:89:                                     ; preds = %80, %77
  tail call void @_Z7barrierj(i32 1) #4
  %90 = and i32 %14, 7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

; <label>:92:                                     ; preds = %89
  %93 = load float, float* %47, align 4, !tbaa !8
  %94 = shl i32 %14, 4
  %95 = add i32 %94, 64
  %96 = add nsw i32 %95, %12
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %5, i64 %97
  %99 = load float, float* %98, align 4, !tbaa !8
  %100 = fadd float %93, %99
  store float %100, float* %47, align 4, !tbaa !8
  br label %101

; <label>:101:                                    ; preds = %92, %89
  tail call void @_Z7barrierj(i32 1) #4
  %102 = and i32 %14, 15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %113

; <label>:104:                                    ; preds = %101
  %105 = load float, float* %47, align 4, !tbaa !8
  %106 = shl i32 %14, 4
  %107 = add i32 %106, 128
  %108 = add nsw i32 %107, %12
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %5, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !8
  %112 = fadd float %105, %111
  store float %112, float* %47, align 4, !tbaa !8
  br label %113

; <label>:113:                                    ; preds = %104, %101
  tail call void @_Z7barrierj(i32 1) #4
  %114 = load i32, i32* %48, align 4, !tbaa !8
  store i32 %114, i32* %42, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %22, label %56, label %67
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
