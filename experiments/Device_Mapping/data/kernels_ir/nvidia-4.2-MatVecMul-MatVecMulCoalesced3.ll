; ModuleID = 'nvidia-4.2-MatVecMul-MatVecMulCoalesced3.cl'
source_filename = "nvidia-4.2-MatVecMul-MatVecMulCoalesced3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MatVecMulCoalesced3(float* nocapture readonly, float* nocapture readonly, i32, i32, float* nocapture, float*) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %46

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = icmp ult i32 %12, %2
  %14 = getelementptr inbounds float, float* %5, i64 %11
  %15 = and i32 %12, 31
  %16 = shl i64 %11, 1
  %17 = getelementptr inbounds float, float* %5, i64 %16
  %18 = zext i32 %15 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds float, float* %17, i64 %19
  %21 = getelementptr inbounds float, float* %20, i64 32
  %22 = getelementptr inbounds float, float* %20, i64 16
  %23 = getelementptr inbounds float, float* %20, i64 8
  %24 = getelementptr inbounds float, float* %20, i64 4
  %25 = getelementptr inbounds float, float* %20, i64 2
  %26 = getelementptr inbounds float, float* %20, i64 1
  %27 = icmp eq i32 %15, 0
  %28 = lshr i64 %11, 5
  %29 = getelementptr inbounds float, float* %5, i64 %28
  %30 = getelementptr inbounds float, float* %14, i64 4
  %31 = getelementptr inbounds float, float* %14, i64 2
  %32 = getelementptr inbounds float, float* %14, i64 1
  %33 = icmp eq i64 %11, 0
  %34 = bitcast float* %5 to i32*
  %35 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %36 = lshr i64 %35, 1
  %37 = icmp ult i64 %11, %36
  %38 = lshr i64 %35, 6
  %39 = trunc i64 %38 to i32
  %40 = lshr i64 %35, 7
  %41 = and i64 %40, 2147483647
  %42 = icmp ult i64 %11, %41
  %43 = icmp ugt i32 %39, 7
  %44 = icmp ugt i32 %39, 3
  %45 = icmp ugt i32 %39, 1
  br label %47

; <label>:46:                                     ; preds = %115, %6
  ret void

; <label>:47:                                     ; preds = %10, %115
  %48 = phi i32 [ %8, %10 ], [ %119, %115 ]
  %49 = phi i64 [ %7, %10 ], [ %118, %115 ]
  %50 = mul i32 %48, %2
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %0, i64 %51
  br i1 %13, label %53, label %54

; <label>:53:                                     ; preds = %47
  br label %56

; <label>:54:                                     ; preds = %56, %47
  %55 = phi float [ 0.000000e+00, %47 ], [ %64, %56 ]
  store float %55, float* %14, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %37, label %68, label %88

; <label>:56:                                     ; preds = %53, %56
  %57 = phi float [ %64, %56 ], [ 0.000000e+00, %53 ]
  %58 = phi i64 [ %65, %56 ], [ %11, %53 ]
  %59 = and i64 %58, 4294967295
  %60 = getelementptr inbounds float, float* %52, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !8
  %62 = getelementptr inbounds float, float* %1, i64 %59
  %63 = load float, float* %62, align 4, !tbaa !8
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %63, float %57)
  %65 = add i64 %35, %59
  %66 = trunc i64 %65 to i32
  %67 = icmp ult i32 %66, %2
  br i1 %67, label %56, label %54

; <label>:68:                                     ; preds = %54
  %69 = load volatile float, float* %21, align 4, !tbaa !8
  %70 = load volatile float, float* %20, align 4, !tbaa !8
  %71 = fadd float %69, %70
  store volatile float %71, float* %20, align 4, !tbaa !8
  %72 = load volatile float, float* %22, align 4, !tbaa !8
  %73 = load volatile float, float* %20, align 4, !tbaa !8
  %74 = fadd float %72, %73
  store volatile float %74, float* %20, align 4, !tbaa !8
  %75 = load volatile float, float* %23, align 4, !tbaa !8
  %76 = load volatile float, float* %20, align 4, !tbaa !8
  %77 = fadd float %75, %76
  store volatile float %77, float* %20, align 4, !tbaa !8
  %78 = load volatile float, float* %24, align 4, !tbaa !8
  %79 = load volatile float, float* %20, align 4, !tbaa !8
  %80 = fadd float %78, %79
  store volatile float %80, float* %20, align 4, !tbaa !8
  %81 = load volatile float, float* %25, align 4, !tbaa !8
  %82 = load volatile float, float* %20, align 4, !tbaa !8
  %83 = fadd float %81, %82
  store volatile float %83, float* %20, align 4, !tbaa !8
  %84 = load volatile float, float* %26, align 4, !tbaa !8
  %85 = load volatile float, float* %20, align 4, !tbaa !8
  %86 = fadd float %84, %85
  store volatile float %86, float* %20, align 4, !tbaa !8
  %87 = load volatile float, float* %20, align 4, !tbaa !8
  br label %88

; <label>:88:                                     ; preds = %68, %54
  %89 = phi float [ %87, %68 ], [ 0.000000e+00, %54 ]
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %27, label %90, label %91

; <label>:90:                                     ; preds = %88
  store float %89, float* %29, align 4, !tbaa !8
  br label %91

; <label>:91:                                     ; preds = %90, %88
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %42, label %92, label %107

; <label>:92:                                     ; preds = %91
  br i1 %43, label %93, label %97

; <label>:93:                                     ; preds = %92
  %94 = load volatile float, float* %30, align 4, !tbaa !8
  %95 = load volatile float, float* %14, align 4, !tbaa !8
  %96 = fadd float %94, %95
  store volatile float %96, float* %14, align 4, !tbaa !8
  br label %98

; <label>:97:                                     ; preds = %92
  br i1 %44, label %98, label %102

; <label>:98:                                     ; preds = %97, %93
  %99 = load volatile float, float* %31, align 4, !tbaa !8
  %100 = load volatile float, float* %14, align 4, !tbaa !8
  %101 = fadd float %99, %100
  store volatile float %101, float* %14, align 4, !tbaa !8
  br label %103

; <label>:102:                                    ; preds = %97
  br i1 %45, label %103, label %107

; <label>:103:                                    ; preds = %98, %102
  %104 = load volatile float, float* %32, align 4, !tbaa !8
  %105 = load volatile float, float* %14, align 4, !tbaa !8
  %106 = fadd float %104, %105
  store volatile float %106, float* %14, align 4, !tbaa !8
  br label %107

; <label>:107:                                    ; preds = %102, %103, %91
  br i1 %33, label %110, label %108

; <label>:108:                                    ; preds = %107
  %109 = and i64 %49, 4294967295
  br label %115

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %34, align 4, !tbaa !8
  %112 = and i64 %49, 4294967295
  %113 = getelementptr inbounds float, float* %4, i64 %112
  %114 = bitcast float* %113 to i32*
  store i32 %111, i32* %114, align 4, !tbaa !8
  br label %115

; <label>:115:                                    ; preds = %108, %110
  %116 = phi i64 [ %109, %108 ], [ %112, %110 ]
  tail call void @_Z7barrierj(i32 1) #5
  %117 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %118 = add i64 %117, %116
  %119 = trunc i64 %118 to i32
  %120 = icmp ult i32 %119, %3
  br i1 %120, label %47, label %46
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 1, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"uint", !"uint", !"float*", !"float*"}
!7 = !{!"const", !"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
