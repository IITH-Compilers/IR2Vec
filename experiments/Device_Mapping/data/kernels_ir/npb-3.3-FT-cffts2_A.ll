; ModuleID = 'npb-FT-cffts2.cl'
source_filename = "npb-FT-cffts2.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.dcomplex = type { double, double }

@cffts2.ty1 = internal global [256 x %struct.dcomplex] undef, align 16
@cffts2.ty2 = internal global [256 x %struct.dcomplex] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @cffts2(%struct.dcomplex* nocapture readonly, %struct.dcomplex* nocapture, %struct.dcomplex*, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %4, 1
  %16 = mul i32 %15, %5
  %17 = mul i32 %16, %10
  %18 = add nsw i32 %17, %12
  %19 = icmp slt i32 %14, %5
  br i1 %19, label %20, label %49

; <label>:20:                                     ; preds = %8
  %21 = shl i64 %13, 32
  %22 = ashr exact i64 %21, 32
  %23 = sext i32 %15 to i64
  %24 = sext i32 %18 to i64
  %25 = sext i32 %5 to i64
  %26 = add nsw i64 %25, -1
  %27 = sub nsw i64 %26, %22
  %28 = lshr i64 %27, 6
  %29 = and i64 %28, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

; <label>:31:                                     ; preds = %20
  %32 = mul nsw i64 %22, %23
  %33 = add nsw i64 %32, %24
  %34 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %33
  %35 = bitcast %struct.dcomplex* %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !8
  %37 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %22
  %38 = bitcast %struct.dcomplex* %37 to i64*
  store i64 %36, i64* %38, align 16, !tbaa !8
  %39 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %33, i32 1
  %40 = bitcast double* %39 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !13
  %42 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %22, i32 1
  %43 = bitcast double* %42 to i64*
  store i64 %41, i64* %43, align 8, !tbaa !13
  %44 = add nsw i64 %22, 64
  br label %45

; <label>:45:                                     ; preds = %31, %20
  %46 = phi i64 [ %22, %20 ], [ %44, %31 ]
  %47 = icmp eq i64 %28, 0
  br i1 %47, label %49, label %48

; <label>:48:                                     ; preds = %45
  br label %83

; <label>:49:                                     ; preds = %45, %83, %8
  %50 = phi i1 [ false, %8 ], [ %19, %83 ], [ %19, %45 ]
  tail call void @_Z7barrierj(i32 1) #5
  tail call void @cfftz(i32 %3, i32 %7, i32 %5, %struct.dcomplex* %2, %struct.dcomplex* getelementptr inbounds ([256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 0), %struct.dcomplex* getelementptr inbounds ([256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty2, i64 0, i64 0)) #6
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %50, label %51, label %112

; <label>:51:                                     ; preds = %49
  %52 = shl i64 %13, 32
  %53 = ashr exact i64 %52, 32
  %54 = sext i32 %15 to i64
  %55 = sext i32 %18 to i64
  %56 = sext i32 %5 to i64
  %57 = add nsw i64 %53, 64
  %58 = icmp sgt i64 %57, %56
  %59 = select i1 %58, i64 %57, i64 %56
  %60 = add nsw i64 %59, -1
  %61 = sub nsw i64 %60, %53
  %62 = lshr i64 %61, 6
  %63 = and i64 %62, 1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %79

; <label>:65:                                     ; preds = %51
  %66 = mul nsw i64 %53, %54
  %67 = add nsw i64 %66, %55
  %68 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %53
  %69 = bitcast %struct.dcomplex* %68 to i64*
  %70 = load i64, i64* %69, align 16, !tbaa !8
  %71 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %67
  %72 = bitcast %struct.dcomplex* %71 to i64*
  store i64 %70, i64* %72, align 8, !tbaa !8
  %73 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %53, i32 1
  %74 = bitcast double* %73 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !13
  %76 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %67, i32 1
  %77 = bitcast double* %76 to i64*
  store i64 %75, i64* %77, align 8, !tbaa !13
  %78 = add nsw i64 %53, 64
  br label %79

; <label>:79:                                     ; preds = %65, %51
  %80 = phi i64 [ %53, %51 ], [ %78, %65 ]
  %81 = icmp eq i64 %62, 0
  br i1 %81, label %112, label %82

; <label>:82:                                     ; preds = %79
  br label %113

; <label>:83:                                     ; preds = %83, %48
  %84 = phi i64 [ %46, %48 ], [ %110, %83 ]
  %85 = mul nsw i64 %84, %23
  %86 = add nsw i64 %85, %24
  %87 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %86
  %88 = bitcast %struct.dcomplex* %87 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !8
  %90 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %84
  %91 = bitcast %struct.dcomplex* %90 to i64*
  store i64 %89, i64* %91, align 16, !tbaa !8
  %92 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %86, i32 1
  %93 = bitcast double* %92 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !13
  %95 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %84, i32 1
  %96 = bitcast double* %95 to i64*
  store i64 %94, i64* %96, align 8, !tbaa !13
  %97 = add nsw i64 %84, 64
  %98 = mul nsw i64 %97, %23
  %99 = add nsw i64 %98, %24
  %100 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %99
  %101 = bitcast %struct.dcomplex* %100 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !8
  %103 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %97
  %104 = bitcast %struct.dcomplex* %103 to i64*
  store i64 %102, i64* %104, align 16, !tbaa !8
  %105 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %99, i32 1
  %106 = bitcast double* %105 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !13
  %108 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %97, i32 1
  %109 = bitcast double* %108 to i64*
  store i64 %107, i64* %109, align 8, !tbaa !13
  %110 = add nsw i64 %84, 128
  %111 = icmp slt i64 %110, %25
  br i1 %111, label %83, label %49

; <label>:112:                                    ; preds = %79, %113, %49
  ret void

; <label>:113:                                    ; preds = %113, %82
  %114 = phi i64 [ %80, %82 ], [ %140, %113 ]
  %115 = mul nsw i64 %114, %54
  %116 = add nsw i64 %115, %55
  %117 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %114
  %118 = bitcast %struct.dcomplex* %117 to i64*
  %119 = load i64, i64* %118, align 16, !tbaa !8
  %120 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %116
  %121 = bitcast %struct.dcomplex* %120 to i64*
  store i64 %119, i64* %121, align 8, !tbaa !8
  %122 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %114, i32 1
  %123 = bitcast double* %122 to i64*
  %124 = load i64, i64* %123, align 8, !tbaa !13
  %125 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %116, i32 1
  %126 = bitcast double* %125 to i64*
  store i64 %124, i64* %126, align 8, !tbaa !13
  %127 = add nsw i64 %114, 64
  %128 = mul nsw i64 %127, %54
  %129 = add nsw i64 %128, %55
  %130 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %127
  %131 = bitcast %struct.dcomplex* %130 to i64*
  %132 = load i64, i64* %131, align 16, !tbaa !8
  %133 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %129
  %134 = bitcast %struct.dcomplex* %133 to i64*
  store i64 %132, i64* %134, align 8, !tbaa !8
  %135 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts2.ty1, i64 0, i64 %127, i32 1
  %136 = bitcast double* %135 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !13
  %138 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %129, i32 1
  %139 = bitcast double* %138 to i64*
  store i64 %137, i64* %139, align 8, !tbaa !13
  %140 = add nsw i64 %114, 128
  %141 = icmp slt i64 %140, %56
  br i1 %141, label %113, label %112
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #2

declare void @cfftz(i32, i32, i32, %struct.dcomplex*, %struct.dcomplex*, %struct.dcomplex*) local_unnamed_addr #3

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"dcomplex*", !"dcomplex*", !"dcomplex*", !"int", !"int", !"int", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 8}
!10 = !{!"double", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!9, !10, i64 8}
