; ModuleID = 'PE-benchmarks/insertion-sort-for-singly-linked-list.cpp'
source_filename = "PE-benchmarks/insertion-sort-for-singly-linked-list.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, %struct.Node* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0ALinked List after sorting \0A\00", align 1

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z13insertionSortPP4Node(%struct.Node** %0) #0 {
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node*, align 8
  %4 = alloca %struct.Node*, align 8
  %5 = alloca %struct.Node*, align 8
  store %struct.Node** %0, %struct.Node*** %2, align 8
  store %struct.Node* null, %struct.Node** %3, align 8
  %6 = load %struct.Node**, %struct.Node*** %2, align 8
  %7 = load %struct.Node*, %struct.Node** %6, align 8
  store %struct.Node* %7, %struct.Node** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.Node*, %struct.Node** %4, align 8
  %10 = icmp ne %struct.Node* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.Node*, %struct.Node** %4, align 8
  %13 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 1
  %14 = load %struct.Node*, %struct.Node** %13, align 8
  store %struct.Node* %14, %struct.Node** %5, align 8
  %15 = load %struct.Node*, %struct.Node** %4, align 8
  call void @_Z12sortedInsertPP4NodeS0_(%struct.Node** %3, %struct.Node* %15)
  %16 = load %struct.Node*, %struct.Node** %5, align 8
  store %struct.Node* %16, %struct.Node** %4, align 8
  br label %8, !llvm.loop !2

17:                                               ; preds = %8
  %18 = load %struct.Node*, %struct.Node** %3, align 8
  %19 = load %struct.Node**, %struct.Node*** %2, align 8
  store %struct.Node* %18, %struct.Node** %19, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local void @_Z12sortedInsertPP4NodeS0_(%struct.Node** %0, %struct.Node* %1) #1 {
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %struct.Node*, align 8
  %5 = alloca %struct.Node*, align 8
  store %struct.Node** %0, %struct.Node*** %3, align 8
  store %struct.Node* %1, %struct.Node** %4, align 8
  %6 = load %struct.Node**, %struct.Node*** %3, align 8
  %7 = load %struct.Node*, %struct.Node** %6, align 8
  %8 = icmp eq %struct.Node* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.Node**, %struct.Node*** %3, align 8
  %11 = load %struct.Node*, %struct.Node** %10, align 8
  %12 = getelementptr inbounds %struct.Node, %struct.Node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.Node*, %struct.Node** %4, align 8
  %15 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %9, %2
  %19 = load %struct.Node**, %struct.Node*** %3, align 8
  %20 = load %struct.Node*, %struct.Node** %19, align 8
  %21 = load %struct.Node*, %struct.Node** %4, align 8
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %21, i32 0, i32 1
  store %struct.Node* %20, %struct.Node** %22, align 8
  %23 = load %struct.Node*, %struct.Node** %4, align 8
  %24 = load %struct.Node**, %struct.Node*** %3, align 8
  store %struct.Node* %23, %struct.Node** %24, align 8
  br label %58

25:                                               ; preds = %9
  %26 = load %struct.Node**, %struct.Node*** %3, align 8
  %27 = load %struct.Node*, %struct.Node** %26, align 8
  store %struct.Node* %27, %struct.Node** %5, align 8
  br label %28

28:                                               ; preds = %45, %25
  %29 = load %struct.Node*, %struct.Node** %5, align 8
  %30 = getelementptr inbounds %struct.Node, %struct.Node* %29, i32 0, i32 1
  %31 = load %struct.Node*, %struct.Node** %30, align 8
  %32 = icmp ne %struct.Node* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.Node*, %struct.Node** %5, align 8
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %34, i32 0, i32 1
  %36 = load %struct.Node*, %struct.Node** %35, align 8
  %37 = getelementptr inbounds %struct.Node, %struct.Node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.Node*, %struct.Node** %4, align 8
  %40 = getelementptr inbounds %struct.Node, %struct.Node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br label %43

