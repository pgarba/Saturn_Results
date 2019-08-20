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

$"??_C@_0BD@NACDMLHN@?$FL?$CB?$FN?5Args?5test?5?4?4?4?6?$AA@" = comdat any

$"??_C@_0BC@HPFOGFKM@?$FL?$CK?$FN?5?$CFllX?5?$CB?$DN?5?$CFllX?6?$AA@" = comdat any

$"??_C@_0N@IGKJJHL@?$FL?$CK?$FN?5Passed?$CB?6?$AA@" = comdat any

$"??_C@_0BB@EJAACEAF@?$FL?$CB?$FN?5Not?5passed?$CB?6?$AA@" = comdat any

@"??_C@_0BD@NACDMLHN@?$FL?$CB?$FN?5Args?5test?5?4?4?4?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"[!] Args test ...\0A\00", comdat, align 1
@"??_C@_0BC@HPFOGFKM@?$FL?$CK?$FN?5?$CFllX?5?$CB?$DN?5?$CFllX?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"[*] %llX != %llX\0A\00", comdat, align 1
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
define dso_local dllexport i64 @args(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5) #0 {
entry:
  %a5.addr = alloca i64, align 8
  %a4.addr = alloca i32, align 4
  %a3.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  %a1.addr = alloca i32, align 4
  %a0.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %p8 = alloca i8*, align 8
  %p16 = alloca i16*, align 8
  %p32 = alloca i32*, align 8
  %p64 = alloca i64*, align 8
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i15 = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i64 %a5, i64* %a5.addr, align 8
  store i32 %a4, i32* %a4.addr, align 4
  store i32 %a3, i32* %a3.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  store i32 %a1, i32* %a1.addr, align 4
  store i32 %a0, i32* %a0.addr, align 4
  %0 = load i64, i64* %a5.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %r, align 4
  %1 = bitcast i64* %a5.addr to i8*
  store i8* %1, i8** %p8, align 8
  %2 = bitcast i64* %a5.addr to i16*
  store i16* %2, i16** %p16, align 8
  %3 = bitcast i64* %a5.addr to i32*
  store i32* %3, i32** %p32, align 8
  store i64* %a5.addr, i64** %p64, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p8, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %8 = load i32, i32* %r, align 4
  %add = add nsw i32 %8, %conv2
  store i32 %add, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i3, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc12, %for.end
  %10 = load i32, i32* %i3, align 4
  %cmp5 = icmp slt i32 %10, 4
  br i1 %cmp5, label %for.body7, label %for.end14

for.body7:                                        ; preds = %for.cond4
  %11 = load i16*, i16** %p16, align 8
  %12 = load i32, i32* %i3, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 %idxprom8
  %13 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %13 to i32
  %14 = load i32, i32* %r, align 4
  %add11 = add nsw i32 %14, %conv10
  store i32 %add11, i32* %r, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body7
  %15 = load i32, i32* %i3, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %i3, align 4
  br label %for.cond4

for.end14:                                        ; preds = %for.cond4
  store i32 0, i32* %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.end14
  %16 = load i32, i32* %i15, align 4
  %cmp17 = icmp slt i32 %16, 2
  br i1 %cmp17, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond16
  %17 = load i32*, i32** %p32, align 8
  %18 = load i32, i32* %i15, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %17, i64 %idxprom20
  %19 = load i32, i32* %arrayidx21, align 4
  %20 = load i32, i32* %r, align 4
  %add22 = add i32 %20, %19
  store i32 %add22, i32* %r, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %21 = load i32, i32* %i15, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %i15, align 4
  br label %for.cond16

for.end25:                                        ; preds = %for.cond16
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %for.end25
  %22 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %22, 1
  br i1 %cmp28, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond27
  %23 = load i64*, i64** %p64, align 8
  %24 = load i32, i32* %i26, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds i64, i64* %23, i64 %idxprom31
  %25 = load i64, i64* %arrayidx32, align 8
  %26 = load i32, i32* %r, align 4
  %conv33 = sext i32 %26 to i64
  %add34 = add i64 %conv33, %25
  %conv35 = trunc i64 %add34 to i32
  store i32 %conv35, i32* %r, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %27 = load i32, i32* %i26, align 4
  %inc37 = add nsw i32 %27, 1
  store i32 %inc37, i32* %i26, align 4
  br label %for.cond27

for.end38:                                        ; preds = %for.cond27
  %28 = load i32, i32* %r, align 4
  %conv39 = sext i32 %28 to i64
  %29 = load i64, i64* %a5.addr, align 8
  %mul = mul i64 %conv39, %29
  %mul40 = mul i64 %mul, 235235
  ret i64 %mul40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local dllexport i64 @args_test(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5) #0 {
entry:
  %a5.addr = alloca i64, align 8
  %a4.addr = alloca i32, align 4
  %a3.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  %a1.addr = alloca i32, align 4
  %a0.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %p8 = alloca i8*, align 8
  %p16 = alloca i16*, align 8
  %p32 = alloca i32*, align 8
  %p64 = alloca i64*, align 8
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i15 = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i64 %a5, i64* %a5.addr, align 8
  store i32 %a4, i32* %a4.addr, align 4
  store i32 %a3, i32* %a3.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  store i32 %a1, i32* %a1.addr, align 4
  store i32 %a0, i32* %a0.addr, align 4
  %0 = load i64, i64* %a5.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %r, align 4
  %1 = bitcast i64* %a5.addr to i8*
  store i8* %1, i8** %p8, align 8
  %2 = bitcast i64* %a5.addr to i16*
  store i16* %2, i16** %p16, align 8
  %3 = bitcast i64* %a5.addr to i32*
  store i32* %3, i32** %p32, align 8
  store i64* %a5.addr, i64** %p64, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p8, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %8 = load i32, i32* %r, align 4
  %add = add nsw i32 %8, %conv2
  store i32 %add, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i3, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc12, %for.end
  %10 = load i32, i32* %i3, align 4
  %cmp5 = icmp slt i32 %10, 4
  br i1 %cmp5, label %for.body7, label %for.end14

