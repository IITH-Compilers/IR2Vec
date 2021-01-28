; ModuleID = 'npb-FT-checksum.cl'
source_filename = "npb-FT-checksum.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.dcomplex = type { double, double }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @checksum(%struct.dcomplex* nocapture readonly, %struct.dcomplex* nocapture, %struct.dcomplex* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %7 = add i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %8, 1025
  br i1 %11, label %12, label %36

; <label>:12:                                     ; preds = %5
  %13 = srem i32 %8, 64
  %14 = mul nsw i32 %8, 3
  %15 = srem i32 %14, 64
  %16 = mul nsw i32 %8, 5
  %17 = srem i32 %16, 64
  %18 = mul nsw i32 %17, %4
  %19 = add nsw i32 %3, 1
  %20 = add i32 %18, %15
  %21 = mul i32 %20, %19
  %22 = add nsw i32 %21, %13
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %23
  %25 = bitcast %struct.dcomplex* %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !8
  %27 = shl i64 %9, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %28
  %30 = bitcast %struct.dcomplex* %29 to i64*
  store i64 %26, i64* %30, align 8, !tbaa !8
  %31 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %23, i32 1
  %32 = bitcast double* %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %28, i32 1
  %35 = bitcast double* %34 to i64*
  store i64 %33, i64* %35, align 8, !tbaa !13
  br label %41

; <label>:36:                                     ; preds = %5
  %37 = shl i64 %9, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %38, i32 0
  %40 = bitcast double* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 8, i1 false)
  br label %41

; <label>:41:                                     ; preds = %36, %12
  tail call void @_Z7barrierj(i32 1) #5
  %42 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %43 = lshr i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %41
  %47 = shl i64 %9, 32
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %48, i32 0
  %50 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %48, i32 1
  br label %53

; <label>:51:                                     ; preds = %67, %41
  %52 = icmp eq i32 %10, 0
  br i1 %52, label %70, label %81

; <label>:53:                                     ; preds = %67, %46
  %54 = phi i32 [ %44, %46 ], [ %68, %67 ]
  %55 = icmp sgt i32 %54, %10
  br i1 %55, label %56, label %67

; <label>:56:                                     ; preds = %53
  %57 = load double, double* %49, align 8, !tbaa !8
  %58 = add nsw i32 %54, %10
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %59, i32 0
  %61 = load double, double* %60, align 8, !tbaa !8
  %62 = fadd double %57, %61
  %63 = load double, double* %50, align 8, !tbaa !13
  %64 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 %59, i32 1
  %65 = load double, double* %64, align 8, !tbaa !13
  %66 = fadd double %63, %65
  store double %62, double* %49, align 8
  store double %66, double* %50, align 8
  br label %67

; <label>:67:                                     ; preds = %56, %53
  tail call void @_Z7barrierj(i32 1) #5
  %68 = lshr i32 %54, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %51, label %53

; <label>:70:                                     ; preds = %51
  %71 = bitcast %struct.dcomplex* %2 to i64*
  %72 = load i64, i64* %71, align 8, !tbaa !8
  %73 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %74 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %73
  %75 = bitcast %struct.dcomplex* %74 to i64*
  store i64 %72, i64* %75, align 8, !tbaa !8
  %76 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %2, i64 0, i32 1
  %77 = bitcast double* %76 to i64*
  %78 = load i64, i64* %77, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %73, i32 1
  %80 = bitcast double* %79 to i64*
  store i64 %78, i64* %80, align 8, !tbaa !13
  br label %81

; <label>:81:                                     ; preds = %70, %51
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 3, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"dcomplex*", !"dcomplex*", !"dcomplex*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 8}
!10 = !{!"double", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!9, !10, i64 8}
