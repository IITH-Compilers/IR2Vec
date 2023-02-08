; ModuleID = 'npb-MG-kernel_comm3_1.cl'
source_filename = "npb-MG-kernel_comm3_1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_comm3_1(double* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = add i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %2, -1
  %10 = icmp sgt i32 %9, %8
  br i1 %10, label %11, label %40

; <label>:11:                                     ; preds = %5
  %12 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = mul nsw i32 %14, %2
  %16 = add i32 %15, %8
  %17 = mul i32 %16, %1
  %18 = add nsw i32 %17, %1
  %19 = add i32 %4, -2
  %20 = add i32 %19, %18
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %0, i64 %21
  %23 = bitcast double* %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !8
  %25 = add nsw i32 %17, %4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %0, i64 %26
  %28 = bitcast double* %27 to i64*
  store i64 %24, i64* %28, align 8, !tbaa !8
  %29 = add i32 %4, 1
  %30 = add i32 %29, %17
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %0, i64 %31
  %33 = bitcast double* %32 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !8
  %35 = add i32 %4, -1
  %36 = add i32 %35, %18
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %0, i64 %37
  %39 = bitcast double* %38 to i64*
  store i64 %34, i64* %39, align 8, !tbaa !8
  br label %40

; <label>:40:                                     ; preds = %5, %11
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
