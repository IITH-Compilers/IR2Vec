; ModuleID = 'npb-CG-makea_0.cl'
source_filename = "npb-CG-makea_0.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_0(i32* nocapture, i32* nocapture, double* nocapture, i32* nocapture, i32* nocapture, i32, i32, double, double) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %10 = alloca i32, align 4
  %11 = alloca [9 x i32], align 16
  %12 = alloca [9 x double], align 16
  %13 = alloca double, align 8
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4
  %15 = bitcast [9 x i32]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %15) #4
  %16 = bitcast [9 x double]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %16) #4
  %17 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4
  store double %7, double* %13, align 8, !tbaa !8
  %18 = bitcast i32* %1 to [9 x i32]*
  %19 = bitcast double* %2 to [9 x double]*
  %20 = tail call i64 @_Z15get_global_sizej(i32 0) #5
  %21 = trunc i64 %20 to i32
  %22 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %23 = trunc i64 %22 to i32
  %24 = add i32 %5, -1
  %25 = add i32 %24, %21
  %26 = sdiv i32 %25, %21
  %27 = mul nsw i32 %26, %23
  %28 = add nsw i32 %27, %26
  %29 = icmp sgt i32 %28, %5
  %30 = select i1 %29, i32 %5, i32 %28
  %31 = shl i64 %22, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds i32, i32* %3, i64 %32
  store i32 %27, i32* %33, align 4, !tbaa !12
  %34 = getelementptr inbounds i32, i32* %4, i64 %32
  store i32 %30, i32* %34, align 4, !tbaa !12
  %35 = icmp sgt i32 %30, 0
  br i1 %35, label %36, label %96

; <label>:36:                                     ; preds = %9
  %37 = getelementptr inbounds [9 x double], [9 x double]* %12, i64 0, i64 0
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %39 = sext i32 %30 to i64
  %40 = sext i32 %27 to i64
  br label %41

; <label>:41:                                     ; preds = %36, %94
  %42 = phi i64 [ 0, %36 ], [ %44, %94 ]
  store i32 8, i32* %10, align 4, !tbaa !12
  call void @sprnvc(i32 %5, i32 8, i32 %6, double* nonnull %37, i32* nonnull %38, double* nonnull %13, double %8) #4
  %43 = icmp slt i64 %42, %40
  %44 = add nuw nsw i64 %42, 1
  br i1 %43, label %94, label %45

; <label>:45:                                     ; preds = %41
  %46 = trunc i64 %44 to i32
  call void @vecset(i32 %5, double* nonnull %37, i32* nonnull %38, i32* nonnull %10, i32 %46, double 5.000000e-01) #4
  %47 = load i32, i32* %10, align 4, !tbaa !12
  %48 = getelementptr inbounds i32, i32* %0, i64 %42
  store i32 %47, i32* %48, align 4, !tbaa !12
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %50, label %94

; <label>:50:                                     ; preds = %45
  %51 = zext i32 %47 to i64
  %52 = and i64 %51, 1
  %53 = icmp eq i32 %47, 1
  br i1 %53, label %81, label %54

; <label>:54:                                     ; preds = %50
  %55 = sub nsw i64 %51, %52
  br label %56

; <label>:56:                                     ; preds = %56, %54
  %57 = phi i64 [ 0, %54 ], [ %78, %56 ]
  %58 = phi i64 [ %55, %54 ], [ %79, %56 ]
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 %57
  %60 = load i32, i32* %59, align 8, !tbaa !12
  %61 = add nsw i32 %60, -1
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 %42, i64 %57
  store i32 %61, i32* %62, align 4, !tbaa !12
  %63 = getelementptr inbounds [9 x double], [9 x double]* %12, i64 0, i64 %57
  %64 = bitcast double* %63 to i64*
  %65 = load i64, i64* %64, align 16, !tbaa !8
  %66 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 %42, i64 %57
  %67 = bitcast double* %66 to i64*
  store i64 %65, i64* %67, align 8, !tbaa !8
  %68 = or i64 %57, 1
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !12
  %71 = add nsw i32 %70, -1
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 %42, i64 %68
  store i32 %71, i32* %72, align 4, !tbaa !12
  %73 = getelementptr inbounds [9 x double], [9 x double]* %12, i64 0, i64 %68
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !8
  %76 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 %42, i64 %68
  %77 = bitcast double* %76 to i64*
  store i64 %75, i64* %77, align 8, !tbaa !8
  %78 = add nsw i64 %57, 2
  %79 = add i64 %58, -2
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %56

; <label>:81:                                     ; preds = %56, %50
  %82 = phi i64 [ 0, %50 ], [ %78, %56 ]
  %83 = icmp eq i64 %52, 0
  br i1 %83, label %94, label %84

; <label>:84:                                     ; preds = %81
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 %82
  %86 = load i32, i32* %85, align 4, !tbaa !12
  %87 = add nsw i32 %86, -1
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 %42, i64 %82
  store i32 %87, i32* %88, align 4, !tbaa !12
  %89 = getelementptr inbounds [9 x double], [9 x double]* %12, i64 0, i64 %82
  %90 = bitcast double* %89 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds [9 x double], [9 x double]* %19, i64 %42, i64 %82
  %93 = bitcast double* %92 to i64*
  store i64 %91, i64* %93, align 8, !tbaa !8
  br label %94

; <label>:94:                                     ; preds = %84, %81, %41, %45
  %95 = icmp slt i64 %44, %39
  br i1 %95, label %41, label %96

; <label>:96:                                     ; preds = %94, %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %15) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z15get_global_sizej(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

declare void @sprnvc(i32, i32, i32, double*, i32*, double*, double) local_unnamed_addr #3

declare void @vecset(i32, double*, i32*, i32*, i32, double) local_unnamed_addr #3

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"int*", !"double*", !"int*", !"int*", !"int", !"int", !"double", !"double"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
