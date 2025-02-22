; ModuleID = 'PE-benchmarks/longest-even-length-substring-sum-first-second-half.cpp'
source_filename = "PE-benchmarks/longest-even-length-substring-sum-first-second-half.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@__const.main.str = private unnamed_addr constant [7 x i8] c"153803\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"Length of the substring is \00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z10findLengthPc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = call i64 @strlen(ptr noundef %13) #6
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %16 = load i32, ptr %3, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %3, align 4
  %19 = zext i32 %18 to i64
  %20 = call ptr @llvm.stacksave.p0()
  store ptr %20, ptr %5, align 8
  %21 = mul nuw i64 %17, %19
  %22 = alloca i32, i64 %21, align 16
  store i64 %17, ptr %6, align 8
  store i64 %19, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %23

23:                                               ; preds = %42, %1
  %24 = load i32, ptr %8, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8
  %29 = load i32, ptr %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = load i32, ptr %8, align 4
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %36, %19
  %38 = getelementptr inbounds i32, ptr %22, i64 %37
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  store i32 %34, ptr %41, align 4
  br label %42

42:                                               ; preds = %27
  %43 = load i32, ptr %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %8, align 4
  br label %23, !llvm.loop !6

45:                                               ; preds = %23
  store i32 2, ptr %9, align 4
  br label %46

46:                                               ; preds = %131, %45
  %47 = load i32, ptr %9, align 4
  %48 = load i32, ptr %3, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %134

50:                                               ; preds = %46
  store i32 0, ptr %10, align 4
  br label %51

51:                                               ; preds = %127, %50
  %52 = load i32, ptr %10, align 4
  %53 = load i32, ptr %3, align 4
  %54 = load i32, ptr %9, align 4
  %55 = sub nsw i32 %53, %54
  %56 = add nsw i32 %55, 1
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %130

58:                                               ; preds = %51
  %59 = load i32, ptr %10, align 4
  %60 = load i32, ptr %9, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, ptr %11, align 4
  %63 = load i32, ptr %9, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, ptr %12, align 4
  %65 = load i32, ptr %10, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %19
  %68 = getelementptr inbounds i32, ptr %22, i64 %67
  %69 = load i32, ptr %11, align 4
  %70 = load i32, ptr %12, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %68, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %11, align 4
  %76 = load i32, ptr %12, align 4
  %77 = sub nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %19
  %81 = getelementptr inbounds i32, ptr %22, i64 %80
  %82 = load i32, ptr %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %81, i64 %83
  %85 = load i32, ptr %84, align 4
  %86 = add nsw i32 %74, %85
  %87 = load i32, ptr %10, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, %19
  %90 = getelementptr inbounds i32, ptr %22, i64 %89
  %91 = load i32, ptr %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  store i32 %86, ptr %93, align 4
  %94 = load i32, ptr %9, align 4
  %95 = srem i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %58
  %98 = load i32, ptr %10, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %19
  %101 = getelementptr inbounds i32, ptr %22, i64 %100
  %102 = load i32, ptr %11, align 4
  %103 = load i32, ptr %12, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %101, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = load i32, ptr %11, align 4
  %109 = load i32, ptr %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %19
  %114 = getelementptr inbounds i32, ptr %22, i64 %113
  %115 = load i32, ptr %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %114, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %107, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %97
  %121 = load i32, ptr %9, align 4
  %122 = load i32, ptr %4, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, ptr %9, align 4
  store i32 %125, ptr %4, align 4
  br label %126

126:                                              ; preds = %124, %120, %97, %58
  br label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %10, align 4
  br label %51, !llvm.loop !8

130:                                              ; preds = %51
  br label %131

131:                                              ; preds = %130
  %132 = load i32, ptr %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %9, align 4
  br label %46, !llvm.loop !9

134:                                              ; preds = %46
  %135 = load i32, ptr %4, align 4
  %136 = load ptr, ptr %5, align 8
  call void @llvm.stackrestore.p0(ptr %136)
  ret i32 %135
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i8], align 1
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 @__const.main.str, i64 7, i1 false)
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %4 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 0
  %5 = call noundef i32 @_Z10findLengthPc(ptr noundef %4)
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.0 (++20250204023448+d185bd94ff77-1~exp1~20250204023606.14)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
