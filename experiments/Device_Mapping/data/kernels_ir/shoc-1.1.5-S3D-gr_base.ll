; ModuleID = 'shoc-1.1.5-S3D-gr_base.cl'
source_filename = "shoc-1.1.5-S3D-gr_base.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @gr_base(float* nocapture readonly, float* nocapture readonly, float* readonly, float*, float, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %8 = getelementptr inbounds float, float* %1, i64 %7
  %9 = load float, float* %8, align 4, !tbaa !8
  %10 = fmul float %9, %4
  %11 = getelementptr inbounds float, float* %0, i64 %7
  %12 = load float, float* %11, align 4, !tbaa !8
  %13 = fmul float %12, %5
  %14 = getelementptr inbounds float, float* %2, i64 %7
  %15 = load float, float* %14, align 4, !tbaa !8
  %16 = fmul float %15, 0x3FDFBF39E0000000
  %17 = getelementptr inbounds float, float* %3, i64 %7
  store float %16, float* %17, align 4, !tbaa !8
  %18 = fadd float %16, 0.000000e+00
  %19 = add i64 %7, 8
  %20 = getelementptr inbounds float, float* %2, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !8
  %22 = fmul float %21, 0x3FEFBF39E0000000
  %23 = getelementptr inbounds float, float* %3, i64 %19
  store float %22, float* %23, align 4, !tbaa !8
  %24 = fadd float %18, %22
  %25 = add i64 %7, 16
  %26 = getelementptr inbounds float, float* %2, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !8
  %28 = fmul float %27, 0x3FB0002760000000
  %29 = getelementptr inbounds float, float* %3, i64 %25
  store float %28, float* %29, align 4, !tbaa !8
  %30 = fadd float %24, %28
  %31 = add i64 %7, 24
  %32 = getelementptr inbounds float, float* %2, i64 %31
  %33 = load float, float* %32, align 4, !tbaa !8
  %34 = fmul float %33, 0x3FA0002740000000
  %35 = getelementptr inbounds float, float* %3, i64 %31
  store float %34, float* %35, align 4, !tbaa !8
  %36 = fadd float %30, %34
  %37 = add i64 %7, 32
  %38 = getelementptr inbounds float, float* %2, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !8
  %40 = fmul float %39, 0x3FAE1AC6C0000000
  %41 = getelementptr inbounds float, float* %3, i64 %37
  store float %40, float* %41, align 4, !tbaa !8
  %42 = fadd float %36, %40
  %43 = add i64 %7, 40
  %44 = getelementptr inbounds float, float* %2, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !8
  %46 = fmul float %45, 0x3FAC6B93C0000000
  %47 = getelementptr inbounds float, float* %3, i64 %43
  store float %46, float* %47, align 4, !tbaa !8
  %48 = fadd float %42, %46
  %49 = add i64 %7, 48
  %50 = getelementptr inbounds float, float* %2, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !8
  %52 = fmul float %51, 0x3F9F0620C0000000
  %53 = getelementptr inbounds float, float* %3, i64 %49
  store float %52, float* %53, align 4, !tbaa !8
  %54 = fadd float %48, %52
  %55 = add i64 %7, 56
  %56 = getelementptr inbounds float, float* %2, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !8
  %58 = fmul float %57, 0x3F9E1AC6C0000000
  %59 = getelementptr inbounds float, float* %3, i64 %55
  store float %58, float* %59, align 4, !tbaa !8
  %60 = fadd float %54, %58
  %61 = add i64 %7, 64
  %62 = getelementptr inbounds float, float* %2, i64 %61
  %63 = load float, float* %62, align 4, !tbaa !8
  %64 = fmul float %63, 0x3FB106E0E0000000
  %65 = getelementptr inbounds float, float* %3, i64 %61
  store float %64, float* %65, align 4, !tbaa !8
  %66 = fadd float %60, %64
  %67 = add i64 %7, 72
  %68 = getelementptr inbounds float, float* %2, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !8
  %70 = fmul float %69, 0x3FAFEA0720000000
  %71 = getelementptr inbounds float, float* %3, i64 %67
  store float %70, float* %71, align 4, !tbaa !8
  %72 = fadd float %66, %70
  %73 = add i64 %7, 80
  %74 = getelementptr inbounds float, float* %2, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !8
  %76 = fmul float %75, 0x3FA2476140000000
  %77 = getelementptr inbounds float, float* %3, i64 %73
  store float %76, float* %77, align 4, !tbaa !8
  %78 = fadd float %72, %76
  %79 = add i64 %7, 88
  %80 = getelementptr inbounds float, float* %2, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !8
  %82 = fmul float %81, 0x3F974478A0000000
  %83 = getelementptr inbounds float, float* %3, i64 %79
  store float %82, float* %83, align 4, !tbaa !8
  %84 = fadd float %78, %82
  %85 = add i64 %7, 96
  %86 = getelementptr inbounds float, float* %2, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !8
  %88 = fmul float %87, 0x3FA10D3640000000
  %89 = getelementptr inbounds float, float* %3, i64 %85
  store float %88, float* %89, align 4, !tbaa !8
  %90 = fadd float %84, %88
  %91 = add i64 %7, 104
  %92 = getelementptr inbounds float, float* %2, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !8
  %94 = fmul float %93, 0x3FA3A9D3C0000000
  %95 = getelementptr inbounds float, float* %3, i64 %91
  store float %94, float* %95, align 4, !tbaa !8
  %96 = fadd float %90, %94
  %97 = add i64 %7, 112
  %98 = getelementptr inbounds float, float* %2, i64 %97
  %99 = load float, float* %98, align 4, !tbaa !8
  %100 = fmul float %99, 0x3FA2401A20000000
  %101 = getelementptr inbounds float, float* %3, i64 %97
  store float %100, float* %101, align 4, !tbaa !8
  %102 = fadd float %96, %100
  %103 = add i64 %7, 120
  %104 = getelementptr inbounds float, float* %2, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !8
  %106 = fmul float %105, 0x3FA106E0E0000000
  %107 = getelementptr inbounds float, float* %3, i64 %103
  store float %106, float* %107, align 4, !tbaa !8
  %108 = fadd float %102, %106
  %109 = add i64 %7, 128
  %110 = getelementptr inbounds float, float* %2, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !8
  %112 = fmul float %111, 0x3F98F521E0000000
  %113 = getelementptr inbounds float, float* %3, i64 %109
  store float %112, float* %113, align 4, !tbaa !8
  %114 = fadd float %108, %112
  %115 = add i64 %7, 136
  %116 = getelementptr inbounds float, float* %2, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !8
  %118 = fmul float %117, 0x3F985BEF60000000
  %119 = getelementptr inbounds float, float* %3, i64 %115
  store float %118, float* %119, align 4, !tbaa !8
  %120 = fadd float %114, %118
  %121 = add i64 %7, 144
  %122 = getelementptr inbounds float, float* %2, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !8
  %124 = fmul float %123, 0x3F973E9260000000
  %125 = getelementptr inbounds float, float* %3, i64 %121
  store float %124, float* %125, align 4, !tbaa !8
  %126 = fadd float %120, %124
  %127 = add i64 %7, 152
  %128 = getelementptr inbounds float, float* %2, i64 %127
  %129 = load float, float* %128, align 4, !tbaa !8
  %130 = fmul float %129, 0x3F98EE5880000000
  %131 = getelementptr inbounds float, float* %3, i64 %127
  store float %130, float* %131, align 4, !tbaa !8
  %132 = fadd float %126, %130
  %133 = add i64 %7, 160
  %134 = getelementptr inbounds float, float* %2, i64 %133
  %135 = load float, float* %134, align 4, !tbaa !8
  %136 = fmul float %135, 0x3F98557840000000
  %137 = getelementptr inbounds float, float* %3, i64 %133
  store float %136, float* %137, align 4, !tbaa !8
  %138 = fadd float %132, %136
  %139 = add i64 %7, 168
  %140 = getelementptr inbounds float, float* %2, i64 %139
  %141 = load float, float* %140, align 4, !tbaa !8
  %142 = fmul float %141, 0x3FA246E760000000
  %143 = getelementptr inbounds float, float* %3, i64 %139
  store float %142, float* %143, align 4, !tbaa !8
  %144 = fadd float %138, %142
  %145 = fmul float %10, %144
  %146 = fmul float %145, 0x4193D2C640000000
  %147 = fdiv float 1.000000e+00, %146, !fpmath !12
  %148 = fmul float %13, %147
  br label %150

; <label>:149:                                    ; preds = %150
  ret void

; <label>:150:                                    ; preds = %150, %6
  %151 = phi i64 [ 1, %6 ], [ %159, %150 ]
  %152 = shl i64 %151, 3
  %153 = add nsw i64 %152, -8
  %154 = add i64 %7, %153
  %155 = getelementptr inbounds float, float* %3, i64 %154
  %156 = load float, float* %155, align 4, !tbaa !8
  %157 = tail call float @_Z4fmaxff(float %156, float 0x3810000000000000) #2
  %158 = fmul float %148, %157
  store float %158, float* %155, align 4, !tbaa !8
  %159 = add nuw nsw i64 %151, 1
  %160 = icmp eq i64 %159, 23
  br i1 %160, label %149, label %150
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare float @_Z4fmaxff(float, float) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float*", !"float*", !"float*", !"float*", !"float", !"float"}
!7 = !{!"const", !"const", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
