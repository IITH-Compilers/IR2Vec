; ModuleID = 'npb-LU-setbv3.cl'
source_filename = "npb-LU-setbv3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @setbv3(double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %7, %4
  %13 = icmp slt i32 %9, %3
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %5
  %16 = bitcast double* %0 to [163 x [163 x [5 x double]]]*
  %17 = tail call double @exact_scalar(i32 0, i32 %9, i32 %7, i32 %11, double* %1) #4
  %18 = shl i64 %6, 32
  %19 = ashr exact i64 %18, 32
  %20 = shl i64 %8, 32
  %21 = ashr exact i64 %20, 32
  %22 = shl i64 %10, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %16, i64 %19, i64 %21, i64 0, i64 %23
  store double %17, double* %24, align 8, !tbaa !8
  %25 = add nsw i32 %2, -1
  %26 = tail call double @exact_scalar(i32 %25, i32 %9, i32 %7, i32 %11, double* %1) #4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %16, i64 %19, i64 %21, i64 %27, i64 %23
  store double %26, double* %28, align 8, !tbaa !8
  br label %29

; <label>:29:                                     ; preds = %5, %15
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

declare double @exact_scalar(i32, i32, i32, i32, double*) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

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
