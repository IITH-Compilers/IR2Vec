; ModuleID = 'npb-BT-y_solve1.cl'
source_filename = "npb-BT-y_solve1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @y_solve1(double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double* nocapture readonly, double*, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %17 = add nsw i32 %8, -2
  %18 = icmp slt i32 %17, %12
  br i1 %18, label %171, label %19

; <label>:19:                                     ; preds = %9
  %20 = trunc i64 %16 to i32
  %21 = add nsw i32 %6, -2
  %22 = icmp sge i32 %21, %15
  %23 = icmp slt i32 %20, %7
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %171

; <label>:25:                                     ; preds = %19
  %26 = bitcast double* %0 to [13 x [13 x double]]*
  %27 = bitcast double* %1 to [13 x [13 x double]]*
  %28 = bitcast double* %2 to [13 x [13 x double]]*
  %29 = bitcast double* %3 to [13 x [13 x [5 x double]]]*
  %30 = add nsw i32 %12, -1
  %31 = mul nsw i32 %30, %21
  %32 = add nsw i32 %15, -1
  %33 = add nsw i32 %32, %31
  %34 = mul i32 %33, 325
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %4, i64 %35
  %37 = bitcast double* %36 to [5 x [5 x double]]*
  %38 = getelementptr inbounds double, double* %5, i64 %35
  %39 = bitcast double* %38 to [5 x [5 x double]]*
  %40 = shl i64 %11, 32
  %41 = ashr exact i64 %40, 32
  %42 = shl i64 %16, 32
  %43 = ashr exact i64 %42, 32
  %44 = shl i64 %14, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %27, i64 %41, i64 %43, i64 %45
  %47 = load double, double* %46, align 8, !tbaa !8
  %48 = fmul double %47, %47
  %49 = fmul double %47, %48
  %50 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 %41, i64 %43, i64 %45, i64 1
  %51 = load double, double* %50, align 8, !tbaa !8
  %52 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 %41, i64 %43, i64 %45, i64 2
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 %41, i64 %43, i64 %45, i64 3
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 %41, i64 %43, i64 %45, i64 4
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 0, i64 0
  store double 0.000000e+00, double* %58, align 8, !tbaa !8
  %59 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 1, i64 0
  store double 0.000000e+00, double* %59, align 8, !tbaa !8
  %60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 2, i64 0
  store double 1.000000e+00, double* %60, align 8, !tbaa !8
  %61 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 3, i64 0
  store double 0.000000e+00, double* %61, align 8, !tbaa !8
  %62 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 4, i64 0
  store double 0.000000e+00, double* %62, align 8, !tbaa !8
  %63 = fmul double %51, %53
  %64 = fmul double %48, %63
  %65 = fsub double -0.000000e+00, %64
  %66 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 0, i64 1
  store double %65, double* %66, align 8, !tbaa !8
  %67 = fmul double %47, %53
  %68 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 1, i64 1
  store double %67, double* %68, align 8, !tbaa !8
  %69 = fmul double %47, %51
  %70 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 2, i64 1
  store double %69, double* %70, align 8, !tbaa !8
  %71 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 3, i64 1
  store double 0.000000e+00, double* %71, align 8, !tbaa !8
  %72 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 4, i64 1
  store double 0.000000e+00, double* %72, align 8, !tbaa !8
  %73 = fmul double %53, %53
  %74 = fmul double %48, %73
  %75 = fsub double -0.000000e+00, %74
  %76 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %26, i64 %41, i64 %43, i64 %45
  %77 = load double, double* %76, align 8, !tbaa !8
  %78 = tail call double @llvm.fmuladd.f64(double %77, double 4.000000e-01, double %75)
  %79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 0, i64 2
  store double %78, double* %79, align 8, !tbaa !8
  %80 = fmul double %51, -4.000000e-01
  %81 = fmul double %47, %80
  %82 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 1, i64 2
  store double %81, double* %82, align 8, !tbaa !8
  %83 = fmul double %53, 1.600000e+00
  %84 = fmul double %47, %83
  %85 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 2, i64 2
  store double %84, double* %85, align 8, !tbaa !8
  %86 = fmul double %55, -4.000000e-01
  %87 = fmul double %47, %86
  %88 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 3, i64 2
  store double %87, double* %88, align 8, !tbaa !8
  %89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 4, i64 2
  store double 4.000000e-01, double* %89, align 8, !tbaa !8
  %90 = fmul double %53, %55
  %91 = fmul double %48, %90
  %92 = fsub double -0.000000e+00, %91
  %93 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 0, i64 3
  store double %92, double* %93, align 8, !tbaa !8
  %94 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 1, i64 3
  store double 0.000000e+00, double* %94, align 8, !tbaa !8
  %95 = fmul double %47, %55
  %96 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 2, i64 3
  store double %95, double* %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 3, i64 3
  store double %67, double* %97, align 8, !tbaa !8
  %98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 4, i64 3
  store double 0.000000e+00, double* %98, align 8, !tbaa !8
  %99 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %28, i64 %41, i64 %43, i64 %45
  %100 = load double, double* %99, align 8, !tbaa !8
  %101 = fmul double %57, 1.400000e+00
  %102 = fsub double -0.000000e+00, %101
  %103 = tail call double @llvm.fmuladd.f64(double %100, double 8.000000e-01, double %102)
  %104 = fmul double %53, %103
  %105 = fmul double %48, %104
  %106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 0, i64 4
  store double %105, double* %106, align 8, !tbaa !8
  %107 = fmul double %80, %53
  %108 = fmul double %48, %107
  %109 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 1, i64 4
  store double %108, double* %109, align 8, !tbaa !8
  %110 = load double, double* %76, align 8, !tbaa !8
  %111 = tail call double @llvm.fmuladd.f64(double %73, double %48, double %110)
  %112 = fmul double %111, 4.000000e-01
  %113 = fsub double -0.000000e+00, %112
  %114 = tail call double @llvm.fmuladd.f64(double %101, double %47, double %113)
  %115 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 2, i64 4
  store double %114, double* %115, align 8, !tbaa !8
  %116 = fmul double %90, -4.000000e-01
  %117 = fmul double %48, %116
  %118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 3, i64 4
  store double %117, double* %118, align 8, !tbaa !8
  %119 = fmul double %53, 1.400000e+00
  %120 = fmul double %47, %119
  %121 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %37, i64 %43, i64 4, i64 4
  store double %120, double* %121, align 8, !tbaa !8
  %122 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 0, i64 0
  store double 0.000000e+00, double* %122, align 8, !tbaa !8
  %123 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 1, i64 0
  store double 0.000000e+00, double* %123, align 8, !tbaa !8
  %124 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 2, i64 0
  store double 0.000000e+00, double* %124, align 8, !tbaa !8
  %125 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 3, i64 0
  store double 0.000000e+00, double* %125, align 8, !tbaa !8
  %126 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 4, i64 0
  store double 0.000000e+00, double* %126, align 8, !tbaa !8
  %127 = fmul double %48, -1.000000e-01
  %128 = fmul double %51, %127
  %129 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 0, i64 1
  store double %128, double* %129, align 8, !tbaa !8
  %130 = fmul double %47, 1.000000e-01
  %131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 1, i64 1
  store double %130, double* %131, align 8, !tbaa !8
  %132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 2, i64 1
  store double 0.000000e+00, double* %132, align 8, !tbaa !8
  %133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 3, i64 1
  store double 0.000000e+00, double* %133, align 8, !tbaa !8
  %134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 4, i64 1
  store double 0.000000e+00, double* %134, align 8, !tbaa !8
  %135 = fmul double %48, 0xBFC1111111111111
  %136 = fmul double %135, %53
  %137 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 0, i64 2
  store double %136, double* %137, align 8, !tbaa !8
  %138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 1, i64 2
  store double 0.000000e+00, double* %138, align 8, !tbaa !8
  %139 = fmul double %47, 0x3FC1111111111111
  %140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 2, i64 2
  store double %139, double* %140, align 8, !tbaa !8
  %141 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 3, i64 2
  store double 0.000000e+00, double* %141, align 8, !tbaa !8
  %142 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 4, i64 2
  store double 0.000000e+00, double* %142, align 8, !tbaa !8
  %143 = fmul double %127, %55
  %144 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 0, i64 3
  store double %143, double* %144, align 8, !tbaa !8
  %145 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 1, i64 3
  store double 0.000000e+00, double* %145, align 8, !tbaa !8
  %146 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 2, i64 3
  store double 0.000000e+00, double* %146, align 8, !tbaa !8
  %147 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 3, i64 3
  store double %130, double* %147, align 8, !tbaa !8
  %148 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 4, i64 3
  store double 0.000000e+00, double* %148, align 8, !tbaa !8
  %149 = fmul double %49, 0x3FB89374BC6A7EF8
  %150 = fmul double %51, %51
  %151 = fmul double %49, 0xBFB00AEC33E1F670
  %152 = fmul double %151, %73
  %153 = fsub double -0.000000e+00, %152
  %154 = tail call double @llvm.fmuladd.f64(double %149, double %150, double %153)
  %155 = fmul double %55, %55
  %156 = tail call double @llvm.fmuladd.f64(double %149, double %155, double %154)
  %157 = fmul double %48, 0x3FC916872B020C49
  %158 = fsub double -0.000000e+00, %157
  %159 = tail call double @llvm.fmuladd.f64(double %158, double %57, double %156)
  %160 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 0, i64 4
  store double %159, double* %160, align 8, !tbaa !8
  %161 = fmul double %48, 0xBFB89374BC6A7EF8
  %162 = fmul double %51, %161
  %163 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 1, i64 4
  store double %162, double* %163, align 8, !tbaa !8
  %164 = fmul double %48, 0xBFB00AEC33E1F670
  %165 = fmul double %164, %53
  %166 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 2, i64 4
  store double %165, double* %166, align 8, !tbaa !8
  %167 = fmul double %161, %55
  %168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 3, i64 4
  store double %167, double* %168, align 8, !tbaa !8
  %169 = fmul double %47, 0x3FC916872B020C49
  %170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %39, i64 %43, i64 4, i64 4
  store double %169, double* %170, align 8, !tbaa !8
  br label %171

; <label>:171:                                    ; preds = %9, %19, %25
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
