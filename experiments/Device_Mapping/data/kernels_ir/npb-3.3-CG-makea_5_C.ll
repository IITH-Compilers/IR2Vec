; ModuleID = 'npb-CG-makea_5.cl'
source_filename = "npb-CG-makea_5.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_5(i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %8 = trunc i64 %7 to i32
  %9 = shl i64 %7, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i32, i32* %2, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !8
  %13 = icmp slt i32 %12, %4
  br i1 %13, label %14, label %131

; <label>:14:                                     ; preds = %6
  %15 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds i32, i32* %3, i64 %10
  %18 = load i32, i32* %17, align 4, !tbaa !8
  %19 = icmp slt i32 %8, %16
  %20 = icmp sgt i32 %8, 0
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %131

; <label>:22:                                     ; preds = %14
  %23 = and i64 %7, 4294967295
  %24 = add nsw i64 %23, -1
  %25 = and i64 %7, 7
  %26 = icmp ult i64 %24, 7
  br i1 %26, label %67, label %27

; <label>:27:                                     ; preds = %22
  %28 = sub nsw i64 %23, %25
  br label %29

; <label>:29:                                     ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %64, %29 ]
  %31 = phi i32 [ 0, %27 ], [ %63, %29 ]
  %32 = phi i64 [ %28, %27 ], [ %65, %29 ]
  %33 = getelementptr inbounds i32, i32* %1, i64 %30
  %34 = load i32, i32* %33, align 4, !tbaa !8
  %35 = add nsw i32 %34, %31
  %36 = or i64 %30, 1
  %37 = getelementptr inbounds i32, i32* %1, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = add nsw i32 %38, %35
  %40 = or i64 %30, 2
  %41 = getelementptr inbounds i32, i32* %1, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = add nsw i32 %42, %39
  %44 = or i64 %30, 3
  %45 = getelementptr inbounds i32, i32* %1, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !8
  %47 = add nsw i32 %46, %43
  %48 = or i64 %30, 4
  %49 = getelementptr inbounds i32, i32* %1, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !8
  %51 = add nsw i32 %50, %47
  %52 = or i64 %30, 5
  %53 = getelementptr inbounds i32, i32* %1, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !8
  %55 = add nsw i32 %54, %51
  %56 = or i64 %30, 6
  %57 = getelementptr inbounds i32, i32* %1, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !8
  %59 = add nsw i32 %58, %55
  %60 = or i64 %30, 7
  %61 = getelementptr inbounds i32, i32* %1, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !8
  %63 = add nsw i32 %62, %59
  %64 = add nsw i64 %30, 8
  %65 = add i64 %32, -8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %29

; <label>:67:                                     ; preds = %29, %22
  %68 = phi i32 [ undef, %22 ], [ %63, %29 ]
  %69 = phi i64 [ 0, %22 ], [ %64, %29 ]
  %70 = phi i32 [ 0, %22 ], [ %63, %29 ]
  %71 = icmp eq i64 %25, 0
  br i1 %71, label %83, label %72

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %73, %72
  %74 = phi i64 [ %69, %72 ], [ %80, %73 ]
  %75 = phi i32 [ %70, %72 ], [ %79, %73 ]
  %76 = phi i64 [ %25, %72 ], [ %81, %73 ]
  %77 = getelementptr inbounds i32, i32* %1, i64 %74
  %78 = load i32, i32* %77, align 4, !tbaa !8
  %79 = add nsw i32 %78, %75
  %80 = add nuw nsw i64 %74, 1
  %81 = add i64 %76, -1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !12

; <label>:83:                                     ; preds = %73, %67
  %84 = phi i32 [ %68, %67 ], [ %79, %73 ]
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %131

; <label>:86:                                     ; preds = %83
  %87 = sext i32 %5 to i64
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = icmp slt i32 %12, %18
  br i1 %89, label %90, label %131

; <label>:90:                                     ; preds = %86
  %91 = sext i32 %12 to i64
  %92 = sext i32 %18 to i64
  %93 = sub nsw i64 %92, %91
  %94 = add nsw i64 %92, -1
  %95 = sub nsw i64 %94, %91
  %96 = and i64 %93, 3
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %108, label %98

; <label>:98:                                     ; preds = %90
  br label %99

; <label>:99:                                     ; preds = %99, %98
  %100 = phi i64 [ %91, %98 ], [ %105, %99 ]
  %101 = phi i64 [ %96, %98 ], [ %106, %99 ]
  %102 = getelementptr inbounds i32, i32* %88, i64 %100
  %103 = load i32, i32* %102, align 4, !tbaa !8
  %104 = add nsw i32 %103, %84
  store i32 %104, i32* %102, align 4, !tbaa !8
  %105 = add nsw i64 %100, 1
  %106 = add i64 %101, -1
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %99, !llvm.loop !14

; <label>:108:                                    ; preds = %99, %90
  %109 = phi i64 [ %91, %90 ], [ %105, %99 ]
  %110 = icmp ult i64 %95, 3
  br i1 %110, label %131, label %111

; <label>:111:                                    ; preds = %108
  br label %112

; <label>:112:                                    ; preds = %112, %111
  %113 = phi i64 [ %109, %111 ], [ %129, %112 ]
  %114 = getelementptr inbounds i32, i32* %88, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !8
  %116 = add nsw i32 %115, %84
  store i32 %116, i32* %114, align 4, !tbaa !8
  %117 = add nsw i64 %113, 1
  %118 = getelementptr inbounds i32, i32* %88, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !8
  %120 = add nsw i32 %119, %84
  store i32 %120, i32* %118, align 4, !tbaa !8
  %121 = add nsw i64 %113, 2
  %122 = getelementptr inbounds i32, i32* %88, i64 %121
  %123 = load i32, i32* %122, align 4, !tbaa !8
  %124 = add nsw i32 %123, %84
  store i32 %124, i32* %122, align 4, !tbaa !8
  %125 = add nsw i64 %113, 3
  %126 = getelementptr inbounds i32, i32* %88, i64 %125
  %127 = load i32, i32* %126, align 4, !tbaa !8
  %128 = add nsw i32 %127, %84
  store i32 %128, i32* %126, align 4, !tbaa !8
  %129 = add nsw i64 %113, 4
  %130 = icmp eq i64 %129, %92
  br i1 %130, label %131, label %112

; <label>:131:                                    ; preds = %108, %112, %86, %14, %83, %6
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
!14 = distinct !{!14, !13}
