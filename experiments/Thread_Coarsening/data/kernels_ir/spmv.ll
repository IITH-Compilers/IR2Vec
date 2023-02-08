; ModuleID = 'parboil-0.2-spmv-A.cl'
source_filename = "parboil-0.2-spmv-A.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @spmv_jds_naive(float* nocapture, float* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly, float* nocapture readonly, i32, i32* nocapture readonly, i32* nocapture readonly) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, %5
  br i1 %11, label %12, label %82

; <label>:12:                                     ; preds = %8
  %13 = sdiv i32 %10, 32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %7, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %42

; <label>:18:                                     ; preds = %12
  %19 = zext i32 %16 to i64
  %20 = and i64 %19, 1
  %21 = icmp eq i32 %16, 1
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = sub nsw i64 %19, %20
  br label %50

; <label>:24:                                     ; preds = %50, %18
  %25 = phi float [ undef, %18 ], [ %78, %50 ]
  %26 = phi i64 [ 0, %18 ], [ %79, %50 ]
  %27 = phi float [ 0.000000e+00, %18 ], [ %78, %50 ]
  %28 = icmp eq i64 %20, 0
  br i1 %28, label %42, label %29

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds i32, i32* %6, i64 %26
  %31 = load i32, i32* %30, align 4, !tbaa !8
  %32 = add nsw i32 %31, %10
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %1, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !12
  %36 = getelementptr inbounds i32, i32* %2, i64 %33
  %37 = load i32, i32* %36, align 4, !tbaa !8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %4, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !12
  %41 = tail call float @llvm.fmuladd.f32(float %35, float %40, float %27)
  br label %42

; <label>:42:                                     ; preds = %29, %24, %12
  %43 = phi float [ 0.000000e+00, %12 ], [ %25, %24 ], [ %41, %29 ]
  %44 = shl i64 %9, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds i32, i32* %3, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %0, i64 %48
  store float %43, float* %49, align 4, !tbaa !12
  br label %82

; <label>:50:                                     ; preds = %50, %22
  %51 = phi i64 [ 0, %22 ], [ %79, %50 ]
  %52 = phi float [ 0.000000e+00, %22 ], [ %78, %50 ]
  %53 = phi i64 [ %23, %22 ], [ %80, %50 ]
  %54 = getelementptr inbounds i32, i32* %6, i64 %51
  %55 = load i32, i32* %54, align 4, !tbaa !8
  %56 = add nsw i32 %55, %10
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %2, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !8
  %60 = getelementptr inbounds float, float* %1, i64 %57
  %61 = load float, float* %60, align 4, !tbaa !12
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds float, float* %4, i64 %62
  %64 = load float, float* %63, align 4, !tbaa !12
  %65 = tail call float @llvm.fmuladd.f32(float %61, float %64, float %52)
  %66 = or i64 %51, 1
  %67 = getelementptr inbounds i32, i32* %6, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !8
  %69 = add nsw i32 %68, %10
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %2, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !8
  %73 = getelementptr inbounds float, float* %1, i64 %70
  %74 = load float, float* %73, align 4, !tbaa !12
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds float, float* %4, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !12
  %78 = tail call float @llvm.fmuladd.f32(float %74, float %77, float %65)
  %79 = add nsw i64 %51, 2
  %80 = add i64 %53, -2
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %24, label %50

; <label>:82:                                     ; preds = %42, %8
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2, i32 2}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int*", !"int*", !"float*", !"int", !"int*", !"int*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"const", !"const"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
