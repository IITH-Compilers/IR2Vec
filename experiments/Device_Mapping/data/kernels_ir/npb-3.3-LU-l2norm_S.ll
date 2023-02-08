; ModuleID = 'npb-LU-l2norm.cl'
source_filename = "npb-LU-l2norm.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @l2norm(double* nocapture readonly, double* nocapture, double* nocapture, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %10 = add i64 %9, 1
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %12 = mul i64 %11, 21474836480
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds double, double* %2, i64 %13
  %15 = bitcast double* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 40, i32 8, i1 false)
  %16 = trunc i64 %10 to i32
  %17 = trunc i64 %11 to i32
  %18 = icmp slt i32 %16, 11
  br i1 %18, label %19, label %74

; <label>:19:                                     ; preds = %8
  %20 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %21 = icmp slt i32 %6, %7
  br i1 %21, label %22, label %74

; <label>:22:                                     ; preds = %19
  %23 = icmp slt i32 %4, %5
  %24 = shl i64 %10, 32
  %25 = ashr exact i64 %24, 32
  %26 = sext i32 %4 to i64
  %27 = sext i32 %6 to i64
  %28 = getelementptr inbounds double, double* %14, i64 1
  %29 = getelementptr inbounds double, double* %14, i64 2
  %30 = getelementptr inbounds double, double* %14, i64 3
  %31 = getelementptr inbounds double, double* %14, i64 4
  %32 = sext i32 %5 to i64
  %33 = sext i32 %7 to i64
  br label %34

; <label>:34:                                     ; preds = %66, %22
  %35 = phi double [ 0.000000e+00, %22 ], [ %67, %66 ]
  %36 = phi double [ 0.000000e+00, %22 ], [ %68, %66 ]
  %37 = phi double [ 0.000000e+00, %22 ], [ %69, %66 ]
  %38 = phi double [ 0.000000e+00, %22 ], [ %70, %66 ]
  %39 = phi double [ 0.000000e+00, %22 ], [ %71, %66 ]
  %40 = phi i64 [ %27, %22 ], [ %72, %66 ]
  br i1 %23, label %41, label %66

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %41, %42
  %43 = phi double [ %63, %42 ], [ %35, %41 ]
  %44 = phi double [ %60, %42 ], [ %36, %41 ]
  %45 = phi double [ %57, %42 ], [ %37, %41 ]
  %46 = phi double [ %54, %42 ], [ %38, %41 ]
  %47 = phi double [ %51, %42 ], [ %39, %41 ]
  %48 = phi i64 [ %64, %42 ], [ %26, %41 ]
  %49 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %20, i64 %25, i64 %40, i64 %48, i64 0
  %50 = load double, double* %49, align 8, !tbaa !8
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %50, double %47)
  store double %51, double* %14, align 8, !tbaa !8
  %52 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %20, i64 %25, i64 %40, i64 %48, i64 1
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %53, double %46)
  store double %54, double* %28, align 8, !tbaa !8
  %55 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %20, i64 %25, i64 %40, i64 %48, i64 2
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %45)
  store double %57, double* %29, align 8, !tbaa !8
  %58 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %20, i64 %25, i64 %40, i64 %48, i64 3
  %59 = load double, double* %58, align 8, !tbaa !8
  %60 = tail call double @llvm.fmuladd.f64(double %59, double %59, double %44)
  store double %60, double* %30, align 8, !tbaa !8
  %61 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %20, i64 %25, i64 %40, i64 %48, i64 4
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = tail call double @llvm.fmuladd.f64(double %62, double %62, double %43)
  store double %63, double* %31, align 8, !tbaa !8
  %64 = add nsw i64 %48, 1
  %65 = icmp eq i64 %64, %32
  br i1 %65, label %66, label %42

; <label>:66:                                     ; preds = %42, %34
  %67 = phi double [ %35, %34 ], [ %63, %42 ]
  %68 = phi double [ %36, %34 ], [ %60, %42 ]
  %69 = phi double [ %37, %34 ], [ %57, %42 ]
  %70 = phi double [ %38, %34 ], [ %54, %42 ]
  %71 = phi double [ %39, %34 ], [ %51, %42 ]
  %72 = add nsw i64 %40, 1
  %73 = icmp eq i64 %72, %33
  br i1 %73, label %74, label %34

; <label>:74:                                     ; preds = %66, %19, %8
  tail call void @_Z7barrierj(i32 1) #6
  %75 = icmp eq i32 %17, 0
  br i1 %75, label %76, label %149

; <label>:76:                                     ; preds = %74
  %77 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %78 = icmp ugt i64 %77, 1
  br i1 %78, label %86, label %79

