; ModuleID = 'shoc-1.1.5-MD5Hash-FindKeyWithDigest_Kernel.cl'
source_filename = "shoc-1.1.5-MD5Hash-FindKeyWithDigest_Kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @FindKeyWithDigest_Kernel(i32, i32, i32, i32, i32, i32, i32, i32* nocapture, i8* nocapture, i32* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = alloca i64, align 8
  %12 = bitcast i64* %11 to [8 x i8]*
  %13 = alloca [4 x i32], align 16
  %14 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %15 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %16 = mul i64 %15, %14
  %17 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %18 = add i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = mul nsw i32 %19, %6
  %21 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #5
  %22 = urem i32 %20, %6
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %21, align 8, !tbaa !8
  %24 = udiv i32 %20, %6
  %25 = urem i32 %24, %6
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %26, i8* %27, align 1, !tbaa !8
  %28 = udiv i32 %24, %6
  %29 = urem i32 %28, %6
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %30, i8* %31, align 2, !tbaa !8
  %32 = udiv i32 %28, %6
  %33 = urem i32 %32, %6
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, i8* %21, i64 3
  store i8 %34, i8* %35, align 1, !tbaa !8
  %36 = udiv i32 %32, %6
  %37 = urem i32 %36, %6
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, i8* %21, i64 4
  store i8 %38, i8* %39, align 4, !tbaa !8
  %40 = udiv i32 %36, %6
  %41 = urem i32 %40, %6
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, i8* %21, i64 5
  store i8 %42, i8* %43, align 1, !tbaa !8
  %44 = udiv i32 %40, %6
  %45 = urem i32 %44, %6
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, i8* %21, i64 6
  store i8 %46, i8* %47, align 2, !tbaa !8
  %48 = udiv i32 %44, %6
  %49 = urem i32 %48, %6
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, i8* %21, i64 7
  store i8 %50, i8* %51, align 1, !tbaa !8
  %52 = icmp sgt i32 %6, 0
  br i1 %52, label %53, label %81

; <label>:53:                                     ; preds = %10
  %54 = bitcast [4 x i32]* %13 to i8*
  %55 = bitcast i64* %11 to i32*
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %61 = getelementptr inbounds i8, i8* %8, i64 1
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 2
  %63 = getelementptr inbounds i8, i8* %8, i64 2
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 3
  %65 = getelementptr inbounds i8, i8* %8, i64 3
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  %67 = getelementptr inbounds i8, i8* %8, i64 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 5
  %69 = getelementptr inbounds i8, i8* %8, i64 5
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 6
  %71 = getelementptr inbounds i8, i8* %8, i64 6
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  %73 = getelementptr inbounds i8, i8* %8, i64 7
  %74 = getelementptr inbounds i32, i32* %9, i64 1
  %75 = getelementptr inbounds i32, i32* %9, i64 2
  %76 = getelementptr inbounds i32, i32* %9, i64 3
  br label %77

; <label>:77:                                     ; preds = %53, %103
  %78 = phi i32 [ 0, %53 ], [ %106, %103 ]
  %79 = add nsw i32 %78, %20
  %80 = icmp slt i32 %79, %4
  br i1 %80, label %82, label %81

; <label>:81:                                     ; preds = %77, %103, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #5
  ret void

; <label>:82:                                     ; preds = %77
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #5
  call void @md5_2words(i32* nonnull %55, i32 %5, i32* nonnull %56) #5
  %83 = load i32, i32* %56, align 16, !tbaa !11
  %84 = icmp eq i32 %83, %0
  %85 = load i32, i32* %57, align 4
  %86 = icmp eq i32 %85, %1
  %87 = and i1 %84, %86
  %88 = load i32, i32* %58, align 8
  %89 = icmp eq i32 %88, %2
  %90 = and i1 %87, %89
  %91 = load i32, i32* %59, align 4
  %92 = icmp eq i32 %91, %3
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %103

; <label>:94:                                     ; preds = %82
  store i32 %79, i32* %7, align 4, !tbaa !11
  %95 = load i8, i8* %21, align 8, !tbaa !8
  store i8 %95, i8* %8, align 1, !tbaa !8
  %96 = load i8, i8* %60, align 1, !tbaa !8
  store i8 %96, i8* %61, align 1, !tbaa !8
  %97 = load i8, i8* %62, align 2, !tbaa !8
  store i8 %97, i8* %63, align 1, !tbaa !8
  %98 = load i8, i8* %64, align 1, !tbaa !8
  store i8 %98, i8* %65, align 1, !tbaa !8
  %99 = load i8, i8* %66, align 4, !tbaa !8
  store i8 %99, i8* %67, align 1, !tbaa !8
  %100 = load i8, i8* %68, align 1, !tbaa !8
  store i8 %100, i8* %69, align 1, !tbaa !8
  %101 = load i8, i8* %70, align 2, !tbaa !8
  store i8 %101, i8* %71, align 1, !tbaa !8
  %102 = load i8, i8* %72, align 1, !tbaa !8
  store i8 %102, i8* %73, align 1, !tbaa !8
  store i32 %0, i32* %9, align 4, !tbaa !11
  store i32 %1, i32* %74, align 4, !tbaa !11
  store i32 %2, i32* %75, align 4, !tbaa !11
  store i32 %3, i32* %76, align 4, !tbaa !11
  br label %103

; <label>:103:                                    ; preds = %94, %82
  %104 = load i8, i8* %21, align 8, !tbaa !8
  %105 = add i8 %104, 1
  store i8 %105, i8* %21, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #5
  %106 = add nuw nsw i32 %78, 1
  %107 = icmp slt i32 %106, %6
  br i1 %107, label %77, label %81
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

declare void @md5_2words(i32*, i32, i32*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"uint", !"uint", !"uint", !"uint", !"int", !"int", !"int", !"int*", !"uchar*", !"uint*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
