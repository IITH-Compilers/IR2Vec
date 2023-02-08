; ModuleID = 'nvidia-4.2-MatVecMul-MatVecMulCoalesced2.cl'
source_filename = "nvidia-4.2-MatVecMul-MatVecMulCoalesced2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MatVecMulCoalesced2(float* nocapture readonly, float* nocapture readonly, i32, i32, float* nocapture, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = icmp ult i32 %12, %2
  %14 = getelementptr inbounds float, float* %5, i64 %11
  %15 = icmp eq i64 %11, 0
  %16 = bitcast float* %5 to i32*
  %17 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %18 = lshr i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br label %22

; <label>:21:                                     ; preds = %65, %6
  ret void

; <label>:22:                                     ; preds = %10, %65
  %23 = phi i32 [ %8, %10 ], [ %69, %65 ]
  %24 = phi i64 [ %7, %10 ], [ %68, %65 ]
  %25 = mul i32 %23, %2
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %0, i64 %26
  br i1 %13, label %28, label %29

; <label>:28:                                     ; preds = %22
  br label %32

; <label>:29:                                     ; preds = %32, %22
  %30 = phi float [ 0.000000e+00, %22 ], [ %40, %32 ]
  store float %30, float* %14, align 4, !tbaa !8
  br i1 %20, label %44, label %31

; <label>:31:                                     ; preds = %29
  br label %47

; <label>:32:                                     ; preds = %28, %32
  %33 = phi i64 [ %41, %32 ], [ %11, %28 ]
  %34 = phi float [ %40, %32 ], [ 0.000000e+00, %28 ]
  %35 = and i64 %33, 4294967295
  %36 = getelementptr inbounds float, float* %27, i64 %35
  %37 = load float, float* %36, align 4, !tbaa !8
  %38 = getelementptr inbounds float, float* %1, i64 %35
  %39 = load float, float* %38, align 4, !tbaa !8
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %34)
  %41 = add i64 %17, %35
  %42 = trunc i64 %41 to i32
  %43 = icmp ult i32 %42, %2
  br i1 %43, label %32, label %29

; <label>:44:                                     ; preds = %57, %29
  br i1 %15, label %60, label %45

; <label>:45:                                     ; preds = %44
  %46 = and i64 %24, 4294967295
  br label %65

; <label>:47:                                     ; preds = %31, %57
  %48 = phi i32 [ %58, %57 ], [ %19, %31 ]
  tail call void @_Z7barrierj(i32 1) #5
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %11, %49
  br i1 %50, label %51, label %57

; <label>:51:                                     ; preds = %47
  %52 = add i64 %11, %49
  %53 = getelementptr inbounds float, float* %5, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = load float, float* %14, align 4, !tbaa !8
  %56 = fadd float %54, %55
  store float %56, float* %14, align 4, !tbaa !8
  br label %57

; <label>:57:                                     ; preds = %47, %51
  %58 = lshr i32 %48, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %44, label %47

; <label>:60:                                     ; preds = %44
  %61 = load i32, i32* %16, align 4, !tbaa !8
  %62 = and i64 %24, 4294967295
  %63 = getelementptr inbounds float, float* %4, i64 %62
  %64 = bitcast float* %63 to i32*
  store i32 %61, i32* %64, align 4, !tbaa !8
  br label %65

; <label>:65:                                     ; preds = %45, %60
  %66 = phi i64 [ %46, %45 ], [ %62, %60 ]
  tail call void @_Z7barrierj(i32 1) #5
  %67 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %68 = add i64 %67, %66
  %69 = trunc i64 %68 to i32
  %70 = icmp ult i32 %69, %3
  br i1 %70, label %22, label %21
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
