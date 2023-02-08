; ModuleID = 'npb-MG-kernel_zran3_1.cl'
source_filename = "npb-MG-kernel_zran3_1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @kernel_zran3_1(double*, double* nocapture readonly, i32, i32, i32, i32, i32, i32, i32, double) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %14 = trunc i64 %13 to i32
  %15 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5
  %16 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5
  %17 = tail call double @_Z3powdd(double 5.000000e+00, double 1.300000e+01) #4
  %18 = icmp slt i32 %14, %7
  %19 = icmp sgt i32 %14, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %53

; <label>:21:                                     ; preds = %10
  %22 = shl i64 %13, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds double, double* %1, i64 %23
  %25 = bitcast double* %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !8
  %27 = bitcast double* %12 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !8
  %28 = icmp sgt i32 %6, 1
  br i1 %28, label %29, label %53

; <label>:29:                                     ; preds = %21
  %30 = bitcast double* %11 to i64*
  %31 = mul nsw i32 %14, %3
  %32 = zext i32 %6 to i64
  store i64 %26, i64* %30, align 8, !tbaa !8
  %33 = add i32 %31, 1
  %34 = mul i32 %33, %2
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %0, i64 %36
  call void @vranlc(i32 %8, double* nonnull %11, double %17, double* %37) #5
  %38 = call double @randlc(double* nonnull %12, double %9) #5
  %39 = icmp eq i32 %6, 2
  br i1 %39, label %53, label %40

; <label>:40:                                     ; preds = %29
  br label %41

; <label>:41:                                     ; preds = %40, %41
  %42 = phi i64 [ %51, %41 ], [ 2, %40 ]
  %43 = load i64, i64* %27, align 8, !tbaa !8
  store i64 %43, i64* %30, align 8, !tbaa !8
  %44 = trunc i64 %42 to i32
  %45 = add i32 %31, %44
  %46 = mul i32 %45, %2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %0, i64 %48
  call void @vranlc(i32 %8, double* nonnull %11, double %17, double* %49) #5
  %50 = call double @randlc(double* nonnull %12, double %9) #5
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, %32
  br i1 %52, label %53, label %41

; <label>:53:                                     ; preds = %41, %29, %21, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @_Z3powdd(double, double) local_unnamed_addr #2

declare void @vranlc(i32, double*, double, double*) local_unnamed_addr #3

declare double @randlc(double*, double) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"double*", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"double"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
