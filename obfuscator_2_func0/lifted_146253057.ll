; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local dllexport i64 @F_146253057_args() local_unnamed_addr #0 {
entry:
  %LoadIntrinsic295.i.i = load i64, i64* inttoptr (i64 5401364440 to i64*), align 8
  ret i64 %LoadIntrinsic295.i.i
}

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
