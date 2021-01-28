; ModuleID = 'rodinia-3.1-cfd-initialize_variables.cl'
source_filename = "rodinia-3.1-cfd-initialize_variables.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @initialize_variables(float* nocapture, float* nocapture readonly, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %5 = trunc i64 %4 to i32
  %6 = icmp slt i32 %5, %2
  br i1 %6, label %7, label %42

; <label>:7:                                      ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = bitcast float* %1 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !8
  %13 = getelementptr inbounds float, float* %0, i64 %10
  %14 = bitcast float* %13 to i32*
  store i32 %12, i32* %14, align 4, !tbaa !8
  %15 = getelementptr inbounds float, float* %1, i64 1
  %16 = bitcast float* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !8
  %18 = add nsw i64 %10, %8
  %19 = getelementptr inbounds float, float* %0, i64 %18
  %20 = bitcast float* %19 to i32*
  store i32 %17, i32* %20, align 4, !tbaa !8
  %21 = getelementptr inbounds float, float* %1, i64 2
  %22 = bitcast float* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !8
  %24 = shl nsw i64 %8, 1
  %25 = add nsw i64 %24, %10
  %26 = getelementptr inbounds float, float* %0, i64 %25
  %27 = bitcast float* %26 to i32*
  store i32 %23, i32* %27, align 4, !tbaa !8
  %28 = getelementptr inbounds float, float* %1, i64 3
  %29 = bitcast float* %28 to i32*
  %30 = load i32, i32* %29, align 4, !tbaa !8
  %31 = mul nsw i64 %8, 3
  %32 = add nsw i64 %31, %10
  %33 = getelementptr inbounds float, float* %0, i64 %32
  %34 = bitcast float* %33 to i32*
  store i32 %30, i32* %34, align 4, !tbaa !8
  %35 = getelementptr inbounds float, float* %1, i64 4
  %36 = bitcast float* %35 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !8
  %38 = shl nsw i64 %8, 2
  %39 = add nsw i64 %38, %10
  %40 = getelementptr inbounds float, float* %0, i64 %39
  %41 = bitcast float* %40 to i32*
  store i32 %37, i32* %41, align 4, !tbaa !8
  br label %42

; <label>:42:                                     ; preds = %7, %3
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
!4 = !{i32 1, i32 2, i32 0}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int"}
!7 = !{!"", !"const", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
