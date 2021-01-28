; ModuleID = 'nvidia-4.2-MatVecMul-MatVecMulUncoalesced1.cl'
source_filename = "nvidia-4.2-MatVecMul-MatVecMulUncoalesced1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MatVecMulUncoalesced1(float* nocapture readonly, float* nocapture readonly, i32, i32, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = icmp ult i32 %7, %3
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %5
  %10 = icmp eq i32 %2, 0
  %11 = tail call i64 @_Z15get_global_sizej(i32 0) #3
  %12 = zext i32 %2 to i64
  %13 = add nsw i64 %12, -1
  %14 = and i64 %12, 3
  %15 = icmp ult i64 %13, 3
  %16 = sub nsw i64 %12, %14
  %17 = icmp eq i64 %14, 0
  br label %19

; <label>:18:                                     ; preds = %44, %5
  ret void

; <label>:19:                                     ; preds = %9, %44
  %20 = phi i32 [ %7, %9 ], [ %49, %44 ]
  %21 = phi i64 [ %6, %9 ], [ %48, %44 ]
  %22 = mul i32 %20, %2
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %0, i64 %23
  br i1 %10, label %44, label %25

; <label>:25:                                     ; preds = %19
  br i1 %15, label %27, label %26

; <label>:26:                                     ; preds = %25
  br label %51

; <label>:27:                                     ; preds = %51, %25
  %28 = phi float [ undef, %25 ], [ %77, %51 ]
  %29 = phi i64 [ 0, %25 ], [ %78, %51 ]
  %30 = phi float [ 0.000000e+00, %25 ], [ %77, %51 ]
  br i1 %17, label %44, label %31

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %32, %31
  %33 = phi i64 [ %41, %32 ], [ %29, %31 ]
  %34 = phi float [ %40, %32 ], [ %30, %31 ]
  %35 = phi i64 [ %42, %32 ], [ %14, %31 ]
  %36 = getelementptr inbounds float, float* %24, i64 %33
  %37 = load float, float* %36, align 4, !tbaa !8
  %38 = getelementptr inbounds float, float* %1, i64 %33
  %39 = load float, float* %38, align 4, !tbaa !8
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %34)
  %41 = add nuw nsw i64 %33, 1
  %42 = add i64 %35, -1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %32, !llvm.loop !12

; <label>:44:                                     ; preds = %27, %32, %19
  %45 = phi float [ 0.000000e+00, %19 ], [ %28, %27 ], [ %40, %32 ]
  %46 = and i64 %21, 4294967295
  %47 = getelementptr inbounds float, float* %4, i64 %46
  store float %45, float* %47, align 4, !tbaa !8
  %48 = add i64 %11, %46
  %49 = trunc i64 %48 to i32
  %50 = icmp ult i32 %49, %3
  br i1 %50, label %19, label %18

; <label>:51:                                     ; preds = %51, %26
  %52 = phi i64 [ 0, %26 ], [ %78, %51 ]
  %53 = phi float [ 0.000000e+00, %26 ], [ %77, %51 ]
  %54 = phi i64 [ %16, %26 ], [ %79, %51 ]
  %55 = getelementptr inbounds float, float* %24, i64 %52
  %56 = load float, float* %55, align 4, !tbaa !8
  %57 = getelementptr inbounds float, float* %1, i64 %52
  %58 = load float, float* %57, align 4, !tbaa !8
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %53)
  %60 = or i64 %52, 1
  %61 = getelementptr inbounds float, float* %24, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !8
  %63 = getelementptr inbounds float, float* %1, i64 %60
  %64 = load float, float* %63, align 4, !tbaa !8
  %65 = tail call float @llvm.fmuladd.f32(float %62, float %64, float %59)
  %66 = or i64 %52, 2
  %67 = getelementptr inbounds float, float* %24, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !8
  %69 = getelementptr inbounds float, float* %1, i64 %66
  %70 = load float, float* %69, align 4, !tbaa !8
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %70, float %65)
  %72 = or i64 %52, 3
  %73 = getelementptr inbounds float, float* %24, i64 %72
  %74 = load float, float* %73, align 4, !tbaa !8
  %75 = getelementptr inbounds float, float* %1, i64 %72
  %76 = load float, float* %75, align 4, !tbaa !8
  %77 = tail call float @llvm.fmuladd.f32(float %74, float %76, float %71)
  %78 = add nsw i64 %52, 4
  %79 = add i64 %54, -4
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %27, label %51
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind readnone
declare i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"uint", !"uint", !"float*"}
!7 = !{!"const", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
