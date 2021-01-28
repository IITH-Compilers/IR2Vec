; ModuleID = 'npb-BT-error_norm.cl'
source_filename = "npb-BT-error_norm.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @error_norm(double* nocapture readonly, double*, double* nocapture, double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
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
  %19 = icmp slt i32 %17, %6
  br i1 %19, label %20, label %86

; <label>:20:                                     ; preds = %7
  %21 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %22 = sitofp i32 %17 to double
  %23 = fmul double %22, 0x3F8446F86562D9FB
  %24 = icmp sgt i32 %5, 0
  br i1 %24, label %25, label %86

; <label>:25:                                     ; preds = %20
  %26 = icmp sgt i32 %4, 0
  %27 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 0
  %28 = shl i64 %11, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 1
  %31 = getelementptr inbounds double, double* %15, i64 1
  %32 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 2
  %33 = getelementptr inbounds double, double* %15, i64 2
  %34 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 3
  %35 = getelementptr inbounds double, double* %15, i64 3
  %36 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 4
  %37 = getelementptr inbounds double, double* %15, i64 4
  %38 = zext i32 %4 to i64
  %39 = zext i32 %5 to i64
  br label %40

; <label>:40:                                     ; preds = %83, %25
  %41 = phi i64 [ 0, %25 ], [ %84, %83 ]
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fmul double %43, 0x3F8446F86562D9FB
  br i1 %26, label %45, label %83

; <label>:45:                                     ; preds = %40
  br label %46

; <label>:46:                                     ; preds = %45, %46
  %47 = phi i64 [ %81, %46 ], [ 0, %45 ]
  %48 = trunc i64 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fmul double %49, 0x3F8446F86562D9FB
  call void @exact_solution(double %50, double %44, double %23, double* nonnull %27, double* %1) #6
  %51 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %21, i64 %29, i64 %41, i64 %47, i64 0
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = load double, double* %27, align 16, !tbaa !8
  %54 = fsub double %52, %53
  %55 = load double, double* %15, align 8, !tbaa !8
  %56 = call double @llvm.fmuladd.f64(double %54, double %54, double %55)
  store double %56, double* %15, align 8, !tbaa !8
  %57 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %21, i64 %29, i64 %41, i64 %47, i64 1
  %58 = load double, double* %57, align 8, !tbaa !8
  %59 = load double, double* %30, align 8, !tbaa !8
  %60 = fsub double %58, %59
  %61 = load double, double* %31, align 8, !tbaa !8
  %62 = call double @llvm.fmuladd.f64(double %60, double %60, double %61)
  store double %62, double* %31, align 8, !tbaa !8
  %63 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %21, i64 %29, i64 %41, i64 %47, i64 2
  %64 = load double, double* %63, align 8, !tbaa !8
  %65 = load double, double* %32, align 16, !tbaa !8
  %66 = fsub double %64, %65
  %67 = load double, double* %33, align 8, !tbaa !8
  %68 = call double @llvm.fmuladd.f64(double %66, double %66, double %67)
  store double %68, double* %33, align 8, !tbaa !8
  %69 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %21, i64 %29, i64 %41, i64 %47, i64 3
  %70 = load double, double* %69, align 8, !tbaa !8
  %71 = load double, double* %34, align 8, !tbaa !8
  %72 = fsub double %70, %71
  %73 = load double, double* %35, align 8, !tbaa !8
  %74 = call double @llvm.fmuladd.f64(double %72, double %72, double %73)
  store double %74, double* %35, align 8, !tbaa !8
  %75 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %21, i64 %29, i64 %41, i64 %47, i64 4
  %76 = load double, double* %75, align 8, !tbaa !8
  %77 = load double, double* %36, align 16, !tbaa !8
  %78 = fsub double %76, %77
  %79 = load double, double* %37, align 8, !tbaa !8
  %80 = call double @llvm.fmuladd.f64(double %78, double %78, double %79)
  store double %80, double* %37, align 8, !tbaa !8
  %81 = add nuw nsw i64 %47, 1
  %82 = icmp eq i64 %81, %38
  br i1 %82, label %83, label %46

; <label>:83:                                     ; preds = %46, %40
  %84 = add nuw nsw i64 %41, 1
  %85 = icmp eq i64 %84, %39
  br i1 %85, label %86, label %40

; <label>:86:                                     ; preds = %83, %20, %7
  call void @_Z7barrierj(i32 1) #8
  %87 = icmp eq i32 %18, 0
  br i1 %87, label %88, label %161

; <label>:88:                                     ; preds = %86
  %89 = call i64 @_Z14get_local_sizej(i32 0) #7
  %90 = icmp ugt i64 %89, 1
  br i1 %90, label %98, label %91

