; ModuleID = 'npb-FT-compute_indexmap.cl'
source_filename = "npb-FT-compute_indexmap.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_indexmap(double* nocapture, i32, i32, i32, double) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 2) #2
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %7, %3
  %13 = icmp slt i32 %9, %2
  %14 = and i1 %12, %13
  %15 = icmp slt i32 %11, %1
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %42

; <label>:17:                                     ; preds = %5
  %18 = add nsw i32 %7, 16
  %19 = srem i32 %18, 32
  %20 = add nsw i32 %19, -16
  %21 = mul nsw i32 %20, %20
  %22 = add nsw i32 %9, 64
  %23 = srem i32 %22, 128
  %24 = add nsw i32 %23, -64
  %25 = mul nsw i32 %24, %24
  %26 = add nuw nsw i32 %25, %21
  %27 = add nsw i32 %11, 64
  %28 = srem i32 %27, 128
  %29 = add nsw i32 %28, -64
  %30 = mul nsw i32 %29, %29
  %31 = add nuw nsw i32 %26, %30
  %32 = sitofp i32 %31 to double
  %33 = fmul double %32, %4
  %34 = tail call double @_Z3expd(double %33) #2
  %35 = mul nsw i32 %7, %2
  %36 = add nsw i32 %1, 1
  %37 = add i32 %35, %9
  %38 = mul i32 %37, %36
  %39 = add nsw i32 %38, %11
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %0, i64 %40
  store double %34, double* %41, align 8, !tbaa !8
  br label %42

; <label>:42:                                     ; preds = %5, %17
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @_Z3expd(double) local_unnamed_addr #1

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
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int", !"double"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
