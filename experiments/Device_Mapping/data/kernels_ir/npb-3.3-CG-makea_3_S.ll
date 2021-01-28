; ModuleID = 'npb-CG-makea_3.cl'
source_filename = "npb-CG-makea_3.cl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define spir_kernel void @makea_3(double* nocapture, i32* nocapture, i32* nocapture readonly, i32* nocapture readonly, i32* nocapture readonly, double* nocapture readonly, i32* nocapture readnone, i32* nocapture readnone, i32, i32) local_unnamed_addr #0 !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %11 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %158

; <label>:14:                                     ; preds = %10
  %15 = bitcast i32* %4 to [8 x i32]*
  %16 = bitcast double* %5 to [8 x double]*
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds i32, i32* %1, i64 %17
  %19 = shl i64 %11, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds i32, i32* %2, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !8
  %23 = add i64 %19, 4294967296
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds i32, i32* %2, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %38

; <label>:28:                                     ; preds = %14
  %29 = sext i32 %22 to i64
  br label %30

; <label>:30:                                     ; preds = %28, %30
  %31 = phi i64 [ %29, %28 ], [ %34, %30 ]
  %32 = getelementptr inbounds double, double* %0, i64 %31
  store double 0.000000e+00, double* %32, align 8, !tbaa !12
  %33 = getelementptr inbounds i32, i32* %1, i64 %31
  store i32 -1, i32* %33, align 4, !tbaa !8
  %34 = add i64 %31, 1
  %35 = load i32, i32* %25, align 4, !tbaa !8
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %30, label %38

; <label>:38:                                     ; preds = %30, %14
  %39 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 0, i32* %39, align 4, !tbaa !8
  %40 = sitofp i32 %8 to double
  %41 = fdiv double 1.000000e+00, %40
  %42 = tail call double @_Z3powdd(double 1.000000e-01, double %41) #2
  %43 = icmp sgt i32 %8, 0
  br i1 %43, label %44, label %158

; <label>:44:                                     ; preds = %38
  %45 = and i64 %11, 4294967295
  %46 = shl i64 %11, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds i32, i32* %2, i64 %47
  %49 = shl i64 %11, 32
  %50 = add i64 %49, 4294967296
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds i32, i32* %2, i64 %51
  %53 = getelementptr inbounds i32, i32* %18, i64 %47
  %54 = zext i32 %8 to i64
  br label %55

; <label>:55:                                     ; preds = %154, %44
  %56 = phi i64 [ 0, %44 ], [ %156, %154 ]
  %57 = phi double [ 1.000000e+00, %44 ], [ %155, %154 ]
  %58 = getelementptr inbounds i32, i32* %3, i64 %56
  %59 = load i32, i32* %58, align 4, !tbaa !8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %154

; <label>:61:                                     ; preds = %55
  %62 = icmp eq i64 %45, %56
  br label %63

; <label>:63:                                     ; preds = %61, %149
  %64 = phi i32 [ %59, %61 ], [ %150, %149 ]
  %65 = phi i64 [ 0, %61 ], [ %151, %149 ]
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 %56, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !8
  %68 = icmp eq i32 %67, %12
  br i1 %68, label %69, label %149

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 %56, i64 %65
  %71 = load double, double* %70, align 8, !tbaa !12
  %72 = fmul double %57, %71
  %73 = icmp sgt i32 %64, 0
  br i1 %73, label %74, label %149

; <label>:74:                                     ; preds = %69
  br label %75

; <label>:75:                                     ; preds = %74, %139
  %76 = phi i64 [ %145, %139 ], [ 0, %74 ]
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 %56, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !8
  %79 = getelementptr inbounds [8 x double], [8 x double]* %16, i64 %56, i64 %76
  %80 = load double, double* %79, align 8, !tbaa !12
  %81 = fmul double %72, %80
  %82 = icmp eq i32 %78, %12
  %83 = and i1 %62, %82
  %84 = fadd double %81, 1.000000e-01
  %85 = fadd double %84, -1.000000e+01
  %86 = select i1 %83, double %85, double %81
  %87 = load i32, i32* %48, align 4, !tbaa !8
  %88 = load i32, i32* %52, align 4, !tbaa !8
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %139

; <label>:90:                                     ; preds = %75
  %91 = sext i32 %87 to i64
  %92 = sext i32 %88 to i64
  br label %93

