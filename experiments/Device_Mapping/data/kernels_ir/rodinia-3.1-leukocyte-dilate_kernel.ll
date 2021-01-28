; ModuleID = 'rodinia-3.1-leukocyte-dilate_kernel.cl'
source_filename = "rodinia-3.1-leukocyte-dilate_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @dilate_kernel(i32, i32, i32, i32, float* nocapture readonly, float* nocapture readonly, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = sdiv i32 %2, 2
  %9 = sdiv i32 %3, 2
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %11 = trunc i64 %10 to i32
  %12 = srem i32 %11, %0
  %13 = sdiv i32 %11, %0
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %71

; <label>:15:                                     ; preds = %7
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %65

; <label>:17:                                     ; preds = %15
  %18 = sub nsw i32 %12, %8
  %19 = icmp slt i32 %3, 1
  %20 = sub nsw i32 %13, %9
  %21 = sext i32 %20 to i64
  %22 = sext i32 %1 to i64
  %23 = sext i32 %0 to i64
  %24 = sext i32 %3 to i64
  %25 = sext i32 %18 to i64
  %26 = zext i32 %2 to i64
  %27 = zext i32 %3 to i64
  br label %28

; <label>:28:                                     ; preds = %61, %17
  %29 = phi i64 [ 0, %17 ], [ %63, %61 ]
  %30 = phi float [ 0.000000e+00, %17 ], [ %62, %61 ]
  %31 = add nsw i64 %29, %25
  %32 = icmp slt i64 %31, 0
  %33 = icmp sge i64 %31, %23
  %34 = or i1 %33, %32
  %35 = or i1 %34, %19
  br i1 %35, label %61, label %36

; <label>:36:                                     ; preds = %28
  %37 = mul nsw i64 %29, %24
  br label %38

; <label>:38:                                     ; preds = %57, %36
  %39 = phi i64 [ 0, %36 ], [ %59, %57 ]
  %40 = phi float [ %30, %36 ], [ %58, %57 ]
  %41 = add nsw i64 %39, %21
  %42 = icmp sgt i64 %41, -1
  %43 = icmp slt i64 %41, %22
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %57

; <label>:45:                                     ; preds = %38
  %46 = add nsw i64 %39, %37
  %47 = getelementptr inbounds float, float* %4, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !8
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %45
  %51 = mul nsw i64 %41, %23
  %52 = add nsw i64 %51, %31
  %53 = getelementptr inbounds float, float* %5, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !8
  %55 = fcmp ogt float %54, %40
  %56 = select i1 %55, float %54, float %40
  br label %57

; <label>:57:                                     ; preds = %50, %38, %45
  %58 = phi float [ %40, %45 ], [ %40, %38 ], [ %56, %50 ]
  %59 = add nuw nsw i64 %39, 1
  %60 = icmp eq i64 %59, %27
  br i1 %60, label %61, label %38

; <label>:61:                                     ; preds = %57, %28
  %62 = phi float [ %30, %28 ], [ %58, %57 ]
  %63 = add nuw nsw i64 %29, 1
  %64 = icmp eq i64 %63, %26
  br i1 %64, label %65, label %28

; <label>:65:                                     ; preds = %61, %15
  %66 = phi float [ 0.000000e+00, %15 ], [ %62, %61 ]
  %67 = mul nsw i32 %12, %1
  %68 = add nsw i32 %67, %13
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %6, i64 %69
  store float %66, float* %70, align 4, !tbaa !8
  br label %71

; <label>:71:                                     ; preds = %7, %65
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"int", !"int", !"int", !"float*", !"float*", !"float*"}
!7 = !{!"", !"", !"", !"", !"const", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
