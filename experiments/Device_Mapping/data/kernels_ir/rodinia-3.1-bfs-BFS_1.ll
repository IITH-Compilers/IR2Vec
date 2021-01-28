; ModuleID = 'rodinia-3.1-bfs-BFS_1.cl'
source_filename = "rodinia-3.1-bfs-BFS_1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Node = type { i32, i32 }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @BFS_1(%struct.Node* nocapture readonly, i32* nocapture readonly, i8* nocapture, i8* nocapture, i8* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %11, label %50

; <label>:11:                                     ; preds = %7
  %12 = shl i64 %8, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, i8* %2, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %50, label %17

; <label>:17:                                     ; preds = %11
  store i8 0, i8* %14, align 1, !tbaa !8
  %18 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 %13, i32 0
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %0, i64 %13, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !11
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %50

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %18, align 4, !tbaa !14
  %24 = getelementptr inbounds i32, i32* %5, i64 %13
  %25 = sext i32 %23 to i64
  br label %26

; <label>:26:                                     ; preds = %22, %43
  %27 = phi i32 [ %23, %22 ], [ %44, %43 ]
  %28 = phi i32 [ %20, %22 ], [ %45, %43 ]
  %29 = phi i64 [ %25, %22 ], [ %46, %43 ]
  %30 = getelementptr inbounds i32, i32* %1, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %4, i64 %32
  %34 = load i8, i8* %33, align 1, !tbaa !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %43

; <label>:36:                                     ; preds = %26
  %37 = load i32, i32* %24, align 4, !tbaa !15
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds i32, i32* %5, i64 %32
  store i32 %38, i32* %39, align 4, !tbaa !15
  %40 = getelementptr inbounds i8, i8* %3, i64 %32
  store i8 1, i8* %40, align 1, !tbaa !8
  %41 = load i32, i32* %19, align 4, !tbaa !11
  %42 = load i32, i32* %18, align 4, !tbaa !14
  br label %43

; <label>:43:                                     ; preds = %26, %36
  %44 = phi i32 [ %27, %26 ], [ %42, %36 ]
  %45 = phi i32 [ %28, %26 ], [ %41, %36 ]
  %46 = add i64 %29, 1
  %47 = add nsw i32 %44, %45
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %26, label %50

; <label>:50:                                     ; preds = %43, %17, %11, %7
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"Node*", !"int*", !"char*", !"char*", !"char*", !"int*", !"int"}
!7 = !{!"const", !"const", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 4}
!12 = !{!"", !13, i64 0, !13, i64 4}
!13 = !{!"int", !9, i64 0}
!14 = !{!12, !13, i64 0}
!15 = !{!13, !13, i64 0}
