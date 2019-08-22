; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

%struct.State.32 = type <{ %struct.ArchState.3, [32 x %union.VectorReg.6], %struct.ArithFlags.7, %union.anon.2, %struct.Segments.9, %struct.AddressSpace.11, %struct.GPR.12, %struct.X87Stack.14, %struct.MMX.18, %struct.FPUStatusFlags.19, %union.anon.2, %union.FPU.29, %struct.SegmentCaches.31, i8, [15 x i8] }>
%struct.ArchState.3 = type { i32, i32, %union.anon.2 }
%union.VectorReg.6 = type { %union.vec512_t.5 }
%union.vec512_t.5 = type { %struct.uint64v8_t.4 }
%struct.uint64v8_t.4 = type { [8 x i64] }
%struct.ArithFlags.7 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments.9 = type { i16, %union.SegmentSelector.8, i16, %union.SegmentSelector.8, i16, %union.SegmentSelector.8, i16, %union.SegmentSelector.8, i16, %union.SegmentSelector.8, i16, %union.SegmentSelector.8 }
%union.SegmentSelector.8 = type { i16 }
%struct.AddressSpace.11 = type { i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10 }
%struct.Reg.10 = type { %union.anon.2 }
%struct.GPR.12 = type { i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10, i64, %struct.Reg.10 }
%struct.X87Stack.14 = type { [8 x %struct.anon.3.13] }
%struct.anon.3.13 = type { i64, double }
%struct.MMX.18 = type { [8 x %struct.anon.4.17] }
%struct.anon.4.17 = type { i64, %union.vec64_t.16 }
%union.vec64_t.16 = type { %struct.uint64v1_t.15 }
%struct.uint64v1_t.15 = type { [1 x i64] }
%struct.FPUStatusFlags.19 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon.2 = type { i64 }
%union.FPU.29 = type { %struct.anon.13.28 }
%struct.anon.13.28 = type { %struct.FpuFXSAVE.27, [96 x i8] }
%struct.FpuFXSAVE.27 = type { %union.SegmentSelector.8, %union.SegmentSelector.8, %union.FPUAbridgedTagWord.20, i8, i16, i32, %union.SegmentSelector.8, i16, i32, %union.SegmentSelector.8, i16, %union.FPUControlStatus.21, %union.FPUControlStatus.21, [8 x %struct.FPUStackElem.24], [16 x %union.vec128_t.26] }
%union.FPUAbridgedTagWord.20 = type { i8 }
%union.FPUControlStatus.21 = type { i32 }
%struct.FPUStackElem.24 = type { %union.anon.11.23, [6 x i8] }
%union.anon.11.23 = type { %struct.float80_t.22 }
%struct.float80_t.22 = type { [10 x i8] }
%union.vec128_t.26 = type { %struct.uint128v1_t.25 }
%struct.uint128v1_t.25 = type { [1 x i128] }
%struct.SegmentCaches.31 = type { %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30 }
%struct.SegmentShadow.30 = type { %union.anon.2, i32, i32 }
%struct.Memory.0 = type opaque

@GadgetFunctions = dllexport constant [1 x i64 (%struct.State.32*, i64, %struct.Memory.0*)*] [i64 (%struct.State.32*, i64, %struct.Memory.0*)* @F_40b774], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 4241268], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 4194304

