; ModuleID = 'npb-CG-conj_grad_0.cl'
source_filename = "npb-CG-conj_grad_0.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @conj_grad_0(double* nocapture, double* nocapture, double* nocapture, double* nocapture readonly, double* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 7000
  br i1 %8, label %21, label %9

; <label>:9:                                      ; preds = %5
  %10 = shl i64 %6, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds double, double* %0, i64 %11
  store double 0.000000e+00, double* %12, align 8, !tbaa !8
  %13 = getelementptr inbounds double, double* %1, i64 %11
  store double 0.000000e+00, double* %13, align 8, !tbaa !8
  %14 = getelementptr inbounds double, double* %3, i64 %11
  %15 = bitcast double* %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !8
  %17 = getelementptr inbounds double, double* %2, i64 %11
  %18 = bitcast double* %17 to i64*
  store i64 %16, i64* %18, align 8, !tbaa !8
  %19 = getelementptr inbounds double, double* %4, i64 %11
  %20 = bitcast double* %19 to i64*
  store i64 %16, i64* %20, align 8, !tbaa !8
  br label %21

; <label>:21:                                     ; preds = %5, %9
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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"double*", !"double*", !"double*"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
