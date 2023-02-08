; ModuleID = 'DwtHaar1D_Kernels.cl'
source_filename = "DwtHaar1D_Kernels.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @dwtHaar1D(float* nocapture readonly, float* nocapture, float* nocapture, float* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %10 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %11 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %12 = shl i64 %10, 1
  %13 = mul i64 %12, %11
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds float, float* %0, i64 %14
  %16 = load float, float* %15, align 4, !tbaa !8
  %17 = add i64 %11, %9
  %18 = add i64 %17, %13
  %19 = getelementptr inbounds float, float* %0, i64 %18
  %20 = load float, float* %19, align 4, !tbaa !8
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %8
  %23 = uitofp i32 %5 to float
  %24 = tail call float @_Z5rsqrtf(float %23) #3
  %25 = fmul float %16, %24
  %26 = fmul float %20, %24
  br label %27

; <label>:27:                                     ; preds = %22, %8
  %28 = phi float [ %26, %22 ], [ %20, %8 ]
  %29 = phi float [ %25, %22 ], [ %16, %8 ]
  %30 = getelementptr inbounds float, float* %3, i64 %9
  store float %29, float* %30, align 4, !tbaa !8
  %31 = getelementptr inbounds float, float* %3, i64 %17
  store float %28, float* %31, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %32 = icmp ugt i32 %4, %7
  %33 = select i1 %32, i32 %7, i32 %4
  %34 = tail call float @_Z5rsqrtf(float 2.000000e+00) #3
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %45, label %36

; <label>:36:                                     ; preds = %27
  %37 = lshr i32 %5, 1
  %38 = and i32 %33, 31
  %39 = shl i32 1, %38
  %40 = sdiv i32 %39, 2
  %41 = shl i64 %9, 1
  %42 = getelementptr inbounds float, float* %3, i64 %41
  %43 = or i64 %41, 1
  %44 = getelementptr inbounds float, float* %3, i64 %43
  br label %47

; <label>:45:                                     ; preds = %73, %27
  %46 = icmp eq i64 %9, 0
  br i1 %46, label %78, label %83

; <label>:47:                                     ; preds = %36, %73
  %48 = phi float [ undef, %36 ], [ %60, %73 ]
  %49 = phi float [ undef, %36 ], [ %59, %73 ]
  %50 = phi i32 [ 0, %36 ], [ %76, %73 ]
  %51 = phi i32 [ %37, %36 ], [ %74, %73 ]
  %52 = phi i32 [ %40, %36 ], [ %75, %73 ]
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %9, %53
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %47
  %56 = load float, float* %42, align 4, !tbaa !8
  %57 = load float, float* %44, align 4, !tbaa !8
  br label %58

; <label>:58:                                     ; preds = %55, %47
  %59 = phi float [ %56, %55 ], [ %49, %47 ]
  %60 = phi float [ %57, %55 ], [ %48, %47 ]
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %54, label %61, label %73

; <label>:61:                                     ; preds = %58
  %62 = fadd float %59, %60
  %63 = fmul float %34, %62
  store float %63, float* %30, align 4, !tbaa !8
  %64 = zext i32 %51 to i64
  %65 = mul i64 %10, %53
  %66 = add i64 %9, %64
  %67 = add i64 %66, %65
  %68 = fsub float %59, %60
  %69 = fmul float %34, %68
  %70 = and i64 %67, 4294967295
  %71 = getelementptr inbounds float, float* %1, i64 %70
  store float %69, float* %71, align 4, !tbaa !8
  %72 = lshr i32 %51, 1
  br label %73

; <label>:73:                                     ; preds = %61, %58
  %74 = phi i32 [ %72, %61 ], [ %51, %58 ]
  %75 = lshr i32 %52, 1
  tail call void @_Z7barrierj(i32 1) #4
  %76 = add nuw i32 %50, 1
  %77 = icmp ult i32 %76, %33
  br i1 %77, label %47, label %45

; <label>:78:                                     ; preds = %45
  %79 = bitcast float* %3 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !8
  %81 = getelementptr inbounds float, float* %2, i64 %10
  %82 = bitcast float* %81 to i32*
  store i32 %80, i32* %82, align 4, !tbaa !8
  br label %83

; <label>:83:                                     ; preds = %78, %45
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z5rsqrtf(float) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"uint", !"uint", !"uint", !"uint"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
