; ModuleID = 'rodinia-3.1-nw-nw_kernel1.cl'
source_filename = "rodinia-3.1-nw-nw_kernel1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @nw_kernel1(i32* nocapture readonly, i32* nocapture, i32* nocapture readnone, i32* nocapture, i32* nocapture, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %13 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %16 = trunc i64 %15 to i32
  %17 = add i32 %7, 67108863
  %18 = sub i32 %17, %14
  %19 = shl i32 %18, 6
  %20 = shl nsw i32 %14, 6
  %21 = add i32 %19, %10
  %22 = mul i32 %21, %5
  %23 = add i32 %20, %11
  %24 = add i32 %23, %22
  %25 = add nsw i32 %24, %16
  %26 = add nsw i32 %5, 1
  %27 = add nsw i32 %26, %25
  %28 = add nsw i32 %25, 1
  %29 = icmp eq i32 %16, 0
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %12
  %31 = sext i32 %25 to i64
  %32 = getelementptr inbounds i32, i32* %1, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = mul i64 %15, 279172874240
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds i32, i32* %3, i64 %35
  store i32 %33, i32* %36, align 4, !tbaa !8
  br label %37

; <label>:37:                                     ; preds = %30, %12
  tail call void @_Z7barrierj(i32 1) #5
  %38 = sext i32 %5 to i64
  %39 = sext i32 %27 to i64
  %40 = shl i64 %15, 32
  %41 = ashr exact i64 %40, 32
  br label %58

; <label>:42:                                     ; preds = %58
  tail call void @_Z7barrierj(i32 1) #5
  %43 = mul nsw i32 %16, %5
  %44 = add i32 %43, %5
  %45 = add i32 %44, %24
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %1, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !8
  %49 = add nsw i32 %16, 1
  %50 = mul nsw i32 %49, 65
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %3, i64 %51
  store i32 %48, i32* %52, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %53 = sext i32 %28 to i64
  %54 = getelementptr inbounds i32, i32* %1, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !8
  %56 = sext i32 %49 to i64
  %57 = getelementptr inbounds i32, i32* %3, i64 %56
  store i32 %55, i32* %57, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  br label %84

; <label>:58:                                     ; preds = %58, %37
  %59 = phi i64 [ 0, %37 ], [ %75, %58 ]
  %60 = mul nsw i64 %59, %38
  %61 = add nsw i64 %60, %39
  %62 = getelementptr inbounds i32, i32* %0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !8
  %64 = shl i64 %59, 6
  %65 = add nsw i64 %64, %41
  %66 = getelementptr inbounds i32, i32* %4, i64 %65
  store i32 %63, i32* %66, align 4, !tbaa !8
  %67 = or i64 %59, 1
  %68 = mul nsw i64 %67, %38
  %69 = add nsw i64 %68, %39
  %70 = getelementptr inbounds i32, i32* %0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !8
  %72 = shl i64 %67, 6
  %73 = add nsw i64 %72, %41
  %74 = getelementptr inbounds i32, i32* %4, i64 %73
  store i32 %71, i32* %74, align 4, !tbaa !8
  %75 = add nsw i64 %59, 2
  %76 = icmp eq i64 %75, 64
  br i1 %76, label %42, label %58

; <label>:77:                                     ; preds = %116
  tail call void @_Z7barrierj(i32 1) #5
  %78 = add nsw i32 %16, 64
  %79 = sub nsw i32 64, %16
  %80 = add nsw i32 %79, -1
  %81 = mul nsw i32 %80, 65
  %82 = shl i32 %80, 6
  %83 = mul nsw i32 %79, 65
  br label %119

; <label>:84:                                     ; preds = %116, %42
  %85 = phi i64 [ 0, %42 ], [ %117, %116 ]
  %86 = icmp slt i64 %85, %41
  br i1 %86, label %116, label %87

