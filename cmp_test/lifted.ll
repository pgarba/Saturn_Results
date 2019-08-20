; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

@GadgetFunctions = dllexport constant [1 x i64 (i8*, i8*)*] [i64 (i8*, i8*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local dllexport i64 @F_140001000_args(i8* %RCX, i8* %RDX) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %RCX to i64
  %S.sroa.44.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %cmp.i.i.i.i13149.i.i = icmp ugt i32 %S.sroa.44.sroa.0.0.extract.trunc, 2
  br i1 %cmp.i.i.i.i13149.i.i, label %BB_14000102a.lr.ph.i.i, label %F_140001000.exit

BB_14000102a.lr.ph.i.i:                           ; preds = %entry
  %1 = ptrtoint i8* %RDX to i64
  %S.sroa.67.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %mul.i.i.i.i.i = mul i32 %S.sroa.44.sroa.0.0.extract.trunc, 10
  %2 = mul i32 %mul.i.i.i.i.i, %S.sroa.67.sroa.0.0.extract.trunc
  %3 = add i32 %2, 230
  %4 = or i32 %2, 1
  %5 = add i32 %S.sroa.44.sroa.0.0.extract.trunc, -3
  %6 = mul i32 %3, %5
  %7 = add i32 %4, 230
  %8 = add i32 %7, %6
  %phitmp.i = zext i32 %8 to i64
  br label %F_140001000.exit

F_140001000.exit:                                 ; preds = %entry, %BB_14000102a.lr.ph.i.i
  %LoadIntrinsic.i.i = phi i64 [ %phitmp.i, %BB_14000102a.lr.ph.i.i ], [ 1, %entry ]
  ret i64 %LoadIntrinsic.i.i
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
