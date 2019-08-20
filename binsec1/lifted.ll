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

; Function Attrs: alwaysinline inlinehint nounwind
define dso_local %struct.Memory.0* @F_140001000(%struct.State.32* noalias dereferenceable(3392), i64, %struct.Memory.0* noalias returned) local_unnamed_addr #0 {
entry:
  %3 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 13
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 5, i32 0
  %6 = bitcast %union.anon.2* %5 to i32*
  %7 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = getelementptr inbounds %union.anon.2, %union.anon.2* %5, i64 0, i32 0
  %9 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 0, i64* %7, align 8
  %12 = add i64 %11, -4
  %13 = inttoptr i64 %12 to i32*
  store i32 0, i32* %13, align 4
  %14 = add i64 %11, -16
  %15 = load i64, i64* %9, align 8
  %16 = inttoptr i64 %14 to i64*
  store i64 %15, i64* %16, align 8
  %17 = add i64 %11, -20
  %18 = load i32, i32* %6, align 4
  %19 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %19, align 4
  %20 = add i64 %11, -32
  %21 = inttoptr i64 %20 to i32*
  store i32 0, i32* %21, align 4
  %22 = add i64 %11, -56
  store i64 %22, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %23 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 17, i64* %23, align 8
  %24 = add i64 %11, -128
  %25 = inttoptr i64 %24 to i64*
  store i64 5368713268, i64* %25, align 8
  store i64 %24, i64* %10, align 8
  store i64 5368716624, i64* %3, align 8
  %26 = tail call %struct.Memory.0* @__remill_function_call(%struct.State.32* nonnull %0, i64 5368716624, %struct.Memory.0* %2) #2
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 80
  %29 = inttoptr i64 %28 to i8*
  store i8 0, i8* %29, align 1
  %30 = add i64 %27, 96
  %31 = inttoptr i64 %30 to i32*
  store i32 0, i32* %31, align 4
  %32 = add i64 %27, 104
  %33 = add i64 %27, 64
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 8
  %37 = inttoptr i64 %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %BB_140001073, label %BB_140001059.lr.ph

BB_140001059.lr.ph:                               ; preds = %entry
  %41 = inttoptr i64 %33 to i8*
  br label %BB_140001059

BB_140001059:                                     ; preds = %BB_140001059.lr.ph, %BB_140001059
  %42 = load i8, i8* %41, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %41, align 1
  %44 = load i32, i32* %31, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %31, align 4
  %46 = load i64, i64* %34, align 8
  %47 = add i64 %46, 8
  %48 = inttoptr i64 %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ult i32 %45, %51
  br i1 %52, label %BB_140001059, label %BB_140001073

BB_140001073:                                     ; preds = %BB_140001059, %entry
  %53 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %54 = load i64, i64* %34, align 8
  %55 = add i64 %54, 8
  %56 = inttoptr i64 %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8, i8* %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %BB_1400010ae, label %BB_140001094.lr.ph

BB_140001094.lr.ph:                               ; preds = %BB_140001073
  %62 = add i64 %27, 65
  %63 = inttoptr i64 %62 to i8*
  br label %BB_140001094

BB_140001094:                                     ; preds = %BB_140001094.lr.ph, %BB_140001094
  %64 = load i8, i8* %63, align 1
  %65 = add i8 %64, 1
  store i8 %65, i8* %63, align 1
  %66 = load i32, i32* %31, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %31, align 4
  %68 = load i64, i64* %34, align 8
  %69 = add i64 %68, 8
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ult i32 %67, %75
  br i1 %76, label %BB_140001094, label %BB_1400010ae

BB_1400010ae:                                     ; preds = %BB_140001094, %BB_140001073
  store i32 0, i32* %31, align 4
  %77 = load i64, i64* %34, align 8
  %78 = add i64 %77, 8
  %79 = inttoptr i64 %78 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 2
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8, i8* %82, align 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %BB_1400010e9, label %BB_1400010cf.lr.ph

BB_1400010cf.lr.ph:                               ; preds = %BB_1400010ae
  %85 = add i64 %27, 66
  %86 = inttoptr i64 %85 to i8*
  br label %BB_1400010cf

