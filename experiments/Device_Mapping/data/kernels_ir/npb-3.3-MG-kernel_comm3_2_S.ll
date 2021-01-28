; ModuleID = 'npb-MG-kernel_comm3_2.cl'
source_filename = "npb-MG-kernel_comm3_2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_comm3_2(double* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %44

; <label>:9:                                      ; preds = %5
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %2, %1
  %14 = mul i32 %13, %12
  %15 = add nsw i32 %2, -2
  %16 = mul nsw i32 %15, %1
  %17 = add i32 %16, %4
  %18 = add i32 %17, %7
  %19 = add i32 %18, %14
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %0, i64 %20
  %22 = bitcast double* %21 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !8
  %24 = add i32 %7, %4
  %25 = add i32 %24, %14
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %0, i64 %26
  %28 = bitcast double* %27 to i64*
  store i64 %23, i64* %28, align 8, !tbaa !8
  %29 = add i32 %4, %1
  %30 = add i32 %29, %7
  %31 = add i32 %30, %14
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %0, i64 %32
  %34 = bitcast double* %33 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !8
  %36 = add nsw i32 %2, -1
  %37 = mul nsw i32 %36, %1
  %38 = add i32 %37, %4
  %39 = add i32 %38, %7
  %40 = add i32 %39, %14
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %0, i64 %41
  %43 = bitcast double* %42 to i64*
  store i64 %35, i64* %43, align 8, !tbaa !8
  br label %44

; <label>:44:                                     ; preds = %5, %9
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
