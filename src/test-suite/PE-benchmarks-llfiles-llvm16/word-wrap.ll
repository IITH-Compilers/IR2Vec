; ModuleID = 'PE-benchmarks/word-wrap.cpp'
source_filename = "PE-benchmarks/word-wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"Line number \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c": From word no. \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@__const.main.l = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 2, i32 5], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_word_wrap.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z13solveWordWrapPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = load i32, ptr %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call ptr @llvm.stacksave()
  store ptr %22, ptr %7, align 8
  %23 = mul nuw i64 %18, %21
  %24 = alloca i32, i64 %23, align 16
  store i64 %18, ptr %8, align 8
  store i64 %21, ptr %9, align 8
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = load i32, ptr %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = mul nuw i64 %27, %30
  %32 = alloca i32, i64 %31, align 16
  store i64 %27, ptr %10, align 8
  store i64 %30, ptr %11, align 8
  %33 = load i32, ptr %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, ptr %12, align 8
  %37 = load i32, ptr %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, ptr %13, align 8
  store i32 1, ptr %14, align 4
  br label %41

41:                                               ; preds = %96, %3
  %42 = load i32, ptr %14, align 4
  %43 = load i32, ptr %5, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %99

45:                                               ; preds = %41
  %46 = load i32, ptr %6, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = load i32, ptr %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = sub nsw i32 %46, %52
  %54 = load i32, ptr %14, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, %21
  %57 = getelementptr inbounds i32, ptr %24, i64 %56
  %58 = load i32, ptr %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  store i32 %53, ptr %60, align 4
  %61 = load i32, ptr %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %15, align 4
  br label %63

63:                                               ; preds = %92, %45
  %64 = load i32, ptr %15, align 4
  %65 = load i32, ptr %5, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %63
  %68 = load i32, ptr %14, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, %21
  %71 = getelementptr inbounds i32, ptr %24, i64 %70
  %72 = load i32, ptr %15, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %71, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %4, align 8
  %78 = load i32, ptr %15, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %77, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = sub nsw i32 %76, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, ptr %14, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, %21
  %88 = getelementptr inbounds i32, ptr %24, i64 %87
  %89 = load i32, ptr %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %88, i64 %90
  store i32 %84, ptr %91, align 4
  br label %92

92:                                               ; preds = %67
  %93 = load i32, ptr %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %15, align 4
  br label %63, !llvm.loop !6

95:                                               ; preds = %63
  br label %96

96:                                               ; preds = %95
  %97 = load i32, ptr %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %14, align 4
  br label %41, !llvm.loop !8

99:                                               ; preds = %41
  store i32 1, ptr %14, align 4
  br label %100

100:                                              ; preds = %181, %99
  %101 = load i32, ptr %14, align 4
  %102 = load i32, ptr %5, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %184

104:                                              ; preds = %100
  %105 = load i32, ptr %14, align 4
  store i32 %105, ptr %15, align 4
  br label %106

106:                                              ; preds = %177, %104
  %107 = load i32, ptr %15, align 4
  %108 = load i32, ptr %5, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %180

110:                                              ; preds = %106
  %111 = load i32, ptr %14, align 4
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %21
  %114 = getelementptr inbounds i32, ptr %24, i64 %113
  %115 = load i32, ptr %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %114, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %110
  %121 = load i32, ptr %14, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %122, %30
  %124 = getelementptr inbounds i32, ptr %32, i64 %123
  %125 = load i32, ptr %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %124, i64 %126
  store i32 2147483647, ptr %127, align 4
  br label %176

128:                                              ; preds = %110
  %129 = load i32, ptr %15, align 4
  %130 = load i32, ptr %5, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %128
  %133 = load i32, ptr %14, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, %21
  %136 = getelementptr inbounds i32, ptr %24, i64 %135
  %137 = load i32, ptr %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %136, i64 %138
  %140 = load i32, ptr %139, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %132
  %143 = load i32, ptr %14, align 4
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, %30
  %146 = getelementptr inbounds i32, ptr %32, i64 %145
  %147 = load i32, ptr %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %146, i64 %148
  store i32 0, ptr %149, align 4
  br label %175

150:                                              ; preds = %132, %128
  %151 = load i32, ptr %14, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %21
  %154 = getelementptr inbounds i32, ptr %24, i64 %153
  %155 = load i32, ptr %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %154, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %14, align 4
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %160, %21
  %162 = getelementptr inbounds i32, ptr %24, i64 %161
  %163 = load i32, ptr %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %162, i64 %164
  %166 = load i32, ptr %165, align 4
  %167 = mul nsw i32 %158, %166
  %168 = load i32, ptr %14, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, %30
  %171 = getelementptr inbounds i32, ptr %32, i64 %170
  %172 = load i32, ptr %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %171, i64 %173
  store i32 %167, ptr %174, align 4
  br label %175

