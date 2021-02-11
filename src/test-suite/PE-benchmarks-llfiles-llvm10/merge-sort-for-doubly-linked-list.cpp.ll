; ModuleID = 'temp/merge-sort-for-doubly-linked-list.cpp'
source_filename = "temp/merge-sort-for-doubly-linked-list.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@.str = private unnamed_addr constant [38 x i8] c"Forward Traversal using next poitner\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\0ABackward Traversal using prev pointer\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Linked List after sorting\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_merge_sort_for_doubly_linked_list.cpp, i8* null }]

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
define dso_local %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %first, %class.Node* %second) #0 {
entry:
  %retval = alloca %class.Node*, align 8
  %first.addr = alloca %class.Node*, align 8
  %second.addr = alloca %class.Node*, align 8
  store %class.Node* %first, %class.Node** %first.addr, align 8
  store %class.Node* %second, %class.Node** %second.addr, align 8
  %0 = load %class.Node*, %class.Node** %first.addr, align 8
  %tobool = icmp ne %class.Node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %class.Node*, %class.Node** %second.addr, align 8
  store %class.Node* %1, %class.Node** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %class.Node*, %class.Node** %second.addr, align 8
  %tobool1 = icmp ne %class.Node* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load %class.Node*, %class.Node** %first.addr, align 8
  store %class.Node* %3, %class.Node** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %class.Node*, %class.Node** %first.addr, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 0
  %5 = load i32, i32* %data, align 8
  %6 = load %class.Node*, %class.Node** %second.addr, align 8
  %data4 = getelementptr inbounds %class.Node, %class.Node* %6, i32 0, i32 0
  %7 = load i32, i32* %data4, align 8
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %8 = load %class.Node*, %class.Node** %first.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %8, i32 0, i32 1
  %9 = load %class.Node*, %class.Node** %next, align 8
  %10 = load %class.Node*, %class.Node** %second.addr, align 8
  %call = call %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %9, %class.Node* %10)
  %11 = load %class.Node*, %class.Node** %first.addr, align 8
  %next6 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 1
  store %class.Node* %call, %class.Node** %next6, align 8
  %12 = load %class.Node*, %class.Node** %first.addr, align 8
  %13 = load %class.Node*, %class.Node** %first.addr, align 8
  %next7 = getelementptr inbounds %class.Node, %class.Node* %13, i32 0, i32 1
  %14 = load %class.Node*, %class.Node** %next7, align 8
  %prev = getelementptr inbounds %class.Node, %class.Node* %14, i32 0, i32 2
  store %class.Node* %12, %class.Node** %prev, align 8
  %15 = load %class.Node*, %class.Node** %first.addr, align 8
  %prev8 = getelementptr inbounds %class.Node, %class.Node* %15, i32 0, i32 2
  store %class.Node* null, %class.Node** %prev8, align 8
  %16 = load %class.Node*, %class.Node** %first.addr, align 8
  store %class.Node* %16, %class.Node** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end3
  %17 = load %class.Node*, %class.Node** %first.addr, align 8
  %18 = load %class.Node*, %class.Node** %second.addr, align 8
  %next9 = getelementptr inbounds %class.Node, %class.Node* %18, i32 0, i32 1
  %19 = load %class.Node*, %class.Node** %next9, align 8
  %call10 = call %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %17, %class.Node* %19)
  %20 = load %class.Node*, %class.Node** %second.addr, align 8
  %next11 = getelementptr inbounds %class.Node, %class.Node* %20, i32 0, i32 1
  store %class.Node* %call10, %class.Node** %next11, align 8
  %21 = load %class.Node*, %class.Node** %second.addr, align 8
  %22 = load %class.Node*, %class.Node** %second.addr, align 8
  %next12 = getelementptr inbounds %class.Node, %class.Node* %22, i32 0, i32 1
  %23 = load %class.Node*, %class.Node** %next12, align 8
  %prev13 = getelementptr inbounds %class.Node, %class.Node* %23, i32 0, i32 2
  store %class.Node* %21, %class.Node** %prev13, align 8
  %24 = load %class.Node*, %class.Node** %second.addr, align 8
  %prev14 = getelementptr inbounds %class.Node, %class.Node* %24, i32 0, i32 2
  store %class.Node* null, %class.Node** %prev14, align 8
  %25 = load %class.Node*, %class.Node** %second.addr, align 8
  store %class.Node* %25, %class.Node** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then5, %if.then2, %if.then
  %26 = load %class.Node*, %class.Node** %retval, align 8
  ret %class.Node* %26
}

