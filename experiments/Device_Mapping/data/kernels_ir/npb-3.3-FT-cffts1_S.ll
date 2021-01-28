; ModuleID = 'npb-FT-cffts1.cl'
source_filename = "npb-FT-cffts1.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.dcomplex = type { double, double }

@cffts1.ty1 = internal global [64 x %struct.dcomplex] undef, align 16
@cffts1.ty2 = internal global [64 x %struct.dcomplex] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @cffts1(%struct.dcomplex* nocapture readonly, %struct.dcomplex* nocapture, %struct.dcomplex*, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %14 = trunc i64 %13 to i32
  %15 = mul nsw i32 %10, %5
  %16 = add nsw i32 %4, 1
  %17 = add i32 %15, %12
  %18 = mul i32 %17, %16
  %19 = icmp slt i32 %14, %4
  br i1 %19, label %20, label %47

; <label>:20:                                     ; preds = %8
  %21 = shl i64 %13, 32
  %22 = ashr exact i64 %21, 32
  %23 = sext i32 %18 to i64
  %24 = sext i32 %4 to i64
  %25 = add nsw i64 %24, -1
  %26 = sub nsw i64 %25, %22
  %27 = lshr i64 %26, 6
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %20
  %31 = add nsw i64 %22, %23
  %32 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %31
  %33 = bitcast %struct.dcomplex* %32 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !8
  %35 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %22
  %36 = bitcast %struct.dcomplex* %35 to i64*
  store i64 %34, i64* %36, align 16, !tbaa !8
  %37 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %31, i32 1
  %38 = bitcast double* %37 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !13
  %40 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %22, i32 1
  %41 = bitcast double* %40 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !13
  %42 = add nsw i64 %22, 64
  br label %43

; <label>:43:                                     ; preds = %30, %20
  %44 = phi i64 [ %22, %20 ], [ %42, %30 ]
  %45 = icmp eq i64 %27, 0
  br i1 %45, label %47, label %46

; <label>:46:                                     ; preds = %43
  br label %79

; <label>:47:                                     ; preds = %43, %79, %8
  %48 = phi i1 [ false, %8 ], [ %19, %79 ], [ %19, %43 ]
  tail call void @_Z7barrierj(i32 1) #5
  tail call void @cfftz(i32 %3, i32 %7, i32 %4, %struct.dcomplex* %2, %struct.dcomplex* getelementptr inbounds ([64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 0), %struct.dcomplex* getelementptr inbounds ([64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty2, i64 0, i64 0)) #6
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %48, label %49, label %106

; <label>:49:                                     ; preds = %47
  %50 = shl i64 %13, 32
  %51 = ashr exact i64 %50, 32
  %52 = sext i32 %18 to i64
  %53 = sext i32 %4 to i64
  %54 = add nsw i64 %51, 64
  %55 = icmp sgt i64 %54, %53
  %56 = select i1 %55, i64 %54, i64 %53
  %57 = add nsw i64 %56, -1
  %58 = sub nsw i64 %57, %51
  %59 = lshr i64 %58, 6
  %60 = and i64 %59, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %75

; <label>:62:                                     ; preds = %49
  %63 = add nsw i64 %51, %52
  %64 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %51
  %65 = bitcast %struct.dcomplex* %64 to i64*
  %66 = load i64, i64* %65, align 16, !tbaa !8
  %67 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %63
  %68 = bitcast %struct.dcomplex* %67 to i64*
  store i64 %66, i64* %68, align 8, !tbaa !8
  %69 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %51, i32 1
  %70 = bitcast double* %69 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !13
  %72 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %63, i32 1
  %73 = bitcast double* %72 to i64*
  store i64 %71, i64* %73, align 8, !tbaa !13
  %74 = add nsw i64 %51, 64
  br label %75

; <label>:75:                                     ; preds = %62, %49
  %76 = phi i64 [ %51, %49 ], [ %74, %62 ]
  %77 = icmp eq i64 %59, 0
  br i1 %77, label %106, label %78

; <label>:78:                                     ; preds = %75
  br label %107

; <label>:79:                                     ; preds = %79, %46
  %80 = phi i64 [ %44, %46 ], [ %104, %79 ]
  %81 = add nsw i64 %80, %23
  %82 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %81
  %83 = bitcast %struct.dcomplex* %82 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !8
  %85 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %80
  %86 = bitcast %struct.dcomplex* %85 to i64*
  store i64 %84, i64* %86, align 16, !tbaa !8
  %87 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %81, i32 1
  %88 = bitcast double* %87 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !13
  %90 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %80, i32 1
  %91 = bitcast double* %90 to i64*
  store i64 %89, i64* %91, align 8, !tbaa !13
  %92 = add nsw i64 %80, 64
  %93 = add nsw i64 %92, %23
  %94 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %93
  %95 = bitcast %struct.dcomplex* %94 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !8
  %97 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %92
  %98 = bitcast %struct.dcomplex* %97 to i64*
  store i64 %96, i64* %98, align 16, !tbaa !8
  %99 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %93, i32 1
  %100 = bitcast double* %99 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !13
  %102 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %92, i32 1
  %103 = bitcast double* %102 to i64*
  store i64 %101, i64* %103, align 8, !tbaa !13
  %104 = add nsw i64 %80, 128
  %105 = icmp slt i64 %104, %24
  br i1 %105, label %79, label %47

; <label>:106:                                    ; preds = %75, %107, %47
  ret void

; <label>:107:                                    ; preds = %107, %78
  %108 = phi i64 [ %76, %78 ], [ %132, %107 ]
  %109 = add nsw i64 %108, %52
  %110 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %108
  %111 = bitcast %struct.dcomplex* %110 to i64*
  %112 = load i64, i64* %111, align 16, !tbaa !8
  %113 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %109
  %114 = bitcast %struct.dcomplex* %113 to i64*
  store i64 %112, i64* %114, align 8, !tbaa !8
  %115 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %108, i32 1
  %116 = bitcast double* %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !13
  %118 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %109, i32 1
  %119 = bitcast double* %118 to i64*
  store i64 %117, i64* %119, align 8, !tbaa !13
  %120 = add nsw i64 %108, 64
  %121 = add nsw i64 %120, %52
  %122 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %120
  %123 = bitcast %struct.dcomplex* %122 to i64*
  %124 = load i64, i64* %123, align 16, !tbaa !8
  %125 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %121
  %126 = bitcast %struct.dcomplex* %125 to i64*
  store i64 %124, i64* %126, align 8, !tbaa !8
  %127 = getelementptr inbounds [64 x %struct.dcomplex], [64 x %struct.dcomplex]* @cffts1.ty1, i64 0, i64 %120, i32 1
  %128 = bitcast double* %127 to i64*
  %129 = load i64, i64* %128, align 8, !tbaa !13
  %130 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %121, i32 1
  %131 = bitcast double* %130 to i64*
  store i64 %129, i64* %131, align 8, !tbaa !13
  %132 = add nsw i64 %108, 128
  %133 = icmp slt i64 %132, %53
  br i1 %133, label %107, label %106
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
