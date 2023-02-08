; ModuleID = 'npb-SP-rhs_norm.cl'
source_filename = "npb-SP-rhs_norm.cl"
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
  %16 = icmp sgt i32 %14, %5
  br i1 %16, label %72, label %17

; <label>:17:                                     ; preds = %6
  %18 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %19 = icmp slt i32 %4, 1
  br i1 %19, label %72, label %20

; <label>:20:                                     ; preds = %17
  %21 = icmp slt i32 %3, 1
  %22 = shl i64 %8, 32
  %23 = ashr exact i64 %22, 32
  %24 = add i32 %3, 1
  %25 = add i32 %4, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %12, i64 1
  %28 = getelementptr inbounds double, double* %12, i64 2
  %29 = getelementptr inbounds double, double* %12, i64 3
  %30 = getelementptr inbounds double, double* %12, i64 4
  %31 = zext i32 %24 to i64
  br label %32

; <label>:32:                                     ; preds = %64, %20
  %33 = phi double [ %65, %64 ], [ 0.000000e+00, %20 ]
  %34 = phi double [ %66, %64 ], [ 0.000000e+00, %20 ]
  %35 = phi double [ %67, %64 ], [ 0.000000e+00, %20 ]
  %36 = phi double [ %68, %64 ], [ 0.000000e+00, %20 ]
  %37 = phi double [ %69, %64 ], [ 0.000000e+00, %20 ]
  %38 = phi i64 [ %70, %64 ], [ 1, %20 ]
  br i1 %21, label %64, label %39

; <label>:39:                                     ; preds = %32
  br label %40

; <label>:40:                                     ; preds = %39, %40
  %41 = phi double [ %61, %40 ], [ %33, %39 ]
  %42 = phi double [ %58, %40 ], [ %34, %39 ]
  %43 = phi double [ %55, %40 ], [ %35, %39 ]
  %44 = phi double [ %52, %40 ], [ %36, %39 ]
  %45 = phi double [ %49, %40 ], [ %37, %39 ]
  %46 = phi i64 [ %62, %40 ], [ 1, %39 ]
  %47 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %18, i64 %23, i64 %38, i64 %46, i64 0
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %45)
  store double %49, double* %12, align 8, !tbaa !8
  %50 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %18, i64 %23, i64 %38, i64 %46, i64 1
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %51, double %44)
  store double %52, double* %27, align 8, !tbaa !8
  %53 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %18, i64 %23, i64 %38, i64 %46, i64 2
  %54 = load double, double* %53, align 8, !tbaa !8
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %43)
  store double %55, double* %28, align 8, !tbaa !8
  %56 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %18, i64 %23, i64 %38, i64 %46, i64 3
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %57, double %42)
  store double %58, double* %29, align 8, !tbaa !8
  %59 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %18, i64 %23, i64 %38, i64 %46, i64 4
  %60 = load double, double* %59, align 8, !tbaa !8
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %41)
  store double %61, double* %30, align 8, !tbaa !8
  %62 = add nuw nsw i64 %46, 1
  %63 = icmp eq i64 %62, %31
  br i1 %63, label %64, label %40

; <label>:64:                                     ; preds = %40, %32
  %65 = phi double [ %33, %32 ], [ %61, %40 ]
  %66 = phi double [ %34, %32 ], [ %58, %40 ]
  %67 = phi double [ %35, %32 ], [ %55, %40 ]
  %68 = phi double [ %36, %32 ], [ %52, %40 ]
  %69 = phi double [ %37, %32 ], [ %49, %40 ]
  %70 = add nuw nsw i64 %38, 1
  %71 = icmp eq i64 %70, %26
  br i1 %71, label %72, label %32

; <label>:72:                                     ; preds = %64, %17, %6
  tail call void @_Z7barrierj(i32 1) #6
  %73 = icmp eq i32 %15, 0
  br i1 %73, label %74, label %147

; <label>:74:                                     ; preds = %72
  %75 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %76 = icmp ugt i64 %75, 1
  br i1 %76, label %84, label %77

; <label>:77:                                     ; preds = %74
  %78 = bitcast double* %12 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !8
  %80 = getelementptr inbounds double, double* %12, i64 1
  %81 = getelementptr inbounds double, double* %12, i64 2
  %82 = getelementptr inbounds double, double* %12, i64 3
  %83 = getelementptr inbounds double, double* %12, i64 4
  br label %121

