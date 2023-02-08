; ModuleID = 'nvidia-4.2-MersenneTwister-MersenneTwister.cl'
source_filename = "nvidia-4.2-MersenneTwister-MersenneTwister.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.mt_struct_stripped = type { i32, i32, i32, i32 }

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @MersenneTwister(float* nocapture, %struct.mt_struct_stripped* nocapture readonly, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = alloca [19 x i32], align 16
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %6 = bitcast [19 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 76, i8* nonnull %6) #4
  %7 = shl i64 %5, 32
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds %struct.mt_struct_stripped, %struct.mt_struct_stripped* %1, i64 %8, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !8
  %11 = getelementptr inbounds %struct.mt_struct_stripped, %struct.mt_struct_stripped* %1, i64 %8, i32 1
  %12 = load i32, i32* %11, align 4, !tbaa !13
  %13 = getelementptr inbounds %struct.mt_struct_stripped, %struct.mt_struct_stripped* %1, i64 %8, i32 2
  %14 = load i32, i32* %13, align 4, !tbaa !14
  %15 = getelementptr inbounds %struct.mt_struct_stripped, %struct.mt_struct_stripped* %1, i64 %8, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !15
  %17 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 0
  store i32 %16, i32* %17, align 16, !tbaa !15
  %18 = lshr i32 %16, 30
  %19 = xor i32 %18, %16
  %20 = mul i32 %19, 1812433253
  %21 = add i32 %20, 1
  %22 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 1
  store i32 %21, i32* %22, align 4, !tbaa !15
  %23 = lshr i32 %21, 30
  %24 = xor i32 %23, %21
  %25 = mul i32 %24, 1812433253
  %26 = add i32 %25, 2
  %27 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 2
  store i32 %26, i32* %27, align 8, !tbaa !15
  %28 = lshr i32 %26, 30
  %29 = xor i32 %28, %26
  %30 = mul i32 %29, 1812433253
  %31 = add i32 %30, 3
  %32 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 3
  store i32 %31, i32* %32, align 4, !tbaa !15
  %33 = lshr i32 %31, 30
  %34 = xor i32 %33, %31
  %35 = mul i32 %34, 1812433253
  %36 = add i32 %35, 4
  %37 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 4
  store i32 %36, i32* %37, align 16, !tbaa !15
  %38 = lshr i32 %36, 30
  %39 = xor i32 %38, %36
  %40 = mul i32 %39, 1812433253
  %41 = add i32 %40, 5
  %42 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 5
  store i32 %41, i32* %42, align 4, !tbaa !15
  %43 = lshr i32 %41, 30
  %44 = xor i32 %43, %41
  %45 = mul i32 %44, 1812433253
  %46 = add i32 %45, 6
  %47 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 6
  store i32 %46, i32* %47, align 8, !tbaa !15
  %48 = lshr i32 %46, 30
  %49 = xor i32 %48, %46
  %50 = mul i32 %49, 1812433253
  %51 = add i32 %50, 7
  %52 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 7
  store i32 %51, i32* %52, align 4, !tbaa !15
  %53 = lshr i32 %51, 30
  %54 = xor i32 %53, %51
  %55 = mul i32 %54, 1812433253
  %56 = add i32 %55, 8
  %57 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 8
  store i32 %56, i32* %57, align 16, !tbaa !15
  %58 = lshr i32 %56, 30
  %59 = xor i32 %58, %56
  %60 = mul i32 %59, 1812433253
  %61 = add i32 %60, 9
  %62 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 9
  store i32 %61, i32* %62, align 4, !tbaa !15
  %63 = lshr i32 %61, 30
  %64 = xor i32 %63, %61
  %65 = mul i32 %64, 1812433253
  %66 = add i32 %65, 10
  %67 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 10
  store i32 %66, i32* %67, align 8, !tbaa !15
  %68 = lshr i32 %66, 30
  %69 = xor i32 %68, %66
  %70 = mul i32 %69, 1812433253
  %71 = add i32 %70, 11
  %72 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 11
  store i32 %71, i32* %72, align 4, !tbaa !15
  %73 = lshr i32 %71, 30
  %74 = xor i32 %73, %71
  %75 = mul i32 %74, 1812433253
  %76 = add i32 %75, 12
  %77 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 12
  store i32 %76, i32* %77, align 16, !tbaa !15
  %78 = lshr i32 %76, 30
  %79 = xor i32 %78, %76
  %80 = mul i32 %79, 1812433253
  %81 = add i32 %80, 13
  %82 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 13
  store i32 %81, i32* %82, align 4, !tbaa !15
  %83 = lshr i32 %81, 30
  %84 = xor i32 %83, %81
  %85 = mul i32 %84, 1812433253
  %86 = add i32 %85, 14
  %87 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 14
  store i32 %86, i32* %87, align 8, !tbaa !15
  %88 = lshr i32 %86, 30
  %89 = xor i32 %88, %86
  %90 = mul i32 %89, 1812433253
  %91 = add i32 %90, 15
  %92 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 15
  store i32 %91, i32* %92, align 4, !tbaa !15
  %93 = lshr i32 %91, 30
  %94 = xor i32 %93, %91
  %95 = mul i32 %94, 1812433253
  %96 = add i32 %95, 16
  %97 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 16
  store i32 %96, i32* %97, align 16, !tbaa !15
  %98 = lshr i32 %96, 30
  %99 = xor i32 %98, %96
  %100 = mul i32 %99, 1812433253
  %101 = add i32 %100, 17
  %102 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 17
  store i32 %101, i32* %102, align 4, !tbaa !15
  %103 = lshr i32 %101, 30
  %104 = xor i32 %103, %101
  %105 = mul i32 %104, 1812433253
  %106 = add i32 %105, 18
  %107 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 18
  store i32 %106, i32* %107, align 8, !tbaa !15
  %108 = trunc i64 %5 to i32
  %109 = icmp sgt i32 %2, 0
  br i1 %109, label %110, label %157

; <label>:110:                                    ; preds = %3
  %111 = load i32, i32* %17, align 16, !tbaa !15
  %112 = zext i32 %2 to i64
  br label %113

; <label>:113:                                    ; preds = %113, %110
  %114 = phi i64 [ 0, %110 ], [ %155, %113 ]
  %115 = phi i32 [ 0, %110 ], [ %119, %113 ]
  %116 = phi i32 [ %111, %110 ], [ %125, %113 ]
  %117 = icmp sgt i32 %115, 17
  %118 = select i1 %117, i32 -18, i32 1
  %119 = add i32 %118, %115
  %120 = icmp sgt i32 %115, 9
  %121 = select i1 %120, i32 -10, i32 9
  %122 = add i32 %121, %115
  %123 = sext i32 %119 to i64
  %124 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !15
  %126 = sext i32 %122 to i64
  %127 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4, !tbaa !15
  %129 = and i32 %125, 1
  %130 = lshr i32 %116, 1
  %131 = xor i32 %128, %130
  %132 = icmp eq i32 %129, 0
  %133 = select i1 %132, i32 0, i32 %10
  %134 = xor i32 %131, %133
  %135 = sext i32 %115 to i64
  %136 = getelementptr inbounds [19 x i32], [19 x i32]* %4, i64 0, i64 %135
  store i32 %134, i32* %136, align 4, !tbaa !15
  %137 = lshr i32 %134, 12
  %138 = xor i32 %137, %134
  %139 = shl i32 %138, 7
  %140 = and i32 %139, %12
  %141 = xor i32 %140, %138
  %142 = shl i32 %141, 15
  %143 = and i32 %142, %14
  %144 = xor i32 %143, %141
  %145 = lshr i32 %144, 18
  %146 = xor i32 %145, %144
  %147 = uitofp i32 %146 to float
  %148 = fadd float %147, 1.000000e+00
  %149 = fmul float %148, 0x3DF0000000000000
  %150 = trunc i64 %114 to i32
  %151 = shl i32 %150, 12
  %152 = add nsw i32 %151, %108
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %0, i64 %153
  store float %149, float* %154, align 4, !tbaa !16
  %155 = add nuw nsw i64 %114, 1
  %156 = icmp eq i64 %155, %112
  br i1 %156, label %157, label %113

; <label>:157:                                    ; preds = %113, %3
  call void @llvm.lifetime.end.p0i8(i64 76, i8* nonnull %6) #4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"float*", !"mt_struct_stripped*", !"int"}
!7 = !{!"", !"", !""}
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!9, !10, i64 4}
!14 = !{!9, !10, i64 8}
!15 = !{!10, !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !11, i64 0}
