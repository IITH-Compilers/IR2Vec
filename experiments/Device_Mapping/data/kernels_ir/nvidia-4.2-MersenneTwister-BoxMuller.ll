; ModuleID = 'nvidia-4.2-MersenneTwister-BoxMuller.cl'
source_filename = "nvidia-4.2-MersenneTwister-BoxMuller.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @BoxMuller(float*, i32) local_unnamed_addr #0 !kernel_arg_addr_space !2 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
  %3 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = sext i32 %1 to i64
  br label %9

; <label>:8:                                      ; preds = %9, %2
  ret void

; <label>:9:                                      ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %20, %9 ]
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 12
  %13 = add nsw i32 %12, %4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %0, i64 %14
  %16 = or i32 %12, 4096
  %17 = add nsw i32 %16, %4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %0, i64 %18
  tail call void @BoxMullerTrans(float* %15, float* %19) #4
  %20 = add nuw i64 %10, 2
  %21 = icmp slt i64 %20, %7
  br i1 %21, label %9, label %8
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

declare void @BoxMullerTrans(float*, float*) local_unnamed_addr #2

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
!4 = !{!"none", !"none"}
!5 = !{!"float*", !"int"}
!6 = !{!"", !""}
