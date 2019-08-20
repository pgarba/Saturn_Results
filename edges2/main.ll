; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.22.27905"

%struct.__crt_locale_pointers = type { %struct.__crt_locale_data*, %struct.__crt_multibyte_data* }
%struct.__crt_locale_data = type opaque
%struct.__crt_multibyte_data = type opaque
%struct._iobuf = type { i8* }

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$printf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BC@EBAEHPHD@?$FL?$CB?$FN?5Fib?5test?5?4?4?4?6?$AA@" = comdat any

$"??_C@_0O@HBDGFMOF@?$FL?$CK?$FN?5?$CFi?5?$CB?$DN?5?$CFi?6?$AA@" = comdat any

$"??_C@_0N@IGKJJHL@?$FL?$CK?$FN?5Passed?$CB?6?$AA@" = comdat any

$"??_C@_0BB@EJAACEAF@?$FL?$CB?$FN?5Not?5passed?$CB?6?$AA@" = comdat any

@c = dso_local global i64 1234605616436508552, align 8
@"??_C@_0BC@EBAEHPHD@?$FL?$CB?$FN?5Fib?5test?5?4?4?4?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"[!] Fib test ...\0A\00", comdat, align 1
@"??_C@_0O@HBDGFMOF@?$FL?$CK?$FN?5?$CFi?5?$CB?$DN?5?$CFi?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"[*] %i != %i\0A\00", comdat, align 1
@"??_C@_0N@IGKJJHL@?$FL?$CK?$FN?5Passed?$CB?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"[*] Passed!\0A\00", comdat, align 1
@"??_C@_0BB@EJAACEAF@?$FL?$CB?$FN?5Not?5passed?$CB?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"[!] Not passed!\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(i8* %_Buffer, i8* %_Format, ...) #0 comdat {
entry:
  %_Format.addr = alloca i8*, align 8
  %_Buffer.addr = alloca i8*, align 8
  %_Result = alloca i32, align 4
  %_ArgList = alloca i8*, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store i8* %_Buffer, i8** %_Buffer.addr, align 8
  %_ArgList1 = bitcast i8** %_ArgList to i8*
  call void @llvm.va_start(i8* %_ArgList1)
  %0 = load i8*, i8** %_ArgList, align 8
  %1 = load i8*, i8** %_Format.addr, align 8
  %2 = load i8*, i8** %_Buffer.addr, align 8
  %call = call i32 @_vsprintf_l(i8* %2, i8* %1, %struct.__crt_locale_pointers* null, i8* %0)
  store i32 %call, i32* %_Result, align 4
  store i8* null, i8** %_ArgList, align 8
  %3 = load i32, i32* %_Result, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @vsprintf(i8* %_Buffer, i8* %_Format, i8* %_ArgList) #0 comdat {
