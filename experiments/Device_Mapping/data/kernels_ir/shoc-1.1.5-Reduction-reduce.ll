; ModuleID = 'shoc-1.1.5-Reduction-reduce.cl'
source_filename = "shoc-1.1.5-Reduction-reduce.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @reduce(float* nocapture readonly, float* nocapture, float* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %8 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %9 = shl i64 %8, 1
  %10 = mul i64 %9, %7
  %11 = and i64 %5, 4294967295
  %12 = add i64 %10, %5
  %13 = trunc i64 %12 to i32
  %14 = tail call i64 @_Z14get_num_groupsj(i32 0) #3
  %15 = mul i64 %9, %14
  %16 = trunc i64 %15 to i32
  %17 = trunc i64 %8 to i32
  %18 = getelementptr inbounds float, float* %2, i64 %11
  store float 0.000000e+00, float* %18, align 4, !tbaa !8
  %19 = icmp ult i32 %13, %3
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %4
  br label %21

; <label>:21:                                     ; preds = %20, %21
  %22 = phi float [ %32, %21 ], [ 0.000000e+00, %20 ]
  %23 = phi i32 [ %33, %21 ], [ %13, %20 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %0, i64 %24
  %26 = load float, float* %25, align 4, !tbaa !8
  %27 = add i32 %23, %17
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %0, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !8
  %31 = fadd float %26, %30
  %32 = fadd float %22, %31
  store float %32, float* %18, align 4, !tbaa !8
  %33 = add i32 %23, %16
  %34 = icmp ult i32 %33, %3
  br i1 %34, label %21, label %35

; <label>:35:                                     ; preds = %21, %4
  tail call void @_Z7barrierj(i32 1) #4
  %36 = lshr i32 %17, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %35
  br label %41

; <label>:39:                                     ; preds = %51, %35
  %40 = icmp eq i32 %6, 0
  br i1 %40, label %54, label %59

; <label>:41:                                     ; preds = %38, %51
  %42 = phi i32 [ %52, %51 ], [ %36, %38 ]
  %43 = icmp ugt i32 %42, %6
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %41
  %45 = add i32 %42, %6
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %2, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !8
  %49 = load float, float* %18, align 4, !tbaa !8
  %50 = fadd float %48, %49
  store float %50, float* %18, align 4, !tbaa !8
  br label %51

; <label>:51:                                     ; preds = %44, %41
  tail call void @_Z7barrierj(i32 1) #4
  %52 = lshr i32 %42, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %39, label %41

; <label>:54:                                     ; preds = %39
  %55 = bitcast float* %2 to i32*
  %56 = load i32, i32* %55, align 4, !tbaa !8
  %57 = getelementptr inbounds float, float* %1, i64 %7
  %58 = bitcast float* %57 to i32*
  store i32 %56, i32* %58, align 4, !tbaa !8
  br label %59

; <label>:59:                                     ; preds = %54, %39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 3, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"uint"}
!7 = !{!"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