175:                                              ; preds = %150, %142
  br label %176

176:                                              ; preds = %175, %120
  br label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %15, align 4
  br label %106, !llvm.loop !9

180:                                              ; preds = %106
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %14, align 4
  br label %100, !llvm.loop !10

184:                                              ; preds = %100
  %185 = getelementptr inbounds i32, ptr %36, i64 0
  store i32 0, ptr %185, align 16
  store i32 1, ptr %15, align 4
  br label %186

186:                                              ; preds = %262, %184
  %187 = load i32, ptr %15, align 4
  %188 = load i32, ptr %5, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %265

190:                                              ; preds = %186
  %191 = load i32, ptr %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, ptr %36, i64 %192
  store i32 2147483647, ptr %193, align 4
  store i32 1, ptr %14, align 4
  br label %194

194:                                              ; preds = %258, %190
  %195 = load i32, ptr %14, align 4
  %196 = load i32, ptr %15, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %261

198:                                              ; preds = %194
  %199 = load i32, ptr %14, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %36, i64 %201
  %203 = load i32, ptr %202, align 4
  %204 = icmp ne i32 %203, 2147483647
  br i1 %204, label %205, label %257

205:                                              ; preds = %198
  %206 = load i32, ptr %14, align 4
  %207 = sext i32 %206 to i64
  %208 = mul nsw i64 %207, %30
  %209 = getelementptr inbounds i32, ptr %32, i64 %208
  %210 = load i32, ptr %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %209, i64 %211
  %213 = load i32, ptr %212, align 4
  %214 = icmp ne i32 %213, 2147483647
  br i1 %214, label %215, label %257

215:                                              ; preds = %205
  %216 = load i32, ptr %14, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, ptr %36, i64 %218
  %220 = load i32, ptr %219, align 4
  %221 = load i32, ptr %14, align 4
  %222 = sext i32 %221 to i64
  %223 = mul nsw i64 %222, %30
  %224 = getelementptr inbounds i32, ptr %32, i64 %223
  %225 = load i32, ptr %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, ptr %224, i64 %226
  %228 = load i32, ptr %227, align 4
  %229 = add nsw i32 %220, %228
  %230 = load i32, ptr %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %36, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = icmp slt i32 %229, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %215
  %236 = load i32, ptr %14, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, ptr %36, i64 %238
  %240 = load i32, ptr %239, align 4
  %241 = load i32, ptr %14, align 4
  %242 = sext i32 %241 to i64
  %243 = mul nsw i64 %242, %30
  %244 = getelementptr inbounds i32, ptr %32, i64 %243
  %245 = load i32, ptr %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %244, i64 %246
  %248 = load i32, ptr %247, align 4
  %249 = add nsw i32 %240, %248
  %250 = load i32, ptr %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %36, i64 %251
  store i32 %249, ptr %252, align 4
  %253 = load i32, ptr %14, align 4
  %254 = load i32, ptr %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, ptr %40, i64 %255
  store i32 %253, ptr %256, align 4
  br label %257

257:                                              ; preds = %235, %215, %205, %198
  br label %258

258:                                              ; preds = %257
  %259 = load i32, ptr %14, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr %14, align 4
  br label %194, !llvm.loop !11

261:                                              ; preds = %194
  br label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %15, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %15, align 4
  br label %186, !llvm.loop !12

265:                                              ; preds = %186
  %266 = load i32, ptr %5, align 4
  %267 = call noundef i32 @_Z13printSolutionPii(ptr noundef %40, i32 noundef %266)
  %268 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore(ptr %268)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #5

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z13printSolutionPii(ptr noundef %0, i32 noundef %1) #4 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call noundef i32 @_Z13printSolutionPii(ptr noundef %14, i32 noundef %20)
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %5, align 4
  br label %23

23:                                               ; preds = %13, %12
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %25 = load i32, ptr %5, align 4
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef %25)
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef @.str.1)
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef %32)
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef @.str.2)
  %35 = load i32, ptr %4, align 4
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef %35)
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %38 = load i32, ptr %5, align 4
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #6 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.l, i64 16, i1 false)
  store i32 4, ptr %3, align 4
  store i32 6, ptr %4, align 4
  %5 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 0
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %4, align 4
  call void @_Z13solveWordWrapPiii(ptr noundef %5, i32 noundef %6, i32 noundef %7)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_word_wrap.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230610113410+7cbf1a259152-1~exp1~20230610233423.102)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
