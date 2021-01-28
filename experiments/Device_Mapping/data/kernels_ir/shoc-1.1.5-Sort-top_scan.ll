; ModuleID = 'shoc-1.1.5-Sort-top_scan.cl'
source_filename = "shoc-1.1.5-Sort-top_scan.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@top_scan.s_seed = internal unnamed_addr global i32 undef, align 4

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @top_scan(i32* nocapture, i32, i32*) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  store i32 0, i32* @top_scan.s_seed, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %4 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %5 = sext i32 %1 to i64
  %6 = icmp ult i64 %4, %5
  %7 = add i64 %4, 1
  %8 = icmp eq i64 %7, %5
  %9 = and i1 %6, %8
  br label %11

; <label>:10:                                     ; preds = %30
  ret void

; <label>:11:                                     ; preds = %30, %3
  %12 = phi i64 [ 0, %3 ], [ %31, %30 ]
  br i1 %6, label %15, label %13

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 @scanLocalMem(i32 0, i32* %2, i32 1) #6
  br label %23

; <label>:15:                                     ; preds = %11
  %16 = mul nsw i64 %12, %5
  %17 = add i64 %4, %16
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = tail call i32 @scanLocalMem(i32 %19, i32* %2, i32 1) #6
  %21 = load i32, i32* @top_scan.s_seed, align 4, !tbaa !8
  %22 = add i32 %21, %20
  store i32 %22, i32* %18, align 4, !tbaa !8
  br label %23

; <label>:23:                                     ; preds = %13, %15
  %24 = phi i32 [ %20, %15 ], [ %14, %13 ]
  %25 = phi i32 [ %19, %15 ], [ 0, %13 ]
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %9, label %26, label %30

; <label>:26:                                     ; preds = %23
  %27 = add i32 %25, %24
  %28 = load i32, i32* @top_scan.s_seed, align 4, !tbaa !8
  %29 = add i32 %27, %28
  store i32 %29, i32* @top_scan.s_seed, align 4, !tbaa !8
  br label %30

; <label>:30:                                     ; preds = %26, %23
  tail call void @_Z7barrierj(i32 1) #4
  %31 = add nuw nsw i64 %12, 1
  %32 = icmp eq i64 %31, 16
  br i1 %32, label %10, label %11
}

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

declare i32 @scanLocalMem(i32, i32*, i32) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 3}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"uint*", !"int", !"uint*"}
!7 = !{!"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
