; ModuleID = 'npb-SP-exact_rhs1.cl'
source_filename = "npb-SP-exact_rhs1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @exact_rhs1(double* nocapture, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %6, %3
  %11 = trunc i64 %7 to i32
  %12 = icmp slt i32 %11, %2
  %13 = and i1 %10, %12
  %14 = icmp slt i32 %9, %1
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %4
  %17 = shl i64 %5, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %7, 32
  %20 = ashr exact i64 %19, 32
  %21 = shl i64 %8, 32
  %22 = ashr exact i64 %21, 32
  %23 = mul nsw i64 %18, 53045
  %24 = mul nsw i64 %20, 515
  %25 = add i64 %23, %24
  %26 = mul nsw i64 %22, 5
  %27 = add i64 %25, %26
  %28 = getelementptr double, double* %0, i64 %27
  %29 = bitcast double* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 40, i32 8, i1 false)
  br label %30

; <label>:30:                                     ; preds = %16, %4
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }

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
