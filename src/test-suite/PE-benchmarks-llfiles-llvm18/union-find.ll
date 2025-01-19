; ModuleID = 'PE-benchmarks/union-find.cpp'
source_filename = "PE-benchmarks/union-find.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.Graph = type { i32, i32, ptr }
%class.Edge = type { i32, i32 }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [21 x i8] c"graph contains cycle\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"graph doesn't contain cycle\00", align 1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_Z11createGraphii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #6
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 16, i1 false)
  store ptr %6, ptr %5, align 8
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %class.Graph, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %class.Graph, ptr %11, i32 0, i32 1
  store i32 %10, ptr %12, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %class.Graph, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %17, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %22 = call noalias noundef nonnull ptr @_Znam(i64 noundef %21) #6
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %class.Graph, ptr %23, i32 0, i32 2
  store ptr %22, ptr %24, align 8
  %25 = load ptr, ptr %5, align 8
  ret ptr %25
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z4findPii(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4
  store i32 %13, ptr %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call noundef i32 @_Z4findPii(ptr noundef %15, i32 noundef %20)
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, ptr %3, align 4
  ret i32 %23
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z5UnionPiii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = call noundef i32 @_Z4findPii(ptr noundef %9, i32 noundef %10)
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 4
  %14 = call noundef i32 @_Z4findPii(ptr noundef %12, i32 noundef %13)
  store i32 %14, ptr %8, align 4
  %15 = load i32, ptr %7, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, ptr %8, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = load i32, ptr %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  store i32 %19, ptr %23, align 4
  br label %24

24:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z7isCycleP5Graph(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %class.Graph, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 4)
  %14 = extractvalue { i64, i1 } %13, 1
  %15 = extractvalue { i64, i1 } %13, 0
  %16 = select i1 %14, i64 -1, i64 %15
  %17 = call noalias noundef nonnull ptr @_Znam(i64 noundef %16) #6
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %class.Graph, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 -1, i64 %23, i1 false)
  store i32 0, ptr %5, align 4
  br label %24

24:                                               ; preds = %59, %1
  %25 = load i32, ptr %5, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %class.Graph, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %class.Graph, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %class.Edge, ptr %34, i64 %36
  %38 = getelementptr inbounds %class.Edge, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 4
  %40 = call noundef i32 @_Z4findPii(ptr noundef %31, i32 noundef %39)
  store i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %class.Graph, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %class.Edge, ptr %44, i64 %46
  %48 = getelementptr inbounds %class.Edge, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = call noundef i32 @_Z4findPii(ptr noundef %41, i32 noundef %49)
  store i32 %50, ptr %7, align 4
  %51 = load i32, ptr %6, align 4
  %52 = load i32, ptr %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %30
  store i32 1, ptr %2, align 4
  br label %63

55:                                               ; preds = %30
  %56 = load ptr, ptr %4, align 8
  %57 = load i32, ptr %6, align 4
  %58 = load i32, ptr %7, align 4
  call void @_Z5UnionPiii(ptr noundef %56, i32 noundef %57, i32 noundef %58)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, ptr %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %5, align 4
  br label %24, !llvm.loop !6

62:                                               ; preds = %24
  store i32 0, ptr %2, align 4
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, ptr %2, align 4
  ret i32 %64
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store i32 3, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call noundef ptr @_Z11createGraphii(i32 noundef %5, i32 noundef %6)
  store ptr %7, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %class.Graph, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %class.Edge, ptr %10, i64 0
  %12 = getelementptr inbounds %class.Edge, ptr %11, i32 0, i32 0
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %class.Graph, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %class.Edge, ptr %15, i64 0
  %17 = getelementptr inbounds %class.Edge, ptr %16, i32 0, i32 1
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %class.Graph, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %class.Edge, ptr %20, i64 1
  %22 = getelementptr inbounds %class.Edge, ptr %21, i32 0, i32 0
  store i32 1, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %class.Graph, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %class.Edge, ptr %25, i64 1
  %27 = getelementptr inbounds %class.Edge, ptr %26, i32 0, i32 1
  store i32 2, ptr %27, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %class.Graph, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %class.Edge, ptr %30, i64 2
  %32 = getelementptr inbounds %class.Edge, ptr %31, i32 0, i32 0
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %class.Graph, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %class.Edge, ptr %35, i64 2
  %37 = getelementptr inbounds %class.Edge, ptr %36, i32 0, i32 1
  store i32 2, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = call noundef i32 @_Z7isCycleP5Graph(ptr noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %0
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %45

43:                                               ; preds = %0
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  br label %45

45:                                               ; preds = %43, %41
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.1.8 (https://github.com/llvm/llvm-project.git 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