for.body7:                                        ; preds = %for.cond4
  %11 = load i16*, i16** %p16, align 8
  %12 = load i32, i32* %i3, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 %idxprom8
  %13 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %13 to i32
  %14 = load i32, i32* %r, align 4
  %add11 = add nsw i32 %14, %conv10
  store i32 %add11, i32* %r, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body7
  %15 = load i32, i32* %i3, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %i3, align 4
  br label %for.cond4

for.end14:                                        ; preds = %for.cond4
  store i32 0, i32* %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.end14
  %16 = load i32, i32* %i15, align 4
  %cmp17 = icmp slt i32 %16, 2
  br i1 %cmp17, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond16
  %17 = load i32*, i32** %p32, align 8
  %18 = load i32, i32* %i15, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %17, i64 %idxprom20
  %19 = load i32, i32* %arrayidx21, align 4
  %20 = load i32, i32* %r, align 4
  %add22 = add i32 %20, %19
  store i32 %add22, i32* %r, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %21 = load i32, i32* %i15, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %i15, align 4
  br label %for.cond16

for.end25:                                        ; preds = %for.cond16
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %for.end25
  %22 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %22, 1
  br i1 %cmp28, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond27
  %23 = load i64*, i64** %p64, align 8
  %24 = load i32, i32* %i26, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds i64, i64* %23, i64 %idxprom31
  %25 = load i64, i64* %arrayidx32, align 8
  %26 = load i32, i32* %r, align 4
  %conv33 = sext i32 %26 to i64
  %add34 = add i64 %conv33, %25
  %conv35 = trunc i64 %add34 to i32
  store i32 %conv35, i32* %r, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %27 = load i32, i32* %i26, align 4
  %inc37 = add nsw i32 %27, 1
  store i32 %inc37, i32* %i26, align 4
  br label %for.cond27

for.end38:                                        ; preds = %for.cond27
  %28 = load i32, i32* %r, align 4
  %conv39 = sext i32 %28 to i64
  %29 = load i64, i64* %a5.addr, align 8
  %mul = mul i64 %conv39, %29
  %mul40 = mul i64 %mul, 235235
  ret i64 %mul40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %b = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"??_C@_0BD@NACDMLHN@?$FL?$CB?$FN?5Args?5test?5?4?4?4?6?$AA@", i32 0, i32 0))
  %0 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %0 to i64
  %sub = sub i64 -1, %conv
  %sub1 = sub i64 %sub, 23
  store i64 %sub1, i64* %b, align 8
  %1 = load i64, i64* %b, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i32, i32* %argc.addr, align 4
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i32, i32* %argc.addr, align 4
  %call2 = call i64 @args_test(i32 %6, i32 %5, i32 %4, i32 %3, i32 %2, i64 %1)
  %7 = load i64, i64* %b, align 8
  %8 = load i32, i32* %argc.addr, align 4
  %9 = load i32, i32* %argc.addr, align 4
  %10 = load i32, i32* %argc.addr, align 4
  %11 = load i32, i32* %argc.addr, align 4
  %12 = load i32, i32* %argc.addr, align 4
  %call3 = call i64 @args(i32 %12, i32 %11, i32 %10, i32 %9, i32 %8, i64 %7)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@HPFOGFKM@?$FL?$CK?$FN?5?$CFllX?5?$CB?$DN?5?$CFllX?6?$AA@", i32 0, i32 0), i64 %call3, i64 %call2)
  %13 = load i64, i64* %b, align 8
  %14 = load i32, i32* %argc.addr, align 4
  %15 = load i32, i32* %argc.addr, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %17 = load i32, i32* %argc.addr, align 4
  %18 = load i32, i32* %argc.addr, align 4
  %call5 = call i64 @args(i32 %18, i32 %17, i32 %16, i32 %15, i32 %14, i64 %13)
  %19 = load i64, i64* %b, align 8
  %20 = load i32, i32* %argc.addr, align 4
  %21 = load i32, i32* %argc.addr, align 4
  %22 = load i32, i32* %argc.addr, align 4
  %23 = load i32, i32* %argc.addr, align 4
  %24 = load i32, i32* %argc.addr, align 4
  %call6 = call i64 @args_test(i32 %24, i32 %23, i32 %22, i32 %21, i32 %20, i64 %19)
  %cmp = icmp eq i64 %call5, %call6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"??_C@_0N@IGKJJHL@?$FL?$CK?$FN?5Passed?$CB?6?$AA@", i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"??_C@_0BB@EJAACEAF@?$FL?$CB?$FN?5Not?5passed?$CB?6?$AA@", i32 0, i32 0))
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

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

declare dso_local i32 @__stdio_common_vsprintf(i64, i8*, i64, i8*, %struct.__crt_locale_pointers*, i8*) #2

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

declare dso_local %struct._iobuf* @__acrt_iob_func(i32) #2

declare dso_local i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
