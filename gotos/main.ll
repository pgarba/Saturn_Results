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
  %i4 = alloca i32, align 4
  %i14 = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* bitcast (i64* @c to i8*), i8** %p8, align 8
  store i16* bitcast (i64* @c to i16*), i16** %p16, align 8
  store i32* bitcast (i64* @c to i32*), i32** %p32, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
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
  br label %a3

for.inc:                                          ; No predecessors!
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %b1

b1:                                               ; preds = %c, %for.end
  br label %while.cond

while.cond:                                       ; preds = %b1
  %6 = load i32, i32* %b.addr, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %a3

a3:                                               ; preds = %while.body, %for.body
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %a3
  %7 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %7, 4
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  %8 = load i16*, i16** %p16, align 8
  %9 = load i32, i32* %i4, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 %idxprom8
  %10 = load i16, i16* %arrayidx9, align 2
  %conv = zext i16 %10 to i32
  %11 = load i32, i32* %a.addr, align 4
  %add10 = add nsw i32 %11, %conv
  store i32 %add10, i32* %a.addr, align 4
  br label %c

for.inc11:                                        ; No predecessors!
  %12 = load i32, i32* %i4, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i4, align 4
  br label %for.cond5

for.end13:                                        ; preds = %for.cond5
  store i32 0, i32* %i14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.end13
  %13 = load i32, i32* %i14, align 4
  %cmp16 = icmp slt i32 %13, 8
  br i1 %cmp16, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond15
  %14 = load i8*, i8** %p8, align 8
  %15 = load i32, i32* %i14, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 %idxprom19
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %17 = load i32, i32* %a.addr, align 4
  %add22 = add nsw i32 %17, %conv21
  store i32 %add22, i32* %a.addr, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body18
  %18 = load i32, i32* %i14, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %i14, align 4
  br label %for.cond15

for.end25:                                        ; preds = %for.cond15
  %19 = load i32, i32* %a.addr, align 4
  %20 = load i32, i32* %b.addr, align 4
  %add26 = add nsw i32 %19, %20
  %21 = load i32, i32* %a.addr, align 4
  %22 = load i32, i32* %b.addr, align 4
  %xor = xor i32 %21, %22
  %23 = load i32, i32* %a.addr, align 4
  %24 = load i32, i32* %b.addr, align 4
  %and = and i32 %23, %24
  %mul = mul nsw i32 2, %and
  %add27 = add nsw i32 %xor, %mul
  %cmp28 = icmp ne i32 %add26, %add27
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.end25
  br label %c

if.end:                                           ; preds = %for.end25
  %25 = load i8, i8* bitcast (i64* @c to i8*), align 8
  %conv30 = zext i8 %25 to i32
  %26 = load i32, i32* %a.addr, align 4
  %add31 = add nsw i32 %26, %conv30
  store i32 %add31, i32* %a.addr, align 4
  %27 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 1), align 1
  %conv32 = zext i8 %27 to i32
  %28 = load i32, i32* %a.addr, align 4
  %add33 = add nsw i32 %28, %conv32
  store i32 %add33, i32* %a.addr, align 4
  %29 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 2), align 2
  %conv34 = zext i8 %29 to i32
  %30 = load i32, i32* %a.addr, align 4
  %add35 = add nsw i32 %30, %conv34
  store i32 %add35, i32* %a.addr, align 4
  %31 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 3), align 1
  %conv36 = zext i8 %31 to i32
  %32 = load i32, i32* %a.addr, align 4
  %add37 = add nsw i32 %32, %conv36
  store i32 %add37, i32* %a.addr, align 4
  %33 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 4), align 4
  %conv38 = zext i8 %33 to i32
  %34 = load i32, i32* %a.addr, align 4
  %add39 = add nsw i32 %34, %conv38
  store i32 %add39, i32* %a.addr, align 4
  br label %c

