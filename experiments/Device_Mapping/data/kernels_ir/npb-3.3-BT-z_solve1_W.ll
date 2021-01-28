; ModuleID = 'npb-BT-z_solve1.cl'
source_filename = "npb-BT-z_solve1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @z_solve1(double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double*, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %10 = add i64 %9, 1
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %16 = add nsw i32 %6, -2
  %17 = icmp slt i32 %16, %11
  br i1 %17, label %172, label %18

; <label>:18:                                     ; preds = %8
  %19 = trunc i64 %15 to i32
  %20 = add nsw i32 %5, -2
  %21 = icmp sge i32 %20, %14
  %22 = icmp slt i32 %19, %7
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %172

; <label>:24:                                     ; preds = %18
  %25 = bitcast double* %0 to [25 x [25 x double]]*
  %26 = bitcast double* %1 to [25 x [25 x double]]*
  %27 = bitcast double* %2 to [25 x [25 x [5 x double]]]*
  %28 = add nsw i32 %11, -1
  %29 = mul nsw i32 %28, %20
  %30 = add nsw i32 %14, -1
  %31 = add nsw i32 %30, %29
  %32 = mul i32 %31, 625
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %3, i64 %33
  %35 = bitcast double* %34 to [5 x [5 x double]]*
  %36 = getelementptr inbounds double, double* %4, i64 %33
  %37 = bitcast double* %36 to [5 x [5 x double]]*
  %38 = shl i64 %15, 32
  %39 = ashr exact i64 %38, 32
  %40 = shl i64 %10, 32
  %41 = ashr exact i64 %40, 32
  %42 = shl i64 %13, 32
  %43 = ashr exact i64 %42, 32
  %44 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %27, i64 %39, i64 %41, i64 %43, i64 0
  %45 = load double, double* %44, align 8, !tbaa !8
  %46 = fdiv double 1.000000e+00, %45
  %47 = fmul double %46, %46
  %48 = fmul double %46, %47
  %49 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %27, i64 %39, i64 %41, i64 %43, i64 1
  %50 = load double, double* %49, align 8, !tbaa !8
  %51 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %27, i64 %39, i64 %41, i64 %43, i64 2
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %27, i64 %39, i64 %41, i64 %43, i64 3
  %54 = load double, double* %53, align 8, !tbaa !8
  %55 = getelementptr inbounds [25 x [25 x [5 x double]]], [25 x [25 x [5 x double]]]* %27, i64 %39, i64 %41, i64 %43, i64 4
  %56 = load double, double* %55, align 8, !tbaa !8
  %57 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 0, i64 0
  store double 0.000000e+00, double* %57, align 8, !tbaa !8
  %58 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 1, i64 0
  store double 0.000000e+00, double* %58, align 8, !tbaa !8
  %59 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 2, i64 0
  store double 0.000000e+00, double* %59, align 8, !tbaa !8
  %60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 3, i64 0
  store double 1.000000e+00, double* %60, align 8, !tbaa !8
  %61 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 4, i64 0
  store double 0.000000e+00, double* %61, align 8, !tbaa !8
  %62 = fmul double %50, %54
  %63 = fmul double %47, %62
  %64 = fsub double -0.000000e+00, %63
  %65 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 0, i64 1
  store double %64, double* %65, align 8, !tbaa !8
  %66 = fmul double %46, %54
  %67 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 1, i64 1
  store double %66, double* %67, align 8, !tbaa !8
  %68 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 2, i64 1
  store double 0.000000e+00, double* %68, align 8, !tbaa !8
  %69 = fmul double %50, %46
  %70 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 3, i64 1
  store double %69, double* %70, align 8, !tbaa !8
  %71 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 4, i64 1
  store double 0.000000e+00, double* %71, align 8, !tbaa !8
  %72 = fmul double %52, %54
  %73 = fmul double %47, %72
  %74 = fsub double -0.000000e+00, %73
  %75 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 0, i64 2
  store double %74, double* %75, align 8, !tbaa !8
  %76 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 1, i64 2
  store double 0.000000e+00, double* %76, align 8, !tbaa !8
  %77 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 2, i64 2
  store double %66, double* %77, align 8, !tbaa !8
  %78 = fmul double %46, %52
  %79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 3, i64 2
  store double %78, double* %79, align 8, !tbaa !8
  %80 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 4, i64 2
  store double 0.000000e+00, double* %80, align 8, !tbaa !8
  %81 = fmul double %54, %54
  %82 = fmul double %47, %81
  %83 = fsub double -0.000000e+00, %82
  %84 = getelementptr inbounds [25 x [25 x double]], [25 x [25 x double]]* %25, i64 %39, i64 %41, i64 %43
  %85 = load double, double* %84, align 8, !tbaa !8
  %86 = tail call double @llvm.fmuladd.f64(double %85, double 4.000000e-01, double %83)
  %87 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 0, i64 3
  store double %86, double* %87, align 8, !tbaa !8
  %88 = fmul double %50, -4.000000e-01
  %89 = fmul double %46, %88
  %90 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 1, i64 3
  store double %89, double* %90, align 8, !tbaa !8
  %91 = fmul double %52, -4.000000e-01
  %92 = fmul double %46, %91
  %93 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 2, i64 3
  store double %92, double* %93, align 8, !tbaa !8
  %94 = fmul double %54, 1.600000e+00
  %95 = fmul double %46, %94
  %96 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 3, i64 3
  store double %95, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 4, i64 3
  store double 4.000000e-01, double* %97, align 8, !tbaa !8
  %98 = getelementptr inbounds [25 x [25 x double]], [25 x [25 x double]]* %26, i64 %39, i64 %41, i64 %43
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = fmul double %56, 1.400000e+00
  %101 = fsub double -0.000000e+00, %100
  %102 = tail call double @llvm.fmuladd.f64(double %99, double 8.000000e-01, double %101)
  %103 = fmul double %54, %102
  %104 = fmul double %47, %103
  %105 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 0, i64 4
  store double %104, double* %105, align 8, !tbaa !8
  %106 = fmul double %62, -4.000000e-01
  %107 = fmul double %47, %106
  %108 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 1, i64 4
  store double %107, double* %108, align 8, !tbaa !8
  %109 = fmul double %72, -4.000000e-01
  %110 = fmul double %47, %109
  %111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 2, i64 4
  store double %110, double* %111, align 8, !tbaa !8
  %112 = fmul double %46, %56
  %113 = load double, double* %84, align 8, !tbaa !8
  %114 = tail call double @llvm.fmuladd.f64(double %81, double %47, double %113)
  %115 = fmul double %114, 4.000000e-01
  %116 = fsub double -0.000000e+00, %115
  %117 = tail call double @llvm.fmuladd.f64(double %112, double 1.400000e+00, double %116)
  %118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 3, i64 4
  store double %117, double* %118, align 8, !tbaa !8
  %119 = fmul double %54, 1.400000e+00
  %120 = fmul double %46, %119
  %121 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %35, i64 %39, i64 4, i64 4
  store double %120, double* %121, align 8, !tbaa !8
  %122 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 0, i64 0
  store double 0.000000e+00, double* %122, align 8, !tbaa !8
  %123 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 1, i64 0
  store double 0.000000e+00, double* %123, align 8, !tbaa !8
  %124 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 2, i64 0
  store double 0.000000e+00, double* %124, align 8, !tbaa !8
  %125 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 3, i64 0
  store double 0.000000e+00, double* %125, align 8, !tbaa !8
  %126 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 4, i64 0
  store double 0.000000e+00, double* %126, align 8, !tbaa !8
  %127 = fmul double %47, -1.000000e-01
  %128 = fmul double %50, %127
  %129 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 0, i64 1
  store double %128, double* %129, align 8, !tbaa !8
  %130 = fmul double %46, 1.000000e-01
  %131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 1, i64 1
  store double %130, double* %131, align 8, !tbaa !8
  %132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 2, i64 1
  store double 0.000000e+00, double* %132, align 8, !tbaa !8
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 3, i64 1
  store double 0.000000e+00, double* %133, align 8, !tbaa !8
  %134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 4, i64 1
  store double 0.000000e+00, double* %134, align 8, !tbaa !8
  %135 = fmul double %52, %127
  %136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 0, i64 2
  store double %135, double* %136, align 8, !tbaa !8
  %137 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 1, i64 2
  store double 0.000000e+00, double* %137, align 8, !tbaa !8
  %138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 2, i64 2
  store double %130, double* %138, align 8, !tbaa !8
  %139 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 3, i64 2
  store double 0.000000e+00, double* %139, align 8, !tbaa !8
  %140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 4, i64 2
  store double 0.000000e+00, double* %140, align 8, !tbaa !8
  %141 = fmul double %47, 0xBFC1111111111111
  %142 = fmul double %141, %54
  %143 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 0, i64 3
  store double %142, double* %143, align 8, !tbaa !8
  %144 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 1, i64 3
  store double 0.000000e+00, double* %144, align 8, !tbaa !8
  %145 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 2, i64 3
  store double 0.000000e+00, double* %145, align 8, !tbaa !8
  %146 = fmul double %46, 0x3FC1111111111111
  %147 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 3, i64 3
  store double %146, double* %147, align 8, !tbaa !8
  %148 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 4, i64 3
  store double 0.000000e+00, double* %148, align 8, !tbaa !8
  %149 = fmul double %48, 0x3FB89374BC6A7EF8
  %150 = fmul double %50, %50
  %151 = fmul double %48, 0xBFB89374BC6A7EF8
  %152 = fmul double %52, %52
  %153 = fmul double %152, %151
  %154 = fsub double -0.000000e+00, %153
  %155 = tail call double @llvm.fmuladd.f64(double %149, double %150, double %154)
  %156 = fmul double %48, 0x3FB00AEC33E1F670
  %157 = tail call double @llvm.fmuladd.f64(double %156, double %81, double %155)
  %158 = fmul double %47, 0x3FC916872B020C49
  %159 = fsub double -0.000000e+00, %158
  %160 = tail call double @llvm.fmuladd.f64(double %159, double %56, double %157)
  %161 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 0, i64 4
  store double %160, double* %161, align 8, !tbaa !8
  %162 = fmul double %47, 0xBFB89374BC6A7EF8
  %163 = fmul double %50, %162
  %164 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 1, i64 4
  store double %163, double* %164, align 8, !tbaa !8
  %165 = fmul double %52, %162
  %166 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 2, i64 4
  store double %165, double* %166, align 8, !tbaa !8
  %167 = fmul double %47, 0xBFB00AEC33E1F670
  %168 = fmul double %167, %54
  %169 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 3, i64 4
  store double %168, double* %169, align 8, !tbaa !8
  %170 = fmul double %46, 0x3FC916872B020C49
  %171 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %39, i64 4, i64 4
  store double %170, double* %171, align 8, !tbaa !8
  br label %172

; <label>:172:                                    ; preds = %8, %18, %24
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
