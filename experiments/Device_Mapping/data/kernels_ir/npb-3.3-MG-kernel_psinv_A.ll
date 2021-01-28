; ModuleID = 'npb-MG-kernel_psinv.cl'
source_filename = "npb-MG-kernel_psinv.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@kernel_psinv.r1 = internal unnamed_addr global [1024 x double] undef, align 16
@kernel_psinv.r2 = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_psinv(double* nocapture readonly, double* nocapture, double* nocapture readonly, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %12 = add i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, %3
  br i1 %16, label %17, label %89

; <label>:17:                                     ; preds = %7
  %18 = mul i32 %4, %3
  %19 = mul i32 %18, %10
  %20 = add nsw i32 %13, -1
  %21 = mul nsw i32 %20, %4
  %22 = add i32 %19, %6
  %23 = add i32 %22, %21
  %24 = add nsw i32 %13, 1
  %25 = mul nsw i32 %24, %3
  %26 = add i32 %22, %25
  %27 = add nsw i32 %10, -1
  %28 = mul i32 %18, %27
  %29 = mul nsw i32 %13, %3
  %30 = add i32 %29, %6
  %31 = add i32 %30, %28
  %32 = add nsw i32 %10, 1
  %33 = mul i32 %18, %32
  %34 = add i32 %30, %33
  %35 = mul nsw i32 %20, %3
  %36 = add i32 %35, %6
  %37 = add i32 %36, %28
  %38 = add i32 %25, %6
  %39 = add i32 %38, %28
  %40 = add i32 %36, %33
  %41 = add i32 %38, %33
  %42 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %43

; <label>:43:                                     ; preds = %17, %43
  %44 = phi i32 [ %15, %17 ], [ %87, %43 ]
  %45 = add i32 %23, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %0, i64 %46
  %48 = load double, double* %47, align 8, !tbaa !8
  %49 = add i32 %26, %44
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %0, i64 %50
  %52 = load double, double* %51, align 8, !tbaa !8
  %53 = fadd double %48, %52
  %54 = add i32 %31, %44
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %0, i64 %55
  %57 = load double, double* %56, align 8, !tbaa !8
  %58 = fadd double %53, %57
  %59 = add i32 %34, %44
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %0, i64 %60
  %62 = load double, double* %61, align 8, !tbaa !8
  %63 = fadd double %58, %62
  %64 = sext i32 %44 to i64
  %65 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_psinv.r1, i64 0, i64 %64
  store double %63, double* %65, align 8, !tbaa !8
  %66 = add i32 %37, %44
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %0, i64 %67
  %69 = load double, double* %68, align 8, !tbaa !8
  %70 = add i32 %39, %44
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %0, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !8
  %74 = fadd double %69, %73
  %75 = add i32 %40, %44
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %0, i64 %76
  %78 = load double, double* %77, align 8, !tbaa !8
  %79 = fadd double %74, %78
  %80 = add i32 %41, %44
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %0, i64 %81
  %83 = load double, double* %82, align 8, !tbaa !8
  %84 = fadd double %79, %83
  %85 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_psinv.r2, i64 0, i64 %64
  store double %84, double* %85, align 8, !tbaa !8
  %86 = add i64 %42, %64
  %87 = trunc i64 %86 to i32
  %88 = icmp slt i32 %87, %3
  br i1 %88, label %43, label %89

; <label>:89:                                     ; preds = %43, %7
  tail call void @_Z7barrierj(i32 1) #5
  %90 = add nsw i32 %15, 1
  %91 = add nsw i32 %3, -1
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %145

; <label>:93:                                     ; preds = %89
  %94 = mul nsw i32 %10, %4
  %95 = add i32 %94, %13
  %96 = mul i32 %95, %3
  %97 = getelementptr inbounds double, double* %2, i64 1
  %98 = add i32 %6, -1
  %99 = add i32 %6, 1
  %100 = getelementptr inbounds double, double* %2, i64 2
  %101 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %102

; <label>:102:                                    ; preds = %93, %102
  %103 = phi i32 [ %90, %93 ], [ %143, %102 ]
  %104 = add nsw i32 %103, %96
  %105 = add nsw i32 %104, %6
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %1, i64 %106
  %108 = load double, double* %107, align 8, !tbaa !8
  %109 = load double, double* %2, align 8, !tbaa !8
  %110 = getelementptr inbounds double, double* %0, i64 %106
  %111 = load double, double* %110, align 8, !tbaa !8
  %112 = tail call double @llvm.fmuladd.f64(double %109, double %111, double %108)
  %113 = load double, double* %97, align 8, !tbaa !8
  %114 = add i32 %98, %104
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %0, i64 %115
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = add i32 %99, %104
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %0, i64 %119
  %121 = load double, double* %120, align 8, !tbaa !8
  %122 = fadd double %117, %121
  %123 = sext i32 %103 to i64
  %124 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_psinv.r1, i64 0, i64 %123
  %125 = load double, double* %124, align 8, !tbaa !8
  %126 = fadd double %122, %125
  %127 = tail call double @llvm.fmuladd.f64(double %113, double %126, double %112)
  %128 = load double, double* %100, align 8, !tbaa !8
  %129 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_psinv.r2, i64 0, i64 %123
  %130 = load double, double* %129, align 8, !tbaa !8
  %131 = add nsw i32 %103, -1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_psinv.r1, i64 0, i64 %132
  %134 = load double, double* %133, align 8, !tbaa !8
  %135 = fadd double %130, %134
  %136 = add nsw i32 %103, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1024 x double], [1024 x double]* @kernel_psinv.r1, i64 0, i64 %137
  %139 = load double, double* %138, align 8, !tbaa !8
  %140 = fadd double %135, %139
  %141 = tail call double @llvm.fmuladd.f64(double %128, double %140, double %127)
  store double %141, double* %107, align 8, !tbaa !8
  %142 = add i64 %101, %123
  %143 = trunc i64 %142 to i32
  %144 = icmp sgt i32 %91, %143
  br i1 %144, label %102, label %145

; <label>:145:                                    ; preds = %102, %89
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
