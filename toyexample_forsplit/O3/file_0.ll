; ModuleID = 'file_0.c'
source_filename = "file_0.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.22.27905"

%struct._iobuf = type { i8* }
%struct.__crt_locale_pointers = type { %struct.__crt_locale_data*, %struct.__crt_multibyte_data* }
%struct.__crt_locale_data = type opaque
%struct.__crt_multibyte_data = type opaque

$printf = comdat any

$__local_stdio_printf_options = comdat any

$"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@" = comdat any

@"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"Crc is: %d\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @func(i8, i8, i8) local_unnamed_addr #0 {
  %4 = sext i8 %0 to i32
  %5 = icmp sgt i8 %0, 0
  %6 = select i1 %5, i8 %0, i8 0
  %7 = sext i8 %2 to i32
  %8 = add nsw i32 %7, %4
  %9 = xor i8 %2, %0
  %10 = sext i8 %9 to i32
  %11 = and i8 %2, %0
  %12 = sext i8 %11 to i32
  %13 = shl nsw i32 %12, 1
  %14 = add nsw i32 %13, %10
  %15 = icmp eq i32 %8, %14
  %16 = select i1 %15, i8 97, i8 23
  %17 = xor i8 %6, %16
  %18 = icmp eq i8 %17, 31
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #2 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %6 = tail call i32 @atoi(i8* %4)
  %7 = trunc i32 %6 to i8
  %8 = shl i32 %6, 24
  %9 = ashr exact i32 %8, 24
  %10 = icmp sgt i8 %7, 0
  %11 = select i1 %10, i8 %7, i8 0
  %12 = sext i8 %5 to i32
  %13 = add nsw i32 %9, %12
  %14 = xor i8 %5, %7
  %15 = sext i8 %14 to i32
  %16 = and i8 %5, %7
  %17 = sext i8 %16 to i32
  %18 = shl nsw i32 %17, 1
  %19 = add nsw i32 %18, %15
  %20 = icmp eq i32 %13, %19
  %21 = select i1 %20, i8 97, i8 23
  %22 = xor i8 %21, %11
  %23 = icmp eq i8 %22, 31
  %24 = zext i1 %23 to i32
  %25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@IJGBCEOB@Crc?5is?3?5?$CFd?6?$AA@", i64 0, i64 0), i32 %24)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8* nocapture) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @printf(i8*, ...) local_unnamed_addr #4 comdat {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.va_start(i8* nonnull %3)
  %4 = load i8*, i8** %2, align 8, !tbaa !3
  %5 = call %struct._iobuf* @__acrt_iob_func(i32 1) #5
  %6 = call i64* @__local_stdio_printf_options() #5
  %7 = load i64, i64* %6, align 8, !tbaa !8
  %8 = call i32 @__stdio_common_vfprintf(i64 %7, %struct._iobuf* %5, i8* %0, %struct.__crt_locale_pointers* null, i8* %4) #5
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline norecurse nounwind uwtable
define linkonce_odr dso_local i64* @__local_stdio_printf_options() local_unnamed_addr #6 comdat {
  ret i64* @__local_stdio_printf_options._OptionsStorage
}

declare dso_local %struct._iobuf* @__acrt_iob_func(i32) local_unnamed_addr #7

declare dso_local i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) local_unnamed_addr #7

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !5, i64 0}
