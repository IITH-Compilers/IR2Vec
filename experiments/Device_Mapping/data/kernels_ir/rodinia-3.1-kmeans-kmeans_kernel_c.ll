; ModuleID = 'rodinia-3.1-kmeans-kmeans_kernel_c.cl'
source_filename = "rodinia-3.1-kmeans-kmeans_kernel_c.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kmeans_kernel_c(float* nocapture readonly, float* nocapture readonly, i32* nocapture, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = icmp ult i32 %10, %3
  br i1 %11, label %12, label %86

; <label>:12:                                     ; preds = %8
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %12
  %15 = icmp sgt i32 %5, 0
  %16 = sext i32 %3 to i64
  %17 = sext i32 %5 to i64
  %18 = zext i32 %5 to i64
  %19 = zext i32 %4 to i64
  %20 = and i64 %18, 1
  %21 = icmp eq i32 %5, 1
  %22 = sub nsw i64 %18, %20
  %23 = icmp eq i64 %20, 0
  br label %28

; <label>:24:                                     ; preds = %50, %12
  %25 = phi i32 [ 0, %12 ], [ %54, %50 ]
  %26 = and i64 %9, 4294967295
  %27 = getelementptr inbounds i32, i32* %2, i64 %26
  store i32 %25, i32* %27, align 4, !tbaa !8
  br label %86

; <label>:28:                                     ; preds = %50, %14
  %29 = phi i64 [ 0, %14 ], [ %56, %50 ]
  %30 = phi float [ 0x47EFFFFFE0000000, %14 ], [ %55, %50 ]
  %31 = phi i32 [ 0, %14 ], [ %54, %50 ]
  br i1 %15, label %32, label %50

; <label>:32:                                     ; preds = %28
  %33 = mul nsw i64 %29, %17
  br i1 %21, label %35, label %34

; <label>:34:                                     ; preds = %32
  br label %58

; <label>:35:                                     ; preds = %58, %32
  %36 = phi float [ undef, %32 ], [ %82, %58 ]
  %37 = phi i64 [ 0, %32 ], [ %83, %58 ]
  %38 = phi float [ 0.000000e+00, %32 ], [ %82, %58 ]
  br i1 %23, label %50, label %39

; <label>:39:                                     ; preds = %35
  %40 = mul nsw i64 %37, %16
  %41 = add i64 %40, %9
  %42 = and i64 %41, 4294967295
  %43 = getelementptr inbounds float, float* %0, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !12
  %45 = add nsw i64 %37, %33
  %46 = getelementptr inbounds float, float* %1, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !12
  %48 = fsub float %44, %47
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %38)
  br label %50

; <label>:50:                                     ; preds = %39, %35, %28
  %51 = phi float [ 0.000000e+00, %28 ], [ %36, %35 ], [ %49, %39 ]
  %52 = fcmp olt float %51, %30
  %53 = trunc i64 %29 to i32
  %54 = select i1 %52, i32 %53, i32 %31
  %55 = select i1 %52, float %51, float %30
  %56 = add nuw nsw i64 %29, 1
  %57 = icmp eq i64 %56, %19
  br i1 %57, label %24, label %28

; <label>:58:                                     ; preds = %58, %34
  %59 = phi i64 [ 0, %34 ], [ %83, %58 ]
  %60 = phi float [ 0.000000e+00, %34 ], [ %82, %58 ]
  %61 = phi i64 [ %22, %34 ], [ %84, %58 ]
  %62 = mul nsw i64 %59, %16
  %63 = add i64 %62, %9
  %64 = and i64 %63, 4294967295
  %65 = getelementptr inbounds float, float* %0, i64 %64
  %66 = load float, float* %65, align 4, !tbaa !12
  %67 = add nsw i64 %59, %33
  %68 = getelementptr inbounds float, float* %1, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !12
  %70 = fsub float %66, %69
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %70, float %60)
  %72 = or i64 %59, 1
  %73 = mul nsw i64 %72, %16
  %74 = add i64 %73, %9
  %75 = and i64 %74, 4294967295
  %76 = getelementptr inbounds float, float* %0, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !12
  %78 = add nsw i64 %72, %33
  %79 = getelementptr inbounds float, float* %1, i64 %78
  %80 = load float, float* %79, align 4, !tbaa !12
  %81 = fsub float %77, %80
  %82 = tail call float @llvm.fmuladd.f32(float %81, float %81, float %71)
  %83 = add nsw i64 %59, 2
  %84 = add i64 %61, -2
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %35, label %58

; <label>:86:                                     ; preds = %24, %8
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int*", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
