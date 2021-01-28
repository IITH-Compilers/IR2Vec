; ModuleID = 'npb-CG-makea_1.cl'
source_filename = "npb-CG-makea_1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_1(i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = bitcast i32* %2 to [9 x i32]*
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %12 = trunc i64 %11 to i32
  %13 = shl i64 %9, 32
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds i32, i32* %4, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !8
  %17 = icmp slt i32 %16, %6
  br i1 %17, label %18, label %113

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds i32, i32* %5, i64 %14
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = add nsw i32 %16, 1
  %22 = icmp sgt i32 %6, 0
  br i1 %22, label %23, label %54

; <label>:23:                                     ; preds = %18
  %24 = zext i32 %6 to i64
  br label %25

; <label>:25:                                     ; preds = %51, %23
  %26 = phi i64 [ 0, %23 ], [ %52, %51 ]
  %27 = getelementptr inbounds i32, i32* %1, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !8
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %51

; <label>:30:                                     ; preds = %25
  br label %31

; <label>:31:                                     ; preds = %30, %46
  %32 = phi i64 [ %48, %46 ], [ 0, %30 ]
  %33 = phi i32 [ %47, %46 ], [ %28, %30 ]
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 %26, i64 %32
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = icmp sge i32 %35, %16
  %37 = icmp slt i32 %35, %20
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %31
  %40 = add nsw i32 %35, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !8
  %44 = add nsw i32 %43, %33
  store i32 %44, i32* %42, align 4, !tbaa !8
  %45 = load i32, i32* %27, align 4, !tbaa !8
  br label %46

; <label>:46:                                     ; preds = %31, %39
  %47 = phi i32 [ %33, %31 ], [ %45, %39 ]
  %48 = add nuw nsw i64 %32, 1
  %49 = sext i32 %47 to i64
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %31, label %51

; <label>:51:                                     ; preds = %46, %25
  %52 = add nuw nsw i64 %26, 1
  %53 = icmp eq i64 %52, %24
  br i1 %53, label %54, label %25

; <label>:54:                                     ; preds = %51, %18
  %55 = icmp eq i32 %10, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %54
  store i32 0, i32* %0, align 4, !tbaa !8
  br label %57

; <label>:57:                                     ; preds = %56, %54
  %58 = phi i32 [ 0, %56 ], [ %21, %54 ]
  %59 = icmp slt i32 %58, %20
  br i1 %59, label %60, label %106

; <label>:60:                                     ; preds = %57
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i32, i32* %0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !8
  %64 = sext i32 %20 to i64
  %65 = sub nsw i64 %64, %61
  %66 = add nsw i64 %64, -1
  %67 = sub nsw i64 %66, %61
  %68 = and i64 %65, 3
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %81, label %70

; <label>:70:                                     ; preds = %60
  br label %71

; <label>:71:                                     ; preds = %71, %70
  %72 = phi i32 [ %63, %70 ], [ %78, %71 ]
  %73 = phi i64 [ %61, %70 ], [ %75, %71 ]
  %74 = phi i64 [ %68, %70 ], [ %79, %71 ]
  %75 = add nsw i64 %73, 1
  %76 = getelementptr inbounds i32, i32* %0, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !8
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %76, align 4, !tbaa !8
  %79 = add i64 %74, -1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %71, !llvm.loop !12

; <label>:81:                                     ; preds = %71, %60
  %82 = phi i32 [ %63, %60 ], [ %78, %71 ]
  %83 = phi i64 [ %61, %60 ], [ %75, %71 ]
  %84 = icmp ult i64 %67, 3
  br i1 %84, label %106, label %85

; <label>:85:                                     ; preds = %81
  br label %86

; <label>:86:                                     ; preds = %86, %85
  %87 = phi i32 [ %82, %85 ], [ %104, %86 ]
  %88 = phi i64 [ %83, %85 ], [ %101, %86 ]
  %89 = add nsw i64 %88, 1
  %90 = getelementptr inbounds i32, i32* %0, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !8
  %92 = add nsw i32 %87, %91
  store i32 %92, i32* %90, align 4, !tbaa !8
  %93 = add nsw i64 %88, 2
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !8
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %94, align 4, !tbaa !8
  %97 = add nsw i64 %88, 3
  %98 = getelementptr inbounds i32, i32* %0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !8
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %98, align 4, !tbaa !8
  %101 = add nsw i64 %88, 4
  %102 = getelementptr inbounds i32, i32* %0, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !8
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %102, align 4, !tbaa !8
  %105 = icmp eq i64 %101, %64
  br i1 %105, label %106, label %86

; <label>:106:                                    ; preds = %81, %86, %57
  %107 = icmp slt i32 %10, %12
  br i1 %107, label %108, label %113

; <label>:108:                                    ; preds = %106
  %109 = sext i32 %20 to i64
  %110 = getelementptr inbounds i32, i32* %0, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !8
  %112 = getelementptr inbounds i32, i32* %3, i64 %14
  store i32 %111, i32* %112, align 4, !tbaa !8
  br label %113

; <label>:113:                                    ; preds = %106, %108, %7
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
