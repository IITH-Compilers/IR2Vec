; ModuleID = 'rodinia-3.1-lud-lud_internal.cl'
source_filename = "rodinia-3.1-lud-lud_internal.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @lud_internal(float* nocapture, float* nocapture, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %9, 6
  %15 = shl i32 %7, 6
  %16 = add i32 %4, 64
  %17 = add i32 %16, %15
  %18 = add nsw i32 %13, %4
  %19 = mul nsw i32 %18, %3
  %20 = add i32 %17, %11
  %21 = add i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %0, i64 %22
  %24 = bitcast float* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !8
  %26 = shl nsw i32 %13, 6
  %27 = add nsw i32 %26, %11
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %1, i64 %28
  %30 = bitcast float* %29 to i32*
  store i32 %25, i32* %30, align 4, !tbaa !8
  %31 = add i32 %16, %14
  %32 = add i32 %31, %13
  %33 = mul nsw i32 %32, %3
  %34 = add i32 %11, %4
  %35 = add i32 %34, %33
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %0, i64 %36
  %38 = bitcast float* %37 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !8
  %40 = getelementptr inbounds float, float* %2, i64 %28
  %41 = bitcast float* %40 to i32*
  store i32 %39, i32* %41, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %42 = sext i32 %26 to i64
  %43 = shl i64 %10, 32
  %44 = ashr exact i64 %43, 32
  br label %45

; <label>:45:                                     ; preds = %45, %5
  %46 = phi i64 [ 0, %5 ], [ %65, %45 ]
  %47 = phi float [ 0.000000e+00, %5 ], [ %64, %45 ]
  %48 = add nuw nsw i64 %46, %42
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !8
  %51 = shl i64 %46, 6
  %52 = add nsw i64 %51, %44
  %53 = getelementptr inbounds float, float* %1, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = tail call float @llvm.fmuladd.f32(float %50, float %54, float %47)
  %56 = or i64 %46, 1
  %57 = add nuw nsw i64 %56, %42
  %58 = getelementptr inbounds float, float* %2, i64 %57
  %59 = load float, float* %58, align 4, !tbaa !8
  %60 = shl i64 %56, 6
  %61 = add nsw i64 %60, %44
  %62 = getelementptr inbounds float, float* %1, i64 %61
  %63 = load float, float* %62, align 4, !tbaa !8
  %64 = tail call float @llvm.fmuladd.f32(float %59, float %63, float %55)
  %65 = add nsw i64 %46, 2
  %66 = icmp eq i64 %65, 64
  br i1 %66, label %67, label %45

; <label>:67:                                     ; preds = %45
  %68 = add i32 %20, %33
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %0, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !8
  %72 = fsub float %71, %64
  store float %72, float* %70, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 3, i32 3, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
