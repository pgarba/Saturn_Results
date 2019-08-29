; ModuleID = 'file_0_lifted.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private dso_local unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private dso_local unnamed_addr constant [10 x i8] c"success!\0A\00", align 1
@.str.2 = private dso_local unnamed_addr constant [10 x i8] c"stop.klee\00", align 1
@.str.3 = private dso_local unnamed_addr constant [19 x i8] c"Valid input found!\00", align 1
@.str.4 = private dso_local unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GadgetFunctions = dllexport constant [1 x i64 (i8*)*] [i64 (i8*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

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
  %74 = bitcast i8* %73 to i64*
  %75 = call i32 bitcast (i64 (i8*)* @F_140001000_args to i32 (i64*)*)(i64* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 1600
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  call void @klee_assume(i64 %79)
  %80 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  call void @klee_report_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

declare dso_local void @klee_assume(i64) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind readonly uwtable
define dso_local dllexport i64 @F_140001000_args(i8* nocapture readonly %RCX) #3 {
entry:
  %Stack.i = alloca [10000 x i8], align 16
  %0 = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 0
  %arrayidx1.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 5000
  %1 = ptrtoint i8* %arrayidx1.i to i64
  %scevgep.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4960
  %2 = call i8* @memset(i8* %scevgep.i, i32 0, i64 16)
  %3 = add i64 %1, -40
  %LoadIntrinsic698772.i.i = load i8, i8* %RCX, align 1
  %cmp.i.i.i.i217773.i.i = icmp eq i8 %LoadIntrinsic698772.i.i, 0
  br i1 %cmp.i.i.i.i217773.i.i, label %BB_140001079.i.i, label %BB_14000105f.i.i.preheader

BB_14000105f.i.i.preheader:                       ; preds = %entry
  store i8 %LoadIntrinsic698772.i.i, i8* %scevgep.i, align 16
  br label %BB_140001079.i.i

BB_140001079.i.i:                                 ; preds = %BB_14000105f.i.i.preheader, %entry
  %ARG_GEP = getelementptr i8, i8* %RCX, i64 1
  %LoadIntrinsic703765.i.i = load i8, i8* %ARG_GEP, align 1
  %cmp.i.i.i.i766.i.i = icmp eq i8 %LoadIntrinsic703765.i.i, 0
  br i1 %cmp.i.i.i.i766.i.i, label %BB_1400010b0.i.i, label %BB_140001096.lr.ph.i.i

BB_140001096.lr.ph.i.i:                           ; preds = %BB_140001079.i.i
  %VS_GEP131.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4961
  store i8 %LoadIntrinsic703765.i.i, i8* %VS_GEP131.i, align 1
  br label %BB_1400010b0.i.i

BB_1400010b0.i.i:                                 ; preds = %BB_140001096.lr.ph.i.i, %BB_140001079.i.i
  %ARG_GEP37 = getelementptr i8, i8* %RCX, i64 2
  %LoadIntrinsic697757.i.i = load i8, i8* %ARG_GEP37, align 1
  %cmp.i.i.i.i287758.i.i = icmp eq i8 %LoadIntrinsic697757.i.i, 0
  br i1 %cmp.i.i.i.i287758.i.i, label %BB_1400010e7.i.i, label %BB_1400010cd.lr.ph.i.i

BB_1400010cd.lr.ph.i.i:                           ; preds = %BB_1400010b0.i.i
  %VS_GEP133.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4962
  store i8 %LoadIntrinsic697757.i.i, i8* %VS_GEP133.i, align 2
  br label %BB_1400010e7.i.i

BB_1400010e7.i.i:                                 ; preds = %BB_1400010cd.lr.ph.i.i, %BB_1400010b0.i.i
  %ARG_GEP39 = getelementptr i8, i8* %RCX, i64 3
  %LoadIntrinsic701749.i.i = load i8, i8* %ARG_GEP39, align 1
  %cmp.i.i.i.i56750.i.i = icmp eq i8 %LoadIntrinsic701749.i.i, 0
  br i1 %cmp.i.i.i.i56750.i.i, label %BB_14000111e.i.i, label %BB_140001104.lr.ph.i.i

BB_140001104.lr.ph.i.i:                           ; preds = %BB_1400010e7.i.i
  %VS_GEP135.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4963
  store i8 %LoadIntrinsic701749.i.i, i8* %VS_GEP135.i, align 1
  br label %BB_14000111e.i.i

BB_14000111e.i.i:                                 ; preds = %BB_140001104.lr.ph.i.i, %BB_1400010e7.i.i
  %ARG_GEP41 = getelementptr i8, i8* %RCX, i64 4
  %LoadIntrinsic742.i.i = load i8, i8* %ARG_GEP41, align 1
  %cmp.i.i.i.i527743.i.i = icmp eq i8 %LoadIntrinsic742.i.i, 0
  br i1 %cmp.i.i.i.i527743.i.i, label %BB_140001155.i.i, label %BB_14000113b.lr.ph.i.i

BB_14000113b.lr.ph.i.i:                           ; preds = %BB_14000111e.i.i
  %VS_GEP137.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4964
  store i8 %LoadIntrinsic742.i.i, i8* %VS_GEP137.i, align 4
  br label %BB_140001155.i.i

BB_140001155.i.i:                                 ; preds = %BB_14000113b.lr.ph.i.i, %BB_14000111e.i.i
  %ARG_GEP43 = getelementptr i8, i8* %RCX, i64 5
  %LoadIntrinsic700.i182.i = load i8, i8* %ARG_GEP43, align 1
  %VS_GEP142183.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4965
  store i8 %LoadIntrinsic700.i182.i, i8* %VS_GEP142183.i, align 1
  %ARG_GEP45 = getelementptr i8, i8* %RCX, i64 6
  %LoadIntrinsic700.i217.i = load i8, i8* %ARG_GEP45, align 1
  %VS_GEP142218.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4966
  store i8 %LoadIntrinsic700.i217.i, i8* %VS_GEP142218.i, align 2
  %ARG_GEP47 = getelementptr i8, i8* %RCX, i64 7
  %LoadIntrinsic700.i254.i = load i8, i8* %ARG_GEP47, align 1
  %VS_GEP142255.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4967
  store i8 %LoadIntrinsic700.i254.i, i8* %VS_GEP142255.i, align 1
  %ARG_GEP49 = getelementptr i8, i8* %RCX, i64 8
  %LoadIntrinsic700.i290.i = load i8, i8* %ARG_GEP49, align 1
  %VS_GEP142291.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4968
  store i8 %LoadIntrinsic700.i290.i, i8* %VS_GEP142291.i, align 8
  %ARG_GEP51 = getelementptr i8, i8* %RCX, i64 9
  %LoadIntrinsic700.i325.i = load i8, i8* %ARG_GEP51, align 1
  %VS_GEP142326.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4969
  store i8 %LoadIntrinsic700.i325.i, i8* %VS_GEP142326.i, align 1
  %ARG_GEP53 = getelementptr i8, i8* %RCX, i64 10
  %LoadIntrinsic700.i360.i = load i8, i8* %ARG_GEP53, align 1
  %VS_GEP142361.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4970
  store i8 %LoadIntrinsic700.i360.i, i8* %VS_GEP142361.i, align 2
  %ARG_GEP55 = getelementptr i8, i8* %RCX, i64 11
  %LoadIntrinsic700.i.i = load i8, i8* %ARG_GEP55, align 1
  %VS_GEP142.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4971
  store i8 %LoadIntrinsic700.i.i, i8* %VS_GEP142.i, align 1
  %ARG_GEP57 = getelementptr i8, i8* %RCX, i64 12
  %LoadIntrinsic700.i.1.i = load i8, i8* %ARG_GEP57, align 1
  %VS_GEP142.1.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4972
  store i8 %LoadIntrinsic700.i.1.i, i8* %VS_GEP142.1.i, align 4
  %ARG_GEP59 = getelementptr i8, i8* %RCX, i64 13
  %LoadIntrinsic700.i.2.i = load i8, i8* %ARG_GEP59, align 1
  %VS_GEP142.2.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4973
  store i8 %LoadIntrinsic700.i.2.i, i8* %VS_GEP142.2.i, align 1
  %ARG_GEP61 = getelementptr i8, i8* %RCX, i64 14
  %LoadIntrinsic700.i.3.i = load i8, i8* %ARG_GEP61, align 1
  %VS_GEP142.3.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4974
  store i8 %LoadIntrinsic700.i.3.i, i8* %VS_GEP142.3.i, align 2
  %ARG_GEP63 = getelementptr i8, i8* %RCX, i64 15
  %LoadIntrinsic700.i.4.i = load i8, i8* %ARG_GEP63, align 1
  %VS_GEP142.4.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4975
  store i8 %LoadIntrinsic700.i.4.i, i8* %VS_GEP142.4.i, align 1
  %VS_GEP144.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4944
  %PtrCast145.i = bitcast i8* %VS_GEP144.i to i64*
  store i64 %3, i64* %PtrCast145.i, align 16
  br i1 %cmp.i.i.i.i217773.i.i, label %F_140001000.exit, label %BB_1400011a4.i.i

BB_1400011a4.i.i:                                 ; preds = %BB_1400011a4.i.i, %BB_140001155.i.i
  %LoadIntrinsic725.i.i = phi i64 [ %add.i.i.i181.i.i, %BB_1400011a4.i.i ], [ %3, %BB_140001155.i.i ]
  %LoadIntrinsic713.i.i = phi i32 [ %add.i.i2.i.i.i, %BB_1400011a4.i.i ], [ 0, %BB_140001155.i.i ]
  %LoadIntrinsic693738.i.i = phi i8 [ %LoadIntrinsic693.i.i, %BB_1400011a4.i.i ], [ %LoadIntrinsic698772.i.i, %BB_140001155.i.i ]
  %conv.i.i1.i.i.i = sext i8 %LoadIntrinsic693738.i.i to i32
  %add.i.i2.i.i.i = add i32 %LoadIntrinsic713.i.i, %conv.i.i1.i.i.i
  %add.i.i.i181.i.i = add i64 %LoadIntrinsic725.i.i, 1
  store i64 %add.i.i.i181.i.i, i64* %PtrCast145.i, align 16
  %LoadIntrinsic721729.i.cast.i = inttoptr i64 %add.i.i.i181.i.i to i8*
  %LoadIntrinsic693.i.i = load i8, i8* %LoadIntrinsic721729.i.cast.i, align 1
  %cmp.i24.i.i.i.i502.i.i = icmp eq i8 %LoadIntrinsic693.i.i, 0
  br i1 %cmp.i24.i.i.i.i502.i.i, label %BB_1400011c4.loopexit.i.i, label %BB_1400011a4.i.i

BB_1400011c4.loopexit.i.i:                        ; preds = %BB_1400011a4.i.i
  %conv.i22.i.i.i.i = zext i32 %add.i.i2.i.i.i to i64
  br label %F_140001000.exit

F_140001000.exit:                                 ; preds = %BB_1400011c4.loopexit.i.i, %BB_140001155.i.i
  %conv.i.i1.i249.i.pre-phi.i = phi i64 [ %conv.i22.i.i.i.i, %BB_1400011c4.loopexit.i.i ], [ 0, %BB_140001155.i.i ]
  ret i64 %conv.i.i1.i249.i.pre-phi.i
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define i8* @memset(i8*, i32, i64) #5 !dbg !8 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %7, metadata !22, metadata !DIExpression()), !dbg !25
  %8 = load i8*, i8** %4, align 8, !dbg !26
  store i8* %8, i8** %7, align 8, !dbg !25
  br label %9, !dbg !27

; <label>:9:                                      ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !28
  %11 = add i64 %10, -1, !dbg !28
  store i64 %11, i64* %6, align 8, !dbg !28
  %12 = icmp ugt i64 %10, 0, !dbg !29
  br i1 %12, label %13, label %18, !dbg !27

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !30
  %15 = trunc i32 %14 to i8, !dbg !30
  %16 = load i8*, i8** %7, align 8, !dbg !31
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !31
  store i8* %17, i8** %7, align 8, !dbg !31
  store i8 %15, i8* %16, align 1, !dbg !32
  br label %9, !dbg !27, !llvm.loop !33

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !34
  ret i8* %19, !dbg !35
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { noreturn }

!llvm.ident = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"clang version 8.0.1-svn369350-1~exp1~20190820121219.79 (branches/release_80)"}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = distinct !DICompileUnit(language: DW_LANG_C89, file: !6, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7)
!6 = !DIFile(filename: "/mnt/e/klee2/klee/runtime/FreeStanding/memset.c", directory: "/mnt/e/klee2/build/runtime/FreeStanding")
!7 = !{}
!8 = distinct !DISubprogram(name: "memset", scope: !6, file: !6, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !5, variables: !7)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12, !13}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 62, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/llvm-6.0/lib/clang/6.0.0/include/stddef.h", directory: "/mnt/e/klee2/build/runtime/FreeStanding")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DILocalVariable(name: "dst", arg: 1, scope: !8, file: !6, line: 12, type: !11)
!17 = !DILocation(line: 12, column: 20, scope: !8)
!18 = !DILocalVariable(name: "s", arg: 2, scope: !8, file: !6, line: 12, type: !12)
!19 = !DILocation(line: 12, column: 29, scope: !8)
!20 = !DILocalVariable(name: "count", arg: 3, scope: !8, file: !6, line: 12, type: !13)
!21 = !DILocation(line: 12, column: 39, scope: !8)
!22 = !DILocalVariable(name: "a", scope: !8, file: !6, line: 13, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DILocation(line: 13, column: 9, scope: !8)
!26 = !DILocation(line: 13, column: 13, scope: !8)
!27 = !DILocation(line: 14, column: 3, scope: !8)
!28 = !DILocation(line: 14, column: 15, scope: !8)
!29 = !DILocation(line: 14, column: 18, scope: !8)
!30 = !DILocation(line: 15, column: 12, scope: !8)
!31 = !DILocation(line: 15, column: 7, scope: !8)
!32 = !DILocation(line: 15, column: 10, scope: !8)
!33 = distinct !{!33, !27, !30}
!34 = !DILocation(line: 16, column: 10, scope: !8)
!35 = !DILocation(line: 16, column: 3, scope: !8)