; <label>:84:                                     ; preds = %74
  %85 = load double, double* %12, align 8, !tbaa !8
  %86 = getelementptr inbounds double, double* %12, i64 1
  %87 = load double, double* %86, align 8, !tbaa !8
  %88 = getelementptr inbounds double, double* %12, i64 2
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds double, double* %12, i64 3
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds double, double* %12, i64 4
  %93 = load double, double* %92, align 8, !tbaa !8
  br label %94

; <label>:94:                                     ; preds = %94, %84
  %95 = phi double [ %93, %84 ], [ %116, %94 ]
  %96 = phi double [ %91, %84 ], [ %113, %94 ]
  %97 = phi double [ %89, %84 ], [ %110, %94 ]
  %98 = phi double [ %87, %84 ], [ %107, %94 ]
  %99 = phi double [ %85, %84 ], [ %104, %94 ]
  %100 = phi i64 [ 1, %84 ], [ %117, %94 ]
  %101 = mul nuw nsw i64 %100, 5
  %102 = getelementptr inbounds double, double* %2, i64 %101
  %103 = load double, double* %102, align 8, !tbaa !8
  %104 = fadd double %103, %99
  store double %104, double* %12, align 8, !tbaa !8
  %105 = getelementptr inbounds double, double* %102, i64 1
  %106 = load double, double* %105, align 8, !tbaa !8
  %107 = fadd double %106, %98
  store double %107, double* %86, align 8, !tbaa !8
  %108 = getelementptr inbounds double, double* %102, i64 2
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fadd double %109, %97
  store double %110, double* %88, align 8, !tbaa !8
  %111 = getelementptr inbounds double, double* %102, i64 3
  %112 = load double, double* %111, align 8, !tbaa !8
  %113 = fadd double %112, %96
  store double %113, double* %90, align 8, !tbaa !8
  %114 = getelementptr inbounds double, double* %102, i64 4
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = fadd double %115, %95
  store double %116, double* %92, align 8, !tbaa !8
  %117 = add nuw nsw i64 %100, 1
  %118 = icmp eq i64 %117, %75
  br i1 %118, label %119, label %94

; <label>:119:                                    ; preds = %94
  %120 = bitcast double %104 to i64
  br label %121

; <label>:121:                                    ; preds = %77, %119
  %122 = phi double* [ %83, %77 ], [ %92, %119 ]
  %123 = phi double* [ %82, %77 ], [ %90, %119 ]
  %124 = phi double* [ %81, %77 ], [ %88, %119 ]
  %125 = phi double* [ %80, %77 ], [ %86, %119 ]
  %126 = phi i64 [ %79, %77 ], [ %120, %119 ]
  %127 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %128 = mul i64 %127, 5
  %129 = getelementptr inbounds double, double* %1, i64 %128
  %130 = bitcast double* %129 to i64*
  store i64 %126, i64* %130, align 8, !tbaa !8
  %131 = bitcast double* %125 to i64*
  %132 = load i64, i64* %131, align 8, !tbaa !8
  %133 = getelementptr inbounds double, double* %129, i64 1
  %134 = bitcast double* %133 to i64*
  store i64 %132, i64* %134, align 8, !tbaa !8
  %135 = bitcast double* %124 to i64*
  %136 = load i64, i64* %135, align 8, !tbaa !8
  %137 = getelementptr inbounds double, double* %129, i64 2
  %138 = bitcast double* %137 to i64*
  store i64 %136, i64* %138, align 8, !tbaa !8
  %139 = bitcast double* %123 to i64*
  %140 = load i64, i64* %139, align 8, !tbaa !8
  %141 = getelementptr inbounds double, double* %129, i64 3
  %142 = bitcast double* %141 to i64*
  store i64 %140, i64* %142, align 8, !tbaa !8
  %143 = bitcast double* %122 to i64*
  %144 = load i64, i64* %143, align 8, !tbaa !8
  %145 = getelementptr inbounds double, double* %129, i64 4
  %146 = bitcast double* %145 to i64*
  store i64 %144, i64* %146, align 8, !tbaa !8
  br label %147

; <label>:147:                                    ; preds = %121, %72
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
