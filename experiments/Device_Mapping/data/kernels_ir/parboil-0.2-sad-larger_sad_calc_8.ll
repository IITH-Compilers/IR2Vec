; ModuleID = 'parboil-0.2-sad-larger_sad_calc_8.cl'
source_filename = "parboil-0.2-sad-larger_sad_calc_8.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @larger_sad_calc_8(i16* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z12get_local_idj(i32 1) #2
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  %7 = lshr i64 %4, 1
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_group_idj(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_group_idj(i32 1) #2
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z12get_local_idj(i32 0) #2
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 @_Z5mul24ii(i32 %1, i32 %2) #2
  %16 = tail call i32 @_Z5mul24ii(i32 %12, i32 %1) #2
  %17 = add nsw i32 %16, %10
  %18 = zext i32 %6 to i64
  %19 = inttoptr i64 %18 to i16*
  %20 = tail call i32 @_Z5mul24ii(i32 %15, i32 25) #2
  %21 = shl i64 %7, 3
  %22 = trunc i64 %21 to i32
  %23 = shl nuw nsw i32 %6, 1
  %24 = or i32 %23, %22
  %25 = add nsw i32 %20, %24
  %26 = mul nsw i32 %25, 1096
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %0, i64 %27
  %29 = mul i32 %17, 17536
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = mul i32 %15, 17
  %33 = shl i64 %7, 2
  %34 = trunc i64 %33 to i32
  %35 = or i32 %23, %34
  %36 = add nsw i32 %32, %35
  %37 = mul nsw i32 %36, 1096
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %0, i64 %38
  %40 = mul i32 %17, 8768
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = icmp slt i32 %8, 100
  br i1 %43, label %44, label %60

; <label>:44:                                     ; preds = %3
  %45 = mul i32 %15, 9
  %46 = or i32 %6, %34
  %47 = add nsw i32 %45, %46
  %48 = mul nsw i32 %47, 1096
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %0, i64 %49
  %51 = getelementptr inbounds i16, i16* %50, i64 %41
  %52 = mul i32 %15, 5
  %53 = add nsw i32 %52, %5
  %54 = mul nsw i32 %53, 1096
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %0, i64 %55
  %57 = mul i32 %17, 4384
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  br label %60

; <label>:60:                                     ; preds = %44, %3
  %61 = phi i16* [ %59, %44 ], [ %19, %3 ]
  %62 = phi i16* [ %51, %44 ], [ %19, %3 ]
  %63 = icmp slt i32 %14, 545
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %60
  %65 = bitcast i16* %31 to i32*
  %66 = bitcast i16* %42 to i32*
  %67 = bitcast i16* %62 to i32*
  %68 = bitcast i16* %61 to i32*
  %69 = shl i64 %13, 32
  %70 = ashr exact i64 %69, 32
  br label %72

; <label>:71:                                     ; preds = %72, %60
  ret void

; <label>:72:                                     ; preds = %64, %72
  %73 = phi i64 [ %70, %64 ], [ %96, %72 ]
  %74 = getelementptr inbounds i32, i32* %65, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !8
  %76 = add nsw i64 %73, 548
  %77 = getelementptr inbounds i32, i32* %65, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !8
  %79 = add nsw i64 %73, 2192
  %80 = getelementptr inbounds i32, i32* %65, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !8
  %82 = add nsw i64 %73, 2740
  %83 = getelementptr inbounds i32, i32* %65, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !8
  %85 = add i32 %81, %75
  %86 = getelementptr inbounds i32, i32* %66, i64 %73
  store i32 %85, i32* %86, align 4, !tbaa !8
  %87 = add i32 %84, %78
  %88 = getelementptr inbounds i32, i32* %66, i64 %76
  store i32 %87, i32* %88, align 4, !tbaa !8
  %89 = add i32 %78, %75
  %90 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32 %89, i32* %90, align 4, !tbaa !8
  %91 = add i32 %84, %81
  %92 = add nsw i64 %73, 1096
  %93 = getelementptr inbounds i32, i32* %67, i64 %92
  store i32 %91, i32* %93, align 4, !tbaa !8
  %94 = add i32 %91, %89
  %95 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32 %94, i32* %95, align 4, !tbaa !8
  %96 = add nsw i64 %73, 32
  %97 = icmp slt i64 %73, 513
  br i1 %97, label %72, label %71
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

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
