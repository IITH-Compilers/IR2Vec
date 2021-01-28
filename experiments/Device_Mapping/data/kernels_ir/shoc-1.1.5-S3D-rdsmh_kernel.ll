; ModuleID = 'shoc-1.1.5-S3D-rdsmh_kernel.cl'
source_filename = "shoc-1.1.5-S3D-rdsmh_kernel.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @rdsmh_kernel(float* nocapture readonly, float*, float) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %5 = getelementptr inbounds float, float* %0, i64 %4
  %6 = load float, float* %5, align 4, !tbaa !8
  %7 = fmul float %6, %2
  %8 = tail call float @_Z3logf(float %7) #3
  %9 = fdiv float 1.000000e+00, %7, !fpmath !12
  %10 = fadd float %8, -1.000000e+00
  %11 = fcmp ogt float %7, 1.000000e+03
  br i1 %11, label %12, label %317

; <label>:12:                                     ; preds = %3
  %13 = tail call float @llvm.fmuladd.f32(float %9, float 0x408DB14580000000, float 0xC009A3E340000000)
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 0x400AB2BF60000000, float %13)
  %15 = tail call float @llvm.fmuladd.f32(float %7, float 0x3CD2099320000000, float 0xBDB073F440000000) #4
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %7, float 0x3E765866C0000000) #4
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %7, float 0xBEF9E6B000000000) #4
  %18 = fmul float %7, %17
  %19 = fadd float %14, %18
  %20 = tail call float @_Z3expf(float %19) #3
  %21 = getelementptr inbounds float, float* %1, i64 %4
  store float %20, float* %21, align 4, !tbaa !8
  %22 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D8E06A40000000, float 0xBFDC9673E0000000)
  %23 = tail call float @llvm.fmuladd.f32(float %10, float 2.500000e+00, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %7, float 0x3B3E1D3B00000000, float 0xBC1D1DB540000000) #4
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %7, float 0x3CE840F100000000) #4
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %7, float 0xBDA961A6E0000000) #4
  %27 = fmul float %7, %26
  %28 = fadd float %23, %27
  %29 = tail call float @_Z3expf(float %28) #3
  %30 = add i64 %4, 8
  %31 = getelementptr inbounds float, float* %1, i64 %30
  store float %29, float* %31, align 4, !tbaa !8
  %32 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0DC886500000000, float 0x40132329A0000000)
  %33 = tail call float @llvm.fmuladd.f32(float %10, float 0x40048E2C80000000, float %32)
  %34 = tail call float @llvm.fmuladd.f32(float %7, float 0x3C91B3C360000000, float 0xBD6D5F5860000000) #4
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %7, float 0x3E3E0722E0000000) #4
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %7, float 0xBF0689A000000000) #4
  %37 = fmul float %7, %36
  %38 = fadd float %33, %37
  %39 = tail call float @_Z3expf(float %38) #3
  %40 = add i64 %4, 16
  %41 = getelementptr inbounds float, float* %1, i64 %40
  store float %39, float* %41, align 4, !tbaa !8
  %42 = tail call float @llvm.fmuladd.f32(float %9, float 0x409101D4C0000000, float 0x4015D01BE0000000)
  %43 = tail call float @llvm.fmuladd.f32(float %10, float 0x400A42A340000000, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD3852C00000000, float 0x3DB33164A0000000) #4
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %7, float 0xBE80F496E0000000) #4
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %7, float 0x3F484C8520000000) #4
  %47 = fmul float %7, %46
  %48 = fadd float %43, %47
  %49 = tail call float @_Z3expf(float %48) #3
  %50 = add i64 %4, 24
  %51 = getelementptr inbounds float, float* %1, i64 %50
  store float %49, float* %51, align 4, !tbaa !8
  %52 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AE255060000000, float 0x4011E82300000000)
  %53 = tail call float @llvm.fmuladd.f32(float %10, float 0x4008BE3BE0000000, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %7, float 0x3CC526B0A0000000, float 0xBDA01DC620000000) #4
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %7, float 0x3E56A39500000000) #4
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %7, float 0x3F31F88FE0000000) #4
  %57 = fmul float %7, %56
  %58 = fadd float %53, %57
  %59 = tail call float @_Z3expf(float %58) #3
  %60 = add i64 %4, 32
  %61 = getelementptr inbounds float, float* %1, i64 %60
  store float %59, float* %61, align 4, !tbaa !8
  %62 = tail call float @llvm.fmuladd.f32(float %9, float 0x40DD4D1300000000, float 0x4013DDF900000000)
  %63 = tail call float @llvm.fmuladd.f32(float %10, float 0x4008459DE0000000, float %62)
  %64 = tail call float @llvm.fmuladd.f32(float %7, float 0x3CCE4CE6E0000000, float 0xBDA1C87B60000000) #4
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %7, float 0xBE5D5CA6E0000000) #4
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %7, float 0x3F51D55400000000) #4
  %67 = fmul float %7, %66
  %68 = fadd float %63, %67
  %69 = tail call float @_Z3expf(float %68) #3
  %70 = add i64 %4, 40
  %71 = getelementptr inbounds float, float* %1, i64 %70
  store float %69, float* %71, align 4, !tbaa !8
  %72 = tail call float @llvm.fmuladd.f32(float %9, float 0xC05BF6D460000000, float 0x400E47E3A0000000)
  %73 = tail call float @llvm.fmuladd.f32(float %10, float 0x4010119FC0000000, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCC3706720000000, float 0x3DA4EF9520000000) #4
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %7, float 0xBE7C597160000000) #4
  %76 = tail call float @llvm.fmuladd.f32(float %75, float %7, float 0x3F52593E40000000) #4
  %77 = fmul float %7, %76
  %78 = fadd float %73, %77
  %79 = tail call float @_Z3expf(float %78) #3
  %80 = add i64 %4, 48
  %81 = getelementptr inbounds float, float* %1, i64 %80
  store float %79, float* %81, align 4, !tbaa !8
  %82 = tail call float @llvm.fmuladd.f32(float %9, float 0x40D1717260000000, float 0x40075449E0000000)
  %83 = tail call float @llvm.fmuladd.f32(float %10, float 0x4010A8F680000000, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD9EEB6A0000000, float 0x3DC10150C0000000) #4
  %85 = tail call float @llvm.fmuladd.f32(float %84, float %7, float 0xBE95444740000000) #4
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %7, float 0x3F641ABE40000000) #4
  %87 = fmul float %7, %86
  %88 = fadd float %83, %87
  %89 = tail call float @_Z3expf(float %88) #3
  %90 = add i64 %4, 56
  %91 = getelementptr inbounds float, float* %1, i64 %90
  store float %89, float* %91, align 4, !tbaa !8
  %92 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0F1564700000000, float 0x4015F09EA0000000)
  %93 = tail call float @llvm.fmuladd.f32(float %10, float 0x4007071880000000, float %92)
  %94 = tail call float @llvm.fmuladd.f32(float %7, float 0x3CCFB83A80000000, float 0xBDA7F2E4A0000000) #4
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %7, float 0x3E59D97C80000000) #4
  %96 = tail call float @llvm.fmuladd.f32(float %95, float %7, float 0x3F3FD09D40000000) #4
  %97 = fmul float %7, %96
  %98 = fadd float %93, %97
  %99 = tail call float @_Z3expf(float %98) #3
  %100 = add i64 %4, 64
  %101 = getelementptr inbounds float, float* %1, i64 %100
  store float %99, float* %101, align 4, !tbaa !8
  %102 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E696F360000000, float 0x4018AF4D40000000)
  %103 = tail call float @llvm.fmuladd.f32(float %10, float 0x4006FE28C0000000, float %102)
  %104 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD0E8B400000000, float 0x3DB7D6D600000000) #4
  %105 = tail call float @llvm.fmuladd.f32(float %104, float %7, float 0xBE8F8480A0000000) #4
  %106 = tail call float @llvm.fmuladd.f32(float %105, float %7, float 0x3F5DF40300000000) #4
  %107 = fmul float %7, %106
  %108 = fadd float %103, %107
  %109 = tail call float @_Z3expf(float %108) #3
  %110 = add i64 %4, 72
  %111 = getelementptr inbounds float, float* %1, i64 %110
  store float %109, float* %111, align 4, !tbaa !8
  %112 = tail call float @llvm.fmuladd.f32(float %9, float -5.092600e+04, float 0x402140C4E0000000)
  %113 = tail call float @llvm.fmuladd.f32(float %10, float 0x4002561840000000, float %112)
  %114 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCDE995380000000, float 0x3DC32540E0000000) #4
  %115 = tail call float @llvm.fmuladd.f32(float %114, float %7, float 0xBE9680C0A0000000) #4
  %116 = tail call float @llvm.fmuladd.f32(float %115, float %7, float 0x3F63120D00000000) #4
  %117 = fmul float %7, %116
  %118 = fadd float %113, %117
  %119 = tail call float @_Z3expf(float %118) #3
  %120 = add i64 %4, 80
  %121 = getelementptr inbounds float, float* %1, i64 %120
  store float %119, float* %121, align 4, !tbaa !8
  %122 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D061E560000000, float 0x4020F5CC00000000)
  %123 = tail call float @llvm.fmuladd.f32(float %10, float 0x4002492660000000, float %122)
  %124 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE509EC60000000, float 0x3DCB4A4360000000) #4
  %125 = tail call float @llvm.fmuladd.f32(float %124, float %7, float 0xBEA0B48FA0000000) #4
  %126 = tail call float @llvm.fmuladd.f32(float %125, float %7, float 0x3F6DA79600000000) #4
  %127 = fmul float %7, %126
  %128 = fadd float %123, %127
  %129 = tail call float @_Z3expf(float %128) #3
  %130 = add i64 %4, 88
  %131 = getelementptr inbounds float, float* %1, i64 %130
  store float %129, float* %131, align 4, !tbaa !8
  %132 = tail call float @llvm.fmuladd.f32(float %9, float 0x40C27E2C20000000, float 0x40326FF420000000)
  %133 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FB32977C0000000, float %132)
  %134 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCF6ED3FA0000000, float 0x3DDC034F60000000) #4
  %135 = tail call float @llvm.fmuladd.f32(float %134, float %7, float 0xBEB007BD60000000) #4
  %136 = tail call float @llvm.fmuladd.f32(float %135, float %7, float 0x3F7B6CB680000000) #4
  %137 = fmul float %7, %136
  %138 = fadd float %133, %137
  %139 = tail call float @_Z3expf(float %138) #3
  %140 = add i64 %4, 96
  %141 = getelementptr inbounds float, float* %1, i64 %140
  store float %139, float* %141, align 4, !tbaa !8
  %142 = tail call float @llvm.fmuladd.f32(float %9, float 0x40CBA3EFA0000000, float 0x401F465620000000)
  %143 = tail call float @llvm.fmuladd.f32(float %10, float 0x4005B8B340000000, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD257CBE0000000, float 0x3DB5142E40000000) #4
  %145 = tail call float @llvm.fmuladd.f32(float %144, float %7, float 0xBE8657E620000000) #4
  %146 = tail call float @llvm.fmuladd.f32(float %145, float %7, float 0x3F50E56F00000000) #4
  %147 = fmul float %7, %146
  %148 = fadd float %143, %147
  %149 = tail call float @_Z3expf(float %148) #3
  %150 = add i64 %4, 104
  %151 = getelementptr inbounds float, float* %1, i64 %150
  store float %149, float* %151, align 4, !tbaa !8
  %152 = tail call float @llvm.fmuladd.f32(float %9, float 0x40E7CEE540000000, float 0x40022C50A0000000)
  %153 = tail call float @llvm.fmuladd.f32(float %10, float 0x400EDC1420000000, float %152)
  %154 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE542C280000000, float 0x3DC7FB8EC0000000) #4
  %155 = tail call float @llvm.fmuladd.f32(float %154, float %7, float 0xBE98C5B3E0000000) #4
  %156 = tail call float @llvm.fmuladd.f32(float %155, float %7, float 0x3F6214CD80000000) #4
  %157 = fmul float %7, %156
  %158 = fadd float %153, %157
  %159 = tail call float @_Z3expf(float %158) #3
  %160 = add i64 %4, 112
  %161 = getelementptr inbounds float, float* %1, i64 %160
  store float %159, float* %161, align 4, !tbaa !8
  %162 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AF57D620000000, float 0x402398C0A0000000)
  %163 = tail call float @llvm.fmuladd.f32(float %10, float 0x40062D69C0000000, float %162)
  %164 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE806EFC0000000, float 0x3DCAFDC320000000) #4
  %165 = tail call float @llvm.fmuladd.f32(float %164, float %7, float 0xBE9BC9C5A0000000) #4
  %166 = tail call float @llvm.fmuladd.f32(float %165, float %7, float 0x3F644DBE80000000) #4
  %167 = fmul float %7, %166
  %168 = fadd float %163, %167
  %169 = tail call float @_Z3expf(float %168) #3
  %170 = add i64 %4, 120
  %171 = getelementptr inbounds float, float* %1, i64 %170
  store float %169, float* %171, align 4, !tbaa !8
  %172 = tail call float @llvm.fmuladd.f32(float %9, float 0x40CB55EA80000000, float 0x402B5009A0000000)
  %173 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FFC2BC960000000, float %172)
  %174 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCF3E714C0000000, float 0x3DD70DA9C0000000) #4
  %175 = tail call float @llvm.fmuladd.f32(float %174, float %7, float 0xBEA8BB9FC0000000) #4
  %176 = tail call float @llvm.fmuladd.f32(float %175, float %7, float 0x3F72D77340000000) #4
  %177 = fmul float %7, %176
  %178 = fadd float %173, %177
  %179 = tail call float @_Z3expf(float %178) #3
  %180 = add i64 %4, 128
  %181 = getelementptr inbounds float, float* %1, i64 %180
  store float %179, float* %181, align 4, !tbaa !8
  %182 = tail call float @llvm.fmuladd.f32(float %9, float 0xC05FF54800000000, float 0x40076FC500000000)
  %183 = tail call float @llvm.fmuladd.f32(float %10, float 0x400E2A98A0000000, float %182)
  %184 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD3075C60000000, float 0x3DC21213E0000000) #4
  %185 = tail call float @llvm.fmuladd.f32(float %184, float %7, float 0xBE9DB60E20000000) #4
  %186 = tail call float @llvm.fmuladd.f32(float %185, float %7, float 0x3F701EEE80000000) #4
  %187 = fmul float %7, %186
  %188 = fadd float %183, %187
  %189 = tail call float @_Z3expf(float %188) #3
  %190 = add i64 %4, 136
  %191 = getelementptr inbounds float, float* %1, i64 %190
  store float %189, float* %191, align 4, !tbaa !8
  %192 = tail call float @llvm.fmuladd.f32(float %9, float -2.593600e+04, float 0xBFF3AF3B60000000)
  %193 = tail call float @llvm.fmuladd.f32(float %10, float 0x4010971C80000000, float %192)
  %194 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE044C220000000, float 0x3DC569DE40000000) #4
  %195 = tail call float @llvm.fmuladd.f32(float %194, float %7, float 0xBE9A8A7DA0000000) #4
  %196 = tail call float @llvm.fmuladd.f32(float %195, float %7, float 0x3F686B42C0000000) #4
  %197 = fmul float %7, %196
  %198 = fadd float %193, %197
  %199 = tail call float @_Z3expf(float %198) #3
  %200 = add i64 %4, 144
  %201 = getelementptr inbounds float, float* %1, i64 %200
  store float %199, float* %201, align 4, !tbaa !8
  %202 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E7979600000000, float 0x3FE47CD260000000)
  %203 = tail call float @llvm.fmuladd.f32(float %10, float 0x40111CB500000000, float %202)
  %204 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCCAD12160000000, float 0x3DB7549E80000000) #4
  %205 = tail call float @llvm.fmuladd.f32(float %204, float %7, float 0xBE923B7CA0000000) #4
  %206 = tail call float @llvm.fmuladd.f32(float %205, float %7, float 0x3F637B5240000000) #4
  %207 = fmul float %7, %206
  %208 = fadd float %203, %207
  %209 = tail call float @_Z3expf(float %208) #3
  %210 = add i64 %4, 152
  %211 = getelementptr inbounds float, float* %1, i64 %210
  store float %209, float* %211, align 4, !tbaa !8
  %212 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E0E69C00000000, float 0x401F263840000000)
  %213 = tail call float @llvm.fmuladd.f32(float %10, float 0x4008224040000000, float %212)
  %214 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCF36C9740000000, float 0x3DD74F7660000000) #4
  %215 = tail call float @llvm.fmuladd.f32(float %214, float %7, float 0xBEAA2D5400000000) #4
  %216 = tail call float @llvm.fmuladd.f32(float %215, float %7, float 0x3F752803E0000000) #4
  %217 = fmul float %7, %216
  %218 = fadd float %213, %217
  %219 = tail call float @_Z3expf(float %218) #3
  %220 = add i64 %4, 160
  %221 = getelementptr inbounds float, float* %1, i64 %220
  store float %219, float* %221, align 4, !tbaa !8
  %222 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B34BE2E0000000, float 0x40249C5960000000)
  %223 = tail call float @llvm.fmuladd.f32(float %10, float 0x400049F4A0000000, float %222)
  %224 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCFC4E7600000000, float 0x3DE0DC9F20000000) #4
  %225 = tail call float @llvm.fmuladd.f32(float %224, float %7, float 0xBEB2C3C340000000) #4
  %226 = tail call float @llvm.fmuladd.f32(float %225, float %7, float 0x3F7DFE6A60000000) #4
  %227 = fmul float %7, %226
  %228 = fadd float %223, %227
  %229 = tail call float @_Z3expf(float %228) #3
  %230 = add i64 %4, 168
  %231 = getelementptr inbounds float, float* %1, i64 %230
  store float %229, float* %231, align 4, !tbaa !8
  %232 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C91CC280000000, float 0x402AECC440000000)
  %233 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FFF4645C0000000, float %232)
  %234 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD00D92000000000, float 0x3DE4116FE0000000) #4
  %235 = tail call float @llvm.fmuladd.f32(float %234, float %7, float 0xBEB651C940000000) #4
  %236 = tail call float @llvm.fmuladd.f32(float %235, float %7, float 0x3F81D09720000000) #4
  %237 = fmul float %7, %236
  %238 = fadd float %233, %237
  %239 = tail call float @_Z3expf(float %238) #3
  %240 = add i64 %4, 176
  %241 = getelementptr inbounds float, float* %1, i64 %240
  store float %239, float* %241, align 4, !tbaa !8
  %242 = tail call float @llvm.fmuladd.f32(float %9, float 0x40C6513260000000, float 0x402E3B3160000000)
  %243 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FF1266D40000000, float %242)
  %244 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD056475E0000000, float 0x3DE95BDE60000000) #4
  %245 = tail call float @llvm.fmuladd.f32(float %244, float %7, float 0xBEBC089BE0000000) #4
  %246 = tail call float @llvm.fmuladd.f32(float %245, float %7, float 0x3F8634A9C0000000) #4
  %247 = fmul float %7, %246
  %248 = fadd float %243, %247
  %249 = tail call float @_Z3expf(float %248) #3
  %250 = add i64 %4, 184
  %251 = getelementptr inbounds float, float* %1, i64 %250
  store float %249, float* %251, align 4, !tbaa !8
  %252 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D2DFCDC0000000, float 0xC00F712BE0000000)
  %253 = tail call float @llvm.fmuladd.f32(float %10, float 0x4016834860000000, float %252)
  %254 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD17B2440000000, float 0x3DBA3A9900000000) #4
  %255 = tail call float @llvm.fmuladd.f32(float %254, float %7, float 0xBE91D28EA0000000) #4
  %256 = tail call float @llvm.fmuladd.f32(float %255, float %7, float 0x3F60BBCA20000000) #4
  %257 = fmul float %7, %256
  %258 = fadd float %253, %257
  %259 = tail call float @_Z3expf(float %258) #3
  %260 = add i64 %4, 192
  %261 = getelementptr inbounds float, float* %1, i64 %260
  store float %259, float* %261, align 4, !tbaa !8
  %262 = tail call float @llvm.fmuladd.f32(float %9, float 0x40BD7F0DA0000000, float 0x3FE43B5E80000000)
  %263 = tail call float @llvm.fmuladd.f32(float %10, float 0x40120B9180000000, float %262)
  %264 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCF1E5EE20000000, float 0x3DD5268EC0000000) #4
  %265 = tail call float @llvm.fmuladd.f32(float %264, float %7, float 0xBEA75123E0000000) #4
  %266 = tail call float @llvm.fmuladd.f32(float %265, float %7, float 0x3F72707A60000000) #4
  %267 = fmul float %7, %266
  %268 = fadd float %263, %267
  %269 = tail call float @_Z3expf(float %268) #3
  %270 = add i64 %4, 200
  %271 = getelementptr inbounds float, float* %1, i64 %270
  store float %269, float* %271, align 4, !tbaa !8
  %272 = tail call float @llvm.fmuladd.f32(float %9, float 0xC07EA52600000000, float 0xC01420DBA0000000)
  %273 = tail call float @llvm.fmuladd.f32(float %10, float 0x4017E71600000000, float %272)
  %274 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCD3998DC0000000, float 0x3DC2A5B400000000) #4
  %275 = tail call float @llvm.fmuladd.f32(float %274, float %7, float 0xBE9EAFDA00000000) #4
  %276 = tail call float @llvm.fmuladd.f32(float %275, float %7, float 0x3F70A6C580000000) #4
  %277 = fmul float %7, %276
  %278 = fadd float %273, %277
  %279 = tail call float @_Z3expf(float %278) #3
  %280 = add i64 %4, 208
  %281 = getelementptr inbounds float, float* %1, i64 %280
  store float %279, float* %281, align 4, !tbaa !8
  %282 = tail call float @llvm.fmuladd.f32(float %9, float 0x40D61047C0000000, float 0xC00BD8A960000000)
  %283 = tail call float @llvm.fmuladd.f32(float %10, float 0x40159DCF40000000, float %282)
  %284 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE2753BA0000000, float 0x3DCF52CE40000000) #4
  %285 = tail call float @llvm.fmuladd.f32(float %284, float %7, float 0xBEA7A2A060000000) #4
  %286 = tail call float @llvm.fmuladd.f32(float %285, float %7, float 0x3F78024260000000) #4
  %287 = fmul float %7, %286
  %288 = fadd float %283, %287
  %289 = tail call float @_Z3expf(float %288) #3
  %290 = add i64 %4, 216
  %291 = getelementptr inbounds float, float* %1, i64 %290
  store float %289, float* %291, align 4, !tbaa !8
  %292 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D1129CC0000000, float 0xC0267C7100000000)
  %293 = tail call float @llvm.fmuladd.f32(float %10, float 0x401A00CE80000000, float %292)
  %294 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCF4591FA0000000, float 0x3DD961D9C0000000) #4
  %295 = tail call float @llvm.fmuladd.f32(float %294, float %7, float 0xBEAFC12CE0000000) #4
  %296 = tail call float @llvm.fmuladd.f32(float %295, float %7, float 0x3F7D5648E0000000) #4
  %297 = fmul float %7, %296
  %298 = fadd float %293, %297
  %299 = tail call float @_Z3expf(float %298) #3
  %300 = add i64 %4, 224
  %301 = getelementptr inbounds float, float* %1, i64 %300
  store float %299, float* %301, align 4, !tbaa !8
  %302 = tail call float @llvm.fmuladd.f32(float %9, float 0x408CDC9000000000, float 0xC02AA06F60000000)
  %303 = tail call float @llvm.fmuladd.f32(float %10, float 0x401AEDD4C0000000, float %302)
  %304 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE0F62340000000, float 0x3DD0852CA0000000) #4
  %305 = tail call float @llvm.fmuladd.f32(float %304, float %7, float 0xBEABAE8D20000000) #4
  %306 = tail call float @llvm.fmuladd.f32(float %305, float %7, float 0x3F7E884380000000) #4
  %307 = fmul float %7, %306
  %308 = fadd float %303, %307
  %309 = tail call float @_Z3expf(float %308) #3
  %310 = add i64 %4, 232
  %311 = getelementptr inbounds float, float* %1, i64 %310
  store float %309, float* %311, align 4, !tbaa !8
  %312 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0BF283940000000, float 0xC02F07D500000000)
  %313 = tail call float @llvm.fmuladd.f32(float %10, float 0x401ED6C820000000, float %312)
  %314 = tail call float @llvm.fmuladd.f32(float %7, float 0xBCE1809100000000, float 0x3DD16223E0000000) #4
  %315 = tail call float @llvm.fmuladd.f32(float %314, float %7, float 0xBEAD7BB920000000) #4
  %316 = tail call float @llvm.fmuladd.f32(float %315, float %7, float 0x3F806A8EC0000000) #4
  br label %622

