; ModuleID = 'rodinia-3.1-pathfinder-dynproc_kernel.cl'
source_filename = "rodinia-3.1-pathfinder-dynproc_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @dynproc_kernel(i32, i32* nocapture readonly, i32* nocapture readonly, i32* nocapture, i32, i32, i32, i32, i32, i32* nocapture, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %13 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %16 = trunc i64 %15 to i32
  %17 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %0, 1
  %20 = mul i32 %19, %8
  %21 = sub nsw i32 %14, %20
  %22 = mul nsw i32 %21, %16
  %23 = sub nsw i32 %22, %7
  %24 = add nsw i32 %23, %14
  %25 = add nsw i32 %23, %18
  %26 = icmp slt i32 %23, 0
  %27 = sub nsw i32 0, %23
  %28 = select i1 %26, i32 %27, i32 0
  %29 = icmp sgt i32 %24, %4
  %30 = add nsw i32 %14, -1
  %31 = add i32 %30, %4
  %32 = sub i32 %31, %24
  %33 = select i1 %29, i32 %32, i32 %30
  %34 = add nsw i32 %18, -1
  %35 = add nsw i32 %18, 1
  %36 = icmp slt i32 %34, %28
  %37 = select i1 %36, i32 %28, i32 %34
  %38 = icmp sgt i32 %35, %33
  %39 = select i1 %38, i32 %33, i32 %35
  %40 = icmp sgt i32 %28, %18
  %41 = icmp slt i32 %33, %18
  %42 = icmp sgt i32 %25, -1
  %43 = icmp slt i32 %25, %4
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %12
  %46 = sext i32 %25 to i64
  %47 = getelementptr inbounds i32, i32* %2, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !8
  %49 = shl i64 %17, 32
  %50 = ashr exact i64 %49, 32
  %51 = getelementptr inbounds i32, i32* %9, i64 %50
  store i32 %48, i32* %51, align 4, !tbaa !8
  br label %52

; <label>:52:                                     ; preds = %45, %12
  tail call void @_Z7barrierj(i32 1) #4
  %53 = icmp sgt i32 %0, 0
  br i1 %53, label %54, label %122

; <label>:54:                                     ; preds = %52
  %55 = add i32 %14, -2
  %56 = or i1 %40, %41
  %57 = sext i32 %37 to i64
  %58 = getelementptr inbounds i32, i32* %9, i64 %57
  %59 = shl i64 %17, 32
  %60 = ashr exact i64 %59, 32
  %61 = getelementptr inbounds i32, i32* %9, i64 %60
  %62 = sext i32 %39 to i64
  %63 = getelementptr inbounds i32, i32* %9, i64 %62
  %64 = getelementptr inbounds i32, i32* %10, i64 %60
  %65 = icmp eq i32 %18, 11
  %66 = sext i32 %25 to i64
  %67 = getelementptr inbounds i32, i32* %2, i64 %66
  %68 = add nsw i32 %0, -1
  %69 = sext i32 %6 to i64
  %70 = sext i32 %4 to i64
  %71 = shl i64 %17, 32
  %72 = ashr exact i64 %71, 32
  %73 = zext i32 %68 to i64
  %74 = sext i32 %0 to i64
  br label %75

; <label>:75:                                     ; preds = %54, %111
  %76 = phi i64 [ 0, %54 ], [ %77, %111 ]
  %77 = add nuw nsw i64 %76, 1
  %78 = icmp slt i64 %76, %72
  br i1 %78, label %79, label %104

; <label>:79:                                     ; preds = %75
  %80 = trunc i64 %76 to i32
  %81 = sub i32 %55, %80
  %82 = icmp slt i32 %81, %18
  %83 = or i1 %56, %82
  br i1 %83, label %104, label %84

; <label>:84:                                     ; preds = %79
  %85 = load i32, i32* %58, align 4, !tbaa !8
  %86 = load i32, i32* %61, align 4, !tbaa !8
  %87 = load i32, i32* %63, align 4, !tbaa !8
  %88 = icmp sgt i32 %85, %86
  %89 = select i1 %88, i32 %86, i32 %85
  %90 = icmp sgt i32 %89, %87
  %91 = select i1 %90, i32 %87, i32 %89
  %92 = add nsw i64 %76, %69
  %93 = mul nsw i64 %92, %70
  %94 = add nsw i64 %93, %66
  %95 = getelementptr inbounds i32, i32* %1, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !8
  %97 = add nsw i32 %91, %96
  store i32 %97, i32* %64, align 4, !tbaa !8
  %98 = icmp eq i64 %76, 0
  %99 = and i1 %65, %98
  br i1 %99, label %100, label %104

; <label>:100:                                    ; preds = %84
  %101 = load i32, i32* %67, align 4, !tbaa !8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %11, i64 %102
  store i32 1, i32* %103, align 4, !tbaa !8
  br label %104

; <label>:104:                                    ; preds = %84, %100, %79, %75
  %105 = phi i8 [ 0, %79 ], [ 0, %75 ], [ 1, %100 ], [ 1, %84 ]
  tail call void @_Z7barrierj(i32 1) #4
  %106 = icmp eq i64 %76, %73
  br i1 %106, label %113, label %107

; <label>:107:                                    ; preds = %104
  %108 = icmp eq i8 %105, 0
  br i1 %108, label %111, label %109

; <label>:109:                                    ; preds = %107
  %110 = load i32, i32* %64, align 4, !tbaa !8
  store i32 %110, i32* %61, align 4, !tbaa !8
  br label %111

; <label>:111:                                    ; preds = %107, %109
  tail call void @_Z7barrierj(i32 1) #4
  %112 = icmp slt i64 %77, %74
  br i1 %112, label %75, label %113

; <label>:113:                                    ; preds = %111, %104
  %114 = icmp eq i8 %105, 0
  br i1 %114, label %122, label %115

; <label>:115:                                    ; preds = %113
  %116 = shl i64 %17, 32
  %117 = ashr exact i64 %116, 32
  %118 = getelementptr inbounds i32, i32* %10, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !8
  %120 = sext i32 %25 to i64
  %121 = getelementptr inbounds i32, i32* %3, i64 %120
  store i32 %119, i32* %121, align 4, !tbaa !8
  br label %122

; <label>:122:                                    ; preds = %52, %113, %115
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int", !"int", !"int*", !"int*", !"int*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
