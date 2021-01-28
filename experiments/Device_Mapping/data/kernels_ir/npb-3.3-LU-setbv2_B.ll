; ModuleID = 'npb-LU-setbv2.cl'
source_filename = "npb-LU-setbv2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @setbv2(double* nocapture, double*, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = alloca [5 x double], align 16
  %7 = alloca [5 x double], align 16
  %8 = bitcast [5 x double]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #4
  %9 = bitcast [5 x double]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #4
  %10 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %11 = trunc i64 %10 to i32
  %12 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %11, %4
  %15 = icmp slt i32 %13, %2
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %75

; <label>:17:                                     ; preds = %5
  %18 = bitcast double* %0 to [103 x [103 x [5 x double]]]*
  %19 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 0
  call void @exact(i32 %13, i32 0, i32 %11, double* nonnull %19, double* %1) #4
  %20 = add nsw i32 %3, -1
  %21 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 0
  call void @exact(i32 %13, i32 %20, i32 %11, double* nonnull %21, double* %1) #4
  %22 = shl i64 %10, 32
  %23 = ashr exact i64 %22, 32
  %24 = shl i64 %12, 32
  %25 = ashr exact i64 %24, 32
  %26 = sext i32 %20 to i64
  %27 = bitcast [5 x double]* %6 to i64*
  %28 = load i64, i64* %27, align 16, !tbaa !8
  %29 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 0, i64 %25, i64 0
  %30 = bitcast double* %29 to i64*
  store i64 %28, i64* %30, align 8, !tbaa !8
  %31 = bitcast [5 x double]* %7 to i64*
  %32 = load i64, i64* %31, align 16, !tbaa !8
  %33 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 %26, i64 %25, i64 0
  %34 = bitcast double* %33 to i64*
  store i64 %32, i64* %34, align 8, !tbaa !8
  %35 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 1
  %36 = bitcast double* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !8
  %38 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 0, i64 %25, i64 1
  %39 = bitcast double* %38 to i64*
  store i64 %37, i64* %39, align 8, !tbaa !8
  %40 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 1
  %41 = bitcast double* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !8
  %43 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 %26, i64 %25, i64 1
  %44 = bitcast double* %43 to i64*
  store i64 %42, i64* %44, align 8, !tbaa !8
  %45 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 2
  %46 = bitcast double* %45 to i64*
  %47 = load i64, i64* %46, align 16, !tbaa !8
  %48 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 0, i64 %25, i64 2
  %49 = bitcast double* %48 to i64*
  store i64 %47, i64* %49, align 8, !tbaa !8
  %50 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 2
  %51 = bitcast double* %50 to i64*
  %52 = load i64, i64* %51, align 16, !tbaa !8
  %53 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 %26, i64 %25, i64 2
  %54 = bitcast double* %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !8
  %55 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 3
  %56 = bitcast double* %55 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !8
  %58 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 0, i64 %25, i64 3
  %59 = bitcast double* %58 to i64*
  store i64 %57, i64* %59, align 8, !tbaa !8
  %60 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 3
  %61 = bitcast double* %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !8
  %63 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 %26, i64 %25, i64 3
  %64 = bitcast double* %63 to i64*
  store i64 %62, i64* %64, align 8, !tbaa !8
  %65 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 0, i64 4
  %66 = bitcast double* %65 to i64*
  %67 = load i64, i64* %66, align 16, !tbaa !8
  %68 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 0, i64 %25, i64 4
  %69 = bitcast double* %68 to i64*
  store i64 %67, i64* %69, align 8, !tbaa !8
  %70 = getelementptr inbounds [5 x double], [5 x double]* %7, i64 0, i64 4
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 16, !tbaa !8
  %73 = getelementptr inbounds [103 x [103 x [5 x double]]], [103 x [103 x [5 x double]]]* %18, i64 %23, i64 %26, i64 %25, i64 4
  %74 = bitcast double* %73 to i64*
  store i64 %72, i64* %74, align 8, !tbaa !8
  br label %75

; <label>:75:                                     ; preds = %17, %5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @exact(i32, i32, i32, double*, double*) local_unnamed_addr #3

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
!6 = !{!"double*", !"double*", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
