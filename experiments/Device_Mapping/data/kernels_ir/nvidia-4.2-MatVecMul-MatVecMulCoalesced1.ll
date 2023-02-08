; ModuleID = 'nvidia-4.2-MatVecMul-MatVecMulCoalesced1.cl'
source_filename = "nvidia-4.2-MatVecMul-MatVecMulCoalesced1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MatVecMulCoalesced1(float* nocapture readonly, float* nocapture readonly, i32, i32, float* nocapture, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %19

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = icmp ult i32 %12, %2
  %14 = getelementptr inbounds float, float* %5, i64 %11
  %15 = icmp eq i64 %11, 0
  %16 = bitcast float* %5 to i32*
  %17 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %18 = icmp ugt i64 %17, 1
  br label %20

; <label>:19:                                     ; preds = %68, %6
  ret void

; <label>:20:                                     ; preds = %10, %68
  %21 = phi i32 [ %8, %10 ], [ %72, %68 ]
  %22 = phi i64 [ %7, %10 ], [ %71, %68 ]
  %23 = mul i32 %21, %2
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %0, i64 %24
  br i1 %13, label %26, label %27

; <label>:26:                                     ; preds = %20
  br label %30

; <label>:27:                                     ; preds = %30, %20
  %28 = phi float [ 0.000000e+00, %20 ], [ %38, %30 ]
  store float %28, float* %14, align 4, !tbaa !8
  br i1 %18, label %29, label %42

; <label>:29:                                     ; preds = %27
  br label %45

; <label>:30:                                     ; preds = %26, %30
  %31 = phi i64 [ %39, %30 ], [ %11, %26 ]
  %32 = phi float [ %38, %30 ], [ 0.000000e+00, %26 ]
  %33 = and i64 %31, 4294967295
  %34 = getelementptr inbounds float, float* %25, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !8
  %36 = getelementptr inbounds float, float* %1, i64 %33
  %37 = load float, float* %36, align 4, !tbaa !8
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %32)
  %39 = add i64 %17, %33
  %40 = trunc i64 %39 to i32
  %41 = icmp ult i32 %40, %2
  br i1 %41, label %30, label %27

; <label>:42:                                     ; preds = %61, %27
  br i1 %15, label %63, label %43

; <label>:43:                                     ; preds = %42
  %44 = and i64 %22, 4294967295
  br label %68

; <label>:45:                                     ; preds = %29, %61
  %46 = phi i32 [ %47, %61 ], [ 1, %29 ]
  tail call void @_Z7barrierj(i32 1) #5
  %47 = shl i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = mul i64 %11, %48
  %50 = and i64 %49, 4294967294
  %51 = icmp ult i64 %50, %17
  br i1 %51, label %52, label %61

; <label>:52:                                     ; preds = %45
  %53 = trunc i64 %49 to i32
  %54 = add i32 %46, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %5, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !8
  %58 = getelementptr inbounds float, float* %5, i64 %50
  %59 = load float, float* %58, align 4, !tbaa !8
  %60 = fadd float %57, %59
  store float %60, float* %58, align 4, !tbaa !8
  br label %61

; <label>:61:                                     ; preds = %52, %45
  %62 = icmp ugt i64 %17, %48
  br i1 %62, label %45, label %42

; <label>:63:                                     ; preds = %42
  %64 = load i32, i32* %16, align 4, !tbaa !8
  %65 = and i64 %22, 4294967295
  %66 = getelementptr inbounds float, float* %4, i64 %65
  %67 = bitcast float* %66 to i32*
  store i32 %64, i32* %67, align 4, !tbaa !8
  br label %68

; <label>:68:                                     ; preds = %43, %63
  %69 = phi i64 [ %44, %43 ], [ %65, %63 ]
  tail call void @_Z7barrierj(i32 1) #5
  %70 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %71 = add i64 %70, %69
  %72 = trunc i64 %71 to i32
  %73 = icmp ult i32 %72, %3
  br i1 %73, label %20, label %19
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
