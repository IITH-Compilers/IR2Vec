; ModuleID = 'npb-CG-makea_4.cl'
source_filename = "npb-CG-makea_4.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_4(i32* nocapture, i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = shl i64 %7, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i32, i32* %2, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !8
  %15 = icmp slt i32 %14, %4
  br i1 %15, label %16, label %97

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i32, i32* %3, i64 %12
  %18 = load i32, i32* %17, align 4, !tbaa !8
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = add nsw i32 %14, 1
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %23, label %52

; <label>:23:                                     ; preds = %16
  %24 = sext i32 %14 to i64
  %25 = add nsw i64 %24, 1
  %26 = add i32 %18, 3
  %27 = sub i32 %26, %14
  %28 = add i32 %18, -2
  %29 = sub i32 %28, %14
  %30 = and i32 %27, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

; <label>:32:                                     ; preds = %23
  br label %33

; <label>:33:                                     ; preds = %33, %32
  %34 = phi i64 [ %25, %32 ], [ %43, %33 ]
  %35 = phi i32 [ %14, %32 ], [ %44, %33 ]
  %36 = phi i32 [ %30, %32 ], [ %45, %33 ]
  %37 = getelementptr inbounds i32, i32* %20, i64 %34
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i32, i32* %20, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !8
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %37, align 4, !tbaa !8
  %43 = add i64 %34, 1
  %44 = trunc i64 %34 to i32
  %45 = add i32 %36, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %33, !llvm.loop !12

; <label>:47:                                     ; preds = %33, %23
  %48 = phi i64 [ %25, %23 ], [ %43, %33 ]
  %49 = phi i32 [ %14, %23 ], [ %44, %33 ]
  %50 = icmp ult i32 %29, 3
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %47
  br label %54

; <label>:52:                                     ; preds = %47, %54, %16
  %53 = icmp slt i32 %8, %10
  br i1 %53, label %91, label %97

; <label>:54:                                     ; preds = %54, %51
  %55 = phi i64 [ %48, %51 ], [ %87, %54 ]
  %56 = phi i32 [ %49, %51 ], [ %88, %54 ]
  %57 = getelementptr inbounds i32, i32* %20, i64 %55
  %58 = load i32, i32* %57, align 4, !tbaa !8
  %59 = sext i32 %56 to i64
  %60 = getelementptr inbounds i32, i32* %20, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !8
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %57, align 4, !tbaa !8
  %63 = add i64 %55, 1
  %64 = getelementptr inbounds i32, i32* %20, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = shl i64 %55, 32
  %67 = ashr exact i64 %66, 32
  %68 = getelementptr inbounds i32, i32* %20, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !8
  %70 = add nsw i32 %69, %65
  store i32 %70, i32* %64, align 4, !tbaa !8
  %71 = add i64 %55, 2
  %72 = getelementptr inbounds i32, i32* %20, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !8
  %74 = shl i64 %63, 32
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds i32, i32* %20, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !8
  %78 = add nsw i32 %77, %73
  store i32 %78, i32* %72, align 4, !tbaa !8
  %79 = add i64 %55, 3
  %80 = getelementptr inbounds i32, i32* %20, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !8
  %82 = shl i64 %71, 32
  %83 = ashr exact i64 %82, 32
  %84 = getelementptr inbounds i32, i32* %20, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !8
  %86 = add nsw i32 %85, %81
  store i32 %86, i32* %80, align 4, !tbaa !8
  %87 = add i64 %55, 4
  %88 = trunc i64 %79 to i32
  %89 = trunc i64 %87 to i32
  %90 = icmp eq i32 %18, %89
  br i1 %90, label %52, label %54

; <label>:91:                                     ; preds = %52
  %92 = add nsw i32 %18, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %20, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !8
  %96 = getelementptr inbounds i32, i32* %1, i64 %12
  store i32 %95, i32* %96, align 4, !tbaa !8
  br label %97

; <label>:97:                                     ; preds = %52, %91, %6
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"int*", !"int*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
