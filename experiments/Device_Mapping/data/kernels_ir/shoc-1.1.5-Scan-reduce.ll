; ModuleID = 'shoc-1.1.5-Scan-reduce.cl'
source_filename = "shoc-1.1.5-Scan-reduce.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @reduce(float* nocapture readonly, float* nocapture, i32, float* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = sdiv i32 %2, 4
  %6 = sext i32 %5 to i64
  %7 = tail call i64 @_Z14get_num_groupsj(i32 0) #3
  %8 = udiv i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 2
  %11 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %12 = sext i32 %10 to i64
  %13 = mul i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = add i64 %7, -1
  %16 = icmp eq i64 %11, %15
  %17 = add nsw i32 %10, %14
  %18 = select i1 %16, i32 %2, i32 %17
  %19 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %14, %20
  %22 = icmp slt i32 %21, %18
  %23 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  br i1 %22, label %24, label %35

; <label>:24:                                     ; preds = %4
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi float [ %31, %25 ], [ 0.000000e+00, %24 ]
  %27 = phi i32 [ %33, %25 ], [ %21, %24 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %0, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !8
  %31 = fadd float %26, %30
  %32 = add i64 %23, %28
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i32 %18, %33
  br i1 %34, label %25, label %35

; <label>:35:                                     ; preds = %25, %4
  %36 = phi float [ 0.000000e+00, %4 ], [ %31, %25 ]
  %37 = shl i64 %19, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds float, float* %3, i64 %38
  store float %36, float* %39, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %40 = lshr i64 %23, 1
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %35
  br label %46

; <label>:44:                                     ; preds = %56, %35
  tail call void @_Z7barrierj(i32 1) #4
  %45 = icmp eq i32 %20, 0
  br i1 %45, label %59, label %64

; <label>:46:                                     ; preds = %43, %56
  %47 = phi i32 [ %57, %56 ], [ %41, %43 ]
  %48 = icmp ugt i32 %47, %20
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %46
  %50 = add i32 %47, %20
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %3, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !8
  %54 = load float, float* %39, align 4, !tbaa !8
  %55 = fadd float %53, %54
  store float %55, float* %39, align 4, !tbaa !8
  br label %56

; <label>:56:                                     ; preds = %49, %46
  tail call void @_Z7barrierj(i32 1) #4
  %57 = lshr i32 %47, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %44, label %46

; <label>:59:                                     ; preds = %44
  %60 = bitcast float* %3 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !8
  %62 = getelementptr inbounds float, float* %1, i64 %11
  %63 = bitcast float* %62 to i32*
  store i32 %61, i32* %63, align 4, !tbaa !8
  br label %64

; <label>:64:                                     ; preds = %59, %44
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 0, i32 3}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int", !"float*"}
!7 = !{!"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
