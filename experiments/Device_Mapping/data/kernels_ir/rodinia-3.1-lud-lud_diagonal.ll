; ModuleID = 'rodinia-3.1-lud-lud_diagonal.cl'
source_filename = "rodinia-3.1-lud-lud_diagonal.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @lud_diagonal(float* nocapture, float* nocapture, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %5 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %6 = trunc i64 %5 to i32
  %7 = mul nsw i32 %3, %2
  %8 = add nsw i32 %7, %3
  %9 = sext i32 %8 to i64
  %10 = sext i32 %2 to i64
  %11 = shl i64 %5, 32
  %12 = ashr exact i64 %11, 32
  br label %13

; <label>:13:                                     ; preds = %13, %4
  %14 = phi i64 [ 0, %4 ], [ %35, %13 ]
  %15 = phi i64 [ %9, %4 ], [ %34, %13 ]
  %16 = add nsw i64 %15, %12
  %17 = getelementptr inbounds float, float* %0, i64 %16
  %18 = bitcast float* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = shl i64 %14, 6
  %21 = add nsw i64 %20, %12
  %22 = getelementptr inbounds float, float* %1, i64 %21
  %23 = bitcast float* %22 to i32*
  store i32 %19, i32* %23, align 4, !tbaa !8
  %24 = add nsw i64 %15, %10
  %25 = add nsw i64 %24, %12
  %26 = getelementptr inbounds float, float* %0, i64 %25
  %27 = bitcast float* %26 to i32*
  %28 = load i32, i32* %27, align 4, !tbaa !8
  %29 = shl i64 %14, 6
  %30 = or i64 %29, 64
  %31 = add nsw i64 %30, %12
  %32 = getelementptr inbounds float, float* %1, i64 %31
  %33 = bitcast float* %32 to i32*
  store i32 %28, i32* %33, align 4, !tbaa !8
  %34 = add nsw i64 %24, %10
  %35 = add nsw i64 %14, 2
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %37, label %13

; <label>:37:                                     ; preds = %13
  tail call void @_Z7barrierj(i32 1) #5
  %38 = shl i32 %6, 6
  %39 = sext i32 %38 to i64
  br label %40

; <label>:40:                                     ; preds = %152, %37
  %41 = phi i64 [ 0, %37 ], [ %153, %152 ]
  %42 = add i64 %41, 1
  %43 = icmp slt i64 %41, %12
  br i1 %43, label %44, label %100

; <label>:44:                                     ; preds = %40
  %45 = icmp eq i64 %41, 0
  %46 = add nuw nsw i64 %41, %39
  %47 = getelementptr inbounds float, float* %1, i64 %46
  br i1 %45, label %94, label %48

; <label>:48:                                     ; preds = %44
  %49 = load float, float* %47, align 4, !tbaa !8
  %50 = and i64 %41, 1
  %51 = icmp eq i64 %41, 1
  br i1 %51, label %80, label %52

; <label>:52:                                     ; preds = %48
  %53 = sub i64 %41, %50
  br label %54

; <label>:54:                                     ; preds = %54, %52
  %55 = phi float [ %49, %52 ], [ %76, %54 ]
  %56 = phi i64 [ 0, %52 ], [ %77, %54 ]
  %57 = phi i64 [ %53, %52 ], [ %78, %54 ]
  %58 = add nuw nsw i64 %56, %39
  %59 = getelementptr inbounds float, float* %1, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !8
  %61 = shl i64 %56, 6
  %62 = add nuw nsw i64 %61, %41
  %63 = getelementptr inbounds float, float* %1, i64 %62
  %64 = load float, float* %63, align 4, !tbaa !8
  %65 = fsub float -0.000000e+00, %60
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %64, float %55)
  store float %66, float* %47, align 4, !tbaa !8
  %67 = or i64 %56, 1
  %68 = add nuw nsw i64 %67, %39
  %69 = getelementptr inbounds float, float* %1, i64 %68
  %70 = load float, float* %69, align 4, !tbaa !8
  %71 = shl i64 %67, 6
  %72 = add nuw nsw i64 %71, %41
  %73 = getelementptr inbounds float, float* %1, i64 %72
  %74 = load float, float* %73, align 4, !tbaa !8
  %75 = fsub float -0.000000e+00, %70
  %76 = tail call float @llvm.fmuladd.f32(float %75, float %74, float %66)
  store float %76, float* %47, align 4, !tbaa !8
  %77 = add nsw i64 %56, 2
  %78 = add i64 %57, -2
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %54

; <label>:80:                                     ; preds = %54, %48
  %81 = phi float [ %49, %48 ], [ %76, %54 ]
  %82 = phi i64 [ 0, %48 ], [ %77, %54 ]
  %83 = icmp eq i64 %50, 0
  br i1 %83, label %94, label %84

; <label>:84:                                     ; preds = %80
  %85 = add nuw nsw i64 %82, %39
  %86 = getelementptr inbounds float, float* %1, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !8
  %88 = shl i64 %82, 6
  %89 = add nuw nsw i64 %88, %41
  %90 = getelementptr inbounds float, float* %1, i64 %89
  %91 = load float, float* %90, align 4, !tbaa !8
  %92 = fsub float -0.000000e+00, %87
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %91, float %81)
  store float %93, float* %47, align 4, !tbaa !8
  br label %94

; <label>:94:                                     ; preds = %84, %80, %44
  %95 = mul nuw nsw i64 %41, 65
  %96 = getelementptr inbounds float, float* %1, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !8
  %98 = load float, float* %47, align 4, !tbaa !8
  %99 = fdiv float %98, %97, !fpmath !12
  store float %99, float* %47, align 4, !tbaa !8
  br label %100