; <label>:91:                                     ; preds = %88
  %92 = bitcast double* %15 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !8
  %94 = getelementptr inbounds double, double* %15, i64 1
  %95 = getelementptr inbounds double, double* %15, i64 2
  %96 = getelementptr inbounds double, double* %15, i64 3
  %97 = getelementptr inbounds double, double* %15, i64 4
  br label %135

; <label>:98:                                     ; preds = %88
  %99 = load double, double* %15, align 8, !tbaa !8
  %100 = getelementptr inbounds double, double* %15, i64 1
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = getelementptr inbounds double, double* %15, i64 2
  %103 = load double, double* %102, align 8, !tbaa !8
  %104 = getelementptr inbounds double, double* %15, i64 3
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds double, double* %15, i64 4
  %107 = load double, double* %106, align 8, !tbaa !8
  br label %108

; <label>:108:                                    ; preds = %108, %98
  %109 = phi double [ %107, %98 ], [ %130, %108 ]
  %110 = phi double [ %105, %98 ], [ %127, %108 ]
  %111 = phi double [ %103, %98 ], [ %124, %108 ]
  %112 = phi double [ %101, %98 ], [ %121, %108 ]
  %113 = phi double [ %99, %98 ], [ %118, %108 ]
  %114 = phi i64 [ 1, %98 ], [ %131, %108 ]
  %115 = mul nuw nsw i64 %114, 5
  %116 = getelementptr inbounds double, double* %3, i64 %115
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = fadd double %117, %113
  store double %118, double* %15, align 8, !tbaa !8
  %119 = getelementptr inbounds double, double* %116, i64 1
  %120 = load double, double* %119, align 8, !tbaa !8
  %121 = fadd double %120, %112
  store double %121, double* %100, align 8, !tbaa !8
  %122 = getelementptr inbounds double, double* %116, i64 2
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = fadd double %123, %111
  store double %124, double* %102, align 8, !tbaa !8
  %125 = getelementptr inbounds double, double* %116, i64 3
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = fadd double %126, %110
  store double %127, double* %104, align 8, !tbaa !8
  %128 = getelementptr inbounds double, double* %116, i64 4
  %129 = load double, double* %128, align 8, !tbaa !8
  %130 = fadd double %129, %109
  store double %130, double* %106, align 8, !tbaa !8
  %131 = add nuw nsw i64 %114, 1
  %132 = icmp eq i64 %131, %89
  br i1 %132, label %133, label %108

; <label>:133:                                    ; preds = %108
  %134 = bitcast double %118 to i64
  br label %135

; <label>:135:                                    ; preds = %91, %133
  %136 = phi double* [ %97, %91 ], [ %106, %133 ]
  %137 = phi double* [ %96, %91 ], [ %104, %133 ]
  %138 = phi double* [ %95, %91 ], [ %102, %133 ]
  %139 = phi double* [ %94, %91 ], [ %100, %133 ]
  %140 = phi i64 [ %93, %91 ], [ %134, %133 ]
  %141 = call i64 @_Z12get_group_idj(i32 0) #7
  %142 = mul i64 %141, 5
  %143 = getelementptr inbounds double, double* %2, i64 %142
  %144 = bitcast double* %143 to i64*
  store i64 %140, i64* %144, align 8, !tbaa !8
  %145 = bitcast double* %139 to i64*
  %146 = load i64, i64* %145, align 8, !tbaa !8
  %147 = getelementptr inbounds double, double* %143, i64 1
  %148 = bitcast double* %147 to i64*
  store i64 %146, i64* %148, align 8, !tbaa !8
  %149 = bitcast double* %138 to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !8
  %151 = getelementptr inbounds double, double* %143, i64 2
  %152 = bitcast double* %151 to i64*
  store i64 %150, i64* %152, align 8, !tbaa !8
  %153 = bitcast double* %137 to i64*
  %154 = load i64, i64* %153, align 8, !tbaa !8
  %155 = getelementptr inbounds double, double* %143, i64 3
  %156 = bitcast double* %155 to i64*
  store i64 %154, i64* %156, align 8, !tbaa !8
  %157 = bitcast double* %136 to i64*
  %158 = load i64, i64* %157, align 8, !tbaa !8
  %159 = getelementptr inbounds double, double* %143, i64 4
  %160 = bitcast double* %159 to i64*
  store i64 %158, i64* %160, align 8, !tbaa !8
  br label %161

; <label>:161:                                    ; preds = %135, %86
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

declare void @exact_solution(double, double, double, double*, double*) local_unnamed_addr #3

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
!4 = !{i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"const", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
