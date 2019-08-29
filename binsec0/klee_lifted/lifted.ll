; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

@GadgetFunctions = dllexport constant [1 x i64 (i8*)*] [i64 (i8*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: nounwind readonly uwtable
define dso_local dllexport i64 @F_140001000_args(i8* nocapture readonly %RCX) local_unnamed_addr #0 {
entry:
  %Stack.i = alloca [10000 x i8], align 16
  %0 = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10000, i8* nonnull %0) #2
  %arrayidx1.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 5000
  %1 = ptrtoint i8* %arrayidx1.i to i64
  %scevgep.i = getelementptr inbounds [10000 x i8], [10000 x i8]* %Stack.i, i64 0, i64 4960
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %scevgep.i, i8 0, i64 16, i1 false) #2
  %2 = add i64 %1, -40
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
  store i64 %2, i64* %PtrCast145.i, align 16
  br i1 %cmp.i.i.i.i217773.i.i, label %F_140001000.exit, label %BB_1400011a4.i.i

BB_1400011a4.i.i:                                 ; preds = %BB_140001155.i.i, %BB_1400011a4.i.i
  %LoadIntrinsic725.i.i = phi i64 [ %add.i.i.i181.i.i, %BB_1400011a4.i.i ], [ %2, %BB_140001155.i.i ]
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

F_140001000.exit:                                 ; preds = %BB_140001155.i.i, %BB_1400011c4.loopexit.i.i
  %conv.i.i1.i249.i.pre-phi.i = phi i64 [ %conv.i22.i.i.i.i, %BB_1400011c4.loopexit.i.i ], [ 0, %BB_140001155.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 10000, i8* nonnull %0) #2
  ret i64 %conv.i.i1.i249.i.pre-phi.i
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
