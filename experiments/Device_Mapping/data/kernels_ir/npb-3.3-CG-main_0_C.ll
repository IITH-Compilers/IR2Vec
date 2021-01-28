; ModuleID = 'npb-CG-main_0.cl'
source_filename = "npb-CG-main_0.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @main_0(i32* nocapture, i32* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 !reqd_work_group_size !8 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %6 = lshr i64 %5, 6
  %7 = tail call i64 @_Z12get_local_idj(i32 0) #2
  %8 = trunc i64 %7 to i32
  %9 = shl i64 %6, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !9
  %13 = add i64 %9, 4294967296
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds i32, i32* %1, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !9
  %17 = add nsw i32 %12, %8
  %18 = icmp slt i32 %17, %16
  br i1 %18, label %19, label %42

; <label>:19:                                     ; preds = %4
  %20 = sext i32 %17 to i64
  %21 = sext i32 %16 to i64
  %22 = add nsw i64 %21, -1
  %23 = sub nsw i64 %22, %20
  %24 = lshr i64 %23, 6
  %25 = add nuw nsw i64 %24, 1
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28

; <label>:28:                                     ; preds = %19
  br label %29

; <label>:29:                                     ; preds = %29, %28
  %30 = phi i64 [ %20, %28 ], [ %35, %29 ]
  %31 = phi i64 [ %26, %28 ], [ %36, %29 ]
  %32 = getelementptr inbounds i32, i32* %0, i64 %30
  %33 = load i32, i32* %32, align 4, !tbaa !9
  %34 = sub nsw i32 %33, %2
  store i32 %34, i32* %32, align 4, !tbaa !9
  %35 = add nsw i64 %30, 64
  %36 = add i64 %31, -1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %29, !llvm.loop !13

; <label>:38:                                     ; preds = %29, %19
  %39 = phi i64 [ %20, %19 ], [ %35, %29 ]
  %40 = icmp ult i64 %23, 192
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %38
  br label %43

; <label>:42:                                     ; preds = %38, %43, %4
  ret void

; <label>:43:                                     ; preds = %43, %41
  %44 = phi i64 [ %39, %41 ], [ %60, %43 ]
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !9
  %47 = sub nsw i32 %46, %2
  store i32 %47, i32* %45, align 4, !tbaa !9
  %48 = add nsw i64 %44, 64
  %49 = getelementptr inbounds i32, i32* %0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !9
  %51 = sub nsw i32 %50, %2
  store i32 %51, i32* %49, align 4, !tbaa !9
  %52 = add nsw i64 %44, 128
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !9
  %55 = sub nsw i32 %54, %2
  store i32 %55, i32* %53, align 4, !tbaa !9
  %56 = add nsw i64 %44, 192
  %57 = getelementptr inbounds i32, i32* %0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !9
  %59 = sub nsw i32 %58, %2
  store i32 %59, i32* %57, align 4, !tbaa !9
  %60 = add nsw i64 %44, 256
  %61 = icmp slt i64 %60, %21
  br i1 %61, label %43, label %42
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"int", !"int"}
!7 = !{!"", !"", !"", !""}
!8 = !{i32 64, i32 1, i32 1}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
