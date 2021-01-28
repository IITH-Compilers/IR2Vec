; ModuleID = 'shoc-1.1.5-S3D-ratt10_kernel.cl'
source_filename = "shoc-1.1.5-S3D-ratt10_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ratt10_kernel(float* nocapture readonly, float*, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %5 = getelementptr inbounds float, float* %0, i64 %4
  %6 = load float, float* %5, align 4, !tbaa !8
  %7 = fmul float %6, %2
  %8 = tail call float @_Z3logf(float %7) #3
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFECCCCCC0000000, float 0x404523C4C0000000)
  %10 = fdiv float 1.000000e+00, %7, !fpmath !12
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 0x408ABBBF20000000, float %9)
  %12 = tail call float @_Z3expf(float %11) #3
  %13 = getelementptr inbounds float, float* %1, i64 %4
  store float %12, float* %13, align 4, !tbaa !8
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0xC00B5C2900000000, float 0x404FE58580000000)
  %15 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0E4B9CA60000000, float %14)
  %16 = tail call float @_Z3expf(float %15) #3
  %17 = add i64 %4, 8
  %18 = getelementptr inbounds float, float* %1, i64 %17
  store float %16, float* %18, align 4, !tbaa !8
  %19 = tail call float @llvm.fmuladd.f32(float %8, float 0xC00DEB8520000000, float 0x40505D9020000000)
  %20 = tail call float @llvm.fmuladd.f32(float %10, float 0xC08E71D1E0000000, float %19)
  %21 = tail call float @_Z3expf(float %20) #3
  %22 = add i64 %4, 16
  %23 = getelementptr inbounds float, float* %1, i64 %22
  store float %21, float* %23, align 4, !tbaa !8
  %24 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0048F5C20000000, float 0x404BC7F460000000)
  %25 = tail call float @llvm.fmuladd.f32(float %10, float 0xC08668AB80000000, float %24)
  %26 = tail call float @_Z3expf(float %25) #3
  %27 = add i64 %4, 24
  %28 = getelementptr inbounds float, float* %1, i64 %27
  store float %26, float* %28, align 4, !tbaa !8
  %29 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0091EB860000000, float 0x404FAA9E00000000)
  %30 = tail call float @llvm.fmuladd.f32(float %10, float 0xC08357A6E0000000, float %29)
  %31 = tail call float @_Z3expf(float %30) #3
  %32 = add i64 %4, 32
  %33 = getelementptr inbounds float, float* %1, i64 %32
  store float %31, float* %33, align 4, !tbaa !8
  %34 = tail call float @llvm.fmuladd.f32(float %8, float 0xC01470A3E0000000, float 0x40533E63E0000000)
  %35 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0ABE4A500000000, float %34)
  %36 = tail call float @_Z3expf(float %35) #3
  %37 = add i64 %4, 40
  %38 = getelementptr inbounds float, float* %1, i64 %37
  store float %36, float* %38, align 4, !tbaa !8
  %39 = tail call float @llvm.fmuladd.f32(float %8, float 0xC013333340000000, float 0x4051776CC0000000)
  %40 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0A5DBC500000000, float %39)
  %41 = tail call float @_Z3expf(float %40) #3
  %42 = add i64 %4, 48
  %43 = getelementptr inbounds float, float* %1, i64 %42
  store float %41, float* %43, align 4, !tbaa !8
  %44 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0130A3D80000000, float 0x4053391C60000000)
  %45 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0932F6500000000, float %44)
  %46 = tail call float @_Z3expf(float %45) #3
  %47 = add i64 %4, 56
  %48 = getelementptr inbounds float, float* %1, i64 %47
  store float %46, float* %48, align 4, !tbaa !8
  %49 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0232D0E60000000, float 0x405BD400C0000000)
  %50 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0A40CCF60000000, float %49)
  %51 = tail call float @_Z3expf(float %50) #3
  %52 = add i64 %4, 64
  %53 = getelementptr inbounds float, float* %1, i64 %52
  store float %51, float* %53, align 4, !tbaa !8
  %54 = tail call float @llvm.fmuladd.f32(float %8, float 0xC023570A40000000, float 0x405CECD0A0000000)
  %55 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0A87403E0000000, float %54)
  %56 = tail call float @_Z3expf(float %55) #3
  %57 = add i64 %4, 72
  %58 = getelementptr inbounds float, float* %1, i64 %57
  store float %56, float* %58, align 4, !tbaa !8
  %59 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFE47AE140000000, float 0x4041B7A9A0000000)
  %60 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0D86C77A0000000, float %59)
  %61 = tail call float @_Z3expf(float %60) #3
  %62 = add i64 %4, 80
  %63 = getelementptr inbounds float, float* %1, i64 %62
  store float %61, float* %63, align 4, !tbaa !8
  %64 = tail call float @llvm.fmuladd.f32(float %8, float 0xC00B333340000000, float 0x404F8E4E00000000)
  %65 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0D197A0C0000000, float %64)
  %66 = tail call float @_Z3expf(float %65) #3
  %67 = add i64 %4, 88
  %68 = getelementptr inbounds float, float* %1, i64 %67
  store float %66, float* %68, align 4, !tbaa !8
  %69 = tail call float @llvm.fmuladd.f32(float %8, float 0xC01E8F5C20000000, float 0x4057EF6C60000000)
  %70 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0B7644740000000, float %69)
  %71 = tail call float @_Z3expf(float %70) #3
  %72 = add i64 %4, 96
  %73 = getelementptr inbounds float, float* %1, i64 %72
  store float %71, float* %73, align 4, !tbaa !8
  %74 = tail call float @llvm.fmuladd.f32(float %8, float 0xC00EE147A0000000, float 0x40515A7F60000000)
  %75 = tail call float @llvm.fmuladd.f32(float %10, float 0xC09A1AB7A0000000, float %74)
  %76 = tail call float @_Z3expf(float %75) #3
  %77 = add i64 %4, 104
  %78 = getelementptr inbounds float, float* %1, i64 %77
  store float %76, float* %78, align 4, !tbaa !8
  %79 = tail call float @llvm.fmuladd.f32(float %8, float 0xC027E147A0000000, float 0x4060E00CC0000000)
  %80 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0B3345380000000, float %79)
  %81 = tail call float @_Z3expf(float %80) #3
  %82 = add i64 %4, 112
  %83 = getelementptr inbounds float, float* %1, i64 %82
  store float %81, float* %83, align 4, !tbaa !8
  %84 = tail call float @llvm.fmuladd.f32(float %8, float 0xC01D3020C0000000, float 0x4056DCC440000000)
  %85 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0A27A3CA0000000, float %84)
  %86 = tail call float @_Z3expf(float %85) #3
  %87 = add i64 %4, 120
  %88 = getelementptr inbounds float, float* %1, i64 %87
  store float %86, float* %88, align 4, !tbaa !8
  %89 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0229EB860000000, float 0x405D44CF80000000)
  %90 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0E88966E0000000, float %89)
  %91 = tail call float @_Z3expf(float %90) #3
  %92 = add i64 %4, 128
  %93 = getelementptr inbounds float, float* %1, i64 %92
  store float %91, float* %93, align 4, !tbaa !8
  %94 = tail call float @llvm.fmuladd.f32(float %8, float 0xC01E7AE140000000, float 0x4058390460000000)
  %95 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0AB66D720000000, float %94)
  %96 = tail call float @_Z3expf(float %95) #3
  %97 = add i64 %4, 136
  %98 = getelementptr inbounds float, float* %1, i64 %97
  store float %96, float* %98, align 4, !tbaa !8
  %99 = tail call float @llvm.fmuladd.f32(float %8, float 0xC01C51EB80000000, float 0x4057C60620000000)
  %100 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0AA4801C0000000, float %99)
  %101 = tail call float @_Z3expf(float %100) #3
  %102 = add i64 %4, 144
  %103 = getelementptr inbounds float, float* %1, i64 %102
  store float %101, float* %103, align 4, !tbaa !8
  %104 = tail call float @llvm.fmuladd.f32(float %8, float -1.200000e+01, float 0x40614E16E0000000)
  %105 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0A7763160000000, float %104)
  %106 = tail call float @_Z3expf(float %105) #3
  %107 = add i64 %4, 152
  %108 = getelementptr inbounds float, float* %1, i64 %107
  store float %106, float* %108, align 4, !tbaa !8
  %109 = tail call float @llvm.fmuladd.f32(float %8, float 0xC01AA3D700000000, float 0x4056554640000000)
  %110 = tail call float @llvm.fmuladd.f32(float %10, float 0xC0AB850880000000, float %109)
  %111 = tail call float @_Z3expf(float %110) #3
  %112 = add i64 %4, 160
  %113 = getelementptr inbounds float, float* %1, i64 %112
  store float %111, float* %113, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z3logf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z3expf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

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
!4 = !{i32 1, i32 1, i32 0}
!5 = !{!"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float"}
!7 = !{!"const", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