; <label>:317:                                    ; preds = %3
  %318 = tail call float @llvm.fmuladd.f32(float %9, float 0x408CAF7B40000000, float 0x3FE5DB3840000000)
  %319 = tail call float @llvm.fmuladd.f32(float %10, float 0x4002C130A0000000, float %318)
  %320 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD59F3D0E0000000, float 0x3E1CDBB200000000) #4
  %321 = tail call float @llvm.fmuladd.f32(float %320, float %7, float 0xBECB3B8080000000) #4
  %322 = tail call float @llvm.fmuladd.f32(float %321, float %7, float 0x3F70581760000000) #4
  %323 = fmul float %7, %322
  %324 = fadd float %319, %323
  %325 = tail call float @_Z3expf(float %324) #3
  %326 = getelementptr inbounds float, float* %1, i64 %4
  store float %325, float* %326, align 4, !tbaa !8
  %327 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D8E06A40000000, float 0xBFDC9673A0000000)
  %328 = tail call float @llvm.fmuladd.f32(float %10, float 2.500000e+00, float %327)
  %329 = tail call float @llvm.fmuladd.f32(float %7, float 0xBB4C09FB40000000, float 0x3C0C4B8820000000) #4
  %330 = tail call float @llvm.fmuladd.f32(float %329, float %7, float 0xBCB7F85EA0000000) #4
  %331 = tail call float @llvm.fmuladd.f32(float %330, float %7, float 0x3D58D112C0000000) #4
  %332 = fmul float %7, %331
  %333 = fadd float %328, %332
  %334 = tail call float @_Z3expf(float %333) #3
  %335 = add i64 %4, 8
  %336 = getelementptr inbounds float, float* %1, i64 %335
  store float %334, float* %336, align 4, !tbaa !8
  %337 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0DC7090A0000000, float 0x40006A5C20000000)
  %338 = tail call float @llvm.fmuladd.f32(float %10, float 0x4009589C60000000, float %337)
  %339 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D3DBBA8A0000000, float 0xBE018BEB80000000) #4
  %340 = tail call float @llvm.fmuladd.f32(float %339, float %7, float 0x3EB2934A60000000) #4
  %341 = tail call float @llvm.fmuladd.f32(float %340, float %7, float 0xBF5ADD3AE0000000) #4
  %342 = fmul float %7, %341
  %343 = fadd float %338, %342
  %344 = tail call float @_Z3expf(float %343) #3
  %345 = add i64 %4, 16
  %346 = getelementptr inbounds float, float* %1, i64 %345
  store float %344, float* %346, align 4, !tbaa !8
  %347 = tail call float @llvm.fmuladd.f32(float %9, float 0x40909FC640000000, float 0x400D42EB80000000)
  %348 = tail call float @llvm.fmuladd.f32(float %10, float 0x400E427880000000, float %347)
  %349 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D46D361A0000000, float 0xBE0BB876E0000000) #4
  %350 = tail call float @llvm.fmuladd.f32(float %349, float %7, float 0x3EBB88F920000000) #4
  %351 = tail call float @llvm.fmuladd.f32(float %350, float %7, float 0xBF588C9B60000000) #4
  %352 = fmul float %7, %351
  %353 = fadd float %348, %352
  %354 = tail call float @_Z3expf(float %353) #3
  %355 = add i64 %4, 24
  %356 = getelementptr inbounds float, float* %1, i64 %355
  store float %354, float* %356, align 4, !tbaa !8
  %357 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0AC3E2940000000, float 0xBFBA9ADBE0000000)
  %358 = tail call float @llvm.fmuladd.f32(float %10, float 0x400FEFA5C0000000, float %357)
  %359 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D3332BDC0000000, float 0xBDF639CD40000000) #4
  %360 = tail call float @llvm.fmuladd.f32(float %359, float %7, float 0x3EA9D34C60000000) #4
  %361 = tail call float @llvm.fmuladd.f32(float %360, float %7, float 0xBF53ABED80000000) #4
  %362 = fmul float %7, %361
  %363 = fadd float %358, %362
  %364 = tail call float @_Z3expf(float %363) #3
  %365 = add i64 %4, 32
  %366 = getelementptr inbounds float, float* %1, i64 %365
  store float %364, float* %366, align 4, !tbaa !8
  %367 = tail call float @llvm.fmuladd.f32(float %9, float 0x40DD956E80000000, float 0xBFEB2B45A0000000)
  %368 = tail call float @llvm.fmuladd.f32(float %10, float 0x4010CB6860000000, float %367)
  %369 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D38F03960000000, float 0xBDFF6D7340000000) #4
  %370 = tail call float @llvm.fmuladd.f32(float %369, float %7, float 0x3EB23B7C60000000) #4
  %371 = tail call float @llvm.fmuladd.f32(float %370, float %7, float 0xBF50AEB640000000) #4
  %372 = fmul float %7, %371
  %373 = fadd float %368, %372
  %374 = tail call float @_Z3expf(float %373) #3
  %375 = add i64 %4, 40
  %376 = getelementptr inbounds float, float* %1, i64 %375
  store float %374, float* %376, align 4, !tbaa !8
  %377 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0726CEDC0000000, float 0x400DBBB980000000)
  %378 = tail call float @llvm.fmuladd.f32(float %10, float 0x4011350A80000000, float %377)
  %379 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D6058DBA0000000, float 0xBE2160B200000000) #4
  %380 = tail call float @llvm.fmuladd.f32(float %379, float %7, float 0x3ECD94D8C0000000) #4
  %381 = tail call float @llvm.fmuladd.f32(float %380, float %7, float 0xBF6373D060000000) #4
  %382 = fmul float %7, %381
  %383 = fadd float %378, %382
  %384 = tail call float @_Z3expf(float %383) #3
  %385 = add i64 %4, 48
  %386 = getelementptr inbounds float, float* %1, i64 %385
  store float %384, float* %386, align 4, !tbaa !8
  %387 = tail call float @llvm.fmuladd.f32(float %9, float 0x40D149A540000000, float 0x400B7AFBE0000000)
  %388 = tail call float @llvm.fmuladd.f32(float %10, float 0x40111ABD40000000, float %387)
  %389 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D5E584C60000000, float 0xBE1EE41580000000) #4
  %390 = tail call float @llvm.fmuladd.f32(float %389, float %7, float 0x3EC7652DA0000000) #4
  %391 = tail call float @llvm.fmuladd.f32(float %390, float %7, float 0xBF31C98640000000) #4
  %392 = fmul float %7, %391
  %393 = fadd float %388, %392
  %394 = tail call float @_Z3expf(float %393) #3
  %395 = add i64 %4, 56
  %396 = getelementptr inbounds float, float* %1, i64 %395
  store float %394, float* %396, align 4, !tbaa !8
  %397 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0F148D4C0000000, float 0x4000AC0E00000000)
  %398 = tail call float @llvm.fmuladd.f32(float %10, float 0x400BEB2500000000, float %397)
  %399 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD33C9F9C0000000, float 0x3DF21BCB80000000) #4
  %400 = tail call float @llvm.fmuladd.f32(float %399, float %7, float 0xBE92E41B40000000) #4
  %401 = tail call float @llvm.fmuladd.f32(float %400, float %7, float 0x3F25390F00000000) #4
  %402 = fmul float %7, %401
  %403 = fadd float %398, %402
  %404 = tail call float @_Z3expf(float %403) #3
  %405 = add i64 %4, 64
  %406 = getelementptr inbounds float, float* %1, i64 %405
  store float %404, float* %406, align 4, !tbaa !8
  %407 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E6768140000000, float 0x3FF9002160000000)
  %408 = tail call float @llvm.fmuladd.f32(float %10, float 0x400E19F740000000, float %407)
  %409 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D37BF8FA0000000, float 0xBDF60D7F00000000) #4
  %410 = tail call float @llvm.fmuladd.f32(float %409, float %7, float 0x3E9F42AA40000000) #4
  %411 = tail call float @llvm.fmuladd.f32(float %410, float %7, float 0x3F3FBF7D20000000) #4
  %412 = fmul float %7, %411
  %413 = fadd float %408, %412
  %414 = tail call float @_Z3expf(float %413) #3
  %415 = add i64 %4, 72
  %416 = getelementptr inbounds float, float* %1, i64 %415
  store float %414, float* %416, align 4, !tbaa !8
  %417 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E8A81A20000000, float 0xBFE89C9F60000000)
  %418 = tail call float @llvm.fmuladd.f32(float %10, float 0x4010CB5EE0000000, float %417)
  %419 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D3B58ED20000000, float 0xBE03267920000000) #4
  %420 = tail call float @llvm.fmuladd.f32(float %419, float %7, float 0x3EB7056240000000) #4
  %421 = tail call float @llvm.fmuladd.f32(float %420, float %7, float 0xBF53632660000000) #4
  %422 = fmul float %7, %421
  %423 = fadd float %418, %422
  %424 = tail call float @_Z3expf(float %423) #3
  %425 = add i64 %4, 80
  %426 = getelementptr inbounds float, float* %1, i64 %425
  store float %424, float* %426, align 4, !tbaa !8
  %427 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D00F3FE0000000, float 0x3FF9AC4BA0000000)
  %428 = tail call float @llvm.fmuladd.f32(float %10, float 0x400D638360000000, float %427)
  %429 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D41E69B20000000, float 0xBE03AC9FC0000000) #4
  %430 = tail call float @llvm.fmuladd.f32(float %429, float %7, float 0x3EB005D9A0000000) #4
  %431 = tail call float @llvm.fmuladd.f32(float %430, float %7, float 0x3F50794580000000) #4
  %432 = fmul float %7, %431
  %433 = fadd float %428, %432
  %434 = tail call float @_Z3expf(float %433) #3
  %435 = add i64 %4, 88
  %436 = getelementptr inbounds float, float* %1, i64 %435
  store float %434, float* %436, align 4, !tbaa !8
  %437 = tail call float @llvm.fmuladd.f32(float %9, float 0x40C40352E0000000, float 0xC01290B1E0000000)
  %438 = tail call float @llvm.fmuladd.f32(float %10, float 0x4014997920000000, float %437)
  %439 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D6D533A80000000, float 0xBE31598140000000) #4
  %440 = tail call float @llvm.fmuladd.f32(float %439, float %7, float 0x3EE1308EA0000000) #4
  %441 = tail call float @llvm.fmuladd.f32(float %440, float %7, float 0xBF7BFF87C0000000) #4
  %442 = fmul float %7, %441
  %443 = fadd float %438, %442
  %444 = tail call float @_Z3expf(float %443) #3
  %445 = add i64 %4, 96
  %446 = getelementptr inbounds float, float* %1, i64 %445
  store float %444, float* %446, align 4, !tbaa !8
  %447 = tail call float @llvm.fmuladd.f32(float %9, float 0x40CC040B00000000, float 0x400C1138E0000000)
  %448 = tail call float @llvm.fmuladd.f32(float %10, float 0x400CA2E280000000, float %447)
  %449 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD297510C0000000, float 0x3DD4C6BD20000000) #4
  %450 = tail call float @llvm.fmuladd.f32(float %449, float %7, float 0x3E86BEE9A0000000) #4
  %451 = tail call float @llvm.fmuladd.f32(float %450, float %7, float 0xBF34000480000000) #4
  %452 = fmul float %7, %451
  %453 = fadd float %448, %452
  %454 = tail call float @_Z3expf(float %453) #3
  %455 = add i64 %4, 104
  %456 = getelementptr inbounds float, float* %1, i64 %455
  store float %454, float* %456, align 4, !tbaa !8
  %457 = tail call float @llvm.fmuladd.f32(float %9, float 0x40E79E7F00000000, float 0x4023CD56C0000000)
  %458 = tail call float @llvm.fmuladd.f32(float %10, float 0x4002DAAC20000000, float %457)
  %459 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD002DDB80000000, float 0x3DEC2A6C00000000) #4
  %460 = tail call float @llvm.fmuladd.f32(float %459, float %7, float 0xBEB3EB3EA0000000) #4
  %461 = tail call float @llvm.fmuladd.f32(float %460, float %7, float 0x3F72668420000000) #4
  %462 = fmul float %7, %461
  %463 = fadd float %458, %462
  %464 = tail call float @_Z3expf(float %463) #3
  %465 = add i64 %4, 112
  %466 = getelementptr inbounds float, float* %1, i64 %465
  store float %464, float* %466, align 4, !tbaa !8
  %467 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0ADFF2140000000, float 0x400B27ACC0000000)
  %468 = tail call float @llvm.fmuladd.f32(float %10, float 0x4010E27E80000000, float %467)
  %469 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D4E8615E0000000, float 0xBE130FC860000000) #4
  %470 = tail call float @llvm.fmuladd.f32(float %469, float %7, float 0x3EC34408C0000000) #4
  %471 = tail call float @llvm.fmuladd.f32(float %470, float %7, float 0xBF5A930120000000) #4
  %472 = fmul float %7, %471
  %473 = fadd float %468, %472
  %474 = tail call float @_Z3expf(float %473) #3
  %475 = add i64 %4, 120
  %476 = getelementptr inbounds float, float* %1, i64 %475
  store float %474, float* %476, align 4, !tbaa !8
  %477 = tail call float @llvm.fmuladd.f32(float %9, float 0x40CBF27A80000000, float 0x3FE34A3E40000000)
  %478 = tail call float @llvm.fmuladd.f32(float %10, float 0x40132CC5C0000000, float %477)
  %479 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D672E8340000000, float 0xBE2B2679E0000000) #4
  %480 = tail call float @llvm.fmuladd.f32(float %479, float %7, float 0x3EDA170840000000) #4
  %481 = tail call float @llvm.fmuladd.f32(float %480, float %7, float 0xBF744AD200000000) #4
  %482 = fmul float %7, %481
  %483 = fadd float %478, %482
  %484 = tail call float @_Z3expf(float %483) #3
  %485 = add i64 %4, 128
  %486 = getelementptr inbounds float, float* %1, i64 %485
  store float %484, float* %486, align 4, !tbaa !8
  %487 = tail call float @llvm.fmuladd.f32(float %9, float 0xC08E94CF00000000, float 0x402A4DEA20000000)
  %488 = tail call float @llvm.fmuladd.f32(float %10, float 0x4000D98180000000, float %487)
  %489 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D3D362C60000000, float 0xBE051FDD40000000) #4
  %490 = tail call float @llvm.fmuladd.f32(float %489, float %7, float 0x3EADDADAA0000000) #4
  %491 = tail call float @llvm.fmuladd.f32(float %490, float %7, float 0x3F6D8F2600000000) #4
  %492 = fmul float %7, %491
  %493 = fadd float %488, %492
  %494 = tail call float @_Z3expf(float %493) #3
  %495 = add i64 %4, 136
  %496 = getelementptr inbounds float, float* %1, i64 %495
  store float %494, float* %496, align 4, !tbaa !8
  %497 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D9CF3EC0000000, float 0x402BE12100000000)
  %498 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FE9E0B720000000, float %497)
  %499 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD5DE8C6E0000000, float 0x3E240DD900000000) #4
  %500 = tail call float @llvm.fmuladd.f32(float %499, float %7, float 0xBED8D40C20000000) #4
  %501 = tail call float @llvm.fmuladd.f32(float %500, float %7, float 0x3F87EC1800000000) #4
  %502 = fmul float %7, %501
  %503 = fadd float %498, %502
  %504 = tail call float @_Z3expf(float %503) #3
  %505 = add i64 %4, 144
  %506 = getelementptr inbounds float, float* %1, i64 %505
  store float %504, float* %506, align 4, !tbaa !8
  %507 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E7BDB960000000, float 0x4017AE7B00000000)
  %508 = tail call float @llvm.fmuladd.f32(float %10, float 0x400A409C60000000, float %507)
  %509 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D2BA34D60000000, float 0xBDDBBA1D20000000) #4
  %510 = tail call float @llvm.fmuladd.f32(float %509, float %7, float 0xBE9AAE7FE0000000) #4
  %511 = tail call float @llvm.fmuladd.f32(float %510, float %7, float 0x3F6C935E60000000) #4
  %512 = fmul float %7, %511
  %513 = fadd float %508, %512
  %514 = tail call float @_Z3expf(float %513) #3
  %515 = add i64 %4, 152
  %516 = getelementptr inbounds float, float* %1, i64 %515
  store float %514, float* %516, align 4, !tbaa !8
  %517 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0E1057B20000000, float 0x4021056580000000)
  %518 = tail call float @llvm.fmuladd.f32(float %10, float 0x4009B321A0000000, float %517)
  %519 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D69E31600000000, float 0xBE299A2640000000) #4
  %520 = tail call float @llvm.fmuladd.f32(float %519, float %7, float 0x3ED21EBBA0000000) #4
  %521 = tail call float @llvm.fmuladd.f32(float %520, float %7, float 0x3F48D17F20000000) #4
  %522 = fmul float %7, %521
  %523 = fadd float %518, %522
  %524 = tail call float @_Z3expf(float %523) #3
  %525 = add i64 %4, 160
  %526 = getelementptr inbounds float, float* %1, i64 %525
  store float %524, float* %526, align 4, !tbaa !8
  %527 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0B3E1C6A0000000, float 0x401063AAC0000000)
  %528 = tail call float @llvm.fmuladd.f32(float %10, float 0x400FAC71E0000000, float %527)
  %529 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D77BD4180000000, float 0xBE38C0BFC0000000) #4
  %530 = tail call float @llvm.fmuladd.f32(float %529, float %7, float 0x3EE3F52280000000) #4
  %531 = tail call float @llvm.fmuladd.f32(float %530, float %7, float 0xBF6F0244A0000000) #4
  %532 = fmul float %7, %531
  %533 = fadd float %528, %532
  %534 = tail call float @_Z3expf(float %533) #3
  %535 = add i64 %4, 168
  %536 = getelementptr inbounds float, float* %1, i64 %535
  store float %534, float* %536, align 4, !tbaa !8
  %537 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C914D040000000, float 0x4012D42EA0000000)
  %538 = tail call float @llvm.fmuladd.f32(float %10, float 0x401139D220000000, float %537)
  %539 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D74469A00000000, float 0xBE35718E40000000) #4
  %540 = tail call float @llvm.fmuladd.f32(float %539, float %7, float 0x3EE1605BC0000000) #4
  %541 = tail call float @llvm.fmuladd.f32(float %540, float %7, float 0xBF6125F4E0000000) #4
  %542 = fmul float %7, %541
  %543 = fadd float %538, %542
  %544 = tail call float @_Z3expf(float %543) #3
  %545 = add i64 %4, 176
  %546 = getelementptr inbounds float, float* %1, i64 %545
  store float %544, float* %546, align 4, !tbaa !8
  %547 = tail call float @llvm.fmuladd.f32(float %9, float 0x40C6811A40000000, float 0x400555A760000000)
  %548 = tail call float @llvm.fmuladd.f32(float %10, float 0x40112A6B40000000, float %547)
  %549 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D77A24400000000, float 0xBE395B6420000000) #4
  %550 = tail call float @llvm.fmuladd.f32(float %549, float %7, float 0x3EE4F3AEE0000000) #4
  %551 = tail call float @llvm.fmuladd.f32(float %550, float %7, float 0xBF6688C920000000) #4
  %552 = fmul float %7, %551
  %553 = fadd float %548, %552
  %554 = tail call float @_Z3expf(float %553) #3
  %555 = add i64 %4, 184
  %556 = getelementptr inbounds float, float* %1, i64 %555
  store float %554, float* %556, align 4, !tbaa !8
  %557 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D396DCC0000000, float 0x4028FB17E0000000)
  %558 = tail call float @llvm.fmuladd.f32(float %10, float 0x4002038680000000, float %557)
  %559 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD51D37B00000000, float 0x3E18BBA200000000) #4
  %560 = tail call float @llvm.fmuladd.f32(float %559, float %7, float 0xBED0967CE0000000) #4
  %561 = tail call float @llvm.fmuladd.f32(float %560, float %7, float 0x3F82142860000000) #4
  %562 = fmul float %7, %561
  %563 = fadd float %558, %562
  %564 = tail call float @_Z3expf(float %563) #3
  %565 = add i64 %4, 192
  %566 = getelementptr inbounds float, float* %1, i64 %565
  store float %564, float* %566, align 4, !tbaa !8
  %567 = tail call float @llvm.fmuladd.f32(float %9, float 0x40BB82EB00000000, float 0x40286E6960000000)
  %568 = tail call float @llvm.fmuladd.f32(float %10, float 0x4001163160000000, float %567)
  %569 = tail call float @llvm.fmuladd.f32(float %7, float 0xBD3C5A4680000000, float 0x3E0AC134E0000000) #4
  %570 = tail call float @llvm.fmuladd.f32(float %569, float %7, float 0xBEC851D2A0000000) #4
  %571 = tail call float @llvm.fmuladd.f32(float %570, float %7, float 0x3F828DC0E0000000) #4
  %572 = fmul float %7, %571
  %573 = fadd float %568, %572
  %574 = tail call float @_Z3expf(float %573) #3
  %575 = add i64 %4, 200
  %576 = getelementptr inbounds float, float* %1, i64 %575
  store float %574, float* %576, align 4, !tbaa !8
  %577 = tail call float @llvm.fmuladd.f32(float %9, float 0xC097C5E800000000, float 0x4023249580000000)
  %578 = tail call float @llvm.fmuladd.f32(float %10, float 0x400B45C280000000, float %577)
  %579 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D442D6C00000000, float 0x3E047F4C00000000) #4
  %580 = tail call float @llvm.fmuladd.f32(float %579, float %7, float 0x3E9527EEA0000000) #4
  %581 = tail call float @llvm.fmuladd.f32(float %580, float %7, float 0x3F75FE1B00000000) #4
  %582 = fmul float %7, %581
  %583 = fadd float %578, %582
  %584 = tail call float @_Z3expf(float %583) #3
  %585 = add i64 %4, 208
  %586 = getelementptr inbounds float, float* %1, i64 %585
  store float %584, float* %586, align 4, !tbaa !8
  %587 = tail call float @llvm.fmuladd.f32(float %9, float 0x40D5113840000000, float 0x4010697D00000000)
  %588 = tail call float @llvm.fmuladd.f32(float %10, float 0x4012EAF760000000, float %587)
  %589 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D734A7280000000, float 0xBE3490B360000000) #4
  %590 = tail call float @llvm.fmuladd.f32(float %589, float %7, float 0x3EE09D5A40000000) #4
  %591 = tail call float @llvm.fmuladd.f32(float %590, float %7, float 0xBF5A28CE40000000) #4
  %592 = fmul float %7, %591
  %593 = fadd float %588, %592
  %594 = tail call float @_Z3expf(float %593) #3
  %595 = add i64 %4, 216
  %596 = getelementptr inbounds float, float* %1, i64 %595
  store float %594, float* %596, align 4, !tbaa !8
  %597 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0D2CB6840000000, float 0x40312C57C0000000)
  %598 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FF5CF9980000000, float %597)
  %599 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D6BE0A940000000, float 0xBE27E07860000000) #4
  %600 = tail call float @llvm.fmuladd.f32(float %599, float %7, float 0x3EC178DF40000000) #4
  %601 = tail call float @llvm.fmuladd.f32(float %600, float %7, float 0x3F844A1300000000) #4
  %602 = fmul float %7, %601
  %603 = fadd float %598, %602
  %604 = tail call float @_Z3expf(float %603) #3
  %605 = add i64 %4, 224
  %606 = getelementptr inbounds float, float* %1, i64 %605
  store float %604, float* %606, align 4, !tbaa !8
  %607 = tail call float @llvm.fmuladd.f32(float %9, float 0xC090CB4DE0000000, float 0x4030253500000000)
  %608 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FF7E495E0000000, float %607)
  %609 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D592F7C20000000, float 0xBE17E4A080000000) #4
  %610 = tail call float @llvm.fmuladd.f32(float %609, float %7, float 0x3EA9178B60000000) #4
  %611 = tail call float @llvm.fmuladd.f32(float %610, float %7, float 0x3F856D6900000000) #4
  %612 = fmul float %7, %611
  %613 = fadd float %608, %612
  %614 = tail call float @_Z3expf(float %613) #3
  %615 = add i64 %4, 232
  %616 = getelementptr inbounds float, float* %1, i64 %615
  store float %614, float* %616, align 4, !tbaa !8
  %617 = tail call float @llvm.fmuladd.f32(float %9, float 0xC0C4242C40000000, float 0x403522D320000000)
  %618 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FF0C92F40000000, float %617)
  %619 = tail call float @llvm.fmuladd.f32(float %7, float 0x3D607CC860000000, float 0xBE1C0DB120000000) #4
  %620 = tail call float @llvm.fmuladd.f32(float %619, float %7, float 0x3E9A54F4A0000000) #4
  %621 = tail call float @llvm.fmuladd.f32(float %620, float %7, float 0x3F8AA218A0000000) #4
  br label %622

; <label>:622:                                    ; preds = %317, %12
  %623 = phi float [ %621, %317 ], [ %316, %12 ]
  %624 = phi float [ %618, %317 ], [ %313, %12 ]
  %625 = fmul float %7, %623
  %626 = fadd float %624, %625
  %627 = tail call float @_Z3expf(float %626) #3
  %628 = add i64 %4, 240
  %629 = getelementptr inbounds float, float* %1, i64 %628
  store float %627, float* %629, align 4, !tbaa !8
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
!6 = !{!"float*", !"float*", !"float"}
!7 = !{!"const", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{float 2.500000e+00}
