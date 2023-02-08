; ModuleID = 'rodinia-3.1-kmeans-kmeans_swap.cl'
source_filename = "rodinia-3.1-kmeans-kmeans_swap.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kmeans_swap(float* nocapture readonly, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %6 = trunc i64 %5 to i32
  %7 = icmp ult i32 %6, %2
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %92

; <label>:10:                                     ; preds = %4
  %11 = mul i32 %6, %3
  %12 = zext i32 %3 to i64
  %13 = add nsw i64 %12, -1
  %14 = and i64 %12, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %71, label %16

; <label>:16:                                     ; preds = %10
  %17 = sub nsw i64 %12, %14
  br label %18

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %68, %18 ]
  %20 = phi i64 [ %17, %16 ], [ %69, %18 ]
  %21 = trunc i64 %19 to i32
  %22 = add i32 %11, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %0, i64 %23
  %25 = bitcast float* %24 to i32*
  %26 = load i32, i32* %25, align 4, !tbaa !8
  %27 = mul nsw i32 %21, %2
  %28 = add i32 %27, %6
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %1, i64 %29
  %31 = bitcast float* %30 to i32*
  store i32 %26, i32* %31, align 4, !tbaa !8
  %32 = trunc i64 %19 to i32
  %33 = or i32 %32, 1
  %34 = add i32 %11, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %0, i64 %35
  %37 = bitcast float* %36 to i32*
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = mul nsw i32 %33, %2
  %40 = add i32 %39, %6
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %1, i64 %41
  %43 = bitcast float* %42 to i32*
  store i32 %38, i32* %43, align 4, !tbaa !8
  %44 = trunc i64 %19 to i32
  %45 = or i32 %44, 2
  %46 = add i32 %11, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %0, i64 %47
  %49 = bitcast float* %48 to i32*
  %50 = load i32, i32* %49, align 4, !tbaa !8
  %51 = mul nsw i32 %45, %2
  %52 = add i32 %51, %6
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %1, i64 %53
  %55 = bitcast float* %54 to i32*
  store i32 %50, i32* %55, align 4, !tbaa !8
  %56 = trunc i64 %19 to i32
  %57 = or i32 %56, 3
  %58 = add i32 %11, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %0, i64 %59
  %61 = bitcast float* %60 to i32*
  %62 = load i32, i32* %61, align 4, !tbaa !8
  %63 = mul nsw i32 %57, %2
  %64 = add i32 %63, %6
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = bitcast float* %66 to i32*
  store i32 %62, i32* %67, align 4, !tbaa !8
  %68 = add nsw i64 %19, 4
  %69 = add i64 %20, -4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %18

; <label>:71:                                     ; preds = %18, %10
  %72 = phi i64 [ 0, %10 ], [ %68, %18 ]
  %73 = icmp eq i64 %14, 0
  br i1 %73, label %92, label %74

; <label>:74:                                     ; preds = %71
  br label %75

; <label>:75:                                     ; preds = %75, %74
  %76 = phi i64 [ %72, %74 ], [ %89, %75 ]
  %77 = phi i64 [ %14, %74 ], [ %90, %75 ]
  %78 = trunc i64 %76 to i32
  %79 = add i32 %11, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %0, i64 %80
  %82 = bitcast float* %81 to i32*
  %83 = load i32, i32* %82, align 4, !tbaa !8
  %84 = mul nsw i32 %78, %2
  %85 = add i32 %84, %6
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %1, i64 %86
  %88 = bitcast float* %87 to i32*
  store i32 %83, i32* %88, align 4, !tbaa !8
  %89 = add nuw nsw i64 %76, 1
  %90 = add i64 %77, -1
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %75, !llvm.loop !12

; <label>:92:                                     ; preds = %71, %75, %4
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
