; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

@GadgetFunctions = dllexport constant [1 x i64 (i8*)*] [i64 (i8*)* @F_140001090_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713360], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: nounwind uwtable
define dso_local dllexport i64 @F_140001090_args(i8* %RCX) local_unnamed_addr #0 {
entry:
  %Stack.i = alloca [10000 x i8], align 16
  %0 = ptrtoint i8* %RCX to i64
  %S.sroa.54.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %1 = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10000, i8* nonnull %1) #2
  %arrayidx1.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 5000
  %2 = ptrtoint i8* %arrayidx1.i to i64
  %3 = add i64 %2, -280
  %4 = add i64 %2, -4
  %VS_GEP.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4996
  %PtrCast.i = bitcast i8* %VS_GEP.i to i32*
  store i32 %S.sroa.54.sroa.0.0.extract.trunc, i32* %PtrCast.i, align 4
  %VS_GEP1.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4712
  %PtrCast2.i = bitcast i8* %VS_GEP1.i to i64*
  store i64 %3, i64* %PtrCast2.i, align 8
  %5 = add i64 %2, -16
  %PtrCast32.i = bitcast i8* %VS_GEP1.i to i32**
  br label %BB_1400010b4.i.i

BB_1400010b4.i.i:                                 ; preds = %BB_1400010b4.i.backedge.i, %entry
  %SS_4664.0.i = phi i64 [ 5368827920, %entry ], [ %SS_4664.1.i, %BB_1400010b4.i.backedge.i ]
  %LoadIntrinsic876877.i.i = phi i8* [ inttoptr (i64 5368827920 to i8*), %entry ], [ %33, %BB_1400010b4.i.backedge.i ]
  %LoadIntrinsic.i.i = load i8, i8* %LoadIntrinsic876877.i.i, align 1
  switch i8 %LoadIntrinsic.i.i, label %BB_1400010b4.i.backedge.i [
    i8 9, label %BB_1400012bb.i.i
    i8 11, label %F_140001090.exit
    i8 32, label %BB_140001326.i.i
    i8 42, label %BB_14000124a.i.i
    i8 -95, label %BB_140001288.i.i
    i8 -81, label %BB_1400013c0.i.i
    i8 -75, label %BB_1400013f8.i.i
    i8 -72, label %BB_1400011bd.i.i
    i8 -62, label %BB_140001211.i.i
    i8 -14, label %BB_140001367.i.i
    i8 -2, label %BB_140001302.i.i
  ]

BB_1400011bd.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i291.i.i = add i64 %SS_4664.0.i, 1
  %6 = inttoptr i64 %add.i.i.i291.i.i to i32*
  %LoadIntrinsic824.i.i = load i32, i32* %6, align 4
  %cmp.i1.i.i.i.i.i = icmp eq i32 %LoadIntrinsic824.i.i, 0
  br i1 %cmp.i1.i.i.i.i.i, label %BB_1400011da.i.i, label %BB_1400011f0.i.i

BB_1400011da.i.i:                                 ; preds = %BB_1400011bd.i.i
  %LoadIntrinsic840.i.i = load i64, i64* %PtrCast2.i, align 8
  %7 = add i64 %LoadIntrinsic840.i.i, 8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  br label %BB_1400011f0.i.i

BB_1400011f0.i.i:                                 ; preds = %BB_1400011da.i.i, %BB_1400011bd.i.i
  %LoadIntrinsic859.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i1.i430.i.i = add i64 %LoadIntrinsic859.i.i, 8
  store i64 %add.i.i1.i430.i.i, i64* %PtrCast2.i, align 8
  %add.i.i.i433.i.i = add i64 %SS_4664.0.i, 5
  br label %BB_1400010b4.i.backedge.i

