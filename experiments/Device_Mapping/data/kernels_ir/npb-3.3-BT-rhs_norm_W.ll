; ModuleID = 'npb-BT-rhs_norm.cl'
source_filename = "npb-BT-rhs_norm.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @rhs_norm(double* nocapture readonly, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %8 = add i64 %7, 1
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %10 = mul i64 %9, 21474836480
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds double, double* %2, i64 %11
  %13 = bitcast double* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 40, i32 8, i1 false)
  %14 = trunc i64 %8 to i32
  %15 = trunc i64 %9 to i32
  %16 = add nsw i32 %5, -2
  %17 = icmp slt i32 %16, %14
  br i1 %17, label %73, label %18

; <label>:18:                                     ; preds = %6
  %19 = bitcast double* %0 to [25 x [25 x [5 x double]]]*
  %20 = icmp slt i32 %4, 3
  br i1 %20, label %73, label %21

; <label>:21:                                     ; preds = %18
  %22 = icmp slt i32 %3, 3
  %23 = shl i64 %8, 32
  %24 = ashr exact i64 %23, 32
  %25 = add i32 %3, -1
  %26 = add i32 %4, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %12, i64 1
  %29 = getelementptr inbounds double, double* %12, i64 2
  %30 = getelementptr inbounds double, double* %12, i64 3
  %31 = getelementptr inbounds double, double* %12, i64 4
  %32 = zext i32 %25 to i64
  br label %33

; <label>:33:                                     ; preds = %65, %21
  %34 = phi double [ %66, %65 ], [ 0.000000e+00, %21 ]
  %35 = phi double [ %67, %65 ], [ 0.000000e+00, %21 ]
  %36 = phi double [ %68, %65 ], [ 0.000000e+00, %21 ]
  %37 = phi double [ %69, %65 ], [ 0.000000e+00, %21 ]
  %38 = phi double [ %70, %65 ], [ 0.000000e+00, %21 ]
  %39 = phi i64 [ %71, %65 ], [ 1, %21 ]
  br i1 %22, label %65, label %40

; <label>:40:                                     ; preds = %33
  br label %41

; <label>:41:                                     ; preds = %40, %41
  %42 = phi double [ %62, %41 ], [ %34, %40 ]
  %43 = phi double [ %59, %41 ], [ %35, %40 ]
  %44 = phi double [ %56, %41 ], [ %36, %40 ]
  %45 = phi double [ %53, %41 ], [ %37, %40 ]
  %46 = phi double [ %50, %41 ], [ %38, %40 ]
  %47 = phi i64 [ %63, %41 ], [ 1, %40 ]
  %48 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %24, i64 %39, i64 %47, i64 0
  %49 = load double, double* %48, align 8, !tbaa !8
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %46)
  store double %50, double* %12, align 8, !tbaa !8
  %51 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %24, i64 %39, i64 %47, i64 1
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %45)
  store double %53, double* %28, align 8, !tbaa !8
  %54 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %24, i64 %39, i64 %47, i64 2
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %55, double %44)
  store double %56, double* %29, align 8, !tbaa !8
  %57 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %24, i64 %39, i64 %47, i64 3
  %58 = load double, double* %57, align 8, !tbaa !8
  %59 = tail call double @llvm.fmuladd.f64(double %58, double %58, double %43)
  store double %59, double* %30, align 8, !tbaa !8
  %60 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %19, i64 %24, i64 %39, i64 %47, i64 4
  %61 = load double, double* %60, align 8, !tbaa !8
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %42)
  store double %62, double* %31, align 8, !tbaa !8
  %63 = add nuw nsw i64 %47, 1
  %64 = icmp eq i64 %63, %32
  br i1 %64, label %65, label %41

; <label>:65:                                     ; preds = %41, %33
  %66 = phi double [ %34, %33 ], [ %62, %41 ]
  %67 = phi double [ %35, %33 ], [ %59, %41 ]
  %68 = phi double [ %36, %33 ], [ %56, %41 ]
  %69 = phi double [ %37, %33 ], [ %53, %41 ]
  %70 = phi double [ %38, %33 ], [ %50, %41 ]
  %71 = add nuw nsw i64 %39, 1
  %72 = icmp eq i64 %71, %27
  br i1 %72, label %73, label %33

; <label>:73:                                     ; preds = %65, %18, %6
  tail call void @_Z7barrierj(i32 1) #6
  %74 = icmp eq i32 %15, 0
  br i1 %74, label %75, label %148

; <label>:75:                                     ; preds = %73
  %76 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %77 = icmp ugt i64 %76, 1
  br i1 %77, label %85, label %78