43:                                               ; preds = %33, %28
  %44 = phi i1 [ false, %28 ], [ %42, %33 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load %struct.Node*, %struct.Node** %5, align 8
  %47 = getelementptr inbounds %struct.Node, %struct.Node* %46, i32 0, i32 1
  %48 = load %struct.Node*, %struct.Node** %47, align 8
  store %struct.Node* %48, %struct.Node** %5, align 8
  br label %28, !llvm.loop !4

49:                                               ; preds = %43
  %50 = load %struct.Node*, %struct.Node** %5, align 8
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %50, i32 0, i32 1
  %52 = load %struct.Node*, %struct.Node** %51, align 8
  %53 = load %struct.Node*, %struct.Node** %4, align 8
  %54 = getelementptr inbounds %struct.Node, %struct.Node* %53, i32 0, i32 1
  store %struct.Node* %52, %struct.Node** %54, align 8
  %55 = load %struct.Node*, %struct.Node** %4, align 8
  %56 = load %struct.Node*, %struct.Node** %5, align 8
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %56, i32 0, i32 1
  store %struct.Node* %55, %struct.Node** %57, align 8
  br label %58

58:                                               ; preds = %49, %18
  ret void
}

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z9printListP4Node(%struct.Node* %0) #0 {
  %2 = alloca %struct.Node*, align 8
  %3 = alloca %struct.Node*, align 8
  store %struct.Node* %0, %struct.Node** %2, align 8
  %4 = load %struct.Node*, %struct.Node** %2, align 8
  store %struct.Node* %4, %struct.Node** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.Node*, %struct.Node** %3, align 8
  %7 = icmp ne %struct.Node* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load %struct.Node*, %struct.Node** %3, align 8
  %10 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.Node*, %struct.Node** %3, align 8
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  %15 = load %struct.Node*, %struct.Node** %14, align 8
  store %struct.Node* %15, %struct.Node** %3, align 8
  br label %5, !llvm.loop !5

16:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable mustprogress
define dso_local void @_Z4pushPP4Nodei(%struct.Node** %0, i32 %1) #0 {
  %3 = alloca %struct.Node**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Node*, align 8
  store %struct.Node** %0, %struct.Node*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias nonnull i8* @_Znwm(i64 16) #5
  %7 = bitcast i8* %6 to %struct.Node*
  store %struct.Node* %7, %struct.Node** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.Node*, %struct.Node** %5, align 8
  %10 = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.Node**, %struct.Node*** %3, align 8
  %12 = load %struct.Node*, %struct.Node** %11, align 8
  %13 = load %struct.Node*, %struct.Node** %5, align 8
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 1
  store %struct.Node* %12, %struct.Node** %14, align 8
  %15 = load %struct.Node*, %struct.Node** %5, align 8
  %16 = load %struct.Node**, %struct.Node*** %3, align 8
  store %struct.Node* %15, %struct.Node** %16, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #3

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Node*, align 8
  store i32 0, i32* %1, align 4
  store %struct.Node* null, %struct.Node** %2, align 8
  call void @_Z4pushPP4Nodei(%struct.Node** %2, i32 5)
  call void @_Z4pushPP4Nodei(%struct.Node** %2, i32 20)
  call void @_Z4pushPP4Nodei(%struct.Node** %2, i32 4)
  call void @_Z4pushPP4Nodei(%struct.Node** %2, i32 3)
  call void @_Z4pushPP4Nodei(%struct.Node** %2, i32 30)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %struct.Node*, %struct.Node** %2, align 8
  call void @_Z9printListP4Node(%struct.Node* %4)
  call void @_Z13insertionSortPP4Node(%struct.Node** %2)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %6 = load %struct.Node*, %struct.Node** %2, align 8
  call void @_Z9printListP4Node(%struct.Node* %6)
  ret i32 0
}

attributes #0 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