BB_1400010cf:                                     ; preds = %BB_1400010cf.lr.ph, %BB_1400010cf
  %87 = load i8, i8* %86, align 1
  %88 = add i8 %87, 1
  store i8 %88, i8* %86, align 1
  %89 = load i32, i32* %31, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %31, align 4
  %91 = load i64, i64* %34, align 8
  %92 = add i64 %91, 8
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 2
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ult i32 %90, %98
  br i1 %99, label %BB_1400010cf, label %BB_1400010e9

BB_1400010e9:                                     ; preds = %BB_1400010cf, %BB_1400010ae
  store i32 0, i32* %31, align 4
  %100 = load i64, i64* %34, align 8
  %101 = add i64 %100, 8
  %102 = inttoptr i64 %101 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 3
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %BB_140001124, label %BB_14000110a.lr.ph

BB_14000110a.lr.ph:                               ; preds = %BB_1400010e9
  %108 = add i64 %27, 67
  %109 = inttoptr i64 %108 to i8*
  br label %BB_14000110a

BB_14000110a:                                     ; preds = %BB_14000110a.lr.ph, %BB_14000110a
  %110 = load i8, i8* %109, align 1
  %111 = add i8 %110, 1
  store i8 %111, i8* %109, align 1
  %112 = load i32, i32* %31, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %31, align 4
  %114 = load i64, i64* %34, align 8
  %115 = add i64 %114, 8
  %116 = inttoptr i64 %115 to i64*
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 3
  %119 = inttoptr i64 %118 to i8*
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ult i32 %113, %121
  br i1 %122, label %BB_14000110a, label %BB_140001124

BB_140001124:                                     ; preds = %BB_14000110a, %BB_1400010e9
  store i32 0, i32* %31, align 4
  %123 = load i64, i64* %34, align 8
  %124 = add i64 %123, 8
  %125 = inttoptr i64 %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 4
  %128 = inttoptr i64 %127 to i8*
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %BB_14000115f, label %BB_140001145.lr.ph

BB_140001145.lr.ph:                               ; preds = %BB_140001124
  %131 = add i64 %27, 68
  %132 = inttoptr i64 %131 to i8*
  br label %BB_140001145

BB_140001145:                                     ; preds = %BB_140001145.lr.ph, %BB_140001145
  %133 = load i8, i8* %132, align 1
  %134 = add i8 %133, 1
  store i8 %134, i8* %132, align 1
  %135 = load i32, i32* %31, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %31, align 4
  %137 = load i64, i64* %34, align 8
  %138 = add i64 %137, 8
  %139 = inttoptr i64 %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 4
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ult i32 %136, %144
  br i1 %145, label %BB_140001145, label %BB_14000115f

BB_14000115f:                                     ; preds = %BB_140001145, %BB_140001124
  %146 = add i64 %27, 92
  %147 = inttoptr i64 %146 to i32*
  store i32 5, i32* %147, align 4
  br label %BB_140001172

BB_140001172:                                     ; preds = %BB_14000115f, %BB_140001172
  %148 = phi i32 [ 5, %BB_14000115f ], [ %160, %BB_140001172 ]
  %149 = load i64, i64* %34, align 8
  %150 = add i64 %149, 8
  %151 = inttoptr i64 %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = sext i32 %148 to i64
  %154 = add i64 %152, %153
  %155 = inttoptr i64 %154 to i8*
  %156 = load i8, i8* %155, align 1
  %157 = add i64 %33, %153
  %158 = inttoptr i64 %157 to i8*
  store i8 %156, i8* %158, align 1
  %159 = load i32, i32* %147, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %147, align 4
  %161 = icmp ugt i32 %160, 15
  br i1 %161, label %BB_14000119c, label %BB_140001172

BB_14000119c:                                     ; preds = %BB_140001172
  store i32 0, i32* %31, align 4
  %162 = add i64 %27, 88
  %163 = inttoptr i64 %162 to i32*
  br label %BB_1400011af

