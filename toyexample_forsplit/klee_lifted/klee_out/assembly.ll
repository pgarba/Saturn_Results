; ModuleID = 'file_0_lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Valid!\0A\00", align 1
@GadgetFunctions = dllexport constant [1 x i64 (i64*, i64*, i64*)*] [i64 (i64*, i64*, i64*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @klee_make_symbolic(i8* %6, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @klee_make_symbolic(i8* %7, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @klee_make_symbolic(i8* %8, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %10 = load i8, i8* %6, align 1
  %11 = sext i8 %10 to i64
  %12 = inttoptr i64 %11 to i64*
  %13 = load i8, i8* %7, align 1
  %14 = sext i8 %13 to i64
  %15 = inttoptr i64 %14 to i64*
  %16 = load i8, i8* %8, align 1
  %17 = sext i8 %16 to i64
  %18 = inttoptr i64 %17 to i64*
  %19 = call i32 bitcast (i64 (i64*, i64*, i64*)* @F_140001000_args to i32 (i64*, i64*, i64*)*)(i64* %12, i64* %15, i64* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  call void @klee_assume(i64 %23)
  %24 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  ret i32 0
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

declare dso_local void @klee_assume(i64) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local dllexport i64 @F_140001000_args(i64* %RCX, i64* nocapture readnone %RDX, i64* nocapture readnone %R8) #2 {
entry:
  %0 = ptrtoint i64* %RCX to i64
  %S.sroa.44.sroa.0.0.extract.trunc = trunc i64 %0 to i8
  %phitmp21.i = icmp eq i8 %S.sroa.44.sroa.0.0.extract.trunc, 126
  %1 = zext i1 %phitmp21.i to i64
  ret i64 %1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 8.0.0-3~ubuntu18.04.1 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
