; ModuleID = 'nvidia-4.2-VectorAdd-VectorAdd.cl'
source_filename = "nvidia-4.2-VectorAdd-VectorAdd.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @VectorAdd(float* nocapture readonly, float* nocapture readonly, float* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %6 = trunc i64 %5 to i32
  %7 = icmp slt i32 %6, %3
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %4
  %9 = shl i64 %5, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds float, float* %0, i64 %10
  %12 = load float, float* %11, align 4, !tbaa !8
  %13 = getelementptr inbounds float, float* %1, i64 %10
  %14 = load float, float* %13, align 4, !tbaa !8
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds float, float* %2, i64 %10
  store float %15, float* %16, align 4, !tbaa !8
  br label %17

; <label>:17:                                     ; preds = %4, %8
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
!4 = !{i32 1, i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"int"}
!7 = !{!"const", !"const", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
