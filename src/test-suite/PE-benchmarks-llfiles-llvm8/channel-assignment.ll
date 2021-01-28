; ModuleID = 'PE-benchmarks/channel-assignment.cpp'
source_filename = "PE-benchmarks/channel-assignment.cpp"
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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [56 x i8] c"The number of maximum packets sent in the time slot is \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-> R\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_channel_assignment.cpp, i8* null }]

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
define dso_local zeroext i1 @_Z3bpmPA4_iiPbPi([4 x i32]* %table, i32 %u, i8* %seen, i32* %matchR) #0 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca [4 x i32]*, align 8
  %u.addr = alloca i32, align 4
  %seen.addr = alloca i8*, align 8
  %matchR.addr = alloca i32*, align 8
  %v = alloca i32, align 4
  store [4 x i32]* %table, [4 x i32]** %table.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  store i8* %seen, i8** %seen.addr, align 8
  store i32* %matchR, i32** %matchR.addr, align 8
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %v, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [4 x i32]*, [4 x i32]** %table.addr, align 8
  %2 = load i32, i32* %u.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 %idxprom
  %3 = load i32, i32* %v, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %seen.addr, align 8
  %6 = load i32, i32* %v, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.end16, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %seen.addr, align 8
  %9 = load i32, i32* %v, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 1, i8* %arrayidx7, align 1
  %10 = load i32*, i32** %matchR.addr, align 8
  %11 = load i32, i32* %v, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load [4 x i32]*, [4 x i32]** %table.addr, align 8
  %14 = load i32*, i32** %matchR.addr, align 8
  %15 = load i32, i32* %v, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom11
  %16 = load i32, i32* %arrayidx12, align 4
  %17 = load i8*, i8** %seen.addr, align 8
  %18 = load i32*, i32** %matchR.addr, align 8
  %call = call zeroext i1 @_Z3bpmPA4_iiPbPi([4 x i32]* %13, i32 %16, i8* %17, i32* %18)
  br i1 %call, label %if.then13, label %if.end

if.then13:                                        ; preds = %lor.lhs.false, %if.then
  %19 = load i32, i32* %u.addr, align 4
  %20 = load i32*, i32** %matchR.addr, align 8
  %21 = load i32, i32* %v, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  store i32 %19, i32* %arrayidx15, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end16

if.end16:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %22 = load i32, i32* %v, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then13
  %23 = load i1, i1* %retval, align 1
  ret i1 %23
}

; Function Attrs: noinline uwtable
define dso_local i32 @_Z6maxBPMPA4_i([4 x i32]* %table) #0 {
entry:
  %table.addr = alloca [4 x i32]*, align 8
  %matchR = alloca [4 x i32], align 16
  %result = alloca i32, align 4
  %u = alloca i32, align 4
  %seen = alloca [4 x i8], align 1
  %x = alloca i32, align 4
  store [4 x i32]* %table, [4 x i32]** %table.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %matchR, i32 0, i32 0
  %0 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 -1, i64 16, i1 false)
  store i32 0, i32* %result, align 4
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %u, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %seen, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay1, i8 0, i64 4, i1 false)
  %2 = load [4 x i32]*, [4 x i32]** %table.addr, align 8
  %3 = load i32, i32* %u, align 4
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %seen, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %matchR, i32 0, i32 0
  %call = call zeroext i1 @_Z3bpmPA4_iiPbPi([4 x i32]* %2, i32 %3, i8* %arraydecay2, i32* %arraydecay3)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %result, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %u, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0))
  %6 = load i32, i32* %result, align 4
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call5, i32 %6)
  %call7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %x, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc23, %for.end
  %7 = load i32, i32* %x, align 4
  %cmp9 = icmp slt i32 %7, 4
  br i1 %cmp9, label %for.body10, label %for.end25

for.body10:                                       ; preds = %for.cond8
  %8 = load i32, i32* %x, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %matchR, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %9, 1
  %cmp11 = icmp ne i32 %add, 0
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %for.body10
  %call13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %10 = load i32, i32* %x, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %matchR, i64 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %11, 1
  %call17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call13, i32 %add16)
  %call18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %12 = load i32, i32* %x, align 4
  %add19 = add nsw i32 %12, 1
  %call20 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call18, i32 %add19)
  %call21 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %for.body10
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %13 = load i32, i32* %x, align 4
  %inc24 = add nsw i32 %13, 1
  store i32 %inc24, i32* %x, align 4
  br label %for.cond8

for.end25:                                        ; preds = %for.cond8
  %14 = load i32, i32* %result, align 4
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %table = alloca [3 x [4 x i32]], align 16
  %max_flow = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x [4 x i32]]* %table to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 48, i1 false)
  %1 = bitcast i8* %0 to [3 x [4 x i32]]*
  %2 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %1, i32 0, i32 0
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 1
  store i32 2, i32* %3, align 4
  %4 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %1, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 0
  store i32 3, i32* %5, align 16
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 2
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %1, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 0
  store i32 2, i32* %8, align 16
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 1
  store i32 4, i32* %9, align 4
  %arraydecay = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %table, i32 0, i32 0
  %call = call i32 @_Z6maxBPMPA4_i([4 x i32]* %arraydecay)
  store i32 %call, i32* %max_flow, align 4
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_channel_assignment.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
