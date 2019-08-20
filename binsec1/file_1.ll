; ModuleID = 'file_1.c'
source_filename = "file_1.c"
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

$"??_C@_0M@LCILOMCN@Sum?5is?3?5?$CFd?6?$AA@" = comdat any

$"??_C@_09EMPJBCKB@Success?$CB?6?$AA@" = comdat any

@"??_C@_0M@LCILOMCN@Sum?5is?3?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"Sum is: %d\0A\00", comdat, align 1
@"??_C@_09EMPJBCKB@Success?$CB?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"Success!\0A\00", comdat, align 1
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
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  %str = alloca [17 x i8], align 16
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = bitcast [17 x i8]* %str to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 17, i1 false)
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 16
  store i8 0, i8* %arrayidx, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 0
  %5 = load i8, i8* %arrayidx4, align 16
  %inc = add i8 %5, 1
  store i8 %inc, i8* %arrayidx4, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp slt i32 %7, %conv9
  br i1 %cmp10, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 1
  %11 = load i8, i8* %arrayidx13, align 1
  %inc14 = add i8 %11, 1
  store i8 %inc14, i8* %arrayidx13, align 1
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond6

for.end17:                                        ; preds = %for.cond6
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.end17
  %13 = load i32, i32* %i, align 4
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %14, i64 1
  %15 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp slt i32 %13, %conv21
  br i1 %cmp22, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 2
  %17 = load i8, i8* %arrayidx25, align 2
  %inc26 = add i8 %17, 1
  store i8 %inc26, i8* %arrayidx25, align 2
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %18 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond18

for.end29:                                        ; preds = %for.cond18
  store i32 0, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end29
  %19 = load i32, i32* %i, align 4
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %20, i64 1
  %21 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 3
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %22 to i32
  %cmp34 = icmp slt i32 %19, %conv33
  br i1 %cmp34, label %for.body36, label %for.end41

for.body36:                                       ; preds = %for.cond30
  %arrayidx37 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 3
  %23 = load i8, i8* %arrayidx37, align 1
  %inc38 = add i8 %23, 1
  store i8 %inc38, i8* %arrayidx37, align 1
  br label %for.inc39

for.inc39:                                        ; preds = %for.body36
  %24 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %24, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond30

for.end41:                                        ; preds = %for.cond30
  store i32 0, i32* %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc51, %for.end41
  %25 = load i32, i32* %i, align 4
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %26, i64 1
  %27 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %27, i64 4
  %28 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %28 to i32
  %cmp46 = icmp slt i32 %25, %conv45
  br i1 %cmp46, label %for.body48, label %for.end53

for.body48:                                       ; preds = %for.cond42
  %arrayidx49 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 4
  %29 = load i8, i8* %arrayidx49, align 4
  %inc50 = add i8 %29, 1
  store i8 %inc50, i8* %arrayidx49, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body48
  %30 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %30, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond42

for.end53:                                        ; preds = %for.cond42
  store i32 5, i32* %j, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc62, %for.end53
  %31 = load i32, i32* %j, align 4
  %cmp55 = icmp slt i32 %31, 16
  br i1 %cmp55, label %for.body57, label %for.end64

for.body57:                                       ; preds = %for.cond54
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %32, i64 1
  %33 = load i8*, i8** %arrayidx58, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx59 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %35 = load i8, i8* %arrayidx59, align 1
  %36 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %36 to i64
  %arrayidx61 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 %idxprom60
  store i8 %35, i8* %arrayidx61, align 1
  br label %for.inc62

for.inc62:                                        ; preds = %for.body57
  %37 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %37, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond54

for.end64:                                        ; preds = %for.cond54
  store i32 0, i32* %i, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc69, %for.end64
  %38 = load i32, i32* %i, align 4
  %cmp66 = icmp slt i32 %38, 16
  br i1 %cmp66, label %for.body68, label %for.end71

for.body68:                                       ; preds = %for.cond65
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %sum, align 4
  %add = add nsw i32 %40, %39
  store i32 %add, i32* %sum, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body68
  %41 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %41, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond65

for.end71:                                        ; preds = %for.cond65
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay, i8** %t, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc76, %for.end71
  %42 = load i8*, i8** %t, align 8
  %43 = load i8, i8* %42, align 1
  %tobool = icmp ne i8 %43, 0
  br i1 %tobool, label %for.body73, label %for.end77

for.body73:                                       ; preds = %for.cond72
  %44 = load i8*, i8** %t, align 8
  %45 = load i8, i8* %44, align 1
  %conv74 = sext i8 %45 to i32
  %46 = load i32, i32* %sum, align 4
  %add75 = add nsw i32 %46, %conv74
  store i32 %add75, i32* %sum, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body73
  %47 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  br label %for.cond72

for.end77:                                        ; preds = %for.cond72
  %48 = load i32, i32* %sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@LCILOMCN@Sum?5is?3?5?$CFd?6?$AA@", i32 0, i32 0), i32 %48)
  %49 = load i32, i32* %sum, align 4
  %cmp78 = icmp eq i32 %49, 1600
  br i1 %cmp78, label %if.then, label %if.end

if.then:                                          ; preds = %for.end77
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09EMPJBCKB@Success?$CB?6?$AA@", i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end77
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

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

declare dso_local i32 @__stdio_common_vsprintf(i64, i8*, i64, i8*, %struct.__crt_locale_pointers*, i8*) #3

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

declare dso_local %struct._iobuf* @__acrt_iob_func(i32) #3

declare dso_local i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
