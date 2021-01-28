; ModuleID = 'parboil-0.2-sad-mb_sad_calc.cl'
source_filename = "parboil-0.2-sad-mb_sad_calc.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @mb_sad_calc(i16* nocapture, i16* nocapture readonly, i32, i32, i16* nocapture readonly) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %6 = tail call i64 @_Z12get_local_idj(i32 0) #2
  %7 = udiv i64 %6, 61
  %8 = trunc i64 %7 to i32
  %9 = tail call i64 @_Z12get_group_idj(i32 0) #2
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @_Z12get_group_idj(i32 1) #2
  %12 = trunc i64 %11 to i32
  %13 = shl nsw i32 %2, 4
  %14 = ashr i32 %10, 2
  %15 = add nsw i32 %12, %8
  %16 = ashr i32 %15, 2
  %17 = and i32 %10, 3
  %18 = and i32 %15, 3
  %19 = icmp slt i32 %14, %2
  %20 = icmp slt i32 %16, %3
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %157

; <label>:22:                                     ; preds = %5
  %23 = trunc i64 %6 to i32
  %24 = shl nsw i32 %14, 2
  %25 = or i32 %24, %17
  %26 = shl i32 %25, 2
  %27 = shl nsw i32 %16, 2
  %28 = or i32 %27, %18
  %29 = shl i32 %28, 2
  %30 = add nsw i32 %26, -16
  %31 = add nsw i32 %29, -16
  %32 = srem i32 %23, 61
  %33 = mul nsw i32 %32, 18
  %34 = add nsw i32 %33, 18
  %35 = icmp slt i32 %34, 1089
  %36 = select i1 %35, i32 %34, i32 1089
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %157

; <label>:38:                                     ; preds = %22
  %39 = add nsw i32 %13, -1
  %40 = shl nsw i32 %3, 4
  %41 = add nsw i32 %40, -1
  %42 = mul i32 %2, 27400
  %43 = mul i32 %42, %3
  %44 = mul nsw i32 %16, %2
  %45 = add nsw i32 %44, %14
  %46 = mul i32 %45, 17536
  %47 = add nsw i32 %46, %43
  %48 = shl nuw nsw i32 %18, 2
  %49 = or i32 %48, %17
  %50 = mul nuw nsw i32 %49, 1096
  %51 = add nsw i32 %47, %50
  %52 = zext i32 %29 to i64
  %53 = sext i32 %33 to i64
  %54 = sext i32 %36 to i64
  %55 = sext i32 %51 to i64
  br label %56

; <label>:56:                                     ; preds = %38, %83
  %57 = phi i64 [ %53, %38 ], [ %87, %83 ]
  %58 = trunc i64 %57 to i32
  %59 = srem i32 %58, 33
  %60 = add nsw i32 %30, %59
  %61 = sdiv i32 %58, 33
  %62 = add nsw i32 %31, %61
  %63 = icmp sgt i32 %60, 0
  %64 = select i1 %63, i32 %60, i32 0
  %65 = icmp slt i32 %64, %13
  %66 = select i1 %65, i32 %64, i32 %39
  %67 = sext i32 %62 to i64
  %68 = add i32 %60, 1
  %69 = icmp sgt i32 %60, -1
  %70 = select i1 %69, i32 %68, i32 0
  %71 = icmp slt i32 %70, %13
  %72 = select i1 %71, i32 %70, i32 %39
  %73 = add i32 %60, 2
  %74 = icmp sgt i32 %60, -2
  %75 = select i1 %74, i32 %73, i32 0
  %76 = icmp slt i32 %75, %13
  %77 = select i1 %76, i32 %75, i32 %39
  %78 = add i32 %60, 3
  %79 = icmp sgt i32 %60, -3
  %80 = select i1 %79, i32 %78, i32 0
  %81 = icmp slt i32 %80, %13
  %82 = select i1 %81, i32 %80, i32 %39
  br label %89

; <label>:83:                                     ; preds = %89
  %84 = trunc i32 %154 to i16
  %85 = add nsw i64 %57, %55
  %86 = getelementptr inbounds i16, i16* %0, i64 %85
  store i16 %84, i16* %86, align 2, !tbaa !8
  %87 = add nsw i64 %57, 1
  %88 = icmp slt i64 %87, %54
  br i1 %88, label %56, label %157

; <label>:89:                                     ; preds = %89, %56
  %90 = phi i64 [ 0, %56 ], [ %155, %89 ]
  %91 = phi i32 [ 0, %56 ], [ %154, %89 ]
  %92 = add nsw i64 %90, %67
  %93 = icmp sgt i64 %92, 0
  %94 = select i1 %93, i64 %92, i64 0
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %40, %95
  %97 = select i1 %96, i32 %95, i32 %41
  %98 = mul nsw i32 %97, %13
  %99 = add i64 %90, %52
  %100 = trunc i64 %99 to i32
  %101 = mul i32 %13, %100
  %102 = add i32 %101, %26
  %103 = add nsw i32 %66, %98
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %4, i64 %104
  %106 = load i16, i16* %105, align 2, !tbaa !8
  %107 = zext i16 %106 to i32
  %108 = sext i32 %102 to i64
  %109 = getelementptr inbounds i16, i16* %1, i64 %108
  %110 = load i16, i16* %109, align 2, !tbaa !8
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %107, %111
  %113 = tail call i32 @_Z3absi(i32 %112) #2
  %114 = add i32 %113, %91
  %115 = add nsw i32 %72, %98
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %4, i64 %116
  %118 = load i16, i16* %117, align 2, !tbaa !8
  %119 = zext i16 %118 to i32
  %120 = or i32 %102, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, i16* %1, i64 %121
  %123 = load i16, i16* %122, align 2, !tbaa !8
  %124 = zext i16 %123 to i32
  %125 = sub nsw i32 %119, %124
  %126 = tail call i32 @_Z3absi(i32 %125) #2
  %127 = add i32 %126, %114
  %128 = add nsw i32 %77, %98
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %4, i64 %129
  %131 = load i16, i16* %130, align 2, !tbaa !8
  %132 = zext i16 %131 to i32
  %133 = or i32 %102, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %1, i64 %134
  %136 = load i16, i16* %135, align 2, !tbaa !8
  %137 = zext i16 %136 to i32
  %138 = sub nsw i32 %132, %137
  %139 = tail call i32 @_Z3absi(i32 %138) #2
  %140 = add i32 %139, %127
  %141 = add nsw i32 %82, %98
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i16, i16* %4, i64 %142
  %144 = load i16, i16* %143, align 2, !tbaa !8
  %145 = zext i16 %144 to i32
  %146 = or i32 %102, 3
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i16, i16* %1, i64 %147
  %149 = load i16, i16* %148, align 2, !tbaa !8
  %150 = zext i16 %149 to i32
  %151 = sub nsw i32 %145, %150
  %152 = tail call i32 @_Z3absi(i32 %151) #2
  %153 = and i32 %140, 65535
  %154 = add i32 %152, %153
  %155 = add nuw nsw i64 %90, 1
  %156 = icmp eq i64 %155, 4
  br i1 %156, label %83, label %89

; <label>:157:                                    ; preds = %83, %22, %5
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32 @_Z3absi(i32) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 0, i32 0, i32 1}
!5 = !{!"none", !"none", !"none", !"none", !"none"}
!6 = !{!"ushort*", !"ushort*", !"int", !"int", !"ushort*"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
