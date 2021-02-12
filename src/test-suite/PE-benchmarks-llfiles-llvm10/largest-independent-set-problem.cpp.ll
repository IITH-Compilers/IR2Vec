; ModuleID = 'temp/largest-independent-set-problem.cpp'
source_filename = "temp/largest-independent-set-problem.cpp"
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
%class.node = type { i32, i32, %class.node*, %class.node* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [40 x i8] c"Size of the Largest Independent Set is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_largest_independent_set_problem.cpp, i8* null }]

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
define dso_local i32 @_Z3maxii(i32 %x, i32 %y) #4 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z4LISSP4node(%class.node* %root) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %class.node*, align 8
  %liss_excl = alloca i32, align 4
  %liss_incl = alloca i32, align 4
  store %class.node* %root, %class.node** %root.addr, align 8
  %0 = load %class.node*, %class.node** %root.addr, align 8
  %cmp = icmp eq %class.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %class.node*, %class.node** %root.addr, align 8
  %liss = getelementptr inbounds %class.node, %class.node* %1, i32 0, i32 1
  %2 = load i32, i32* %liss, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %3 = load %class.node*, %class.node** %root.addr, align 8
  %liss2 = getelementptr inbounds %class.node, %class.node* %3, i32 0, i32 1
  %4 = load i32, i32* %liss2, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %class.node*, %class.node** %root.addr, align 8
  %left = getelementptr inbounds %class.node, %class.node* %5, i32 0, i32 2
  %6 = load %class.node*, %class.node** %left, align 8
  %cmp4 = icmp eq %class.node* %6, null
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end3
  %7 = load %class.node*, %class.node** %root.addr, align 8
  %right = getelementptr inbounds %class.node, %class.node* %7, i32 0, i32 3
  %8 = load %class.node*, %class.node** %right, align 8
  %cmp5 = icmp eq %class.node* %8, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %9 = load %class.node*, %class.node** %root.addr, align 8
  %liss7 = getelementptr inbounds %class.node, %class.node* %9, i32 0, i32 1
  store i32 1, i32* %liss7, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %10 = load %class.node*, %class.node** %root.addr, align 8
  %left9 = getelementptr inbounds %class.node, %class.node* %10, i32 0, i32 2
  %11 = load %class.node*, %class.node** %left9, align 8
  %call = call i32 @_Z4LISSP4node(%class.node* %11)
  %12 = load %class.node*, %class.node** %root.addr, align 8
  %right10 = getelementptr inbounds %class.node, %class.node* %12, i32 0, i32 3
  %13 = load %class.node*, %class.node** %right10, align 8
  %call11 = call i32 @_Z4LISSP4node(%class.node* %13)
  %add = add nsw i32 %call, %call11
  store i32 %add, i32* %liss_excl, align 4
  store i32 1, i32* %liss_incl, align 4
  %14 = load %class.node*, %class.node** %root.addr, align 8
  %left12 = getelementptr inbounds %class.node, %class.node* %14, i32 0, i32 2
  %15 = load %class.node*, %class.node** %left12, align 8
  %tobool13 = icmp ne %class.node* %15, null
  br i1 %tobool13, label %if.then14, label %if.end23

if.then14:                                        ; preds = %if.end8
  %16 = load %class.node*, %class.node** %root.addr, align 8
  %left15 = getelementptr inbounds %class.node, %class.node* %16, i32 0, i32 2
  %17 = load %class.node*, %class.node** %left15, align 8
  %left16 = getelementptr inbounds %class.node, %class.node* %17, i32 0, i32 2
  %18 = load %class.node*, %class.node** %left16, align 8
  %call17 = call i32 @_Z4LISSP4node(%class.node* %18)
  %19 = load %class.node*, %class.node** %root.addr, align 8
  %left18 = getelementptr inbounds %class.node, %class.node* %19, i32 0, i32 2
  %20 = load %class.node*, %class.node** %left18, align 8
  %right19 = getelementptr inbounds %class.node, %class.node* %20, i32 0, i32 3
  %21 = load %class.node*, %class.node** %right19, align 8
  %call20 = call i32 @_Z4LISSP4node(%class.node* %21)
  %add21 = add nsw i32 %call17, %call20
  %22 = load i32, i32* %liss_incl, align 4
  %add22 = add nsw i32 %22, %add21
  store i32 %add22, i32* %liss_incl, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.end8
  %23 = load %class.node*, %class.node** %root.addr, align 8
  %right24 = getelementptr inbounds %class.node, %class.node* %23, i32 0, i32 3
  %24 = load %class.node*, %class.node** %right24, align 8
  %tobool25 = icmp ne %class.node* %24, null
  br i1 %tobool25, label %if.then26, label %if.end35

if.then26:                                        ; preds = %if.end23
  %25 = load %class.node*, %class.node** %root.addr, align 8
  %right27 = getelementptr inbounds %class.node, %class.node* %25, i32 0, i32 3
  %26 = load %class.node*, %class.node** %right27, align 8
  %left28 = getelementptr inbounds %class.node, %class.node* %26, i32 0, i32 2
  %27 = load %class.node*, %class.node** %left28, align 8
  %call29 = call i32 @_Z4LISSP4node(%class.node* %27)
  %28 = load %class.node*, %class.node** %root.addr, align 8
  %right30 = getelementptr inbounds %class.node, %class.node* %28, i32 0, i32 3
  %29 = load %class.node*, %class.node** %right30, align 8
  %right31 = getelementptr inbounds %class.node, %class.node* %29, i32 0, i32 3
  %30 = load %class.node*, %class.node** %right31, align 8
  %call32 = call i32 @_Z4LISSP4node(%class.node* %30)
  %add33 = add nsw i32 %call29, %call32
  %31 = load i32, i32* %liss_incl, align 4
  %add34 = add nsw i32 %31, %add33
  store i32 %add34, i32* %liss_incl, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.end23
  %32 = load i32, i32* %liss_incl, align 4
  %33 = load i32, i32* %liss_excl, align 4
  %call36 = call i32 @_Z3maxii(i32 %32, i32 %33)
  %34 = load %class.node*, %class.node** %root.addr, align 8
  %liss37 = getelementptr inbounds %class.node, %class.node* %34, i32 0, i32 1
  store i32 %call36, i32* %liss37, align 4
  %35 = load %class.node*, %class.node** %root.addr, align 8
  %liss38 = getelementptr inbounds %class.node, %class.node* %35, i32 0, i32 1
  %36 = load i32, i32* %liss38, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %if.then1, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline uwtable
define dso_local %class.node* @_Z7newNodei(i32 %data) #0 {
entry:
  %data.addr = alloca i32, align 4
  %temp = alloca %class.node*, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call i8* @_Znwm(i64 24) #8
  %0 = bitcast i8* %call to %class.node*
  %1 = bitcast %class.node* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 24, i1 false)
  store %class.node* %0, %class.node** %temp, align 8
  %2 = load i32, i32* %data.addr, align 4
  %3 = load %class.node*, %class.node** %temp, align 8
  %data1 = getelementptr inbounds %class.node, %class.node* %3, i32 0, i32 0
  store i32 %2, i32* %data1, align 8
  %4 = load %class.node*, %class.node** %temp, align 8
  %right = getelementptr inbounds %class.node, %class.node* %4, i32 0, i32 3
  store %class.node* null, %class.node** %right, align 8
  %5 = load %class.node*, %class.node** %temp, align 8
  %left = getelementptr inbounds %class.node, %class.node* %5, i32 0, i32 2
  store %class.node* null, %class.node** %left, align 8
  %6 = load %class.node*, %class.node** %temp, align 8
  %liss = getelementptr inbounds %class.node, %class.node* %6, i32 0, i32 1
  store i32 0, i32* %liss, align 4
  %7 = load %class.node*, %class.node** %temp, align 8
  ret %class.node* %7
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #7 {
entry:
  %retval = alloca i32, align 4
  %root = alloca %class.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %class.node* @_Z7newNodei(i32 20)
  store %class.node* %call, %class.node** %root, align 8
  %call1 = call %class.node* @_Z7newNodei(i32 8)
  %0 = load %class.node*, %class.node** %root, align 8
  %left = getelementptr inbounds %class.node, %class.node* %0, i32 0, i32 2
  store %class.node* %call1, %class.node** %left, align 8
  %call2 = call %class.node* @_Z7newNodei(i32 4)
  %1 = load %class.node*, %class.node** %root, align 8
  %left3 = getelementptr inbounds %class.node, %class.node* %1, i32 0, i32 2
  %2 = load %class.node*, %class.node** %left3, align 8
  %left4 = getelementptr inbounds %class.node, %class.node* %2, i32 0, i32 2
  store %class.node* %call2, %class.node** %left4, align 8
  %call5 = call %class.node* @_Z7newNodei(i32 12)
  %3 = load %class.node*, %class.node** %root, align 8
  %left6 = getelementptr inbounds %class.node, %class.node* %3, i32 0, i32 2
  %4 = load %class.node*, %class.node** %left6, align 8
  %right = getelementptr inbounds %class.node, %class.node* %4, i32 0, i32 3
  store %class.node* %call5, %class.node** %right, align 8
  %call7 = call %class.node* @_Z7newNodei(i32 10)
  %5 = load %class.node*, %class.node** %root, align 8
  %left8 = getelementptr inbounds %class.node, %class.node* %5, i32 0, i32 2
  %6 = load %class.node*, %class.node** %left8, align 8
  %right9 = getelementptr inbounds %class.node, %class.node* %6, i32 0, i32 3
  %7 = load %class.node*, %class.node** %right9, align 8
  %left10 = getelementptr inbounds %class.node, %class.node* %7, i32 0, i32 2
  store %class.node* %call7, %class.node** %left10, align 8
  %call11 = call %class.node* @_Z7newNodei(i32 14)
  %8 = load %class.node*, %class.node** %root, align 8
  %left12 = getelementptr inbounds %class.node, %class.node* %8, i32 0, i32 2
  %9 = load %class.node*, %class.node** %left12, align 8
  %right13 = getelementptr inbounds %class.node, %class.node* %9, i32 0, i32 3
  %10 = load %class.node*, %class.node** %right13, align 8
  %right14 = getelementptr inbounds %class.node, %class.node* %10, i32 0, i32 3
  store %class.node* %call11, %class.node** %right14, align 8
  %call15 = call %class.node* @_Z7newNodei(i32 22)
  %11 = load %class.node*, %class.node** %root, align 8
  %right16 = getelementptr inbounds %class.node, %class.node* %11, i32 0, i32 3
  store %class.node* %call15, %class.node** %right16, align 8
  %call17 = call %class.node* @_Z7newNodei(i32 25)
  %12 = load %class.node*, %class.node** %root, align 8
  %right18 = getelementptr inbounds %class.node, %class.node* %12, i32 0, i32 3
  %13 = load %class.node*, %class.node** %right18, align 8
  %right19 = getelementptr inbounds %class.node, %class.node* %13, i32 0, i32 3
  store %class.node* %call17, %class.node** %right19, align 8
  %call20 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load %class.node*, %class.node** %root, align 8
  %call21 = call i32 @_Z4LISSP4node(%class.node* %14)
  %call22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call20, i32 %call21)
  ret i32 0
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_largest_independent_set_problem.cpp() #0 section ".text.startup" {
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
