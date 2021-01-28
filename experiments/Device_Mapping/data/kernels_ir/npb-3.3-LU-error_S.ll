; ModuleID = 'npb-LU-error.cl'
source_filename = "npb-LU-error.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @error(double* nocapture readonly, double*, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = alloca [5 x double], align 16
  %9 = bitcast [5 x double]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #6
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #7
  %11 = add i64 %10, 1
  %12 = tail call i64 @_Z12get_local_idj(i32 0) #7
  %13 = mul i64 %12, 21474836480
  %14 = ashr exact i64 %13, 32
  %15 = getelementptr inbounds double, double* %3, i64 %14
  %16 = bitcast double* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 40, i32 8, i1 false)
  %17 = trunc i64 %11 to i32
  %18 = trunc i64 %12 to i32
  %19 = add nsw i32 %6, -1
  %20 = icmp sgt i32 %19, %17
  br i1 %20, label %21, label %83

; <label>:21:                                     ; preds = %7
  %22 = bitcast double* %0 to [13 x [13 x [5 x double]]]*
  %23 = icmp sgt i32 %5, 2
  br i1 %23, label %24, label %83

; <label>:24:                                     ; preds = %21
  %25 = add nsw i32 %5, -1
  %26 = add nsw i32 %4, -1
  %27 = icmp sgt i32 %4, 2
  %28 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 0
  %29 = shl i64 %11, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 1
  %32 = getelementptr inbounds double, double* %15, i64 1
  %33 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 2
  %34 = getelementptr inbounds double, double* %15, i64 2
  %35 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 3
  %36 = getelementptr inbounds double, double* %15, i64 3
  %37 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 4
  %38 = getelementptr inbounds double, double* %15, i64 4
  %39 = zext i32 %26 to i64
  %40 = zext i32 %25 to i64
  br label %41

; <label>:41:                                     ; preds = %80, %24
  %42 = phi i64 [ 1, %24 ], [ %81, %80 ]
  br i1 %27, label %43, label %80

; <label>:43:                                     ; preds = %41
  %44 = trunc i64 %42 to i32
  br label %45

; <label>:45:                                     ; preds = %45, %43
  %46 = phi i64 [ 1, %43 ], [ %78, %45 ]
  %47 = trunc i64 %46 to i32
  call void @exact(i32 %47, i32 %44, i32 %17, double* nonnull %28, double* %1) #6
  %48 = load double, double* %28, align 16, !tbaa !8
  %49 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %30, i64 %42, i64 %46, i64 0
  %50 = load double, double* %49, align 8, !tbaa !8
  %51 = fsub double %48, %50
  %52 = load double, double* %15, align 8, !tbaa !8
  %53 = call double @llvm.fmuladd.f64(double %51, double %51, double %52)
  store double %53, double* %15, align 8, !tbaa !8
  %54 = load double, double* %31, align 8, !tbaa !8
  %55 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %30, i64 %42, i64 %46, i64 1
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = fsub double %54, %56
  %58 = load double, double* %32, align 8, !tbaa !8
  %59 = call double @llvm.fmuladd.f64(double %57, double %57, double %58)
  store double %59, double* %32, align 8, !tbaa !8
  %60 = load double, double* %33, align 16, !tbaa !8
  %61 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %30, i64 %42, i64 %46, i64 2
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fsub double %60, %62
  %64 = load double, double* %34, align 8, !tbaa !8
  %65 = call double @llvm.fmuladd.f64(double %63, double %63, double %64)
  store double %65, double* %34, align 8, !tbaa !8
  %66 = load double, double* %35, align 8, !tbaa !8
  %67 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %30, i64 %42, i64 %46, i64 3
  %68 = load double, double* %67, align 8, !tbaa !8
  %69 = fsub double %66, %68
  %70 = load double, double* %36, align 8, !tbaa !8
  %71 = call double @llvm.fmuladd.f64(double %69, double %69, double %70)
  store double %71, double* %36, align 8, !tbaa !8
  %72 = load double, double* %37, align 16, !tbaa !8
  %73 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %22, i64 %30, i64 %42, i64 %46, i64 4
  %74 = load double, double* %73, align 8, !tbaa !8
  %75 = fsub double %72, %74
  %76 = load double, double* %38, align 8, !tbaa !8
  %77 = call double @llvm.fmuladd.f64(double %75, double %75, double %76)
  store double %77, double* %38, align 8, !tbaa !8
  %78 = add nuw nsw i64 %46, 1
  %79 = icmp eq i64 %78, %39
  br i1 %79, label %80, label %45

; <label>:80:                                     ; preds = %45, %41
  %81 = add nuw nsw i64 %42, 1
  %82 = icmp eq i64 %81, %40
  br i1 %82, label %83, label %41

; <label>:83:                                     ; preds = %80, %21, %7
  call void @_Z7barrierj(i32 1) #8
  %84 = icmp eq i32 %18, 0
  br i1 %84, label %85, label %158

