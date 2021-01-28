; ModuleID = 'shoc-1.1.5-Sort-bottom_scan.cl'
source_filename = "shoc-1.1.5-Sort-bottom_scan.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@bottom_scan.l_scanned_seeds = internal unnamed_addr global [16 x i32] undef, align 16
@bottom_scan.l_block_counts = internal unnamed_addr global [16 x i32] undef, align 16

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @bottom_scan(i32* nocapture readonly, i32* nocapture readonly, i32* nocapture, i32, i32*, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %7 = alloca [16 x i32], align 16
  %8 = bitcast [16 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #5
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 64, i32 16, i1 false)
  %9 = bitcast i32* %0 to <4 x i32>*
  %10 = sdiv i32 %3, 4
  %11 = sext i32 %10 to i64
  %12 = tail call i64 @_Z14get_num_groupsj(i32 0) #6
  %13 = udiv i64 %11, %12
  %14 = tail call i64 @_Z12get_group_idj(i32 0) #6
  %15 = shl i64 %13, 32
  %16 = ashr exact i64 %15, 32
  %17 = mul i64 %16, %14
  %18 = trunc i64 %17 to i32
  %19 = add i64 %12, -1
  %20 = icmp eq i64 %14, %19
  %21 = trunc i64 %13 to i32
  %22 = add nsw i32 %18, %21
  %23 = select i1 %20, i32 %10, i32 %22
  %24 = and i64 %17, 4294967295
  %25 = tail call i64 @_Z12get_local_idj(i32 0) #6
  %26 = add i64 %24, %25
  %27 = icmp ult i64 %25, 16
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %6
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 %25
  store i32 0, i32* %29, align 4, !tbaa !8
  %30 = mul i64 %25, %12
  %31 = add i64 %30, %14
  %32 = getelementptr inbounds i32, i32* %1, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_scanned_seeds, i64 0, i64 %25
  store i32 %33, i32* %34, align 4, !tbaa !8
  br label %35

; <label>:35:                                     ; preds = %28, %6
  tail call void @_Z7barrierj(i32 1) #7
  %36 = icmp sgt i32 %23, %18
  br i1 %36, label %37, label %300

; <label>:37:                                     ; preds = %35
  %38 = and i32 %5, 31
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 1
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 2
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 3
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 5
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 6
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 7
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 8
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 9
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 10
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 11
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  br label %71

; <label>:71:                                     ; preds = %37, %292
  %72 = phi i64 [ %26, %37 ], [ %298, %292 ]
  %73 = phi <4 x i32> [ undef, %37 ], [ %165, %292 ]
  %74 = phi <4 x i32> [ undef, %37 ], [ %164, %292 ]
  %75 = phi i64 [ %17, %37 ], [ %294, %292 ]
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 64, i32 16, i1 false)
  %76 = trunc i64 %72 to i32
  %77 = icmp sgt i32 %23, %76
  br i1 %77, label %78, label %131

; <label>:78:                                     ; preds = %71
  %79 = shl i64 %72, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds <4 x i32>, <4 x i32>* %9, i64 %80
  %82 = load <4 x i32>, <4 x i32>* %81, align 16, !tbaa !12
  %83 = extractelement <4 x i32> %82, i64 0
  %84 = lshr i32 %83, %38
  %85 = and i32 %84, 15
  %86 = insertelement <4 x i32> undef, i32 %85, i64 0
  %87 = extractelement <4 x i32> %82, i64 1
  %88 = lshr i32 %87, %38
  %89 = and i32 %88, 15
  %90 = insertelement <4 x i32> %86, i32 %89, i64 1
  %91 = extractelement <4 x i32> %82, i64 2
  %92 = lshr i32 %91, %38
  %93 = and i32 %92, 15
  %94 = insertelement <4 x i32> %90, i32 %93, i64 2
  %95 = extractelement <4 x i32> %82, i64 3
  %96 = lshr i32 %95, %38
  %97 = and i32 %96, 15
  %98 = insertelement <4 x i32> %94, i32 %97, i64 3
  %99 = zext i32 %85 to i64
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4, !tbaa !8
  %103 = zext i32 %89 to i64
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4, !tbaa !8
  %107 = zext i32 %93 to i64
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4, !tbaa !8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4, !tbaa !8
  %111 = zext i32 %97 to i64
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4, !tbaa !8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4, !tbaa !8
  %115 = load i32, i32* %39, align 16, !tbaa !8
  %116 = load i32, i32* %40, align 4, !tbaa !8
  %117 = load i32, i32* %41, align 8, !tbaa !8
  %118 = load i32, i32* %42, align 4, !tbaa !8
  %119 = load i32, i32* %43, align 16, !tbaa !8
  %120 = load i32, i32* %44, align 4, !tbaa !8
  %121 = load i32, i32* %45, align 8, !tbaa !8
  %122 = load i32, i32* %46, align 4, !tbaa !8
  %123 = load i32, i32* %47, align 16, !tbaa !8
  %124 = load i32, i32* %48, align 4, !tbaa !8
  %125 = load i32, i32* %49, align 8, !tbaa !8
  %126 = load i32, i32* %50, align 4, !tbaa !8
  %127 = load i32, i32* %51, align 16, !tbaa !8
  %128 = load i32, i32* %52, align 4, !tbaa !8
  %129 = load i32, i32* %53, align 8, !tbaa !8
  %130 = load i32, i32* %54, align 4, !tbaa !8
  br label %131

