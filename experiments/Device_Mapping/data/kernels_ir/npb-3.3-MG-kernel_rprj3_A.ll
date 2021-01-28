; ModuleID = 'npb-MG-kernel_rprj3.cl'
source_filename = "npb-MG-kernel_rprj3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@kernel_rprj3.x1 = internal unnamed_addr global [1024 x double] undef, align 16
@kernel_rprj3.y1 = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_rprj3(double* nocapture, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds double, double* %0, i64 %13
  %15 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %16 = add nsw i32 %5, -2
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %15, %17
  %19 = add i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = urem i64 %15, %17
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %25 = add i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = shl nsw i32 %20, 1
  %28 = sub nsw i32 %27, %11
  %29 = shl nsw i32 %23, 1
  %30 = sub nsw i32 %29, %10
  %31 = shl nsw i32 %26, 1
  %32 = sub nsw i32 %31, %9
  %33 = add nsw i32 %28, 1
  %34 = mul i32 %2, %1
  %35 = mul i32 %34, %33
  %36 = mul nsw i32 %30, %1
  %37 = add i32 %32, %36
  %38 = add i32 %37, %35
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %14, i64 %39
  %41 = load double, double* %40, align 8, !tbaa !8
  %42 = add nsw i32 %30, 2
  %43 = mul nsw i32 %42, %1
  %44 = add i32 %43, %32
  %45 = add i32 %44, %35
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %14, i64 %46
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = fadd double %41, %48
  %50 = mul i32 %34, %28
  %51 = add nsw i32 %30, 1
  %52 = mul nsw i32 %51, %1
  %53 = add i32 %32, %50
  %54 = add i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %14, i64 %55
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = fadd double %49, %57
  %59 = add nsw i32 %28, 2
  %60 = mul i32 %34, %59
  %61 = add i32 %52, %32
  %62 = add i32 %61, %60
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %14, i64 %63
  %65 = load double, double* %64, align 8, !tbaa !8
  %66 = fadd double %58, %65
  %67 = sext i32 %32 to i64
  %68 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_rprj3.x1, i64 0, i64 %67
  store double %66, double* %68, align 8, !tbaa !8
  %69 = add nsw i32 %50, %36
  %70 = add nsw i32 %69, %32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %14, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !8
  %74 = add i32 %37, %60
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %14, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !8
  %78 = fadd double %73, %77
  %79 = add i32 %53, %43
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %14, i64 %80
  %82 = load double, double* %81, align 8, !tbaa !8
  %83 = fadd double %78, %82
  %84 = add i32 %44, %60
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %14, i64 %85
  %87 = load double, double* %86, align 8, !tbaa !8
  %88 = fadd double %83, %87
  %89 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_rprj3.y1, i64 0, i64 %67
  store double %88, double* %89, align 8, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %90 = add nsw i32 %4, -1
  %91 = icmp sgt i32 %90, %26
  br i1 %91, label %92, label %168

; <label>:92:                                     ; preds = %12
  %93 = sext i32 %8 to i64
  %94 = getelementptr inbounds double, double* %0, i64 %93
  %95 = add nsw i32 %70, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %14, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !8
  %99 = add nsw i32 %74, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %14, i64 %100
  %102 = load double, double* %101, align 8, !tbaa !8
  %103 = fadd double %98, %102
  %104 = add nsw i32 %79, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %14, i64 %105
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = fadd double %103, %107
  %109 = add nsw i32 %84, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %14, i64 %110
  %112 = load double, double* %111, align 8, !tbaa !8
  %113 = fadd double %108, %112
  %114 = add nsw i32 %38, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %14, i64 %115
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = add nsw i32 %45, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %14, i64 %119
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = fadd double %117, %121
  %123 = add nsw i32 %54, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %14, i64 %124
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = fadd double %122, %126
  %128 = add nsw i32 %62, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %14, i64 %129
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = fadd double %127, %131
  %133 = add i32 %61, %35
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %14, i64 %135
  %137 = load double, double* %136, align 8, !tbaa !8
  %138 = sext i32 %133 to i64
  %139 = getelementptr inbounds double, double* %14, i64 %138
  %140 = load double, double* %139, align 8, !tbaa !8
  %141 = add nsw i32 %133, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %14, i64 %142
  %144 = load double, double* %143, align 8, !tbaa !8
  %145 = fadd double %140, %144
  %146 = fadd double %132, %145
  %147 = fmul double %146, 2.500000e-01
  %148 = tail call double @llvm.fmuladd.f64(double %137, double 5.000000e-01, double %147)
  %149 = load double, double* %68, align 8, !tbaa !8
  %150 = add nsw i32 %32, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_rprj3.x1, i64 0, i64 %151
  %153 = load double, double* %152, align 8, !tbaa !8
  %154 = fadd double %149, %153
  %155 = fadd double %113, %154
  %156 = tail call double @llvm.fmuladd.f64(double %155, double 1.250000e-01, double %148)
  %157 = load double, double* %89, align 8, !tbaa !8
  %158 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_rprj3.y1, i64 0, i64 %151
  %159 = load double, double* %158, align 8, !tbaa !8
  %160 = fadd double %157, %159
  %161 = tail call double @llvm.fmuladd.f64(double %160, double 6.250000e-02, double %156)
  %162 = mul nsw i32 %20, %5
  %163 = add i32 %162, %23
  %164 = mul i32 %163, %4
  %165 = add nsw i32 %164, %26
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %94, i64 %166
  store double %161, double* %167, align 8, !tbaa !8
  br label %168

; <label>:168:                                    ; preds = %92, %12
  ret void
}

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
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