; <label>:85:                                     ; preds = %83
  %86 = call i64 @_Z14get_local_sizej(i32 0) #7
  %87 = icmp ugt i64 %86, 1
  br i1 %87, label %95, label %88

; <label>:88:                                     ; preds = %85
  %89 = bitcast double* %15 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !8
  %91 = getelementptr inbounds double, double* %15, i64 1
  %92 = getelementptr inbounds double, double* %15, i64 2
  %93 = getelementptr inbounds double, double* %15, i64 3
  %94 = getelementptr inbounds double, double* %15, i64 4
  br label %132

; <label>:95:                                     ; preds = %85
  %96 = load double, double* %15, align 8, !tbaa !8
  %97 = getelementptr inbounds double, double* %15, i64 1
  %98 = load double, double* %97, align 8, !tbaa !8
  %99 = getelementptr inbounds double, double* %15, i64 2
  %100 = load double, double* %99, align 8, !tbaa !8
  %101 = getelementptr inbounds double, double* %15, i64 3
  %102 = load double, double* %101, align 8, !tbaa !8
  %103 = getelementptr inbounds double, double* %15, i64 4
  %104 = load double, double* %103, align 8, !tbaa !8
  br label %105

; <label>:105:                                    ; preds = %105, %95
  %106 = phi double [ %104, %95 ], [ %127, %105 ]
  %107 = phi double [ %102, %95 ], [ %124, %105 ]
  %108 = phi double [ %100, %95 ], [ %121, %105 ]
  %109 = phi double [ %98, %95 ], [ %118, %105 ]
  %110 = phi double [ %96, %95 ], [ %115, %105 ]
  %111 = phi i64 [ 1, %95 ], [ %128, %105 ]
  %112 = mul nuw nsw i64 %111, 5
  %113 = getelementptr inbounds double, double* %3, i64 %112
  %114 = load double, double* %113, align 8, !tbaa !8
  %115 = fadd double %114, %110
  store double %115, double* %15, align 8, !tbaa !8
  %116 = getelementptr inbounds double, double* %113, i64 1
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fadd double %117, %109
  store double %118, double* %97, align 8, !tbaa !8
  %119 = getelementptr inbounds double, double* %113, i64 2
  %120 = load double, double* %119, align 8, !tbaa !8
  %121 = fadd double %120, %108
  store double %121, double* %99, align 8, !tbaa !8
  %122 = getelementptr inbounds double, double* %113, i64 3
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = fadd double %123, %107
  store double %124, double* %101, align 8, !tbaa !8
  %125 = getelementptr inbounds double, double* %113, i64 4
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = fadd double %126, %106
  store double %127, double* %103, align 8, !tbaa !8
  %128 = add nuw nsw i64 %111, 1
  %129 = icmp eq i64 %128, %86
  br i1 %129, label %130, label %105

; <label>:130:                                    ; preds = %105
  %131 = bitcast double %115 to i64
  br label %132

; <label>:132:                                    ; preds = %88, %130
  %133 = phi double* [ %94, %88 ], [ %103, %130 ]
  %134 = phi double* [ %93, %88 ], [ %101, %130 ]
  %135 = phi double* [ %92, %88 ], [ %99, %130 ]
  %136 = phi double* [ %91, %88 ], [ %97, %130 ]
  %137 = phi i64 [ %90, %88 ], [ %131, %130 ]
  %138 = call i64 @_Z12get_group_idj(i32 0) #7
  %139 = mul i64 %138, 5
  %140 = getelementptr inbounds double, double* %2, i64 %139
  %141 = bitcast double* %140 to i64*
  store i64 %137, i64* %141, align 8, !tbaa !8
  %142 = bitcast double* %136 to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !8
  %144 = getelementptr inbounds double, double* %140, i64 1
  %145 = bitcast double* %144 to i64*
  store i64 %143, i64* %145, align 8, !tbaa !8
  %146 = bitcast double* %135 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !8
  %148 = getelementptr inbounds double, double* %140, i64 2
  %149 = bitcast double* %148 to i64*
  store i64 %147, i64* %149, align 8, !tbaa !8
  %150 = bitcast double* %134 to i64*
  %151 = load i64, i64* %150, align 8, !tbaa !8
  %152 = getelementptr inbounds double, double* %140, i64 3
  %153 = bitcast double* %152 to i64*
  store i64 %151, i64* %153, align 8, !tbaa !8
  %154 = bitcast double* %133 to i64*
  %155 = load i64, i64* %154, align 8, !tbaa !8
  %156 = getelementptr inbounds double, double* %140, i64 4
  %157 = bitcast double* %156 to i64*
  store i64 %155, i64* %157, align 8, !tbaa !8
  br label %158

; <label>:158:                                    ; preds = %132, %83
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

declare void @exact(i32, i32, i32, double*, double*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
