; ModuleID = 'sgemm.cl'
source_filename = "sgemm.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @mysgemmNT(float* nocapture readonly, i32, float* nocapture readonly, i32, float* nocapture, i32, i32, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %42

; <label>:15:                                     ; preds = %9
  %16 = sext i32 %3 to i64
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = sext i32 %1 to i64
  %20 = shl i64 %10, 32
  %21 = ashr exact i64 %20, 32
  %22 = zext i32 %6 to i64
  %23 = and i64 %22, 1
  %24 = icmp eq i32 %6, 1
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %15
  %26 = sub nsw i64 %22, %23
  br label %51

; <label>:27:                                     ; preds = %51, %15
  %28 = phi float [ undef, %15 ], [ %73, %51 ]
  %29 = phi i64 [ 0, %15 ], [ %74, %51 ]
  %30 = phi float [ 0.000000e+00, %15 ], [ %73, %51 ]
  %31 = icmp eq i64 %23, 0
  br i1 %31, label %42, label %32

; <label>:32:                                     ; preds = %27
  %33 = mul nsw i64 %29, %19
  %34 = add nsw i64 %33, %21
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !8
  %37 = mul nsw i64 %29, %16
  %38 = add nsw i64 %37, %18
  %39 = getelementptr inbounds float, float* %2, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !8
  %41 = tail call float @llvm.fmuladd.f32(float %36, float %40, float %30)
  br label %42

; <label>:42:                                     ; preds = %32, %27, %9
  %43 = phi float [ 0.000000e+00, %9 ], [ %28, %27 ], [ %41, %32 ]
  %44 = mul nsw i32 %13, %5
  %45 = add nsw i32 %44, %11
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %4, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !8
  %49 = fmul float %43, %7
  %50 = tail call float @llvm.fmuladd.f32(float %8, float %48, float %49)
  store float %50, float* %47, align 4, !tbaa !8
  ret void

; <label>:51:                                     ; preds = %51, %25
  %52 = phi i64 [ 0, %25 ], [ %74, %51 ]
  %53 = phi float [ 0.000000e+00, %25 ], [ %73, %51 ]
  %54 = phi i64 [ %26, %25 ], [ %75, %51 ]
  %55 = mul nsw i64 %52, %19
  %56 = add nsw i64 %55, %21
  %57 = getelementptr inbounds float, float* %0, i64 %56
  %58 = load float, float* %57, align 4, !tbaa !8
  %59 = mul nsw i64 %52, %16
  %60 = add nsw i64 %59, %18
  %61 = getelementptr inbounds float, float* %2, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !8
  %63 = tail call float @llvm.fmuladd.f32(float %58, float %62, float %53)
  %64 = or i64 %52, 1
  %65 = mul nsw i64 %64, %19
  %66 = add nsw i64 %65, %21
  %67 = getelementptr inbounds float, float* %0, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !8
  %69 = mul nsw i64 %64, %16
  %70 = add nsw i64 %69, %18
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !8
  %73 = tail call float @llvm.fmuladd.f32(float %68, float %72, float %63)
  %74 = add nsw i64 %52, 2
  %75 = add i64 %54, -2
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %27, label %51
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
!4 = !{i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"int", !"float*", !"int", !"float*", !"int", !"int", !"float", !"float"}
!7 = !{!"const", !"", !"const", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
