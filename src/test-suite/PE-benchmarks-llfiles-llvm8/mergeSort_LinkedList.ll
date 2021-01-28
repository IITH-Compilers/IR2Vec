; ModuleID = 'PE-benchmarks/mergeSort_LinkedList.cpp'
source_filename = "PE-benchmarks/mergeSort_LinkedList.cpp"
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
%class.Node = type { i32, %class.Node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Sorted Linked List is: \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_mergeSort_LinkedList.cpp, i8* null }]

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
define dso_local void @_Z9MergeSortPP4Node(%class.Node** %headRef) #0 {
entry:
  %headRef.addr = alloca %class.Node**, align 8
  %head = alloca %class.Node*, align 8
  %a = alloca %class.Node*, align 8
  %b = alloca %class.Node*, align 8
  store %class.Node** %headRef, %class.Node*** %headRef.addr, align 8
  %0 = load %class.Node**, %class.Node*** %headRef.addr, align 8
  %1 = load %class.Node*, %class.Node** %0, align 8
  store %class.Node* %1, %class.Node** %head, align 8
  %2 = load %class.Node*, %class.Node** %head, align 8
  %cmp = icmp eq %class.Node* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %class.Node*, %class.Node** %head, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 1
  %4 = load %class.Node*, %class.Node** %next, align 8
  %cmp1 = icmp eq %class.Node* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %class.Node*, %class.Node** %head, align 8
  call void @_Z14FrontBackSplitP4NodePS0_S1_(%class.Node* %5, %class.Node** %a, %class.Node** %b)
  call void @_Z9MergeSortPP4Node(%class.Node** %a)
  call void @_Z9MergeSortPP4Node(%class.Node** %b)
  %6 = load %class.Node*, %class.Node** %a, align 8
  %7 = load %class.Node*, %class.Node** %b, align 8
  %call = call %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* %6, %class.Node* %7)
  %8 = load %class.Node**, %class.Node*** %headRef.addr, align 8
  store %class.Node* %call, %class.Node** %8, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z14FrontBackSplitP4NodePS0_S1_(%class.Node* %source, %class.Node** %frontRef, %class.Node** %backRef) #4 {
entry:
  %source.addr = alloca %class.Node*, align 8
  %frontRef.addr = alloca %class.Node**, align 8
  %backRef.addr = alloca %class.Node**, align 8
  %fast = alloca %class.Node*, align 8
  %slow = alloca %class.Node*, align 8
  store %class.Node* %source, %class.Node** %source.addr, align 8
  store %class.Node** %frontRef, %class.Node*** %frontRef.addr, align 8
  store %class.Node** %backRef, %class.Node*** %backRef.addr, align 8
  %0 = load %class.Node*, %class.Node** %source.addr, align 8
  store %class.Node* %0, %class.Node** %slow, align 8
  %1 = load %class.Node*, %class.Node** %source.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %1, i32 0, i32 1
  %2 = load %class.Node*, %class.Node** %next, align 8
  store %class.Node* %2, %class.Node** %fast, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %class.Node*, %class.Node** %fast, align 8
  %cmp = icmp ne %class.Node* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %class.Node*, %class.Node** %fast, align 8
  %next1 = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 1
  %5 = load %class.Node*, %class.Node** %next1, align 8
  store %class.Node* %5, %class.Node** %fast, align 8
  %6 = load %class.Node*, %class.Node** %fast, align 8
  %cmp2 = icmp ne %class.Node* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %class.Node*, %class.Node** %slow, align 8
  %next3 = getelementptr inbounds %class.Node, %class.Node* %7, i32 0, i32 1
  %8 = load %class.Node*, %class.Node** %next3, align 8
  store %class.Node* %8, %class.Node** %slow, align 8
  %9 = load %class.Node*, %class.Node** %fast, align 8
  %next4 = getelementptr inbounds %class.Node, %class.Node* %9, i32 0, i32 1
  %10 = load %class.Node*, %class.Node** %next4, align 8
  store %class.Node* %10, %class.Node** %fast, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %class.Node*, %class.Node** %source.addr, align 8
  %12 = load %class.Node**, %class.Node*** %frontRef.addr, align 8
  store %class.Node* %11, %class.Node** %12, align 8
  %13 = load %class.Node*, %class.Node** %slow, align 8
  %next5 = getelementptr inbounds %class.Node, %class.Node* %13, i32 0, i32 1
  %14 = load %class.Node*, %class.Node** %next5, align 8
  %15 = load %class.Node**, %class.Node*** %backRef.addr, align 8
  store %class.Node* %14, %class.Node** %15, align 8
  %16 = load %class.Node*, %class.Node** %slow, align 8
  %next6 = getelementptr inbounds %class.Node, %class.Node* %16, i32 0, i32 1
  store %class.Node* null, %class.Node** %next6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define dso_local %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* %a, %class.Node* %b) #0 {
