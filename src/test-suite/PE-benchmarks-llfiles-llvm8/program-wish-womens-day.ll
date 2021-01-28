; ModuleID = 'PE-benchmarks/program-wish-womens-day.cpp'
source_filename = "PE-benchmarks/program-wish-womens-day.cpp"
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

$_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"HappY Women's DaY\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_program_wish_womens_day.cpp, i8* null }]

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

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %center_dist = alloca float, align 4
  %i29 = alloca i32, align 4
  %j36 = alloca i32, align 4
  %j57 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n, align 4
  %mul = mul nsw i32 2, %1
  %cmp = icmp sle i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %mul2 = mul nsw i32 2, %3
  %cmp3 = icmp sle i32 %2, %mul2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %sub5 = sub nsw i32 %6, %7
  %mul6 = mul nsw i32 %sub, %sub5
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n, align 4
  %sub7 = sub nsw i32 %8, %9
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %n, align 4
  %sub8 = sub nsw i32 %10, %11
  %mul9 = mul nsw i32 %sub7, %sub8
  %add = add nsw i32 %mul6, %mul9
  %call = call double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 %add)
  %conv = fptrunc double %call to float
  store float %conv, float* %center_dist, align 4
  %12 = load float, float* %center_dist, align 4
  %conv10 = fpext float %12 to double
  %13 = load i32, i32* %n, align 4
  %conv11 = sitofp i32 %13 to double
  %sub12 = fsub double %conv11, 5.000000e-01
  %cmp13 = fcmp ogt double %conv10, %sub12
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body4
  %14 = load float, float* %center_dist, align 4
  %conv14 = fpext float %14 to double
  %15 = load i32, i32* %n, align 4
  %conv15 = sitofp i32 %15 to double
  %add16 = fadd double %conv15, 5.000000e-01
  %cmp17 = fcmp olt double %conv14, %add16
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call18 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body4
  %call19 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n, align 4
  %cmp20 = icmp eq i32 %17, %18
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %for.end
  %call22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %call23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %for.end
  %call25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc26

for.inc26:                                        ; preds = %if.end24
  %19 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %19, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end28:                                        ; preds = %for.cond
  store i32 0, i32* %i29, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc73, %for.end28
  %20 = load i32, i32* %i29, align 4
  %21 = load i32, i32* %n, align 4
  %cmp31 = icmp sle i32 %20, %21
  br i1 %cmp31, label %for.body32, label %for.end75

for.body32:                                       ; preds = %for.cond30
  %22 = load i32, i32* %i29, align 4
  %23 = load i32, i32* %n, align 4
  %div = sdiv i32 %23, 2
  %add33 = add nsw i32 %div, 1
  %cmp34 = icmp eq i32 %22, %add33
  br i1 %cmp34, label %if.then35, label %if.else56

if.then35:                                        ; preds = %for.body32
  store i32 0, i32* %j36, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc53, %if.then35
  %24 = load i32, i32* %j36, align 4
  %25 = load i32, i32* %n, align 4
  %mul38 = mul nsw i32 2, %25
  %cmp39 = icmp sle i32 %24, %mul38
  br i1 %cmp39, label %for.body40, label %for.end55

for.body40:                                       ; preds = %for.cond37
  %26 = load i32, i32* %j36, align 4
  %27 = load i32, i32* %n, align 4
  %28 = load i32, i32* %n, align 4
  %div41 = sdiv i32 %28, 2
  %sub42 = sub nsw i32 %27, %div41
  %cmp43 = icmp sge i32 %26, %sub42
  br i1 %cmp43, label %land.lhs.true44, label %if.else50

land.lhs.true44:                                  ; preds = %for.body40
  %29 = load i32, i32* %j36, align 4
  %30 = load i32, i32* %n, align 4
  %31 = load i32, i32* %n, align 4
  %div45 = sdiv i32 %31, 2
  %add46 = add nsw i32 %30, %div45
  %cmp47 = icmp sle i32 %29, %add46
  br i1 %cmp47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %land.lhs.true44
  %call49 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end52

if.else50:                                        ; preds = %land.lhs.true44, %for.body40
  %call51 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %32 = load i32, i32* %j36, align 4
  %inc54 = add nsw i32 %32, 1
  store i32 %inc54, i32* %j36, align 4
  br label %for.cond37

for.end55:                                        ; preds = %for.cond37
  br label %if.end71

if.else56:                                        ; preds = %for.body32
  store i32 0, i32* %j57, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc68, %if.else56
  %33 = load i32, i32* %j57, align 4
  %34 = load i32, i32* %n, align 4
  %mul59 = mul nsw i32 2, %34
  %cmp60 = icmp sle i32 %33, %mul59
  br i1 %cmp60, label %for.body61, label %for.end70

for.body61:                                       ; preds = %for.cond58
  %35 = load i32, i32* %j57, align 4
  %36 = load i32, i32* %n, align 4
  %cmp62 = icmp eq i32 %35, %36
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %for.body61
  %call64 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end67

if.else65:                                        ; preds = %for.body61
  %call66 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then63
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %37 = load i32, i32* %j57, align 4
  %inc69 = add nsw i32 %37, 1
  store i32 %inc69, i32* %j57, align 4
  br label %for.cond58

for.end70:                                        ; preds = %for.cond58
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %for.end55
  %call72 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc73

for.inc73:                                        ; preds = %if.end71
  %38 = load i32, i32* %i29, align 4
  %inc74 = add nsw i32 %38, 1
  store i32 %inc74, i32* %i29, align 4
  br label %for.cond30

for.end75:                                        ; preds = %for.cond30
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_(i32 %__x) #5 comdat {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %conv = sitofp i32 %0 to double
  %call = call double @sqrt(double %conv) #3
  ret double %call
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_program_wish_womens_day.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 "}
