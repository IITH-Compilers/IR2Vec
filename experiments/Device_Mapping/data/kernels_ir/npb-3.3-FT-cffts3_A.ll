; ModuleID = 'npb-FT-cffts3.cl'
source_filename = "npb-FT-cffts3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.dcomplex = type { double, double }

@cffts3.ty1 = internal global [256 x %struct.dcomplex] undef, align 16
@cffts3.ty2 = internal global [256 x %struct.dcomplex] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @cffts3(%struct.dcomplex* nocapture readonly, %struct.dcomplex* nocapture, %struct.dcomplex*, i32, i32, i32, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %4, 1
  %16 = mul nsw i32 %15, %10
  %17 = add nsw i32 %16, %12
  %18 = icmp slt i32 %14, %6
  br i1 %18, label %19, label %49

; <label>:19:                                     ; preds = %8
  %20 = mul i32 %15, %5
  %21 = shl i64 %13, 32
  %22 = ashr exact i64 %21, 32
  %23 = sext i32 %6 to i64
  %24 = add nsw i64 %23, -1
  %25 = sub nsw i64 %24, %22
  %26 = lshr i64 %25, 6
  %27 = and i64 %26, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

; <label>:29:                                     ; preds = %19
  %30 = trunc i64 %22 to i32
  %31 = mul i32 %20, %30
  %32 = add nsw i32 %31, %17
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %33
  %35 = bitcast %struct.dcomplex* %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !8
  %37 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %22
  %38 = bitcast %struct.dcomplex* %37 to i64*
  store i64 %36, i64* %38, align 16, !tbaa !8
  %39 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %33, i32 1
  %40 = bitcast double* %39 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !13
  %42 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %22, i32 1
  %43 = bitcast double* %42 to i64*
  store i64 %41, i64* %43, align 8, !tbaa !13
  %44 = add nsw i64 %22, 64
  br label %45

; <label>:45:                                     ; preds = %29, %19
  %46 = phi i64 [ %22, %19 ], [ %44, %29 ]
  %47 = icmp eq i64 %26, 0
  br i1 %47, label %49, label %48

; <label>:48:                                     ; preds = %45
  br label %84

; <label>:49:                                     ; preds = %45, %84, %8
  %50 = phi i1 [ false, %8 ], [ %18, %84 ], [ %18, %45 ]
  tail call void @_Z7barrierj(i32 1) #5
  tail call void @cfftz(i32 %3, i32 %7, i32 %6, %struct.dcomplex* %2, %struct.dcomplex* getelementptr inbounds ([256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 0), %struct.dcomplex* getelementptr inbounds ([256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty2, i64 0, i64 0)) #6
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %50, label %51, label %117

; <label>:51:                                     ; preds = %49
  %52 = mul i32 %15, %5
  %53 = shl i64 %13, 32
  %54 = ashr exact i64 %53, 32
  %55 = sext i32 %6 to i64
  %56 = add nsw i64 %54, 64
  %57 = icmp sgt i64 %56, %55
  %58 = select i1 %57, i64 %56, i64 %55
  %59 = add nsw i64 %58, -1
  %60 = sub nsw i64 %59, %54
  %61 = lshr i64 %60, 6
  %62 = and i64 %61, 1
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %80

; <label>:64:                                     ; preds = %51
  %65 = trunc i64 %54 to i32
  %66 = mul i32 %52, %65
  %67 = add nsw i32 %66, %17
  %68 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %54
  %69 = bitcast %struct.dcomplex* %68 to i64*
  %70 = load i64, i64* %69, align 16, !tbaa !8
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %71
  %73 = bitcast %struct.dcomplex* %72 to i64*
  store i64 %70, i64* %73, align 8, !tbaa !8
  %74 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %54, i32 1
  %75 = bitcast double* %74 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !13
  %77 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %71, i32 1
  %78 = bitcast double* %77 to i64*
  store i64 %76, i64* %78, align 8, !tbaa !13
  %79 = add nsw i64 %54, 64
  br label %80

; <label>:80:                                     ; preds = %64, %51
  %81 = phi i64 [ %54, %51 ], [ %79, %64 ]
  %82 = icmp eq i64 %61, 0
  br i1 %82, label %117, label %83

; <label>:83:                                     ; preds = %80
  br label %118

; <label>:84:                                     ; preds = %84, %48
  %85 = phi i64 [ %46, %48 ], [ %115, %84 ]
  %86 = trunc i64 %85 to i32
  %87 = mul i32 %20, %86
  %88 = add nsw i32 %87, %17
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %89
  %91 = bitcast %struct.dcomplex* %90 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !8
  %93 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %85
  %94 = bitcast %struct.dcomplex* %93 to i64*
  store i64 %92, i64* %94, align 16, !tbaa !8
  %95 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %89, i32 1
  %96 = bitcast double* %95 to i64*
  %97 = load i64, i64* %96, align 8, !tbaa !13
  %98 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %85, i32 1
  %99 = bitcast double* %98 to i64*
  store i64 %97, i64* %99, align 8, !tbaa !13
  %100 = add nsw i64 %85, 64
  %101 = trunc i64 %100 to i32
  %102 = mul i32 %20, %101
  %103 = add nsw i32 %102, %17
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %104
  %106 = bitcast %struct.dcomplex* %105 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !8
  %108 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %100
  %109 = bitcast %struct.dcomplex* %108 to i64*
  store i64 %107, i64* %109, align 16, !tbaa !8
  %110 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %0, i64 %104, i32 1
  %111 = bitcast double* %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !13
  %113 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %100, i32 1
  %114 = bitcast double* %113 to i64*
  store i64 %112, i64* %114, align 8, !tbaa !13
  %115 = add nsw i64 %85, 128
  %116 = icmp slt i64 %115, %23
  br i1 %116, label %84, label %49

; <label>:117:                                    ; preds = %80, %118, %49
  ret void

; <label>:118:                                    ; preds = %118, %83
  %119 = phi i64 [ %81, %83 ], [ %149, %118 ]
  %120 = trunc i64 %119 to i32
  %121 = mul i32 %52, %120
  %122 = add nsw i32 %121, %17
  %123 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %119
  %124 = bitcast %struct.dcomplex* %123 to i64*
  %125 = load i64, i64* %124, align 16, !tbaa !8
  %126 = sext i32 %122 to i64
  %127 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %126
  %128 = bitcast %struct.dcomplex* %127 to i64*
  store i64 %125, i64* %128, align 8, !tbaa !8
  %129 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %119, i32 1
  %130 = bitcast double* %129 to i64*
  %131 = load i64, i64* %130, align 8, !tbaa !13
  %132 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %126, i32 1
  %133 = bitcast double* %132 to i64*
  store i64 %131, i64* %133, align 8, !tbaa !13
  %134 = add nsw i64 %119, 64
  %135 = trunc i64 %134 to i32
  %136 = mul i32 %52, %135
  %137 = add nsw i32 %136, %17
  %138 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %134
  %139 = bitcast %struct.dcomplex* %138 to i64*
  %140 = load i64, i64* %139, align 16, !tbaa !8
  %141 = sext i32 %137 to i64
  %142 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %141
  %143 = bitcast %struct.dcomplex* %142 to i64*
  store i64 %140, i64* %143, align 8, !tbaa !8
  %144 = getelementptr inbounds [256 x %struct.dcomplex], [256 x %struct.dcomplex]* @cffts3.ty1, i64 0, i64 %134, i32 1
  %145 = bitcast double* %144 to i64*
  %146 = load i64, i64* %145, align 8, !tbaa !13
  %147 = getelementptr inbounds %struct.dcomplex, %struct.dcomplex* %1, i64 %141, i32 1
  %148 = bitcast double* %147 to i64*
  store i64 %146, i64* %148, align 8, !tbaa !13
  %149 = add nsw i64 %119, 128
  %150 = icmp slt i64 %149, %55
  br i1 %150, label %118, label %117
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
