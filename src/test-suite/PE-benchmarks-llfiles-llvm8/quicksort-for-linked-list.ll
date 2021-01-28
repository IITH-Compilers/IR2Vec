; ModuleID = 'PE-benchmarks/quicksort-for-linked-list.cpp'
source_filename = "PE-benchmarks/quicksort-for-linked-list.cpp"
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
%class.Node = type { i32, %class.Node*, %class.Node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Linked List before sorting \0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Linked List after sorting \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_quicksort_for_linked_list.cpp, i8* null }]

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

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z4swapPiS_(i32* %a, i32* %b) #4 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %t = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %t, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %t, align 4
  %6 = load i32*, i32** %b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %class.Node* @_Z8lastNodeP4Node(%class.Node* %root) #4 {
entry:
  %root.addr = alloca %class.Node*, align 8
  store %class.Node* %root, %class.Node** %root.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %class.Node*, %class.Node** %root.addr, align 8
  %tobool = icmp ne %class.Node* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %class.Node*, %class.Node** %root.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %1, i32 0, i32 1
  %2 = load %class.Node*, %class.Node** %next, align 8
  %tobool1 = icmp ne %class.Node* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %class.Node*, %class.Node** %root.addr, align 8
  %next2 = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 1
  %5 = load %class.Node*, %class.Node** %next2, align 8
  store %class.Node* %5, %class.Node** %root.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %class.Node*, %class.Node** %root.addr, align 8
  ret %class.Node* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %class.Node* @_Z9partitionP4NodeS0_(%class.Node* %l, %class.Node* %h) #4 {
entry:
  %l.addr = alloca %class.Node*, align 8
  %h.addr = alloca %class.Node*, align 8
  %x = alloca i32, align 4
  %i = alloca %class.Node*, align 8
  %j = alloca %class.Node*, align 8
  store %class.Node* %l, %class.Node** %l.addr, align 8
  store %class.Node* %h, %class.Node** %h.addr, align 8
  %0 = load %class.Node*, %class.Node** %h.addr, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %0, i32 0, i32 0
  %1 = load i32, i32* %data, align 8
  store i32 %1, i32* %x, align 4
  %2 = load %class.Node*, %class.Node** %l.addr, align 8
  %prev = getelementptr inbounds %class.Node, %class.Node* %2, i32 0, i32 2
  %3 = load %class.Node*, %class.Node** %prev, align 8
  store %class.Node* %3, %class.Node** %i, align 8
  %4 = load %class.Node*, %class.Node** %l.addr, align 8
  store %class.Node* %4, %class.Node** %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %class.Node*, %class.Node** %j, align 8
  %6 = load %class.Node*, %class.Node** %h.addr, align 8
  %cmp = icmp ne %class.Node* %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %class.Node*, %class.Node** %j, align 8
  %data1 = getelementptr inbounds %class.Node, %class.Node* %7, i32 0, i32 0
  %8 = load i32, i32* %data1, align 8
  %9 = load i32, i32* %x, align 4
  %cmp2 = icmp sle i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %class.Node*, %class.Node** %i, align 8
  %cmp3 = icmp eq %class.Node* %10, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %class.Node*, %class.Node** %l.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load %class.Node*, %class.Node** %i, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 1
  %13 = load %class.Node*, %class.Node** %next, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %class.Node* [ %11, %cond.true ], [ %13, %cond.false ]
  store %class.Node* %cond, %class.Node** %i, align 8
  %14 = load %class.Node*, %class.Node** %i, align 8
  %data4 = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 0
  %15 = load %class.Node*, %class.Node** %j, align 8
  %data5 = getelementptr inbounds %class.Node, %class.Node* %15, i32 0, i32 0
  call void @_Z4swapPiS_(i32* %data4, i32* %data5)
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %class.Node*, %class.Node** %j, align 8
  %next6 = getelementptr inbounds %class.Node, %class.Node* %16, i32 0, i32 1
  %17 = load %class.Node*, %class.Node** %next6, align 8
  store %class.Node* %17, %class.Node** %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %class.Node*, %class.Node** %i, align 8
  %cmp7 = icmp eq %class.Node* %18, null
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %for.end
  %19 = load %class.Node*, %class.Node** %l.addr, align 8
  br label %cond.end11

cond.false9:                                      ; preds = %for.end
  %20 = load %class.Node*, %class.Node** %i, align 8
  %next10 = getelementptr inbounds %class.Node, %class.Node* %20, i32 0, i32 1
  %21 = load %class.Node*, %class.Node** %next10, align 8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.true8
  %cond12 = phi %class.Node* [ %19, %cond.true8 ], [ %21, %cond.false9 ]
  store %class.Node* %cond12, %class.Node** %i, align 8
  %22 = load %class.Node*, %class.Node** %i, align 8
  %data13 = getelementptr inbounds %class.Node, %class.Node* %22, i32 0, i32 0
  %23 = load %class.Node*, %class.Node** %h.addr, align 8
  %data14 = getelementptr inbounds %class.Node, %class.Node* %23, i32 0, i32 0
  call void @_Z4swapPiS_(i32* %data13, i32* %data14)
  %24 = load %class.Node*, %class.Node** %i, align 8
  ret %class.Node* %24
}