; <label>:79:                                     ; preds = %76
  %80 = bitcast double* %14 to i64*
  %81 = load i64, i64* %80, align 8, !tbaa !8
  %82 = getelementptr inbounds double, double* %14, i64 1
  %83 = getelementptr inbounds double, double* %14, i64 2
  %84 = getelementptr inbounds double, double* %14, i64 3
  %85 = getelementptr inbounds double, double* %14, i64 4
  br label %123

; <label>:86:                                     ; preds = %76
  %87 = load double, double* %14, align 8, !tbaa !8
  %88 = getelementptr inbounds double, double* %14, i64 1
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds double, double* %14, i64 2
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds double, double* %14, i64 3
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = getelementptr inbounds double, double* %14, i64 4
  %95 = load double, double* %94, align 8, !tbaa !8
  br label %96

; <label>:96:                                     ; preds = %96, %86
  %97 = phi double [ %95, %86 ], [ %118, %96 ]
  %98 = phi double [ %93, %86 ], [ %115, %96 ]
  %99 = phi double [ %91, %86 ], [ %112, %96 ]
  %100 = phi double [ %89, %86 ], [ %109, %96 ]
  %101 = phi double [ %87, %86 ], [ %106, %96 ]
  %102 = phi i64 [ 1, %86 ], [ %119, %96 ]
  %103 = mul nuw nsw i64 %102, 5
  %104 = getelementptr inbounds double, double* %2, i64 %103
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = fadd double %105, %101
  store double %106, double* %14, align 8, !tbaa !8
  %107 = getelementptr inbounds double, double* %104, i64 1
  %108 = load double, double* %107, align 8, !tbaa !8
  %109 = fadd double %108, %100
  store double %109, double* %88, align 8, !tbaa !8
  %110 = getelementptr inbounds double, double* %104, i64 2
  %111 = load double, double* %110, align 8, !tbaa !8
  %112 = fadd double %111, %99
  store double %112, double* %90, align 8, !tbaa !8
  %113 = getelementptr inbounds double, double* %104, i64 3
  %114 = load double, double* %113, align 8, !tbaa !8
  %115 = fadd double %114, %98
  store double %115, double* %92, align 8, !tbaa !8
  %116 = getelementptr inbounds double, double* %104, i64 4
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fadd double %117, %97
  store double %118, double* %94, align 8, !tbaa !8
  %119 = add nuw nsw i64 %102, 1
  %120 = icmp eq i64 %119, %77
  br i1 %120, label %121, label %96

; <label>:121:                                    ; preds = %96
  %122 = bitcast double %106 to i64
  br label %123

; <label>:123:                                    ; preds = %79, %121
  %124 = phi double* [ %85, %79 ], [ %94, %121 ]
  %125 = phi double* [ %84, %79 ], [ %92, %121 ]
  %126 = phi double* [ %83, %79 ], [ %90, %121 ]
  %127 = phi double* [ %82, %79 ], [ %88, %121 ]
  %128 = phi i64 [ %81, %79 ], [ %122, %121 ]
  %129 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %130 = mul i64 %129, 5
  %131 = getelementptr inbounds double, double* %1, i64 %130
  %132 = bitcast double* %131 to i64*
  store i64 %128, i64* %132, align 8, !tbaa !8
  %133 = bitcast double* %127 to i64*
  %134 = load i64, i64* %133, align 8, !tbaa !8
  %135 = getelementptr inbounds double, double* %131, i64 1
  %136 = bitcast double* %135 to i64*
  store i64 %134, i64* %136, align 8, !tbaa !8
  %137 = bitcast double* %126 to i64*
  %138 = load i64, i64* %137, align 8, !tbaa !8
  %139 = getelementptr inbounds double, double* %131, i64 2
  %140 = bitcast double* %139 to i64*
  store i64 %138, i64* %140, align 8, !tbaa !8
  %141 = bitcast double* %125 to i64*
  %142 = load i64, i64* %141, align 8, !tbaa !8
  %143 = getelementptr inbounds double, double* %131, i64 3
  %144 = bitcast double* %143 to i64*
  store i64 %142, i64* %144, align 8, !tbaa !8
  %145 = bitcast double* %124 to i64*
  %146 = load i64, i64* %145, align 8, !tbaa !8
  %147 = getelementptr inbounds double, double* %131, i64 4
  %148 = bitcast double* %147 to i64*
  store i64 %146, i64* %148, align 8, !tbaa !8
  br label %149

; <label>:149:                                    ; preds = %123, %74
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
!4 = !{i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