BB_140001211.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i247.i.i = add i64 %SS_4664.0.i, 1
  %LoadIntrinsic866.i.i = load i64, i64* %PtrCast2.i, align 8
  %9 = inttoptr i64 %LoadIntrinsic866.i.i to i32*
  %LoadIntrinsic827.i.i = load i32, i32* %9, align 4
  %10 = add i64 %LoadIntrinsic866.i.i, -8
  %11 = inttoptr i64 %10 to i32*
  %LoadIntrinsic826.i.i = load i32, i32* %11, align 4
  %mul.i.i.i.i.i = mul i32 %LoadIntrinsic826.i.i, %LoadIntrinsic827.i.i
  store i32 %mul.i.i.i.i.i, i32* %11, align 4
  %LoadIntrinsic865.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i3.i.i.i = add i64 %LoadIntrinsic865.i.i, -8
  store i64 %add.i.i3.i.i.i, i64* %PtrCast2.i, align 8
  br label %BB_1400010b4.i.backedge.i

BB_14000124a.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i25.i.i.i = add i64 %SS_4664.0.i, 1
  %12 = inttoptr i64 %add.i.i25.i.i.i to i32*
  %LoadIntrinsic828.i.i = load i32, i32* %12, align 4
  %LoadIntrinsic870.i.i = load i64, i64* %PtrCast2.i, align 8
  %13 = add i64 %LoadIntrinsic870.i.i, 8
  %14 = inttoptr i64 %13 to i32*
  store i32 %LoadIntrinsic828.i.i, i32* %14, align 4
  %LoadIntrinsic869.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i.i238.i.i = add i64 %LoadIntrinsic869.i.i, 8
  store i64 %add.i.i.i238.i.i, i64* %PtrCast2.i, align 8
  %add.i.i1.i.i.i = add i64 %SS_4664.0.i, 5
  br label %BB_1400010b4.i.backedge.i

BB_140001288.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i745.i.i = add i64 %SS_4664.0.i, 1
  %LoadIntrinsic838.i.i = load i64, i64* %PtrCast2.i, align 8
  %15 = inttoptr i64 %LoadIntrinsic838.i.i to i32*
  %LoadIntrinsic811.i.i = load i32, i32* %15, align 4
  %16 = add i64 %LoadIntrinsic838.i.i, -8
  %17 = inttoptr i64 %16 to i32**
  %LoadIntrinsic837880.i.i = load i32*, i32** %17, align 8
  store i32 %LoadIntrinsic811.i.i, i32* %LoadIntrinsic837880.i.i, align 4
  %LoadIntrinsic836.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i1.i759.i.i = add i64 %LoadIntrinsic836.i.i, -16
  store i64 %add.i.i1.i759.i.i, i64* %PtrCast2.i, align 8
  br label %BB_1400010b4.i.backedge.i

BB_1400012bb.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i458.i.i = add i64 %SS_4664.0.i, 1
  %18 = inttoptr i64 %add.i.i.i458.i.i to i32*
  %LoadIntrinsic819.i.i = load i32, i32* %18, align 4
  %conv.i12.i.i468.i.i = sext i32 %LoadIntrinsic819.i.i to i64
  %add.i.i1.i469.i.i = add i64 %add.i.i.i458.i.i, %conv.i12.i.i468.i.i
  br label %BB_1400010b4.i.backedge.i

BB_140001302.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i262.i.i = add i64 %SS_4664.0.i, 1
  %LoadIntrinsic863.i.i = load i64, i64* %PtrCast2.i, align 8
  %19 = inttoptr i64 %LoadIntrinsic863.i.i to i32**
  %LoadIntrinsic862878.i.i = load i32*, i32** %19, align 8
  %LoadIntrinsic825.i.i = load i32, i32* %LoadIntrinsic862878.i.i, align 4
  %20 = inttoptr i64 %LoadIntrinsic863.i.i to i32*
  store i32 %LoadIntrinsic825.i.i, i32* %20, align 4
  br label %BB_1400010b4.i.backedge.i