BB_1400011af:                                     ; preds = %BB_14000119c, %BB_1400011af
  %164 = phi i32 [ 0, %BB_14000119c ], [ %168, %BB_1400011af ]
  %165 = load i32, i32* %163, align 4
  %166 = add i32 %165, %164
  store i32 %166, i32* %163, align 4
  %167 = load i32, i32* %31, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %31, align 4
  %169 = icmp ugt i32 %168, 15
  br i1 %169, label %BB_1400011cb, label %BB_1400011af

BB_1400011cb:                                     ; preds = %BB_1400011af
  %170 = add i64 %27, 48
  %171 = inttoptr i64 %170 to i64*
  store i64 %33, i64* %171, align 8
  %172 = inttoptr i64 %33 to i8*
  %173 = load i8, i8* %172, align 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %BB_140001206, label %BB_1400011e3

BB_1400011e3:                                     ; preds = %BB_1400011cb, %BB_1400011e3
  %175 = phi i8 [ %182, %BB_1400011e3 ], [ %173, %BB_1400011cb ]
  %176 = sext i8 %175 to i32
  %177 = load i32, i32* %163, align 4
  %178 = add i32 %177, %176
  store i32 %178, i32* %163, align 4
  %179 = load i64, i64* %171, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %171, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = load i8, i8* %181, align 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %BB_140001206, label %BB_1400011e3

BB_140001206:                                     ; preds = %BB_1400011e3, %BB_1400011cb
  %184 = phi i64 [ %33, %BB_1400011cb ], [ %180, %BB_1400011e3 ]
  store i64 %184, i64* %7, align 8
  store i8 0, i8* %4, align 1
  %185 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 1, i32 0
  %186 = bitcast %union.anon.2* %185 to i32*
  %187 = load i32, i32* %163, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %9, align 8
  store i64 5368787648, i64* %53, align 8
  %189 = add i64 %27, -8
  %190 = inttoptr i64 %189 to i64*
  store i64 5368713750, i64* %190, align 8
  store i64 %189, i64* %10, align 8
  store i64 5368713792, i64* %3, align 8
  %191 = tail call %struct.Memory.0* @__remill_function_call(%struct.State.32* nonnull %0, i64 5368713792, %struct.Memory.0* %2) #2
  %192 = load i64, i64* %10, align 8
  %193 = add i64 %192, 88
  %194 = inttoptr i64 %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 1600
  %197 = add i64 %192, 44
  %198 = load i32, i32* %186, align 4
  %199 = inttoptr i64 %197 to i32*
  store i32 %198, i32* %199, align 4
  br i1 %196, label %BB_140001228, label %BB_140001238

BB_140001228:                                     ; preds = %BB_140001206
  store i8 0, i8* %4, align 1
  store i64 5368787660, i64* %53, align 8
  %200 = add i64 %192, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 5368713780, i64* %201, align 8
  store i64 %200, i64* %10, align 8
  store i64 5368713792, i64* %3, align 8
  %202 = tail call %struct.Memory.0* @__remill_function_call(%struct.State.32* nonnull %0, i64 5368713792, %struct.Memory.0* %2) #2
  %203 = load i64, i64* %10, align 8
  %204 = add i64 %203, 40
  %205 = load i32, i32* %186, align 4
  %206 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %206, align 4
  br label %BB_140001238

BB_140001238:                                     ; preds = %BB_140001206, %BB_140001228
  %207 = phi i64 [ %192, %BB_140001206 ], [ %203, %BB_140001228 ]
  store i8 0, i8* %4, align 1
  store i64 0, i64* %7, align 8
  %208 = add i64 %207, 120
  %209 = inttoptr i64 %208 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %3, align 8
  %211 = add i64 %207, 128
  store i64 %211, i64* %10, align 8
  ret %struct.Memory.0* %2
}

; Function Attrs: noduplicate noinline nounwind optnone
declare dso_local %struct.Memory.0* @__remill_function_call(%struct.State.32* dereferenceable(3392), i64, %struct.Memory.0*) local_unnamed_addr #1

attributes #0 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
