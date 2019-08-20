; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

%struct.Memory.0 = type opaque

@GadgetFunctions = dllexport constant [1 x i64 (i64*, i64*, i64*, i64*)*] [i64 (i64*, i64*, i64*, i64*)* @F_7b7ff8_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 8093688], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 4194304

; Function Attrs: nounwind uwtable
define dso_local dllexport i64 @F_7b7ff8_args(i64* nocapture readnone %RCX, i64* nocapture readnone %RDX, i64* nocapture readnone %R8, i64* nocapture readnone %R9) local_unnamed_addr #0 {
entry:
  %check_val.i.i.i.i = alloca i32, align 4
  %0 = bitcast i32* %check_val.i.i.i.i to i8*
  br label %BB_7addc3.i.i

BB_7addc3.i.i:                                    ; preds = %BB_7addc3.i.i, %entry
  %MEMORY.0.i.i = phi %struct.Memory.0* [ null, %entry ], [ %call.i.i.i103.i.i, %BB_7addc3.i.i ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 0, i32* %check_val.i.i.i.i, align 4
  %call.i.i.i103.i.i = call %struct.Memory.0* @__remill_compare_exchange_memory_32(%struct.Memory.0* %MEMORY.0.i.i, i64 4241214, i32* nonnull dereferenceable(4) %check_val.i.i.i.i, i32 1) #4
  %1 = load i32, i32* %check_val.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq i32 %1, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  br i1 %cmp.i.i.i.i.i, label %BB_7addd7.i.i, label %BB_7addc3.i.i

BB_7addd7.i.i:                                    ; preds = %BB_7addc3.i.i
  store i64 4194304, i64* inttoptr (i64 4241125 to i64*), align 8
  store i64 8092648, i64* inttoptr (i64 4241243 to i64*), align 8
  %LoadIntrinsic333.i.i = load i64, i64* inttoptr (i64 4240940 to i64*), align 8
  %cmp.i24.i.i.i217.i.i.i = icmp eq i64 %LoadIntrinsic333.i.i, 8006951
  br i1 %cmp.i24.i.i.i217.i.i.i, label %F_7b7ff8.exit, label %BB_7ae569.i.i

BB_7ae569.i.i:                                    ; preds = %BB_7addd7.i.i, %BB_7ae569.i.i
  %2 = phi i64 [ %conv.i25.i653.i.i.i, %BB_7ae569.i.i ], [ 2008, %BB_7addd7.i.i ]
  %3 = phi i64 [ %add.i.i.i137.i.i, %BB_7ae569.i.i ], [ 8006951, %BB_7addd7.i.i ]
  %4 = inttoptr i64 %3 to i64*
  %LoadIntrinsic318.i.i = load i64, i64* %4, align 8
  %add.i.i244.i.i.i = add i64 %LoadIntrinsic318.i.i, 4194304
  store i64 %add.i.i244.i.i.i, i64* %4, align 8
  %add.i.i.i137.i.i = add i64 %3, 8
  %add.i.i652.i.i.i = add nuw nsw i64 %2, 4294967295
  %conv.i25.i653.i.i.i = and i64 %add.i.i652.i.i.i, 4294967295
  %cmp.i1.i.i.i.i.i = icmp eq i64 %conv.i25.i653.i.i.i, 0
  br i1 %cmp.i1.i.i.i.i.i, label %BB_7ae6c0.loopexit.i.i, label %BB_7ae569.i.i

BB_7ae6c0.loopexit.i.i:                           ; preds = %BB_7ae569.i.i
  store i64 8006951, i64* inttoptr (i64 4240940 to i64*), align 8
  br label %F_7b7ff8.exit

F_7b7ff8.exit:                                    ; preds = %BB_7addd7.i.i, %BB_7ae6c0.loopexit.i.i
  ret i64 8022175
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare dso_local %struct.Memory.0* @__remill_compare_exchange_memory_32(%struct.Memory.0*, i64, i32* dereferenceable(4), i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind }
