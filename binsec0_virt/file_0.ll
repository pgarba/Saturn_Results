; ModuleID = 'file_0.c'
source_filename = "file_0.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.22.27905"

%"union._1_main_$node" = type { i8* }

$"??_C@_0BH@KDHMMLMP@Sum?5is?3?5?$CFd?6?$AAsuccess?$CB?6?$AA?$AA@" = comdat any

@"_1_main_$array" = dso_local global [1 x [226 x i8]] [[226 x i8] c"\07\00\00\00\00\FC\10\00\00\00}\84\01\00\00\00\E9\07\01\00\00\00\16\AF\08\00\00\00\00\00\00\00\89\D6\E9\EF\FC\18\00\00\00\1F\FC\18\00\00\00\E9\FC \00\00\00\1F7\04\00\00\00\FC \00\00\00\E9l<\BF\0E\00\00\007\04\00\00\007@\00\00\00\FC\10\00\00\00\96\FC \00\00\00\E9l<\FE\FC\10\00\00\00}\FC \00\00\00\E9\07\01\00\00\00\16\AF\01\00\00\00\00\00\00\00\89Y\FC \00\00\00\1F7\B6\FF\FF\FF7\B1\FF\FF\FF\EB\00\00\00\00\EF\FC(\00\00\00\1F\FC\10\00\00\00\96\FC0\00\00\00}:\01\00\00\007\04\00\00\00\07@\06\00\00\FC\10\00\00\00\96^\BF\09\00\00\007\1A\00\00\00\EB\0C\00\00\00\EF\FC8\00\00\00\1F:\02\00\00\007\04\00\00\00\07\00\00\00\00\22"], align 16
@"??_C@_0BH@KDHMMLMP@Sum?5is?3?5?$CFd?6?$AAsuccess?$CB?6?$AA?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"Sum is: %d\0A\00success!\0A\00\00", comdat, align 1
@"_1_main_$strings" = dso_local global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"??_C@_0BH@KDHMMLMP@Sum?5is?3?5?$CFd?6?$AAsuccess?$CB?6?$AA?$AA@", i32 0, i32 0), align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %"_1_main_$locals" = alloca [64 x i8], align 16
  %"_1_main_$stack" = alloca [1 x [32 x %"union._1_main_$node"]], align 16
  %"_1_main_$sp" = alloca [1 x %"union._1_main_$node"*], align 8
  %"_1_main_$pc" = alloca [1 x i8*], align 8
  store i32 0, i32* %retval, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @megaInit()
  %arrayidx = getelementptr inbounds [1 x [32 x %"union._1_main_$node"]], [1 x [32 x %"union._1_main_$node"]]* %"_1_main_$stack", i64 0, i64 0
  %arraydecay = getelementptr inbounds [32 x %"union._1_main_$node"], [32 x %"union._1_main_$node"]* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  store %"union._1_main_$node"* %arraydecay, %"union._1_main_$node"** %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  store i8* getelementptr inbounds ([1 x [226 x i8]], [1 x [226 x i8]]* @"_1_main_$array", i64 0, i64 0, i32 0), i8** %arrayidx2, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog259
  %arrayidx3 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %0 = load i8*, i8** %arrayidx3, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog259 [
    i32 31, label %sw.bb
    i32 191, label %sw.bb11
    i32 7, label %sw.bb23
    i32 55, label %sw.bb34
    i32 233, label %sw.bb41
    i32 125, label %sw.bb50
    i32 85, label %sw.bb61
    i32 89, label %sw.bb64
    i32 34, label %sw.bb79
    i32 239, label %sw.bb85
    i32 235, label %sw.bb94
    i32 108, label %sw.bb107
    i32 252, label %sw.bb115
    i32 137, label %sw.bb129
    i32 150, label %sw.bb143
    i32 132, label %sw.bb152
    i32 214, label %sw.bb168
    i32 94, label %sw.bb184
    i32 175, label %sw.bb199
    i32 60, label %sw.bb210
    i32 22, label %sw.bb220
    i32 254, label %sw.bb229
    i32 58, label %sw.bb243
  ]

