; ModuleID = 'nbody.cl'
source_filename = "nbody.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @nbody_sim(<4 x float>* nocapture readonly, <4 x float>* nocapture readonly, i32, float, float, <4 x float>* nocapture, <4 x float>* nocapture) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !7 !kernel_arg_type_qual !8 {
  %8 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %9
  %11 = load <4 x float>, <4 x float>* %10, align 16, !tbaa !9
  %12 = icmp ugt i32 %2, 8
  br i1 %12, label %13, label %199

; <label>:13:                                     ; preds = %7
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi <4 x float> [ %195, %14 ], [ zeroinitializer, %13 ]
  %16 = phi i32 [ %196, %14 ], [ 0, %13 ]
  %17 = or i32 %16, 7
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %18
  %20 = load <4 x float>, <4 x float>* %19, align 16, !tbaa !9
  %21 = fsub <4 x float> %20, %11
  %22 = shufflevector <4 x float> %21, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %23 = extractelement <4 x float> %21, i32 0
  %24 = extractelement <4 x float> %21, i32 1
  %25 = fmul float %24, %24
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %25)
  %27 = extractelement <4 x float> %21, i32 2
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %26)
  %29 = fadd float %28, %4
  %30 = tail call float @_Z4sqrtf(float %29) #3
  %31 = fdiv float 1.000000e+00, %30, !fpmath !12
  %32 = fmul float %31, %31
  %33 = fmul float %31, %32
  %34 = extractelement <4 x float> %20, i64 3
  %35 = fmul float %34, %33
  %36 = insertelement <3 x float> undef, float %35, i32 0
  %37 = shufflevector <3 x float> %36, <3 x float> undef, <3 x i32> zeroinitializer
  %38 = shufflevector <4 x float> %15, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %39 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %37, <3 x float> %22, <3 x float> %38)
  %40 = or i32 %16, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %41
  %43 = load <4 x float>, <4 x float>* %42, align 16, !tbaa !9
  %44 = fsub <4 x float> %43, %11
  %45 = shufflevector <4 x float> %44, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %46 = extractelement <4 x float> %44, i32 0
  %47 = extractelement <4 x float> %44, i32 1
  %48 = fmul float %47, %47
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %48)
  %50 = extractelement <4 x float> %44, i32 2
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %49)
  %52 = fadd float %51, %4
  %53 = tail call float @_Z4sqrtf(float %52) #3
  %54 = fdiv float 1.000000e+00, %53, !fpmath !12
  %55 = fmul float %54, %54
  %56 = fmul float %54, %55
  %57 = extractelement <4 x float> %43, i64 3
  %58 = fmul float %57, %56
  %59 = insertelement <3 x float> undef, float %58, i32 0
  %60 = shufflevector <3 x float> %59, <3 x float> undef, <3 x i32> zeroinitializer
  %61 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %60, <3 x float> %45, <3 x float> %39)
  %62 = add nsw i32 %40, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %63
  %65 = load <4 x float>, <4 x float>* %64, align 16, !tbaa !9
  %66 = fsub <4 x float> %65, %11
  %67 = shufflevector <4 x float> %66, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %68 = extractelement <4 x float> %66, i32 0
  %69 = extractelement <4 x float> %66, i32 1
  %70 = fmul float %69, %69
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %70)
  %72 = extractelement <4 x float> %66, i32 2
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %71)
  %74 = fadd float %73, %4
  %75 = tail call float @_Z4sqrtf(float %74) #3
  %76 = fdiv float 1.000000e+00, %75, !fpmath !12
  %77 = fmul float %76, %76
  %78 = fmul float %76, %77
  %79 = extractelement <4 x float> %65, i64 3
  %80 = fmul float %79, %78
  %81 = insertelement <3 x float> undef, float %80, i32 0
  %82 = shufflevector <3 x float> %81, <3 x float> undef, <3 x i32> zeroinitializer
  %83 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %82, <3 x float> %67, <3 x float> %61)
  %84 = or i32 %16, 3
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %85
  %87 = load <4 x float>, <4 x float>* %86, align 16, !tbaa !9
  %88 = fsub <4 x float> %87, %11
  %89 = shufflevector <4 x float> %88, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %90 = extractelement <4 x float> %88, i32 0
  %91 = extractelement <4 x float> %88, i32 1
  %92 = fmul float %91, %91
  %93 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %92)
  %94 = extractelement <4 x float> %88, i32 2
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %94, float %93)
  %96 = fadd float %95, %4
  %97 = tail call float @_Z4sqrtf(float %96) #3
  %98 = fdiv float 1.000000e+00, %97, !fpmath !12
  %99 = fmul float %98, %98
  %100 = fmul float %98, %99
  %101 = extractelement <4 x float> %87, i64 3
  %102 = fmul float %101, %100
  %103 = insertelement <3 x float> undef, float %102, i32 0
  %104 = shufflevector <3 x float> %103, <3 x float> undef, <3 x i32> zeroinitializer
  %105 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %104, <3 x float> %89, <3 x float> %83)
  %106 = add nsw i32 %84, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %107
  %109 = load <4 x float>, <4 x float>* %108, align 16, !tbaa !9
  %110 = fsub <4 x float> %109, %11
  %111 = shufflevector <4 x float> %110, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %112 = extractelement <4 x float> %110, i32 0
  %113 = extractelement <4 x float> %110, i32 1
  %114 = fmul float %113, %113
  %115 = tail call float @llvm.fmuladd.f32(float %112, float %112, float %114)
  %116 = extractelement <4 x float> %110, i32 2
  %117 = tail call float @llvm.fmuladd.f32(float %116, float %116, float %115)
  %118 = fadd float %117, %4
  %119 = tail call float @_Z4sqrtf(float %118) #3
  %120 = fdiv float 1.000000e+00, %119, !fpmath !12
  %121 = fmul float %120, %120
  %122 = fmul float %120, %121
  %123 = extractelement <4 x float> %109, i64 3
  %124 = fmul float %123, %122
  %125 = insertelement <3 x float> undef, float %124, i32 0
  %126 = shufflevector <3 x float> %125, <3 x float> undef, <3 x i32> zeroinitializer
  %127 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %126, <3 x float> %111, <3 x float> %105)
  %128 = add nsw i32 %84, 2
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %129
  %131 = load <4 x float>, <4 x float>* %130, align 16, !tbaa !9
  %132 = fsub <4 x float> %131, %11
  %133 = shufflevector <4 x float> %132, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %134 = extractelement <4 x float> %132, i32 0
  %135 = extractelement <4 x float> %132, i32 1
  %136 = fmul float %135, %135
  %137 = tail call float @llvm.fmuladd.f32(float %134, float %134, float %136)
  %138 = extractelement <4 x float> %132, i32 2
  %139 = tail call float @llvm.fmuladd.f32(float %138, float %138, float %137)
  %140 = fadd float %139, %4
  %141 = tail call float @_Z4sqrtf(float %140) #3
  %142 = fdiv float 1.000000e+00, %141, !fpmath !12
  %143 = fmul float %142, %142
  %144 = fmul float %142, %143
  %145 = extractelement <4 x float> %131, i64 3
  %146 = fmul float %145, %144
  %147 = insertelement <3 x float> undef, float %146, i32 0
  %148 = shufflevector <3 x float> %147, <3 x float> undef, <3 x i32> zeroinitializer
  %149 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %148, <3 x float> %133, <3 x float> %127)
  %150 = add nsw i32 %84, 3
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %151
  %153 = load <4 x float>, <4 x float>* %152, align 16, !tbaa !9
  %154 = fsub <4 x float> %153, %11
  %155 = shufflevector <4 x float> %154, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %156 = extractelement <4 x float> %154, i32 0
  %157 = extractelement <4 x float> %154, i32 1
  %158 = fmul float %157, %157
  %159 = tail call float @llvm.fmuladd.f32(float %156, float %156, float %158)
  %160 = extractelement <4 x float> %154, i32 2
  %161 = tail call float @llvm.fmuladd.f32(float %160, float %160, float %159)
  %162 = fadd float %161, %4
  %163 = tail call float @_Z4sqrtf(float %162) #3
  %164 = fdiv float 1.000000e+00, %163, !fpmath !12
  %165 = fmul float %164, %164
  %166 = fmul float %164, %165
  %167 = extractelement <4 x float> %153, i64 3
  %168 = fmul float %167, %166
  %169 = insertelement <3 x float> undef, float %168, i32 0
  %170 = shufflevector <3 x float> %169, <3 x float> undef, <3 x i32> zeroinitializer
  %171 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %170, <3 x float> %155, <3 x float> %149)
  %172 = or i32 %16, 7
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %173
  %175 = load <4 x float>, <4 x float>* %174, align 16, !tbaa !9
  %176 = fsub <4 x float> %175, %11
  %177 = shufflevector <4 x float> %176, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %178 = extractelement <4 x float> %176, i32 0
  %179 = extractelement <4 x float> %176, i32 1
  %180 = fmul float %179, %179
  %181 = tail call float @llvm.fmuladd.f32(float %178, float %178, float %180)
  %182 = extractelement <4 x float> %176, i32 2
  %183 = tail call float @llvm.fmuladd.f32(float %182, float %182, float %181)
  %184 = fadd float %183, %4
  %185 = tail call float @_Z4sqrtf(float %184) #3
  %186 = fdiv float 1.000000e+00, %185, !fpmath !12
  %187 = fmul float %186, %186
  %188 = fmul float %186, %187
  %189 = extractelement <4 x float> %175, i64 3
  %190 = fmul float %189, %188
  %191 = insertelement <3 x float> undef, float %190, i32 0
  %192 = shufflevector <3 x float> %191, <3 x float> undef, <3 x i32> zeroinitializer
  %193 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %192, <3 x float> %177, <3 x float> %171)
  %194 = shufflevector <3 x float> %193, <3 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 undef>
  %195 = shufflevector <4 x float> %15, <4 x float> %194, <4 x i32> <i32 4, i32 5, i32 6, i32 3>
  %196 = add i32 %16, 8
  %197 = add i32 %17, 9
  %198 = icmp ult i32 %197, %2
  br i1 %198, label %14, label %199