; Function Attrs: noinline uwtable
define dso_local %class.Node* @_Z9mergeSortP4Node(%class.Node* %head) #0 {
entry:
  %retval = alloca %class.Node*, align 8
  %head.addr = alloca %class.Node*, align 8
  %second = alloca %class.Node*, align 8
  store %class.Node* %head, %class.Node** %head.addr, align 8
  %0 = load %class.Node*, %class.Node** %head.addr, align 8
  %tobool = icmp ne %class.Node* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %class.Node*, %class.Node** %head.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %1, i32 0, i32 1
  %2 = load %class.Node*, %class.Node** %next, align 8
  %tobool1 = icmp ne %class.Node* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %class.Node*, %class.Node** %head.addr, align 8
  store %class.Node* %3, %class.Node** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %class.Node*, %class.Node** %head.addr, align 8
  %call = call %class.Node* @_Z5splitP4Node(%class.Node* %4)
  store %class.Node* %call, %class.Node** %second, align 8
  %5 = load %class.Node*, %class.Node** %head.addr, align 8
  %call2 = call %class.Node* @_Z9mergeSortP4Node(%class.Node* %5)
  store %class.Node* %call2, %class.Node** %head.addr, align 8
  %6 = load %class.Node*, %class.Node** %second, align 8
  %call3 = call %class.Node* @_Z9mergeSortP4Node(%class.Node* %6)
  store %class.Node* %call3, %class.Node** %second, align 8
  %7 = load %class.Node*, %class.Node** %head.addr, align 8
  %8 = load %class.Node*, %class.Node** %second, align 8
  %call4 = call %class.Node* @_Z5mergeP4NodeS0_(%class.Node* %7, %class.Node* %8)
  store %class.Node* %call4, %class.Node** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %class.Node*, %class.Node** %retval, align 8
  ret %class.Node* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local %class.Node* @_Z5splitP4Node(%class.Node* %head) #4 {
entry:
  %head.addr = alloca %class.Node*, align 8
  %fast = alloca %class.Node*, align 8
  %slow = alloca %class.Node*, align 8
  %temp = alloca %class.Node*, align 8
  store %class.Node* %head, %class.Node** %head.addr, align 8
  %0 = load %class.Node*, %class.Node** %head.addr, align 8
  store %class.Node* %0, %class.Node** %fast, align 8
  %1 = load %class.Node*, %class.Node** %head.addr, align 8
  store %class.Node* %1, %class.Node** %slow, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %class.Node*, %class.Node** %fast, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %2, i32 0, i32 1
  %3 = load %class.Node*, %class.Node** %next, align 8
  %tobool = icmp ne %class.Node* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %class.Node*, %class.Node** %fast, align 8
  %next1 = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 1
  %5 = load %class.Node*, %class.Node** %next1, align 8
  %next2 = getelementptr inbounds %class.Node, %class.Node* %5, i32 0, i32 1
  %6 = load %class.Node*, %class.Node** %next2, align 8
  %tobool3 = icmp ne %class.Node* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %class.Node*, %class.Node** %fast, align 8
  %next4 = getelementptr inbounds %class.Node, %class.Node* %8, i32 0, i32 1
  %9 = load %class.Node*, %class.Node** %next4, align 8
  %next5 = getelementptr inbounds %class.Node, %class.Node* %9, i32 0, i32 1
  %10 = load %class.Node*, %class.Node** %next5, align 8
  store %class.Node* %10, %class.Node** %fast, align 8
  %11 = load %class.Node*, %class.Node** %slow, align 8
  %next6 = getelementptr inbounds %class.Node, %class.Node* %11, i32 0, i32 1
  %12 = load %class.Node*, %class.Node** %next6, align 8
  store %class.Node* %12, %class.Node** %slow, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %class.Node*, %class.Node** %slow, align 8
  %next7 = getelementptr inbounds %class.Node, %class.Node* %13, i32 0, i32 1
  %14 = load %class.Node*, %class.Node** %next7, align 8
  store %class.Node* %14, %class.Node** %temp, align 8
  %15 = load %class.Node*, %class.Node** %slow, align 8
  %next8 = getelementptr inbounds %class.Node, %class.Node* %15, i32 0, i32 1
  store %class.Node* null, %class.Node** %next8, align 8
  %16 = load %class.Node*, %class.Node** %temp, align 8
  ret %class.Node* %16
}