; Function Attrs: alwaysinline inlinehint norecurse nounwind uwtable
define dso_local dllexport i64 @F_40b774(%struct.State.32* nocapture %S, i64 %curr_pc, %struct.Memory.0* nocapture readnone %memory) local_unnamed_addr #0 {
entry:
  %PC.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 33, i32 0, i32 0
  %BRANCH_TAKEN.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 13
  %RAX.i10.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX.i11.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX.i12.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i13.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i14.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i15.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP.i16.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11.i20.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 23, i32 0, i32 0
  %R12.i21.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 25, i32 0, i32 0
  %R13.i22.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 27, i32 0, i32 0
  %R14.i23.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15.i24.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 31, i32 0, i32 0
  %0 = load i64, i64* %RBP.i16.i, align 8
  %add.i.i167.i.i = add i64 %0, 347
  %1 = inttoptr i64 %add.i.i167.i.i to i64*
  %2 = inttoptr i64 %add.i.i167.i.i to i32**
  %LoadIntrinsic6976.i = load i32*, i32** %2, align 8
  %LoadIntrinsic55.i = load i32, i32* %LoadIntrinsic6976.i, align 4
  %add.i.i99.i.i = add i64 %0, 85
  %3 = inttoptr i64 %add.i.i99.i.i to i32*
  %LoadIntrinsic54.i = load i32, i32* %3, align 4
  %and3.i.i.i26.i = and i32 %LoadIntrinsic54.i, %LoadIntrinsic55.i
  store i32 %and3.i.i.i26.i, i32* %3, align 4
  %LoadIntrinsic68.i = load i64, i64* %1, align 8
  %add.i.i237.i.i = add i64 %LoadIntrinsic68.i, 10
  %4 = inttoptr i64 %add.i.i237.i.i to i8*
  %LoadIntrinsic.i = load i8, i8* %4, align 1
  %5 = zext i8 %LoadIntrinsic.i to i32
  %xor3.i.i.i29.i = xor i32 %and3.i.i.i26.i, %5
  %add.i.i75.i.i = add i64 %0, 367
  %6 = inttoptr i64 %add.i.i75.i.i to i32*
  %LoadIntrinsic52.i = load i32, i32* %6, align 4
  %add.i.i1101.i.i = add i32 %xor3.i.i.i29.i, %LoadIntrinsic52.i
  %or3.i.i.i30.i = or i32 %add.i.i1101.i.i, %and3.i.i.i26.i
  store i32 %or3.i.i.i30.i, i32* %3, align 4
  %LoadIntrinsic51.i = load i32, i32* %6, align 4
  %xor3.i.i982.i.i = xor i32 %LoadIntrinsic51.i, 670646099
  store i32 %xor3.i.i982.i.i, i32* %6, align 4
  %add.i.i332.i.i = add i64 %0, 270
  %7 = inttoptr i64 %add.i.i332.i.i to i32*
  %LoadIntrinsic50.i = load i32, i32* %7, align 4
  %add.i.i1429.i.i = add i32 %LoadIntrinsic50.i, %add.i.i1101.i.i
  store i32 %add.i.i1429.i.i, i32* %7, align 4
  %add.i.i380.i.i = add i64 %0, 200
  %8 = inttoptr i64 %add.i.i380.i.i to i32*
  %LoadIntrinsic49.i = load i32, i32* %8, align 4
  %and3.i.i1392.i.i = and i32 %LoadIntrinsic49.i, %add.i.i1101.i.i
  store i32 %and3.i.i1392.i.i, i32* %8, align 4
  %LoadIntrinsic67.i = load i64, i64* %1, align 8
  %add.i.i651.i.i = add i64 %LoadIntrinsic67.i, 4
  %9 = inttoptr i64 %add.i.i651.i.i to i32*
  %LoadIntrinsic48.i = load i32, i32* %9, align 4
  %LoadIntrinsic47.i = load i32, i32* %3, align 4
  %add.i.i1029.i.i = add i32 %LoadIntrinsic47.i, %LoadIntrinsic48.i
  store i32 %add.i.i1029.i.i, i32* %3, align 4
  %LoadIntrinsic66.i = load i64, i64* %1, align 8
  %add.i.i1404.i.i = add i64 %LoadIntrinsic66.i, 8
  %10 = inttoptr i64 %add.i.i1404.i.i to i16*
  %LoadIntrinsic40.i = load i16, i16* %10, align 2
  %11 = zext i16 %LoadIntrinsic40.i to i32
  %xor3.i.i1226.i.i = xor i32 %add.i.i1029.i.i, %11
  %add.i.i1960.i.i = add i64 %0, 89
  %12 = inttoptr i64 %add.i.i1960.i.i to i32*
  %LoadIntrinsic45.i = load i32, i32* %12, align 4
  %add.i.i2066.i.i = add i32 %xor3.i.i1226.i.i, %LoadIntrinsic45.i
  %LoadIntrinsic44.i = load i32, i32* %6, align 4
  %or3.i.i1792.i.i = or i32 %LoadIntrinsic44.i, 1390026437
  store i32 %or3.i.i1792.i.i, i32* %6, align 4
  %add.i.i1984.i.i = add i64 %0, 332
  store i8 0, i8* %BRANCH_TAKEN.i, align 1
  %13 = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 17, i32 0
  %R8B.i.i = bitcast %union.anon.2* %13 to i8*
  %R8W.i.i = bitcast %union.anon.2* %13 to i16*
  %R8.i.i = getelementptr inbounds %union.anon.2, %union.anon.2* %13, i64 0, i32 0
  %R9.i.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10.i.i = getelementptr inbounds %struct.State.32, %struct.State.32* %S, i64 0, i32 6, i32 21, i32 0, i32 0
  %add.i.i1.i.i = add i64 %0, 40
  %14 = trunc i32 %add.i.i2066.i.i to i16
  %15 = inttoptr i64 %add.i.i1.i.i to i16*
  %LoadIntrinsic43.i = load i16, i16* %15, align 2
  %add.i.i.i.i = add i16 %LoadIntrinsic43.i, %14
  store i16 %add.i.i.i.i, i16* %15, align 2
  %LoadIntrinsic64.i = load i32, i32* %3, align 4
  %xor3.i.i.i.i = xor i32 %LoadIntrinsic64.i, 2093956180
  store i32 %xor3.i.i.i.i, i32* %3, align 4
  %LoadIntrinsic63.i = load i32, i32* %6, align 4
  %add.i.i68.i.i = add i32 %LoadIntrinsic63.i, 676668190
  store i32 %add.i.i68.i.i, i32* %6, align 4
  %LoadIntrinsic62.i = load i32, i32* %3, align 4
  %sub.i.i.i7.i = add i32 %LoadIntrinsic62.i, -140658567
  store i32 %sub.i.i.i7.i, i32* %3, align 4
  %LoadIntrinsic61.i = load i32, i32* %6, align 4
  %or3.i.i.i.i = or i32 %LoadIntrinsic61.i, 1735162841
  store i32 %or3.i.i.i.i, i32* %6, align 4
  %LoadIntrinsic75.i = load i64, i64* %1, align 8
  %add.i.i257.i.i = add i64 %LoadIntrinsic75.i, 15
  %16 = inttoptr i64 %add.i.i257.i.i to i32*
  %LoadIntrinsic60.i = load i32, i32* %16, align 4
  %LoadIntrinsic59.i = load i32, i32* %3, align 4
  %and3.i.i1520.i.i = and i32 %LoadIntrinsic59.i, %LoadIntrinsic60.i
  store i32 %and3.i.i1520.i.i, i32* %3, align 4
  %LoadIntrinsic58.i = load i32, i32* %6, align 4
  %and3.i.i.i.i = and i32 %LoadIntrinsic58.i, 1755642000
  store i32 %and3.i.i.i.i, i32* %6, align 4
  %LoadIntrinsic42.i = load i16, i16* %15, align 2
  %conv.i.i2150.i.i = zext i16 %LoadIntrinsic42.i to i64
  store i64 %conv.i.i2150.i.i, i64* %R8.i.i, align 8
  %add.i.i831.i.i = add i16 %LoadIntrinsic42.i, -3820
  store i16 %add.i.i831.i.i, i16* %R8W.i.i, align 2
  %17 = load i64, i64* %R8.i.i, align 8
  %add.i.i1473.i.i = add i64 %17, %0
  %LoadIntrinsic57.i = load i32, i32* %7, align 4
  %18 = inttoptr i64 %add.i.i1473.i.i to i64*
  %LoadIntrinsic74.i = load i64, i64* %18, align 8
  store i64 %LoadIntrinsic74.i, i64* %R8.i.i, align 8
  %19 = trunc i32 %LoadIntrinsic57.i to i8
  %20 = inttoptr i64 %LoadIntrinsic74.i to i8*
  %LoadIntrinsic38.i = load i8, i8* %20, align 1
  %add.i.i1500.i.i = add i8 %LoadIntrinsic38.i, %19
  store i8 %add.i.i1500.i.i, i8* %20, align 1
  %xor.i.i11162392.i.i = xor i32 %LoadIntrinsic57.i, %LoadIntrinsic60.i
  store i8 121, i8* %R8B.i.i, align 1
  %21 = and i32 %xor.i.i11162392.i.i, 2147483647
  %and.i.i1009.i.i = zext i32 %21 to i64
  store i64 %and.i.i1009.i.i, i64* %R13.i22.i, align 8
  %add.i.i1187.i.i = add i64 %0, 65620
  %22 = load i64, i64* %R8.i.i, align 8
  %23 = inttoptr i64 %add.i.i1984.i.i to i8*
  %LoadIntrinsic37.i = load i8, i8* %23, align 1
  %and3.i.i1212.i.i = and i8 %LoadIntrinsic37.i, 121
  store i8 %and3.i.i1212.i.i, i8* %23, align 1
  %LoadIntrinsic73.i = load i64, i64* %1, align 8
  %add.i.i1427.i.i = add i64 %LoadIntrinsic73.i, 11
  %24 = inttoptr i64 %add.i.i1427.i.i to i16*
  %LoadIntrinsic41.i = load i16, i16* %24, align 2
  %sub.i.i545.i.i = add i64 %22, -241
  store i64 %sub.i.i545.i.i, i64* %R15.i24.i, align 8
  %add.i.i456.i.i = add i64 %0, 44
  %25 = inttoptr i64 %add.i.i456.i.i to i64*
  %LoadIntrinsic72.i = load i64, i64* %25, align 8
  store i64 %add.i.i99.i.i, i64* %RSI.i14.i, align 8
  %26 = zext i16 %LoadIntrinsic41.i to i32
  %LoadIntrinsic56.i = load i32, i32* %3, align 4
  %sub.i.i1957.i.i = sub i32 %26, %LoadIntrinsic56.i
  %sub.i.i1827.i.i = add i32 %sub.i.i1957.i.i, -849200097
  %conv.i25.i.i.i = zext i32 %sub.i.i1827.i.i to i64
  %and.i.i1848.i.i = and i64 %conv.i25.i.i.i, 2147483574
  store i64 %and.i.i1848.i.i, i64* %RBX.i11.i, align 8
  store i64 %add.i.i99.i.i, i64* %R12.i21.i, align 8
  store i64 -62, i64* %RDX.i13.i, align 8
  %or3.i.i1661.i.i = or i32 %sub.i.i1827.i.i, %LoadIntrinsic56.i
  store i32 %or3.i.i1661.i.i, i32* %3, align 4
  %and.i.i1733.i.i = shl nuw nsw i64 %conv.i25.i.i.i, 3
  %shl.i.i.i.i = and i64 %and.i.i1733.i.i, 524280
  store i64 %shl.i.i.i.i, i64* %R11.i20.i, align 8
  %add.i.i1860.i.i = add i64 %shl.i.i.i.i, %LoadIntrinsic72.i
  store i64 %add.i.i1860.i.i, i64* %R14.i23.i, align 8
  %27 = inttoptr i64 %add.i.i1860.i.i to i64*
  %LoadIntrinsic71.i = load i64, i64* %27, align 8
  store i64 %LoadIntrinsic71.i, i64* %RCX.i12.i, align 8
  %and.i.i2112.i.i = and i64 %LoadIntrinsic72.i, 1024
  store i64 %and.i.i2112.i.i, i64* %R9.i.i, align 8
  store i64 -2147483408, i64* %R8.i.i, align 8
  store i64 639, i64* %RDI.i15.i, align 8
  store i64 %add.i.i1187.i.i, i64* %R10.i.i, align 8
  store i64 %add.i.i167.i.i, i64* %RAX.i10.i, align 8
  %LoadIntrinsic70.i = load i64, i64* %1, align 8
  %add.i.i2019.i.i = add i64 %LoadIntrinsic70.i, 21
  store i64 %add.i.i2019.i.i, i64* %1, align 8
  store i64 %LoadIntrinsic71.i, i64* %PC.i, align 8
  %28 = load i64, i64* %RAX.i10.i, align 8
  ret i64 %28
}

attributes #0 = { alwaysinline inlinehint norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