; <label>:131:                                    ; preds = %71, %78
  %132 = phi i32* [ %54, %78 ], [ %70, %71 ]
  %133 = phi i32* [ %53, %78 ], [ %69, %71 ]
  %134 = phi i32* [ %52, %78 ], [ %68, %71 ]
  %135 = phi i32* [ %51, %78 ], [ %67, %71 ]
  %136 = phi i32* [ %50, %78 ], [ %66, %71 ]
  %137 = phi i32* [ %49, %78 ], [ %65, %71 ]
  %138 = phi i32* [ %48, %78 ], [ %64, %71 ]
  %139 = phi i32* [ %47, %78 ], [ %63, %71 ]
  %140 = phi i32* [ %46, %78 ], [ %62, %71 ]
  %141 = phi i32* [ %45, %78 ], [ %61, %71 ]
  %142 = phi i32* [ %44, %78 ], [ %60, %71 ]
  %143 = phi i32* [ %43, %78 ], [ %59, %71 ]
  %144 = phi i32* [ %42, %78 ], [ %58, %71 ]
  %145 = phi i32* [ %41, %78 ], [ %57, %71 ]
  %146 = phi i32* [ %40, %78 ], [ %56, %71 ]
  %147 = phi i32* [ %39, %78 ], [ %55, %71 ]
  %148 = phi i32 [ %130, %78 ], [ 0, %71 ]
  %149 = phi i32 [ %129, %78 ], [ 0, %71 ]
  %150 = phi i32 [ %128, %78 ], [ 0, %71 ]
  %151 = phi i32 [ %127, %78 ], [ 0, %71 ]
  %152 = phi i32 [ %126, %78 ], [ 0, %71 ]
  %153 = phi i32 [ %125, %78 ], [ 0, %71 ]
  %154 = phi i32 [ %124, %78 ], [ 0, %71 ]
  %155 = phi i32 [ %123, %78 ], [ 0, %71 ]
  %156 = phi i32 [ %122, %78 ], [ 0, %71 ]
  %157 = phi i32 [ %121, %78 ], [ 0, %71 ]
  %158 = phi i32 [ %120, %78 ], [ 0, %71 ]
  %159 = phi i32 [ %119, %78 ], [ 0, %71 ]
  %160 = phi i32 [ %118, %78 ], [ 0, %71 ]
  %161 = phi i32 [ %117, %78 ], [ 0, %71 ]
  %162 = phi i32 [ %116, %78 ], [ 0, %71 ]
  %163 = phi i32 [ %115, %78 ], [ 0, %71 ]
  %164 = phi <4 x i32> [ %82, %78 ], [ %74, %71 ]
  %165 = phi <4 x i32> [ %98, %78 ], [ %73, %71 ]
  %166 = tail call i32 @scanLocalMem(i32 %163, i32* %4, i32 1) #5
  store i32 %166, i32* %147, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %167 = tail call i32 @scanLocalMem(i32 %162, i32* %4, i32 1) #5
  store i32 %167, i32* %146, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %168 = tail call i32 @scanLocalMem(i32 %161, i32* %4, i32 1) #5
  store i32 %168, i32* %145, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %169 = tail call i32 @scanLocalMem(i32 %160, i32* %4, i32 1) #5
  store i32 %169, i32* %144, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %170 = tail call i32 @scanLocalMem(i32 %159, i32* %4, i32 1) #5
  store i32 %170, i32* %143, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %171 = tail call i32 @scanLocalMem(i32 %158, i32* %4, i32 1) #5
  store i32 %171, i32* %142, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %172 = tail call i32 @scanLocalMem(i32 %157, i32* %4, i32 1) #5
  store i32 %172, i32* %141, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %173 = tail call i32 @scanLocalMem(i32 %156, i32* %4, i32 1) #5
  store i32 %173, i32* %140, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %174 = tail call i32 @scanLocalMem(i32 %155, i32* %4, i32 1) #5
  store i32 %174, i32* %139, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %175 = tail call i32 @scanLocalMem(i32 %154, i32* %4, i32 1) #5
  store i32 %175, i32* %138, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %176 = tail call i32 @scanLocalMem(i32 %153, i32* %4, i32 1) #5
  store i32 %176, i32* %137, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %177 = tail call i32 @scanLocalMem(i32 %152, i32* %4, i32 1) #5
  store i32 %177, i32* %136, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %178 = tail call i32 @scanLocalMem(i32 %151, i32* %4, i32 1) #5
  store i32 %178, i32* %135, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %179 = tail call i32 @scanLocalMem(i32 %150, i32* %4, i32 1) #5
  store i32 %179, i32* %134, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %180 = tail call i32 @scanLocalMem(i32 %149, i32* %4, i32 1) #5
  store i32 %180, i32* %133, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  %181 = tail call i32 @scanLocalMem(i32 %148, i32* %4, i32 1) #5
  store i32 %181, i32* %132, align 4, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #7
  br i1 %77, label %182, label %239