sw.bb:                                            ; preds = %while.body
  %arrayidx4 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %2 = load i8*, i8** %arrayidx4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %3 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx5, align 8
  %add.ptr = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %3, i64 -1
  %_void_star = bitcast %"union._1_main_$node"* %add.ptr to i8**
  %4 = load i8*, i8** %_void_star, align 8
  %arrayidx6 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %5 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx6, align 8
  %add.ptr7 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %5, i64 0
  %_void_star8 = bitcast %"union._1_main_$node"* %add.ptr7 to i8**
  %6 = load i8*, i8** %_void_star8, align 8
  %7 = bitcast i8* %6 to i8**
  store i8* %4, i8** %7, align 8
  %arrayidx9 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %8 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx9, align 8
  %add.ptr10 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %8, i64 -2
  store %"union._1_main_$node"* %add.ptr10, %"union._1_main_$node"** %arrayidx9, align 8
  br label %sw.epilog259

sw.bb11:                                          ; preds = %while.body
  %arrayidx12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %9 = load i8*, i8** %arrayidx12, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr13, i8** %arrayidx12, align 8
  %arrayidx14 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %10 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx14, align 8
  %add.ptr15 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %10, i64 0
  %_int = bitcast %"union._1_main_$node"* %add.ptr15 to i32*
  %11 = load i32, i32* %_int, align 8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb11
  %arrayidx16 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %12 = load i8*, i8** %arrayidx16, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %arrayidx17 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %15 = load i8*, i8** %arrayidx17, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr18, i8** %arrayidx17, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb11
  %arrayidx19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %16 = load i8*, i8** %arrayidx19, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr20, i8** %arrayidx19, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx21 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %17 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx21, align 8
  %incdec.ptr22 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %17, i32 -1
  store %"union._1_main_$node"* %incdec.ptr22, %"union._1_main_$node"** %arrayidx21, align 8
  br label %sw.epilog259

sw.bb23:                                          ; preds = %while.body
  %arrayidx24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %18 = load i8*, i8** %arrayidx24, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr25, i8** %arrayidx24, align 8
  %arrayidx26 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %19 = load i8*, i8** %arrayidx26, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %arrayidx27 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %22 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx27, align 8
  %add.ptr28 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %22, i64 1
  %_int29 = bitcast %"union._1_main_$node"* %add.ptr28 to i32*
  store i32 %21, i32* %_int29, align 8
  %arrayidx30 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %23 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx30, align 8
  %incdec.ptr31 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %23, i32 1
  store %"union._1_main_$node"* %incdec.ptr31, %"union._1_main_$node"** %arrayidx30, align 8
  %arrayidx32 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %24 = load i8*, i8** %arrayidx32, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %add.ptr33, i8** %arrayidx32, align 8
  br label %sw.epilog259

sw.bb34:                                          ; preds = %while.body
  %arrayidx35 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %25 = load i8*, i8** %arrayidx35, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr36, i8** %arrayidx35, align 8
  %arrayidx37 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %26 = load i8*, i8** %arrayidx37, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %arrayidx38 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %29 = load i8*, i8** %arrayidx38, align 8
  %idx.ext39 = sext i32 %28 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %29, i64 %idx.ext39
  store i8* %add.ptr40, i8** %arrayidx38, align 8
  br label %sw.epilog259

sw.bb41:                                          ; preds = %while.body
  %arrayidx42 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %30 = load i8*, i8** %arrayidx42, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr43, i8** %arrayidx42, align 8
  %arrayidx44 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %31 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx44, align 8
  %add.ptr45 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %31, i64 0
  %_void_star46 = bitcast %"union._1_main_$node"* %add.ptr45 to i8**
  %32 = load i8*, i8** %_void_star46, align 8
  %33 = bitcast i8* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %arrayidx47 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %35 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx47, align 8
  %add.ptr48 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %35, i64 0
  %_void_star49 = bitcast %"union._1_main_$node"* %add.ptr48 to i8**
  store i8* %34, i8** %_void_star49, align 8
  br label %sw.epilog259

sw.bb50:                                          ; preds = %while.body
  %arrayidx51 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %36 = load i8*, i8** %arrayidx51, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr52, i8** %arrayidx51, align 8
  %arrayidx53 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %37 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx53, align 8
  %add.ptr54 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %37, i64 -1
  %_int55 = bitcast %"union._1_main_$node"* %add.ptr54 to i32*
  %38 = load i32, i32* %_int55, align 8
  %arrayidx56 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %39 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx56, align 8
  %add.ptr57 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %39, i64 0
  %_void_star58 = bitcast %"union._1_main_$node"* %add.ptr57 to i8**
  %40 = load i8*, i8** %_void_star58, align 8
  %41 = bitcast i8* %40 to i32*
  store i32 %38, i32* %41, align 4
  %arrayidx59 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %42 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx59, align 8
  %add.ptr60 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %42, i64 -2
  store %"union._1_main_$node"* %add.ptr60, %"union._1_main_$node"** %arrayidx59, align 8
  br label %sw.epilog259

sw.bb61:                                          ; preds = %while.body
  %arrayidx62 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %43 = load i8*, i8** %arrayidx62, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr63, i8** %arrayidx62, align 8
  br label %sw.epilog259

sw.bb64:                                          ; preds = %while.body
  %arrayidx65 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %44 = load i8*, i8** %arrayidx65, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr66, i8** %arrayidx65, align 8
  %arrayidx67 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %45 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx67, align 8
  %add.ptr68 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %45, i64 -1
  %_void_star69 = bitcast %"union._1_main_$node"* %add.ptr68 to i8**
  %46 = load i8*, i8** %_void_star69, align 8
  %arrayidx70 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %47 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx70, align 8
  %add.ptr71 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %47, i64 0
  %_unsigned_long = bitcast %"union._1_main_$node"* %add.ptr71 to i32*
  %48 = load i32, i32* %_unsigned_long, align 8
  %idx.ext72 = zext i32 %48 to i64
  %add.ptr73 = getelementptr i8, i8* %46, i64 %idx.ext72
  %arrayidx74 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %49 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx74, align 8
  %add.ptr75 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %49, i64 -1
  %_void_star76 = bitcast %"union._1_main_$node"* %add.ptr75 to i8**
  store i8* %add.ptr73, i8** %_void_star76, align 8
  %arrayidx77 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %50 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx77, align 8
  %incdec.ptr78 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %50, i32 -1
  store %"union._1_main_$node"* %incdec.ptr78, %"union._1_main_$node"** %arrayidx77, align 8
  br label %sw.epilog259

sw.bb79:                                          ; preds = %while.body
  %arrayidx80 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %51 = load i8*, i8** %arrayidx80, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr81, i8** %arrayidx80, align 8
  %arrayidx82 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %52 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx82, align 8
  %add.ptr83 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %52, i64 0
  %_int84 = bitcast %"union._1_main_$node"* %add.ptr83 to i32*
  %53 = load i32, i32* %_int84, align 8
  ret i32 %53

sw.bb85:                                          ; preds = %while.body
  %arrayidx86 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %54 = load i8*, i8** %arrayidx86, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr87, i8** %arrayidx86, align 8
  %arrayidx88 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %55 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx88, align 8
  %add.ptr89 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %55, i64 0
  %_void_star90 = bitcast %"union._1_main_$node"* %add.ptr89 to i8**
  %56 = load i8*, i8** %_void_star90, align 8
  %arrayidx91 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %57 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx91, align 8
  %add.ptr92 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %57, i64 0
  %_void_star93 = bitcast %"union._1_main_$node"* %add.ptr92 to i8**
  store i8* %56, i8** %_void_star93, align 8
  br label %sw.epilog259

