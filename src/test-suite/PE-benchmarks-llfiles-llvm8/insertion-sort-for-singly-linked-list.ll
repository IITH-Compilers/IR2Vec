; ModuleID = 'PE-benchmarks/insertion-sort-for-singly-linked-list.cpp'
source_filename = "PE-benchmarks/insertion-sort-for-singly-linked-list.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, %struct.Node* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0ALinked List after sorting \0A\00", align 1

; Function Attrs: noinline uwtable
define dso_local void @_Z13insertionSortPP4Node(%struct.Node** %head_ref) #0 {
entry:
  %head_ref.addr = alloca %struct.Node**, align 8
  %sorted = alloca %struct.Node*, align 8
  %current = alloca %struct.Node*, align 8
  %next = alloca %struct.Node*, align 8
  store %struct.Node** %head_ref, %struct.Node*** %head_ref.addr, align 8
  store %struct.Node* null, %struct.Node** %sorted, align 8
  %0 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  %1 = load %struct.Node*, %struct.Node** %0, align 8
  store %struct.Node* %1, %struct.Node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.Node*, %struct.Node** %current, align 8
  %cmp = icmp ne %struct.Node* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.Node*, %struct.Node** %current, align 8
  %next1 = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 1
  %4 = load %struct.Node*, %struct.Node** %next1, align 8
  store %struct.Node* %4, %struct.Node** %next, align 8
  %5 = load %struct.Node*, %struct.Node** %current, align 8
  call void @_Z12sortedInsertPP4NodeS0_(%struct.Node** %sorted, %struct.Node* %5)
  %6 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %6, %struct.Node** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.Node*, %struct.Node** %sorted, align 8
  %8 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  store %struct.Node* %7, %struct.Node** %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z12sortedInsertPP4NodeS0_(%struct.Node** %head_ref, %struct.Node* %new_node) #1 {
entry:
  %head_ref.addr = alloca %struct.Node**, align 8
  %new_node.addr = alloca %struct.Node*, align 8
  %current = alloca %struct.Node*, align 8
  store %struct.Node** %head_ref, %struct.Node*** %head_ref.addr, align 8
  store %struct.Node* %new_node, %struct.Node** %new_node.addr, align 8
  %0 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  %1 = load %struct.Node*, %struct.Node** %0, align 8
  %cmp = icmp eq %struct.Node* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  %3 = load %struct.Node*, %struct.Node** %2, align 8
  %data = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 0
  %4 = load i32, i32* %data, align 8
  %5 = load %struct.Node*, %struct.Node** %new_node.addr, align 8
  %data1 = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 0
  %6 = load i32, i32* %data1, align 8
  %cmp2 = icmp sge i32 %4, %6
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  %8 = load %struct.Node*, %struct.Node** %7, align 8
  %9 = load %struct.Node*, %struct.Node** %new_node.addr, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1
  store %struct.Node* %8, %struct.Node** %next, align 8
  %10 = load %struct.Node*, %struct.Node** %new_node.addr, align 8
  %11 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  store %struct.Node* %10, %struct.Node** %11, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %12 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  %13 = load %struct.Node*, %struct.Node** %12, align 8
  store %struct.Node* %13, %struct.Node** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %14 = load %struct.Node*, %struct.Node** %current, align 8
  %next3 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  %15 = load %struct.Node*, %struct.Node** %next3, align 8
  %cmp4 = icmp ne %struct.Node* %15, null
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct.Node*, %struct.Node** %current, align 8
  %next5 = getelementptr inbounds %struct.Node, %struct.Node* %16, i32 0, i32 1
  %17 = load %struct.Node*, %struct.Node** %next5, align 8
  %data6 = getelementptr inbounds %struct.Node, %struct.Node* %17, i32 0, i32 0
  %18 = load i32, i32* %data6, align 8
  %19 = load %struct.Node*, %struct.Node** %new_node.addr, align 8
  %data7 = getelementptr inbounds %struct.Node, %struct.Node* %19, i32 0, i32 0
  %20 = load i32, i32* %data7, align 8
  %cmp8 = icmp slt i32 %18, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load %struct.Node*, %struct.Node** %current, align 8
  %next9 = getelementptr inbounds %struct.Node, %struct.Node* %22, i32 0, i32 1
  %23 = load %struct.Node*, %struct.Node** %next9, align 8
  store %struct.Node* %23, %struct.Node** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load %struct.Node*, %struct.Node** %current, align 8
  %next10 = getelementptr inbounds %struct.Node, %struct.Node* %24, i32 0, i32 1
  %25 = load %struct.Node*, %struct.Node** %next10, align 8
  %26 = load %struct.Node*, %struct.Node** %new_node.addr, align 8
  %next11 = getelementptr inbounds %struct.Node, %struct.Node* %26, i32 0, i32 1
  store %struct.Node* %25, %struct.Node** %next11, align 8
  %27 = load %struct.Node*, %struct.Node** %new_node.addr, align 8
  %28 = load %struct.Node*, %struct.Node** %current, align 8
  %next12 = getelementptr inbounds %struct.Node, %struct.Node* %28, i32 0, i32 1
  store %struct.Node* %27, %struct.Node** %next12, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z9printListP4Node(%struct.Node* %head) #0 {