BB_140001326.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i.i.i = add i64 %SS_4664.0.i, 1
  %LoadIntrinsic874.i.i = load i64, i64* %PtrCast2.i, align 8
  %21 = add i64 %LoadIntrinsic874.i.i, -8
  %22 = inttoptr i64 %21 to i32*
  %LoadIntrinsic830.i.i = load i32, i32* %22, align 4
  %23 = inttoptr i64 %LoadIntrinsic874.i.i to i32*
  %LoadIntrinsic829.i.i = load i32, i32* %23, align 4
  %sub.i.i.i223.i.i = sub i32 %LoadIntrinsic830.i.i, %LoadIntrinsic829.i.i
  %res.lobit.i.i.i38.i.i.i = lshr i32 %sub.i.i.i223.i.i, 31
  %shr.i.i.i.i40.i.i.i = lshr i32 %LoadIntrinsic830.i.i, 31
  %shr1.i.i.i.i.i.i.i = lshr i32 %LoadIntrinsic829.i.i, 31
  %xor.i.i.i.i41.i.i.i = xor i32 %shr1.i.i.i.i.i.i.i, %shr.i.i.i.i40.i.i.i
  %xor3.i.i.i.i42.i.i.i = xor i32 %res.lobit.i.i.i38.i.i.i, %shr.i.i.i.i40.i.i.i
  %add.i.i.i.i43.i.i.i = add nuw nsw i32 %xor3.i.i.i.i42.i.i.i, %xor.i.i.i.i41.i.i.i
  %cmp.i.i.i.i44.i.i.i = icmp eq i32 %add.i.i.i.i43.i.i.i, 2
  %tobool2.i.i.i.i = icmp ne i32 %res.lobit.i.i.i38.i.i.i, 0
  %cmp.i.i.i.i.i = xor i1 %tobool2.i.i.i.i, %cmp.i.i.i.i44.i.i.i
  %24 = zext i1 %cmp.i.i.i.i.i to i32
  store i32 %24, i32* %22, align 4
  %LoadIntrinsic873.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i2.i.i.i = add i64 %LoadIntrinsic873.i.i, -8
  store i64 %add.i.i2.i.i.i, i64* %PtrCast2.i, align 8
  br label %BB_1400010b4.i.backedge.i

BB_140001367.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i.i663.i.i = add i64 %SS_4664.0.i, 1
  %LoadIntrinsic842879.i.i = load i32*, i32** %PtrCast32.i, align 8
  %LoadIntrinsic813.i.i = load i32, i32* %LoadIntrinsic842879.i.i, align 4
  %cmp.i24.i.i.i7.i.i.i = icmp eq i32 %LoadIntrinsic813.i.i, 0
  %25 = ptrtoint i32* %LoadIntrinsic842879.i.i to i64
  br i1 %cmp.i24.i.i.i7.i.i.i, label %BB_1400013ad.i.i, label %BB_140001383.i.i

BB_140001383.i.i:                                 ; preds = %BB_140001367.i.i
  %26 = inttoptr i64 %add.i.i.i663.i.i to i32*
  %LoadIntrinsic823.i.i = load i32, i32* %26, align 4
  %conv.i12.i.i.i.i = sext i32 %LoadIntrinsic823.i.i to i64
  br label %BB_1400013ad.i.i

BB_1400013ad.i.i:                                 ; preds = %BB_140001383.i.i, %BB_140001367.i.i
  %.sink.i.i = phi i64 [ %conv.i12.i.i.i.i, %BB_140001383.i.i ], [ 4, %BB_140001367.i.i ]
  %add.i.i.i563.i.i = add i64 %.sink.i.i, %add.i.i.i663.i.i
  %add.i.i.i678.i.i = add i64 %25, -8
  store i64 %add.i.i.i678.i.i, i64* %PtrCast2.i, align 8
  br label %BB_1400010b4.i.backedge.i