entry:
  %_ArgList.addr = alloca i8*, align 8
  %_Format.addr = alloca i8*, align 8
  %_Buffer.addr = alloca i8*, align 8
  store i8* %_ArgList, i8** %_ArgList.addr, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store i8* %_Buffer, i8** %_Buffer.addr, align 8
  %0 = load i8*, i8** %_ArgList.addr, align 8
  %1 = load i8*, i8** %_Format.addr, align 8
  %2 = load i8*, i8** %_Buffer.addr, align 8
  %call = call i32 @_vsnprintf_l(i8* %2, i64 -1, i8* %1, %struct.__crt_locale_pointers* null, i8* %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_snprintf(i8* %_Buffer, i64 %_BufferCount, i8* %_Format, ...) #0 comdat {
entry:
  %_Format.addr = alloca i8*, align 8
  %_BufferCount.addr = alloca i64, align 8
  %_Buffer.addr = alloca i8*, align 8
  %_Result = alloca i32, align 4
  %_ArgList = alloca i8*, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store i64 %_BufferCount, i64* %_BufferCount.addr, align 8
  store i8* %_Buffer, i8** %_Buffer.addr, align 8
  %_ArgList1 = bitcast i8** %_ArgList to i8*
  call void @llvm.va_start(i8* %_ArgList1)
  %0 = load i8*, i8** %_ArgList, align 8
  %1 = load i8*, i8** %_Format.addr, align 8
  %2 = load i64, i64* %_BufferCount.addr, align 8
  %3 = load i8*, i8** %_Buffer.addr, align 8
  %call = call i32 @_vsnprintf(i8* %3, i64 %2, i8* %1, i8* %0)
  store i32 %call, i32* %_Result, align 4
  store i8* null, i8** %_ArgList, align 8
  %4 = load i32, i32* %_Result, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf(i8* %_Buffer, i64 %_BufferCount, i8* %_Format, i8* %_ArgList) #0 comdat {
entry:
  %_ArgList.addr = alloca i8*, align 8
  %_Format.addr = alloca i8*, align 8
  %_BufferCount.addr = alloca i64, align 8
  %_Buffer.addr = alloca i8*, align 8
  store i8* %_ArgList, i8** %_ArgList.addr, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store i64 %_BufferCount, i64* %_BufferCount.addr, align 8
  store i8* %_Buffer, i8** %_Buffer.addr, align 8
  %0 = load i8*, i8** %_ArgList.addr, align 8
  %1 = load i8*, i8** %_Format.addr, align 8
  %2 = load i64, i64* %_BufferCount.addr, align 8
  %3 = load i8*, i8** %_Buffer.addr, align 8
  %call = call i32 @_vsnprintf_l(i8* %3, i64 %2, i8* %1, %struct.__crt_locale_pointers* null, i8* %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local dllexport i32 @edges(i32 %n, i32 %a, i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p8 = alloca i8*, align 8
  %p16 = alloca i16*, align 8
  %p32 = alloca i32*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i11 = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* bitcast (i64* @c to i8*), i8** %p8, align 8
  store i16* bitcast (i64* @c to i16*), i16** %p16, align 8
  store i32* bitcast (i64* @c to i32*), i32** %p32, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %p32, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %a.addr, align 4
  %add = add i32 %4, %3
  store i32 %add, i32* %a.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %6, 4
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %7 = load i16*, i16** %p16, align 8
  %8 = load i32, i32* %i1, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %7, i64 %idxprom5
  %9 = load i16, i16* %arrayidx6, align 2
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %a.addr, align 4
  %add7 = add nsw i32 %10, %conv
  store i32 %add7, i32* %a.addr, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %11 = load i32, i32* %i1, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i1, align 4
  br label %for.cond2

for.end10:                                        ; preds = %for.cond2
  store i32 0, i32* %i11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %for.end10
  %12 = load i32, i32* %i11, align 4
  %cmp13 = icmp slt i32 %12, 8
  br i1 %cmp13, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond12
  %13 = load i8*, i8** %p8, align 8
  %14 = load i32, i32* %i11, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %16 = load i32, i32* %a.addr, align 4
  %add19 = add nsw i32 %16, %conv18
  store i32 %add19, i32* %a.addr, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %17 = load i32, i32* %i11, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* %i11, align 4
  br label %for.cond12

for.end22:                                        ; preds = %for.cond12
  %18 = load i8, i8* bitcast (i64* @c to i8*), align 8
  %conv23 = zext i8 %18 to i32
  %19 = load i32, i32* %a.addr, align 4
  %add24 = add nsw i32 %19, %conv23
  store i32 %add24, i32* %a.addr, align 4
  %20 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 1), align 1
  %conv25 = zext i8 %20 to i32
  %21 = load i32, i32* %a.addr, align 4
  %add26 = add nsw i32 %21, %conv25
  store i32 %add26, i32* %a.addr, align 4
  %22 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 2), align 2
  %conv27 = zext i8 %22 to i32
  %23 = load i32, i32* %a.addr, align 4
  %add28 = add nsw i32 %23, %conv27
  store i32 %add28, i32* %a.addr, align 4
  %24 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 3), align 1
  %conv29 = zext i8 %24 to i32
  %25 = load i32, i32* %a.addr, align 4
  %add30 = add nsw i32 %25, %conv29
  store i32 %add30, i32* %a.addr, align 4
  %26 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 4), align 4
  %conv31 = zext i8 %26 to i32
  %27 = load i32, i32* %a.addr, align 4
  %add32 = add nsw i32 %27, %conv31
  store i32 %add32, i32* %a.addr, align 4
  %28 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 5), align 1
  %conv33 = zext i8 %28 to i32
  %29 = load i32, i32* %a.addr, align 4
  %add34 = add nsw i32 %29, %conv33
  store i32 %add34, i32* %a.addr, align 4
  %30 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 6), align 2
  %conv35 = zext i8 %30 to i32
  %31 = load i32, i32* %a.addr, align 4
  %add36 = add nsw i32 %31, %conv35
  store i32 %add36, i32* %a.addr, align 4
  %32 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 7), align 1
  %conv37 = zext i8 %32 to i32
  %33 = load i32, i32* %a.addr, align 4
  %add38 = add nsw i32 %33, %conv37
  store i32 %add38, i32* %a.addr, align 4
  %34 = load i16, i16* bitcast (i64* @c to i16*), align 8
  %conv39 = zext i16 %34 to i32
  %35 = load i32, i32* %a.addr, align 4
  %add40 = add nsw i32 %35, %conv39
  store i32 %add40, i32* %a.addr, align 4
  %36 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 1), align 2
  %conv41 = zext i16 %36 to i32
  %37 = load i32, i32* %a.addr, align 4
  %add42 = add nsw i32 %37, %conv41
  store i32 %add42, i32* %a.addr, align 4
  %38 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 2), align 4
  %conv43 = zext i16 %38 to i32
  %39 = load i32, i32* %a.addr, align 4
  %add44 = add nsw i32 %39, %conv43
  store i32 %add44, i32* %a.addr, align 4
  %40 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 3), align 2
  %conv45 = zext i16 %40 to i32
  %41 = load i32, i32* %a.addr, align 4
  %add46 = add nsw i32 %41, %conv45
  store i32 %add46, i32* %a.addr, align 4
  %42 = load i32, i32* getelementptr inbounds (i32, i32* bitcast (i64* @c to i32*), i64 1), align 4
  %43 = load i32, i32* %a.addr, align 4
  %add47 = add i32 %43, %42
  store i32 %add47, i32* %a.addr, align 4
  %44 = load i32, i32* bitcast (i64* @c to i32*), align 8
  %45 = load i32, i32* %a.addr, align 4
  %add48 = add i32 %45, %44
  store i32 %add48, i32* %a.addr, align 4
  %46 = load i64, i64* @c, align 8
  %47 = load i32, i32* %a.addr, align 4
  %conv49 = sext i32 %47 to i64
  %add50 = add i64 %conv49, %46
  %conv51 = trunc i64 %add50 to i32
  store i32 %conv51, i32* %a.addr, align 4
  %48 = load i64, i64* @c, align 8
  %49 = load i32, i32* %a.addr, align 4
  %conv52 = sext i32 %49 to i64
  %add53 = add i64 %conv52, %48
  %conv54 = trunc i64 %add53 to i32
  store i32 %conv54, i32* %a.addr, align 4
  %50 = load i32, i32* %a.addr, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local dllexport i32 @edges_test(i32 %n, i32 %a, i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p8 = alloca i8*, align 8
  %p16 = alloca i16*, align 8
  %p32 = alloca i32*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i11 = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* bitcast (i64* @c to i8*), i8** %p8, align 8
  store i16* bitcast (i64* @c to i16*), i16** %p16, align 8
  store i32* bitcast (i64* @c to i32*), i32** %p32, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %p32, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %a.addr, align 4
  %add = add i32 %4, %3
  store i32 %add, i32* %a.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %6, 4
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %7 = load i16*, i16** %p16, align 8
  %8 = load i32, i32* %i1, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i16, i16* %7, i64 %idxprom5
  %9 = load i16, i16* %arrayidx6, align 2
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %a.addr, align 4
  %add7 = add nsw i32 %10, %conv
  store i32 %add7, i32* %a.addr, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %11 = load i32, i32* %i1, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i1, align 4
  br label %for.cond2

for.end10:                                        ; preds = %for.cond2
  store i32 0, i32* %i11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %for.end10
  %12 = load i32, i32* %i11, align 4
  %cmp13 = icmp slt i32 %12, 8
  br i1 %cmp13, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond12
  %13 = load i8*, i8** %p8, align 8
  %14 = load i32, i32* %i11, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %16 = load i32, i32* %a.addr, align 4
  %add19 = add nsw i32 %16, %conv18
  store i32 %add19, i32* %a.addr, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %17 = load i32, i32* %i11, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* %i11, align 4
  br label %for.cond12

for.end22:                                        ; preds = %for.cond12
  %18 = load i8, i8* bitcast (i64* @c to i8*), align 8
  %conv23 = zext i8 %18 to i32
  %19 = load i32, i32* %a.addr, align 4
  %add24 = add nsw i32 %19, %conv23
  store i32 %add24, i32* %a.addr, align 4
  %20 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 1), align 1
  %conv25 = zext i8 %20 to i32
  %21 = load i32, i32* %a.addr, align 4
  %add26 = add nsw i32 %21, %conv25
  store i32 %add26, i32* %a.addr, align 4
  %22 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 2), align 2
  %conv27 = zext i8 %22 to i32
  %23 = load i32, i32* %a.addr, align 4
  %add28 = add nsw i32 %23, %conv27
  store i32 %add28, i32* %a.addr, align 4
  %24 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 3), align 1
  %conv29 = zext i8 %24 to i32
  %25 = load i32, i32* %a.addr, align 4
  %add30 = add nsw i32 %25, %conv29
  store i32 %add30, i32* %a.addr, align 4
  %26 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 4), align 4
  %conv31 = zext i8 %26 to i32
  %27 = load i32, i32* %a.addr, align 4
  %add32 = add nsw i32 %27, %conv31
  store i32 %add32, i32* %a.addr, align 4
  %28 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 5), align 1
  %conv33 = zext i8 %28 to i32
  %29 = load i32, i32* %a.addr, align 4
  %add34 = add nsw i32 %29, %conv33
  store i32 %add34, i32* %a.addr, align 4
  %30 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 6), align 2
  %conv35 = zext i8 %30 to i32
  %31 = load i32, i32* %a.addr, align 4
  %add36 = add nsw i32 %31, %conv35
  store i32 %add36, i32* %a.addr, align 4
  %32 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 7), align 1
  %conv37 = zext i8 %32 to i32
  %33 = load i32, i32* %a.addr, align 4
  %add38 = add nsw i32 %33, %conv37
  store i32 %add38, i32* %a.addr, align 4
  %34 = load i16, i16* bitcast (i64* @c to i16*), align 8
  %conv39 = zext i16 %34 to i32
  %35 = load i32, i32* %a.addr, align 4
  %add40 = add nsw i32 %35, %conv39
  store i32 %add40, i32* %a.addr, align 4
  %36 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 1), align 2
  %conv41 = zext i16 %36 to i32
  %37 = load i32, i32* %a.addr, align 4
  %add42 = add nsw i32 %37, %conv41
  store i32 %add42, i32* %a.addr, align 4
  %38 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 2), align 4
  %conv43 = zext i16 %38 to i32
  %39 = load i32, i32* %a.addr, align 4
  %add44 = add nsw i32 %39, %conv43
  store i32 %add44, i32* %a.addr, align 4
  %40 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 3), align 2
  %conv45 = zext i16 %40 to i32
  %41 = load i32, i32* %a.addr, align 4
  %add46 = add nsw i32 %41, %conv45
  store i32 %add46, i32* %a.addr, align 4
  %42 = load i32, i32* getelementptr inbounds (i32, i32* bitcast (i64* @c to i32*), i64 1), align 4
  %43 = load i32, i32* %a.addr, align 4
  %add47 = add i32 %43, %42
  store i32 %add47, i32* %a.addr, align 4
  %44 = load i32, i32* bitcast (i64* @c to i32*), align 8
  %45 = load i32, i32* %a.addr, align 4
  %add48 = add i32 %45, %44
  store i32 %add48, i32* %a.addr, align 4
  %46 = load i64, i64* @c, align 8
  %47 = load i32, i32* %a.addr, align 4
  %conv49 = sext i32 %47 to i64
  %add50 = add i64 %conv49, %46
  %conv51 = trunc i64 %add50 to i32
  store i32 %conv51, i32* %a.addr, align 4
  %48 = load i64, i64* @c, align 8
  %49 = load i32, i32* %a.addr, align 4
  %conv52 = sext i32 %49 to i64
  %add53 = add i64 %conv52, %48
  %conv54 = trunc i64 %add53 to i32
  store i32 %conv54, i32* %a.addr, align 4
  %50 = load i32, i32* %a.addr, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@EBAEHPHD@?$FL?$CB?$FN?5Fib?5test?5?4?4?4?6?$AA@", i32 0, i32 0))
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %1)
  store i32 %call1, i32* %i, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %2, i64 2
  %3 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 @atoi(i8* %3)
  store i32 %call3, i32* %a, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %4, i64 3
  %5 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @atoi(i8* %5)
  store i32 %call5, i32* %b, align 4
  %6 = load i32, i32* %b, align 4
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %i, align 4
  %call6 = call i32 @edges_test(i32 %8, i32 %7, i32 %6)
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %i, align 4
  %call7 = call i32 @edges(i32 %11, i32 %10, i32 %9)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HBDGFMOF@?$FL?$CK?$FN?5?$CFi?5?$CB?$DN?5?$CFi?6?$AA@", i32 0, i32 0), i32 %call7, i32 %call6)
  %12 = load i32, i32* %b, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %i, align 4
  %call9 = call i32 @edges(i32 %14, i32 %13, i32 %12)
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %i, align 4
  %call10 = call i32 @edges_test(i32 %17, i32 %16, i32 %15)
  %cmp = icmp eq i32 %call9, %call10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@IGKJJHL@?$FL?$CK?$FN?5Passed?$CB?6?$AA@", i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@EJAACEAF@?$FL?$CB?$FN?5Not?5passed?$CB?6?$AA@", i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(i8* %_Format, ...) #0 comdat {