; <label>:100:                                    ; preds = %94, %40
  %101 = phi i1 [ false, %94 ], [ true, %40 ]
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %101, label %152, label %102

; <label>:102:                                    ; preds = %100
  %103 = shl i64 %41, 6
  %104 = add nuw nsw i64 %103, 64
  %105 = add nsw i64 %104, %12
  %106 = getelementptr inbounds float, float* %1, i64 %105
  %107 = load float, float* %106, align 4, !tbaa !8
  %108 = and i64 %42, 1
  %109 = icmp eq i64 %41, 0
  br i1 %109, label %138, label %110

; <label>:110:                                    ; preds = %102
  %111 = sub i64 %42, %108
  br label %112

; <label>:112:                                    ; preds = %112, %110
  %113 = phi float [ %107, %110 ], [ %134, %112 ]
  %114 = phi i64 [ 0, %110 ], [ %135, %112 ]
  %115 = phi i64 [ %111, %110 ], [ %136, %112 ]
  %116 = add nuw nsw i64 %114, %104
  %117 = getelementptr inbounds float, float* %1, i64 %116
  %118 = load float, float* %117, align 4, !tbaa !8
  %119 = shl i64 %114, 6
  %120 = add nsw i64 %119, %12
  %121 = getelementptr inbounds float, float* %1, i64 %120
  %122 = load float, float* %121, align 4, !tbaa !8
  %123 = fsub float -0.000000e+00, %118
  %124 = tail call float @llvm.fmuladd.f32(float %123, float %122, float %113)
  store float %124, float* %106, align 4, !tbaa !8
  %125 = or i64 %114, 1
  %126 = add nuw nsw i64 %125, %104
  %127 = getelementptr inbounds float, float* %1, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !8
  %129 = shl i64 %125, 6
  %130 = add nsw i64 %129, %12
  %131 = getelementptr inbounds float, float* %1, i64 %130
  %132 = load float, float* %131, align 4, !tbaa !8
  %133 = fsub float -0.000000e+00, %128
  %134 = tail call float @llvm.fmuladd.f32(float %133, float %132, float %124)
  store float %134, float* %106, align 4, !tbaa !8
  %135 = add nsw i64 %114, 2
  %136 = add i64 %115, -2
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %112

; <label>:138:                                    ; preds = %112, %102
  %139 = phi float [ %107, %102 ], [ %134, %112 ]
  %140 = phi i64 [ 0, %102 ], [ %135, %112 ]
  %141 = icmp eq i64 %108, 0
  br i1 %141, label %152, label %142

; <label>:142:                                    ; preds = %138
  %143 = add nuw nsw i64 %140, %104
  %144 = getelementptr inbounds float, float* %1, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !8
  %146 = shl i64 %140, 6
  %147 = add nsw i64 %146, %12
  %148 = getelementptr inbounds float, float* %1, i64 %147
  %149 = load float, float* %148, align 4, !tbaa !8
  %150 = fsub float -0.000000e+00, %145
  %151 = tail call float @llvm.fmuladd.f32(float %150, float %149, float %139)
  store float %151, float* %106, align 4, !tbaa !8
  br label %152

; <label>:152:                                    ; preds = %142, %138, %100
  tail call void @_Z7barrierj(i32 1) #5
  %153 = add nuw nsw i64 %41, 1
  %154 = icmp eq i64 %153, 63
  br i1 %154, label %155, label %40

; <label>:155:                                    ; preds = %152
  %156 = add nsw i32 %3, 1
  %157 = mul nsw i32 %156, %2
  %158 = add nsw i32 %157, %3
  %159 = sext i32 %158 to i64
  br label %160

; <label>:160:                                    ; preds = %160, %155
  %161 = phi i64 [ 1, %155 ], [ %192, %160 ]
  %162 = phi i64 [ %159, %155 ], [ %191, %160 ]
  %163 = shl i64 %161, 6
  %164 = add nsw i64 %163, %12
  %165 = getelementptr inbounds float, float* %1, i64 %164
  %166 = bitcast float* %165 to i32*
  %167 = load i32, i32* %166, align 4, !tbaa !8
  %168 = add nsw i64 %162, %12
  %169 = getelementptr inbounds float, float* %0, i64 %168
  %170 = bitcast float* %169 to i32*
  store i32 %167, i32* %170, align 4, !tbaa !8
  %171 = add nsw i64 %162, %10
  %172 = shl i64 %161, 6
  %173 = add i64 %172, 64
  %174 = add nsw i64 %173, %12
  %175 = getelementptr inbounds float, float* %1, i64 %174
  %176 = bitcast float* %175 to i32*
  %177 = load i32, i32* %176, align 4, !tbaa !8
  %178 = add nsw i64 %171, %12
  %179 = getelementptr inbounds float, float* %0, i64 %178
  %180 = bitcast float* %179 to i32*
  store i32 %177, i32* %180, align 4, !tbaa !8
  %181 = add nsw i64 %171, %10
  %182 = shl i64 %161, 6
  %183 = add i64 %182, 128
  %184 = add nsw i64 %183, %12
  %185 = getelementptr inbounds float, float* %1, i64 %184
  %186 = bitcast float* %185 to i32*
  %187 = load i32, i32* %186, align 4, !tbaa !8
  %188 = add nsw i64 %181, %12
  %189 = getelementptr inbounds float, float* %0, i64 %188
  %190 = bitcast float* %189 to i32*
  store i32 %187, i32* %190, align 4, !tbaa !8
  %191 = add nsw i64 %181, %10
  %192 = add nsw i64 %161, 3
  %193 = icmp eq i64 %192, 64
  br i1 %193, label %194, label %160

; <label>:194:                                    ; preds = %160
  ret void
}

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
!4 = !{i32 1, i32 3, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"int", !"int"}
!7 = !{!"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
