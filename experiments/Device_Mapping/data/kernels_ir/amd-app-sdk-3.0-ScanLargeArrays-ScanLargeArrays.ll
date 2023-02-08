; ModuleID = 'ScanLargeArrays-ScanLargeArrays.cl'
source_filename = "ScanLargeArrays-ScanLargeArrays.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ScanLargeArrays(float* nocapture, float* nocapture readonly, float* nocapture, i32, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %11 = shl nsw i32 %9, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, float* %1, i64 %12
  %14 = bitcast float* %13 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !8
  %16 = shl nsw i32 %7, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %2, i64 %17
  %19 = bitcast float* %18 to i32*
  store i32 %15, i32* %19, align 4, !tbaa !8
  %20 = or i32 %11, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %1, i64 %21
  %23 = bitcast float* %22 to i32*
  %24 = load i32, i32* %23, align 4, !tbaa !8
  %25 = or i32 %16, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = bitcast float* %27 to i32*
  store i32 %24, i32* %28, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %29 = load float, float* %2, align 4, !tbaa !8
  %30 = icmp ugt i32 %3, 1
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %5
  %32 = getelementptr inbounds float, float* %2, i64 1
  %33 = load float, float* %32, align 4, !tbaa !8
  %34 = fadd float %29, %33
  br label %46

; <label>:35:                                     ; preds = %64, %5
  %36 = add i32 %3, -1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = bitcast float* %38 to i32*
  %40 = load i32, i32* %39, align 4, !tbaa !8
  %41 = shl i64 %10, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds float, float* %4, i64 %42
  %44 = bitcast float* %43 to i32*
  store i32 %40, i32* %44, align 4, !tbaa !8
  %45 = icmp eq i32 %7, 0
  br i1 %45, label %69, label %71

; <label>:46:                                     ; preds = %31, %64
  %47 = phi i32 [ 1, %31 ], [ %67, %64 ]
  %48 = phi float [ %34, %31 ], [ %66, %64 ]
  %49 = phi float [ %29, %31 ], [ %65, %64 ]
  %50 = icmp slt i32 %16, %47
  br i1 %50, label %64, label %51

; <label>:51:                                     ; preds = %46
  %52 = sub nsw i32 %16, %47
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %2, i64 %53
  %55 = load float, float* %54, align 4, !tbaa !8
  %56 = load float, float* %18, align 4, !tbaa !8
  %57 = fadd float %55, %56
  %58 = sub nsw i32 %25, %47
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %2, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !8
  %62 = load float, float* %27, align 4, !tbaa !8
  %63 = fadd float %61, %62
  br label %64

; <label>:64:                                     ; preds = %46, %51
  %65 = phi float [ %57, %51 ], [ %49, %46 ]
  %66 = phi float [ %63, %51 ], [ %48, %46 ]
  tail call void @_Z7barrierj(i32 1) #4
  store float %65, float* %18, align 4, !tbaa !8
  store float %66, float* %27, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %67 = shl nsw i32 %47, 1
  %68 = icmp ult i32 %67, %3
  br i1 %68, label %46, label %35

; <label>:69:                                     ; preds = %35
  %70 = getelementptr inbounds float, float* %0, i64 %12
  store float 0.000000e+00, float* %70, align 4, !tbaa !8
  br label %79

; <label>:71:                                     ; preds = %35
  %72 = add nsw i32 %16, -1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %2, i64 %73
  %75 = bitcast float* %74 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !8
  %77 = getelementptr inbounds float, float* %0, i64 %12
  %78 = bitcast float* %77 to i32*
  store i32 %76, i32* %78, align 4, !tbaa !8
  br label %79

; <label>:79:                                     ; preds = %71, %69
  %80 = load i32, i32* %19, align 4, !tbaa !8
  %81 = getelementptr inbounds float, float* %0, i64 %21
  %82 = bitcast float* %81 to i32*
  store i32 %80, i32* %82, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 3, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"uint", !"float*"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
