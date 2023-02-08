; ModuleID = 'npb-MG-kernel_interp_1.cl'
source_filename = "npb-MG-kernel_interp_1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@kernel_interp_1.z1 = internal unnamed_addr global [1024 x double] undef, align 16
@kernel_interp_1.z2 = internal unnamed_addr global [1024 x double] undef, align 16
@kernel_interp_1.z3 = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_interp_1(double* nocapture, i32, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds double, double* %0, i64 %10
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds double, double* %0, i64 %12
  %14 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %17 = trunc i64 %16 to i32
  %18 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %19 = trunc i64 %18 to i32
  %20 = mul i32 %2, %1
  %21 = mul i32 %20, %15
  %22 = add nsw i32 %17, 1
  %23 = mul nsw i32 %22, %1
  %24 = add i32 %21, %19
  %25 = add i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %11, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !8
  %29 = mul nsw i32 %17, %1
  %30 = add nsw i32 %21, %29
  %31 = add nsw i32 %30, %19
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %11, i64 %32
  %34 = load double, double* %33, align 8, !tbaa !8
  %35 = fadd double %28, %34
  %36 = shl i64 %18, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_interp_1.z1, i64 0, i64 %37
  store double %35, double* %38, align 8, !tbaa !8
  %39 = add nsw i32 %15, 1
  %40 = mul i32 %20, %39
  %41 = add i32 %29, %19
  %42 = add i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %11, i64 %43
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = fadd double %34, %45
  %47 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_interp_1.z2, i64 0, i64 %37
  store double %46, double* %47, align 8, !tbaa !8
  %48 = add i32 %23, %19
  %49 = add i32 %48, %40
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %11, i64 %50
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = fadd double %45, %52
  %54 = fadd double %35, %53
  %55 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_interp_1.z3, i64 0, i64 %37
  store double %54, double* %55, align 8, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %56 = add nsw i32 %1, -1
  %57 = icmp sgt i32 %56, %19
  br i1 %57, label %58, label %133

; <label>:58:                                     ; preds = %9
  %59 = load double, double* %33, align 8, !tbaa !8
  %60 = shl nsw i32 %15, 1
  %61 = mul i32 %5, %4
  %62 = mul i32 %61, %60
  %63 = shl nsw i32 %17, 1
  %64 = mul nsw i32 %63, %4
  %65 = add nsw i32 %62, %64
  %66 = shl nsw i32 %19, 1
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %13, i64 %68
  %70 = load double, double* %69, align 8, !tbaa !8
  %71 = fadd double %59, %70
  store double %71, double* %69, align 8, !tbaa !8
  %72 = add nsw i32 %31, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %11, i64 %73
  %75 = load double, double* %74, align 8, !tbaa !8
  %76 = fadd double %59, %75
  %77 = or i32 %67, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %13, i64 %78
  %80 = load double, double* %79, align 8, !tbaa !8
  %81 = tail call double @llvm.fmuladd.f64(double %76, double 5.000000e-01, double %80)
  store double %81, double* %79, align 8, !tbaa !8
  %82 = load double, double* %38, align 8, !tbaa !8
  %83 = or i32 %63, 1
  %84 = mul nsw i32 %83, %4
  %85 = add i32 %66, %62
  %86 = add i32 %85, %84
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %13, i64 %87
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = tail call double @llvm.fmuladd.f64(double %82, double 5.000000e-01, double %89)
  store double %90, double* %88, align 8, !tbaa !8
  %91 = add i64 %36, 4294967296
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_interp_1.z1, i64 0, i64 %92
  %94 = load double, double* %93, align 8, !tbaa !8
  %95 = fadd double %82, %94
  %96 = add nsw i32 %86, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %13, i64 %97
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = tail call double @llvm.fmuladd.f64(double %95, double 2.500000e-01, double %99)
  store double %100, double* %98, align 8, !tbaa !8
  %101 = load double, double* %47, align 8, !tbaa !8
  %102 = or i32 %60, 1
  %103 = mul i32 %61, %102
  %104 = add i32 %66, %64
  %105 = add i32 %104, %103
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %13, i64 %106
  %108 = load double, double* %107, align 8, !tbaa !8
  %109 = tail call double @llvm.fmuladd.f64(double %101, double 5.000000e-01, double %108)
  store double %109, double* %107, align 8, !tbaa !8
  %110 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_interp_1.z2, i64 0, i64 %92
  %111 = load double, double* %110, align 8, !tbaa !8
  %112 = fadd double %101, %111
  %113 = add nsw i32 %105, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %13, i64 %114
  %116 = load double, double* %115, align 8, !tbaa !8
  %117 = tail call double @llvm.fmuladd.f64(double %112, double 2.500000e-01, double %116)
  store double %117, double* %115, align 8, !tbaa !8
  %118 = load double, double* %55, align 8, !tbaa !8
  %119 = add i32 %84, %66
  %120 = add i32 %119, %103
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %13, i64 %121
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = tail call double @llvm.fmuladd.f64(double %118, double 2.500000e-01, double %123)
  store double %124, double* %122, align 8, !tbaa !8
  %125 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_interp_1.z3, i64 0, i64 %92
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = fadd double %118, %126
  %128 = add nsw i32 %120, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %13, i64 %129
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = tail call double @llvm.fmuladd.f64(double %127, double 1.250000e-01, double %131)
  store double %132, double* %130, align 8, !tbaa !8
  br label %133

; <label>:133:                                    ; preds = %58, %9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
