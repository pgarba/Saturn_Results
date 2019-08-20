; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

@GadgetFunctions = dllexport constant [1 x i64 (i64*, i64*, i64*)*] [i64 (i64*, i64*, i64*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local dllexport i64 @F_140001000_args(i64* nocapture readnone %RCX, i64* %RDX, i64* %R8) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i64* %R8 to i64
  %S.sroa.1513.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %cmp.i24.i.i.i.i94.i.i = icmp eq i32 %S.sroa.1513.sroa.0.0.extract.trunc, 0
  br i1 %cmp.i24.i.i.i.i94.i.i, label %BB_140001074.i.us.i, label %F_140001000.exit

BB_140001074.i.us.i:                              ; preds = %entry, %BB_140001074.i.us.i
  br label %BB_140001074.i.us.i

F_140001000.exit:                                 ; preds = %entry
  %1 = ptrtoint i64* %RDX to i64
  %2 = mul i64 %1, 777
  %mul.i.i.i.i.i = add i64 %2, 950691098
  %conv.i.i4.i.i.i = and i64 %mul.i.i.i.i.i, 4294967295
  ret i64 %conv.i.i4.i.i.i
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
