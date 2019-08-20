; ModuleID = 'result.c'
source_filename = "result.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.22.27905"

%"union._1_func0_$node" = type { i8* }

$"??_C@_00CNPNBAHC@?$AA@" = comdat any

$"??_C@_03PELOGHMK@?$CFi?6?$AA@" = comdat any

@_global_argv = dso_local global i8** null, align 8
@_global_argc = dso_local global i32 0, align 4
@_global_envp = dso_local global i8** null, align 8
@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@"_1_func0_$strings" = dso_local global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"??_C@_00CNPNBAHC@?$AA@", i32 0, i32 0), align 8
@"_1_func0_$array" = dso_local global [1 x [167 x i8]] [[167 x i8] c"\B5\04\00\00\00*\17\00\00\00\A1\B5\08\00\00\00*\00\00\00\00\A1\09\04\00\00\00\B5\08\00\00\00\FE\B8\00\00\00\00\FE \F2\0E\00\00\00\09\04\00\00\00\09m\00\00\00\B5\04\00\00\00\B5\04\00\00\00\FE\B8\00\00\00\00\FE*\17\00\00\00\C2\AF\A1\B5\04\00\00\00\B5\04\00\00\00\FE\B8\00\00\00\00\FE\B5\08\00\00\00\FE\AF\AF\A1\B5\04\00\00\00\B8\00\00\00\00\FE\B5\08\00\00\00\FE\C2\B5\04\00\00\00\FE\C2\A1\B5\08\00\00\00\B5\08\00\00\00\FE*\01\00\00\00\AF\A1\09\84\FF\FF\FF\09\7F\FF\FF\FF\B5\04\00\00\00\FE\0B"], align 16
@"??_C@_03PELOGHMK@?$CFi?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%i\0A\00", comdat, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv, i8** %_formal_envp) #0 {
entry:
  %retval = alloca i32, align 4
  %_formal_envp.addr = alloca i8**, align 8
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_BARRIER_0 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8** %_formal_envp, i8*** %_formal_envp.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @megaInit()
  %0 = load i32, i32* %argc.addr, align 4
  store i32 %0, i32* @_global_argc, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  store i8** %1, i8*** @_global_argv, align 8
  %2 = load i8**, i8*** %_formal_envp.addr, align 8
  store i8** %2, i8*** @_global_envp, align 8
  store i32 1, i32* %_BARRIER_0, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %call = call i32 @func0(i32 %3)
  store i32 %call, i32* %tmp, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %t, align 4
  %5 = load i32, i32* %t, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"??_C@_03PELOGHMK@?$CFi?6?$AA@", i32 0, i32 0), i32 %5)
  %6 = load i32, i32* %t, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megaInit() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local dllexport i32 @func0(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %"_1_func0_$locals" = alloca [12 x i8], align 1
  %"_1_func0_$stack" = alloca [1 x [32 x %"union._1_func0_$node"]], align 16
  %"_1_func0_$sp" = alloca [1 x %"union._1_func0_$node"*], align 8
  %"_1_func0_$pc" = alloca [1 x i8*], align 8
  store i32 %a, i32* %a.addr, align 4
  %arrayidx = getelementptr inbounds [1 x [32 x %"union._1_func0_$node"]], [1 x [32 x %"union._1_func0_$node"]]* %"_1_func0_$stack", i64 0, i64 0
  %arraydecay = getelementptr inbounds [32 x %"union._1_func0_$node"], [32 x %"union._1_func0_$node"]* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  store %"union._1_func0_$node"* %arraydecay, %"union._1_func0_$node"** %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  store i8* getelementptr inbounds ([1 x [167 x i8]], [1 x [167 x i8]]* @"_1_func0_$array", i64 0, i64 0, i32 0), i8** %arrayidx2, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog125
  %arrayidx3 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %0 = load i8*, i8** %arrayidx3, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog125 [
    i32 184, label %sw.bb
    i32 194, label %sw.bb12
    i32 42, label %sw.bb25
    i32 161, label %sw.bb36
    i32 9, label %sw.bb47
    i32 11, label %sw.bb53
    i32 254, label %sw.bb59
    i32 32, label %sw.bb68
    i32 242, label %sw.bb83
    i32 175, label %sw.bb97
    i32 181, label %sw.bb111
  ]

sw.bb:                                            ; preds = %while.body
  %arrayidx4 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %2 = load i8*, i8** %arrayidx4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %3 = load i8*, i8** %arrayidx5, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb6
  ]

sw.bb6:                                           ; preds = %sw.bb
  %6 = bitcast i32* %a.addr to i8*
  %arrayidx7 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %7 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx7, align 8
  %add.ptr = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %7, i64 1
  %_void_star = bitcast %"union._1_func0_$node"* %add.ptr to i8**
  store i8* %6, i8** %_void_star, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb6
  %arrayidx8 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %8 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx8, align 8
  %incdec.ptr9 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %8, i32 1
  store %"union._1_func0_$node"* %incdec.ptr9, %"union._1_func0_$node"** %arrayidx8, align 8
  %arrayidx10 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %9 = load i8*, i8** %arrayidx10, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %add.ptr11, i8** %arrayidx10, align 8
  br label %sw.epilog125

