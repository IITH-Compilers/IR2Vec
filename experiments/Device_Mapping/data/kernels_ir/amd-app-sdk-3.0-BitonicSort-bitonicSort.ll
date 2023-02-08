; ModuleID = 'BitonicSort_Kernels.cl'
source_filename = "BitonicSort_Kernels.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @bitonicSort(i32* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %6 = trunc i64 %5 to i32
  %7 = sub i32 %1, %2
  %8 = and i32 %7, 31
  %9 = shl i32 1, %8
  %10 = shl i32 %9, 1
  %11 = add i32 %9, -1
  %12 = and i32 %11, %6
  %13 = lshr i32 %6, %8
  %14 = mul i32 %10, %13
  %15 = add i32 %14, %12
  %16 = add i32 %15, %9
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !8
  %23 = and i32 %1, 31
  %24 = shl i32 1, %23
  %25 = and i32 %24, %6
  %26 = icmp eq i32 %25, 0
  %27 = sub i32 1, %3
  %28 = select i1 %26, i32 %3, i32 %27
  %29 = icmp ugt i32 %19, %22
  %30 = select i1 %29, i32 %19, i32 %22
  %31 = select i1 %29, i32 %22, i32 %19
  %32 = icmp eq i32 %28, 0
  %33 = select i1 %32, i32 %30, i32 %31
  %34 = select i1 %32, i32 %31, i32 %30
  store i32 %33, i32* %18, align 4, !tbaa !8
  store i32 %34, i32* %21, align 4, !tbaa !8
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
!4 = !{i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"uint*", !"uint", !"uint", !"uint"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
