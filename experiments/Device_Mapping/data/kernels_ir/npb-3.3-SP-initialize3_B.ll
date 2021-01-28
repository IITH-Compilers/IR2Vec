; ModuleID = 'npb-SP-initialize3.cl'
source_filename = "npb-SP-initialize3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @initialize3(double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca [5 x double], align 16
  %7 = bitcast [5 x double]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #4
  %8 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %9 = trunc i64 %8 to i32
  %10 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %9, %4
  %13 = icmp slt i32 %11, %3
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %5
  %16 = sitofp i32 %9 to double
  %17 = fmul double %16, 0x3F8446F86562D9FB
  %18 = sitofp i32 %11 to double
  %19 = fmul double %18, 0x3F8446F86562D9FB
  %20 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 0
  call void @exact_solution(double 0.000000e+00, double %19, double %17, double* nonnull %20, double* %1) #4
  %21 = shl i64 %8, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %10, 32
  %24 = ashr exact i64 %23, 32
  %25 = mul nsw i64 %22, 53045
  %26 = mul nsw i64 %24, 515
  %27 = add i64 %25, %26
  %28 = getelementptr double, double* %0, i64 %27
  %29 = bitcast double* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* nonnull %7, i64 40, i32 8, i1 false)
  %30 = add nsw i32 %2, -1
  call void @exact_solution(double 1.000000e+00, double %19, double %17, double* nonnull %20, double* %1) #4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 5
  %33 = add i64 %27, %32
  %34 = getelementptr double, double* %0, i64 %33
  %35 = bitcast double* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* nonnull %7, i64 40, i32 8, i1 false)
  br label %36

; <label>:36:                                     ; preds = %15, %5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @exact_solution(double, double, double, double*, double*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
