; ModuleID = 'shoc-1.1.5-FFT-chk1D_512.cl'
source_filename = "shoc-1.1.5-FFT-chk1D_512.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @chk1D_512(<2 x float>* nocapture readonly, i32, i32* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %4 = tail call i64 @_Z12get_local_idj(i32 0) #2
  %5 = tail call i64 @_Z12get_group_idj(i32 0) #2
  %6 = shl i64 %5, 9
  %7 = add i64 %6, %4
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 32
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 %9
  %11 = load <2 x float>, <2 x float>* %10, align 8, !tbaa !9
  %12 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 64
  %13 = load <2 x float>, <2 x float>* %12, align 8, !tbaa !9
  %14 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 128
  %15 = load <2 x float>, <2 x float>* %14, align 8, !tbaa !9
  %16 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 192
  %17 = load <2 x float>, <2 x float>* %16, align 8, !tbaa !9
  %18 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 256
  %19 = load <2 x float>, <2 x float>* %18, align 8, !tbaa !9
  %20 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 320
  %21 = load <2 x float>, <2 x float>* %20, align 8, !tbaa !9
  %22 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 384
  %23 = load <2 x float>, <2 x float>* %22, align 8, !tbaa !9
  %24 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 448
  %25 = load <2 x float>, <2 x float>* %24, align 8, !tbaa !9
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %26
  %28 = load <2 x float>, <2 x float>* %27, align 8, !tbaa !9
  %29 = add nsw i64 %26, 64
  %30 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %29
  %31 = load <2 x float>, <2 x float>* %30, align 8, !tbaa !9
  %32 = add nsw i64 %26, 128
  %33 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %32
  %34 = load <2 x float>, <2 x float>* %33, align 8, !tbaa !9
  %35 = add nsw i64 %26, 192
  %36 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %35
  %37 = load <2 x float>, <2 x float>* %36, align 8, !tbaa !9
  %38 = add nsw i64 %26, 256
  %39 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %38
  %40 = load <2 x float>, <2 x float>* %39, align 8, !tbaa !9
  %41 = add nsw i64 %26, 320
  %42 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %41
  %43 = load <2 x float>, <2 x float>* %42, align 8, !tbaa !9
  %44 = add nsw i64 %26, 384
  %45 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %44
  %46 = load <2 x float>, <2 x float>* %45, align 8, !tbaa !9
  %47 = add nsw i64 %26, 448
  %48 = getelementptr inbounds <2 x float>, <2 x float>* %10, i64 %47
  %49 = load <2 x float>, <2 x float>* %48, align 8, !tbaa !9
  %50 = extractelement <2 x float> %11, i64 0
  %51 = extractelement <2 x float> %28, i64 0
  %52 = fcmp une float %50, %51
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %3
  %54 = extractelement <2 x float> %11, i64 1
  %55 = extractelement <2 x float> %28, i64 1
  %56 = fcmp une float %54, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53, %3
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %58

; <label>:58:                                     ; preds = %53, %57
  %59 = extractelement <2 x float> %13, i64 0
  %60 = extractelement <2 x float> %31, i64 0
  %61 = fcmp une float %59, %60
  br i1 %61, label %66, label %62

; <label>:62:                                     ; preds = %58
  %63 = extractelement <2 x float> %13, i64 1
  %64 = extractelement <2 x float> %31, i64 1
  %65 = fcmp une float %63, %64
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %62, %58
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %67

; <label>:67:                                     ; preds = %66, %62
  %68 = extractelement <2 x float> %15, i64 0
  %69 = extractelement <2 x float> %34, i64 0
  %70 = fcmp une float %68, %69
  br i1 %70, label %75, label %71

; <label>:71:                                     ; preds = %67
  %72 = extractelement <2 x float> %15, i64 1
  %73 = extractelement <2 x float> %34, i64 1
  %74 = fcmp une float %72, %73
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %71, %67
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %76

; <label>:76:                                     ; preds = %75, %71
  %77 = extractelement <2 x float> %17, i64 0
  %78 = extractelement <2 x float> %37, i64 0
  %79 = fcmp une float %77, %78
  br i1 %79, label %84, label %80

; <label>:80:                                     ; preds = %76
  %81 = extractelement <2 x float> %17, i64 1
  %82 = extractelement <2 x float> %37, i64 1
  %83 = fcmp une float %81, %82
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %80, %76
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %85

; <label>:85:                                     ; preds = %84, %80
  %86 = extractelement <2 x float> %19, i64 0
  %87 = extractelement <2 x float> %40, i64 0
  %88 = fcmp une float %86, %87
  br i1 %88, label %93, label %89

; <label>:89:                                     ; preds = %85
  %90 = extractelement <2 x float> %19, i64 1
  %91 = extractelement <2 x float> %40, i64 1
  %92 = fcmp une float %90, %91
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %89, %85
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %94

; <label>:94:                                     ; preds = %93, %89
  %95 = extractelement <2 x float> %21, i64 0
  %96 = extractelement <2 x float> %43, i64 0
  %97 = fcmp une float %95, %96
  br i1 %97, label %102, label %98

; <label>:98:                                     ; preds = %94
  %99 = extractelement <2 x float> %21, i64 1
  %100 = extractelement <2 x float> %43, i64 1
  %101 = fcmp une float %99, %100
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %98, %94
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %103

; <label>:103:                                    ; preds = %102, %98
  %104 = extractelement <2 x float> %23, i64 0
  %105 = extractelement <2 x float> %46, i64 0
  %106 = fcmp une float %104, %105
  br i1 %106, label %111, label %107

; <label>:107:                                    ; preds = %103
  %108 = extractelement <2 x float> %23, i64 1
  %109 = extractelement <2 x float> %46, i64 1
  %110 = fcmp une float %108, %109
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %107, %103
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %112

; <label>:112:                                    ; preds = %111, %107
  %113 = extractelement <2 x float> %25, i64 0
  %114 = extractelement <2 x float> %49, i64 0
  %115 = fcmp une float %113, %114
  br i1 %115, label %120, label %116

; <label>:116:                                    ; preds = %112
  %117 = extractelement <2 x float> %25, i64 1
  %118 = extractelement <2 x float> %49, i64 1
  %119 = fcmp une float %117, %118
  br i1 %119, label %120, label %121

; <label>:120:                                    ; preds = %116, %112
  store i32 1, i32* %2, align 4, !tbaa !12
  br label %121

; <label>:121:                                    ; preds = %120, %116
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 0, i32 1}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"float2*", !"int", !"int*"}
!7 = !{!"float __attribute__((ext_vector_type(2)))*", !"int", !"int*"}
!8 = !{!"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
