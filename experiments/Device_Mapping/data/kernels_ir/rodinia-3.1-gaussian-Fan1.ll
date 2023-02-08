; ModuleID = 'rodinia-3.1-gaussian-Fan1.cl'
source_filename = "rodinia-3.1-gaussian-Fan1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @Fan1(float* nocapture, float* nocapture readonly, float* nocapture readnone, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %3, -1
  %9 = sub i32 %8, %4
  %10 = icmp sgt i32 %9, %7
  br i1 %10, label %11, label %28

; <label>:11:                                     ; preds = %5
  %12 = add i32 %4, 1
  %13 = add i32 %12, %7
  %14 = mul nsw i32 %13, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %1, i64 %15
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds float, float* %16, i64 %17
  %19 = load float, float* %18, align 4, !tbaa !8
  %20 = mul nsw i32 %4, %3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %1, i64 %21
  %23 = getelementptr inbounds float, float* %22, i64 %17
  %24 = load float, float* %23, align 4, !tbaa !8
  %25 = fdiv float %19, %24, !fpmath !12
  %26 = getelementptr inbounds float, float* %0, i64 %15
  %27 = getelementptr inbounds float, float* %26, i64 %17
  store float %25, float* %27, align 4, !tbaa !8
  br label %28

; <label>:28:                                     ; preds = %11, %5
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
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