sw.bb94:                                          ; preds = %while.body
  %arrayidx95 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %58 = load i8*, i8** %arrayidx95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr96, i8** %arrayidx95, align 8
  %59 = load i8*, i8** @"_1_main_$strings", align 8
  %arrayidx97 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %60 = load i8*, i8** %arrayidx97, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %idx.ext98 = sext i32 %62 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %59, i64 %idx.ext98
  %arrayidx100 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %63 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx100, align 8
  %add.ptr101 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %63, i64 1
  %_void_star102 = bitcast %"union._1_main_$node"* %add.ptr101 to i8**
  store i8* %add.ptr99, i8** %_void_star102, align 8
  %arrayidx103 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %64 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx103, align 8
  %incdec.ptr104 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %64, i32 1
  store %"union._1_main_$node"* %incdec.ptr104, %"union._1_main_$node"** %arrayidx103, align 8
  %arrayidx105 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %65 = load i8*, i8** %arrayidx105, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %add.ptr106, i8** %arrayidx105, align 8
  br label %sw.epilog259

sw.bb107:                                         ; preds = %while.body
  %arrayidx108 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %66 = load i8*, i8** %arrayidx108, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr109, i8** %arrayidx108, align 8
  %arrayidx110 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %67 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx110, align 8
  %add.ptr111 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %67, i64 0
  %_void_star112 = bitcast %"union._1_main_$node"* %add.ptr111 to i8**
  %68 = load i8*, i8** %_void_star112, align 8
  %69 = load i8, i8* %68, align 1
  %arrayidx113 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %70 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx113, align 8
  %add.ptr114 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %70, i64 0
  %_char = bitcast %"union._1_main_$node"* %add.ptr114 to i8*
  store i8 %69, i8* %_char, align 8
  br label %sw.epilog259

sw.bb115:                                         ; preds = %while.body
  %arrayidx116 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %71 = load i8*, i8** %arrayidx116, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr117, i8** %arrayidx116, align 8
  %arraydecay118 = getelementptr inbounds [64 x i8], [64 x i8]* %"_1_main_$locals", i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %72 = load i8*, i8** %arrayidx119, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i32, i32* %73, align 4
  %idx.ext120 = sext i32 %74 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %arraydecay118, i64 %idx.ext120
  %arrayidx122 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %75 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx122, align 8
  %add.ptr123 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %75, i64 1
  %_void_star124 = bitcast %"union._1_main_$node"* %add.ptr123 to i8**
  store i8* %add.ptr121, i8** %_void_star124, align 8
  %arrayidx125 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %76 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx125, align 8
  %incdec.ptr126 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %76, i32 1
  store %"union._1_main_$node"* %incdec.ptr126, %"union._1_main_$node"** %arrayidx125, align 8
  %arrayidx127 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %77 = load i8*, i8** %arrayidx127, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %add.ptr128, i8** %arrayidx127, align 8
  br label %sw.epilog259

sw.bb129:                                         ; preds = %while.body
  %arrayidx130 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %78 = load i8*, i8** %arrayidx130, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr131, i8** %arrayidx130, align 8
  %arrayidx132 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %79 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx132, align 8
  %add.ptr133 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %79, i64 -1
  %_unsigned_long134 = bitcast %"union._1_main_$node"* %add.ptr133 to i32*
  %80 = load i32, i32* %_unsigned_long134, align 8
  %arrayidx135 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %81 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx135, align 8
  %add.ptr136 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %81, i64 0
  %_unsigned_long137 = bitcast %"union._1_main_$node"* %add.ptr136 to i32*
  %82 = load i32, i32* %_unsigned_long137, align 8
  %mul = mul i32 %80, %82
  %arrayidx138 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %83 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx138, align 8
  %add.ptr139 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %83, i64 -1
  %_unsigned_long140 = bitcast %"union._1_main_$node"* %add.ptr139 to i32*
  store i32 %mul, i32* %_unsigned_long140, align 8
  %arrayidx141 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %84 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx141, align 8
  %incdec.ptr142 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %84, i32 -1
  store %"union._1_main_$node"* %incdec.ptr142, %"union._1_main_$node"** %arrayidx141, align 8
  br label %sw.epilog259

