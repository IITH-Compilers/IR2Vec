; ModuleID = 'npb-FT-compute_initial_conditions.cl'
source_filename = "npb-FT-compute_initial_conditions.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.dcomplex = type { double, double }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @compute_initial_conditions(%struct.dcomplex*, double* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca double, align 8
  %7 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, %4
  br i1 %10, label %11, label %32

; <label>:11:                                     ; preds = %5
  %12 = shl i64 %8, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds double, double* %1, i64 %13
  %15 = bitcast double* %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !8
  %17 = bitcast double* %6 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !8
  %18 = mul nsw i32 %9, %3
  %19 = add nsw i32 %2, 1
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %11
  %22 = zext i32 %3 to i64
  br label %23

; <label>:23:                                     ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %30, %23 ]
  %25 = trunc i64 %24 to i32
  %26 = add i32 %18, %25
  %27 = mul i32 %26, %19
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %28, i32 0
  call void @vranlc(i32 1024, double* nonnull %6, double 0x41D2309CE5400000, double* %29) #4
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23

; <label>:32:                                     ; preds = %23, %11, %5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @vranlc(i32, double*, double, double*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
!6 = !{!"dcomplex*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
