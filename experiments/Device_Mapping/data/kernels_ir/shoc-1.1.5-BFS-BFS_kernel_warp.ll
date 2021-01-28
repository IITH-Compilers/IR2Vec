; ModuleID = 'shoc-1.1.5-BFS-BFS_kernel_warp.cl'
source_filename = "shoc-1.1.5-BFS-BFS_kernel_warp.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @BFS_kernel_warp(i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32, i32, i32, i32, i32* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = srem i32 %10, %3
  %12 = sdiv i32 %10, %3
  %13 = mul nsw i32 %12, %4
  %14 = add nsw i32 %4, 1
  %15 = add nsw i32 %13, %4
  %16 = icmp ult i32 %15, %5
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %8
  %18 = sub i32 %5, %13
  %19 = add i32 %18, 1
  %20 = icmp sgt i32 %19, 0
  %21 = select i1 %20, i32 %19, i32 0
  br label %22

; <label>:22:                                     ; preds = %8, %17
  %23 = phi i32 [ %21, %17 ], [ %14, %8 ]
  %24 = add i32 %13, -1
  %25 = add i32 %24, %23
  %26 = icmp slt i32 %13, %25
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %22
  %28 = add nsw i32 %6, 1
  %29 = sext i32 %13 to i64
  %30 = sext i32 %25 to i64
  br label %32

; <label>:31:                                     ; preds = %60, %22
  ret void

; <label>:32:                                     ; preds = %60, %27
  %33 = phi i64 [ %29, %27 ], [ %37, %60 ]
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = icmp eq i32 %35, %6
  %37 = add nsw i64 %33, 1
  br i1 %36, label %38, label %60

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i32, i32* %1, i64 %37
  %40 = load i32, i32* %39, align 4, !tbaa !8
  %41 = getelementptr inbounds i32, i32* %1, i64 %33
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = sub i32 %40, %42
  %44 = icmp ult i32 %11, %43
  br i1 %44, label %45, label %60

; <label>:45:                                     ; preds = %38
  br label %46

; <label>:46:                                     ; preds = %45, %57
  %47 = phi i32 [ %58, %57 ], [ %11, %45 ]
  %48 = add i32 %47, %42
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %2, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %46
  store i32 %28, i32* %53, align 4, !tbaa !8
  store i32 1, i32* %7, align 4, !tbaa !8
  br label %57

; <label>:57:                                     ; preds = %56, %46
  %58 = add nsw i32 %47, %3
  %59 = icmp ult i32 %58, %43
  br i1 %59, label %46, label %60

; <label>:60:                                     ; preds = %57, %32, %38
  %61 = icmp eq i64 %37, %30
  br i1 %61, label %31, label %32
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"uint*", !"uint*", !"uint*", !"int", !"int", !"uint", !"int", !"int*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
