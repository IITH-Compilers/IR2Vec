; ModuleID = 'reduce.cl'
source_filename = "reduce.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @reduce(<4 x i32>* nocapture readonly, <4 x i32>* nocapture, <4 x i32>* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %4 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %5 = trunc i64 %4 to i32
  %6 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = shl i32 %8, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds <4 x i32>, <4 x i32>* %0, i64 %12
  %14 = load <4 x i32>, <4 x i32>* %13, align 16, !tbaa !9
  %15 = or i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds <4 x i32>, <4 x i32>* %0, i64 %16
  %18 = load <4 x i32>, <4 x i32>* %17, align 16, !tbaa !9
  %19 = add <4 x i32> %18, %14
  %20 = and i64 %4, 4294967295
  %21 = getelementptr inbounds <4 x i32>, <4 x i32>* %2, i64 %20
  store <4 x i32> %19, <4 x i32>* %21, align 16, !tbaa !9
  tail call void @_Z7barrierj(i32 1) #4
  %22 = lshr i32 %10, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %3
  br label %27

; <label>:25:                                     ; preds = %37, %3
  %26 = icmp eq i32 %5, 0
  br i1 %26, label %40, label %44

; <label>:27:                                     ; preds = %24, %37
  %28 = phi i32 [ %38, %37 ], [ %22, %24 ]
  %29 = icmp ugt i32 %28, %5
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %27
  %31 = add i32 %28, %5
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds <4 x i32>, <4 x i32>* %2, i64 %32
  %34 = load <4 x i32>, <4 x i32>* %33, align 16, !tbaa !9
  %35 = load <4 x i32>, <4 x i32>* %21, align 16, !tbaa !9
  %36 = add <4 x i32> %35, %34
  store <4 x i32> %36, <4 x i32>* %21, align 16, !tbaa !9
  br label %37

; <label>:37:                                     ; preds = %30, %27
  tail call void @_Z7barrierj(i32 1) #4
  %38 = lshr i32 %28, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %25, label %27

; <label>:40:                                     ; preds = %25
  %41 = load <4 x i32>, <4 x i32>* %2, align 16, !tbaa !9
  %42 = and i64 %6, 4294967295
  %43 = getelementptr inbounds <4 x i32>, <4 x i32>* %1, i64 %42
  store <4 x i32> %41, <4 x i32>* %43, align 16, !tbaa !9
  br label %44

; <label>:44:                                     ; preds = %40, %25
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 3}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"uint4*", !"uint4*", !"uint4*"}
!7 = !{!"uint __attribute__((ext_vector_type(4)))*", !"uint __attribute__((ext_vector_type(4)))*", !"uint __attribute__((ext_vector_type(4)))*"}
!8 = !{!"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