; Function Attrs: noinline uwtable
define dso_local void @_Z6insertPP4Nodei(%class.Node** %head, i32 %data) #0 {
entry:
  %head.addr = alloca %class.Node**, align 8
  %data.addr = alloca i32, align 4
  %temp = alloca %class.Node*, align 8
  store %class.Node** %head, %class.Node*** %head.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call i8* @_Znwm(i64 24) #8
  %0 = bitcast i8* %call to %class.Node*
  %1 = bitcast %class.Node* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 24, i1 false)
  store %class.Node* %0, %class.Node** %temp, align 8
  %2 = load i32, i32* %data.addr, align 4
  %3 = load %class.Node*, %class.Node** %temp, align 8
  %data1 = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 0
  store i32 %2, i32* %data1, align 8
  %4 = load %class.Node*, %class.Node** %temp, align 8
  %prev = getelementptr inbounds %class.Node, %class.Node* %4, i32 0, i32 2
  store %class.Node* null, %class.Node** %prev, align 8
  %5 = load %class.Node*, %class.Node** %temp, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %5, i32 0, i32 1
  store %class.Node* null, %class.Node** %next, align 8
  %6 = load %class.Node**, %class.Node*** %head.addr, align 8
  %7 = load %class.Node*, %class.Node** %6, align 8
  %tobool = icmp ne %class.Node* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %class.Node*, %class.Node** %temp, align 8
  %9 = load %class.Node**, %class.Node*** %head.addr, align 8
  store %class.Node* %8, %class.Node** %9, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %class.Node**, %class.Node*** %head.addr, align 8
  %11 = load %class.Node*, %class.Node** %10, align 8
  %12 = load %class.Node*, %class.Node** %temp, align 8
  %next2 = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 1
  store %class.Node* %11, %class.Node** %next2, align 8
  %13 = load %class.Node*, %class.Node** %temp, align 8
  %14 = load %class.Node**, %class.Node*** %head.addr, align 8
  %15 = load %class.Node*, %class.Node** %14, align 8
  %prev3 = getelementptr inbounds %class.Node, %class.Node* %15, i32 0, i32 2
  store %class.Node* %13, %class.Node** %prev3, align 8
  %16 = load %class.Node*, %class.Node** %temp, align 8
  %17 = load %class.Node**, %class.Node*** %head.addr, align 8
  store %class.Node* %16, %class.Node** %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline uwtable
define dso_local void @_Z5printP4Node(%class.Node* %head) #0 {
entry:
  %head.addr = alloca %class.Node*, align 8
  %temp = alloca %class.Node*, align 8
  store %class.Node* %head, %class.Node** %head.addr, align 8
  %0 = load %class.Node*, %class.Node** %head.addr, align 8
  store %class.Node* %0, %class.Node** %temp, align 8
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %class.Node*, %class.Node** %head.addr, align 8
  %tobool = icmp ne %class.Node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %class.Node*, %class.Node** %head.addr, align 8
  %data = getelementptr inbounds %class.Node, %class.Node* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %3)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %class.Node*, %class.Node** %head.addr, align 8
  store %class.Node* %4, %class.Node** %temp, align 8
  %5 = load %class.Node*, %class.Node** %head.addr, align 8
  %next = getelementptr inbounds %class.Node, %class.Node* %5, i32 0, i32 1
  %6 = load %class.Node*, %class.Node** %next, align 8
  store %class.Node* %6, %class.Node** %head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %7 = load %class.Node*, %class.Node** %temp, align 8
  %tobool5 = icmp ne %class.Node* %7, null
  br i1 %tobool5, label %while.body6, label %while.end10

while.body6:                                      ; preds = %while.cond4
  %8 = load %class.Node*, %class.Node** %temp, align 8
  %data7 = getelementptr inbounds %class.Node, %class.Node* %8, i32 0, i32 0
  %9 = load i32, i32* %data7, align 8
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %9)
  %call9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %class.Node*, %class.Node** %temp, align 8
  %prev = getelementptr inbounds %class.Node, %class.Node* %10, i32 0, i32 2
  %11 = load %class.Node*, %class.Node** %prev, align 8
  store %class.Node* %11, %class.Node** %temp, align 8
  br label %while.cond4

while.end10:                                      ; preds = %while.cond4
  ret void
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z4swapPiS_(i32* %A, i32* %B) #4 {
entry:
  %A.addr = alloca i32*, align 8
  %B.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32* %B, i32** %B.addr, align 8
  %0 = load i32*, i32** %A.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %B.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %A.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %B.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #7 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %class.Node*, align 8
  store i32 0, i32* %retval, align 4
  store %class.Node* null, %class.Node** %head, align 8
  call void @_Z6insertPP4Nodei(%class.Node** %head, i32 5)
  call void @_Z6insertPP4Nodei(%class.Node** %head, i32 20)
  call void @_Z6insertPP4Nodei(%class.Node** %head, i32 4)
  call void @_Z6insertPP4Nodei(%class.Node** %head, i32 3)
  call void @_Z6insertPP4Nodei(%class.Node** %head, i32 30)
  call void @_Z6insertPP4Nodei(%class.Node** %head, i32 10)
  %0 = load %class.Node*, %class.Node** %head, align 8
  %call = call %class.Node* @_Z9mergeSortP4Node(%class.Node* %0)
  store %class.Node* %call, %class.Node** %head, align 8
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %1 = load %class.Node*, %class.Node** %head, align 8
  call void @_Z5printP4Node(%class.Node* %1)
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_merge_sort_for_doubly_linked_list.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
