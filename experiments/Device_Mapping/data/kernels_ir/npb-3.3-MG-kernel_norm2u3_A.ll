; ModuleID = 'npb-MG-kernel_norm2u3.cl'
source_filename = "npb-MG-kernel_norm2u3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_norm2u3(double* nocapture readonly, i32, i32, i32, double* nocapture, double* nocapture, double* nocapture, double* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %10 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 %1, -1
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %8
  %16 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %45

; <label>:17:                                     ; preds = %8
  %18 = add i64 %9, 1
  %19 = trunc i64 %18 to i32
  %20 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %21 = add i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %22, %2
  %24 = add i32 %23, %19
  %25 = mul i32 %24, %1
  %26 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %27

; <label>:27:                                     ; preds = %17, %27
  %28 = phi i32 [ %12, %17 ], [ %43, %27 ]
  %29 = phi i64 [ %11, %17 ], [ %42, %27 ]
  %30 = phi double [ 0.000000e+00, %17 ], [ %36, %27 ]
  %31 = phi double [ 0.000000e+00, %17 ], [ %39, %27 ]
  %32 = add nsw i32 %28, %25
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %0, i64 %33
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %30)
  %37 = tail call double @_Z4fabsd(double %35) #4
  %38 = fcmp ogt double %37, %31
  %39 = select i1 %38, double %37, double %31
  %40 = shl i64 %29, 32
  %41 = ashr exact i64 %40, 32
  %42 = add i64 %26, %41
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %13, %43
  br i1 %44, label %27, label %45

; <label>:45:                                     ; preds = %27, %15
  %46 = phi i64 [ %16, %15 ], [ %26, %27 ]
  %47 = phi double [ 0.000000e+00, %15 ], [ %39, %27 ]
  %48 = phi double [ 0.000000e+00, %15 ], [ %36, %27 ]
  %49 = trunc i64 %10 to i32
  %50 = shl i64 %10, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds double, double* %6, i64 %51
  store double %48, double* %52, align 8, !tbaa !8
  %53 = getelementptr inbounds double, double* %7, i64 %51
  store double %47, double* %53, align 8, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %54 = lshr i64 %46, 1
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %45
  %58 = bitcast double* %53 to i64*
  br label %61

; <label>:59:                                     ; preds = %80, %45
  %60 = icmp eq i32 %49, 0
  br i1 %60, label %83, label %98

; <label>:61:                                     ; preds = %80, %57
  %62 = phi i32 [ %55, %57 ], [ %81, %80 ]
  %63 = icmp sgt i32 %62, %49
  br i1 %63, label %64, label %80

; <label>:64:                                     ; preds = %61
  %65 = add nsw i32 %62, %49
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %6, i64 %66
  %68 = load double, double* %67, align 8, !tbaa !8
  %69 = load double, double* %52, align 8, !tbaa !8
  %70 = fadd double %68, %69
  store double %70, double* %52, align 8, !tbaa !8
  %71 = load double, double* %53, align 8, !tbaa !8
  %72 = getelementptr inbounds double, double* %7, i64 %66
  %73 = load double, double* %72, align 8, !tbaa !8
  %74 = fcmp ogt double %71, %73
  %75 = select i1 %74, i32 %49, i32 %65
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %7, i64 %76
  %78 = bitcast double* %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !8
  store i64 %79, i64* %58, align 8, !tbaa !8
  br label %80

; <label>:80:                                     ; preds = %64, %61
  tail call void @_Z7barrierj(i32 1) #5
  %81 = lshr i32 %62, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %59, label %61

; <label>:83:                                     ; preds = %59
  %84 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %85 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %86 = mul i64 %85, %84
  %87 = add i64 %86, %9
  %88 = bitcast double* %6 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !8
  %90 = shl i64 %87, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds double, double* %4, i64 %91
  %93 = bitcast double* %92 to i64*
  store i64 %89, i64* %93, align 8, !tbaa !8
  %94 = bitcast double* %7 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !8
  %96 = getelementptr inbounds double, double* %5, i64 %91
  %97 = bitcast double* %96 to i64*
  store i64 %95, i64* %97, align 8, !tbaa !8
  br label %98

; <label>:98:                                     ; preds = %83, %59
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind readnone
declare double @_Z4fabsd(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 3, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int", !"double*", !"double*", !"double*", !"double*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
