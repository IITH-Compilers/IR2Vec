; ModuleID = 'shoc-1.1.5-Scan-bottom_scan.cl'
source_filename = "shoc-1.1.5-Scan-bottom_scan.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@bottom_scan.s_seed = internal unnamed_addr global float undef, align 4

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @bottom_scan(float* nocapture readonly, float* nocapture readonly, float* nocapture, i32, float*) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  store float 0.000000e+00, float* @bottom_scan.s_seed, align 4, !tbaa !8
  %6 = bitcast float* %0 to <4 x float>*
  %7 = bitcast float* %2 to <4 x float>*
  %8 = sdiv i32 %3, 4
  %9 = sext i32 %8 to i64
  %10 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %11 = udiv i64 %9, %10
  %12 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %13 = shl i64 %11, 32
  %14 = ashr exact i64 %13, 32
  %15 = mul i64 %14, %12
  %16 = trunc i64 %15 to i32
  %17 = add i64 %10, -1
  %18 = icmp eq i64 %12, %17
  %19 = trunc i64 %11 to i32
  %20 = add nsw i32 %16, %19
  %21 = select i1 %18, i32 %8, i32 %20
  %22 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %23 = icmp ugt i32 %21, %16
  br i1 %23, label %24, label %113

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds float, float* %1, i64 %12
  %26 = and i64 %15, 4294967295
  %27 = add i64 %26, %22
  %28 = load float, float* %25, align 4, !tbaa !8
  %29 = trunc i64 %27 to i32
  %30 = icmp sgt i32 %21, %29
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %24
  %32 = shl i64 %27, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 %33
  %35 = load <4 x float>, <4 x float>* %34, align 16, !tbaa !12
  br label %36

; <label>:36:                                     ; preds = %31, %24
  %37 = phi <4 x float> [ %35, %31 ], [ zeroinitializer, %24 ]
  %38 = extractelement <4 x float> %37, i64 0
  %39 = extractelement <4 x float> %37, i64 1
  %40 = fadd float %39, %38
  %41 = extractelement <4 x float> %37, i64 2
  %42 = fadd float %41, %40
  %43 = extractelement <4 x float> %37, i64 3
  %44 = fadd float %43, %42
  %45 = tail call float @scanLocalMem(float %44, float* %4, i32 1) #5
  %46 = fadd float %28, %45
  %47 = fadd float %46, %44
  br i1 %30, label %48, label %59

; <label>:48:                                     ; preds = %36
  %49 = fadd float %38, %46
  %50 = insertelement <4 x float> undef, float %49, i64 0
  %51 = fadd float %40, %46
  %52 = insertelement <4 x float> %50, float %51, i64 1
  %53 = fadd float %46, %42
  %54 = insertelement <4 x float> %52, float %53, i64 2
  %55 = insertelement <4 x float> %54, float %47, i64 3
  %56 = shl i64 %27, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 %57
  store <4 x float> %55, <4 x float>* %58, align 16, !tbaa !12
  br label %59

; <label>:59:                                     ; preds = %48, %36
  tail call void @_Z7barrierj(i32 1) #6
  %60 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %61 = add i64 %60, -1
  %62 = icmp eq i64 %22, %61
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %59
  store float %47, float* @bottom_scan.s_seed, align 4, !tbaa !8
  br label %64

; <label>:64:                                     ; preds = %63, %59
  tail call void @_Z7barrierj(i32 1) #6
  %65 = add i64 %60, %26
  %66 = trunc i64 %65 to i32
  %67 = icmp ugt i32 %21, %66
  br i1 %67, label %68, label %113

; <label>:68:                                     ; preds = %64
  br label %69

; <label>:69:                                     ; preds = %68, %108
  %70 = phi i64 [ %74, %108 ], [ %27, %68 ]
  %71 = phi i64 [ %110, %108 ], [ %65, %68 ]
  %72 = shl i64 %70, 32
  %73 = ashr exact i64 %72, 32
  %74 = add i64 %60, %73
  %75 = load float, float* @bottom_scan.s_seed, align 4, !tbaa !8
  %76 = trunc i64 %74 to i32
  %77 = icmp sgt i32 %21, %76
  br i1 %77, label %78, label %83

; <label>:78:                                     ; preds = %69
  %79 = shl i64 %74, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 %80
  %82 = load <4 x float>, <4 x float>* %81, align 16, !tbaa !12
  br label %83

; <label>:83:                                     ; preds = %69, %78
  %84 = phi <4 x float> [ %82, %78 ], [ zeroinitializer, %69 ]
  %85 = extractelement <4 x float> %84, i64 0
  %86 = extractelement <4 x float> %84, i64 1
  %87 = fadd float %86, %85
  %88 = extractelement <4 x float> %84, i64 2
  %89 = fadd float %88, %87
  %90 = extractelement <4 x float> %84, i64 3
  %91 = fadd float %90, %89
  %92 = tail call float @scanLocalMem(float %91, float* %4, i32 1) #5
  %93 = fadd float %75, %92
  %94 = fadd float %93, %91
  br i1 %77, label %95, label %106

; <label>:95:                                     ; preds = %83
  %96 = fadd float %85, %93
  %97 = insertelement <4 x float> undef, float %96, i64 0
  %98 = fadd float %87, %93
  %99 = insertelement <4 x float> %97, float %98, i64 1
  %100 = fadd float %93, %89
  %101 = insertelement <4 x float> %99, float %100, i64 2
  %102 = insertelement <4 x float> %101, float %94, i64 3
  %103 = shl i64 %74, 32
  %104 = ashr exact i64 %103, 32
  %105 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 %104
  store <4 x float> %102, <4 x float>* %105, align 16, !tbaa !12
  br label %106

; <label>:106:                                    ; preds = %95, %83
  tail call void @_Z7barrierj(i32 1) #6
  br i1 %62, label %107, label %108

; <label>:107:                                    ; preds = %106
  store float %94, float* @bottom_scan.s_seed, align 4, !tbaa !8
  br label %108

; <label>:108:                                    ; preds = %107, %106
  tail call void @_Z7barrierj(i32 1) #6
  %109 = and i64 %71, 4294967295
  %110 = add i64 %60, %109
  %111 = trunc i64 %110 to i32
  %112 = icmp ugt i32 %21, %111
  br i1 %112, label %69, label %113, !llvm.loop !13

; <label>:113:                                    ; preds = %108, %64, %5
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

declare float @scanLocalMem(float, float*, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 3}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"int", !"float*"}
!7 = !{!"const", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
