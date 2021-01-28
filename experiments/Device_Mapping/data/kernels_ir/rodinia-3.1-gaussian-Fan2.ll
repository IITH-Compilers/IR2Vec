; ModuleID = 'rodinia-3.1-gaussian-Fan2.cl'
source_filename = "rodinia-3.1-gaussian-Fan2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @Fan2(float* nocapture readonly, float* nocapture, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %3, -1
  %11 = sub i32 %10, %4
  %12 = icmp sgt i32 %11, %7
  %13 = sub nsw i32 %3, %4
  %14 = icmp sgt i32 %13, %9
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %48

; <label>:16:                                     ; preds = %5
  %17 = add i32 %4, 1
  %18 = add i32 %17, %7
  %19 = mul nsw i32 %18, %3
  %20 = add nsw i32 %19, %4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %0, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !8
  %24 = mul nsw i32 %4, %3
  %25 = add nsw i32 %9, %4
  %26 = add nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %1, i64 %27
  %29 = load float, float* %28, align 4, !tbaa !8
  %30 = add nsw i32 %19, %25
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %1, i64 %31
  %33 = load float, float* %32, align 4, !tbaa !8
  %34 = fsub float -0.000000e+00, %23
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %29, float %33)
  store float %35, float* %32, align 4, !tbaa !8
  %36 = icmp eq i32 %9, 0
  br i1 %36, label %37, label %48

; <label>:37:                                     ; preds = %16
  %38 = getelementptr inbounds float, float* %0, i64 %31
  %39 = load float, float* %38, align 4, !tbaa !8
  %40 = sext i32 %4 to i64
  %41 = getelementptr inbounds float, float* %2, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !8
  %43 = sext i32 %18 to i64
  %44 = getelementptr inbounds float, float* %2, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !8
  %46 = fsub float -0.000000e+00, %39
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %42, float %45)
  store float %47, float* %44, align 4, !tbaa !8
  br label %48

; <label>:48:                                     ; preds = %16, %37, %5
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
