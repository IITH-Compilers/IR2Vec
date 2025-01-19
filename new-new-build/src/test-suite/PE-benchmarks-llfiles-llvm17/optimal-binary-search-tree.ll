; ModuleID = 'PE-benchmarks/optimal-binary-search-tree.cpp'
source_filename = "PE-benchmarks/optimal-binary-search-tree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@__const.main.keys = private unnamed_addr constant [3 x i32] [i32 10, i32 12, i32 20], align 4
@__const.main.freq = private unnamed_addr constant [3 x i32] [i32 34, i32 8, i32 50], align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [24 x i8] c"Cost of Optimal BST is \00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z17optimalSearchTreePiS_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %16 = load i32, ptr %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %6, align 4
  %19 = zext i32 %18 to i64
  %20 = call ptr @llvm.stacksave.p0()
  store ptr %20, ptr %7, align 8
  %21 = mul nuw i64 %17, %19
  %22 = alloca i32, i64 %21, align 16
  store i64 %17, ptr %8, align 8
  store i64 %19, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %23

23:                                               ; preds = %40, %3
  %24 = load i32, ptr %10, align 4
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, %19
  %36 = getelementptr inbounds i32, ptr %22, i64 %35
  %37 = load i32, ptr %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  store i32 %32, ptr %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, ptr %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %10, align 4
  br label %23, !llvm.loop !6

43:                                               ; preds = %23
  store i32 2, ptr %11, align 4
  br label %44

44:                                               ; preds = %140, %43
  %45 = load i32, ptr %11, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %143

48:                                               ; preds = %44
  store i32 0, ptr %12, align 4
  br label %49

49:                                               ; preds = %136, %48
  %50 = load i32, ptr %12, align 4
  %51 = load i32, ptr %6, align 4
  %52 = load i32, ptr %11, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = icmp sle i32 %50, %54
  br i1 %55, label %56, label %139

56:                                               ; preds = %49
  %57 = load i32, ptr %12, align 4
  %58 = load i32, ptr %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, ptr %13, align 4
  %61 = load i32, ptr %12, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, %19
  %64 = getelementptr inbounds i32, ptr %22, i64 %63
  %65 = load i32, ptr %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %64, i64 %66
  store i32 2147483647, ptr %67, align 4
  %68 = load i32, ptr %12, align 4
  store i32 %68, ptr %14, align 4
  br label %69

69:                                               ; preds = %132, %56
  %70 = load i32, ptr %14, align 4
  %71 = load i32, ptr %13, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %135

73:                                               ; preds = %69
  %74 = load i32, ptr %14, align 4
  %75 = load i32, ptr %12, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, ptr %12, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %19
  %81 = getelementptr inbounds i32, ptr %22, i64 %80
  %82 = load i32, ptr %14, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  %86 = load i32, ptr %85, align 4
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %77
  %89 = phi i32 [ %86, %77 ], [ 0, %87 ]
  %90 = load i32, ptr %14, align 4
  %91 = load i32, ptr %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, ptr %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %19
  %98 = getelementptr inbounds i32, ptr %22, i64 %97
  %99 = load i32, ptr %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %98, i64 %100
  %102 = load i32, ptr %101, align 4
  br label %104

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %93
  %105 = phi i32 [ %102, %93 ], [ 0, %103 ]
  %106 = add nsw i32 %89, %105
  %107 = load ptr, ptr %5, align 8
  %108 = load i32, ptr %12, align 4
  %109 = load i32, ptr %13, align 4
  %110 = call noundef i32 @_Z3sumPiii(ptr noundef %107, i32 noundef %108, i32 noundef %109)
  %111 = add nsw i32 %106, %110
  store i32 %111, ptr %15, align 4
  %112 = load i32, ptr %15, align 4
  %113 = load i32, ptr %12, align 4
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %114, %19
  %116 = getelementptr inbounds i32, ptr %22, i64 %115
  %117 = load i32, ptr %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %116, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = icmp slt i32 %112, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %104
  %123 = load i32, ptr %15, align 4
  %124 = load i32, ptr %12, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %19
  %127 = getelementptr inbounds i32, ptr %22, i64 %126
  %128 = load i32, ptr %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %127, i64 %129
  store i32 %123, ptr %130, align 4
  br label %131

131:                                              ; preds = %122, %104
  br label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %14, align 4
  br label %69, !llvm.loop !8

135:                                              ; preds = %69
  br label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %12, align 4
  br label %49, !llvm.loop !9

139:                                              ; preds = %49
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %11, align 4
  br label %44, !llvm.loop !10

143:                                              ; preds = %44
  %144 = mul nsw i64 0, %19
  %145 = getelementptr inbounds i32, ptr %22, i64 %144
  %146 = load i32, ptr %6, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %145, i64 %148
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr %7, align 8
  call void @llvm.stackrestore.p0(ptr %151)
  ret i32 %150
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3sumPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  store i32 %9, ptr %8, align 4
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i32, ptr %8, align 4
  %12 = load i32, ptr %6, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8
  %16 = load i32, ptr %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %7, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr %7, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %8, align 4
  br label %10, !llvm.loop !11

25:                                               ; preds = %10
  %26 = load i32, ptr %7, align 4
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 @__const.main.keys, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 @__const.main.freq, i64 12, i1 false)
  store i32 3, ptr %4, align 4
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %6 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 0
  %7 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 0
  %8 = load i32, ptr %4, align 4
  %9 = call noundef i32 @_Z17optimalSearchTreePiS_i(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %9)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git d097f430a172a5d798a39b416b1af84f4ec572e1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