sw.bb143:                                         ; preds = %while.body
  %arrayidx144 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %85 = load i8*, i8** %arrayidx144, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr145, i8** %arrayidx144, align 8
  %arrayidx146 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %86 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx146, align 8
  %add.ptr147 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %86, i64 0
  %_void_star148 = bitcast %"union._1_main_$node"* %add.ptr147 to i8**
  %87 = load i8*, i8** %_void_star148, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %arrayidx149 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %90 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx149, align 8
  %add.ptr150 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %90, i64 0
  %_int151 = bitcast %"union._1_main_$node"* %add.ptr150 to i32*
  store i32 %89, i32* %_int151, align 8
  br label %sw.epilog259

sw.bb152:                                         ; preds = %while.body
  %arrayidx153 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %91 = load i8*, i8** %arrayidx153, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr154, i8** %arrayidx153, align 8
  %arrayidx155 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %92 = load i8*, i8** %arrayidx155, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %sw.epilog [
    i32 1, label %sw.bb156
    i32 0, label %sw.bb160
  ]

sw.bb156:                                         ; preds = %sw.bb152
  %95 = bitcast i8*** %argv.addr to i8*
  %arrayidx157 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %96 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx157, align 8
  %add.ptr158 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %96, i64 1
  %_void_star159 = bitcast %"union._1_main_$node"* %add.ptr158 to i8**
  store i8* %95, i8** %_void_star159, align 8
  br label %sw.epilog

sw.bb160:                                         ; preds = %sw.bb152
  %97 = bitcast i32* %argc.addr to i8*
  %arrayidx161 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %98 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx161, align 8
  %add.ptr162 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %98, i64 1
  %_void_star163 = bitcast %"union._1_main_$node"* %add.ptr162 to i8**
  store i8* %97, i8** %_void_star163, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb152, %sw.bb160, %sw.bb156
  %arrayidx164 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %99 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx164, align 8
  %incdec.ptr165 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %99, i32 1
  store %"union._1_main_$node"* %incdec.ptr165, %"union._1_main_$node"** %arrayidx164, align 8
  %arrayidx166 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %100 = load i8*, i8** %arrayidx166, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %add.ptr167, i8** %arrayidx166, align 8
  br label %sw.epilog259

sw.bb168:                                         ; preds = %while.body
  %arrayidx169 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %101 = load i8*, i8** %arrayidx169, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr170, i8** %arrayidx169, align 8
  %arrayidx171 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %102 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx171, align 8
  %add.ptr172 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %102, i64 -1
  %_void_star173 = bitcast %"union._1_main_$node"* %add.ptr172 to i8**
  %103 = load i8*, i8** %_void_star173, align 8
  %arrayidx174 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %104 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx174, align 8
  %add.ptr175 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %104, i64 0
  %_unsigned_long176 = bitcast %"union._1_main_$node"* %add.ptr175 to i32*
  %105 = load i32, i32* %_unsigned_long176, align 8
  %idx.ext177 = zext i32 %105 to i64
  %add.ptr178 = getelementptr i8, i8* %103, i64 %idx.ext177
  %arrayidx179 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %106 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx179, align 8
  %add.ptr180 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %106, i64 -1
  %_void_star181 = bitcast %"union._1_main_$node"* %add.ptr180 to i8**
  store i8* %add.ptr178, i8** %_void_star181, align 8
  %arrayidx182 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %107 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx182, align 8
  %incdec.ptr183 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %107, i32 -1
  store %"union._1_main_$node"* %incdec.ptr183, %"union._1_main_$node"** %arrayidx182, align 8
  br label %sw.epilog259