; <label>:199:                                    ; preds = %14, %7
  %200 = phi i32 [ 0, %7 ], [ %196, %14 ]
  %201 = phi <4 x float> [ zeroinitializer, %7 ], [ %195, %14 ]
  %202 = icmp ult i32 %200, %2
  br i1 %202, label %203, label %234

; <label>:203:                                    ; preds = %199
  %204 = zext i32 %200 to i64
  %205 = zext i32 %2 to i64
  br label %206

; <label>:206:                                    ; preds = %206, %203
  %207 = phi i64 [ %204, %203 ], [ %232, %206 ]
  %208 = phi <4 x float> [ %201, %203 ], [ %231, %206 ]
  %209 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %207
  %210 = load <4 x float>, <4 x float>* %209, align 16, !tbaa !9
  %211 = fsub <4 x float> %210, %11
  %212 = shufflevector <4 x float> %211, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %213 = extractelement <4 x float> %211, i32 0
  %214 = extractelement <4 x float> %211, i32 1
  %215 = fmul float %214, %214
  %216 = tail call float @llvm.fmuladd.f32(float %213, float %213, float %215)
  %217 = extractelement <4 x float> %211, i32 2
  %218 = tail call float @llvm.fmuladd.f32(float %217, float %217, float %216)
  %219 = fadd float %218, %4
  %220 = tail call float @_Z4sqrtf(float %219) #3
  %221 = fdiv float 1.000000e+00, %220, !fpmath !12
  %222 = fmul float %221, %221
  %223 = fmul float %221, %222
  %224 = extractelement <4 x float> %210, i64 3
  %225 = fmul float %224, %223
  %226 = insertelement <3 x float> undef, float %225, i32 0
  %227 = shufflevector <3 x float> %226, <3 x float> undef, <3 x i32> zeroinitializer
  %228 = shufflevector <4 x float> %208, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %229 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %227, <3 x float> %212, <3 x float> %228)
  %230 = shufflevector <3 x float> %229, <3 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 undef>
  %231 = shufflevector <4 x float> %208, <4 x float> %230, <4 x i32> <i32 4, i32 5, i32 6, i32 3>
  %232 = add nuw nsw i64 %207, 1
  %233 = icmp eq i64 %232, %205
  br i1 %233, label %234, label %206