entry:
  %_Format.addr = alloca i8*, align 8
  %_Result = alloca i32, align 4
  %_ArgList = alloca i8*, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  %_ArgList1 = bitcast i8** %_ArgList to i8*
  call void @llvm.va_start(i8* %_ArgList1)
  %0 = load i8*, i8** %_ArgList, align 8
  %1 = load i8*, i8** %_Format.addr, align 8
  %call = call %struct._iobuf* @__acrt_iob_func(i32 1)
  %call2 = call i32 @_vfprintf_l(%struct._iobuf* %call, i8* %1, %struct.__crt_locale_pointers* null, i8* %0)
  store i32 %call2, i32* %_Result, align 4
  store i8* null, i8** %_ArgList, align 8
  %2 = load i32, i32* %_Result, align 4
  ret i32 %2
}

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(i8* %_Buffer, i8* %_Format, %struct.__crt_locale_pointers* %_Locale, i8* %_ArgList) #0 comdat {
entry:
  %_ArgList.addr = alloca i8*, align 8
  %_Locale.addr = alloca %struct.__crt_locale_pointers*, align 8
  %_Format.addr = alloca i8*, align 8
  %_Buffer.addr = alloca i8*, align 8
  store i8* %_ArgList, i8** %_ArgList.addr, align 8
  store %struct.__crt_locale_pointers* %_Locale, %struct.__crt_locale_pointers** %_Locale.addr, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store i8* %_Buffer, i8** %_Buffer.addr, align 8
  %0 = load i8*, i8** %_ArgList.addr, align 8
  %1 = load %struct.__crt_locale_pointers*, %struct.__crt_locale_pointers** %_Locale.addr, align 8
  %2 = load i8*, i8** %_Format.addr, align 8
  %3 = load i8*, i8** %_Buffer.addr, align 8
  %call = call i32 @_vsnprintf_l(i8* %3, i64 -1, i8* %2, %struct.__crt_locale_pointers* %1, i8* %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(i8* %_Buffer, i64 %_BufferCount, i8* %_Format, %struct.__crt_locale_pointers* %_Locale, i8* %_ArgList) #0 comdat {
entry:
  %_ArgList.addr = alloca i8*, align 8
  %_Locale.addr = alloca %struct.__crt_locale_pointers*, align 8
  %_Format.addr = alloca i8*, align 8
  %_BufferCount.addr = alloca i64, align 8
  %_Buffer.addr = alloca i8*, align 8
  %_Result = alloca i32, align 4
  store i8* %_ArgList, i8** %_ArgList.addr, align 8
  store %struct.__crt_locale_pointers* %_Locale, %struct.__crt_locale_pointers** %_Locale.addr, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store i64 %_BufferCount, i64* %_BufferCount.addr, align 8
  store i8* %_Buffer, i8** %_Buffer.addr, align 8
  %0 = load i8*, i8** %_ArgList.addr, align 8
  %1 = load %struct.__crt_locale_pointers*, %struct.__crt_locale_pointers** %_Locale.addr, align 8
  %2 = load i8*, i8** %_Format.addr, align 8
  %3 = load i64, i64* %_BufferCount.addr, align 8
  %4 = load i8*, i8** %_Buffer.addr, align 8
  %call = call i64* @__local_stdio_printf_options()
  %5 = load i64, i64* %call, align 8
  %or = or i64 %5, 1
  %call1 = call i32 @__stdio_common_vsprintf(i64 %or, i8* %4, i64 %3, i8* %2, %struct.__crt_locale_pointers* %1, i8* %0)
  store i32 %call1, i32* %_Result, align 4
  %6 = load i32, i32* %_Result, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %_Result, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %7, %cond.false ]
  ret i32 %cond
}