; <label>:87:                                     ; preds = %84
  %88 = sub nsw i64 %85, %41
  %89 = trunc i64 %88 to i32
  %90 = mul i32 %89, 65
  %91 = add nsw i32 %90, %16
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %3, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !8
  %95 = shl i32 %89, 6
  %96 = add nsw i32 %95, %16
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %4, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !8
  %100 = add nsw i32 %99, %94
  %101 = add i32 %90, 65
  %102 = add nsw i32 %101, %16
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %3, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !8
  %106 = sub nsw i32 %105, %6
  %107 = add nsw i32 %90, %49
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %3, i64 %108
  %110 = load i32, i32* %109, align 4, !tbaa !8
  %111 = sub nsw i32 %110, %6
  %112 = tail call i32 @maximum(i32 %100, i32 %106, i32 %111) #6
  %113 = add nsw i32 %101, %49
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %3, i64 %114
  store i32 %112, i32* %115, align 4, !tbaa !8
  br label %116

; <label>:116:                                    ; preds = %84, %87
  tail call void @_Z7barrierj(i32 1) #5
  %117 = add nuw nsw i64 %85, 1
  %118 = icmp eq i64 %117, 64
  br i1 %118, label %77, label %84

; <label>:119:                                    ; preds = %149, %77
  %120 = phi i64 [ 62, %77 ], [ %150, %149 ]
  %121 = icmp slt i64 %120, %41
  br i1 %121, label %149, label %122

; <label>:122:                                    ; preds = %119
  %123 = trunc i64 %120 to i32
  %124 = sub i32 %78, %123
  %125 = add nsw i32 %124, -1
  %126 = add nsw i32 %125, %81
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %3, i64 %127
  %129 = load i32, i32* %128, align 4, !tbaa !8
  %130 = add nsw i32 %125, %82
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %4, i64 %131
  %133 = load i32, i32* %132, align 4, !tbaa !8
  %134 = add nsw i32 %133, %129
  %135 = add nsw i32 %125, %83
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %3, i64 %136
  %138 = load i32, i32* %137, align 4, !tbaa !8
  %139 = sub nsw i32 %138, %6
  %140 = add nsw i32 %124, %81
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %3, i64 %141
  %143 = load i32, i32* %142, align 4, !tbaa !8
  %144 = sub nsw i32 %143, %6
  %145 = tail call i32 @maximum(i32 %134, i32 %139, i32 %144) #6
  %146 = add nsw i32 %124, %83
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %3, i64 %147
  store i32 %145, i32* %148, align 4, !tbaa !8
  br label %149

; <label>:149:                                    ; preds = %119, %122
  tail call void @_Z7barrierj(i32 1) #5
  %150 = add nsw i64 %120, -1
  %151 = icmp eq i64 %120, 0
  br i1 %151, label %152, label %119

; <label>:152:                                    ; preds = %149
  br label %154

; <label>:153:                                    ; preds = %154
  ret void

; <label>:154:                                    ; preds = %154, %152
  %155 = phi i64 [ 0, %152 ], [ %164, %154 ]
  %156 = or i64 %155, 1
  %157 = mul nuw nsw i64 %156, 65
  %158 = add nsw i64 %157, %56
  %159 = getelementptr inbounds i32, i32* %3, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !8
  %161 = mul nsw i64 %155, %38
  %162 = add nsw i64 %161, %39
  %163 = getelementptr inbounds i32, i32* %1, i64 %162
  store i32 %160, i32* %163, align 4, !tbaa !8
  %164 = add nsw i64 %155, 2
  %165 = mul nuw nsw i64 %164, 65
  %166 = add nsw i64 %165, %56
  %167 = getelementptr inbounds i32, i32* %3, i64 %166
  %168 = load i32, i32* %167, align 4, !tbaa !8
  %169 = mul nsw i64 %156, %38
  %170 = add nsw i64 %169, %39
  %171 = getelementptr inbounds i32, i32* %1, i64 %170
  store i32 %168, i32* %171, align 4, !tbaa !8
  %172 = icmp eq i64 %164, 64
  br i1 %172, label %153, label %154
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

declare i32 @maximum(i32, i32, i32) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