sw.bb12:                                          ; preds = %while.body
  %arrayidx13 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %10 = load i8*, i8** %arrayidx13, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr14, i8** %arrayidx13, align 8
  %arrayidx15 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %11 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx15, align 8
  %add.ptr16 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %11, i64 0
  %_int = bitcast %"union._1_func0_$node"* %add.ptr16 to i32*
  %12 = load i32, i32* %_int, align 8
  %arrayidx17 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %13 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx17, align 8
  %add.ptr18 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %13, i64 -1
  %_int19 = bitcast %"union._1_func0_$node"* %add.ptr18 to i32*
  %14 = load i32, i32* %_int19, align 8
  %mul = mul nsw i32 %12, %14
  %arrayidx20 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %15 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx20, align 8
  %add.ptr21 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %15, i64 -1
  %_int22 = bitcast %"union._1_func0_$node"* %add.ptr21 to i32*
  store i32 %mul, i32* %_int22, align 8
  %arrayidx23 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %16 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx23, align 8
  %incdec.ptr24 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %16, i32 -1
  store %"union._1_func0_$node"* %incdec.ptr24, %"union._1_func0_$node"** %arrayidx23, align 8
  br label %sw.epilog125

sw.bb25:                                          ; preds = %while.body
  %arrayidx26 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %17 = load i8*, i8** %arrayidx26, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr27, i8** %arrayidx26, align 8
  %arrayidx28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %18 = load i8*, i8** %arrayidx28, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %arrayidx29 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %21 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx29, align 8
  %add.ptr30 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %21, i64 1
  %_int31 = bitcast %"union._1_func0_$node"* %add.ptr30 to i32*
  store i32 %20, i32* %_int31, align 8
  %arrayidx32 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %22 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx32, align 8
  %incdec.ptr33 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %22, i32 1
  store %"union._1_func0_$node"* %incdec.ptr33, %"union._1_func0_$node"** %arrayidx32, align 8
  %arrayidx34 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %23 = load i8*, i8** %arrayidx34, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr35, i8** %arrayidx34, align 8
  br label %sw.epilog125

sw.bb36:                                          ; preds = %while.body
  %arrayidx37 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %24 = load i8*, i8** %arrayidx37, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr38, i8** %arrayidx37, align 8
  %arrayidx39 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %25 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx39, align 8
  %add.ptr40 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %25, i64 0
  %_int41 = bitcast %"union._1_func0_$node"* %add.ptr40 to i32*
  %26 = load i32, i32* %_int41, align 8
  %arrayidx42 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %27 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx42, align 8
  %add.ptr43 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %27, i64 -1
  %_void_star44 = bitcast %"union._1_func0_$node"* %add.ptr43 to i8**
  %28 = load i8*, i8** %_void_star44, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 %26, i32* %29, align 4
  %arrayidx45 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %30 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx45, align 8
  %add.ptr46 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %30, i64 -2
  store %"union._1_func0_$node"* %add.ptr46, %"union._1_func0_$node"** %arrayidx45, align 8
  br label %sw.epilog125

sw.bb47:                                          ; preds = %while.body
  %arrayidx48 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %31 = load i8*, i8** %arrayidx48, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr49, i8** %arrayidx48, align 8
  %arrayidx50 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %32 = load i8*, i8** %arrayidx50, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %arrayidx51 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %35 = load i8*, i8** %arrayidx51, align 8
  %idx.ext = sext i32 %34 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr52, i8** %arrayidx51, align 8
  br label %sw.epilog125

sw.bb53:                                          ; preds = %while.body
  %arrayidx54 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %36 = load i8*, i8** %arrayidx54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr55, i8** %arrayidx54, align 8
  %arrayidx56 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %37 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx56, align 8
  %add.ptr57 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %37, i64 0
  %_int58 = bitcast %"union._1_func0_$node"* %add.ptr57 to i32*
  %38 = load i32, i32* %_int58, align 8
  ret i32 %38

sw.bb59:                                          ; preds = %while.body
  %arrayidx60 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %39 = load i8*, i8** %arrayidx60, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr61, i8** %arrayidx60, align 8
  %arrayidx62 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %40 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx62, align 8
  %add.ptr63 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %40, i64 0
  %_void_star64 = bitcast %"union._1_func0_$node"* %add.ptr63 to i8**
  %41 = load i8*, i8** %_void_star64, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %arrayidx65 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %44 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx65, align 8
  %add.ptr66 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %44, i64 0
  %_int67 = bitcast %"union._1_func0_$node"* %add.ptr66 to i32*
  store i32 %43, i32* %_int67, align 8
  br label %sw.epilog125

