; ModuleID = 'PE-benchmarks/collect-maximum-points-in-a-grid-using-two-traversals.cpp'
source_filename = "PE-benchmarks/collect-maximum-points-in-a-grid-using-two-traversals.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

$_ZSt3maxIiERKT_S2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.arr = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 3, i32 6, i32 8, i32 2], [4 x i32] [i32 5, i32 2, i32 4, i32 3], [4 x i32] [i32 1, i32 1, i32 20, i32 10], [4 x i32] [i32 1, i32 1, i32 20, i32 10], [4 x i32] [i32 1, i32 1, i32 20, i32 10]], align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"Maximum collection is \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_collect_maximum_points_in_a_grid_using_two_traversals.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable mustprogress
define dso_local zeroext i1 @_Z7isValidiii(i32 %0, i32 %1, i32 %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 4
  br label %24

24:                                               ; preds = %21, %18, %15, %12, %9, %3
  %25 = phi i1 [ false, %18 ], [ false, %15 ], [ false, %12 ], [ false, %9 ], [ false, %3 ], [ %23, %21 ]
  ret i1 %25
}

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %0, [4 x [4 x i32]]* %1, i32 %2, i32 %3, i32 %4) #5 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32]*, align 8
  %8 = alloca [4 x [4 x i32]]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %7, align 8
  store [4 x [4 x i32]]* %1, [4 x [4 x i32]]** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call zeroext i1 @_Z7isValidiii(i32 %23, i32 %24, i32 %25)
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 -2147483648, i32* %6, align 4
  br label %254

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load [4 x i32]*, [4 x i32]** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 %44
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %68

50:                                               ; preds = %37
  %51 = load [4 x i32]*, [4 x i32]** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load [4 x i32]*, [4 x i32]** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 %61
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %58, %66
  br label %68

68:                                               ; preds = %50, %41
  %69 = phi i32 [ %49, %41 ], [ %67, %50 ]
  store i32 %69, i32* %6, align 4
  br label %254

70:                                               ; preds = %34, %31, %28
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -2147483648, i32* %6, align 4
  br label %254

74:                                               ; preds = %70
  %75 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %75, i64 %77
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %78, i64 0, i64 %80
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %81, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %99

87:                                               ; preds = %74
  %88 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %91, i64 0, i64 %93
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %94, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  br label %254

99:                                               ; preds = %74
  store i32 -2147483648, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load [4 x i32]*, [4 x i32]** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 %106
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %107, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  br label %130

112:                                              ; preds = %99
  %113 = load [4 x i32]*, [4 x i32]** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %113, i64 %115
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %116, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load [4 x i32]*, [4 x i32]** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %121, i64 %123
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %124, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %120, %128
  br label %130

130:                                              ; preds = %112, %103
  %131 = phi i32 [ %111, %103 ], [ %129, %112 ]
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load [4 x i32]*, [4 x i32]** %7, align 8
  %134 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %133, [4 x [4 x i32]]* %134, i32 %136, i32 %137, i32 %139)
  %141 = add nsw i32 %132, %140
  store i32 %141, i32* %14, align 4
  %142 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %14)
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load [4 x i32]*, [4 x i32]** %7, align 8
  %146 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %145, [4 x [4 x i32]]* %146, i32 %148, i32 %149, i32 %151)
  %153 = add nsw i32 %144, %152
  store i32 %153, i32* %15, align 4
  %154 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %15)
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load [4 x i32]*, [4 x i32]** %7, align 8
  %158 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %157, [4 x [4 x i32]]* %158, i32 %160, i32 %161, i32 %162)
  %164 = add nsw i32 %156, %163
  store i32 %164, i32* %16, align 4
  %165 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %16)
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load [4 x i32]*, [4 x i32]** %7, align 8
  %169 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* %10, align 4
  %173 = sub nsw i32 %172, 1
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %168, [4 x [4 x i32]]* %169, i32 %171, i32 %173, i32 %174)
  %176 = add nsw i32 %167, %175
  store i32 %176, i32* %17, align 4
  %177 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %17)
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load [4 x i32]*, [4 x i32]** %7, align 8
  %181 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 %186, 1
  %188 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %180, [4 x [4 x i32]]* %181, i32 %183, i32 %185, i32 %187)
  %189 = add nsw i32 %179, %188
  store i32 %189, i32* %18, align 4
  %190 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %18)
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load [4 x i32]*, [4 x i32]** %7, align 8
  %194 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %10, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %193, [4 x [4 x i32]]* %194, i32 %196, i32 %198, i32 %200)
  %202 = add nsw i32 %192, %201
  store i32 %202, i32* %19, align 4
  %203 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %19)
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load [4 x i32]*, [4 x i32]** %7, align 8
  %207 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %206, [4 x [4 x i32]]* %207, i32 %209, i32 %211, i32 %212)
  %214 = add nsw i32 %205, %213
  store i32 %214, i32* %20, align 4
  %215 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %20)
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load [4 x i32]*, [4 x i32]** %7, align 8
  %219 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %11, align 4
  %225 = sub nsw i32 %224, 1
  %226 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %218, [4 x [4 x i32]]* %219, i32 %221, i32 %223, i32 %225)
  %227 = add nsw i32 %217, %226
  store i32 %227, i32* %21, align 4
  %228 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %21)
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load [4 x i32]*, [4 x i32]** %7, align 8
  %232 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  %239 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %231, [4 x [4 x i32]]* %232, i32 %234, i32 %236, i32 %238)
  %240 = add nsw i32 %230, %239
  store i32 %240, i32* %22, align 4
  %241 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %22)
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load [4 x [4 x i32]]*, [4 x [4 x i32]]** %8, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %244, i64 %246
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %247, i64 0, i64 %249
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x i32], [4 x i32]* %250, i64 0, i64 %252
  store i32 %243, i32* %253, align 4
  store i32 %243, i32* %6, align 4
  br label %254

254:                                              ; preds = %130, %87, %73, %68, %27
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

; Function Attrs: noinline nounwind uwtable mustprogress
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #4 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

; Function Attrs: noinline uwtable mustprogress
define dso_local i32 @_Z15geMaxCollectionPA4_i([4 x i32]* %0) #5 {
  %2 = alloca [4 x i32]*, align 8
  %3 = alloca [5 x [4 x [4 x i32]]], align 16
  store [4 x i32]* %0, [4 x i32]** %2, align 8
  %4 = getelementptr inbounds [5 x [4 x [4 x i32]]], [5 x [4 x [4 x i32]]]* %3, i64 0, i64 0
  %5 = bitcast [4 x [4 x i32]]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 -1, i64 320, i1 false)
  %6 = load [4 x i32]*, [4 x i32]** %2, align 8
  %7 = getelementptr inbounds [5 x [4 x [4 x i32]]], [5 x [4 x [4 x i32]]]* %3, i64 0, i64 0
  %8 = call i32 @_Z10getMaxUtilPA4_iPA4_S_iii([4 x i32]* %6, [4 x [4 x i32]]* %7, i32 0, i32 0, i32 3)
  ret i32 %8
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline norecurse uwtable mustprogress
define dso_local i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x [4 x i32]], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [5 x [4 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([5 x [4 x i32]]* @__const.main.arr to i8*), i64 80, i1 false)
  %4 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %2, i64 0, i64 0
  %6 = call i32 @_Z15geMaxCollectionPA4_i([4 x i32]* %5)
  %7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %4, i32 %6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_collect_maximum_points_in_a_grid_using_two_traversals.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { noinline norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-++20210402082642+04ba60cfe598-1~exp1~20210402063359.71"}
