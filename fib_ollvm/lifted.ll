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
  %1 = trunc i64 %0 to i32
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %F_140001000.exit, label %BB_1400019b6.i.i

BB_1400019b6.i.i:                                 ; preds = %entry
  %3 = add i64 %0, 1
  %4 = and i64 %3, 4294967295
  br label %BB_1400019d0.i.i

BB_1400019d0.i.i:                                 ; preds = %BB_1400019d0.i.i, %BB_1400019b6.i.i
  %5 = phi i32 [ %8, %BB_1400019d0.i.i ], [ 1, %BB_1400019b6.i.i ]
  %6 = phi i32 [ %5, %BB_1400019d0.i.i ], [ 1, %BB_1400019b6.i.i ]
  %7 = phi i64 [ %11, %BB_1400019d0.i.i ], [ %4, %BB_1400019b6.i.i ]
  %8 = add i32 %6, %5
  %9 = trunc i64 %7 to i32
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = icmp ugt i32 %10, 1
  br i1 %12, label %BB_1400019d0.i.i, label %BB_140001a00.i.i

BB_140001a00.i.i:                                 ; preds = %BB_1400019d0.i.i
  %13 = and i32 %8, -256
  %14 = and i32 %8, 255
  br label %F_140001000.exit

F_140001000.exit:                                 ; preds = %entry, %BB_140001a00.i.i
  %15 = phi i32 [ %14, %BB_140001a00.i.i ], [ 0, %entry ]
  %16 = phi i32 [ %13, %BB_140001a00.i.i ], [ 38098944, %entry ]
  %17 = or i32 %16, %15
  %18 = zext i32 %17 to i64
  ret i64 %18
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
