; ModuleID = 'npb-LU-setiv.cl'
source_filename = "npb-LU-setiv.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @setiv(double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca [5 x double], align 16
  %7 = alloca [5 x double], align 16
  %8 = alloca [5 x double], align 16
  %9 = alloca [5 x double], align 16
  %10 = alloca [5 x double], align 16
  %11 = alloca [5 x double], align 16
  %12 = bitcast [5 x double]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #5
  %13 = bitcast [5 x double]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #5
  %14 = bitcast [5 x double]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #5
  %15 = bitcast [5 x double]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #5
  %16 = bitcast [5 x double]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #5
  %17 = bitcast [5 x double]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #5
  %18 = tail call i64 @_Z13get_global_idj(i32 2) #6
  %19 = add i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %25 = add i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = add nsw i32 %4, -1
  %28 = icmp sgt i32 %27, %20
  %29 = add nsw i32 %3, -1
  %30 = icmp sgt i32 %29, %23
  %31 = and i1 %28, %30
  %32 = add nsw i32 %2, -1
  %33 = icmp sgt i32 %32, %26
  %34 = and i1 %31, %33
  br i1 %34, label %35, label %198

; <label>:35:                                     ; preds = %5
  %36 = bitcast double* %0 to [163 x [163 x [5 x double]]]*
  %37 = sitofp i32 %20 to double
  %38 = sitofp i32 %27 to double
  %39 = fdiv double %37, %38
  %40 = sitofp i32 %23 to double
  %41 = fdiv double %40, 1.610000e+02
  %42 = sitofp i32 %26 to double
  %43 = fdiv double %42, 1.610000e+02
  %44 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 0
  call void @exact(i32 0, i32 %23, i32 %20, double* nonnull %44, double* %1) #5
  %45 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 0
  call void @exact(i32 161, i32 %23, i32 %20, double* nonnull %45, double* %1) #5
  %46 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 0
  call void @exact(i32 %26, i32 0, i32 %20, double* nonnull %46, double* %1) #5
  %47 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 0
  call void @exact(i32 %26, i32 161, i32 %20, double* nonnull %47, double* %1) #5
  %48 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 0
  call void @exact(i32 %26, i32 %23, i32 0, double* nonnull %48, double* %1) #5
  %49 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 0
  call void @exact(i32 %26, i32 %23, i32 %27, double* nonnull %49, double* %1) #5
  %50 = fsub double 1.000000e+00, %43
  %51 = fsub double 1.000000e+00, %41
  %52 = fsub double 1.000000e+00, %39
  %53 = shl i64 %19, 32
  %54 = ashr exact i64 %53, 32
  %55 = shl i64 %22, 32
  %56 = ashr exact i64 %55, 32
  %57 = shl i64 %25, 32
  %58 = ashr exact i64 %57, 32
  %59 = load double, double* %44, align 16, !tbaa !8
  %60 = load double, double* %45, align 16, !tbaa !8
  %61 = fmul double %43, %60
  %62 = call double @llvm.fmuladd.f64(double %50, double %59, double %61)
  %63 = load double, double* %46, align 16, !tbaa !8
  %64 = load double, double* %47, align 16, !tbaa !8
  %65 = fmul double %41, %64
  %66 = call double @llvm.fmuladd.f64(double %51, double %63, double %65)
  %67 = load double, double* %48, align 16, !tbaa !8
  %68 = load double, double* %49, align 16, !tbaa !8
  %69 = fmul double %39, %68
  %70 = call double @llvm.fmuladd.f64(double %52, double %67, double %69)
  %71 = fadd double %62, %66
  %72 = fadd double %71, %70
  %73 = fsub double -0.000000e+00, %62
  %74 = call double @llvm.fmuladd.f64(double %73, double %66, double %72)
  %75 = fsub double -0.000000e+00, %66
  %76 = call double @llvm.fmuladd.f64(double %75, double %70, double %74)
  %77 = fsub double -0.000000e+00, %70
  %78 = call double @llvm.fmuladd.f64(double %77, double %62, double %76)
  %79 = fmul double %62, %66
  %80 = call double @llvm.fmuladd.f64(double %79, double %70, double %78)
  %81 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %36, i64 %54, i64 %56, i64 %58, i64 0
  store double %80, double* %81, align 8, !tbaa !8
  %82 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 1
  %83 = load double, double* %82, align 8, !tbaa !8
  %84 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 1
  %85 = load double, double* %84, align 8, !tbaa !8
  %86 = fmul double %43, %85
  %87 = call double @llvm.fmuladd.f64(double %50, double %83, double %86)
  %88 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 1
  %89 = load double, double* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 1
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = fmul double %41, %91
  %93 = call double @llvm.fmuladd.f64(double %51, double %89, double %92)
  %94 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 1
  %95 = load double, double* %94, align 8, !tbaa !8
  %96 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 1
  %97 = load double, double* %96, align 8, !tbaa !8
  %98 = fmul double %39, %97
  %99 = call double @llvm.fmuladd.f64(double %52, double %95, double %98)
  %100 = fadd double %87, %93
  %101 = fadd double %100, %99
  %102 = fsub double -0.000000e+00, %87
  %103 = call double @llvm.fmuladd.f64(double %102, double %93, double %101)
  %104 = fsub double -0.000000e+00, %93
  %105 = call double @llvm.fmuladd.f64(double %104, double %99, double %103)
  %106 = fsub double -0.000000e+00, %99
  %107 = call double @llvm.fmuladd.f64(double %106, double %87, double %105)
  %108 = fmul double %87, %93
  %109 = call double @llvm.fmuladd.f64(double %108, double %99, double %107)
  %110 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %36, i64 %54, i64 %56, i64 %58, i64 1
  store double %109, double* %110, align 8, !tbaa !8
  %111 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 2
  %112 = load double, double* %111, align 16, !tbaa !8
  %113 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 2
  %114 = load double, double* %113, align 16, !tbaa !8
  %115 = fmul double %43, %114
  %116 = call double @llvm.fmuladd.f64(double %50, double %112, double %115)
  %117 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 2
  %118 = load double, double* %117, align 16, !tbaa !8
  %119 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 2
  %120 = load double, double* %119, align 16, !tbaa !8
  %121 = fmul double %41, %120
  %122 = call double @llvm.fmuladd.f64(double %51, double %118, double %121)
  %123 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 2
  %124 = load double, double* %123, align 16, !tbaa !8
  %125 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 2
  %126 = load double, double* %125, align 16, !tbaa !8
  %127 = fmul double %39, %126
  %128 = call double @llvm.fmuladd.f64(double %52, double %124, double %127)
  %129 = fadd double %116, %122
  %130 = fadd double %129, %128
  %131 = fsub double -0.000000e+00, %116
  %132 = call double @llvm.fmuladd.f64(double %131, double %122, double %130)
  %133 = fsub double -0.000000e+00, %122
  %134 = call double @llvm.fmuladd.f64(double %133, double %128, double %132)
  %135 = fsub double -0.000000e+00, %128
  %136 = call double @llvm.fmuladd.f64(double %135, double %116, double %134)
  %137 = fmul double %116, %122
  %138 = call double @llvm.fmuladd.f64(double %137, double %128, double %136)
  %139 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %36, i64 %54, i64 %56, i64 %58, i64 2
  store double %138, double* %139, align 8, !tbaa !8
  %140 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 3
  %141 = load double, double* %140, align 8, !tbaa !8
  %142 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 3
  %143 = load double, double* %142, align 8, !tbaa !8
  %144 = fmul double %43, %143
  %145 = call double @llvm.fmuladd.f64(double %50, double %141, double %144)
  %146 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 3
  %147 = load double, double* %146, align 8, !tbaa !8
  %148 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 3
  %149 = load double, double* %148, align 8, !tbaa !8
  %150 = fmul double %41, %149
  %151 = call double @llvm.fmuladd.f64(double %51, double %147, double %150)
  %152 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 3
  %153 = load double, double* %152, align 8, !tbaa !8
  %154 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 3
  %155 = load double, double* %154, align 8, !tbaa !8
  %156 = fmul double %39, %155
  %157 = call double @llvm.fmuladd.f64(double %52, double %153, double %156)
  %158 = fadd double %145, %151
  %159 = fadd double %158, %157
  %160 = fsub double -0.000000e+00, %145
  %161 = call double @llvm.fmuladd.f64(double %160, double %151, double %159)
  %162 = fsub double -0.000000e+00, %151
  %163 = call double @llvm.fmuladd.f64(double %162, double %157, double %161)
  %164 = fsub double -0.000000e+00, %157
  %165 = call double @llvm.fmuladd.f64(double %164, double %145, double %163)
  %166 = fmul double %145, %151
  %167 = call double @llvm.fmuladd.f64(double %166, double %157, double %165)
  %168 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %36, i64 %54, i64 %56, i64 %58, i64 3
  store double %167, double* %168, align 8, !tbaa !8
  %169 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 4
  %170 = load double, double* %169, align 16, !tbaa !8
  %171 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 4
  %172 = load double, double* %171, align 16, !tbaa !8
  %173 = fmul double %43, %172
  %174 = call double @llvm.fmuladd.f64(double %50, double %170, double %173)
  %175 = getelementptr inbounds [5 x double], [5 x double]* %8, i64 0, i64 4
  %176 = load double, double* %175, align 16, !tbaa !8
  %177 = getelementptr inbounds [5 x double], [5 x double]* %9, i64 0, i64 4
  %178 = load double, double* %177, align 16, !tbaa !8
  %179 = fmul double %41, %178
  %180 = call double @llvm.fmuladd.f64(double %51, double %176, double %179)
  %181 = getelementptr inbounds [5 x double], [5 x double]* %10, i64 0, i64 4
  %182 = load double, double* %181, align 16, !tbaa !8
  %183 = getelementptr inbounds [5 x double], [5 x double]* %11, i64 0, i64 4
  %184 = load double, double* %183, align 16, !tbaa !8
  %185 = fmul double %39, %184
  %186 = call double @llvm.fmuladd.f64(double %52, double %182, double %185)
  %187 = fadd double %174, %180
  %188 = fadd double %187, %186
  %189 = fsub double -0.000000e+00, %174
  %190 = call double @llvm.fmuladd.f64(double %189, double %180, double %188)
  %191 = fsub double -0.000000e+00, %180
  %192 = call double @llvm.fmuladd.f64(double %191, double %186, double %190)
  %193 = fsub double -0.000000e+00, %186
  %194 = call double @llvm.fmuladd.f64(double %193, double %174, double %192)
  %195 = fmul double %174, %180
  %196 = call double @llvm.fmuladd.f64(double %195, double %186, double %194)
  %197 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %36, i64 %54, i64 %56, i64 %58, i64 4
  store double %196, double* %197, align 8, !tbaa !8
  br label %198

; <label>:198:                                    ; preds = %35, %5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @exact(i32, i32, i32, double*, double*) local_unnamed_addr #3

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
