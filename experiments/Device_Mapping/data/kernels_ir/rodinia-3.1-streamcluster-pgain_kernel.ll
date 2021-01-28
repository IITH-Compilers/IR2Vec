; ModuleID = 'rodinia-3.1-streamcluster-pgain_kernel.cl'
source_filename = "rodinia-3.1-streamcluster-pgain_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Point_Struct = type { float, i64, float }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @pgain_kernel(%struct.Point_Struct* nocapture readonly, float* nocapture readonly, float* nocapture, i32* nocapture readonly, i8* nocapture, float* nocapture, i32, i32, i64, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, %6
  br i1 %13, label %14, label %161

; <label>:14:                                     ; preds = %10
  %15 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, 0
  %18 = icmp sgt i32 %7, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %82

; <label>:20:                                     ; preds = %14
  %21 = sext i32 %6 to i64
  %22 = zext i32 %7 to i64
  %23 = add nsw i64 %22, -1
  %24 = and i64 %22, 3
  %25 = icmp ult i64 %23, 3
  br i1 %25, label %65, label %26

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i64 %22, %24
  br label %28

; <label>:28:                                     ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %62, %28 ]
  %30 = phi i64 [ %27, %26 ], [ %63, %28 ]
  %31 = mul nsw i64 %29, %21
  %32 = add nsw i64 %31, %8
  %33 = getelementptr inbounds float, float* %1, i64 %32
  %34 = bitcast float* %33 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = getelementptr inbounds float, float* %5, i64 %29
  %37 = bitcast float* %36 to i32*
  store i32 %35, i32* %37, align 4, !tbaa !8
  %38 = or i64 %29, 1
  %39 = mul nsw i64 %38, %21
  %40 = add nsw i64 %39, %8
  %41 = getelementptr inbounds float, float* %1, i64 %40
  %42 = bitcast float* %41 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !8
  %44 = getelementptr inbounds float, float* %5, i64 %38
  %45 = bitcast float* %44 to i32*
  store i32 %43, i32* %45, align 4, !tbaa !8
  %46 = or i64 %29, 2
  %47 = mul nsw i64 %46, %21
  %48 = add nsw i64 %47, %8
  %49 = getelementptr inbounds float, float* %1, i64 %48
  %50 = bitcast float* %49 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !8
  %52 = getelementptr inbounds float, float* %5, i64 %46
  %53 = bitcast float* %52 to i32*
  store i32 %51, i32* %53, align 4, !tbaa !8
  %54 = or i64 %29, 3
  %55 = mul nsw i64 %54, %21
  %56 = add nsw i64 %55, %8
  %57 = getelementptr inbounds float, float* %1, i64 %56
  %58 = bitcast float* %57 to i32*
  %59 = load i32, i32* %58, align 4, !tbaa !8
  %60 = getelementptr inbounds float, float* %5, i64 %54
  %61 = bitcast float* %60 to i32*
  store i32 %59, i32* %61, align 4, !tbaa !8
  %62 = add nsw i64 %29, 4
  %63 = add i64 %30, -4
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %28

; <label>:65:                                     ; preds = %28, %20
  %66 = phi i64 [ 0, %20 ], [ %62, %28 ]
  %67 = icmp eq i64 %24, 0
  br i1 %67, label %82, label %68

; <label>:68:                                     ; preds = %65
  br label %69

; <label>:69:                                     ; preds = %69, %68
  %70 = phi i64 [ %66, %68 ], [ %79, %69 ]
  %71 = phi i64 [ %24, %68 ], [ %80, %69 ]
  %72 = mul nsw i64 %70, %21
  %73 = add nsw i64 %72, %8
  %74 = getelementptr inbounds float, float* %1, i64 %73
  %75 = bitcast float* %74 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !8
  %77 = getelementptr inbounds float, float* %5, i64 %70
  %78 = bitcast float* %77 to i32*
  store i32 %76, i32* %78, align 4, !tbaa !8
  %79 = add nuw nsw i64 %70, 1
  %80 = add i64 %71, -1
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %69, !llvm.loop !12

; <label>:82:                                     ; preds = %65, %69, %14
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %18, label %83, label %106

; <label>:83:                                     ; preds = %82
  %84 = sext i32 %6 to i64
  %85 = shl i64 %11, 32
  %86 = ashr exact i64 %85, 32
  %87 = zext i32 %7 to i64
  %88 = and i64 %87, 1
  %89 = icmp eq i32 %7, 1
  br i1 %89, label %92, label %90