BB_1400013c0.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i25.i495.i.i = add i64 %SS_4664.0.i, 1
  %LoadIntrinsic854.i.i = load i64, i64* %PtrCast2.i, align 8
  %27 = add i64 %LoadIntrinsic854.i.i, -8
  %28 = inttoptr i64 %27 to i32*
  %LoadIntrinsic818.i.i = load i32, i32* %28, align 4
  %29 = inttoptr i64 %LoadIntrinsic854.i.i to i32*
  %LoadIntrinsic817.i.i = load i32, i32* %29, align 4
  %add.i.i2.i506.i.i = add i32 %LoadIntrinsic817.i.i, %LoadIntrinsic818.i.i
  store i32 %add.i.i2.i506.i.i, i32* %28, align 4
  %LoadIntrinsic853.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i.i509.i.i = add i64 %LoadIntrinsic853.i.i, -8
  store i64 %add.i.i.i509.i.i, i64* %PtrCast2.i, align 8
  br label %BB_1400010b4.i.backedge.i

BB_1400013f8.i.i:                                 ; preds = %BB_1400010b4.i.i
  %add.i.i1.i595.i.i = add i64 %SS_4664.0.i, 1
  %30 = inttoptr i64 %add.i.i1.i595.i.i to i32*
  %LoadIntrinsic815.i.i = load i32, i32* %30, align 4
  %conv.i.i77.i.i.i = sext i32 %LoadIntrinsic815.i.i to i64
  %add.i.i25.i602.i.i = add i64 %5, %conv.i.i77.i.i.i
  %LoadIntrinsic849.i.i = load i64, i64* %PtrCast2.i, align 8
  %31 = add i64 %LoadIntrinsic849.i.i, 8
  %32 = inttoptr i64 %31 to i64*
  store i64 %add.i.i25.i602.i.i, i64* %32, align 8
  %LoadIntrinsic848.i.i = load i64, i64* %PtrCast2.i, align 8
  %add.i.i49.i.i.i = add i64 %LoadIntrinsic848.i.i, 8
  store i64 %add.i.i49.i.i.i, i64* %PtrCast2.i, align 8
  %add.i.i.i603.i.i = add i64 %SS_4664.0.i, 5
  br label %BB_1400010b4.i.backedge.i

BB_1400010b4.i.backedge.i:                        ; preds = %BB_1400010b4.i.i, %BB_1400013f8.i.i, %BB_1400013c0.i.i, %BB_1400013ad.i.i, %BB_140001326.i.i, %BB_140001302.i.i, %BB_1400012bb.i.i, %BB_140001288.i.i, %BB_14000124a.i.i, %BB_140001211.i.i, %BB_1400011f0.i.i
  %SS_4664.1.i = phi i64 [ %add.i.i1.i469.i.i, %BB_1400012bb.i.i ], [ %add.i.i.i.i.i, %BB_140001326.i.i ], [ %add.i.i1.i.i.i, %BB_14000124a.i.i ], [ %add.i.i.i745.i.i, %BB_140001288.i.i ], [ %add.i.i25.i495.i.i, %BB_1400013c0.i.i ], [ %add.i.i.i603.i.i, %BB_1400013f8.i.i ], [ %add.i.i.i433.i.i, %BB_1400011f0.i.i ], [ %add.i.i.i247.i.i, %BB_140001211.i.i ], [ %add.i.i.i563.i.i, %BB_1400013ad.i.i ], [ %add.i.i.i262.i.i, %BB_140001302.i.i ], [ %SS_4664.0.i, %BB_1400010b4.i.i ]
  %33 = inttoptr i64 %SS_4664.1.i to i8*
  br label %BB_1400010b4.i.i

F_140001090.exit:                                 ; preds = %BB_1400010b4.i.i
  %LoadIntrinsic845881.i.i = load i32*, i32** %PtrCast32.i, align 8
  %LoadIntrinsic814.i.i = load i32, i32* %LoadIntrinsic845881.i.i, align 4
  %conv.i.i28.i.i.i = zext i32 %LoadIntrinsic814.i.i to i64
  call void @llvm.lifetime.end.p0i8(i64 10000, i8* nonnull %1) #2
  ret i64 %conv.i.i28.i.i.i
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