; <label>:93:                                     ; preds = %90, %134
  %94 = phi i64 [ %91, %90 ], [ %135, %134 ]
  %95 = getelementptr inbounds i32, i32* %1, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !8
  %97 = icmp sgt i32 %96, %78
  br i1 %97, label %98, label %124

; <label>:98:                                     ; preds = %93
  %99 = trunc i64 %94 to i32
  %100 = add nsw i32 %88, -2
  %101 = icmp slt i32 %100, %99
  br i1 %101, label %122, label %102

; <label>:102:                                    ; preds = %98
  %103 = sext i32 %100 to i64
  %104 = shl i64 %94, 32
  %105 = ashr exact i64 %104, 32
  br label %106

; <label>:106:                                    ; preds = %119, %102
  %107 = phi i64 [ %120, %119 ], [ %103, %102 ]
  %108 = getelementptr inbounds i32, i32* %1, i64 %107
  %109 = load i32, i32* %108, align 4, !tbaa !8
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %119

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds double, double* %0, i64 %107
  %113 = bitcast double* %112 to i64*
  %114 = load i64, i64* %113, align 8, !tbaa !12
  %115 = add nsw i64 %107, 1
  %116 = getelementptr inbounds double, double* %0, i64 %115
  %117 = bitcast double* %116 to i64*
  store i64 %114, i64* %117, align 8, !tbaa !12
  %118 = getelementptr inbounds i32, i32* %1, i64 %115
  store i32 %109, i32* %118, align 4, !tbaa !8
  br label %119

; <label>:119:                                    ; preds = %106, %111
  %120 = add nsw i64 %107, -1
  %121 = icmp sgt i64 %107, %105
  br i1 %121, label %106, label %122

; <label>:122:                                    ; preds = %119, %98
  store i32 %78, i32* %95, align 4, !tbaa !8
  %123 = getelementptr inbounds double, double* %0, i64 %94
  store double 0.000000e+00, double* %123, align 8, !tbaa !12
  br label %139

; <label>:124:                                    ; preds = %93
  %125 = icmp eq i32 %96, -1
  br i1 %125, label %126, label %128

; <label>:126:                                    ; preds = %124
  %127 = trunc i64 %94 to i32
  store i32 %78, i32* %95, align 4, !tbaa !8
  br label %139

; <label>:128:                                    ; preds = %124
  %129 = icmp eq i32 %96, %78
  br i1 %129, label %130, label %134

; <label>:130:                                    ; preds = %128
  %131 = trunc i64 %94 to i32
  %132 = load i32, i32* %53, align 4, !tbaa !8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %53, align 4, !tbaa !8
  br label %139

; <label>:134:                                    ; preds = %128
  %135 = add i64 %94, 1
  %136 = icmp slt i64 %135, %92
  br i1 %136, label %93, label %137

; <label>:137:                                    ; preds = %134
  %138 = trunc i64 %135 to i32
  br label %139

; <label>:139:                                    ; preds = %137, %75, %130, %126, %122
  %140 = phi i32 [ %131, %130 ], [ %127, %126 ], [ %99, %122 ], [ %87, %75 ], [ %138, %137 ]
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, double* %0, i64 %141
  %143 = load double, double* %142, align 8, !tbaa !12
  %144 = fadd double %86, %143
  store double %144, double* %142, align 8, !tbaa !12
  %145 = add nuw nsw i64 %76, 1
  %146 = load i32, i32* %58, align 4, !tbaa !8
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %75, label %149

; <label>:149:                                    ; preds = %139, %69, %63
  %150 = phi i32 [ %64, %69 ], [ %64, %63 ], [ %146, %139 ]
  %151 = add nuw nsw i64 %65, 1
  %152 = sext i32 %150 to i64
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %63, label %154

; <label>:154:                                    ; preds = %149, %55
  %155 = fmul double %42, %57
  %156 = add nuw nsw i64 %56, 1
  %157 = icmp eq i64 %156, %54
  br i1 %157, label %158, label %55

; <label>:158:                                    ; preds = %154, %38, %10
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @_Z3powdd(double, double) local_unnamed_addr #1

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
!4 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"double*", !"int*", !"int*", !"int*", !"int*", !"double*", !"int*", !"int*", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !10, i64 0}
