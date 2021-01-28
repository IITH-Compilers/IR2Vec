; ModuleID = 'rodinia-3.1-backprop-bpnn_adjust_weights_ocl.cl'
source_filename = "rodinia-3.1-backprop-bpnn_adjust_weights_ocl.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @bpnn_adjust_weights_ocl(float* nocapture readonly, i32, float* nocapture readonly, i32, float* nocapture, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 %1, 1
  %14 = shl i32 %8, 4
  %15 = add i32 %14, %12
  %16 = mul i32 %15, %13
  %17 = add i32 %1, 2
  %18 = add i32 %17, %10
  %19 = add i32 %18, %16
  %20 = or i32 %14, 1
  %21 = add i32 %20, %12
  %22 = shl i64 %9, 32
  %23 = add i64 %22, 4294967296
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds float, float* %0, i64 %24
  %26 = load float, float* %25, align 4, !tbaa !8
  %27 = fmul float %26, 0x3FD3333340000000
  %28 = sext i32 %21 to i64
  %29 = getelementptr inbounds float, float* %2, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !8
  %31 = sext i32 %19 to i64
  %32 = getelementptr inbounds float, float* %5, i64 %31
  %33 = load float, float* %32, align 4, !tbaa !8
  %34 = fmul float %33, 0x3FD3333340000000
  %35 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %34)
  %36 = getelementptr inbounds float, float* %4, i64 %31
  %37 = load float, float* %36, align 4, !tbaa !8
  %38 = fadd float %37, %35
  store float %38, float* %36, align 4, !tbaa !8
  %39 = load float, float* %25, align 4, !tbaa !8
  %40 = fmul float %39, 0x3FD3333340000000
  %41 = load float, float* %29, align 4, !tbaa !8
  %42 = load float, float* %32, align 4, !tbaa !8
  %43 = fmul float %42, 0x3FD3333340000000
  %44 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %43)
  store float %44, float* %32, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %45 = or i64 %11, %7
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

; <label>:48:                                     ; preds = %6
  %49 = load float, float* %25, align 4, !tbaa !8
  %50 = getelementptr inbounds float, float* %5, i64 %24
  %51 = load float, float* %50, align 4, !tbaa !8
  %52 = fmul float %51, 0x3FD3333340000000
  %53 = tail call float @llvm.fmuladd.f32(float %49, float 0x3FD3333340000000, float %52)
  %54 = getelementptr inbounds float, float* %4, i64 %24
  %55 = load float, float* %54, align 4, !tbaa !8
  %56 = fadd float %55, %53
  store float %56, float* %54, align 4, !tbaa !8
  %57 = load float, float* %25, align 4, !tbaa !8
  %58 = load float, float* %50, align 4, !tbaa !8
  %59 = fmul float %58, 0x3FD3333340000000
  %60 = tail call float @llvm.fmuladd.f32(float %57, float 0x3FD3333340000000, float %59)
  store float %60, float* %50, align 4, !tbaa !8
  br label %61

; <label>:61:                                     ; preds = %48, %6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

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
!4 = !{i32 1, i32 0, i32 1, i32 0, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"int", !"float*", !"int", !"float*", !"float*"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