sw.bb68:                                          ; preds = %while.body
  %arrayidx69 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %45 = load i8*, i8** %arrayidx69, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr70, i8** %arrayidx69, align 8
  %arrayidx71 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %46 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx71, align 8
  %add.ptr72 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %46, i64 -1
  %_int73 = bitcast %"union._1_func0_$node"* %add.ptr72 to i32*
  %47 = load i32, i32* %_int73, align 8
  %arrayidx74 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %48 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx74, align 8
  %add.ptr75 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %48, i64 0
  %_int76 = bitcast %"union._1_func0_$node"* %add.ptr75 to i32*
  %49 = load i32, i32* %_int76, align 8
  %cmp = icmp slt i32 %47, %49
  %conv77 = zext i1 %cmp to i32
  %arrayidx78 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %50 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx78, align 8
  %add.ptr79 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %50, i64 -1
  %_int80 = bitcast %"union._1_func0_$node"* %add.ptr79 to i32*
  store i32 %conv77, i32* %_int80, align 8
  %arrayidx81 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %51 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx81, align 8
  %incdec.ptr82 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %51, i32 -1
  store %"union._1_func0_$node"* %incdec.ptr82, %"union._1_func0_$node"** %arrayidx81, align 8
  br label %sw.epilog125

sw.bb83:                                          ; preds = %while.body
  %arrayidx84 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %52 = load i8*, i8** %arrayidx84, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr85, i8** %arrayidx84, align 8
  %arrayidx86 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %53 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx86, align 8
  %add.ptr87 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %53, i64 0
  %_int88 = bitcast %"union._1_func0_$node"* %add.ptr87 to i32*
  %54 = load i32, i32* %_int88, align 8
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb83
  %arrayidx89 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %55 = load i8*, i8** %arrayidx89, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %arrayidx90 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %58 = load i8*, i8** %arrayidx90, align 8
  %idx.ext91 = sext i32 %57 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %58, i64 %idx.ext91
  store i8* %add.ptr92, i8** %arrayidx90, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb83
  %arrayidx93 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %59 = load i8*, i8** %arrayidx93, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %add.ptr94, i8** %arrayidx93, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx95 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %60 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx95, align 8
  %incdec.ptr96 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %60, i32 -1
  store %"union._1_func0_$node"* %incdec.ptr96, %"union._1_func0_$node"** %arrayidx95, align 8
  br label %sw.epilog125

sw.bb97:                                          ; preds = %while.body
  %arrayidx98 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %61 = load i8*, i8** %arrayidx98, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr99, i8** %arrayidx98, align 8
  %arrayidx100 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %62 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx100, align 8
  %add.ptr101 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %62, i64 -1
  %_int102 = bitcast %"union._1_func0_$node"* %add.ptr101 to i32*
  %63 = load i32, i32* %_int102, align 8
  %arrayidx103 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %64 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx103, align 8
  %add.ptr104 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %64, i64 0
  %_int105 = bitcast %"union._1_func0_$node"* %add.ptr104 to i32*
  %65 = load i32, i32* %_int105, align 8
  %add = add nsw i32 %63, %65
  %arrayidx106 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %66 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx106, align 8
  %add.ptr107 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %66, i64 -1
  %_int108 = bitcast %"union._1_func0_$node"* %add.ptr107 to i32*
  store i32 %add, i32* %_int108, align 8
  %arrayidx109 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %67 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx109, align 8
  %incdec.ptr110 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %67, i32 -1
  store %"union._1_func0_$node"* %incdec.ptr110, %"union._1_func0_$node"** %arrayidx109, align 8
  br label %sw.epilog125

sw.bb111:                                         ; preds = %while.body
  %arrayidx112 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %68 = load i8*, i8** %arrayidx112, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr113, i8** %arrayidx112, align 8
  %arraydecay114 = getelementptr inbounds [12 x i8], [12 x i8]* %"_1_func0_$locals", i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %69 = load i8*, i8** %arrayidx115, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %idx.ext116 = sext i32 %71 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %arraydecay114, i64 %idx.ext116
  %arrayidx118 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %72 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx118, align 8
  %add.ptr119 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %72, i64 1
  %_void_star120 = bitcast %"union._1_func0_$node"* %add.ptr119 to i8**
  store i8* %add.ptr117, i8** %_void_star120, align 8
  %arrayidx121 = getelementptr inbounds [1 x %"union._1_func0_$node"*], [1 x %"union._1_func0_$node"*]* %"_1_func0_$sp", i64 0, i64 0
  %73 = load %"union._1_func0_$node"*, %"union._1_func0_$node"** %arrayidx121, align 8
  %incdec.ptr122 = getelementptr inbounds %"union._1_func0_$node", %"union._1_func0_$node"* %73, i32 1
  store %"union._1_func0_$node"* %incdec.ptr122, %"union._1_func0_$node"** %arrayidx121, align 8
  %arrayidx123 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_func0_$pc", i64 0, i64 0
  %74 = load i8*, i8** %arrayidx123, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %add.ptr124, i8** %arrayidx123, align 8
  br label %sw.epilog125

sw.epilog125:                                     ; preds = %while.body, %sw.bb111, %sw.bb97, %if.end, %sw.bb68, %sw.bb59, %sw.bb47, %sw.bb36, %sw.bb25, %sw.bb12, %sw.epilog
  br label %while.body
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