; <label>:78:                                     ; preds = %75
  %79 = bitcast double* %12 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !8
  %81 = getelementptr inbounds double, double* %12, i64 1
  %82 = getelementptr inbounds double, double* %12, i64 2
  %83 = getelementptr inbounds double, double* %12, i64 3
  %84 = getelementptr inbounds double, double* %12, i64 4
  br label %122

; <label>:85:                                     ; preds = %75
  %86 = load double, double* %12, align 8, !tbaa !8
  %87 = getelementptr inbounds double, double* %12, i64 1
  %88 = load double, double* %87, align 8, !tbaa !8
  %89 = getelementptr inbounds double, double* %12, i64 2
  %90 = load double, double* %89, align 8, !tbaa !8
  %91 = getelementptr inbounds double, double* %12, i64 3
  %92 = load double, double* %91, align 8, !tbaa !8
  %93 = getelementptr inbounds double, double* %12, i64 4
  %94 = load double, double* %93, align 8, !tbaa !8
  br label %95

; <label>:95:                                     ; preds = %95, %85
  %96 = phi double [ %94, %85 ], [ %117, %95 ]
  %97 = phi double [ %92, %85 ], [ %114, %95 ]
  %98 = phi double [ %90, %85 ], [ %111, %95 ]
  %99 = phi double [ %88, %85 ], [ %108, %95 ]
  %100 = phi double [ %86, %85 ], [ %105, %95 ]
  %101 = phi i64 [ 1, %85 ], [ %118, %95 ]
  %102 = mul nuw nsw i64 %101, 5
  %103 = getelementptr inbounds double, double* %2, i64 %102
  %104 = load double, double* %103, align 8, !tbaa !8
  %105 = fadd double %104, %100
  store double %105, double* %12, align 8, !tbaa !8
  %106 = getelementptr inbounds double, double* %103, i64 1
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = fadd double %107, %99
  store double %108, double* %87, align 8, !tbaa !8
  %109 = getelementptr inbounds double, double* %103, i64 2
  %110 = load double, double* %109, align 8, !tbaa !8
  %111 = fadd double %110, %98
  store double %111, double* %89, align 8, !tbaa !8
  %112 = getelementptr inbounds double, double* %103, i64 3
  %113 = load double, double* %112, align 8, !tbaa !8
  %114 = fadd double %113, %97
  store double %114, double* %91, align 8, !tbaa !8
  %115 = getelementptr inbounds double, double* %103, i64 4
  %116 = load double, double* %115, align 8, !tbaa !8
  %117 = fadd double %116, %96
  store double %117, double* %93, align 8, !tbaa !8
  %118 = add nuw nsw i64 %101, 1
  %119 = icmp eq i64 %118, %76
  br i1 %119, label %120, label %95

; <label>:120:                                    ; preds = %95
  %121 = bitcast double %105 to i64
  br label %122

; <label>:122:                                    ; preds = %78, %120
  %123 = phi double* [ %84, %78 ], [ %93, %120 ]
  %124 = phi double* [ %83, %78 ], [ %91, %120 ]
  %125 = phi double* [ %82, %78 ], [ %89, %120 ]
  %126 = phi double* [ %81, %78 ], [ %87, %120 ]
  %127 = phi i64 [ %80, %78 ], [ %121, %120 ]
  %128 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %129 = mul i64 %128, 5
  %130 = getelementptr inbounds double, double* %1, i64 %129
  %131 = bitcast double* %130 to i64*
  store i64 %127, i64* %131, align 8, !tbaa !8
  %132 = bitcast double* %126 to i64*
  %133 = load i64, i64* %132, align 8, !tbaa !8
  %134 = getelementptr inbounds double, double* %130, i64 1
  %135 = bitcast double* %134 to i64*
  store i64 %133, i64* %135, align 8, !tbaa !8
  %136 = bitcast double* %125 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !8
  %138 = getelementptr inbounds double, double* %130, i64 2
  %139 = bitcast double* %138 to i64*
  store i64 %137, i64* %139, align 8, !tbaa !8
  %140 = bitcast double* %124 to i64*
  %141 = load i64, i64* %140, align 8, !tbaa !8
  %142 = getelementptr inbounds double, double* %130, i64 3
  %143 = bitcast double* %142 to i64*
  store i64 %141, i64* %143, align 8, !tbaa !8
  %144 = bitcast double* %123 to i64*
  %145 = load i64, i64* %144, align 8, !tbaa !8
  %146 = getelementptr inbounds double, double* %130, i64 4
  %147 = bitcast double* %146 to i64*
  store i64 %145, i64* %147, align 8, !tbaa !8
  br label %148

; <label>:148:                                    ; preds = %122, %73
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 3, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
