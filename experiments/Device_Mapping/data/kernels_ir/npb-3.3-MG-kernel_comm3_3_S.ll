; ModuleID = 'npb-MG-kernel_comm3_3.cl'
source_filename = "npb-MG-kernel_comm3_3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_comm3_3(double* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %43

; <label>:9:                                      ; preds = %5
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 %3, -2
  %13 = mul i32 %2, %1
  %14 = mul i32 %13, %12
  %15 = mul nsw i32 %11, %1
  %16 = add i32 %14, %4
  %17 = add i32 %16, %7
  %18 = add i32 %17, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %0, i64 %19
  %21 = bitcast double* %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !8
  %23 = add i32 %7, %4
  %24 = add i32 %23, %15
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %0, i64 %25
  %27 = bitcast double* %26 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !8
  %28 = add i32 %13, %4
  %29 = add i32 %28, %7
  %30 = add i32 %29, %15
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %0, i64 %31
  %33 = bitcast double* %32 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !8
  %35 = add nsw i32 %3, -1
  %36 = mul i32 %13, %35
  %37 = add i32 %36, %4
  %38 = add i32 %37, %7
  %39 = add i32 %38, %15
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %0, i64 %40
  %42 = bitcast double* %41 to i64*
  store i64 %34, i64* %42, align 8, !tbaa !8
  br label %43

; <label>:43:                                     ; preds = %5, %9
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
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
