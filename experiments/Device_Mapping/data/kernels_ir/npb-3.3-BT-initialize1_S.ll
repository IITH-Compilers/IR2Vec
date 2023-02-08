; ModuleID = 'npb-BT-initialize1.cl'
source_filename = "npb-BT-initialize1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.memset_pattern = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 1.000000e+00], align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @initialize1(double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %8 = icmp slt i32 %6, %3
  %9 = trunc i64 %7 to i32
  %10 = icmp slt i32 %9, %2
  %11 = and i1 %8, %10
  %12 = icmp sgt i32 %1, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %31

; <label>:14:                                     ; preds = %4
  %15 = shl i64 %5, 32
  %16 = ashr exact i64 %15, 32
  %17 = shl i64 %7, 32
  %18 = ashr exact i64 %17, 32
  %19 = mul nsw i64 %16, 845
  %20 = mul nsw i64 %18, 65
  %21 = add i64 %19, %20
  %22 = zext i32 %1 to i64
  br label %23

; <label>:23:                                     ; preds = %23, %14
  %24 = phi i64 [ 0, %14 ], [ %29, %23 ]
  %25 = mul nuw nsw i64 %24, 5
  %26 = add nsw i64 %21, %25
  %27 = getelementptr double, double* %0, i64 %26
  %28 = bitcast double* %27 to i8*
  call void @memset_pattern16(i8* %28, i8* bitcast ([2 x double]* @.memset_pattern to i8*), i64 40) #4
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %23

; <label>:31:                                     ; preds = %23, %4
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly
declare void @memset_pattern16(i8* nocapture, i8* nocapture readonly, i64) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !""}
