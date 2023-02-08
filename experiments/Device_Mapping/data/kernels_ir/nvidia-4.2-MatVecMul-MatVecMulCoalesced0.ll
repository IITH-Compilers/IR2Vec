; ModuleID = 'nvidia-4.2-MatVecMul-MatVecMulCoalesced0.cl'
source_filename = "nvidia-4.2-MatVecMul-MatVecMulCoalesced0.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MatVecMulCoalesced0(float* nocapture readonly, float* nocapture readonly, i32, i32, float* nocapture, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %6
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = icmp ult i32 %12, %2
  %14 = getelementptr inbounds float, float* %5, i64 %11
  %15 = icmp eq i64 %11, 0
  br label %17

; <label>:16:                                     ; preds = %59, %6
  ret void

; <label>:17:                                     ; preds = %10, %59
  %18 = phi i32 [ %8, %10 ], [ %63, %59 ]
  %19 = phi i64 [ %7, %10 ], [ %62, %59 ]
  %20 = mul i32 %18, %2
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %0, i64 %21
  br i1 %13, label %23, label %25

; <label>:23:                                     ; preds = %17
  %24 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %29

; <label>:25:                                     ; preds = %29, %17
  %26 = phi float [ 0.000000e+00, %17 ], [ %37, %29 ]
  store float %26, float* %14, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %15, label %41, label %27

; <label>:27:                                     ; preds = %25
  %28 = and i64 %19, 4294967295
  br label %59

; <label>:29:                                     ; preds = %23, %29
  %30 = phi i64 [ %11, %23 ], [ %38, %29 ]
  %31 = phi float [ 0.000000e+00, %23 ], [ %37, %29 ]
  %32 = and i64 %30, 4294967295
  %33 = getelementptr inbounds float, float* %22, i64 %32
  %34 = load float, float* %33, align 4, !tbaa !8
  %35 = getelementptr inbounds float, float* %1, i64 %32
  %36 = load float, float* %35, align 4, !tbaa !8
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %36, float %31)
  %38 = add i64 %24, %32
  %39 = trunc i64 %38 to i32
  %40 = icmp ult i32 %39, %2
  br i1 %40, label %29, label %25

; <label>:41:                                     ; preds = %25
  %42 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %45, label %44

; <label>:44:                                     ; preds = %41
  br label %49

; <label>:45:                                     ; preds = %49, %41
  %46 = phi float [ 0.000000e+00, %41 ], [ %55, %49 ]
  %47 = and i64 %19, 4294967295
  %48 = getelementptr inbounds float, float* %4, i64 %47
  store float %46, float* %48, align 4, !tbaa !8
  br label %59

; <label>:49:                                     ; preds = %44, %49
  %50 = phi i64 [ %57, %49 ], [ 0, %44 ]
  %51 = phi i32 [ %56, %49 ], [ 0, %44 ]
  %52 = phi float [ %55, %49 ], [ 0.000000e+00, %44 ]
  %53 = getelementptr inbounds float, float* %5, i64 %50
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = fadd float %52, %54
  %56 = add i32 %51, 1
  %57 = zext i32 %56 to i64
  %58 = icmp ugt i64 %42, %57
  br i1 %58, label %49, label %45

; <label>:59:                                     ; preds = %27, %45
  %60 = phi i64 [ %28, %27 ], [ %47, %45 ]
  tail call void @_Z7barrierj(i32 1) #5
  %61 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %62 = add i64 %61, %60
  %63 = trunc i64 %62 to i32
  %64 = icmp ult i32 %63, %3
  br i1 %64, label %17, label %16
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
