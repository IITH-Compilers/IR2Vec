; ModuleID = 'PE-benchmarks/quicksort-on-singly-linked-list.cpp'
source_filename = "PE-benchmarks/quicksort-on-singly-linked-list.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.Node = type { i32, %struct.Node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Linked List after sorting \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_quicksort_on_singly_linked_list.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline uwtable
define dso_local void @_Z4pushPP4Nodei(%struct.Node** %head_ref, i32 %new_data) #0 {
entry:
  %head_ref.addr = alloca %struct.Node**, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca %struct.Node*, align 8
  store %struct.Node** %head_ref, %struct.Node*** %head_ref.addr, align 8
  store i32 %new_data, i32* %new_data.addr, align 4
  %call = call i8* @_Znwm(i64 16) #7
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
declare dso_local noalias i8* @_Znwm(i64) #4

; Function Attrs: noinline uwtable
define dso_local void @_Z9printListP4Node(%struct.Node* %node) #0 {
entry:
  %node.addr = alloca %struct.Node*, align 8
  store %struct.Node* %node, %struct.Node** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Node*, %struct.Node** %node.addr, align 8
  %cmp = icmp ne %struct.Node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.Node*, %struct.Node** %node.addr, align 8
  %data = getelementptr inbounds %struct.Node, %struct.Node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %2)
  %3 = load %struct.Node*, %struct.Node** %node.addr, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 1
  %4 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %4, %struct.Node** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Node* @_Z7getTailP4Node(%struct.Node* %cur) #5 {
entry:
  %cur.addr = alloca %struct.Node*, align 8
  store %struct.Node* %cur, %struct.Node** %cur.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.Node*, %struct.Node** %cur.addr, align 8
  %cmp = icmp ne %struct.Node* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.Node*, %struct.Node** %cur.addr, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %1, i32 0, i32 1
  %2 = load %struct.Node*, %struct.Node** %next, align 8
  %cmp1 = icmp ne %struct.Node* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.Node*, %struct.Node** %cur.addr, align 8
  %next2 = getelementptr inbounds %struct.Node, %struct.Node* %4, i32 0, i32 1
  %5 = load %struct.Node*, %struct.Node** %next2, align 8
  store %struct.Node* %5, %struct.Node** %cur.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.Node*, %struct.Node** %cur.addr, align 8
  ret %struct.Node* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Node* @_Z9partitionP4NodeS0_PS0_S1_(%struct.Node* %head, %struct.Node* %end, %struct.Node** %newHead, %struct.Node** %newEnd) #5 {
entry:
  %head.addr = alloca %struct.Node*, align 8
  %end.addr = alloca %struct.Node*, align 8
  %newHead.addr = alloca %struct.Node**, align 8
  %newEnd.addr = alloca %struct.Node**, align 8
  %pivot = alloca %struct.Node*, align 8
  %prev = alloca %struct.Node*, align 8
  %cur = alloca %struct.Node*, align 8
  %tail = alloca %struct.Node*, align 8
  %tmp = alloca %struct.Node*, align 8
  store %struct.Node* %head, %struct.Node** %head.addr, align 8
  store %struct.Node* %end, %struct.Node** %end.addr, align 8
  store %struct.Node** %newHead, %struct.Node*** %newHead.addr, align 8
  store %struct.Node** %newEnd, %struct.Node*** %newEnd.addr, align 8
  %0 = load %struct.Node*, %struct.Node** %end.addr, align 8
  store %struct.Node* %0, %struct.Node** %pivot, align 8
  store %struct.Node* null, %struct.Node** %prev, align 8
  %1 = load %struct.Node*, %struct.Node** %head.addr, align 8
  store %struct.Node* %1, %struct.Node** %cur, align 8
  %2 = load %struct.Node*, %struct.Node** %pivot, align 8
  store %struct.Node* %2, %struct.Node** %tail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %3 = load %struct.Node*, %struct.Node** %cur, align 8
  %4 = load %struct.Node*, %struct.Node** %pivot, align 8
  %cmp = icmp ne %struct.Node* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.Node*, %struct.Node** %cur, align 8
  %data = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 0
  %6 = load i32, i32* %data, align 8
  %7 = load %struct.Node*, %struct.Node** %pivot, align 8
  %data1 = getelementptr inbounds %struct.Node, %struct.Node* %7, i32 0, i32 0
  %8 = load i32, i32* %data1, align 8
  %cmp2 = icmp slt i32 %6, %8
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load %struct.Node**, %struct.Node*** %newHead.addr, align 8
  %10 = load %struct.Node*, %struct.Node** %9, align 8
  %cmp3 = icmp eq %struct.Node* %10, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %11 = load %struct.Node*, %struct.Node** %cur, align 8
  %12 = load %struct.Node**, %struct.Node*** %newHead.addr, align 8
  store %struct.Node* %11, %struct.Node** %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %13 = load %struct.Node*, %struct.Node** %cur, align 8
  store %struct.Node* %13, %struct.Node** %prev, align 8
  %14 = load %struct.Node*, %struct.Node** %cur, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  %15 = load %struct.Node*, %struct.Node** %next, align 8
  store %struct.Node* %15, %struct.Node** %cur, align 8
  br label %if.end12

