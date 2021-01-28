; ModuleID = 'shoc-1.1.5-S3D-ratt_kernel.cl'
source_filename = "shoc-1.1.5-S3D-ratt_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @ratt_kernel(float* nocapture readonly, float*, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %5 = getelementptr inbounds float, float* %0, i64 %4
  %6 = load float, float* %5, align 4, !tbaa !8
  %7 = fmul float %6, %2
  %8 = tail call float @_Z3logf(float %7) #3
  %9 = fdiv float 1.000000e+00, %7, !fpmath !12
  %10 = fmul float %9, %9
  %11 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0BC54DCA0000000, float 0x40400661E0000000)
  %12 = tail call float @_Z3expf(float %11) #3
  %13 = getelementptr inbounds float, float* %1, i64 %4
  store float %12, float* %13, align 4, !tbaa !8
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0x40055C2900000000, float 0x4025A3BA00000000)
  %15 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A8BA7740000000, float %14)
  %16 = tail call float @_Z3expf(float %15) #3
  %17 = add i64 %4, 8
  %18 = getelementptr inbounds float, float* %1, i64 %17
  store float %16, float* %18, align 4, !tbaa !8
  %19 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF828F5C0000000, float 0x403330D780000000)
  %20 = tail call float @llvm.fmuladd.f32(float %9, float 0xC09AF82200000000, float %19)
  %21 = tail call float @_Z3expf(float %20) #3
  %22 = add i64 %4, 16
  %23 = getelementptr inbounds float, float* %1, i64 %22
  store float %21, float* %23, align 4, !tbaa !8
  %24 = tail call float @llvm.fmuladd.f32(float %8, float 0x4003333340000000, float 0x4024F73F80000000)
  %25 = tail call float @llvm.fmuladd.f32(float %9, float 0x4090972600000000, float %24)
  %26 = tail call float @_Z3expf(float %25) #3
  %27 = add i64 %4, 24
  %28 = getelementptr inbounds float, float* %1, i64 %27
  store float %26, float* %28, align 4, !tbaa !8
  %29 = fmul float %9, 0x43ABC16D60000000
  %30 = add i64 %4, 32
  %31 = getelementptr inbounds float, float* %1, i64 %30
  store float %29, float* %31, align 4, !tbaa !8
  %32 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFE3333340000000, float 0x404384F060000000)
  %33 = tail call float @_Z3expf(float %32) #3
  %34 = add i64 %4, 40
  %35 = getelementptr inbounds float, float* %1, i64 %34
  store float %33, float* %35, align 4, !tbaa !8
  %36 = tail call float @llvm.fmuladd.f32(float %8, float -1.250000e+00, float 0x4046C53B60000000)
  %37 = tail call float @_Z3expf(float %36) #3
  %38 = add i64 %4, 48
  %39 = getelementptr inbounds float, float* %1, i64 %38
  store float %37, float* %39, align 4, !tbaa !8
  %40 = fmul float %10, 0x443DD0C880000000
  %41 = add i64 %4, 56
  %42 = getelementptr inbounds float, float* %1, i64 %41
  store float %40, float* %42, align 4, !tbaa !8
  %43 = fmul float %10, 0x4492A27D60000000
  %44 = add i64 %4, 64
  %45 = getelementptr inbounds float, float* %1, i64 %44
  store float %43, float* %45, align 4, !tbaa !8
  %46 = fmul float %9, 0x439BC16D60000000
  %47 = add i64 %4, 72
  %48 = getelementptr inbounds float, float* %1, i64 %47
  store float %46, float* %48, align 4, !tbaa !8
  %49 = fmul float %9, 0x437AA535E0000000
  %50 = add i64 %4, 80
  %51 = getelementptr inbounds float, float* %1, i64 %50
  store float %49, float* %51, align 4, !tbaa !8
  %52 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFEB851EC0000000, float 0x40453CF280000000)
  %53 = tail call float @_Z3expf(float %52) #3
  %54 = add i64 %4, 88
  %55 = getelementptr inbounds float, float* %1, i64 %54
  store float %53, float* %55, align 4, !tbaa !8
  %56 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFFB851EC0000000, float 0x4047933D80000000)
  %57 = tail call float @_Z3expf(float %56) #3
  %58 = add i64 %4, 96
  %59 = getelementptr inbounds float, float* %1, i64 %58
  store float %57, float* %59, align 4, !tbaa !8
  %60 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFE851EB80000000, float 0x4046202420000000)
  %61 = tail call float @_Z3expf(float %60) #3
  %62 = add i64 %4, 104
  %63 = getelementptr inbounds float, float* %1, i64 %62
  store float %61, float* %63, align 4, !tbaa !8
  %64 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFF3D70A40000000, float 0x40465A3140000000)
  %65 = tail call float @_Z3expf(float %64) #3
  %66 = add i64 %4, 112
  %67 = getelementptr inbounds float, float* %1, i64 %66
  store float %65, float* %67, align 4, !tbaa !8
  %68 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFD7AE1480000000, float 0x403FEF61C0000000)
  %69 = tail call float @_Z3expf(float %68) #3
  %70 = add i64 %4, 120
  %71 = getelementptr inbounds float, float* %1, i64 %70
  store float %69, float* %71, align 4, !tbaa !8
  %72 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0751A88C0000000, float 0x403D028160000000)
  %73 = tail call float @_Z3expf(float %72) #3
  %74 = add i64 %4, 128
  %75 = getelementptr inbounds float, float* %1, i64 %74
  store float %73, float* %75, align 4, !tbaa !8
  %76 = tail call float @llvm.fmuladd.f32(float %9, float 0xC079CA33E0000000, float 0x403E70BFA0000000)
  %77 = tail call float @_Z3expf(float %76) #3
  %78 = add i64 %4, 136
  %79 = getelementptr inbounds float, float* %1, i64 %78
  store float %77, float* %79, align 4, !tbaa !8
  %80 = tail call float @llvm.fmuladd.f32(float %9, float 0xC062DEE140000000, float 0x403FE410C0000000)
  %81 = tail call float @_Z3expf(float %80) #3
  %82 = add i64 %4, 144
  %83 = getelementptr inbounds float, float* %1, i64 %82
  store float %81, float* %83, align 4, !tbaa !8
  %84 = add i64 %4, 152
  %85 = getelementptr inbounds float, float* %1, i64 %84
  store float 0x42B2309CE0000000, float* %85, align 4, !tbaa !8
  %86 = tail call float @llvm.fmuladd.f32(float %9, float 0x406F737780000000, float 0x403F77E3E0000000)
  %87 = tail call float @_Z3expf(float %86) #3
  %88 = add i64 %4, 160
  %89 = getelementptr inbounds float, float* %1, i64 %88
  store float %87, float* %89, align 4, !tbaa !8
  %90 = tail call float @llvm.fmuladd.f32(float %9, float 0x4089A1F200000000, float 0x4039973EC0000000)
  %91 = tail call float @_Z3expf(float %90) #3
  %92 = add i64 %4, 168
  %93 = getelementptr inbounds float, float* %1, i64 %92
  store float %91, float* %93, align 4, !tbaa !8
  %94 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B79699A0000000, float 0x4040D5EC60000000)
  %95 = tail call float @_Z3expf(float %94) #3
  %96 = add i64 %4, 176
  %97 = getelementptr inbounds float, float* %1, i64 %96
  store float %95, float* %97, align 4, !tbaa !8
  %98 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x40304F0800000000)
  %99 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A4717400000000, float %98)
  %100 = tail call float @_Z3expf(float %99) #3
  %101 = add i64 %4, 184
  %102 = getelementptr inbounds float, float* %1, i64 %101
  store float %100, float* %102, align 4, !tbaa !8
  %103 = tail call float @llvm.fmuladd.f32(float %9, float 0xC09C4E51E0000000, float 0x403DEF00E0000000)
  %104 = tail call float @_Z3expf(float %103) #3
  %105 = add i64 %4, 192
  %106 = getelementptr inbounds float, float* %1, i64 %105
  store float %104, float* %106, align 4, !tbaa !8
  %107 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x40301494C0000000)
  %108 = tail call float @llvm.fmuladd.f32(float %9, float 0xC09F737780000000, float %107)
  %109 = tail call float @_Z3expf(float %108) #3
  %110 = add i64 %4, 200
  %111 = getelementptr inbounds float, float* %1, i64 %110
  store float %109, float* %111, align 4, !tbaa !8
  %112 = tail call float @llvm.fmuladd.f32(float %9, float 0xC06420F040000000, float 0x403C30CDA0000000)
  %113 = tail call float @_Z3expf(float %112) #3
  %114 = add i64 %4, 208
  %115 = getelementptr inbounds float, float* %1, i64 %114
  store float %113, float* %115, align 4, !tbaa !8
  %116 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B2CAC060000000, float 0x4040FF3D00000000)
  %117 = tail call float @_Z3expf(float %116) #3
  %118 = add i64 %4, 216
  %119 = getelementptr inbounds float, float* %1, i64 %118
  store float %117, float* %119, align 4, !tbaa !8
  %120 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0979699A0000000, float 0x40410400E0000000)
  %121 = tail call float @_Z3expf(float %120) #3
  %122 = add i64 %4, 224
  %123 = getelementptr inbounds float, float* %1, i64 %122
  store float %121, float* %123, align 4, !tbaa !8
  %124 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF3A5E360000000, float 0x4031ADA7E0000000)
  %125 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0419CD240000000, float %124)
  %126 = tail call float @_Z3expf(float %125) #3
  %127 = add i64 %4, 232
  %128 = getelementptr inbounds float, float* %1, i64 %127
  store float %126, float* %128, align 4, !tbaa !8
  %129 = tail call float @llvm.fmuladd.f32(float %8, float 1.500000e+00, float 0x403193A340000000)
  %130 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E38F0180000000, float %129)
  %131 = tail call float @_Z3expf(float %130) #3
  %132 = add i64 %4, 240
  %133 = getelementptr inbounds float, float* %1, i64 %132
  store float %131, float* %133, align 4, !tbaa !8
  %134 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D77D7060000000, float 0x403C8C1CA0000000)
  %135 = tail call float @_Z3expf(float %134) #3
  %136 = add i64 %4, 248
  %137 = getelementptr inbounds float, float* %1, i64 %136
  store float %135, float* %137, align 4, !tbaa !8
  %138 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C731F4E0000000, float 0x40405221C0000000)
  %139 = tail call float @_Z3expf(float %138) #3
  %140 = add i64 %4, 256
  %141 = getelementptr inbounds float, float* %1, i64 %140
  store float %139, float* %141, align 4, !tbaa !8
  %142 = add i64 %4, 264
  %143 = getelementptr inbounds float, float* %1, i64 %142
  store float 0x42C9EBAC60000000, float* %143, align 4, !tbaa !8
  %144 = add i64 %4, 272
  %145 = getelementptr inbounds float, float* %1, i64 %144
  store float 0x42BB48EB60000000, float* %145, align 4, !tbaa !8
  %146 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFCA3D700000000, float 0x403285B7C0000000)
  %147 = tail call float @llvm.fmuladd.f32(float %9, float 0xC08A42F980000000, float %146)
  %148 = tail call float @_Z3expf(float %147) #3
  %149 = add i64 %4, 280
  %150 = getelementptr inbounds float, float* %1, i64 %149
  store float %148, float* %150, align 4, !tbaa !8
  %151 = tail call float @llvm.fmuladd.f32(float %9, float 0x4077BEDB80000000, float 0x403D5F8CA0000000)
  %152 = tail call float @_Z3expf(float %151) #3
  %153 = add i64 %4, 288
  %154 = getelementptr inbounds float, float* %1, i64 %153
  store float %152, float* %154, align 4, !tbaa !8
  %155 = add i64 %4, 296
  %156 = getelementptr inbounds float, float* %1, i64 %155
  store float 0x42BE036940000000, float* %156, align 4, !tbaa !8
  %157 = add i64 %4, 304
  %158 = getelementptr inbounds float, float* %1, i64 %157
  store float 0x42C6BCC420000000, float* %158, align 4, !tbaa !8
  %159 = tail call float @llvm.fmuladd.f32(float %9, float 0xC075B38320000000, float 0x403CDAD400000000)
  %160 = tail call float @_Z3expf(float %159) #3
  %161 = add i64 %4, 312
  %162 = getelementptr inbounds float, float* %1, i64 %161
  store float %160, float* %162, align 4, !tbaa !8
  %163 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDEB851E0000000, float 0x403BB79A60000000)
  %164 = tail call float @llvm.fmuladd.f32(float %9, float 0x40605AC340000000, float %163)
  %165 = tail call float @_Z3expf(float %164) #3
  %166 = add i64 %4, 320
  %167 = getelementptr inbounds float, float* %1, i64 %166
  store float %165, float* %167, align 4, !tbaa !8
  %168 = add i64 %4, 328
  %169 = getelementptr inbounds float, float* %1, i64 %168
  store float 0x42D0B07140000000, float* %169, align 4, !tbaa !8
  %170 = add i64 %4, 336
  %171 = getelementptr inbounds float, float* %1, i64 %170
  store float 0x42BB48EB60000000, float* %171, align 4, !tbaa !8
  %172 = add i64 %4, 344
  %173 = getelementptr inbounds float, float* %1, i64 %172
  store float 0x42BB48EB60000000, float* %173, align 4, !tbaa !8
  %174 = add i64 %4, 352
  %175 = getelementptr inbounds float, float* %1, i64 %174
  store float 0x42C6BCC420000000, float* %175, align 4, !tbaa !8
  %176 = tail call float @llvm.fmuladd.f32(float %8, float -1.000000e+00, float 0x4043E28BA0000000)
  %177 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C0B55780000000, float %176)
  %178 = tail call float @_Z3expf(float %177) #3
  %179 = add i64 %4, 360
  %180 = getelementptr inbounds float, float* %1, i64 %179
  store float %178, float* %180, align 4, !tbaa !8
  %181 = tail call float @llvm.fmuladd.f32(float %9, float 0xC069292C60000000, float 0x403DA8BF60000000)
  %182 = tail call float @_Z3expf(float %181) #3
  %183 = add i64 %4, 368
  %184 = getelementptr inbounds float, float* %1, i64 %183
  store float %182, float* %184, align 4, !tbaa !8
  %185 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFE99999A0000000, float 0x4042E0FAC0000000)
  %186 = tail call float @_Z3expf(float %185) #3
  %187 = add i64 %4, 376
  %188 = getelementptr inbounds float, float* %1, i64 %187
  store float %186, float* %188, align 4, !tbaa !8
  %189 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x402A3EA660000000)
  %190 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AC6C8360000000, float %189)
  %191 = tail call float @_Z3expf(float %190) #3
  %192 = add i64 %4, 384
  %193 = getelementptr inbounds float, float* %1, i64 %192
  store float %191, float* %193, align 4, !tbaa !8
  %194 = add i64 %4, 392
  %195 = getelementptr inbounds float, float* %1, i64 %194
  store float 0x42D2309CE0000000, float* %195, align 4, !tbaa !8
  %196 = fmul float %9, 0xC0879699A0000000
  %197 = tail call float @_Z3expf(float %196) #3
  %198 = fmul float %197, 0x42A3356220000000
  %199 = add i64 %4, 400
  %200 = getelementptr inbounds float, float* %1, i64 %199
  store float %198, float* %200, align 4, !tbaa !8
  %201 = fmul float %197, 0x4283356220000000
  %202 = add i64 %4, 408
  %203 = getelementptr inbounds float, float* %1, i64 %202
  store float %201, float* %203, align 4, !tbaa !8
  %204 = add i64 %4, 416
  %205 = getelementptr inbounds float, float* %1, i64 %204
  store float 0x42B2309CE0000000, float* %205, align 4, !tbaa !8
  %206 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x40303D8520000000)
  %207 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0979699A0000000, float %206)
  %208 = tail call float @_Z3expf(float %207) #3
  %209 = add i64 %4, 424
  %210 = getelementptr inbounds float, float* %1, i64 %209
  store float %208, float* %210, align 4, !tbaa !8
  %211 = add i64 %4, 432
  %212 = getelementptr inbounds float, float* %1, i64 %211
  store float 0x42B2309CE0000000, float* %212, align 4, !tbaa !8
  %213 = tail call float @llvm.fmuladd.f32(float %8, float 5.000000e-01, float 0x403B6B98C0000000)
  %214 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A1BB03A0000000, float %213)
  %215 = tail call float @_Z3expf(float %214) #3
  %216 = add i64 %4, 440
  %217 = getelementptr inbounds float, float* %1, i64 %216
  store float %215, float* %217, align 4, !tbaa !8
  %218 = add i64 %4, 448
  %219 = getelementptr inbounds float, float* %1, i64 %218
  store float 0x42C2309CE0000000, float* %219, align 4, !tbaa !8
  %220 = add i64 %4, 456
  %221 = getelementptr inbounds float, float* %1, i64 %220
  store float 0x42BD1A94A0000000, float* %221, align 4, !tbaa !8
  %222 = tail call float @llvm.fmuladd.f32(float %9, float 0xC072DEE140000000, float 0x403E56CD60000000)
  %223 = tail call float @_Z3expf(float %222) #3
  %224 = add i64 %4, 464
  %225 = getelementptr inbounds float, float* %1, i64 %224
  store float %223, float* %225, align 4, !tbaa !8
  %226 = add i64 %4, 472
  %227 = getelementptr inbounds float, float* %1, i64 %226
  store float 0x42BB48EB60000000, float* %227, align 4, !tbaa !8
  %228 = add i64 %4, 480
  %229 = getelementptr inbounds float, float* %1, i64 %228
  store float 0x42AB48EB60000000, float* %229, align 4, !tbaa !8
  %230 = add i64 %4, 488
  %231 = getelementptr inbounds float, float* %1, i64 %230
  store float 0x42AB48EB60000000, float* %231, align 4, !tbaa !8
  %232 = add i64 %4, 496
  %233 = getelementptr inbounds float, float* %1, i64 %232
  store float 0x42BB48EB60000000, float* %233, align 4, !tbaa !8
  %234 = add i64 %4, 504
  %235 = getelementptr inbounds float, float* %1, i64 %234
  store float 0x42CFD512A0000000, float* %235, align 4, !tbaa !8
  %236 = add i64 %4, 512
  %237 = getelementptr inbounds float, float* %1, i64 %236
  store float 0x42B9774200000000, float* %237, align 4, !tbaa !8
  %238 = add i64 %4, 520
  %239 = getelementptr inbounds float, float* %1, i64 %238
  store float 0x42A5D3EF80000000, float* %239, align 4, !tbaa !8
  %240 = add i64 %4, 528
  %241 = getelementptr inbounds float, float* %1, i64 %240
  store float 0x42BB48EB60000000, float* %241, align 4, !tbaa !8
  %242 = add i64 %4, 536
  %243 = getelementptr inbounds float, float* %1, i64 %242
  store float 0x42A05EF3A0000000, float* %243, align 4, !tbaa !8
  %244 = add i64 %4, 544
  %245 = getelementptr inbounds float, float* %1, i64 %244
  store float 0x4299774200000000, float* %245, align 4, !tbaa !8
  %246 = add i64 %4, 552
  %247 = getelementptr inbounds float, float* %1, i64 %246
  store float 0x42A9774200000000, float* %247, align 4, !tbaa !8
  %248 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDD0E5600000000, float 0x403B03CC40000000)
  %249 = tail call float @llvm.fmuladd.f32(float %9, float 0xC094717400000000, float %248)
  %250 = tail call float @_Z3expf(float %249) #3
  %251 = add i64 %4, 560
  %252 = getelementptr inbounds float, float* %1, i64 %251
  store float %250, float* %252, align 4, !tbaa !8
  %253 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF0CCCCC0000000, float 0x4037DBD7C0000000)
  %254 = tail call float @llvm.fmuladd.f32(float %9, float 0xC099C02360000000, float %253)
  %255 = tail call float @_Z3expf(float %254) #3
  %256 = add i64 %4, 568
  %257 = getelementptr inbounds float, float* %1, i64 %256
  store float %255, float* %257, align 4, !tbaa !8
  %258 = tail call float @llvm.fmuladd.f32(float %9, float 0xC09BD58C40000000, float 0x403F4B69C0000000)
  %259 = tail call float @_Z3expf(float %258) #3
  %260 = add i64 %4, 576
  %261 = getelementptr inbounds float, float* %1, i64 %260
  store float %259, float* %261, align 4, !tbaa !8
  %262 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF2E147A0000000, float 0x4035F4B100000000)
  %263 = tail call float @llvm.fmuladd.f32(float %9, float 0x406C1E02E0000000, float %262)
  %264 = tail call float @_Z3expf(float %263) #3
  %265 = add i64 %4, 584
  %266 = getelementptr inbounds float, float* %1, i64 %265
  store float %264, float* %266, align 4, !tbaa !8
  %267 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D3A82AA0000000, float 0x40401E3B80000000)
  %268 = tail call float @_Z3expf(float %267) #3
  %269 = add i64 %4, 592
  %270 = getelementptr inbounds float, float* %1, i64 %269
  store float %268, float* %270, align 4, !tbaa !8
  %271 = fmul float %9, 0xC0AF737780000000
  %272 = tail call float @_Z3expf(float %271) #3
  %273 = fmul float %272, 0x426D1A94A0000000
  %274 = add i64 %4, 600
  %275 = getelementptr inbounds float, float* %1, i64 %274
  store float %273, float* %275, align 4, !tbaa !8
  %276 = fmul float %272, 0x42C6BCC420000000
  %277 = add i64 %4, 1008
  %278 = getelementptr inbounds float, float* %1, i64 %277
  store float %276, float* %278, align 4, !tbaa !8
  %279 = fmul float %272, 0x42A2309CE0000000
  %280 = add i64 %4, 1024
  %281 = getelementptr inbounds float, float* %1, i64 %280
  store float %279, float* %281, align 4, !tbaa !8
  %282 = tail call float @llvm.fmuladd.f32(float %9, float 0x4070328160000000, float 0x4040172080000000)
  %283 = tail call float @_Z3expf(float %282) #3
  %284 = add i64 %4, 608
  %285 = getelementptr inbounds float, float* %1, i64 %284
  store float %283, float* %285, align 4, !tbaa !8
  %286 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFE428F5C0000000, float 0x40428A49E0000000)
  %287 = tail call float @llvm.fmuladd.f32(float %9, float 0xC068176C60000000, float %286)
  %288 = tail call float @_Z3expf(float %287) #3
  %289 = add i64 %4, 616
  %290 = getelementptr inbounds float, float* %1, i64 %289
  store float %288, float* %290, align 4, !tbaa !8
  %291 = add i64 %4, 624
  %292 = getelementptr inbounds float, float* %1, i64 %291
  store float 0x42D32AE7E0000000, float* %292, align 4, !tbaa !8
  %293 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF99999A0000000, float 0x4031D742C0000000)
  %294 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A54EDE60000000, float %293)
  %295 = tail call float @_Z3expf(float %294) #3
  %296 = add i64 %4, 632
  %297 = getelementptr inbounds float, float* %1, i64 %296
  store float %295, float* %297, align 4, !tbaa !8
  %298 = add i64 %4, 640
  %299 = getelementptr inbounds float, float* %1, i64 %298
  store float 0x42B6BF1820000000, float* %299, align 4, !tbaa !8
  %300 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0CC4E51E0000000, float 0x403F0F3C00000000)
  %301 = tail call float @_Z3expf(float %300) #3
  %302 = add i64 %4, 648
  %303 = getelementptr inbounds float, float* %1, i64 %302
  store float %301, float* %303, align 4, !tbaa !8
  %304 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B192C1C0000000, float 0x40384E8980000000)
  %305 = tail call float @_Z3expf(float %304) #3
  %306 = add i64 %4, 656
  %307 = getelementptr inbounds float, float* %1, i64 %306
  store float %305, float* %307, align 4, !tbaa !8
  %308 = add i64 %4, 664
  %309 = getelementptr inbounds float, float* %1, i64 %308
  store float 0x426D1A94A0000000, float* %309, align 4, !tbaa !8
  %310 = add i64 %4, 672
  %311 = getelementptr inbounds float, float* %1, i64 %310
  store float 0x42A85FDC80000000, float* %311, align 4, !tbaa !8
  %312 = tail call float @llvm.fmuladd.f32(float %8, float 0x4003C28F60000000, float 0x4024367DC0000000)
  %313 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A45D5320000000, float %312)
  %314 = tail call float @_Z3expf(float %313) #3
  %315 = add i64 %4, 680
  %316 = getelementptr inbounds float, float* %1, i64 %315
  store float %314, float* %316, align 4, !tbaa !8
  %317 = add i64 %4, 688
  %318 = getelementptr inbounds float, float* %1, i64 %317
  store float 0x42BB48EB60000000, float* %318, align 4, !tbaa !8
  %319 = add i64 %4, 696
  %320 = getelementptr inbounds float, float* %1, i64 %319
  store float 0x429ED99D80000000, float* %320, align 4, !tbaa !8
  %321 = add i64 %4, 704
  %322 = getelementptr inbounds float, float* %1, i64 %321
  store float 0x42B05EF3A0000000, float* %322, align 4, !tbaa !8
  %323 = tail call float @llvm.fmuladd.f32(float %8, float 0x40067AE140000000, float 0x4020372720000000)
  %324 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A709B300000000, float %323)
  %325 = tail call float @_Z3expf(float %324) #3
  %326 = add i64 %4, 712
  %327 = getelementptr inbounds float, float* %1, i64 %326
  store float %325, float* %327, align 4, !tbaa !8
  %328 = add i64 %4, 720
  %329 = getelementptr inbounds float, float* %1, i64 %328
  store float 0x42C2309CE0000000, float* %329, align 4, !tbaa !8
  %330 = fmul float %9, 0x4071ED5600000000
  %331 = tail call float @_Z3expf(float %330) #3
  %332 = fmul float %331, 0x42A5D3EF80000000
  %333 = add i64 %4, 728
  %334 = getelementptr inbounds float, float* %1, i64 %333
  store float %332, float* %334, align 4, !tbaa !8
  %335 = fmul float %331, 0x42AD1A94A0000000
  %336 = add i64 %4, 848
  %337 = getelementptr inbounds float, float* %1, i64 %336
  store float %335, float* %337, align 4, !tbaa !8
  %338 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFEF0A3D80000000, float 0x4042CBE020000000)
  %339 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0737FE8C0000000, float %338)
  %340 = tail call float @_Z3expf(float %339) #3
  %341 = add i64 %4, 736
  %342 = getelementptr inbounds float, float* %1, i64 %341
  store float %340, float* %342, align 4, !tbaa !8
  %343 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FB99999A0000000, float 0x403D3D0B80000000)
  %344 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B4D618C0000000, float %343)
  %345 = tail call float @_Z3expf(float %344) #3
  %346 = add i64 %4, 744
  %347 = getelementptr inbounds float, float* %1, i64 %346
  store float %345, float* %347, align 4, !tbaa !8
  %348 = add i64 %4, 752
  %349 = getelementptr inbounds float, float* %1, i64 %348
  store float 0x42C6BCC420000000, float* %349, align 4, !tbaa !8
  %350 = add i64 %4, 760
  %351 = getelementptr inbounds float, float* %1, i64 %350
  store float 0x42B2309CE0000000, float* %351, align 4, !tbaa !8
  %352 = add i64 %4, 768
  %353 = getelementptr inbounds float, float* %1, i64 %352
  store float 0x42BD1A94A0000000, float* %353, align 4, !tbaa !8
  %354 = add i64 %4, 776
  %355 = getelementptr inbounds float, float* %1, i64 %354
  store float 0x42AD1A94A0000000, float* %355, align 4, !tbaa !8
  %356 = add i64 %4, 784
  %357 = getelementptr inbounds float, float* %1, i64 %356
  store float 0x42A2309CE0000000, float* %357, align 4, !tbaa !8
  %358 = add i64 %4, 792
  %359 = getelementptr inbounds float, float* %1, i64 %358
  store float 0x4292309CE0000000, float* %359, align 4, !tbaa !8
  %360 = tail call float @llvm.fmuladd.f32(float %8, float 0x401E666660000000, float 0xC03C7ACA80000000)
  %361 = tail call float @llvm.fmuladd.f32(float %9, float 0x409BC16B60000000, float %360)
  %362 = tail call float @_Z3expf(float %361) #3
  %363 = add i64 %4, 800
  %364 = getelementptr inbounds float, float* %1, i64 %363
  store float %362, float* %364, align 4, !tbaa !8
  %365 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF9EB8520000000, float 0x40344EC8C0000000)
  %366 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B54EDE60000000, float %365)
  %367 = tail call float @_Z3expf(float %366) #3
  %368 = add i64 %4, 808
  %369 = getelementptr inbounds float, float* %1, i64 %368
  store float %367, float* %369, align 4, !tbaa !8
  %370 = tail call float @llvm.fmuladd.f32(float %8, float 1.500000e+00, float 0x4034BE39C0000000)
  %371 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B0E7A9E0000000, float %370)
  %372 = tail call float @_Z3expf(float %371) #3
  %373 = add i64 %4, 816
  %374 = getelementptr inbounds float, float* %1, i64 %373
  store float %372, float* %374, align 4, !tbaa !8
  %375 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF99999A0000000, float 0x40326BB1C0000000)
  %376 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0988824E0000000, float %375)
  %377 = tail call float @_Z3expf(float %376) #3
  %378 = add i64 %4, 824
  %379 = getelementptr inbounds float, float* %1, i64 %378
  store float %377, float* %379, align 4, !tbaa !8
  %380 = add i64 %4, 832
  %381 = getelementptr inbounds float, float* %1, i64 %380
  store float 0x42CB48EB60000000, float* %381, align 4, !tbaa !8
  %382 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x402D6E6C80000000)
  %383 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B0419A20000000, float %382)
  %384 = tail call float @_Z3expf(float %383) #3
  %385 = add i64 %4, 840
  %386 = getelementptr inbounds float, float* %1, i64 %385
  store float %384, float* %386, align 4, !tbaa !8
  %387 = add i64 %4, 856
  %388 = getelementptr inbounds float, float* %1, i64 %387
  store float 0x42D6BCC420000000, float* %388, align 4, !tbaa !8
  %389 = add i64 %4, 864
  %390 = getelementptr inbounds float, float* %1, i64 %389
  store float 0x42D6BCC420000000, float* %390, align 4, !tbaa !8
  %391 = tail call float @llvm.fmuladd.f32(float %9, float 0xC07ADBF3E0000000, float 0x403C19DCC0000000)
  %392 = tail call float @_Z3expf(float %391) #3
  %393 = add i64 %4, 872
  %394 = getelementptr inbounds float, float* %1, i64 %393
  store float %392, float* %394, align 4, !tbaa !8
  %395 = add i64 %4, 880
  %396 = getelementptr inbounds float, float* %1, i64 %395
  store float 0x42C6BCC420000000, float* %396, align 4, !tbaa !8
  %397 = add i64 %4, 888
  %398 = getelementptr inbounds float, float* %1, i64 %397
  store float 0x42BB48EB60000000, float* %398, align 4, !tbaa !8
  %399 = add i64 %4, 896
  %400 = getelementptr inbounds float, float* %1, i64 %399
  store float 0x42A2309CE0000000, float* %400, align 4, !tbaa !8
  %401 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFE0A3D700000000, float 0x40412866A0000000)
  %402 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D8F08FC0000000, float %401)
  %403 = tail call float @_Z3expf(float %402) #3
  %404 = add i64 %4, 904
  %405 = getelementptr inbounds float, float* %1, i64 %404
  store float %403, float* %405, align 4, !tbaa !8
  %406 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF9EB8520000000, float 0x4033C57700000000)
  %407 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D234D200000000, float %406)
  %408 = tail call float @_Z3expf(float %407) #3
  %409 = add i64 %4, 912
  %410 = getelementptr inbounds float, float* %1, i64 %409
  store float %408, float* %410, align 4, !tbaa !8
  %411 = fmul float %9, 0x408DE0E4C0000000
  %412 = fsub float -0.000000e+00, %411
  %413 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float %412)
  %414 = tail call float @_Z3expf(float %413) #3
  %415 = fmul float %414, 1.632000e+07
  %416 = add i64 %4, 920
  %417 = getelementptr inbounds float, float* %1, i64 %416
  store float %415, float* %417, align 4, !tbaa !8
  %418 = fmul float %414, 4.080000e+06
  %419 = add i64 %4, 928
  %420 = getelementptr inbounds float, float* %1, i64 %419
  store float %418, float* %420, align 4, !tbaa !8
  %421 = tail call float @llvm.fmuladd.f32(float %8, float 4.500000e+00, float 0xC020DCAE20000000)
  %422 = tail call float @llvm.fmuladd.f32(float %9, float 0x407F737780000000, float %421)
  %423 = tail call float @_Z3expf(float %422) #3
  %424 = add i64 %4, 936
  %425 = getelementptr inbounds float, float* %1, i64 %424
  store float %423, float* %425, align 4, !tbaa !8
  %426 = tail call float @llvm.fmuladd.f32(float %8, float 4.000000e+00, float 0xC01E8ABEE0000000)
  %427 = tail call float @llvm.fmuladd.f32(float %9, float 0x408F737780000000, float %426)
  %428 = tail call float @_Z3expf(float %427) #3
  %429 = add i64 %4, 944
  %430 = getelementptr inbounds float, float* %1, i64 %429
  store float %428, float* %430, align 4, !tbaa !8
  %431 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x40301E3B80000000)
  %432 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A79699A0000000, float %431)
  %433 = tail call float @_Z3expf(float %432) #3
  %434 = add i64 %4, 952
  %435 = getelementptr inbounds float, float* %1, i64 %434
  store float %433, float* %435, align 4, !tbaa !8
  %436 = tail call float @llvm.fmuladd.f32(float %8, float 0xC027A3D700000000, float 0x405FDB8F80000000)
  %437 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D18EFBA0000000, float %436)
  %438 = tail call float @_Z3expf(float %437) #3
  %439 = add i64 %4, 960
  %440 = getelementptr inbounds float, float* %1, i64 %439
  store float %438, float* %440, align 4, !tbaa !8
  %441 = add i64 %4, 968
  %442 = getelementptr inbounds float, float* %1, i64 %441
  store float 0x42D6BCC420000000, float* %442, align 4, !tbaa !8
  %443 = add i64 %4, 976
  %444 = getelementptr inbounds float, float* %1, i64 %443
  store float 0x42D6BCC420000000, float* %444, align 4, !tbaa !8
  %445 = add i64 %4, 984
  %446 = getelementptr inbounds float, float* %1, i64 %445
  store float 0x42B2309CE0000000, float* %446, align 4, !tbaa !8
  %447 = add i64 %4, 992
  %448 = getelementptr inbounds float, float* %1, i64 %447
  store float 0x42A2309CE0000000, float* %448, align 4, !tbaa !8
  %449 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFAEB851E0000000, float 0x4040B70E00000000)
  %450 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B0B55780000000, float %449)
  %451 = tail call float @_Z3expf(float %450) #3
  %452 = add i64 %4, 1000
  %453 = getelementptr inbounds float, float* %1, i64 %452
  store float %451, float* %453, align 4, !tbaa !8
  %454 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF6E147A0000000, float 0x403520F480000000)
  %455 = tail call float @llvm.fmuladd.f32(float %9, float 0xC095269C80000000, float %454)
  %456 = tail call float @_Z3expf(float %455) #3
  %457 = add i64 %4, 1016
  %458 = getelementptr inbounds float, float* %1, i64 %457
  store float %456, float* %458, align 4, !tbaa !8
  %459 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0853ABD80000000, float 0x403C30CDA0000000)
  %460 = tail call float @_Z3expf(float %459) #3
  %461 = add i64 %4, 1032
  %462 = getelementptr inbounds float, float* %1, i64 %461
  store float %460, float* %462, align 4, !tbaa !8
  %463 = fmul float %9, 0xC08F737780000000
  %464 = tail call float @_Z3expf(float %463) #3
  %465 = fmul float %464, 0x429B48EB60000000
  %466 = add i64 %4, 1040
  %467 = getelementptr inbounds float, float* %1, i64 %466
  store float %465, float* %467, align 4, !tbaa !8
  %468 = fmul float %464, 0x42A2309CE0000000
  %469 = add i64 %4, 1208
  %470 = getelementptr inbounds float, float* %1, i64 %469
  store float %468, float* %470, align 4, !tbaa !8
  %471 = fmul float %464, 0x42B2309CE0000000
  %472 = add i64 %4, 1480
  %473 = getelementptr inbounds float, float* %1, i64 %472
  store float %471, float* %473, align 4, !tbaa !8
  %474 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FD147AE20000000, float 0x403D6F9F60000000)
  %475 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0619CD240000000, float %474)
  %476 = tail call float @_Z3expf(float %475) #3
  %477 = add i64 %4, 1048
  %478 = getelementptr inbounds float, float* %1, i64 %477
  store float %476, float* %478, align 4, !tbaa !8
  %479 = add i64 %4, 1056
  %480 = getelementptr inbounds float, float* %1, i64 %479
  store float 0x42BB48EB60000000, float* %480, align 4, !tbaa !8
  %481 = add i64 %4, 1064
  %482 = getelementptr inbounds float, float* %1, i64 %481
  store float 0x42CB48EB60000000, float* %482, align 4, !tbaa !8
  %483 = add i64 %4, 1072
  %484 = getelementptr inbounds float, float* %1, i64 %483
  store float 0x42C5D3EF80000000, float* %484, align 4, !tbaa !8
  %485 = add i64 %4, 1080
  %486 = getelementptr inbounds float, float* %1, i64 %485
  store float 0x42C5D3EF80000000, float* %486, align 4, !tbaa !8
  %487 = add i64 %4, 1088
  %488 = getelementptr inbounds float, float* %1, i64 %487
  store float 0x42BB6287E0000000, float* %488, align 4, !tbaa !8
  %489 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF9C28F60000000, float 0x402C376360000000)
  %490 = tail call float @llvm.fmuladd.f32(float %9, float 0x40681DDD60000000, float %489)
  %491 = tail call float @_Z3expf(float %490) #3
  %492 = add i64 %4, 1096
  %493 = getelementptr inbounds float, float* %1, i64 %492
  store float %491, float* %493, align 4, !tbaa !8
  %494 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FD28F5C20000000, float 0x403A6D5300000000)
  %495 = tail call float @llvm.fmuladd.f32(float %9, float 0xC016243B80000000, float %494)
  %496 = tail call float @_Z3expf(float %495) #3
  %497 = add i64 %4, 1104
  %498 = getelementptr inbounds float, float* %1, i64 %497
  store float %496, float* %498, align 4, !tbaa !8
  %499 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFF63D70A0000000, float 0x40432F0780000000)
  %500 = tail call float @llvm.fmuladd.f32(float %9, float 0xC07FC3FB40000000, float %499)
  %501 = tail call float @_Z3expf(float %500) #3
  %502 = add i64 %4, 1112
  %503 = getelementptr inbounds float, float* %1, i64 %502
  store float %501, float* %503, align 4, !tbaa !8
  %504 = add i64 %4, 1120
  %505 = getelementptr inbounds float, float* %1, i64 %504
  store float 0x42A2309CE0000000, float* %505, align 4, !tbaa !8
  %506 = tail call float @llvm.fmuladd.f32(float %9, float 0x4072BEACA0000000, float 0x4037376AA0000000)
  %507 = tail call float @_Z3expf(float %506) #3
  %508 = add i64 %4, 1128
  %509 = getelementptr inbounds float, float* %1, i64 %508
  store float %507, float* %509, align 4, !tbaa !8
  %510 = add i64 %4, 1136
  %511 = getelementptr inbounds float, float* %1, i64 %510
  store float 0x42D489E5E0000000, float* %511, align 4, !tbaa !8
  %512 = add i64 %4, 1144
  %513 = getelementptr inbounds float, float* %1, i64 %512
  store float 0x4256D14160000000, float* %513, align 4, !tbaa !8
  %514 = add i64 %4, 1152
  %515 = getelementptr inbounds float, float* %1, i64 %514
  store float 0x42B6BCC420000000, float* %515, align 4, !tbaa !8
  %516 = tail call float @llvm.fmuladd.f32(float %8, float 0xC006A3D700000000, float 0x404BD570E0000000)
  %517 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C24C71A0000000, float %516)
  %518 = tail call float @_Z3expf(float %517) #3
  %519 = add i64 %4, 1160
  %520 = getelementptr inbounds float, float* %1, i64 %519
  store float %518, float* %520, align 4, !tbaa !8
  %521 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0224B43A0000000, float 0x40581D7280000000)
  %522 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D70C3720000000, float %521)
  %523 = tail call float @_Z3expf(float %522) #3
  %524 = add i64 %4, 1168
  %525 = getelementptr inbounds float, float* %1, i64 %524
  store float %523, float* %525, align 4, !tbaa !8
  %526 = add i64 %4, 1176
  %527 = getelementptr inbounds float, float* %1, i64 %526
  store float 0x42D6BCC420000000, float* %527, align 4, !tbaa !8
  %528 = add i64 %4, 1184
  %529 = getelementptr inbounds float, float* %1, i64 %528
  store float 0x42D476B080000000, float* %529, align 4, !tbaa !8
  %530 = fmul float %9, 0xC09F737780000000
  %531 = tail call float @_Z3expf(float %530) #3
  %532 = fmul float %531, 0x42B2309CE0000000
  %533 = add i64 %4, 1192
  %534 = getelementptr inbounds float, float* %1, i64 %533
  store float %532, float* %534, align 4, !tbaa !8
  %535 = add i64 %4, 1200
  %536 = getelementptr inbounds float, float* %1, i64 %535
  store float %532, float* %536, align 4, !tbaa !8
  %537 = add i64 %4, 1216
  %538 = getelementptr inbounds float, float* %1, i64 %537
  store float 0x42404C5340000000, float* %538, align 4, !tbaa !8
  %539 = add i64 %4, 1224
  %540 = getelementptr inbounds float, float* %1, i64 %539
  store float 0x4210C388C0000000, float* %540, align 4, !tbaa !8
  %541 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDC28F5C0000000, float 0x403DB5E0E0000000)
  %542 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E5CFD160000000, float %541)
  %543 = tail call float @_Z3expf(float %542) #3
  %544 = add i64 %4, 1232
  %545 = getelementptr inbounds float, float* %1, i64 %544
  store float %543, float* %545, align 4, !tbaa !8
  %546 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDD0E5600000000, float 0x403BB53E60000000)
  %547 = tail call float @llvm.fmuladd.f32(float %9, float 0xC08C9ED5A0000000, float %546)
  %548 = tail call float @_Z3expf(float %547) #3
  %549 = add i64 %4, 1240
  %550 = getelementptr inbounds float, float* %1, i64 %549
  store float %548, float* %550, align 4, !tbaa !8
  %551 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFEE147A0000000, float 0x4031BDCEC0000000)
  %552 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B974A7E0000000, float %551)
  %553 = tail call float @_Z3expf(float %552) #3
  %554 = add i64 %4, 1248
  %555 = getelementptr inbounds float, float* %1, i64 %554
  store float %553, float* %555, align 4, !tbaa !8
  %556 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFE8F5C20000000, float 0x403087BB80000000)
  %557 = tail call float @llvm.fmuladd.f32(float %9, float 0xC09D681F20000000, float %556)
  %558 = tail call float @_Z3expf(float %557) #3
  %559 = add i64 %4, 1256
  %560 = getelementptr inbounds float, float* %1, i64 %559
  store float %558, float* %560, align 4, !tbaa !8
  %561 = fmul float %9, 0x405BAD4A60000000
  %562 = fsub float -0.000000e+00, %561
  %563 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFD47AE20000000, float %562)
  %564 = tail call float @_Z3expf(float %563) #3
  %565 = fmul float %564, 1.920000e+07
  %566 = add i64 %4, 1264
  %567 = getelementptr inbounds float, float* %1, i64 %566
  store float %565, float* %567, align 4, !tbaa !8
  %568 = fmul float %564, 3.840000e+05
  %569 = add i64 %4, 1272
  %570 = getelementptr inbounds float, float* %1, i64 %569
  store float %568, float* %570, align 4, !tbaa !8
  %571 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x402E316120000000)
  %572 = tail call float @llvm.fmuladd.f32(float %9, float 0xC093A82AA0000000, float %571)
  %573 = tail call float @_Z3expf(float %572) #3
  %574 = add i64 %4, 1280
  %575 = getelementptr inbounds float, float* %1, i64 %574
  store float %573, float* %575, align 4, !tbaa !8
  %576 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0DDE0E4C0000000, float 0x403F5F99E0000000)
  %577 = tail call float @_Z3expf(float %576) #3
  %578 = add i64 %4, 1288
  %579 = getelementptr inbounds float, float* %1, i64 %578
  store float %577, float* %579, align 4, !tbaa !8
  %580 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0BB850880000000, float 0x403C52FCC0000000)
  %581 = tail call float @_Z3expf(float %580) #3
  %582 = add i64 %4, 1296
  %583 = getelementptr inbounds float, float* %1, i64 %582
  store float %581, float* %583, align 4, !tbaa !8
  %584 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AF737780000000, float %431)
  %585 = tail call float @_Z3expf(float %584) #3
  %586 = add i64 %4, 1304
  %587 = getelementptr inbounds float, float* %1, i64 %586
  store float %585, float* %587, align 4, !tbaa !8
  %588 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A79699A0000000, float 0x403EA072E0000000)
  %589 = tail call float @_Z3expf(float %588) #3
  %590 = add i64 %4, 1312
  %591 = getelementptr inbounds float, float* %1, i64 %590
  store float %589, float* %591, align 4, !tbaa !8
  %592 = add i64 %4, 1320
  %593 = getelementptr inbounds float, float* %1, i64 %592
  store float 0x42C6BCC420000000, float* %593, align 4, !tbaa !8
  %594 = add i64 %4, 1328
  %595 = getelementptr inbounds float, float* %1, i64 %594
  store float 0x42C6BCC420000000, float* %595, align 4, !tbaa !8
  %596 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x4028AA5860000000)
  %597 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B21597E0000000, float %596)
  %598 = tail call float @_Z3expf(float %597) #3
  %599 = add i64 %4, 1336
  %600 = getelementptr inbounds float, float* %1, i64 %599
  store float %598, float* %600, align 4, !tbaa !8
  %601 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AE458960000000, float 0x403A85B940000000)
  %602 = tail call float @_Z3expf(float %601) #3
  %603 = add i64 %4, 1344
  %604 = getelementptr inbounds float, float* %1, i64 %603
  store float %602, float* %604, align 4, !tbaa !8
  %605 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFEFAE1480000000, float 0x404465B300000000)
  %606 = tail call float @llvm.fmuladd.f32(float %9, float 0xC088D8A8A0000000, float %605)
  %607 = tail call float @_Z3expf(float %606) #3
  %608 = add i64 %4, 1352
  %609 = getelementptr inbounds float, float* %1, i64 %608
  store float %607, float* %609, align 4, !tbaa !8
  %610 = add i64 %4, 1360
  %611 = getelementptr inbounds float, float* %1, i64 %610
  store float 0x427D1A94A0000000, float* %611, align 4, !tbaa !8
  %612 = add i64 %4, 1368
  %613 = getelementptr inbounds float, float* %1, i64 %612
  store float 0x42AD2D3500000000, float* %613, align 4, !tbaa !8
  %614 = add i64 %4, 1376
  %615 = getelementptr inbounds float, float* %1, i64 %614
  store float 0x42D23C4120000000, float* %615, align 4, !tbaa !8
  %616 = add i64 %4, 1384
  %617 = getelementptr inbounds float, float* %1, i64 %616
  store float 2.000000e+10, float* %617, align 4, !tbaa !8
  %618 = add i64 %4, 1392
  %619 = getelementptr inbounds float, float* %1, i64 %618
  store float 0x4251765920000000, float* %619, align 4, !tbaa !8
  %620 = add i64 %4, 1400
  %621 = getelementptr inbounds float, float* %1, i64 %620
  store float 0x4251765920000000, float* %621, align 4, !tbaa !8
  %622 = add i64 %4, 1408
  %623 = getelementptr inbounds float, float* %1, i64 %622
  store float 0x42B5D3EF80000000, float* %623, align 4, !tbaa !8
  %624 = tail call float @llvm.fmuladd.f32(float %9, float 0xC07EA220E0000000, float 0x4036E2F780000000)
  %625 = tail call float @_Z3expf(float %624) #3
  %626 = add i64 %4, 1416
  %627 = getelementptr inbounds float, float* %1, i64 %626
  store float %625, float* %627, align 4, !tbaa !8
  %628 = add i64 %4, 1424
  %629 = getelementptr inbounds float, float* %1, i64 %628
  store float 0x42DB48EB60000000, float* %629, align 4, !tbaa !8
  %630 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFE666660000000, float 0x40328F7920000000)
  %631 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AD9A7160000000, float %630)
  %632 = tail call float @_Z3expf(float %631) #3
  %633 = add i64 %4, 1432
  %634 = getelementptr inbounds float, float* %1, i64 %633
  store float %632, float* %634, align 4, !tbaa !8
  %635 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFEB851E0000000, float 0x4032502700000000)
  %636 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A65E9B00000000, float %635)
  %637 = tail call float @_Z3expf(float %636) #3
  %638 = add i64 %4, 1440
  %639 = getelementptr inbounds float, float* %1, i64 %638
  store float %637, float* %639, align 4, !tbaa !8
  %640 = tail call float @llvm.fmuladd.f32(float %8, float 0x4000F5C280000000, float 0x402E28C640000000)
  %641 = tail call float @llvm.fmuladd.f32(float %9, float 0xC07B5CC6A0000000, float %640)
  %642 = tail call float @_Z3expf(float %641) #3
  %643 = add i64 %4, 1448
  %644 = getelementptr inbounds float, float* %1, i64 %643
  store float %642, float* %644, align 4, !tbaa !8
  %645 = tail call float @llvm.fmuladd.f32(float %9, float 0x40714C4E80000000, float 0x403F51E500000000)
  %646 = tail call float @_Z3expf(float %645) #3
  %647 = add i64 %4, 1456
  %648 = getelementptr inbounds float, float* %1, i64 %647
  store float %646, float* %648, align 4, !tbaa !8
  %649 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFBD70A40000000, float 0x402F42BB40000000)
  %650 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B48A9D40000000, float %649)
  %651 = tail call float @_Z3expf(float %650) #3
  %652 = add i64 %4, 1464
  %653 = getelementptr inbounds float, float* %1, i64 %652
  store float %651, float* %653, align 4, !tbaa !8
  %654 = add i64 %4, 1472
  %655 = getelementptr inbounds float, float* %1, i64 %654
  store float 0x42E6BCC420000000, float* %655, align 4, !tbaa !8
  %656 = add i64 %4, 1488
  %657 = getelementptr inbounds float, float* %1, i64 %656
  store float 0x42835AA2E0000000, float* %657, align 4, !tbaa !8
  %658 = add i64 %4, 1496
  %659 = getelementptr inbounds float, float* %1, i64 %658
  store float 0x429802BAA0000000, float* %659, align 4, !tbaa !8
  %660 = add i64 %4, 1504
  %661 = getelementptr inbounds float, float* %1, i64 %660
  store float 0x42CB48EB60000000, float* %661, align 4, !tbaa !8
  %662 = tail call float @llvm.fmuladd.f32(float %9, float 0xC099A35AC0000000, float 0x403E380240000000)
  %663 = tail call float @_Z3expf(float %662) #3
  %664 = add i64 %4, 1512
  %665 = getelementptr inbounds float, float* %1, i64 %664
  store float %663, float* %665, align 4, !tbaa !8
  %666 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0031EB860000000, float 0x4049903D80000000)
  %667 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B5F9F660000000, float %666)
  %668 = tail call float @_Z3expf(float %667) #3
  %669 = add i64 %4, 1520
  %670 = getelementptr inbounds float, float* %1, i64 %669
  store float %668, float* %670, align 4, !tbaa !8
  %671 = tail call float @llvm.fmuladd.f32(float %8, float 2.500000e+00, float 0x4028164CA0000000)
  %672 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0939409C0000000, float %671)
  %673 = tail call float @_Z3expf(float %672) #3
  %674 = add i64 %4, 1528
  %675 = getelementptr inbounds float, float* %1, i64 %674
  store float %673, float* %675, align 4, !tbaa !8
  %676 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFA666660000000, float 0x40329A5E60000000)
  %677 = tail call float @llvm.fmuladd.f32(float %9, float 0xC06491A8C0000000, float %676)
  %678 = tail call float @_Z3expf(float %677) #3
  %679 = add i64 %4, 1536
  %680 = getelementptr inbounds float, float* %1, i64 %679
  store float %678, float* %680, align 4, !tbaa !8
  %681 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FFA666660000000, float 0x40315EF0A0000000)
  %682 = tail call float @llvm.fmuladd.f32(float %9, float 0x407E920680000000, float %681)
  %683 = tail call float @_Z3expf(float %682) #3
  %684 = add i64 %4, 1544
  %685 = getelementptr inbounds float, float* %1, i64 %684
  store float %683, float* %685, align 4, !tbaa !8
  %686 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FE6666660000000, float 0x4039EA8DA0000000)
  %687 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A71DD400000000, float %686)
  %688 = tail call float @_Z3expf(float %687) #3
  %689 = add i64 %4, 1552
  %690 = getelementptr inbounds float, float* %1, i64 %689
  store float %688, float* %690, align 4, !tbaa !8
  %691 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 0x402DE4D1C0000000)
  %692 = tail call float @llvm.fmuladd.f32(float %9, float 0x4062BEACA0000000, float %691)
  %693 = tail call float @_Z3expf(float %692) #3
  %694 = add i64 %4, 1560
  %695 = getelementptr inbounds float, float* %1, i64 %694
  store float %693, float* %695, align 4, !tbaa !8
  %696 = tail call float @llvm.fmuladd.f32(float %8, float 0x4004CCCCC0000000, float 0x402256CB20000000)
  %697 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0BB57BE60000000, float %696)
  %698 = tail call float @_Z3expf(float %697) #3
  %699 = add i64 %4, 1568
  %700 = getelementptr inbounds float, float* %1, i64 %699
  store float %698, float* %700, align 4, !tbaa !8
  %701 = tail call float @llvm.fmuladd.f32(float %8, float 3.500000e+00, float 0x3FE93B0AE0000000)
  %702 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0A64F8260000000, float %701)
  %703 = tail call float @_Z3expf(float %702) #3
  %704 = add i64 %4, 1576
  %705 = getelementptr inbounds float, float* %1, i64 %704
  store float %703, float* %705, align 4, !tbaa !8
  %706 = tail call float @llvm.fmuladd.f32(float %8, float 0xC0075C2900000000, float 0x404C490200000000)
  %707 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B894B980000000, float %706)
  %708 = tail call float @_Z3expf(float %707) #3
  %709 = add i64 %4, 1584
  %710 = getelementptr inbounds float, float* %1, i64 %709
  store float %708, float* %710, align 4, !tbaa !8
  %711 = add i64 %4, 1592
  %712 = getelementptr inbounds float, float* %1, i64 %711
  store float 0x427A3185C0000000, float* %712, align 4, !tbaa !8
  %713 = add i64 %4, 1600
  %714 = getelementptr inbounds float, float* %1, i64 %713
  store float 0x42D5D3EF80000000, float* %714, align 4, !tbaa !8
  %715 = add i64 %4, 1608
  %716 = getelementptr inbounds float, float* %1, i64 %715
  store float 0x42B5D3EF80000000, float* %716, align 4, !tbaa !8
  %717 = add i64 %4, 1616
  %718 = getelementptr inbounds float, float* %1, i64 %717
  store float 0x4234F46B00000000, float* %718, align 4, !tbaa !8
  %719 = add i64 %4, 1624
  %720 = getelementptr inbounds float, float* %1, i64 %719
  store float 0x42B5D3EF80000000, float* %720, align 4, !tbaa !8
  %721 = add i64 %4, 1632
  %722 = getelementptr inbounds float, float* %1, i64 %721
  store float 0x42A4024620000000, float* %722, align 4, !tbaa !8
  %723 = tail call float @llvm.fmuladd.f32(float %8, float 0xC014E147A0000000, float 0x4052C2CC00000000)
  %724 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C3688280000000, float %723)
  %725 = tail call float @_Z3expf(float %724) #3
  %726 = add i64 %4, 1640
  %727 = getelementptr inbounds float, float* %1, i64 %726
  store float %725, float* %727, align 4, !tbaa !8
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