declare dso_local i32 @__stdio_common_vsprintf(i64, i8*, i64, i8*, %struct.__crt_locale_pointers*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64* @__local_stdio_printf_options() #0 comdat {
entry:
  ret i64* @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(%struct._iobuf* %_Stream, i8* %_Format, %struct.__crt_locale_pointers* %_Locale, i8* %_ArgList) #0 comdat {
entry:
  %_ArgList.addr = alloca i8*, align 8
  %_Locale.addr = alloca %struct.__crt_locale_pointers*, align 8
  %_Format.addr = alloca i8*, align 8
  %_Stream.addr = alloca %struct._iobuf*, align 8
  store i8* %_ArgList, i8** %_ArgList.addr, align 8
  store %struct.__crt_locale_pointers* %_Locale, %struct.__crt_locale_pointers** %_Locale.addr, align 8
  store i8* %_Format, i8** %_Format.addr, align 8
  store %struct._iobuf* %_Stream, %struct._iobuf** %_Stream.addr, align 8
  %0 = load i8*, i8** %_ArgList.addr, align 8
  %1 = load %struct.__crt_locale_pointers*, %struct.__crt_locale_pointers** %_Locale.addr, align 8
  %2 = load i8*, i8** %_Format.addr, align 8
  %3 = load %struct._iobuf*, %struct._iobuf** %_Stream.addr, align 8
  %call = call i64* @__local_stdio_printf_options()
  %4 = load i64, i64* %call, align 8
  %call1 = call i32 @__stdio_common_vfprintf(i64 %4, %struct._iobuf* %3, i8* %2, %struct.__crt_locale_pointers* %1, i8* %0)
  ret i32 %call1
}

declare dso_local %struct._iobuf* @__acrt_iob_func(i32) #1

declare dso_local i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