c:                                                ; preds = %if.end, %if.then, %for.body7
  %35 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 5), align 1
  %conv40 = zext i8 %35 to i32
  %36 = load i32, i32* %a.addr, align 4
  %add41 = add nsw i32 %36, %conv40
  store i32 %add41, i32* %a.addr, align 4
  %37 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 6), align 2
  %conv42 = zext i8 %37 to i32
  %38 = load i32, i32* %a.addr, align 4
  %add43 = add nsw i32 %38, %conv42
  store i32 %add43, i32* %a.addr, align 4
  %39 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 7), align 1
  %conv44 = zext i8 %39 to i32
  %40 = load i32, i32* %a.addr, align 4
  %add45 = add nsw i32 %40, %conv44
  store i32 %add45, i32* %a.addr, align 4
  %41 = load i16, i16* bitcast (i64* @c to i16*), align 8
  %conv46 = zext i16 %41 to i32
  %42 = load i32, i32* %a.addr, align 4
  %add47 = add nsw i32 %42, %conv46
  store i32 %add47, i32* %a.addr, align 4
  %43 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 1), align 2
  %conv48 = zext i16 %43 to i32
  %44 = load i32, i32* %a.addr, align 4
  %add49 = add nsw i32 %44, %conv48
  store i32 %add49, i32* %a.addr, align 4
  %45 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 2), align 4
  %conv50 = zext i16 %45 to i32
  %46 = load i32, i32* %a.addr, align 4
  %add51 = add nsw i32 %46, %conv50
  store i32 %add51, i32* %a.addr, align 4
  %47 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 3), align 2
  %conv52 = zext i16 %47 to i32
  %48 = load i32, i32* %a.addr, align 4
  %add53 = add nsw i32 %48, %conv52
  store i32 %add53, i32* %a.addr, align 4
  br label %b1

while.end:                                        ; preds = %while.cond
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %49 = load i32, i32* %b.addr, align 4
  %cmp54 = icmp eq i32 %49, 0
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %50 = load i32, i32* %a.addr, align 4
  %51 = load i32, i32* %b.addr, align 4
  %add56 = add nsw i32 %50, %51
  %52 = load i32, i32* %a.addr, align 4
  %53 = load i32, i32* %b.addr, align 4
  %xor57 = xor i32 %52, %53
  %54 = load i32, i32* %a.addr, align 4
  %55 = load i32, i32* %b.addr, align 4
  %and58 = and i32 %54, %55
  %mul59 = mul nsw i32 2, %and58
  %add60 = add nsw i32 %xor57, %mul59
  %cmp61 = icmp eq i32 %add56, %add60
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %do.end
  %56 = load i32, i32* %a.addr, align 4
  %mul64 = mul nsw i32 %56, 777
  store i32 %mul64, i32* %a.addr, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %do.end
  %57 = load i32, i32* %a.addr, align 4
  ret i32 %57
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
  %i4 = alloca i32, align 4
  %i14 = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* bitcast (i64* @c to i8*), i8** %p8, align 8
  store i16* bitcast (i64* @c to i16*), i16** %p16, align 8
  store i32* bitcast (i64* @c to i32*), i32** %p32, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
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
  br label %a3

for.inc:                                          ; No predecessors!
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %b1

b1:                                               ; preds = %c, %for.end
  br label %while.cond

while.cond:                                       ; preds = %b1
  %6 = load i32, i32* %b.addr, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %a3

a3:                                               ; preds = %while.body, %for.body
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %a3
  %7 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %7, 4
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  %8 = load i16*, i16** %p16, align 8
  %9 = load i32, i32* %i4, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 %idxprom8
  %10 = load i16, i16* %arrayidx9, align 2
  %conv = zext i16 %10 to i32
  %11 = load i32, i32* %a.addr, align 4
  %add10 = add nsw i32 %11, %conv
  store i32 %add10, i32* %a.addr, align 4
  br label %c

for.inc11:                                        ; No predecessors!
  %12 = load i32, i32* %i4, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i4, align 4
  br label %for.cond5

for.end13:                                        ; preds = %for.cond5
  store i32 0, i32* %i14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.end13
  %13 = load i32, i32* %i14, align 4
  %cmp16 = icmp slt i32 %13, 8
  br i1 %cmp16, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond15
  %14 = load i8*, i8** %p8, align 8
  %15 = load i32, i32* %i14, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 %idxprom19
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %17 = load i32, i32* %a.addr, align 4
  %add22 = add nsw i32 %17, %conv21
  store i32 %add22, i32* %a.addr, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body18
  %18 = load i32, i32* %i14, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %i14, align 4
  br label %for.cond15

for.end25:                                        ; preds = %for.cond15
  %19 = load i32, i32* %a.addr, align 4
  %20 = load i32, i32* %b.addr, align 4
  %add26 = add nsw i32 %19, %20
  %21 = load i32, i32* %a.addr, align 4
  %22 = load i32, i32* %b.addr, align 4
  %xor = xor i32 %21, %22
  %23 = load i32, i32* %a.addr, align 4
  %24 = load i32, i32* %b.addr, align 4
  %and = and i32 %23, %24
  %mul = mul nsw i32 2, %and
  %add27 = add nsw i32 %xor, %mul
  %cmp28 = icmp ne i32 %add26, %add27
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.end25
  br label %c