; <label>:234:                                    ; preds = %206, %199
  %235 = phi <4 x float> [ %201, %199 ], [ %231, %206 ]
  %236 = getelementptr inbounds <4 x float>, <4 x float>* %1, i64 %9
  %237 = load <4 x float>, <4 x float>* %236, align 16, !tbaa !9
  %238 = shufflevector <4 x float> %11, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %239 = shufflevector <4 x float> %237, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %240 = insertelement <3 x float> undef, float %3, i32 0
  %241 = shufflevector <3 x float> %240, <3 x float> undef, <3 x i32> zeroinitializer
  %242 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %239, <3 x float> %241, <3 x float> %238)
  %243 = shufflevector <4 x float> %235, <4 x float> undef, <3 x i32> <i32 0, i32 1, i32 2>
  %244 = fmul <3 x float> %243, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %245 = fmul <3 x float> %241, %244
  %246 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %245, <3 x float> %241, <3 x float> %242)
  %247 = shufflevector <3 x float> %246, <3 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 undef>
  %248 = shufflevector <4 x float> %247, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %249 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %243, <3 x float> %241, <3 x float> %239)
  %250 = shufflevector <3 x float> %249, <3 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 undef>
  %251 = shufflevector <4 x float> %250, <4 x float> %237, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %252 = getelementptr inbounds <4 x float>, <4 x float>* %5, i64 %9
  store <4 x float> %248, <4 x float>* %252, align 16, !tbaa !9
  %253 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 %9
  store <4 x float> %251, <4 x float>* %253, align 16, !tbaa !9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind readnone
declare float @_Z4sqrtf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"float4*", !"float4*", !"uint", !"float", !"float", !"float4*", !"float4*"}
!7 = !{!"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"uint", !"float", !"float", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*"}
!8 = !{!"", !"", !"", !"", !"", !"", !""}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