; <label>:90:                                     ; preds = %83
  %91 = sub nsw i64 %87, %88
  br label %118

; <label>:92:                                     ; preds = %118, %83
  %93 = phi float [ undef, %83 ], [ %138, %118 ]
  %94 = phi i64 [ 0, %83 ], [ %139, %118 ]
  %95 = phi float [ 0.000000e+00, %83 ], [ %138, %118 ]
  %96 = icmp eq i64 %88, 0
  br i1 %96, label %106, label %97

; <label>:97:                                     ; preds = %92
  %98 = mul nsw i64 %94, %84
  %99 = add nsw i64 %98, %86
  %100 = getelementptr inbounds float, float* %1, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !8
  %102 = getelementptr inbounds float, float* %5, i64 %94
  %103 = load float, float* %102, align 4, !tbaa !8
  %104 = fsub float %101, %103
  %105 = tail call float @llvm.fmuladd.f32(float %104, float %104, float %95)
  br label %106

; <label>:106:                                    ; preds = %97, %92, %82
  %107 = phi float [ 0.000000e+00, %82 ], [ %93, %92 ], [ %105, %97 ]
  %108 = shl i64 %11, 32
  %109 = ashr exact i64 %108, 32
  %110 = getelementptr inbounds %struct.Point_Struct, %struct.Point_Struct* %0, i64 %109, i32 0
  %111 = load float, float* %110, align 8, !tbaa !14
  %112 = fmul float %107, %111
  %113 = getelementptr inbounds %struct.Point_Struct, %struct.Point_Struct* %0, i64 %109, i32 2
  %114 = load float, float* %113, align 8, !tbaa !17
  %115 = add nsw i32 %9, 1
  %116 = mul nsw i32 %115, %12
  %117 = fcmp olt float %112, %114
  br i1 %117, label %142, label %148

; <label>:118:                                    ; preds = %118, %90
  %119 = phi i64 [ 0, %90 ], [ %139, %118 ]
  %120 = phi float [ 0.000000e+00, %90 ], [ %138, %118 ]
  %121 = phi i64 [ %91, %90 ], [ %140, %118 ]
  %122 = mul nsw i64 %119, %84
  %123 = add nsw i64 %122, %86
  %124 = getelementptr inbounds float, float* %1, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !8
  %126 = getelementptr inbounds float, float* %5, i64 %119
  %127 = load float, float* %126, align 4, !tbaa !8
  %128 = fsub float %125, %127
  %129 = tail call float @llvm.fmuladd.f32(float %128, float %128, float %120)
  %130 = or i64 %119, 1
  %131 = mul nsw i64 %130, %84
  %132 = add nsw i64 %131, %86
  %133 = getelementptr inbounds float, float* %1, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !8
  %135 = getelementptr inbounds float, float* %5, i64 %130
  %136 = load float, float* %135, align 4, !tbaa !8
  %137 = fsub float %134, %136
  %138 = tail call float @llvm.fmuladd.f32(float %137, float %137, float %129)
  %139 = add nsw i64 %119, 2
  %140 = add i64 %121, -2
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %92, label %118

; <label>:142:                                    ; preds = %106
  %143 = getelementptr inbounds i8, i8* %4, i64 %109
  store i8 49, i8* %143, align 1, !tbaa !18
  %144 = add nsw i32 %116, %9
  %145 = fsub float %112, %114
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds float, float* %2, i64 %146
  store float %145, float* %147, align 4, !tbaa !8
  br label %161

; <label>:148:                                    ; preds = %106
  %149 = getelementptr inbounds %struct.Point_Struct, %struct.Point_Struct* %0, i64 %109, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !19
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = getelementptr inbounds i32, i32* %3, i64 %152
  %154 = load i32, i32* %153, align 4, !tbaa !20
  %155 = add nsw i32 %154, %116
  %156 = fsub float %114, %112
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds float, float* %2, i64 %157
  %159 = load float, float* %158, align 4, !tbaa !8
  %160 = fadd float %156, %159
  store float %160, float* %158, align 4, !tbaa !8
  br label %161

; <label>:161:                                    ; preds = %142, %148, %10
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"Point_Struct*", !"float*", !"float*", !"int*", !"char*", !"float*", !"int", !"int", !"long", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !9, i64 0}
!15 = !{!"", !9, i64 0, !16, i64 8, !9, i64 16}
!16 = !{!"long", !10, i64 0}
!17 = !{!15, !9, i64 16}
!18 = !{!10, !10, i64 0}
!19 = !{!15, !16, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !10, i64 0}
