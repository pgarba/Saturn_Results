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

@GadgetFunctions = dllexport constant [1 x %struct.Memory.0* (%struct.State.32*, i64, %struct.Memory.0*)*] [%struct.Memory.0* (%struct.State.32*, i64, %struct.Memory.0*)* @F_140001000], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: alwaysinline inlinehint norecurse nounwind
define dso_local %struct.Memory.0* @F_140001000(%struct.State.32* noalias nocapture dereferenceable(3392), i64, %struct.Memory.0* noalias readnone returned) local_unnamed_addr #0 {
entry:
  %3 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 13
  %5 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 5, i32 0
  %6 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 7, i32 0
  %7 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 17, i32 0
  %8 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 19, i32 0
  %9 = bitcast %union.anon.2* %5 to i32*
  %10 = bitcast %union.anon.2* %6 to i32*
  %11 = bitcast %union.anon.2* %7 to i32*
  %12 = bitcast %union.anon.2* %8 to i32*
  %13 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %15, align 8
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  %21 = add i64 %18, 48
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %18, 40
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = add i64 %18, -12
  %30 = load i32, i32* %12, align 4
  %31 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %31, align 4
  %32 = add i64 %18, -16
  %33 = load i32, i32* %11, align 4
  %34 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %34, align 4
  %35 = add i64 %18, -20
  %36 = load i32, i32* %10, align 4
  %37 = inttoptr i64 %35 to i32*
  store i32 %36, i32* %37, align 4
  %38 = add i64 %18, -24
  %39 = load i32, i32* %9, align 4
  %40 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %22, align 8
  %42 = trunc i64 %41 to i32
  %43 = add i64 %18, -28
  %44 = inttoptr i64 %43 to i32*
  store i32 %42, i32* %44, align 4
  store i64 %21, i64* %16, align 8
  %45 = add i64 %18, -40
  %46 = inttoptr i64 %45 to i64*
  store i64 %21, i64* %46, align 8
  %47 = add i64 %18, -48
  %48 = inttoptr i64 %47 to i64*
  store i64 %21, i64* %48, align 8
  %49 = add i64 %18, -56
  %50 = inttoptr i64 %49 to i64*
  store i64 %21, i64* %50, align 8
  %51 = add i64 %18, -64
  %52 = inttoptr i64 %51 to i64*
  store i64 %21, i64* %52, align 8
  %53 = add i64 %18, -68
  %54 = inttoptr i64 %53 to i32*
  store i32 0, i32* %54, align 4
  %55 = add i64 %18, -88
  %56 = inttoptr i64 %55 to i64*
  store i64 %23, i64* %56, align 8
  %57 = add i64 %18, -92
  %58 = inttoptr i64 %57 to i32*
  store i32 %26, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %60 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %61 = load i32, i32* %54, align 4
  %62 = icmp ugt i32 %61, 7
  br i1 %62, label %BB_14000109e, label %BB_140001078

BB_140001078:                                     ; preds = %entry, %BB_140001078
  %63 = phi i32 [ %73, %BB_140001078 ], [ %61, %entry ]
  %64 = load i64, i64* %46, align 8
  %65 = sext i32 %63 to i64
  %66 = add i64 %64, %65
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %44, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %44, align 4
  %72 = load i32, i32* %54, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %54, align 4
  %74 = icmp ugt i32 %73, 7
  br i1 %74, label %BB_14000109e, label %BB_140001078

BB_14000109e:                                     ; preds = %BB_140001078, %entry
  %75 = add i64 %18, -72
  %76 = inttoptr i64 %75 to i32*
  store i32 0, i32* %76, align 4
  br label %BB_1400010b1

BB_1400010b1:                                     ; preds = %BB_14000109e, %BB_1400010b1
  %77 = phi i32 [ 0, %BB_14000109e ], [ %88, %BB_1400010b1 ]
  %78 = load i64, i64* %48, align 8
  %79 = sext i32 %77 to i64
  %80 = shl nsw i64 %79, 1
  %81 = add i64 %80, %78
  %82 = inttoptr i64 %81 to i16*
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = load i32, i32* %44, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %44, align 4
  %87 = load i32, i32* %76, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %76, align 4
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %BB_1400010d7, label %BB_1400010b1

BB_1400010d7:                                     ; preds = %BB_1400010b1
  %90 = add i64 %18, -76
  %91 = inttoptr i64 %90 to i32*
  store i32 0, i32* %91, align 4
  br label %BB_1400010ea

BB_1400010ea:                                     ; preds = %BB_1400010d7, %BB_1400010ea
  %92 = phi i32 [ 0, %BB_1400010d7 ], [ %102, %BB_1400010ea ]
  %93 = load i64, i64* %50, align 8
  %94 = sext i32 %92 to i64
  %95 = shl nsw i64 %94, 2
  %96 = add i64 %95, %93
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %44, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %44, align 4
  %101 = load i32, i32* %91, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %91, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %BB_14000110f, label %BB_1400010ea

BB_14000110f:                                     ; preds = %BB_1400010ea
  %104 = add i64 %18, -80
  %105 = inttoptr i64 %104 to i32*
  store i32 0, i32* %105, align 4
  %106 = inttoptr i64 %51 to i64**
  br label %BB_140001122

BB_140001122:                                     ; preds = %BB_14000110f, %BB_140001122
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %44, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %108, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %44, align 4
  %113 = load i32, i32* %105, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %105, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %BB_140001122, label %BB_14000114e

BB_14000114e:                                     ; preds = %BB_140001122
  %116 = and i64 %111, 4294967295
  store i64 %111, i64* %59, align 8
  store i64 %116, i64* %60, align 8
  store i8 0, i8* %4, align 1
  %117 = load i32, i32* %44, align 4
  %118 = load i64, i64* %22, align 8
  %119 = sext i32 %117 to i64
  %120 = mul nsw i64 %119, 235235
  %121 = mul i64 %120, %118
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %20, align 8
  store i64 %122, i64* %14, align 8
  %123 = inttoptr i64 %18 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %3, align 8
  %125 = add i64 %18, 8
  store i64 %125, i64* %15, align 8
  ret %struct.Memory.0* %2
}

attributes #0 = { alwaysinline inlinehint norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
