; ModuleID = 'rodinia-3.1-nw-nw_kernel2.cl'
source_filename = "rodinia-3.1-nw-nw_kernel2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @nw_kernel2(i32* nocapture readonly, i32* nocapture, i32* nocapture readnone, i32* nocapture, i32* nocapture, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %13 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %14 = trunc i64 %13 to i32
  %15 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %16 = trunc i64 %15 to i32
  %17 = sub i32 %8, %7
  %18 = add i32 %17, %14
  %19 = add i32 %8, 67108863
  %20 = sub i32 %19, %14
  %21 = shl i32 %20, 6
  %22 = shl nsw i32 %18, 6
  %23 = add i32 %21, %10
  %24 = mul i32 %23, %5
  %25 = add i32 %22, %11
  %26 = add i32 %25, %24
  %27 = add nsw i32 %26, %16
  %28 = add nsw i32 %5, 1
  %29 = add nsw i32 %28, %27
  %30 = add nsw i32 %27, 1
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %12
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds i32, i32* %1, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = mul i64 %15, 279172874240
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds i32, i32* %3, i64 %37
  store i32 %35, i32* %38, align 4, !tbaa !8
  br label %39

; <label>:39:                                     ; preds = %32, %12
  %40 = sext i32 %5 to i64
  %41 = sext i32 %29 to i64
  %42 = shl i64 %15, 32
  %43 = ashr exact i64 %42, 32
  br label %60

; <label>:44:                                     ; preds = %60
  tail call void @_Z7barrierj(i32 1) #5
  %45 = mul nsw i32 %16, %5
  %46 = add i32 %45, %5
  %47 = add i32 %46, %26
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %1, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !8
  %51 = add nsw i32 %16, 1
  %52 = mul nsw i32 %51, 65
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %3, i64 %53
  store i32 %50, i32* %54, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  %55 = sext i32 %30 to i64
  %56 = getelementptr inbounds i32, i32* %1, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !8
  %58 = sext i32 %51 to i64
  %59 = getelementptr inbounds i32, i32* %3, i64 %58
  store i32 %57, i32* %59, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #5
  br label %86

; <label>:60:                                     ; preds = %60, %39
  %61 = phi i64 [ 0, %39 ], [ %77, %60 ]
  %62 = mul nsw i64 %61, %40
  %63 = add nsw i64 %62, %41
  %64 = getelementptr inbounds i32, i32* %0, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = shl i64 %61, 6
  %67 = add nsw i64 %66, %43
  %68 = getelementptr inbounds i32, i32* %4, i64 %67
  store i32 %65, i32* %68, align 4, !tbaa !8
  %69 = or i64 %61, 1
  %70 = mul nsw i64 %69, %40
  %71 = add nsw i64 %70, %41
  %72 = getelementptr inbounds i32, i32* %0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !8
  %74 = shl i64 %69, 6
  %75 = add nsw i64 %74, %43
  %76 = getelementptr inbounds i32, i32* %4, i64 %75
  store i32 %73, i32* %76, align 4, !tbaa !8
  %77 = add nsw i64 %61, 2
  %78 = icmp eq i64 %77, 64
  br i1 %78, label %44, label %60

; <label>:79:                                     ; preds = %118
  %80 = add nsw i32 %16, 64
  %81 = sub nsw i32 64, %16
  %82 = add nsw i32 %81, -1
  %83 = mul nsw i32 %82, 65
  %84 = shl i32 %82, 6
  %85 = mul nsw i32 %81, 65
  br label %121

; <label>:86:                                     ; preds = %118, %44
  %87 = phi i64 [ 0, %44 ], [ %119, %118 ]
  %88 = icmp slt i64 %87, %43
  br i1 %88, label %118, label %89

; <label>:89:                                     ; preds = %86
  %90 = sub nsw i64 %87, %43
  %91 = trunc i64 %90 to i32
  %92 = mul i32 %91, 65
  %93 = add nsw i32 %92, %16
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %3, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !8
  %97 = shl i32 %91, 6
  %98 = add nsw i32 %97, %16
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %4, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !8
  %102 = add nsw i32 %101, %96
  %103 = add i32 %92, 65
  %104 = add nsw i32 %103, %16
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %3, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !8
  %108 = sub nsw i32 %107, %6
  %109 = add nsw i32 %92, %51
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %3, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !8
  %113 = sub nsw i32 %112, %6
  %114 = tail call i32 @maximum(i32 %102, i32 %108, i32 %113) #6
  %115 = add nsw i32 %103, %51
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %3, i64 %116
  store i32 %114, i32* %117, align 4, !tbaa !8
  br label %118

; <label>:118:                                    ; preds = %86, %89
  tail call void @_Z7barrierj(i32 1) #5
  %119 = add nuw nsw i64 %87, 1
  %120 = icmp eq i64 %119, 64
  br i1 %120, label %79, label %86

; <label>:121:                                    ; preds = %151, %79
  %122 = phi i64 [ 62, %79 ], [ %152, %151 ]
  %123 = icmp slt i64 %122, %43
  br i1 %123, label %151, label %124

; <label>:124:                                    ; preds = %121
  %125 = trunc i64 %122 to i32
  %126 = sub i32 %80, %125
  %127 = add nsw i32 %126, -1
  %128 = add nsw i32 %127, %83
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %3, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !8
  %132 = add nsw i32 %127, %84
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %4, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !8
  %136 = add nsw i32 %135, %131
  %137 = add nsw i32 %127, %85
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %3, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !8
  %141 = sub nsw i32 %140, %6
  %142 = add nsw i32 %126, %83
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %3, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !8
  %146 = sub nsw i32 %145, %6
  %147 = tail call i32 @maximum(i32 %136, i32 %141, i32 %146) #6
  %148 = add nsw i32 %126, %85
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %3, i64 %149
  store i32 %147, i32* %150, align 4, !tbaa !8
  br label %151

; <label>:151:                                    ; preds = %121, %124
  tail call void @_Z7barrierj(i32 1) #5
  %152 = add nsw i64 %122, -1
  %153 = icmp eq i64 %122, 0
  br i1 %153, label %154, label %121

; <label>:154:                                    ; preds = %151
  br label %156

; <label>:155:                                    ; preds = %156
  ret void

; <label>:156:                                    ; preds = %156, %154
  %157 = phi i64 [ 0, %154 ], [ %166, %156 ]
  %158 = or i64 %157, 1
  %159 = mul nuw nsw i64 %158, 65
  %160 = add nsw i64 %159, %58
  %161 = getelementptr inbounds i32, i32* %3, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !8
  %163 = mul nsw i64 %157, %40
  %164 = add nsw i64 %163, %41
  %165 = getelementptr inbounds i32, i32* %1, i64 %164
  store i32 %162, i32* %165, align 4, !tbaa !8
  %166 = add nsw i64 %157, 2
  %167 = mul nuw nsw i64 %166, 65
  %168 = add nsw i64 %167, %58
  %169 = getelementptr inbounds i32, i32* %3, i64 %168
  %170 = load i32, i32* %169, align 4, !tbaa !8
  %171 = mul nsw i64 %158, %40
  %172 = add nsw i64 %171, %41
  %173 = getelementptr inbounds i32, i32* %1, i64 %172
  store i32 %170, i32* %173, align 4, !tbaa !8
  %174 = icmp eq i64 %166, 64
  br i1 %174, label %155, label %156
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