if.else:                                          ; preds = %while.body
  %16 = load %struct.Node*, %struct.Node** %prev, align 8
  %tobool = icmp ne %struct.Node* %16, null
  br i1 %tobool, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.else
  %17 = load %struct.Node*, %struct.Node** %cur, align 8
  %next6 = getelementptr inbounds %struct.Node, %struct.Node* %17, i32 0, i32 1
  %18 = load %struct.Node*, %struct.Node** %next6, align 8
  %19 = load %struct.Node*, %struct.Node** %prev, align 8
  %next7 = getelementptr inbounds %struct.Node, %struct.Node* %19, i32 0, i32 1
  store %struct.Node* %18, %struct.Node** %next7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else
  %20 = load %struct.Node*, %struct.Node** %cur, align 8
  %next9 = getelementptr inbounds %struct.Node, %struct.Node* %20, i32 0, i32 1
  %21 = load %struct.Node*, %struct.Node** %next9, align 8
  store %struct.Node* %21, %struct.Node** %tmp, align 8
  %22 = load %struct.Node*, %struct.Node** %cur, align 8
  %next10 = getelementptr inbounds %struct.Node, %struct.Node* %22, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %next10, align 8
  %23 = load %struct.Node*, %struct.Node** %cur, align 8
  %24 = load %struct.Node*, %struct.Node** %tail, align 8
  %next11 = getelementptr inbounds %struct.Node, %struct.Node* %24, i32 0, i32 1
  store %struct.Node* %23, %struct.Node** %next11, align 8
  %25 = load %struct.Node*, %struct.Node** %cur, align 8
  store %struct.Node* %25, %struct.Node** %tail, align 8
  %26 = load %struct.Node*, %struct.Node** %tmp, align 8
  store %struct.Node* %26, %struct.Node** %cur, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load %struct.Node**, %struct.Node*** %newHead.addr, align 8
  %28 = load %struct.Node*, %struct.Node** %27, align 8
  %cmp13 = icmp eq %struct.Node* %28, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  %29 = load %struct.Node*, %struct.Node** %pivot, align 8
  %30 = load %struct.Node**, %struct.Node*** %newHead.addr, align 8
  store %struct.Node* %29, %struct.Node** %30, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end
  %31 = load %struct.Node*, %struct.Node** %tail, align 8
  %32 = load %struct.Node**, %struct.Node*** %newEnd.addr, align 8
  store %struct.Node* %31, %struct.Node** %32, align 8
  %33 = load %struct.Node*, %struct.Node** %pivot, align 8
  ret %struct.Node* %33
}

