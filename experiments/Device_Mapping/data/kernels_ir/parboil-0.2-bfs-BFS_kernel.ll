; ModuleID = 'BFS_kernel.cl'
source_filename = "BFS_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Node = type { i32, i32 }
%struct.Edge = type { i32, i32 }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @BFS_kernel(i32* nocapture readonly, i32* nocapture, %struct.Node* nocapture readonly, %struct.Edge* nocapture readonly, i32*, i32*, i32*, i32, i32, i32, i32*, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %14 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 0, i32* %10, align 4, !tbaa !8
  br label %17

; <label>:17:                                     ; preds = %16, %13
  tail call void @_Z7barrierj(i32 1) #5
  %18 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %7
  br i1 %20, label %21, label %64

; <label>:21:                                     ; preds = %17
  %22 = shl i64 %18, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  store i32 16677221, i32* %27, align 4, !tbaa !8
  %28 = getelementptr inbounds i32, i32* %5, i64 %26
  %29 = load i32, i32* %28, align 4, !tbaa !8
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %2, i64 %26, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.Node, %struct.Node* %2, i64 %26, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %64

; <label>:35:                                     ; preds = %21
  %36 = add nsw i32 %33, %31
  %37 = sext i32 %31 to i64
  %38 = sext i32 %36 to i64
  br label %39

; <label>:39:                                     ; preds = %35, %61
  %40 = phi i64 [ %37, %35 ], [ %62, %61 ]
  %41 = getelementptr inbounds %struct.Edge, %struct.Edge* %3, i64 %40, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.Edge, %struct.Edge* %3, i64 %40, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %29
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds i32, i32* %5, i64 %46
  %48 = tail call i32 @_Z8atom_minPU8CLglobalVii(i32* %47, i32 %45) #6
  %49 = icmp sgt i32 %48, %45
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %39
  %51 = getelementptr inbounds i32, i32* %4, i64 %46
  %52 = load i32, i32* %51, align 4, !tbaa !8
  %53 = icmp sgt i32 %52, 16677216
  br i1 %53, label %54, label %61

; <label>:54:                                     ; preds = %50
  %55 = tail call i32 @_Z9atom_xchgPU8CLglobalVii(i32* %51, i32 %8) #6
  %56 = icmp eq i32 %55, %8
  br i1 %56, label %61, label %57

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @_Z8atom_addPU7CLlocalVii(i32* %10, i32 1) #6
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %11, i64 %59
  store i32 %42, i32* %60, align 4, !tbaa !8
  br label %61

; <label>:61:                                     ; preds = %57, %54, %50, %39
  %62 = add nsw i64 %40, 1
  %63 = icmp slt i64 %62, %38
  br i1 %63, label %39, label %64

; <label>:64:                                     ; preds = %61, %21, %17
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %15, label %65, label %68

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %10, align 4, !tbaa !8
  %67 = tail call i32 @_Z8atom_addPU8CLglobalVii(i32* %6, i32 %66) #6
  store i32 %67, i32* %12, align 4, !tbaa !8
  br label %68

; <label>:68:                                     ; preds = %65, %64
  tail call void @_Z7barrierj(i32 1) #5
  %69 = trunc i64 %14 to i32
  %70 = load i32, i32* %10, align 4, !tbaa !8
  %71 = icmp sgt i32 %70, %69
  br i1 %71, label %72, label %89

; <label>:72:                                     ; preds = %68
  %73 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %74

; <label>:74:                                     ; preds = %72, %74
  %75 = phi i32 [ %69, %72 ], [ %86, %74 ]
  %76 = phi i64 [ %14, %72 ], [ %85, %74 ]
  %77 = shl i64 %76, 32
  %78 = ashr exact i64 %77, 32
  %79 = getelementptr inbounds i32, i32* %11, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !8
  %81 = load i32, i32* %12, align 4, !tbaa !8
  %82 = add nsw i32 %81, %75
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %1, i64 %83
  store i32 %80, i32* %84, align 4, !tbaa !8
  %85 = add i64 %73, %78
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %10, align 4, !tbaa !8
  %88 = icmp sgt i32 %87, %86
  br i1 %88, label %74, label %89

; <label>:89:                                     ; preds = %74, %68
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

declare i32 @_Z8atom_minPU8CLglobalVii(i32*, i32) local_unnamed_addr #3

declare i32 @_Z9atom_xchgPU8CLglobalVii(i32*, i32) local_unnamed_addr #3

declare i32 @_Z8atom_addPU7CLlocalVii(i32*, i32) local_unnamed_addr #3

declare i32 @_Z8atom_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"struct Node*", !"struct Edge*", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int*", !"int*", !"int*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
