; ModuleID = 'npb-CG-makea_2.cl'
source_filename = "npb-CG-makea_2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_2(i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %6, %8
  %10 = icmp sgt i32 %6, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %99

; <label>:12:                                     ; preds = %4
  %13 = and i64 %5, 4294967295
  %14 = add nsw i64 %13, -1
  %15 = and i64 %5, 7
  %16 = icmp ult i64 %14, 7
  br i1 %16, label %57, label %17

; <label>:17:                                     ; preds = %12
  %18 = sub nsw i64 %13, %15
  br label %19

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %54, %19 ]
  %21 = phi i32 [ 0, %17 ], [ %53, %19 ]
  %22 = phi i64 [ %18, %17 ], [ %55, %19 ]
  %23 = getelementptr inbounds i32, i32* %1, i64 %20
  %24 = load i32, i32* %23, align 4, !tbaa !8
  %25 = add nsw i32 %24, %21
  %26 = or i64 %20, 1
  %27 = getelementptr inbounds i32, i32* %1, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !8
  %29 = add nsw i32 %28, %25
  %30 = or i64 %20, 2
  %31 = getelementptr inbounds i32, i32* %1, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !8
  %33 = add nsw i32 %32, %29
  %34 = or i64 %20, 3
  %35 = getelementptr inbounds i32, i32* %1, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !8
  %37 = add nsw i32 %36, %33
  %38 = or i64 %20, 4
  %39 = getelementptr inbounds i32, i32* %1, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !8
  %41 = add nsw i32 %40, %37
  %42 = or i64 %20, 5
  %43 = getelementptr inbounds i32, i32* %1, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !8
  %45 = add nsw i32 %44, %41
  %46 = or i64 %20, 6
  %47 = getelementptr inbounds i32, i32* %1, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !8
  %49 = add nsw i32 %48, %45
  %50 = or i64 %20, 7
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !8
  %53 = add nsw i32 %52, %49
  %54 = add nsw i64 %20, 8
  %55 = add i64 %22, -8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %19

; <label>:57:                                     ; preds = %19, %12
  %58 = phi i32 [ undef, %12 ], [ %53, %19 ]
  %59 = phi i64 [ 0, %12 ], [ %54, %19 ]
  %60 = phi i32 [ 0, %12 ], [ %53, %19 ]
  %61 = icmp eq i64 %15, 0
  br i1 %61, label %73, label %62

; <label>:62:                                     ; preds = %57
  br label %63

; <label>:63:                                     ; preds = %63, %62
  %64 = phi i64 [ %59, %62 ], [ %70, %63 ]
  %65 = phi i32 [ %60, %62 ], [ %69, %63 ]
  %66 = phi i64 [ %15, %62 ], [ %71, %63 ]
  %67 = getelementptr inbounds i32, i32* %1, i64 %64
  %68 = load i32, i32* %67, align 4, !tbaa !8
  %69 = add nsw i32 %68, %65
  %70 = add nuw nsw i64 %64, 1
  %71 = add i64 %66, -1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %63, !llvm.loop !12

; <label>:73:                                     ; preds = %63, %57
  %74 = phi i32 [ %58, %57 ], [ %69, %63 ]
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %99

; <label>:76:                                     ; preds = %73
  %77 = icmp eq i32 %6, 0
  %78 = shl i64 %5, 32
  %79 = ashr exact i64 %78, 32
  br i1 %77, label %84, label %80

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds i32, i32* %2, i64 %79
  %82 = load i32, i32* %81, align 4, !tbaa !8
  %83 = add nsw i32 %82, 1
  br label %84

; <label>:84:                                     ; preds = %76, %80
  %85 = phi i32 [ %83, %80 ], [ 0, %76 ]
  %86 = getelementptr inbounds i32, i32* %3, i64 %79
  %87 = load i32, i32* %86, align 4, !tbaa !8
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %99, label %89

; <label>:89:                                     ; preds = %84
  %90 = sext i32 %85 to i64
  %91 = sext i32 %87 to i64
  br label %92

; <label>:92:                                     ; preds = %92, %89
  %93 = phi i64 [ %97, %92 ], [ %90, %89 ]
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !8
  %96 = add nsw i32 %95, %74
  store i32 %96, i32* %94, align 4, !tbaa !8
  %97 = add nsw i64 %93, 1
  %98 = icmp slt i64 %93, %91
  br i1 %98, label %92, label %99

; <label>:99:                                     ; preds = %92, %84, %4, %73
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"int*", !"int*"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
