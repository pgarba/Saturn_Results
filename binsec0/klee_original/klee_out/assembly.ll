; ModuleID = 'file_0.bc'
source_filename = "file_0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private dso_local unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private dso_local unnamed_addr constant [10 x i8] c"success!\0A\00", align 1
@.str.2 = private dso_local unnamed_addr constant [10 x i8] c"stop.klee\00", align 1
@.str.3 = private dso_local unnamed_addr constant [19 x i8] c"Valid input found!\00", align 1
@.str.4 = private dso_local unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [17 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %16, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 %14
  store i8 0, i8* %15, align 1
  br label %16

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %9

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 16
  store i8 0, i8* %20, align 16
  store i32 0, i32* %4, align 4
  br label %21

; <label>:21:                                     ; preds = %32, %19
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = add i8 %30, 1
  store i8 %31, i8* %29, align 16
  br label %32

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %21

; <label>:35:                                     ; preds = %21
  store i32 0, i32* %4, align 4
  br label %36

; <label>:36:                                     ; preds = %47, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %50

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = add i8 %45, 1
  store i8 %46, i8* %44, align 1
  br label %47

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %36

; <label>:50:                                     ; preds = %36
  store i32 0, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %62, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %65

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 2
  %60 = load i8, i8* %59, align 2
  %61 = add i8 %60, 1
  store i8 %61, i8* %59, align 2
  br label %62

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %51

; <label>:65:                                     ; preds = %51
  store i32 0, i32* %4, align 4
  br label %66

; <label>:66:                                     ; preds = %77, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %80

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = add i8 %75, 1
  store i8 %76, i8* %74, align 1
  br label %77

; <label>:77:                                     ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %66

; <label>:80:                                     ; preds = %66
  store i32 0, i32* %4, align 4
  br label %81

; <label>:81:                                     ; preds = %92, %80
  %82 = load i32, i32* %4, align 4
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %81
  %89 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 4
  %90 = load i8, i8* %89, align 4
  %91 = add i8 %90, 1
  store i8 %91, i8* %89, align 4
  br label %92

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %81

; <label>:95:                                     ; preds = %81
  store i32 5, i32* %5, align 4
  br label %96

; <label>:96:                                     ; preds = %108, %95
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 16
  br i1 %98, label %99, label %111

; <label>:99:                                     ; preds = %96
  %100 = load i8*, i8** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 %106
  store i8 %104, i8* %107, align 1
  br label %108

; <label>:108:                                    ; preds = %99
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %96

; <label>:111:                                    ; preds = %96
  %112 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i32 0, i32 0
  store i8* %112, i8** %8, align 8
  br label %113

; <label>:113:                                    ; preds = %123, %111
  %114 = load i8*, i8** %8, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %126

; <label>:117:                                    ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

; <label>:123:                                    ; preds = %117
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  br label %113

; <label>:126:                                    ; preds = %113
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [16 x i8]* %6 to i8*
  call void @klee_make_symbolic(i8* %9, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %63, %2
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 15
  br i1 %13, label %14, label %66

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 48
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 57
  %28 = zext i1 %27 to i32
  %29 = and i32 %21, %28
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 97
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 122
  %43 = zext i1 %42 to i32
  %44 = and i32 %36, %43
  %45 = or i32 %29, %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 65
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 90
  %59 = zext i1 %58 to i32
  %60 = and i32 %52, %59
  %61 = or i32 %45, %60
  %62 = sext i32 %61 to i64
  call void @klee_assume(i64 %62)
  br label %63

; <label>:63:                                     ; preds = %14
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %10

; <label>:66:                                     ; preds = %10
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 15
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  call void @klee_assume(i64 %72)
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %74 = call i32 @test(i8* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 1600
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  call void @klee_assume(i64 %78)
  %79 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  call void @klee_report_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

declare dso_local void @klee_assume(i64) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1-svn369350-1~exp1~20190820121219.79 (branches/release_80)"}
