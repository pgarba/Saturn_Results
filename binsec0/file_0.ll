; ModuleID = 'file_0.c'
source_filename = "file_0.c"
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

$"??_C@_09DKEBBHB@success?$CB?6?$AA@" = comdat any

@"??_C@_0M@LCILOMCN@Sum?5is?3?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"Sum is: %d\0A\00", comdat, align 1
@"??_C@_09DKEBBHB@success?$CB?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"success!\0A\00", comdat, align 1
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
define dso_local i32 @test(i8* %input) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca [17 x i8], align 16
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  store i8* %input, i8** %input.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 16
  store i8 0, i8* %arrayidx1, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %5 to i32
  %cmp4 = icmp slt i32 %3, %conv
  br i1 %cmp4, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 0
  %6 = load i8, i8* %arrayidx7, align 16
  %inc8 = add i8 %6, 1
  store i8 %inc8, i8* %arrayidx7, align 16
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %7 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond2

for.end11:                                        ; preds = %for.cond2
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %for.end11
  %8 = load i32, i32* %i, align 4
  %9 = load i8*, i8** %input.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp slt i32 %8, %conv14
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond12
  %arrayidx18 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 1
  %11 = load i8, i8* %arrayidx18, align 1
  %inc19 = add i8 %11, 1
  store i8 %inc19, i8* %arrayidx18, align 1
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %12 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond12

for.end22:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %for.end22
  %13 = load i32, i32* %i, align 4
  %14 = load i8*, i8** %input.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp slt i32 %13, %conv25
  br i1 %cmp26, label %for.body28, label %for.end33

for.body28:                                       ; preds = %for.cond23
  %arrayidx29 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 2
  %16 = load i8, i8* %arrayidx29, align 2
  %inc30 = add i8 %16, 1
  store i8 %inc30, i8* %arrayidx29, align 2
  br label %for.inc31

for.inc31:                                        ; preds = %for.body28
  %17 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %17, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond23

for.end33:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end33
  %18 = load i32, i32* %i, align 4
  %19 = load i8*, i8** %input.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %20 to i32
  %cmp37 = icmp slt i32 %18, %conv36
  br i1 %cmp37, label %for.body39, label %for.end44

for.body39:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 3
  %21 = load i8, i8* %arrayidx40, align 1
  %inc41 = add i8 %21, 1
  store i8 %inc41, i8* %arrayidx40, align 1
  br label %for.inc42

for.inc42:                                        ; preds = %for.body39
  %22 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %22, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond34

for.end44:                                        ; preds = %for.cond34
  store i32 0, i32* %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end44
  %23 = load i32, i32* %i, align 4
  %24 = load i8*, i8** %input.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %24, i64 4
  %25 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %25 to i32
  %cmp48 = icmp slt i32 %23, %conv47
  br i1 %cmp48, label %for.body50, label %for.end55

for.body50:                                       ; preds = %for.cond45
  %arrayidx51 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 4
  %26 = load i8, i8* %arrayidx51, align 4
  %inc52 = add i8 %26, 1
  store i8 %inc52, i8* %arrayidx51, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %for.body50
  %27 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %27, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond45

for.end55:                                        ; preds = %for.cond45
  store i32 5, i32* %j, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %for.end55
  %28 = load i32, i32* %j, align 4
  %cmp57 = icmp slt i32 %28, 16
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond56
  %29 = load i8*, i8** %input.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %30 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %29, i64 %idxprom60
  %31 = load i8, i8* %arrayidx61, align 1
  %32 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %32 to i64
  %arrayidx63 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 %idxprom62
  store i8 %31, i8* %arrayidx63, align 1
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %33 = load i32, i32* %j, align 4
  %inc65 = add nsw i32 %33, 1
  store i32 %inc65, i32* %j, align 4
  br label %for.cond56

for.end66:                                        ; preds = %for.cond56
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay, i8** %t, align 8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc70, %for.end66
  %34 = load i8*, i8** %t, align 8
  %35 = load i8, i8* %34, align 1
  %tobool = icmp ne i8 %35, 0
  br i1 %tobool, label %for.body68, label %for.end71

for.body68:                                       ; preds = %for.cond67
  %36 = load i8*, i8** %t, align 8
  %37 = load i8, i8* %36, align 1
  %conv69 = sext i8 %37 to i32
  %38 = load i32, i32* %sum, align 4
  %add = add nsw i32 %38, %conv69
  store i32 %add, i32* %sum, align 4
  br label %for.inc70

for.inc70:                                        ; preds = %for.body68
  %39 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  br label %for.cond67

for.end71:                                        ; preds = %for.cond67
  %40 = load i32, i32* %sum, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @test(i8* %1)
  store i32 %call, i32* %sum, align 4
  %2 = load i32, i32* %sum, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@LCILOMCN@Sum?5is?3?5?$CFd?6?$AA@", i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %sum, align 4
  %cmp = icmp eq i32 %3, 1600
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"??_C@_09DKEBBHB@success?$CB?6?$AA@", i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
