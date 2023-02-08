; ModuleID = 'npb-SP-initialize2.cl'
source_filename = "npb-SP-initialize2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @initialize2(double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca [2 x [3 x [5 x double]]], align 16
  %7 = bitcast [2 x [3 x [5 x double]]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %7) #5
  %8 = tail call i64 @_Z13get_global_idj(i32 2) #6
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %9, %4
  %15 = icmp slt i32 %11, %3
  %16 = and i1 %14, %15
  %17 = icmp slt i32 %13, %2
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %176

; <label>:19:                                     ; preds = %5
  %20 = sitofp i32 %9 to double
  %21 = fmul double %20, 0x3F90410410410410
  %22 = sitofp i32 %11 to double
  %23 = fmul double %22, 0x3F90410410410410
  %24 = sitofp i32 %13 to double
  %25 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 0, i64 0
  call void @exact_solution(double 0.000000e+00, double %23, double %21, double* nonnull %25, double* %1) #5
  %26 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 0, i64 0
  call void @exact_solution(double 1.000000e+00, double %23, double %21, double* %26, double* %1) #5
  %27 = bitcast double* %0 to [65 x [65 x [5 x double]]]*
  %28 = fmul double %24, 0x3F90410410410410
  %29 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 1, i64 0
  call void @exact_solution(double %28, double 0.000000e+00, double %21, double* %29, double* %1) #5
  %30 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 1, i64 0
  call void @exact_solution(double %28, double 1.000000e+00, double %21, double* %30, double* %1) #5
  %31 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 2, i64 0
  call void @exact_solution(double %28, double %23, double 0.000000e+00, double* %31, double* %1) #5
  %32 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 2, i64 0
  call void @exact_solution(double %28, double %23, double 1.000000e+00, double* %32, double* %1) #5
  %33 = fsub double 1.000000e+00, %28
  %34 = fsub double 1.000000e+00, %23
  %35 = fsub double 1.000000e+00, %21
  %36 = shl i64 %8, 32
  %37 = ashr exact i64 %36, 32
  %38 = shl i64 %10, 32
  %39 = ashr exact i64 %38, 32
  %40 = shl i64 %12, 32
  %41 = ashr exact i64 %40, 32
  %42 = load double, double* %26, align 8, !tbaa !8
  %43 = load double, double* %25, align 16, !tbaa !8
  %44 = fmul double %33, %43
  %45 = call double @llvm.fmuladd.f64(double %28, double %42, double %44)
  %46 = load double, double* %30, align 8, !tbaa !8
  %47 = load double, double* %29, align 8, !tbaa !8
  %48 = fmul double %34, %47
  %49 = call double @llvm.fmuladd.f64(double %23, double %46, double %48)
  %50 = load double, double* %32, align 8, !tbaa !8
  %51 = load double, double* %31, align 16, !tbaa !8
  %52 = fmul double %35, %51
  %53 = call double @llvm.fmuladd.f64(double %21, double %50, double %52)
  %54 = fadd double %45, %49
  %55 = fadd double %54, %53
  %56 = fsub double -0.000000e+00, %45
  %57 = call double @llvm.fmuladd.f64(double %56, double %49, double %55)
  %58 = call double @llvm.fmuladd.f64(double %56, double %53, double %57)
  %59 = fsub double -0.000000e+00, %49
  %60 = call double @llvm.fmuladd.f64(double %59, double %53, double %58)
  %61 = fmul double %45, %49
  %62 = call double @llvm.fmuladd.f64(double %61, double %53, double %60)
  %63 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %27, i64 %37, i64 %39, i64 %41, i64 0
  store double %62, double* %63, align 8, !tbaa !8
  %64 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 0, i64 1
  %65 = load double, double* %64, align 8, !tbaa !8
  %66 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 0, i64 1
  %67 = load double, double* %66, align 8, !tbaa !8
  %68 = fmul double %33, %67
  %69 = call double @llvm.fmuladd.f64(double %28, double %65, double %68)
  %70 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 1, i64 1
  %71 = load double, double* %70, align 8, !tbaa !8
  %72 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 1, i64 1
  %73 = load double, double* %72, align 8, !tbaa !8
  %74 = fmul double %34, %73
  %75 = call double @llvm.fmuladd.f64(double %23, double %71, double %74)
  %76 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 2, i64 1
  %77 = load double, double* %76, align 8, !tbaa !8
  %78 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 2, i64 1
  %79 = load double, double* %78, align 8, !tbaa !8
  %80 = fmul double %35, %79
  %81 = call double @llvm.fmuladd.f64(double %21, double %77, double %80)
  %82 = fadd double %69, %75
  %83 = fadd double %82, %81
  %84 = fsub double -0.000000e+00, %69
  %85 = call double @llvm.fmuladd.f64(double %84, double %75, double %83)
  %86 = call double @llvm.fmuladd.f64(double %84, double %81, double %85)
  %87 = fsub double -0.000000e+00, %75
  %88 = call double @llvm.fmuladd.f64(double %87, double %81, double %86)
  %89 = fmul double %69, %75
  %90 = call double @llvm.fmuladd.f64(double %89, double %81, double %88)
  %91 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %27, i64 %37, i64 %39, i64 %41, i64 1
  store double %90, double* %91, align 8, !tbaa !8
  %92 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 0, i64 2
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 0, i64 2
  %95 = load double, double* %94, align 16, !tbaa !8
  %96 = fmul double %33, %95
  %97 = call double @llvm.fmuladd.f64(double %28, double %93, double %96)
  %98 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 1, i64 2
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 1, i64 2
  %101 = load double, double* %100, align 8, !tbaa !8
  %102 = fmul double %34, %101
  %103 = call double @llvm.fmuladd.f64(double %23, double %99, double %102)
  %104 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 2, i64 2
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 2, i64 2
  %107 = load double, double* %106, align 16, !tbaa !8
  %108 = fmul double %35, %107
  %109 = call double @llvm.fmuladd.f64(double %21, double %105, double %108)
  %110 = fadd double %97, %103
  %111 = fadd double %110, %109
  %112 = fsub double -0.000000e+00, %97
  %113 = call double @llvm.fmuladd.f64(double %112, double %103, double %111)
  %114 = call double @llvm.fmuladd.f64(double %112, double %109, double %113)
  %115 = fsub double -0.000000e+00, %103
  %116 = call double @llvm.fmuladd.f64(double %115, double %109, double %114)
  %117 = fmul double %97, %103
  %118 = call double @llvm.fmuladd.f64(double %117, double %109, double %116)
  %119 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %27, i64 %37, i64 %39, i64 %41, i64 2
  store double %118, double* %119, align 8, !tbaa !8
  %120 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 0, i64 3
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 0, i64 3
  %123 = load double, double* %122, align 8, !tbaa !8
  %124 = fmul double %33, %123
  %125 = call double @llvm.fmuladd.f64(double %28, double %121, double %124)
  %126 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 1, i64 3
  %127 = load double, double* %126, align 8, !tbaa !8
  %128 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 1, i64 3
  %129 = load double, double* %128, align 8, !tbaa !8
  %130 = fmul double %34, %129
  %131 = call double @llvm.fmuladd.f64(double %23, double %127, double %130)
  %132 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 2, i64 3
  %133 = load double, double* %132, align 8, !tbaa !8
  %134 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 2, i64 3
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = fmul double %35, %135
  %137 = call double @llvm.fmuladd.f64(double %21, double %133, double %136)
  %138 = fadd double %125, %131
  %139 = fadd double %138, %137
  %140 = fsub double -0.000000e+00, %125
  %141 = call double @llvm.fmuladd.f64(double %140, double %131, double %139)
  %142 = call double @llvm.fmuladd.f64(double %140, double %137, double %141)
  %143 = fsub double -0.000000e+00, %131
  %144 = call double @llvm.fmuladd.f64(double %143, double %137, double %142)
  %145 = fmul double %125, %131
  %146 = call double @llvm.fmuladd.f64(double %145, double %137, double %144)
  %147 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %27, i64 %37, i64 %39, i64 %41, i64 3
  store double %146, double* %147, align 8, !tbaa !8
  %148 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 0, i64 4
  %149 = load double, double* %148, align 8, !tbaa !8
  %150 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 0, i64 4
  %151 = load double, double* %150, align 16, !tbaa !8
  %152 = fmul double %33, %151
  %153 = call double @llvm.fmuladd.f64(double %28, double %149, double %152)
  %154 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 1, i64 4
  %155 = load double, double* %154, align 8, !tbaa !8
  %156 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 1, i64 4
  %157 = load double, double* %156, align 8, !tbaa !8
  %158 = fmul double %34, %157
  %159 = call double @llvm.fmuladd.f64(double %23, double %155, double %158)
  %160 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 1, i64 2, i64 4
  %161 = load double, double* %160, align 8, !tbaa !8
  %162 = getelementptr inbounds [2 x [3 x [5 x double]]], [2 x [3 x [5 x double]]]* %6, i64 0, i64 0, i64 2, i64 4
  %163 = load double, double* %162, align 16, !tbaa !8
  %164 = fmul double %35, %163
  %165 = call double @llvm.fmuladd.f64(double %21, double %161, double %164)
  %166 = fadd double %153, %159
  %167 = fadd double %166, %165
  %168 = fsub double -0.000000e+00, %153
  %169 = call double @llvm.fmuladd.f64(double %168, double %159, double %167)
  %170 = call double @llvm.fmuladd.f64(double %168, double %165, double %169)
  %171 = fsub double -0.000000e+00, %159
  %172 = call double @llvm.fmuladd.f64(double %171, double %165, double %170)
  %173 = fmul double %153, %159
  %174 = call double @llvm.fmuladd.f64(double %173, double %165, double %172)
  %175 = getelementptr inbounds [65 x [65 x [5 x double]]], [65 x [65 x [5 x double]]]* %27, i64 %37, i64 %39, i64 %41, i64 4
  store double %174, double* %175, align 8, !tbaa !8
  br label %176

; <label>:176:                                    ; preds = %19, %5
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %7) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @exact_solution(double, double, double, double*, double*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
