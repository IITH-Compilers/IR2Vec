; ModuleID = 'rodinia-3.1-hotspot-hotspot.cl'
source_filename = "rodinia-3.1-hotspot-hotspot.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@hotspot.temp_on_cuda = internal unnamed_addr global [64 x [64 x float]] undef, align 16
@hotspot.power_on_cuda = internal unnamed_addr global [64 x [64 x float]] undef, align 16
@hotspot.temp_t = internal unnamed_addr global [64 x [64 x float]] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @hotspot(i32, float* nocapture readonly, float* nocapture readonly, float* nocapture, i32, i32, i32, i32, float, float, float, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %14 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %17 = trunc i64 %16 to i32
  %18 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %19 = trunc i64 %18 to i32
  %20 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %21 = trunc i64 %20 to i32
  %22 = fdiv float %12, %8, !fpmath !8
  %23 = fdiv float 1.000000e+00, %9, !fpmath !8
  %24 = fdiv float 1.000000e+00, %10, !fpmath !8
  %25 = fdiv float 1.000000e+00, %11, !fpmath !8
  %26 = shl nsw i32 %0, 1
  %27 = sub nsw i32 64, %26
  %28 = mul nsw i32 %27, %17
  %29 = sub nsw i32 %28, %7
  %30 = mul nsw i32 %27, %15
  %31 = sub nsw i32 %30, %6
  %32 = add nsw i32 %29, 63
  %33 = add nsw i32 %31, 63
  %34 = add nsw i32 %29, %21
  %35 = add nsw i32 %31, %19
  %36 = mul nsw i32 %34, %4
  %37 = add nsw i32 %36, %35
  %38 = icmp sgt i32 %34, -1
  br i1 %38, label %39, label %61

; <label>:39:                                     ; preds = %13
  %40 = icmp slt i32 %34, %5
  %41 = icmp sgt i32 %35, -1
  %42 = and i1 %41, %40
  %43 = icmp slt i32 %35, %4
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %61

; <label>:45:                                     ; preds = %39
  %46 = sext i32 %37 to i64
  %47 = getelementptr inbounds float, float* %2, i64 %46
  %48 = bitcast float* %47 to i32*
  %49 = load i32, i32* %48, align 4, !tbaa !9
  %50 = shl i64 %20, 32
  %51 = ashr exact i64 %50, 32
  %52 = shl i64 %18, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_on_cuda, i64 0, i64 %51, i64 %53
  %55 = bitcast float* %54 to i32*
  store i32 %49, i32* %55, align 4, !tbaa !9
  %56 = getelementptr inbounds float, float* %1, i64 %46
  %57 = bitcast float* %56 to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !9
  %59 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.power_on_cuda, i64 0, i64 %51, i64 %53
  %60 = bitcast float* %59 to i32*
  store i32 %58, i32* %60, align 4, !tbaa !9
  br label %61

; <label>:61:                                     ; preds = %45, %39, %13
  tail call void @_Z7barrierj(i32 1) #5
  %62 = icmp slt i32 %29, 0
  %63 = sub nsw i32 0, %29
  %64 = select i1 %62, i32 %63, i32 0
  %65 = icmp slt i32 %32, %5
  %66 = sub i32 -63, %29
  %67 = add i32 %5, 62
  %68 = add i32 %67, %66
  %69 = select i1 %65, i32 63, i32 %68
  %70 = icmp slt i32 %31, 0
  %71 = sub nsw i32 0, %31
  %72 = select i1 %70, i32 %71, i32 0
  %73 = icmp slt i32 %33, %4
  %74 = sub i32 -63, %31
  %75 = add i32 %4, 62
  %76 = add i32 %75, %74
  %77 = select i1 %73, i32 63, i32 %76
  %78 = add nsw i32 %21, -1
  %79 = add nsw i32 %21, 1
  %80 = add nsw i32 %19, -1
  %81 = add nsw i32 %19, 1
  %82 = icmp sgt i32 %0, 0
  br i1 %82, label %83, label %168

; <label>:83:                                     ; preds = %61
  %84 = icmp sgt i32 %81, %77
  %85 = select i1 %84, i32 %77, i32 %81
  %86 = icmp slt i32 %80, %72
  %87 = select i1 %86, i32 %72, i32 %80
  %88 = icmp sgt i32 %79, %69
  %89 = select i1 %88, i32 %69, i32 %79
  %90 = icmp slt i32 %78, %64
  %91 = select i1 %90, i32 %64, i32 %78
  %92 = icmp sgt i32 %72, %19
  %93 = icmp slt i32 %77, %19
  %94 = icmp sgt i32 %64, %21
  %95 = icmp slt i32 %69, %21
  %96 = shl i64 %20, 32
  %97 = ashr exact i64 %96, 32
  %98 = shl i64 %18, 32
  %99 = ashr exact i64 %98, 32
  %100 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_on_cuda, i64 0, i64 %97, i64 %99
  %101 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.power_on_cuda, i64 0, i64 %97, i64 %99
  %102 = sext i32 %89 to i64
  %103 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_on_cuda, i64 0, i64 %102, i64 %99
  %104 = sext i32 %91 to i64
  %105 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_on_cuda, i64 0, i64 %104, i64 %99
  %106 = sext i32 %85 to i64
  %107 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_on_cuda, i64 0, i64 %97, i64 %106
  %108 = sext i32 %87 to i64
  %109 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_on_cuda, i64 0, i64 %97, i64 %108
  %110 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_t, i64 0, i64 %97, i64 %99
  %111 = add nsw i32 %0, -1
  %112 = bitcast float* %110 to i32*
  %113 = bitcast float* %100 to i32*
  br label %114

; <label>:114:                                    ; preds = %83, %153
  %115 = phi i32 [ 0, %83 ], [ %116, %153 ]
  %116 = add nuw nsw i32 %115, 1
  %117 = icmp slt i32 %115, %19
  br i1 %117, label %118, label %146

; <label>:118:                                    ; preds = %114
  %119 = sub nsw i32 64, %115
  %120 = add nsw i32 %119, -2
  %121 = icmp slt i32 %120, %19
  %122 = icmp sge i32 %115, %21
  %123 = or i1 %122, %121
  %124 = icmp slt i32 %120, %21
  %125 = or i1 %124, %123
  %126 = or i1 %92, %125
  %127 = or i1 %93, %126
  %128 = or i1 %94, %127
  %129 = or i1 %95, %128
  br i1 %129, label %146, label %130

; <label>:130:                                    ; preds = %118
  %131 = load float, float* %100, align 4, !tbaa !9
  %132 = load float, float* %101, align 4, !tbaa !9
  %133 = load float, float* %103, align 4, !tbaa !9
  %134 = load float, float* %105, align 4, !tbaa !9
  %135 = fadd float %133, %134
  %136 = tail call float @llvm.fmuladd.f32(float %131, float -2.000000e+00, float %135)
  %137 = tail call float @llvm.fmuladd.f32(float %136, float %24, float %132)
  %138 = load float, float* %107, align 4, !tbaa !9
  %139 = load float, float* %109, align 4, !tbaa !9
  %140 = fadd float %138, %139
  %141 = tail call float @llvm.fmuladd.f32(float %131, float -2.000000e+00, float %140)
  %142 = tail call float @llvm.fmuladd.f32(float %141, float %23, float %137)
  %143 = fsub float 8.000000e+01, %131
  %144 = tail call float @llvm.fmuladd.f32(float %143, float %25, float %142)
  %145 = tail call float @llvm.fmuladd.f32(float %22, float %144, float %131)
  store float %145, float* %110, align 4, !tbaa !9
  br label %146

; <label>:146:                                    ; preds = %118, %130, %114
  %147 = phi i8 [ 1, %130 ], [ 0, %118 ], [ 0, %114 ]
  tail call void @_Z7barrierj(i32 1) #5
  %148 = icmp eq i32 %115, %111
  br i1 %148, label %155, label %149

; <label>:149:                                    ; preds = %146
  %150 = icmp eq i8 %147, 0
  br i1 %150, label %153, label %151

; <label>:151:                                    ; preds = %149
  %152 = load i32, i32* %112, align 4, !tbaa !9
  store i32 %152, i32* %113, align 4, !tbaa !9
  br label %153

; <label>:153:                                    ; preds = %149, %151
  tail call void @_Z7barrierj(i32 1) #5
  %154 = icmp slt i32 %116, %0
  br i1 %154, label %114, label %155

; <label>:155:                                    ; preds = %153, %146
  %156 = icmp eq i8 %147, 0
  br i1 %156, label %168, label %157

; <label>:157:                                    ; preds = %155
  %158 = shl i64 %20, 32
  %159 = ashr exact i64 %158, 32
  %160 = shl i64 %18, 32
  %161 = ashr exact i64 %160, 32
  %162 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @hotspot.temp_t, i64 0, i64 %159, i64 %161
  %163 = bitcast float* %162 to i32*
  %164 = load i32, i32* %163, align 4, !tbaa !9
  %165 = sext i32 %37 to i64
  %166 = getelementptr inbounds float, float* %3, i64 %165
  %167 = bitcast float* %166 to i32*
  store i32 %164, i32* %167, align 4, !tbaa !9
  br label %168

; <label>:168:                                    ; preds = %61, %155, %157
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int", !"float*", !"float*", !"float*", !"int", !"int", !"int", !"int", !"float", !"float", !"float", !"float", !"float"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{float 2.500000e+00}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