; Function Attrs: noinline uwtable
define dso_local void @_Z10_quickSortP4NodeS0_(%class.Node* %l, %class.Node* %h) #0 {
entry:
  %l.addr = alloca %class.Node*, align 8
  %h.addr = alloca %class.Node*, align 8
  %p = alloca %class.Node*, align 8
  store %class.Node* %l, %class.Node** %l.addr, align 8
  store %class.Node* %h, %class.Node** %h.addr, align 8
  %0 = load %class.Node*, %class.Node** %h.addr, align 8
  %cmp = icmp ne %class.Node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %class.Node*, %class.Node** %l.addr, align 8
  %2 = load %class.Node*, %class.Node** %h.addr, align 8
  %cmp1 = icmp ne %class.Node* %1, %2
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %class.Node*, %class.Node** %l.addr, align 8
  %4 = load %class.Node*, %class.Node** %h.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 1
  %5 = load %class.Node*, %class.Node** %next, align 8
  %cmp3 = icmp ne %class.Node* %3, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %6 = load %class.Node*, %class.Node** %l.addr, align 8
  %7 = load %class.Node*, %class.Node** %h.addr, align 8
  %call = call %class.Node* @_Z9partitionP4NodeS0_(%class.Node* %6, %class.Node* %7)
  store %class.Node* %call, %class.Node** %p, align 8
  %8 = load %class.Node*, %class.Node** %l.addr, align 8
  %9 = load %class.Node*, %class.Node** %p, align 8
  %prev = getelementptr inbounds %class.Node, %class.Node* %9, i32 0, i32 2
  %10 = load %class.Node*, %class.Node** %prev, align 8
  call void @_Z10_quickSortP4NodeS0_(%class.Node* %8, %class.Node* %10)
  %11 = load %class.Node*, %class.Node** %p, align 8
  %next4 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 1
  %12 = load %class.Node*, %class.Node** %next4, align 8
  %13 = load %class.Node*, %class.Node** %h.addr, align 8
  call void @_Z10_quickSortP4NodeS0_(%class.Node* %12, %class.Node* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z9quickSortP4Node(%class.Node* %head) #0 {
entry:
  %head.addr = alloca %class.Node*, align 8
  %h = alloca %class.Node*, align 8
  store %class.Node* %head, %class.Node** %head.addr, align 8
  %0 = load %class.Node*, %class.Node** %head.addr, align 8
  %call = call %class.Node* @_Z8lastNodeP4Node(%class.Node* %0)
  store %class.Node* %call, %class.Node** %h, align 8
  %1 = load %class.Node*, %class.Node** %head.addr, align 8
  %2 = load %class.Node*, %class.Node** %h, align 8
  call void @_Z10_quickSortP4NodeS0_(%class.Node* %1, %class.Node* %2)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z9printListP4Node(%class.Node* %head) #0 {
entry:
  %head.addr = alloca %class.Node*, align 8
  store %class.Node* %head, %class.Node** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %class.Node*, %class.Node** %head.addr, align 8
  %tobool = icmp ne %class.Node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %class.Node*, %class.Node** %head.addr, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %2)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %3 = load %class.Node*, %class.Node** %head.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 1
  %4 = load %class.Node*, %class.Node** %next, align 8
  store %class.Node* %4, %class.Node** %head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define dso_local void @_Z4pushPP4Nodei(%class.Node** %head_ref, i32 %new_data) #0 {
entry:
  %head_ref.addr = alloca %class.Node**, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca %class.Node*, align 8
  store %class.Node** %head_ref, %class.Node*** %head_ref.addr, align 8
  store i32 %new_data, i32* %new_data.addr, align 4
  %call = call i8* @_Znwm(i64 24) #7
  %0 = bitcast i8* %call to %class.Node*
  store %class.Node* %0, %class.Node** %new_node, align 8
  %1 = load i32, i32* %new_data.addr, align 4
  %2 = load %class.Node*, %class.Node** %new_node, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %2, i32 0, i32 0
  store i32 %1, i32* %data, align 8
  %3 = load %class.Node*, %class.Node** %new_node, align 8
  %prev = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 2
  store %class.Node* null, %class.Node** %prev, align 8
  %4 = load %class.Node**, %class.Node*** %head_ref.addr, align 8
  %5 = load %class.Node*, %class.Node** %4, align 8
  %6 = load %class.Node*, %class.Node** %new_node, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %6, i32 0, i32 1
  store %class.Node* %5, %class.Node** %next, align 8
  %7 = load %class.Node**, %class.Node*** %head_ref.addr, align 8
  %8 = load %class.Node*, %class.Node** %7, align 8
  %cmp = icmp ne %class.Node* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %class.Node*, %class.Node** %new_node, align 8
  %10 = load %class.Node**, %class.Node*** %head_ref.addr, align 8
  %11 = load %class.Node*, %class.Node** %10, align 8
  %prev1 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 2
  store %class.Node* %9, %class.Node** %prev1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %class.Node*, %class.Node** %new_node, align 8
  %13 = load %class.Node**, %class.Node*** %head_ref.addr, align 8
  store %class.Node* %12, %class.Node** %13, align 8
  ret void
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #5

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #6 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %class.Node*, align 8
  store i32 0, i32* %retval, align 4
  store %class.Node* null, %class.Node** %a, align 8
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 5)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 20)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 4)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 3)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 30)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  %0 = load %class.Node*, %class.Node** %a, align 8
  call void @_Z9printListP4Node(%class.Node* %0)
  %1 = load %class.Node*, %class.Node** %a, align 8
  call void @_Z9quickSortP4Node(%class.Node* %1)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  %2 = load %class.Node*, %class.Node** %a, align 8
  call void @_Z9printListP4Node(%class.Node* %2)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_quicksort_for_linked_list.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
