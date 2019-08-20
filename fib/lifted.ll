; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

@GadgetFunctions = dllexport constant [1 x i64 (i8*)*] [i64 (i8*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local dllexport i64 @F_140001000_args(i8* %RCX) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %RCX to i64
  %S.sroa.44.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %cmp.i24.i.i.i6.i84.i.i = icmp eq i32 %S.sroa.44.sroa.0.0.extract.trunc, 0
  br i1 %cmp.i24.i.i.i6.i84.i.i, label %F_140001000.exit, label %BB_14000102e.i.i

BB_14000102e.i.i:                                 ; preds = %entry, %BB_14000102e.i.i
  %LoadIntrinsic77.i8.i = phi i32 [ %LoadIntrinsic78.i7.i, %BB_14000102e.i.i ], [ 1, %entry ]
  %LoadIntrinsic78.i7.i = phi i32 [ %add.i.i.i23.i.i, %BB_14000102e.i.i ], [ 1, %entry ]
  %LoadIntrinsic79.i.in.i = phi i32 [ %LoadIntrinsic79.i.i, %BB_14000102e.i.i ], [ %S.sroa.44.sroa.0.0.extract.trunc, %entry ]
  %LoadIntrinsic79.i.i = add i32 %LoadIntrinsic79.i.in.i, -1
  %add.i.i.i23.i.i = add i32 %LoadIntrinsic78.i7.i, %LoadIntrinsic77.i8.i
  %cmp.i24.i.i.i6.i.i.i = icmp eq i32 %LoadIntrinsic79.i.i, 0
  br i1 %cmp.i24.i.i.i6.i.i.i, label %F_140001000.exit.loopexit.i, label %BB_14000102e.i.i

F_140001000.exit.loopexit.i:                      ; preds = %BB_14000102e.i.i
  %phitmp.i = zext i32 %add.i.i.i23.i.i to i64
  br label %F_140001000.exit

F_140001000.exit:                                 ; preds = %entry, %F_140001000.exit.loopexit.i
  %LoadIntrinsic80.i.i = phi i64 [ %phitmp.i, %F_140001000.exit.loopexit.i ], [ 0, %entry ]
  ret i64 %LoadIntrinsic80.i.i
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