if.end:                                           ; preds = %for.end25
  %25 = load i8, i8* bitcast (i64* @c to i8*), align 8
  %conv30 = zext i8 %25 to i32
  %26 = load i32, i32* %a.addr, align 4
  %add31 = add nsw i32 %26, %conv30
  store i32 %add31, i32* %a.addr, align 4
  %27 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 1), align 1
  %conv32 = zext i8 %27 to i32
  %28 = load i32, i32* %a.addr, align 4
  %add33 = add nsw i32 %28, %conv32
  store i32 %add33, i32* %a.addr, align 4
  %29 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 2), align 2
  %conv34 = zext i8 %29 to i32
  %30 = load i32, i32* %a.addr, align 4
  %add35 = add nsw i32 %30, %conv34
  store i32 %add35, i32* %a.addr, align 4
  %31 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 3), align 1
  %conv36 = zext i8 %31 to i32
  %32 = load i32, i32* %a.addr, align 4
  %add37 = add nsw i32 %32, %conv36
  store i32 %add37, i32* %a.addr, align 4
  %33 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 4), align 4
  %conv38 = zext i8 %33 to i32
  %34 = load i32, i32* %a.addr, align 4
  %add39 = add nsw i32 %34, %conv38
  store i32 %add39, i32* %a.addr, align 4
  br label %c

c:                                                ; preds = %if.end, %if.then, %for.body7
  %35 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 5), align 1
  %conv40 = zext i8 %35 to i32
  %36 = load i32, i32* %a.addr, align 4
  %add41 = add nsw i32 %36, %conv40
  store i32 %add41, i32* %a.addr, align 4
  %37 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 6), align 2
  %conv42 = zext i8 %37 to i32
  %38 = load i32, i32* %a.addr, align 4
  %add43 = add nsw i32 %38, %conv42
  store i32 %add43, i32* %a.addr, align 4
  %39 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i64* @c to i8*), i64 7), align 1
  %conv44 = zext i8 %39 to i32
  %40 = load i32, i32* %a.addr, align 4
  %add45 = add nsw i32 %40, %conv44
  store i32 %add45, i32* %a.addr, align 4
  %41 = load i16, i16* bitcast (i64* @c to i16*), align 8
  %conv46 = zext i16 %41 to i32
  %42 = load i32, i32* %a.addr, align 4
  %add47 = add nsw i32 %42, %conv46
  store i32 %add47, i32* %a.addr, align 4
  %43 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 1), align 2
  %conv48 = zext i16 %43 to i32
  %44 = load i32, i32* %a.addr, align 4
  %add49 = add nsw i32 %44, %conv48
  store i32 %add49, i32* %a.addr, align 4
  %45 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 2), align 4
  %conv50 = zext i16 %45 to i32
  %46 = load i32, i32* %a.addr, align 4
  %add51 = add nsw i32 %46, %conv50
  store i32 %add51, i32* %a.addr, align 4
  %47 = load i16, i16* getelementptr inbounds (i16, i16* bitcast (i64* @c to i16*), i64 3), align 2
  %conv52 = zext i16 %47 to i32
  %48 = load i32, i32* %a.addr, align 4
  %add53 = add nsw i32 %48, %conv52
  store i32 %add53, i32* %a.addr, align 4
  br label %b1

while.end:                                        ; preds = %while.cond
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %49 = load i32, i32* %b.addr, align 4
  %cmp54 = icmp eq i32 %49, 0
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %50 = load i32, i32* %a.addr, align 4
  %51 = load i32, i32* %b.addr, align 4
  %add56 = add nsw i32 %50, %51
  %52 = load i32, i32* %a.addr, align 4
  %53 = load i32, i32* %b.addr, align 4
  %xor57 = xor i32 %52, %53
  %54 = load i32, i32* %a.addr, align 4
  %55 = load i32, i32* %b.addr, align 4
  %and58 = and i32 %54, %55
  %mul59 = mul nsw i32 2, %and58
  %add60 = add nsw i32 %xor57, %mul59
  %cmp61 = icmp eq i32 %add56, %add60
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %do.end
  %56 = load i32, i32* %a.addr, align 4
  %mul64 = mul nsw i32 %56, 777
  store i32 %mul64, i32* %a.addr, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %do.end
  %57 = load i32, i32* %a.addr, align 4
  ret i32 %57
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
