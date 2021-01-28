; ModuleID = 'shoc-1.1.5-Stencil2D-CopyRect.cl'
source_filename = "shoc-1.1.5-Stencil2D-CopyRect.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @CopyRect(float* nocapture, i32, i32, float* nocapture readonly, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %14 = trunc i64 %13 to i32
  %15 = mul nsw i32 %14, %10
  %16 = add nsw i32 %15, %12
  %17 = icmp slt i32 %16, %7
  %18 = icmp sgt i32 %6, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %38

; <label>:20:                                     ; preds = %8
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds float, float* %3, i64 %21
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds float, float* %0, i64 %23
  br label %25

; <label>:25:                                     ; preds = %25, %20
  %26 = phi i32 [ 0, %20 ], [ %36, %25 ]
  %27 = tail call i32 @ToFlatIdx(i32 %16, i32 %26, i32 %5) #4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %22, i64 %28
  %30 = bitcast float* %29 to i32*
  %31 = load i32, i32* %30, align 4, !tbaa !8
  %32 = tail call i32 @ToFlatIdx(i32 %16, i32 %26, i32 %2) #4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %24, i64 %33
  %35 = bitcast float* %34 to i32*
  store i32 %31, i32* %35, align 4, !tbaa !8
  %36 = add nuw nsw i32 %26, 1
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %25

; <label>:38:                                     ; preds = %25, %8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

declare i32 @ToFlatIdx(i32, i32, i32) local_unnamed_addr #2

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
!4 = !{i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"int", !"int", !"float*", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
