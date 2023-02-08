; ModuleID = 'npb-FT-evolve.cl'
source_filename = "npb-FT-evolve.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.dcomplex = type { double, double }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @evolve(%struct.dcomplex* nocapture, %struct.dcomplex* nocapture, double* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %8, %5
  %14 = icmp slt i32 %10, %4
  %15 = and i1 %13, %14
  %16 = icmp slt i32 %12, %3
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %35

; <label>:18:                                     ; preds = %6
  %19 = mul nsw i32 %8, %4
  %20 = add nsw i32 %3, 1
  %21 = add i32 %19, %10
  %22 = mul i32 %21, %20
  %23 = add nsw i32 %22, %12
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %24, i32 0
  %26 = load double, double* %25, align 8, !tbaa !8
  %27 = getelementptr inbounds double, double* %2, i64 %24
  %28 = load double, double* %27, align 8, !tbaa !13
  %29 = fmul double %26, %28
  %30 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %24, i32 1
  %31 = load double, double* %30, align 8, !tbaa !14
  %32 = fmul double %28, %31
  store double %29, double* %25, align 8
  store double %32, double* %30, align 8
  %33 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %24, i32 0
  store double %29, double* %33, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %24, i32 1
  store double %32, double* %34, align 8, !tbaa !14
  br label %35

; <label>:35:                                     ; preds = %6, %18
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"dcomplex*", !"dcomplex*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"const", !"", !"", !""}
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 8}
!10 = !{!"double", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!10, !10, i64 0}
!14 = !{!9, !10, i64 8}
