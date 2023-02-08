; ModuleID = 'parboil-0.2-sad-larger_sad_calc_16.cl'
source_filename = "parboil-0.2-sad-larger_sad_calc_16.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @larger_sad_calc_16(i16* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z12get_group_idj(i32 0) #2
  %5 = trunc i64 %4 to i32
  %6 = tail call i64 @_Z12get_group_idj(i32 1) #2
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @_Z12get_local_idj(i32 0) #2
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @_Z5mul24ii(i32 %1, i32 %2) #2
  %11 = mul nsw i32 %10, 1096
  %12 = tail call i32 @_Z5mul24ii(i32 %7, i32 %1) #2
  %13 = add nsw i32 %12, %5
  %14 = mul nsw i32 %13, 1096
  %15 = add nsw i32 %14, %11
  %16 = sext i32 %11 to i64
  %17 = icmp slt i32 %9, 545
  br i1 %17, label %18, label %64

; <label>:18:                                     ; preds = %3
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds i16, i16* %0, i64 %19
  %21 = getelementptr inbounds i16, i16* %0, i64 %16
  %22 = mul i32 %13, 2192
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = shl i32 %15, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %0, i64 %26
  %28 = getelementptr inbounds i16, i16* %27, i64 %16
  %29 = shl i32 %15, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %0, i64 %30
  %32 = getelementptr inbounds i16, i16* %31, i64 %16
  %33 = bitcast i16* %32 to i32*
  %34 = bitcast i16* %28 to i32*
  %35 = bitcast i16* %24 to i32*
  %36 = bitcast i16* %20 to i32*
  %37 = shl i64 %8, 32
  %38 = ashr exact i64 %37, 32
  br label %39

; <label>:39:                                     ; preds = %18, %39
  %40 = phi i64 [ %38, %18 ], [ %62, %39 ]
  %41 = getelementptr inbounds i32, i32* %33, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = add nsw i64 %40, 548
  %44 = getelementptr inbounds i32, i32* %33, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !8
  %46 = add nsw i64 %40, 1096
  %47 = getelementptr inbounds i32, i32* %33, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !8
  %49 = add nsw i64 %40, 1644
  %50 = getelementptr inbounds i32, i32* %33, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !8
  %52 = add i32 %48, %42
  %53 = getelementptr inbounds i32, i32* %34, i64 %40
  store i32 %52, i32* %53, align 4, !tbaa !8
  %54 = add i32 %51, %45
  %55 = getelementptr inbounds i32, i32* %34, i64 %43
  store i32 %54, i32* %55, align 4, !tbaa !8
  %56 = add i32 %45, %42
  %57 = getelementptr inbounds i32, i32* %35, i64 %40
  store i32 %56, i32* %57, align 4, !tbaa !8
  %58 = add i32 %51, %48
  %59 = getelementptr inbounds i32, i32* %35, i64 %43
  store i32 %58, i32* %59, align 4, !tbaa !8
  %60 = add i32 %58, %56
  %61 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %60, i32* %61, align 4, !tbaa !8
  %62 = add nsw i64 %40, 32
  %63 = icmp slt i64 %40, 513
  br i1 %63, label %39, label %64

; <label>:64:                                     ; preds = %39, %3
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32 @_Z5mul24ii(i32, i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"ushort*", !"int", !"int"}
!7 = !{!"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
