; ModuleID = 'shoc-1.1.5-Sort-reduce.cl'
source_filename = "shoc-1.1.5-Sort-reduce.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @reduce(i32* nocapture readonly, i32* nocapture, i32, i32* nocapture, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca [16 x i32], align 16
  %7 = sdiv i32 %2, 4
  %8 = sext i32 %7 to i64
  %9 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %10 = udiv i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 2
  %13 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %14 = sext i32 %12 to i64
  %15 = mul i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = add i64 %9, -1
  %18 = icmp eq i64 %13, %17
  %19 = add nsw i32 %12, %16
  %20 = select i1 %18, i32 %2, i32 %19
  %21 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %16, %22
  %24 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %24) #5
  call void @llvm.memset.p0i8.i64(i8* nonnull %24, i8 0, i64 64, i32 16, i1 false)
  %25 = icmp slt i32 %23, %20
  br i1 %25, label %26, label %43

; <label>:26:                                     ; preds = %5
  %27 = and i32 %4, 31
  %28 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %29

; <label>:29:                                     ; preds = %26, %29
  %30 = phi i32 [ %23, %26 ], [ %41, %29 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = lshr i32 %33, %27
  %35 = and i32 %34, 15
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4, !tbaa !8
  %40 = add i64 %28, %31
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %20, %41
  br i1 %42, label %29, label %43

; <label>:43:                                     ; preds = %29, %5
  %44 = shl i64 %21, 32
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds i32, i32* %3, i64 %45
  %47 = icmp eq i32 %22, 0
  br label %49

; <label>:48:                                     ; preds = %77
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %24) #5
  ret void

; <label>:49:                                     ; preds = %77, %43
  %50 = phi i64 [ 0, %43 ], [ %78, %77 ]
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !8
  store i32 %52, i32* %46, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #6
  %53 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %54 = lshr i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %49
  br label %59

; <label>:58:                                     ; preds = %69, %49
  br i1 %47, label %72, label %77

; <label>:59:                                     ; preds = %57, %69
  %60 = phi i32 [ %70, %69 ], [ %55, %57 ]
  %61 = icmp ugt i32 %60, %22
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %59
  %63 = add i32 %60, %22
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %3, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !8
  %67 = load i32, i32* %46, align 4, !tbaa !8
  %68 = add i32 %67, %66
  store i32 %68, i32* %46, align 4, !tbaa !8
  br label %69

; <label>:69:                                     ; preds = %62, %59
  tail call void @_Z7barrierj(i32 1) #6
  %70 = lshr i32 %60, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %58, label %59

; <label>:72:                                     ; preds = %58
  %73 = load i32, i32* %3, align 4, !tbaa !8
  %74 = mul i64 %9, %50
  %75 = add i64 %74, %13
  %76 = getelementptr inbounds i32, i32* %1, i64 %75
  store i32 %73, i32* %76, align 4, !tbaa !8
  br label %77

; <label>:77:                                     ; preds = %58, %72
  %78 = add nuw nsw i64 %50, 1
  %79 = icmp eq i64 %78, 16
  br i1 %79, label %48, label %49
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 0, i32 3, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"uint*", !"uint*", !"int", !"uint*", !"int"}
!7 = !{!"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