sw.bb184:                                         ; preds = %while.body
  %arrayidx185 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %108 = load i8*, i8** %arrayidx185, align 8
  %incdec.ptr186 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr186, i8** %arrayidx185, align 8
  %arrayidx187 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %109 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx187, align 8
  %add.ptr188 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %109, i64 0
  %_int189 = bitcast %"union._1_main_$node"* %add.ptr188 to i32*
  %110 = load i32, i32* %_int189, align 8
  %arrayidx190 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %111 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx190, align 8
  %add.ptr191 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %111, i64 -1
  %_int192 = bitcast %"union._1_main_$node"* %add.ptr191 to i32*
  %112 = load i32, i32* %_int192, align 8
  %cmp = icmp eq i32 %110, %112
  %conv193 = zext i1 %cmp to i32
  %arrayidx194 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %113 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx194, align 8
  %add.ptr195 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %113, i64 -1
  %_int196 = bitcast %"union._1_main_$node"* %add.ptr195 to i32*
  store i32 %conv193, i32* %_int196, align 8
  %arrayidx197 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %114 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx197, align 8
  %incdec.ptr198 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %114, i32 -1
  store %"union._1_main_$node"* %incdec.ptr198, %"union._1_main_$node"** %arrayidx197, align 8
  br label %sw.epilog259

sw.bb199:                                         ; preds = %while.body
  %arrayidx200 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %115 = load i8*, i8** %arrayidx200, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr201, i8** %arrayidx200, align 8
  %arrayidx202 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %116 = load i8*, i8** %arrayidx202, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i32, i32* %117, align 4
  %arrayidx203 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %119 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx203, align 8
  %add.ptr204 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %119, i64 1
  %_unsigned_long205 = bitcast %"union._1_main_$node"* %add.ptr204 to i32*
  store i32 %118, i32* %_unsigned_long205, align 8
  %arrayidx206 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %120 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx206, align 8
  %incdec.ptr207 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %120, i32 1
  store %"union._1_main_$node"* %incdec.ptr207, %"union._1_main_$node"** %arrayidx206, align 8
  %arrayidx208 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %121 = load i8*, i8** %arrayidx208, align 8
  %add.ptr209 = getelementptr inbounds i8, i8* %121, i64 8
  store i8* %add.ptr209, i8** %arrayidx208, align 8
  br label %sw.epilog259

sw.bb210:                                         ; preds = %while.body
  %arrayidx211 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %122 = load i8*, i8** %arrayidx211, align 8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr212, i8** %arrayidx211, align 8
  %arrayidx213 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %123 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx213, align 8
  %add.ptr214 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %123, i64 0
  %_char215 = bitcast %"union._1_main_$node"* %add.ptr214 to i8*
  %124 = load i8, i8* %_char215, align 8
  %conv216 = sext i8 %124 to i32
  %arrayidx217 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %125 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx217, align 8
  %add.ptr218 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %125, i64 0
  %_int219 = bitcast %"union._1_main_$node"* %add.ptr218 to i32*
  store i32 %conv216, i32* %_int219, align 8
  br label %sw.epilog259

sw.bb220:                                         ; preds = %while.body
  %arrayidx221 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %126 = load i8*, i8** %arrayidx221, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr222, i8** %arrayidx221, align 8
  %arrayidx223 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %127 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx223, align 8
  %add.ptr224 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %127, i64 0
  %_int225 = bitcast %"union._1_main_$node"* %add.ptr224 to i32*
  %128 = load i32, i32* %_int225, align 8
  %arrayidx226 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %129 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx226, align 8
  %add.ptr227 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %129, i64 0
  %_unsigned_long228 = bitcast %"union._1_main_$node"* %add.ptr227 to i32*
  store i32 %128, i32* %_unsigned_long228, align 8
  br label %sw.epilog259

