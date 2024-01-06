; ModuleID = 'PE-benchmarks/largest-independent-set-problem.cpp'
source_filename = "PE-benchmarks/largest-independent-set-problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.node = type { i32, i32, ptr, ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [40 x i8] c"Size of the Largest Independent Set is \00", align 1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4LISSP4node(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %91

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %class.node, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %class.node, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %2, align 4
  br label %91

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %class.node, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %class.node, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %class.node, ptr %29, i32 0, i32 1
  store i32 1, ptr %30, align 4
  store i32 1, ptr %2, align 4
  br label %91

31:                                               ; preds = %23, %18
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %class.node, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef i32 @_Z4LISSP4node(ptr noundef %34)
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %class.node, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef i32 @_Z4LISSP4node(ptr noundef %38)
  %40 = add nsw i32 %35, %39
  store i32 %40, ptr %4, align 4
  store i32 1, ptr %5, align 4
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %class.node, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %31
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %class.node, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %class.node, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef i32 @_Z4LISSP4node(ptr noundef %50)
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %class.node, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %class.node, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef i32 @_Z4LISSP4node(ptr noundef %56)
  %58 = add nsw i32 %51, %57
  %59 = load i32, ptr %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, ptr %5, align 4
  br label %61

61:                                               ; preds = %45, %31
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %class.node, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = icmp ne ptr %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %class.node, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %class.node, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = call noundef i32 @_Z4LISSP4node(ptr noundef %71)
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %class.node, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %class.node, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef i32 @_Z4LISSP4node(ptr noundef %77)
  %79 = add nsw i32 %72, %78
  %80 = load i32, ptr %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, ptr %5, align 4
  br label %82

82:                                               ; preds = %66, %61
  %83 = load i32, ptr %5, align 4
  %84 = load i32, ptr %4, align 4
  %85 = call noundef i32 @_Z3maxii(i32 noundef %83, i32 noundef %84)
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %class.node, ptr %86, i32 0, i32 1
  store i32 %85, ptr %87, align 4
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds %class.node, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %2, align 4
  br label %91

91:                                               ; preds = %82, %28, %14, %8
  %92 = load i32, ptr %2, align 4
  ret i32 %92
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_Z7newNodei(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 24) #6
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 24, i1 false)
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %class.node, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %class.node, ptr %8, i32 0, i32 3
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %class.node, ptr %10, i32 0, i32 2
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %class.node, ptr %12, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %3, align 8
  ret ptr %14
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  %3 = call noundef ptr @_Z7newNodei(i32 noundef 20)
  store ptr %3, ptr %2, align 8
  %4 = call noundef ptr @_Z7newNodei(i32 noundef 8)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %class.node, ptr %5, i32 0, i32 2
  store ptr %4, ptr %6, align 8
  %7 = call noundef ptr @_Z7newNodei(i32 noundef 4)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %class.node, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %class.node, ptr %10, i32 0, i32 2
  store ptr %7, ptr %11, align 8
  %12 = call noundef ptr @_Z7newNodei(i32 noundef 12)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %class.node, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %class.node, ptr %15, i32 0, i32 3
  store ptr %12, ptr %16, align 8
  %17 = call noundef ptr @_Z7newNodei(i32 noundef 10)
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %class.node, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %class.node, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %class.node, ptr %22, i32 0, i32 2
  store ptr %17, ptr %23, align 8
  %24 = call noundef ptr @_Z7newNodei(i32 noundef 14)
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %class.node, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %class.node, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %class.node, ptr %29, i32 0, i32 3
  store ptr %24, ptr %30, align 8
  %31 = call noundef ptr @_Z7newNodei(i32 noundef 22)
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %class.node, ptr %32, i32 0, i32 3
  store ptr %31, ptr %33, align 8
  %34 = call noundef ptr @_Z7newNodei(i32 noundef 25)
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %class.node, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %class.node, ptr %37, i32 0, i32 3
  store ptr %34, ptr %38, align 8
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %40 = load ptr, ptr %2, align 8
  %41 = call noundef i32 @_Z4LISSP4node(ptr noundef %40)
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef %41)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (++20230710042046+7cbf1a259152-1~exp1~20230710162136.105)"}
