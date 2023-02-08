; ModuleID = 'npb-MG-kernel_resid.cl'
source_filename = "npb-MG-kernel_resid.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@kernel_resid.u1 = internal unnamed_addr global [1024 x double] undef, align 16
@kernel_resid.u2 = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_resid(double* nocapture, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %10 = add i64 %9, 1
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, %4
  br i1 %17, label %18, label %89

; <label>:18:                                     ; preds = %8
  %19 = mul i32 %5, %4
  %20 = mul i32 %19, %11
  %21 = add nsw i32 %14, -1
  %22 = mul nsw i32 %21, %4
  %23 = add i32 %20, %7
  %24 = add i32 %23, %22
  %25 = add nsw i32 %14, 1
  %26 = mul nsw i32 %25, %4
  %27 = add i32 %23, %26
  %28 = add nsw i32 %11, -1
  %29 = mul i32 %19, %28
  %30 = mul nsw i32 %14, %4
  %31 = add i32 %30, %7
  %32 = add i32 %31, %29
  %33 = add nsw i32 %11, 1
  %34 = mul i32 %19, %33
  %35 = add i32 %31, %34
  %36 = add i32 %22, %7
  %37 = add i32 %36, %29
  %38 = add i32 %26, %7
  %39 = add i32 %38, %29
  %40 = add i32 %36, %34
  %41 = add i32 %38, %34
  %42 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %43

; <label>:43:                                     ; preds = %18, %43
  %44 = phi i32 [ %16, %18 ], [ %87, %43 ]
  %45 = add i32 %24, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %1, i64 %46
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = add i32 %27, %44
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %1, i64 %50
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = fadd double %48, %52
  %54 = add i32 %32, %44
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %1, i64 %55
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = fadd double %53, %57
  %59 = add i32 %35, %44
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %1, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fadd double %58, %62
  %64 = sext i32 %44 to i64
  %65 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u1, i64 0, i64 %64
  store double %63, double* %65, align 8, !tbaa !8
  %66 = add i32 %37, %44
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %1, i64 %67
  %69 = load double, double* %68, align 8, !tbaa !8
  %70 = add i32 %39, %44
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %1, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !8
  %74 = fadd double %69, %73
  %75 = add i32 %40, %44
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %1, i64 %76
  %78 = load double, double* %77, align 8, !tbaa !8
  %79 = fadd double %74, %78
  %80 = add i32 %41, %44
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %1, i64 %81
  %83 = load double, double* %82, align 8, !tbaa !8
  %84 = fadd double %79, %83
  %85 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u2, i64 0, i64 %64
  store double %84, double* %85, align 8, !tbaa !8
  %86 = add i64 %42, %64
  %87 = trunc i64 %86 to i32
  %88 = icmp slt i32 %87, %4
  br i1 %88, label %43, label %89

; <label>:89:                                     ; preds = %43, %8
  tail call void @_Z7barrierj(i32 1) #5
  %90 = add nsw i32 %16, 1
  %91 = add nsw i32 %4, -1
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %140

; <label>:93:                                     ; preds = %89
  %94 = mul nsw i32 %11, %5
  %95 = add i32 %94, %14
  %96 = mul i32 %95, %4
  %97 = add i32 %96, %7
  %98 = getelementptr inbounds double, double* %3, i64 2
  %99 = getelementptr inbounds double, double* %3, i64 3
  %100 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %101

; <label>:101:                                    ; preds = %93, %101
  %102 = phi i32 [ %90, %93 ], [ %138, %101 ]
  %103 = add i32 %97, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %2, i64 %104
  %106 = load double, double* %105, align 8, !tbaa !8
  %107 = load double, double* %3, align 8, !tbaa !8
  %108 = getelementptr inbounds double, double* %1, i64 %104
  %109 = load double, double* %108, align 8, !tbaa !8
  %110 = fsub double -0.000000e+00, %107
  %111 = tail call double @llvm.fmuladd.f64(double %110, double %109, double %106)
  %112 = load double, double* %98, align 8, !tbaa !8
  %113 = sext i32 %102 to i64
  %114 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u2, i64 0, i64 %113
  %115 = load double, double* %114, align 8, !tbaa !8
  %116 = add nsw i32 %102, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u1, i64 0, i64 %117
  %119 = load double, double* %118, align 8, !tbaa !8
  %120 = fadd double %115, %119
  %121 = add nsw i32 %102, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u1, i64 0, i64 %122
  %124 = load double, double* %123, align 8, !tbaa !8
  %125 = fadd double %120, %124
  %126 = fsub double -0.000000e+00, %112
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %125, double %111)
  %128 = load double, double* %99, align 8, !tbaa !8
  %129 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u2, i64 0, i64 %117
  %130 = load double, double* %129, align 8, !tbaa !8
  %131 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_resid.u2, i64 0, i64 %122
  %132 = load double, double* %131, align 8, !tbaa !8
  %133 = fadd double %130, %132
  %134 = fsub double -0.000000e+00, %128
  %135 = tail call double @llvm.fmuladd.f64(double %134, double %133, double %127)
  %136 = getelementptr inbounds double, double* %0, i64 %104
  store double %135, double* %136, align 8, !tbaa !8
  %137 = add i64 %100, %113
  %138 = trunc i64 %137 to i32
  %139 = icmp sgt i32 %91, %138
  br i1 %139, label %101, label %140

; <label>:140:                                    ; preds = %101, %89
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