; <label>:182:                                    ; preds = %131
  %183 = extractelement <4 x i32> %165, i64 0
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4, !tbaa !8
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_scanned_seeds, i64 0, i64 %184
  %188 = load i32, i32* %187, align 4, !tbaa !8
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 %184
  %191 = load i32, i32* %190, align 4, !tbaa !8
  %192 = add i32 %189, %191
  %193 = extractelement <4 x i32> %164, i64 0
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %2, i64 %194
  store i32 %193, i32* %195, align 4, !tbaa !8
  %196 = add nsw i32 %186, 1
  store i32 %196, i32* %185, align 4, !tbaa !8
  %197 = extractelement <4 x i32> %165, i64 1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4, !tbaa !8
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_scanned_seeds, i64 0, i64 %198
  %202 = load i32, i32* %201, align 4, !tbaa !8
  %203 = add i32 %202, %200
  %204 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 %198
  %205 = load i32, i32* %204, align 4, !tbaa !8
  %206 = add i32 %203, %205
  %207 = extractelement <4 x i32> %164, i64 1
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %2, i64 %208
  store i32 %207, i32* %209, align 4, !tbaa !8
  %210 = add nsw i32 %200, 1
  store i32 %210, i32* %199, align 4, !tbaa !8
  %211 = extractelement <4 x i32> %165, i64 2
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4, !tbaa !8
  %215 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_scanned_seeds, i64 0, i64 %212
  %216 = load i32, i32* %215, align 4, !tbaa !8
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 %212
  %219 = load i32, i32* %218, align 4, !tbaa !8
  %220 = add i32 %217, %219
  %221 = extractelement <4 x i32> %164, i64 2
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %2, i64 %222
  store i32 %221, i32* %223, align 4, !tbaa !8
  %224 = add nsw i32 %214, 1
  store i32 %224, i32* %213, align 4, !tbaa !8
  %225 = extractelement <4 x i32> %165, i64 3
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4, !tbaa !8
  %229 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_scanned_seeds, i64 0, i64 %226
  %230 = load i32, i32* %229, align 4, !tbaa !8
  %231 = add i32 %230, %228
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 %226
  %233 = load i32, i32* %232, align 4, !tbaa !8
  %234 = add i32 %231, %233
  %235 = extractelement <4 x i32> %164, i64 3
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %2, i64 %236
  store i32 %235, i32* %237, align 4, !tbaa !8
  %238 = add nsw i32 %228, 1
  store i32 %238, i32* %227, align 4, !tbaa !8
  br label %239

; <label>:239:                                    ; preds = %182, %131
  tail call void @_Z7barrierj(i32 1) #7
  %240 = tail call i64 @_Z14get_local_sizej(i32 0) #6
  %241 = add i64 %240, -1
  %242 = icmp eq i64 %25, %241
  br i1 %242, label %243, label %292