sw.bb229:                                         ; preds = %while.body
  %arrayidx230 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %130 = load i8*, i8** %arrayidx230, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr231, i8** %arrayidx230, align 8
  %arrayidx232 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %131 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx232, align 8
  %add.ptr233 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %131, i64 -1
  %_int234 = bitcast %"union._1_main_$node"* %add.ptr233 to i32*
  %132 = load i32, i32* %_int234, align 8
  %arrayidx235 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %133 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx235, align 8
  %add.ptr236 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %133, i64 0
  %_int237 = bitcast %"union._1_main_$node"* %add.ptr236 to i32*
  %134 = load i32, i32* %_int237, align 8
  %add = add nsw i32 %132, %134
  %arrayidx238 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %135 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx238, align 8
  %add.ptr239 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %135, i64 -1
  %_int240 = bitcast %"union._1_main_$node"* %add.ptr239 to i32*
  store i32 %add, i32* %_int240, align 8
  %arrayidx241 = getelementptr inbounds [1 x %"union._1_main_$node"*], [1 x %"union._1_main_$node"*]* %"_1_main_$sp", i64 0, i64 0
  %136 = load %"union._1_main_$node"*, %"union._1_main_$node"** %arrayidx241, align 8
  %incdec.ptr242 = getelementptr inbounds %"union._1_main_$node", %"union._1_main_$node"* %136, i32 -1
  store %"union._1_main_$node"* %incdec.ptr242, %"union._1_main_$node"** %arrayidx241, align 8
  br label %sw.epilog259

sw.bb243:                                         ; preds = %while.body
  %arrayidx244 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %137 = load i8*, i8** %arrayidx244, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr245, i8** %arrayidx244, align 8
  %arrayidx246 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %138 = load i8*, i8** %arrayidx246, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %sw.epilog256 [
    i32 1, label %sw.bb247
    i32 2, label %sw.bb252
  ]

sw.bb247:                                         ; preds = %sw.bb243
  %arraydecay248 = getelementptr inbounds [64 x i8], [64 x i8]* %"_1_main_$locals", i32 0, i32 0
  %add.ptr249 = getelementptr inbounds i8, i8* %arraydecay248, i64 48
  %141 = bitcast i8* %add.ptr249 to i32*
  %142 = load i32, i32* %141, align 4
  %arraydecay250 = getelementptr inbounds [64 x i8], [64 x i8]* %"_1_main_$locals", i32 0, i32 0
  %add.ptr251 = getelementptr inbounds i8, i8* %arraydecay250, i64 40
  %143 = bitcast i8* %add.ptr251 to i8**
  %144 = load i8*, i8** %143, align 8
  %call = call i32 (i8*, ...) @printf(i8* %144, i32 %142)
  br label %sw.epilog256

sw.bb252:                                         ; preds = %sw.bb243
  %arraydecay253 = getelementptr inbounds [64 x i8], [64 x i8]* %"_1_main_$locals", i32 0, i32 0
  %add.ptr254 = getelementptr inbounds i8, i8* %arraydecay253, i64 56
  %145 = bitcast i8* %add.ptr254 to i8**
  %146 = load i8*, i8** %145, align 8
  %call255 = call i32 (i8*, ...) @printf(i8* %146)
  br label %sw.epilog256

sw.epilog256:                                     ; preds = %sw.bb243, %sw.bb252, %sw.bb247
  %arrayidx257 = getelementptr inbounds [1 x i8*], [1 x i8*]* %"_1_main_$pc", i64 0, i64 0
  %147 = load i8*, i8** %arrayidx257, align 8
  %add.ptr258 = getelementptr inbounds i8, i8* %147, i64 4
  store i8* %add.ptr258, i8** %arrayidx257, align 8
  br label %sw.epilog259

sw.epilog259:                                     ; preds = %while.body, %sw.epilog256, %sw.bb229, %sw.bb220, %sw.bb210, %sw.bb199, %sw.bb184, %sw.bb168, %sw.epilog, %sw.bb143, %sw.bb129, %sw.bb115, %sw.bb107, %sw.bb94, %sw.bb85, %sw.bb64, %sw.bb61, %sw.bb50, %sw.bb41, %sw.bb34, %sw.bb23, %if.end, %sw.bb
  br label %while.body
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megaInit() #0 {
entry:
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
