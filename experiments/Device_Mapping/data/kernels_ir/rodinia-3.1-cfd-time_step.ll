; ModuleID = 'rodinia-3.1-cfd-time_step.cl'
source_filename = "rodinia-3.1-cfd-time_step.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @memset_kernel(i8* nocapture, i16 signext, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %5 = trunc i64 %4 to i32
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %3
  %8 = trunc i16 %1 to i8
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  store i8 %8, i8* %11, align 1, !tbaa !8
  br label %12

; <label>:12:                                     ; preds = %3, %7
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @time_step(i32, i32, float* nocapture readonly, float* nocapture, float* nocapture readonly, float* nocapture readonly) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !14 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %59

; <label>:10:                                     ; preds = %6
  %11 = shl i64 %7, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds float, float* %4, i64 %12
  %14 = load float, float* %13, align 4, !tbaa !15
  %15 = sub nsw i32 4, %0
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %14, %16, !fpmath !17
  %18 = getelementptr inbounds float, float* %2, i64 %12
  %19 = load float, float* %18, align 4, !tbaa !15
  %20 = getelementptr inbounds float, float* %5, i64 %12
  %21 = load float, float* %20, align 4, !tbaa !15
  %22 = tail call float @llvm.fmuladd.f32(float %17, float %21, float %19)
  %23 = getelementptr inbounds float, float* %3, i64 %12
  store float %22, float* %23, align 4, !tbaa !15
  %24 = shl i32 %1, 2
  %25 = add nsw i32 %24, %8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !15
  %29 = getelementptr inbounds float, float* %5, i64 %26
  %30 = load float, float* %29, align 4, !tbaa !15
  %31 = tail call float @llvm.fmuladd.f32(float %17, float %30, float %28)
  %32 = getelementptr inbounds float, float* %3, i64 %26
  store float %31, float* %32, align 4, !tbaa !15
  %33 = add nsw i32 %8, %1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %2, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !15
  %37 = getelementptr inbounds float, float* %5, i64 %34
  %38 = load float, float* %37, align 4, !tbaa !15
  %39 = tail call float @llvm.fmuladd.f32(float %17, float %38, float %36)
  %40 = getelementptr inbounds float, float* %3, i64 %34
  store float %39, float* %40, align 4, !tbaa !15
  %41 = shl i32 %1, 1
  %42 = add nsw i32 %41, %8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %2, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !15
  %46 = getelementptr inbounds float, float* %5, i64 %43
  %47 = load float, float* %46, align 4, !tbaa !15
  %48 = tail call float @llvm.fmuladd.f32(float %17, float %47, float %45)
  %49 = getelementptr inbounds float, float* %3, i64 %43
  store float %48, float* %49, align 4, !tbaa !15
  %50 = mul nsw i32 %1, 3
  %51 = add nsw i32 %50, %8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %2, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !15
  %55 = getelementptr inbounds float, float* %5, i64 %52
  %56 = load float, float* %55, align 4, !tbaa !15
  %57 = tail call float @llvm.fmuladd.f32(float %17, float %56, float %54)
  %58 = getelementptr inbounds float, float* %3, i64 %52
  store float %57, float* %58, align 4, !tbaa !15
  br label %59

; <label>:59:                                     ; preds = %6, %10
  ret void
}

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
!4 = !{i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"char*", !"short", !"int"}
!7 = !{!"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!12 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!13 = !{!"int", !"int", !"float*", !"float*", !"float*", !"float*"}
!14 = !{!"", !"", !"", !"", !"", !""}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !9, i64 0}
!17 = !{float 2.500000e+00}