; <label>:243:                                    ; preds = %239
  %244 = load i32, i32* %147, align 4, !tbaa !8
  %245 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 0), align 16, !tbaa !8
  %246 = add i32 %245, %244
  store i32 %246, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 0), align 16, !tbaa !8
  %247 = load i32, i32* %146, align 4, !tbaa !8
  %248 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 1), align 4, !tbaa !8
  %249 = add i32 %248, %247
  store i32 %249, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 1), align 4, !tbaa !8
  %250 = load i32, i32* %145, align 4, !tbaa !8
  %251 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 2), align 8, !tbaa !8
  %252 = add i32 %251, %250
  store i32 %252, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 2), align 8, !tbaa !8
  %253 = load i32, i32* %144, align 4, !tbaa !8
  %254 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 3), align 4, !tbaa !8
  %255 = add i32 %254, %253
  store i32 %255, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 3), align 4, !tbaa !8
  %256 = load i32, i32* %143, align 4, !tbaa !8
  %257 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 4), align 16, !tbaa !8
  %258 = add i32 %257, %256
  store i32 %258, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 4), align 16, !tbaa !8
  %259 = load i32, i32* %142, align 4, !tbaa !8
  %260 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 5), align 4, !tbaa !8
  %261 = add i32 %260, %259
  store i32 %261, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 5), align 4, !tbaa !8
  %262 = load i32, i32* %141, align 4, !tbaa !8
  %263 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 6), align 8, !tbaa !8
  %264 = add i32 %263, %262
  store i32 %264, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 6), align 8, !tbaa !8
  %265 = load i32, i32* %140, align 4, !tbaa !8
  %266 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 7), align 4, !tbaa !8
  %267 = add i32 %266, %265
  store i32 %267, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 7), align 4, !tbaa !8
  %268 = load i32, i32* %139, align 4, !tbaa !8
  %269 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 8), align 16, !tbaa !8
  %270 = add i32 %269, %268
  store i32 %270, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 8), align 16, !tbaa !8
  %271 = load i32, i32* %138, align 4, !tbaa !8
  %272 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 9), align 4, !tbaa !8
  %273 = add i32 %272, %271
  store i32 %273, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 9), align 4, !tbaa !8
  %274 = load i32, i32* %137, align 4, !tbaa !8
  %275 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 10), align 8, !tbaa !8
  %276 = add i32 %275, %274
  store i32 %276, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 10), align 8, !tbaa !8
  %277 = load i32, i32* %136, align 4, !tbaa !8
  %278 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 11), align 4, !tbaa !8
  %279 = add i32 %278, %277
  store i32 %279, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 11), align 4, !tbaa !8
  %280 = load i32, i32* %135, align 4, !tbaa !8
  %281 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 12), align 16, !tbaa !8
  %282 = add i32 %281, %280
  store i32 %282, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 12), align 16, !tbaa !8
  %283 = load i32, i32* %134, align 4, !tbaa !8
  %284 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 13), align 4, !tbaa !8
  %285 = add i32 %284, %283
  store i32 %285, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 13), align 4, !tbaa !8
  %286 = load i32, i32* %133, align 4, !tbaa !8
  %287 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 14), align 8, !tbaa !8
  %288 = add i32 %287, %286
  store i32 %288, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 14), align 8, !tbaa !8
  %289 = load i32, i32* %132, align 4, !tbaa !8
  %290 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 15), align 4, !tbaa !8
  %291 = add i32 %290, %289
  store i32 %291, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @bottom_scan.l_block_counts, i64 0, i64 15), align 4, !tbaa !8
  br label %292

; <label>:292:                                    ; preds = %243, %239
  tail call void @_Z7barrierj(i32 1) #7
  %293 = and i64 %75, 4294967295
  %294 = add i64 %240, %293
  %295 = trunc i64 %294 to i32
  %296 = shl i64 %72, 32
  %297 = ashr exact i64 %296, 32
  %298 = add i64 %240, %297
  %299 = icmp sgt i32 %23, %295
  br i1 %299, label %71, label %300

; <label>:300:                                    ; preds = %292, %35
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare i32 @scanLocalMem(i32, i32*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i64 @_Z14get_local_sizej(i32) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { convergent nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, i32 0}
!3 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
!4 = !{i32 1, i32 1, i32 1, i32 0, i32 3, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"uint*", !"uint*", !"uint*", !"int", !"uint*", !"int"}
!7 = !{!"const", !"const", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
