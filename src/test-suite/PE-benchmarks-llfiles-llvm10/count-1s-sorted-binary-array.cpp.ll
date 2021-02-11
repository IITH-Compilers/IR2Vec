; ModuleID = 'temp/count-1s-sorted-binary-array.cpp'
source_filename = "temp/count-1s-sorted-binary-array.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [7 x i8] c"\01\01\01\01\00\00\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [32 x i8] c"Count of 1's in given array is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_count_1s_sorted_binary_array.cpp, i8* null }]

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
define dso_local i32 @_Z9countOnesPbii(i8* %arr, i32 %low, i32 %high) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i8*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i8* %arr, i8** %arr.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load i32, i32* %high.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %low.addr, align 4
  %3 = load i32, i32* %high.addr, align 4
  %4 = load i32, i32* %low.addr, align 4
  %sub = sub nsw i32 %3, %4
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %2, %div
  store i32 %add, i32* %mid, align 4
  %5 = load i32, i32* %mid, align 4
  %6 = load i32, i32* %high.addr, align 4
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i8*, i8** %arr.addr, align 8
  %8 = load i32, i32* %mid, align 4
  %add2 = add nsw i32 %8, 1
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %9 to i1
  %conv = zext i1 %tobool to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %10 = load i8*, i8** %arr.addr, align 8
  %11 = load i32, i32* %mid, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %tobool6 = trunc i8 %12 to i1
  %conv7 = zext i1 %tobool6 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %13 = load i32, i32* %mid, align 4
  %add10 = add nsw i32 %13, 1
  store i32 %add10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i8*, i8** %arr.addr, align 8
  %15 = load i32, i32* %mid, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %16 = load i8, i8* %arrayidx12, align 1
  %tobool13 = trunc i8 %16 to i1
  %conv14 = zext i1 %tobool13 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %17 = load i8*, i8** %arr.addr, align 8
  %18 = load i32, i32* %mid, align 4
  %add17 = add nsw i32 %18, 1
  %19 = load i32, i32* %high.addr, align 4
  %call = call i32 @_Z9countOnesPbii(i8* %17, i32 %add17, i32 %19)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end
  %20 = load i8*, i8** %arr.addr, align 8
  %21 = load i32, i32* %low.addr, align 4
  %22 = load i32, i32* %mid, align 4
  %sub19 = sub nsw i32 %22, 1
  %call20 = call i32 @_Z9countOnesPbii(i8* %20, i32 %21, i32 %sub19)
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.end18, %if.then16, %if.then9
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i8], align 1
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i8]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.arr, i32 0, i32 0), i64 7, i1 false)
  store i32 7, i32* %n, align 4
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %arr, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %1, 1
  %call1 = call i32 @_Z9countOnesPbii(i8* %arraydecay, i32 0, i32 %sub)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %call1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_count_1s_sorted_binary_array.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/svkeerthy/IR2Vec-LoopOptimizationFramework.git c9f3970c8ab4f2e4a601f77c94132e8604938dc1)"}