entry:
  %head.addr = alloca %struct.Node*, align 8
  %temp = alloca %struct.Node*, align 8
  store %struct.Node* %head, %struct.Node** %head.addr, align 8
  %0 = load %struct.Node*, %struct.Node** %head.addr, align 8
  store %struct.Node* %0, %struct.Node** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.Node*, %struct.Node** %temp, align 8
  %cmp = icmp ne %struct.Node* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.Node*, %struct.Node** %temp, align 8
  %data = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %3)
  %4 = load %struct.Node*, %struct.Node** %temp, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %4, i32 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %5, %struct.Node** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable
define dso_local void @_Z4pushPP4Nodei(%struct.Node** %head_ref, i32 %new_data) #0 {
entry:
  %head_ref.addr = alloca %struct.Node**, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca %struct.Node*, align 8
  store %struct.Node** %head_ref, %struct.Node*** %head_ref.addr, align 8
  store i32 %new_data, i32* %new_data.addr, align 4
  %call = call i8* @_Znwm(i64 16) #5
  %0 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %0, %struct.Node** %new_node, align 8
  %1 = load i32, i32* %new_data.addr, align 4
  %2 = load %struct.Node*, %struct.Node** %new_node, align 8
  %data = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  store i32 %1, i32* %data, align 8
  %3 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  %4 = load %struct.Node*, %struct.Node** %3, align 8
  %5 = load %struct.Node*, %struct.Node** %new_node, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  store %struct.Node* %4, %struct.Node** %next, align 8
  %6 = load %struct.Node*, %struct.Node** %new_node, align 8
  %7 = load %struct.Node**, %struct.Node*** %head_ref.addr, align 8
  store %struct.Node* %6, %struct.Node** %7, align 8
  ret void
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #3

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.Node*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.Node* null, %struct.Node** %a, align 8
  call void @_Z4pushPP4Nodei(%struct.Node** %a, i32 5)
  call void @_Z4pushPP4Nodei(%struct.Node** %a, i32 20)
  call void @_Z4pushPP4Nodei(%struct.Node** %a, i32 4)
  call void @_Z4pushPP4Nodei(%struct.Node** %a, i32 3)
  call void @_Z4pushPP4Nodei(%struct.Node** %a, i32 30)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  %0 = load %struct.Node*, %struct.Node** %a, align 8
  call void @_Z9printListP4Node(%struct.Node* %0)
  call void @_Z13insertionSortPP4Node(%struct.Node** %a)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct.Node*, %struct.Node** %a, align 8
  call void @_Z9printListP4Node(%struct.Node* %1)
  ret i32 0
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
