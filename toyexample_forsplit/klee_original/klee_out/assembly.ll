; ModuleID = 'file_0.bc'
source_filename = "file_0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Valid!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @func(i8 signext, i8 signext, i8 signext) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %18, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %10
  %16 = load i8, i8* %8, align 1
  %17 = add i8 %16, 1
  store i8 %17, i8* %8, align 1
  br label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %10

; <label>:21:                                     ; preds = %10
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sgt i32 %23, 60
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %21
  %26 = load i8, i8* %7, align 1
  %27 = add i8 %26, 1
  store i8 %27, i8* %7, align 1
  br label %31

; <label>:28:                                     ; preds = %21
  %29 = load i8, i8* %7, align 1
  %30 = add i8 %29, -1
  store i8 %30, i8* %7, align 1
  br label %31

; <label>:31:                                     ; preds = %28, %25
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sgt i32 %33, 20
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* %7, align 1
  %37 = add i8 %36, 1
  store i8 %37, i8* %7, align 1
  br label %41

; <label>:38:                                     ; preds = %31
  %39 = load i8, i8* %7, align 1
  %40 = add i8 %39, -1
  store i8 %40, i8* %7, align 1
  br label %41

; <label>:41:                                     ; preds = %38, %35
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %6, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = load i8, i8* %4, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %6, align 1
  %50 = sext i8 %49 to i32
  %51 = xor i32 %48, %50
  %52 = load i8, i8* %4, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* %6, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %51, %57
  %59 = icmp eq i32 %46, %58
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %41
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = xor i32 %62, 97
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %8, align 1
  br label %70

; <label>:65:                                     ; preds = %41
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = xor i32 %67, 23
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %8, align 1
  br label %70

; <label>:70:                                     ; preds = %65, %60
  %71 = load i8, i8* %8, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 31
  %74 = zext i1 %73 to i32
  ret i32 %74
}

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
  %11 = load i8, i8* %7, align 1
  %12 = load i8, i8* %8, align 1
  %13 = call i32 @func(i8 signext %10, i8 signext %11, i8 signext %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  call void @klee_assume(i64 %17)
  %18 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  ret i32 0
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

declare dso_local void @klee_assume(i64) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0-3~ubuntu18.04.1 (tags/RELEASE_800/final)"}
