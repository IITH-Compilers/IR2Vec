; ModuleID = 'PrefixSum_Kernels.cl'
source_filename = "PrefixSum_Kernels.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @group_prefixSum(float* nocapture, float* nocapture readonly, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %11 = trunc i64 %10 to i32
  %12 = mul nsw i32 %11, %9
  %13 = add nsw i32 %12, %7
  %14 = shl nsw i32 %13, 1
  %15 = or i32 %14, 1
  %16 = mul i32 %15, %4
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, %3
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %5
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds float, float* %1, i64 %20
  %22 = bitcast float* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !8
  %24 = shl nsw i32 %7, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %2, i64 %25
  %27 = bitcast float* %26 to i32*
  store i32 %23, i32* %27, align 4, !tbaa !8
  br label %28

; <label>:28:                                     ; preds = %19, %5
  %29 = add i32 %17, %4
  %30 = icmp ult i32 %29, %3
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds float, float* %1, i64 %32
  %34 = bitcast float* %33 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = shl nsw i32 %7, 1
  %37 = or i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %2, i64 %38
  %40 = bitcast float* %39 to i32*
  store i32 %35, i32* %40, align 4, !tbaa !8
  br label %41

; <label>:41:                                     ; preds = %31, %28
  %42 = lshr i32 %3, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %41
  %45 = shl nsw i32 %7, 1
  %46 = or i32 %45, 1
  %47 = add nsw i32 %45, 2
  br label %51

; <label>:48:                                     ; preds = %67, %41
  %49 = phi i32 [ 1, %41 ], [ %68, %67 ]
  %50 = icmp ugt i32 %3, 2
  br i1 %50, label %71, label %100

; <label>:51:                                     ; preds = %44, %67
  %52 = phi i32 [ %42, %44 ], [ %69, %67 ]
  %53 = phi i32 [ 1, %44 ], [ %68, %67 ]
  tail call void @_Z7barrierj(i32 1) #4
  %54 = icmp sgt i32 %52, %7
  br i1 %54, label %55, label %67

; <label>:55:                                     ; preds = %51
  %56 = mul nsw i32 %53, %46
  %57 = add nsw i32 %56, -1
  %58 = mul nsw i32 %53, %47
  %59 = add nsw i32 %58, -1
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds float, float* %2, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !8
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds float, float* %2, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !8
  %66 = fadd float %62, %65
  store float %66, float* %64, align 4, !tbaa !8
  br label %67

; <label>:67:                                     ; preds = %55, %51
  %68 = shl i32 %53, 1
  %69 = lshr i32 %52, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %48, label %51

; <label>:71:                                     ; preds = %48
  %72 = icmp ult i32 %49, %3
  %73 = zext i1 %72 to i32
  %74 = shl i32 %49, %73
  %75 = ashr i32 %74, 1
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %100

; <label>:77:                                     ; preds = %71
  %78 = add nsw i32 %7, 1
  br label %79

; <label>:79:                                     ; preds = %77, %97
  %80 = phi i32 [ %74, %77 ], [ %83, %97 ]
  %81 = phi i32 [ 0, %77 ], [ %98, %97 ]
  %82 = or i32 %81, 1
  %83 = ashr i32 %80, 1
  tail call void @_Z7barrierj(i32 1) #4
  %84 = icmp sgt i32 %82, %7
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %79
  %86 = mul nsw i32 %83, %78
  %87 = add nsw i32 %86, -1
  %88 = ashr i32 %80, 2
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %87 to i64
  %91 = getelementptr inbounds float, float* %2, i64 %90
  %92 = load float, float* %91, align 4, !tbaa !8
  %93 = sext i32 %89 to i64
  %94 = getelementptr inbounds float, float* %2, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !8
  %96 = fadd float %92, %95
  store float %96, float* %94, align 4, !tbaa !8
  br label %97

; <label>:97:                                     ; preds = %79, %85
  %98 = shl i32 %82, 1
  %99 = icmp slt i32 %98, %75
  br i1 %99, label %79, label %100

; <label>:100:                                    ; preds = %97, %71, %48
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %18, label %101, label %110

; <label>:101:                                    ; preds = %100
  %102 = shl nsw i32 %7, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %2, i64 %103
  %105 = bitcast float* %104 to i32*
  %106 = load i32, i32* %105, align 4, !tbaa !8
  %107 = sext i32 %17 to i64
  %108 = getelementptr inbounds float, float* %0, i64 %107
  %109 = bitcast float* %108 to i32*
  store i32 %106, i32* %109, align 4, !tbaa !8
  br label %110

; <label>:110:                                    ; preds = %101, %100
  br i1 %30, label %111, label %121

; <label>:111:                                    ; preds = %110
  %112 = shl nsw i32 %7, 1
  %113 = or i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = bitcast float* %115 to i32*
  %117 = load i32, i32* %116, align 4, !tbaa !8
  %118 = zext i32 %29 to i64
  %119 = getelementptr inbounds float, float* %0, i64 %118
  %120 = bitcast float* %119 to i32*
  store i32 %117, i32* %120, align 4, !tbaa !8
  br label %121

; <label>:121:                                    ; preds = %111, %110
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 3, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"uint", !"uint"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
