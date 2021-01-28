; ModuleID = 'ScanLargeArrays-prefixSum.cl'
source_filename = "ScanLargeArrays-prefixSum.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @prefixSum(float* nocapture, float* nocapture readonly, float* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = shl nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, float* %1, i64 %10
  %12 = bitcast float* %11 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !8
  %14 = shl nsw i32 %6, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %2, i64 %15
  %17 = bitcast float* %16 to i32*
  store i32 %13, i32* %17, align 4, !tbaa !8
  %18 = or i32 %9, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %1, i64 %19
  %21 = bitcast float* %20 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !8
  %23 = or i32 %14, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %2, i64 %24
  %26 = bitcast float* %25 to i32*
  store i32 %22, i32* %26, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %27 = load float, float* %2, align 4, !tbaa !8
  %28 = icmp ugt i32 %3, 1
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %4
  %30 = getelementptr inbounds float, float* %2, i64 1
  %31 = load float, float* %30, align 4, !tbaa !8
  %32 = fadd float %27, %31
  br label %35

; <label>:33:                                     ; preds = %53, %4
  %34 = icmp eq i32 %6, 0
  br i1 %34, label %58, label %60

; <label>:35:                                     ; preds = %29, %53
  %36 = phi i32 [ 1, %29 ], [ %56, %53 ]
  %37 = phi float [ %32, %29 ], [ %55, %53 ]
  %38 = phi float [ %27, %29 ], [ %54, %53 ]
  %39 = icmp slt i32 %14, %36
  br i1 %39, label %53, label %40

; <label>:40:                                     ; preds = %35
  %41 = sub nsw i32 %14, %36
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %2, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !8
  %45 = load float, float* %16, align 4, !tbaa !8
  %46 = fadd float %44, %45
  %47 = sub nsw i32 %23, %36
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = load float, float* %49, align 4, !tbaa !8
  %51 = load float, float* %25, align 4, !tbaa !8
  %52 = fadd float %50, %51
  br label %53

; <label>:53:                                     ; preds = %35, %40
  %54 = phi float [ %46, %40 ], [ %38, %35 ]
  %55 = phi float [ %52, %40 ], [ %37, %35 ]
  tail call void @_Z7barrierj(i32 1) #4
  store float %54, float* %16, align 4, !tbaa !8
  store float %55, float* %25, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %56 = shl nsw i32 %36, 1
  %57 = icmp ult i32 %56, %3
  br i1 %57, label %35, label %33

; <label>:58:                                     ; preds = %33
  %59 = getelementptr inbounds float, float* %0, i64 %10
  store float 0.000000e+00, float* %59, align 4, !tbaa !8
  br label %68

; <label>:60:                                     ; preds = %33
  %61 = add nsw i32 %14, -1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %2, i64 %62
  %64 = bitcast float* %63 to i32*
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = getelementptr inbounds float, float* %0, i64 %10
  %67 = bitcast float* %66 to i32*
  store i32 %65, i32* %67, align 4, !tbaa !8
  br label %68

; <label>:68:                                     ; preds = %60, %58
  %69 = load i32, i32* %17, align 4, !tbaa !8
  %70 = getelementptr inbounds float, float* %0, i64 %19
  %71 = bitcast float* %70 to i32*
  store i32 %69, i32* %71, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 3, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"uint"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
