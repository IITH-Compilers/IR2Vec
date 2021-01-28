; ModuleID = 'npb-LU-pintgr_reduce.cl'
source_filename = "npb-LU-pintgr_reduce.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @pintgr_reduce(double* nocapture readonly, double* nocapture readonly, double* nocapture, double* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = zext i32 %6 to i64
  %11 = add i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %12, %7
  br i1 %15, label %16, label %60

; <label>:16:                                     ; preds = %8
  %17 = bitcast double* %0 to [35 x double]*
  %18 = bitcast double* %1 to [35 x double]*
  %19 = icmp slt i32 %4, %5
  br i1 %19, label %20, label %60

; <label>:20:                                     ; preds = %16
  %21 = shl i64 %11, 32
  %22 = ashr exact i64 %21, 32
  %23 = add i64 %21, 4294967296
  %24 = ashr exact i64 %23, 32
  %25 = sext i32 %4 to i64
  %26 = getelementptr inbounds [35 x double], [35 x double]* %17, i64 %22, i64 %25
  %27 = load double, double* %26, align 8, !tbaa !8
  %28 = getelementptr inbounds [35 x double], [35 x double]* %17, i64 %24, i64 %25
  %29 = load double, double* %28, align 8, !tbaa !8
  %30 = getelementptr inbounds [35 x double], [35 x double]* %18, i64 %22, i64 %25
  %31 = load double, double* %30, align 8, !tbaa !8
  %32 = getelementptr inbounds [35 x double], [35 x double]* %18, i64 %24, i64 %25
  %33 = load double, double* %32, align 8, !tbaa !8
  %34 = sext i32 %5 to i64
  br label %35

; <label>:35:                                     ; preds = %35, %20
  %36 = phi double [ %33, %20 ], [ %56, %35 ]
  %37 = phi double [ %31, %20 ], [ %52, %35 ]
  %38 = phi double [ %29, %20 ], [ %48, %35 ]
  %39 = phi double [ %27, %20 ], [ %44, %35 ]
  %40 = phi i64 [ %25, %20 ], [ %42, %35 ]
  %41 = phi double [ 0.000000e+00, %20 ], [ %58, %35 ]
  %42 = add nsw i64 %40, 1
  %43 = getelementptr inbounds [35 x double], [35 x double]* %17, i64 %22, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = fadd double %39, %44
  %46 = fadd double %45, %38
  %47 = getelementptr inbounds [35 x double], [35 x double]* %17, i64 %24, i64 %42
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = fadd double %46, %48
  %50 = fadd double %49, %37
  %51 = getelementptr inbounds [35 x double], [35 x double]* %18, i64 %22, i64 %42
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = fadd double %50, %52
  %54 = fadd double %53, %36
  %55 = getelementptr inbounds [35 x double], [35 x double]* %18, i64 %24, i64 %42
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = fadd double %54, %56
  %58 = fadd double %41, %57
  %59 = icmp eq i64 %42, %34
  br i1 %59, label %60, label %35

; <label>:60:                                     ; preds = %35, %16, %8
  %61 = phi double [ 0.000000e+00, %8 ], [ 0.000000e+00, %16 ], [ %58, %35 ]
  %62 = shl i64 %13, 32
  %63 = ashr exact i64 %62, 32
  %64 = getelementptr inbounds double, double* %3, i64 %63
  store double %61, double* %64, align 8, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %65 = icmp eq i32 %14, 0
  br i1 %65, label %66, label %134

; <label>:66:                                     ; preds = %60
  %67 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %68 = icmp ugt i64 %67, 1
  br i1 %68, label %69, label %130

; <label>:69:                                     ; preds = %66
  %70 = add i64 %67, -1
  %71 = add i64 %67, -2
  %72 = and i64 %70, 7
  %73 = icmp ult i64 %71, 7
  br i1 %73, label %114, label %74

; <label>:74:                                     ; preds = %69
  %75 = sub i64 %70, %72
  br label %76

; <label>:76:                                     ; preds = %76, %74
  %77 = phi i64 [ 1, %74 ], [ %111, %76 ]
  %78 = phi double [ %61, %74 ], [ %110, %76 ]
  %79 = phi i64 [ %75, %74 ], [ %112, %76 ]
  %80 = getelementptr inbounds double, double* %3, i64 %77
  %81 = load double, double* %80, align 8, !tbaa !8
  %82 = fadd double %78, %81
  %83 = add nuw nsw i64 %77, 1
  %84 = getelementptr inbounds double, double* %3, i64 %83
  %85 = load double, double* %84, align 8, !tbaa !8
  %86 = fadd double %82, %85
  %87 = add nsw i64 %77, 2
  %88 = getelementptr inbounds double, double* %3, i64 %87
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = fadd double %86, %89
  %91 = add nsw i64 %77, 3
  %92 = getelementptr inbounds double, double* %3, i64 %91
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fadd double %90, %93
  %95 = add nsw i64 %77, 4
  %96 = getelementptr inbounds double, double* %3, i64 %95
  %97 = load double, double* %96, align 8, !tbaa !8
  %98 = fadd double %94, %97
  %99 = add nsw i64 %77, 5
  %100 = getelementptr inbounds double, double* %3, i64 %99
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = fadd double %98, %101
  %103 = add nsw i64 %77, 6
  %104 = getelementptr inbounds double, double* %3, i64 %103
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = fadd double %102, %105
  %107 = add nsw i64 %77, 7
  %108 = getelementptr inbounds double, double* %3, i64 %107
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fadd double %106, %109
  %111 = add nsw i64 %77, 8
  %112 = add i64 %79, -8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %76

; <label>:114:                                    ; preds = %76, %69
  %115 = phi double [ undef, %69 ], [ %110, %76 ]
  %116 = phi i64 [ 1, %69 ], [ %111, %76 ]
  %117 = phi double [ %61, %69 ], [ %110, %76 ]
  %118 = icmp eq i64 %72, 0
  br i1 %118, label %130, label %119

; <label>:119:                                    ; preds = %114
  br label %120

; <label>:120:                                    ; preds = %120, %119
  %121 = phi i64 [ %127, %120 ], [ %116, %119 ]
  %122 = phi double [ %126, %120 ], [ %117, %119 ]
  %123 = phi i64 [ %128, %120 ], [ %72, %119 ]
  %124 = getelementptr inbounds double, double* %3, i64 %121
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = fadd double %122, %125
  %127 = add nuw nsw i64 %121, 1
  %128 = add i64 %123, -1
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %120, !llvm.loop !12

; <label>:130:                                    ; preds = %114, %120, %66
  %131 = phi double [ %61, %66 ], [ %115, %114 ], [ %126, %120 ]
  %132 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %133 = getelementptr inbounds double, double* %2, i64 %132
  store double %131, double* %133, align 8, !tbaa !8
  br label %134

; <label>:134:                                    ; preds = %130, %60
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