entry:
  %retval = alloca %class.Node*, align 8
  %a.addr = alloca %class.Node*, align 8
  %b.addr = alloca %class.Node*, align 8
  %result = alloca %class.Node*, align 8
  store %class.Node* %a, %class.Node** %a.addr, align 8
  store %class.Node* %b, %class.Node** %b.addr, align 8
  store %class.Node* null, %class.Node** %result, align 8
  %0 = load %class.Node*, %class.Node** %a.addr, align 8
  %cmp = icmp eq %class.Node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %class.Node*, %class.Node** %b.addr, align 8
  store %class.Node* %1, %class.Node** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %class.Node*, %class.Node** %b.addr, align 8
  %cmp1 = icmp eq %class.Node* %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %3 = load %class.Node*, %class.Node** %a.addr, align 8
  store %class.Node* %3, %class.Node** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load %class.Node*, %class.Node** %a.addr, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 0
  %5 = load i32, i32* %data, align 8
  %6 = load %class.Node*, %class.Node** %b.addr, align 8
  %data4 = getelementptr inbounds %class.Node, %class.Node* %6, i32 0, i32 0
  %7 = load i32, i32* %data4, align 8
  %cmp5 = icmp sle i32 %5, %7
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end3
  %8 = load %class.Node*, %class.Node** %a.addr, align 8
  store %class.Node* %8, %class.Node** %result, align 8
  %9 = load %class.Node*, %class.Node** %a.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %9, i32 0, i32 1
  %10 = load %class.Node*, %class.Node** %next, align 8
  %11 = load %class.Node*, %class.Node** %b.addr, align 8
  %call = call %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* %10, %class.Node* %11)
  %12 = load %class.Node*, %class.Node** %result, align 8
  %next7 = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 1
  store %class.Node* %call, %class.Node** %next7, align 8
  br label %if.end12

if.else8:                                         ; preds = %if.end3
  %13 = load %class.Node*, %class.Node** %b.addr, align 8
  store %class.Node* %13, %class.Node** %result, align 8
  %14 = load %class.Node*, %class.Node** %a.addr, align 8
  %15 = load %class.Node*, %class.Node** %b.addr, align 8
  %next9 = getelementptr inbounds %class.Node, %class.Node* %15, i32 0, i32 1
  %16 = load %class.Node*, %class.Node** %next9, align 8
  %call10 = call %class.Node* @_Z11SortedMergeP4NodeS0_(%class.Node* %14, %class.Node* %16)
  %17 = load %class.Node*, %class.Node** %result, align 8
  %next11 = getelementptr inbounds %class.Node, %class.Node* %17, i32 0, i32 1
  store %class.Node* %call10, %class.Node** %next11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.then6
  %18 = load %class.Node*, %class.Node** %result, align 8
  store %class.Node* %18, %class.Node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then2, %if.then
  %19 = load %class.Node*, %class.Node** %retval, align 8
  ret %class.Node* %19
}

; Function Attrs: noinline uwtable
define dso_local void @_Z9printListP4Node(%class.Node* %node) #0 {
entry:
  %node.addr = alloca %class.Node*, align 8
  store %class.Node* %node, %class.Node** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %class.Node*, %class.Node** %node.addr, align 8
  %cmp = icmp ne %class.Node* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %class.Node*, %class.Node** %node.addr, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %1, i32 0, i32 0
  %2 = load i32, i32* %data, align 8
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %2)
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %3 = load %class.Node*, %class.Node** %node.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 1
  %4 = load %class.Node*, %class.Node** %next, align 8
  store %class.Node* %4, %class.Node** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define dso_local void @_Z4pushPP4Nodei(%class.Node** %head_ref, i32 %new_data) #0 {
entry:
  %head_ref.addr = alloca %class.Node**, align 8
  %new_data.addr = alloca i32, align 4
  %new_node = alloca %class.Node*, align 8
  store %class.Node** %head_ref, %class.Node*** %head_ref.addr, align 8
  store i32 %new_data, i32* %new_data.addr, align 4
  %call = call i8* @_Znwm(i64 16) #8
  %0 = bitcast i8* %call to %class.Node*
  %1 = bitcast %class.Node* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 16, i1 false)
  store %class.Node* %0, %class.Node** %new_node, align 8
  %2 = load i32, i32* %new_data.addr, align 4
  %3 = load %class.Node*, %class.Node** %new_node, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 0
  store i32 %2, i32* %data, align 8
  %4 = load %class.Node**, %class.Node*** %head_ref.addr, align 8
  %5 = load %class.Node*, %class.Node** %4, align 8
  %6 = load %class.Node*, %class.Node** %new_node, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %6, i32 0, i32 1
  store %class.Node* %5, %class.Node** %next, align 8
  %7 = load %class.Node*, %class.Node** %new_node, align 8
  %8 = load %class.Node**, %class.Node*** %head_ref.addr, align 8
  store %class.Node* %7, %class.Node** %8, align 8
  ret void
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #6

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #7 {
entry:
  %retval = alloca i32, align 4
  %res = alloca %class.Node*, align 8
  %a = alloca %class.Node*, align 8
  store i32 0, i32* %retval, align 4
  store %class.Node* null, %class.Node** %res, align 8
  store %class.Node* null, %class.Node** %a, align 8
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 15)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 10)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 5)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 20)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 3)
  call void @_Z4pushPP4Nodei(%class.Node** %a, i32 2)
  call void @_Z9MergeSortPP4Node(%class.Node** %a)
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  %0 = load %class.Node*, %class.Node** %a, align 8
  call void @_Z9printListP4Node(%class.Node* %0)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_mergeSort_LinkedList.cpp() #0 section ".text.startup" {
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
attributes #6 = { argmemonly nounwind }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
