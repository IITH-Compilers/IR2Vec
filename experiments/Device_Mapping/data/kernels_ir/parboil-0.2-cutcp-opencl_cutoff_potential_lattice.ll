; ModuleID = 'opencl_cutoff_potential_lattice.cl'
source_filename = "opencl_cutoff_potential_lattice.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @opencl_cutoff_potential_lattice(i32, i32, <4 x float>* nocapture readonly, i32, float, float, float, float* nocapture, i32, i32* nocapture readonly, <4 x i32>* nocapture readonly) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds <4 x float>, <4 x float>* %2, i64 %12
  %14 = tail call i64 @_Z12get_local_idj(i32 2) #3
  %15 = tail call i64 @_Z14get_local_sizej(i32 1) #3
  %16 = mul i64 %15, %14
  %17 = tail call i64 @_Z12get_local_idj(i32 1) #3
  %18 = add i64 %16, %17
  %19 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %20 = mul i64 %18, %19
  %21 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %22 = add i64 %20, %21
  %23 = sext i32 %8 to i64
  %24 = tail call i64 @_Z14get_num_groupsj(i32 1) #3
  %25 = mul i64 %24, %23
  %26 = tail call i64 @_Z12get_group_idj(i32 1) #3
  %27 = add i64 %25, %26
  %28 = tail call i64 @_Z14get_num_groupsj(i32 0) #3
  %29 = lshr i64 %28, 2
  %30 = mul i64 %29, %27
  %31 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %32 = lshr i64 %31, 2
  %33 = add i64 %30, %32
  %34 = shl i64 %33, 9
  %35 = getelementptr inbounds float, float* %7, i64 %34
  %36 = and i64 %31, 3
  %37 = shl nuw nsw i64 %36, 7
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = shl i64 %32, 3
  %40 = add i64 %39, %21
  %41 = uitofp i64 %40 to float
  %42 = fmul float %41, %4
  %43 = shl i64 %26, 3
  %44 = add i64 %43, %17
  %45 = uitofp i64 %44 to float
  %46 = fmul float %45, %4
  %47 = shl nsw i32 %8, 3
  %48 = sext i32 %47 to i64
  %49 = shl nuw nsw i64 %36, 1
  %50 = or i64 %49, %48
  %51 = add i64 %50, %14
  %52 = uitofp i64 %51 to float
  %53 = fmul float %52, %4
  %54 = or i64 %39, 4
  %55 = uitofp i64 %54 to float
  %56 = fmul float %55, %4
  %57 = fmul float %56, 2.500000e-01
  %58 = tail call float @_Z5floorf(float %57) #3
  %59 = fptosi float %58 to i32
  %60 = or i64 %43, 4
  %61 = uitofp i64 %60 to float
  %62 = fmul float %61, %4
  %63 = fmul float %62, 2.500000e-01
  %64 = tail call float @_Z5floorf(float %63) #3
  %65 = fptosi float %64 to i32
  %66 = or i32 %47, 4
  %67 = sitofp i32 %66 to float
  %68 = fmul float %67, %4
  %69 = fmul float %68, 2.500000e-01
  %70 = tail call float @_Z5floorf(float %69) #3
  %71 = fptosi float %70 to i32
  %72 = load i32, i32* %9, align 4, !tbaa !9
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %126

; <label>:74:                                     ; preds = %11
  %75 = sext i32 %72 to i64
  br label %76

; <label>:76:                                     ; preds = %74, %123
  %77 = phi i64 [ 0, %74 ], [ %124, %123 ]
  %78 = phi float [ 0.000000e+00, %74 ], [ %120, %123 ]
  %79 = getelementptr inbounds <4 x i32>, <4 x i32>* %10, i64 %77
  %80 = load <4 x i32>, <4 x i32>* %79, align 16
  %81 = extractelement <4 x i32> %80, i64 0
  %82 = add nsw i32 %81, %59
  %83 = extractelement <4 x i32> %80, i64 1
  %84 = add nsw i32 %83, %65
  %85 = extractelement <4 x i32> %80, i64 2
  %86 = add nsw i32 %85, %71
  %87 = mul nsw i32 %86, %1
  %88 = add nsw i32 %84, %87
  %89 = mul nsw i32 %88, %0
  %90 = add nsw i32 %82, %89
  %91 = shl nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds <4 x float>, <4 x float>* %13, i64 %92
  br label %94

; <label>:94:                                     ; preds = %119, %76
  %95 = phi i64 [ 0, %76 ], [ %121, %119 ]
  %96 = phi float [ %78, %76 ], [ %120, %119 ]
  %97 = getelementptr inbounds <4 x float>, <4 x float>* %93, i64 %95
  %98 = load <4 x float>, <4 x float>* %97, align 16
  %99 = extractelement <4 x float> %98, i64 3
  %100 = fcmp une float %99, 0.000000e+00
  br i1 %100, label %101, label %119

; <label>:101:                                    ; preds = %94
  %102 = extractelement <4 x float> %98, i64 0
  %103 = fsub float %102, %42
  %104 = extractelement <4 x float> %98, i64 1
  %105 = fsub float %104, %46
  %106 = extractelement <4 x float> %98, i64 2
  %107 = fsub float %106, %53
  %108 = fmul float %105, %105
  %109 = tail call float @llvm.fmuladd.f32(float %103, float %103, float %108)
  %110 = tail call float @llvm.fmuladd.f32(float %107, float %107, float %109)
  %111 = fcmp olt float %110, %5
  br i1 %111, label %112, label %119

; <label>:112:                                    ; preds = %101
  %113 = fsub float -0.000000e+00, %110
  %114 = tail call float @llvm.fmuladd.f32(float %113, float %6, float 1.000000e+00)
  %115 = tail call float @_Z5rsqrtf(float %110) #3
  %116 = fmul float %99, %115
  %117 = fmul float %114, %116
  %118 = tail call float @llvm.fmuladd.f32(float %117, float %114, float %96)
  br label %119

; <label>:119:                                    ; preds = %101, %112, %94
  %120 = phi float [ %118, %112 ], [ %96, %101 ], [ %96, %94 ]
  %121 = add nuw nsw i64 %95, 1
  %122 = icmp eq i64 %121, 8
  br i1 %122, label %123, label %94

; <label>:123:                                    ; preds = %119
  %124 = add nuw nsw i64 %77, 1
  %125 = icmp slt i64 %124, %75
  br i1 %125, label %76, label %126

; <label>:126:                                    ; preds = %123, %11
  %127 = phi float [ 0.000000e+00, %11 ], [ %120, %123 ]
  %128 = shl i64 %22, 32
  %129 = ashr exact i64 %128, 32
  %130 = getelementptr inbounds float, float* %38, i64 %129
  store float %127, float* %130, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z5floorf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind readnone
declare float @_Z5rsqrtf(float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 2}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"int", !"float4*", !"int", !"float", !"float", !"float", !"float*", !"int", !"int*", !"xyz*"}
!7 = !{!"int", !"int", !"float __attribute__((ext_vector_type(4)))*", !"int", !"float", !"float", !"float", !"float*", !"int", !"int*", !"int __attribute__((ext_vector_type(4)))*"}
!8 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"const", !"const"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !11, i64 0}