; Function Attrs: noinline uwtable
define dso_local %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* %head, %struct.Node* %end) #0 {
entry:
  %retval = alloca %struct.Node*, align 8
  %head.addr = alloca %struct.Node*, align 8
  %end.addr = alloca %struct.Node*, align 8
  %newHead = alloca %struct.Node*, align 8
  %newEnd = alloca %struct.Node*, align 8
  %pivot = alloca %struct.Node*, align 8
  %tmp = alloca %struct.Node*, align 8
  store %struct.Node* %head, %struct.Node** %head.addr, align 8
  store %struct.Node* %end, %struct.Node** %end.addr, align 8
  %0 = load %struct.Node*, %struct.Node** %head.addr, align 8
  %tobool = icmp ne %struct.Node* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Node*, %struct.Node** %head.addr, align 8
  %2 = load %struct.Node*, %struct.Node** %end.addr, align 8
  %cmp = icmp eq %struct.Node* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.Node*, %struct.Node** %head.addr, align 8
  store %struct.Node* %3, %struct.Node** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store %struct.Node* null, %struct.Node** %newHead, align 8
  store %struct.Node* null, %struct.Node** %newEnd, align 8
  %4 = load %struct.Node*, %struct.Node** %head.addr, align 8
  %5 = load %struct.Node*, %struct.Node** %end.addr, align 8
  %call = call %struct.Node* @_Z9partitionP4NodeS0_PS0_S1_(%struct.Node* %4, %struct.Node* %5, %struct.Node** %newHead, %struct.Node** %newEnd)
  store %struct.Node* %call, %struct.Node** %pivot, align 8
  %6 = load %struct.Node*, %struct.Node** %newHead, align 8
  %7 = load %struct.Node*, %struct.Node** %pivot, align 8
  %cmp1 = icmp ne %struct.Node* %6, %7
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %8 = load %struct.Node*, %struct.Node** %newHead, align 8
  store %struct.Node* %8, %struct.Node** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %9 = load %struct.Node*, %struct.Node** %tmp, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %9, i32 0, i32 1
  %10 = load %struct.Node*, %struct.Node** %next, align 8
  %11 = load %struct.Node*, %struct.Node** %pivot, align 8
  %cmp3 = icmp ne %struct.Node* %10, %11
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.Node*, %struct.Node** %tmp, align 8
  %next4 = getelementptr inbounds %struct.Node, %struct.Node* %12, i32 0, i32 1
  %13 = load %struct.Node*, %struct.Node** %next4, align 8
  store %struct.Node* %13, %struct.Node** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.Node*, %struct.Node** %tmp, align 8
  %next5 = getelementptr inbounds %struct.Node, %struct.Node* %14, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %next5, align 8
  %15 = load %struct.Node*, %struct.Node** %newHead, align 8
  %16 = load %struct.Node*, %struct.Node** %tmp, align 8
  %call6 = call %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* %15, %struct.Node* %16)
  store %struct.Node* %call6, %struct.Node** %newHead, align 8
  %17 = load %struct.Node*, %struct.Node** %newHead, align 8
  %call7 = call %struct.Node* @_Z7getTailP4Node(%struct.Node* %17)
  store %struct.Node* %call7, %struct.Node** %tmp, align 8
  %18 = load %struct.Node*, %struct.Node** %pivot, align 8
  %19 = load %struct.Node*, %struct.Node** %tmp, align 8
  %next8 = getelementptr inbounds %struct.Node, %struct.Node* %19, i32 0, i32 1
  store %struct.Node* %18, %struct.Node** %next8, align 8
  br label %if.end9

if.end9:                                          ; preds = %while.end, %if.end
  %20 = load %struct.Node*, %struct.Node** %pivot, align 8
  %next10 = getelementptr inbounds %struct.Node, %struct.Node* %20, i32 0, i32 1
  %21 = load %struct.Node*, %struct.Node** %next10, align 8
  %22 = load %struct.Node*, %struct.Node** %newEnd, align 8
  %call11 = call %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* %21, %struct.Node* %22)
  %23 = load %struct.Node*, %struct.Node** %pivot, align 8
  %next12 = getelementptr inbounds %struct.Node, %struct.Node* %23, i32 0, i32 1
  store %struct.Node* %call11, %struct.Node** %next12, align 8
  %24 = load %struct.Node*, %struct.Node** %newHead, align 8
  store %struct.Node* %24, %struct.Node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %25 = load %struct.Node*, %struct.Node** %retval, align 8
  ret %struct.Node* %25
}

; Function Attrs: noinline uwtable
define dso_local void @_Z9quickSortPP4Node(%struct.Node** %headRef) #0 {
entry:
  %headRef.addr = alloca %struct.Node**, align 8
  store %struct.Node** %headRef, %struct.Node*** %headRef.addr, align 8
  %0 = load %struct.Node**, %struct.Node*** %headRef.addr, align 8
  %1 = load %struct.Node*, %struct.Node** %0, align 8
  %2 = load %struct.Node**, %struct.Node*** %headRef.addr, align 8
  %3 = load %struct.Node*, %struct.Node** %2, align 8
  %call = call %struct.Node* @_Z7getTailP4Node(%struct.Node* %3)
  %call1 = call %struct.Node* @_Z14quickSortRecurP4NodeS0_(%struct.Node* %1, %struct.Node* %call)
  %4 = load %struct.Node**, %struct.Node*** %headRef.addr, align 8
  store %struct.Node* %call1, %struct.Node** %4, align 8
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
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
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  %0 = load %struct.Node*, %struct.Node** %a, align 8
  call void @_Z9printListP4Node(%struct.Node* %0)
  call void @_Z9quickSortPP4Node(%struct.Node** %a)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  %1 = load %struct.Node*, %struct.Node** %a, align 8
  call void @_Z9printListP4Node(%struct.Node* %1)
  ret i32 0
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_quicksort_on_singly_linked_list.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
