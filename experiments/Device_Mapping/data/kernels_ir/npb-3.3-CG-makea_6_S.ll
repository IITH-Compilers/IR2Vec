; ModuleID = 'npb-CG-makea_6.cl'
source_filename = "npb-CG-makea_6.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_6(double* nocapture, double* nocapture readonly, i32* nocapture readonly, i32* nocapture, i32* nocapture readonly, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %11, label %112

; <label>:11:                                     ; preds = %7
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds i32, i32* %4, i64 %12
  %14 = icmp sgt i32 %9, 0
  %15 = shl i64 %8, 32
  %16 = ashr exact i64 %15, 32
  br i1 %14, label %17, label %25

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds i32, i32* %2, i64 %16
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = add i64 %15, -4294967296
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !8
  %24 = sub nsw i32 %19, %23
  br label %25

; <label>:25:                                     ; preds = %11, %17
  %26 = phi i32 [ %24, %17 ], [ 0, %11 ]
  %27 = add i64 %15, 4294967296
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds i32, i32* %2, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !8
  %31 = getelementptr inbounds i32, i32* %13, i64 %16
  %32 = load i32, i32* %31, align 4, !tbaa !8
  %33 = sub nsw i32 %30, %32
  %34 = icmp slt i32 %26, %33
  br i1 %34, label %35, label %112

; <label>:35:                                     ; preds = %25
  %36 = getelementptr inbounds i32, i32* %2, i64 %16
  %37 = load i32, i32* %36, align 4, !tbaa !8
  %38 = sext i32 %26 to i64
  %39 = sext i32 %37 to i64
  %40 = sext i32 %33 to i64
  %41 = sub nsw i64 %40, %38
  %42 = add nsw i64 %40, -1
  %43 = sub nsw i64 %42, %38
  %44 = and i64 %41, 3
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %63, label %46

; <label>:46:                                     ; preds = %35
  br label %47

; <label>:47:                                     ; preds = %47, %46
  %48 = phi i64 [ %39, %46 ], [ %59, %47 ]
  %49 = phi i64 [ %38, %46 ], [ %60, %47 ]
  %50 = phi i64 [ %44, %46 ], [ %61, %47 ]
  %51 = getelementptr inbounds double, double* %1, i64 %48
  %52 = bitcast double* %51 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !12
  %54 = getelementptr inbounds double, double* %0, i64 %49
  %55 = bitcast double* %54 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !12
  %56 = getelementptr inbounds i32, i32* %4, i64 %48
  %57 = load i32, i32* %56, align 4, !tbaa !8
  %58 = getelementptr inbounds i32, i32* %3, i64 %49
  store i32 %57, i32* %58, align 4, !tbaa !8
  %59 = add nsw i64 %48, 1
  %60 = add nsw i64 %49, 1
  %61 = add i64 %50, -1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %47, !llvm.loop !14

; <label>:63:                                     ; preds = %47, %35
  %64 = phi i64 [ %39, %35 ], [ %59, %47 ]
  %65 = phi i64 [ %38, %35 ], [ %60, %47 ]
  %66 = icmp ult i64 %43, 3
  br i1 %66, label %112, label %67

; <label>:67:                                     ; preds = %63
  br label %68

; <label>:68:                                     ; preds = %68, %67
  %69 = phi i64 [ %64, %67 ], [ %109, %68 ]
  %70 = phi i64 [ %65, %67 ], [ %110, %68 ]
  %71 = getelementptr inbounds double, double* %1, i64 %69
  %72 = bitcast double* %71 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !12
  %74 = getelementptr inbounds double, double* %0, i64 %70
  %75 = bitcast double* %74 to i64*
  store i64 %73, i64* %75, align 8, !tbaa !12
  %76 = getelementptr inbounds i32, i32* %4, i64 %69
  %77 = load i32, i32* %76, align 4, !tbaa !8
  %78 = getelementptr inbounds i32, i32* %3, i64 %70
  store i32 %77, i32* %78, align 4, !tbaa !8
  %79 = add nsw i64 %69, 1
  %80 = add nsw i64 %70, 1
  %81 = getelementptr inbounds double, double* %1, i64 %79
  %82 = bitcast double* %81 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !12
  %84 = getelementptr inbounds double, double* %0, i64 %80
  %85 = bitcast double* %84 to i64*
  store i64 %83, i64* %85, align 8, !tbaa !12
  %86 = getelementptr inbounds i32, i32* %4, i64 %79
  %87 = load i32, i32* %86, align 4, !tbaa !8
  %88 = getelementptr inbounds i32, i32* %3, i64 %80
  store i32 %87, i32* %88, align 4, !tbaa !8
  %89 = add nsw i64 %69, 2
  %90 = add nsw i64 %70, 2
  %91 = getelementptr inbounds double, double* %1, i64 %89
  %92 = bitcast double* %91 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !12
  %94 = getelementptr inbounds double, double* %0, i64 %90
  %95 = bitcast double* %94 to i64*
  store i64 %93, i64* %95, align 8, !tbaa !12
  %96 = getelementptr inbounds i32, i32* %4, i64 %89
  %97 = load i32, i32* %96, align 4, !tbaa !8
  %98 = getelementptr inbounds i32, i32* %3, i64 %90
  store i32 %97, i32* %98, align 4, !tbaa !8
  %99 = add nsw i64 %69, 3
  %100 = add nsw i64 %70, 3
  %101 = getelementptr inbounds double, double* %1, i64 %99
  %102 = bitcast double* %101 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !12
  %104 = getelementptr inbounds double, double* %0, i64 %100
  %105 = bitcast double* %104 to i64*
  store i64 %103, i64* %105, align 8, !tbaa !12
  %106 = getelementptr inbounds i32, i32* %4, i64 %99
  %107 = load i32, i32* %106, align 4, !tbaa !8
  %108 = getelementptr inbounds i32, i32* %3, i64 %100
  store i32 %107, i32* %108, align 4, !tbaa !8
  %109 = add nsw i64 %69, 4
  %110 = add nsw i64 %70, 4
  %111 = icmp eq i64 %110, %40
  br i1 %111, label %112, label %68

; <label>:112:                                    ; preds = %63, %68, %25, %7
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"int*", !"int*", !"int*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
