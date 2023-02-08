; ModuleID = 'rodinia-3.1-particlefilter-find_index_kernel.cl'
source_filename = "rodinia-3.1-particlefilter-find_index_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @find_index_kernel(float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture readonly, float* nocapture, float* nocapture, float* nocapture readnone, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, %7
  br i1 %11, label %12, label %46

; <label>:12:                                     ; preds = %8
  %13 = icmp sgt i32 %7, 0
  %14 = shl i64 %9, 32
  %15 = ashr exact i64 %14, 32
  br i1 %13, label %16, label %31

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds float, float* %3, i64 %15
  %18 = load float, float* %17, align 4, !tbaa !8
  %19 = sext i32 %7 to i64
  br label %20

; <label>:20:                                     ; preds = %16, %25
  %21 = phi i64 [ 0, %16 ], [ %26, %25 ]
  %22 = getelementptr inbounds float, float* %2, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !8
  %24 = fcmp ult float %23, %18
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %20
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp slt i64 %26, %19
  br i1 %27, label %20, label %31

; <label>:28:                                     ; preds = %20
  %29 = trunc i64 %21 to i32
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %25, %12, %28
  %32 = add nsw i32 %7, -1
  br label %33

; <label>:33:                                     ; preds = %28, %31
  %34 = phi i32 [ %29, %28 ], [ %32, %31 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %0, i64 %35
  %37 = bitcast float* %36 to i32*
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = getelementptr inbounds float, float* %4, i64 %15
  %40 = bitcast float* %39 to i32*
  store i32 %38, i32* %40, align 4, !tbaa !8
  %41 = getelementptr inbounds float, float* %1, i64 %35
  %42 = bitcast float* %41 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !8
  %44 = getelementptr inbounds float, float* %5, i64 %15
  %45 = bitcast float* %44 to i32*
  store i32 %43, i32* %45, align 4, !tbaa !8
  br label %46

; <label>:46:                                     ; preds = %33, %8
  tail call void @_Z7barrierj(i32 2) #4
  ret void
}

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float*", !"float*", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
