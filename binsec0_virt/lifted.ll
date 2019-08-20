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
  %7 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, -4
  %11 = inttoptr i64 %10 to i32*
  store i32 0, i32* %11, align 4
  %12 = add i64 %9, -16
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %14, align 8
  %15 = add i64 %9, -20
  %16 = load i32, i32* %6, align 4
  %17 = inttoptr i64 %15 to i32*
  store i32 %16, i32* %17, align 4
  %18 = add i64 %9, -528
  %19 = inttoptr i64 %18 to i64*
  store i64 5368713254, i64* %19, align 8
  store i64 %18, i64* %8, align 8
  store i64 5368715664, i64* %3, align 8
  %20 = tail call %struct.Memory.0* @__remill_function_call(%struct.State.32* nonnull %0, i64 5368715664, %struct.Memory.0* %2) #2
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 176
  %23 = add i64 %21, 168
  %24 = inttoptr i64 %23 to i64*
  store i64 %22, i64* %24, align 8
  %25 = add i64 %21, 160
  %26 = inttoptr i64 %25 to i64*
  store i64 5368827904, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %28 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.State.32, %struct.State.32* %0, i64 0, i32 6, i32 1, i32 0
  %30 = bitcast %union.anon.2* %29 to i32*
  br label %BB_140001045

BB_140001045:                                     ; preds = %BB_140001045.backedge, %entry
  %31 = phi i64 [ %21, %entry ], [ %.be, %BB_140001045.backedge ]
  %32 = phi i64 [ %21, %entry ], [ %.be1954, %BB_140001045.backedge ]
  %33 = add i64 %32, 160
  %34 = inttoptr i64 %33 to i64*
  %35 = inttoptr i64 %33 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  store i64 %38, i64* %28, align 8
  %39 = zext i8 %37 to i32
  %40 = add nsw i32 %39, -7
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %7, align 8
  %42 = icmp eq i32 %40, 0
  %43 = add i64 %32, 156
  %44 = inttoptr i64 %43 to i32*
  store i32 %39, i32* %44, align 4
  %45 = add i64 %32, 152
  %46 = inttoptr i64 %45 to i32*
  store i32 %40, i32* %46, align 4
  br i1 %42, label %BB_14000137a, label %BB_140001069

BB_140001069:                                     ; preds = %BB_140001045
  %47 = load i32, i32* %44, align 4
  %48 = add i32 %47, -22
  %49 = icmp eq i32 %48, 0
  %50 = add i64 %32, 148
  %51 = inttoptr i64 %50 to i32*
  store i32 %48, i32* %51, align 4
  br i1 %49, label %BB_140001882, label %BB_140001085

BB_140001085:                                     ; preds = %BB_140001069
  %52 = load i32, i32* %44, align 4
  %53 = add i32 %52, -31
  %54 = icmp eq i32 %53, 0
  %55 = add i64 %32, 144
  %56 = inttoptr i64 %55 to i32*
  store i32 %53, i32* %56, align 4
  br i1 %54, label %BB_1400012bc, label %BB_1400010a1

BB_1400010a1:                                     ; preds = %BB_140001085
  %57 = load i32, i32* %44, align 4
  %58 = add i32 %57, -34
  %59 = icmp eq i32 %58, 0
  %60 = add i64 %32, 140
  %61 = inttoptr i64 %60 to i32*
  store i32 %58, i32* %61, align 4
  store i8 0, i8* %4, align 1
  br i1 %59, label %BB_1400014ed, label %BB_1400010bd

BB_1400010bd:                                     ; preds = %BB_1400010a1
  %62 = load i32, i32* %44, align 4
  %63 = add i32 %62, -55
  %64 = icmp eq i32 %63, 0
  %65 = add i64 %32, 136
  %66 = inttoptr i64 %65 to i32*
  store i32 %63, i32* %66, align 4
  br i1 %64, label %BB_1400013d0, label %BB_1400010d9

BB_1400010d9:                                     ; preds = %BB_1400010bd
  %67 = load i32, i32* %44, align 4
  %68 = add i32 %67, -58
  %69 = icmp eq i32 %68, 0
  %70 = add i64 %32, 132
  %71 = inttoptr i64 %70 to i32*
  store i32 %68, i32* %71, align 4
  br i1 %69, label %BB_1400018fc, label %BB_1400010f5

BB_1400010f5:                                     ; preds = %BB_1400010d9
  %72 = load i32, i32* %44, align 4
  %73 = add i32 %72, -60
  %74 = icmp eq i32 %73, 0
  %75 = add i64 %32, 128
  %76 = inttoptr i64 %75 to i32*
  store i32 %73, i32* %76, align 4
  br i1 %74, label %BB_140001854, label %BB_140001111

BB_140001111:                                     ; preds = %BB_1400010f5
  %77 = load i32, i32* %44, align 4
  %78 = add i32 %77, -85
  %79 = icmp eq i32 %78, 0
  %80 = add i64 %32, 124
  %81 = inttoptr i64 %80 to i32*
  store i32 %78, i32* %81, align 4
  br i1 %79, label %BB_140001480, label %BB_14000112a

BB_14000112a:                                     ; preds = %BB_140001111
  %82 = load i32, i32* %44, align 4
  %83 = add i32 %82, -89
  %84 = icmp eq i32 %83, 0
  %85 = add i64 %32, 120
  %86 = inttoptr i64 %85 to i32*
  store i32 %83, i32* %86, align 4
  br i1 %84, label %BB_140001499, label %BB_140001143

BB_140001143:                                     ; preds = %BB_14000112a
  %87 = load i32, i32* %44, align 4
  %88 = add i32 %87, -94
  %89 = icmp eq i32 %88, 0
  %90 = add i64 %32, 116
  %91 = inttoptr i64 %90 to i32*
  store i32 %88, i32* %91, align 4
  br i1 %89, label %BB_1400017a8, label %BB_14000115c

BB_14000115c:                                     ; preds = %BB_140001143
  %92 = load i32, i32* %44, align 4
  %93 = add i32 %92, -108
  %94 = icmp eq i32 %93, 0
  %95 = add i64 %32, 112
  %96 = inttoptr i64 %95 to i32*
  store i32 %93, i32* %96, align 4
  br i1 %94, label %BB_1400015a4, label %BB_140001175

BB_140001175:                                     ; preds = %BB_14000115c
  %97 = load i32, i32* %44, align 4
  %98 = add i32 %97, -125
  %99 = icmp eq i32 %98, 0
  %100 = add i64 %32, 108
  %101 = inttoptr i64 %100 to i32*
  store i32 %98, i32* %101, align 4
  br i1 %99, label %BB_14000143b, label %BB_14000118e

BB_14000118e:                                     ; preds = %BB_140001175
  %102 = load i32, i32* %44, align 4
  %103 = add i32 %102, -132
  %104 = icmp eq i32 %103, 0
  %105 = add i64 %32, 104
  %106 = inttoptr i64 %105 to i32*
  store i32 %103, i32* %106, align 4
  br i1 %104, label %BB_1400016b5, label %BB_1400011a9

BB_1400011a9:                                     ; preds = %BB_14000118e
  %107 = load i32, i32* %44, align 4
  %108 = add i32 %107, -137
  %109 = icmp eq i32 %108, 0
  %110 = add i64 %32, 100
  %111 = inttoptr i64 %110 to i32*
  store i32 %108, i32* %111, align 4
  br i1 %109, label %BB_140001637, label %BB_1400011c4

BB_1400011c4:                                     ; preds = %BB_1400011a9
  %112 = load i32, i32* %44, align 4
  %113 = add i32 %112, -150
  %114 = icmp eq i32 %113, 0
  %115 = add i64 %32, 96
  %116 = inttoptr i64 %115 to i32*
  store i32 %113, i32* %116, align 4
  br i1 %114, label %BB_140001685, label %BB_1400011df

BB_1400011df:                                     ; preds = %BB_1400011c4
  %117 = load i32, i32* %44, align 4
  %118 = add i32 %117, -175
  %119 = icmp eq i32 %118, 0
  %120 = add i64 %32, 92
  %121 = inttoptr i64 %120 to i32*
  store i32 %118, i32* %121, align 4
  br i1 %119, label %BB_1400017fe, label %BB_1400011fa

BB_1400011fa:                                     ; preds = %BB_1400011df
  %122 = load i32, i32* %44, align 4
  %123 = add i32 %122, -191
  %124 = icmp eq i32 %123, 0
  %125 = add i64 %32, 88
  %126 = inttoptr i64 %125 to i32*
  store i32 %123, i32* %126, align 4
  br i1 %124, label %BB_140001303, label %BB_140001215

BB_140001215:                                     ; preds = %BB_1400011fa
  %127 = load i32, i32* %44, align 4
  %128 = add i32 %127, -214
  %129 = icmp eq i32 %128, 0
  %130 = add i64 %32, 84
  %131 = inttoptr i64 %130 to i32*
  store i32 %128, i32* %131, align 4
  br i1 %129, label %BB_140001754, label %BB_140001230

BB_140001230:                                     ; preds = %BB_140001215
  %132 = load i32, i32* %44, align 4
  %133 = add i32 %132, -233
  %134 = icmp eq i32 %133, 0
  %135 = add i64 %32, 80
  %136 = inttoptr i64 %135 to i32*
  store i32 %133, i32* %136, align 4
  br i1 %134, label %BB_140001409, label %BB_14000124b

BB_14000124b:                                     ; preds = %BB_140001230
  %137 = load i32, i32* %44, align 4
  %138 = add i32 %137, -235
  %139 = icmp eq i32 %138, 0
  %140 = add i64 %32, 76
  %141 = inttoptr i64 %140 to i32*
  store i32 %138, i32* %141, align 4
  br i1 %139, label %BB_140001542, label %BB_140001266

BB_140001266:                                     ; preds = %BB_14000124b
  %142 = load i32, i32* %44, align 4
  %143 = add i32 %142, -239
  %144 = icmp eq i32 %143, 0
  %145 = add i64 %32, 72
  %146 = inttoptr i64 %145 to i32*
  store i32 %143, i32* %146, align 4
  br i1 %144, label %BB_140001513, label %BB_140001281

BB_140001281:                                     ; preds = %BB_140001266
  %147 = load i32, i32* %44, align 4
  %148 = add i32 %147, -252
  %149 = icmp eq i32 %148, 0
  %150 = add i64 %32, 68
  %151 = inttoptr i64 %150 to i32*
  store i32 %148, i32* %151, align 4
  br i1 %149, label %BB_1400015d4, label %BB_14000129c

BB_14000129c:                                     ; preds = %BB_140001281
  %152 = load i32, i32* %44, align 4
  %153 = add i32 %152, -254
  %154 = icmp eq i32 %153, 0
  %155 = add i64 %32, 64
  %156 = inttoptr i64 %155 to i32*
  store i32 %153, i32* %156, align 4
  br i1 %154, label %BB_1400018af, label %BB_140001045.backedge

BB_1400012bc:                                     ; preds = %BB_140001085
  %157 = load i64, i64* %34, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %34, align 8
  %159 = add i64 %32, 168
  %160 = inttoptr i64 %159 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, -8
  %163 = inttoptr i64 %162 to i64*
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %161 to i64**
  %166 = load i64*, i64** %165, align 8
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %160, align 8
  %168 = add i64 %167, -16
  store i64 %168, i64* %160, align 8
  br label %BB_140001045.backedge

BB_140001303:                                     ; preds = %BB_1400011fa
  %169 = load i64, i64* %34, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %34, align 8
  %171 = add i64 %32, 168
  %172 = inttoptr i64 %171 to i64*
  %173 = inttoptr i64 %171 to i32**
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %BB_140001361, label %BB_140001328

BB_140001328:                                     ; preds = %BB_140001303
  %177 = inttoptr i64 %170 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  br label %BB_140001361

BB_140001361:                                     ; preds = %BB_140001303, %BB_140001328
  %.pn = phi i64 [ %179, %BB_140001328 ], [ 4, %BB_140001303 ]
  %storemerge = add i64 %.pn, %170
  store i64 %storemerge, i64* %34, align 8
  %180 = load i64, i64* %172, align 8
  %181 = add i64 %180, -8
  store i64 %181, i64* %172, align 8
  br label %BB_140001045.backedge

BB_14000137a:                                     ; preds = %BB_140001045
  %182 = load i64, i64* %34, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %34, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = add i64 %32, 168
  %187 = inttoptr i64 %186 to i64*
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, 8
  %190 = inttoptr i64 %189 to i32*
  store i32 %185, i32* %190, align 4
  %191 = load i64, i64* %187, align 8
  %192 = add i64 %191, 8
  store i64 %192, i64* %187, align 8
  %193 = load i64, i64* %34, align 8
  %194 = add i64 %193, 4
  store i64 %194, i64* %34, align 8
  br label %BB_140001045.backedge

BB_1400013d0:                                     ; preds = %BB_1400010bd
  %195 = load i64, i64* %34, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %34, align 8
  %197 = inttoptr i64 %196 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 %196, %199
  store i64 %200, i64* %34, align 8
  br label %BB_140001045.backedge

BB_140001409:                                     ; preds = %BB_140001230
  %201 = load i64, i64* %34, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %34, align 8
  %203 = add i64 %32, 168
  %204 = inttoptr i64 %203 to i64*
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i64*
  %207 = inttoptr i64 %205 to i64**
  %208 = load i64*, i64** %207, align 8
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %206, align 8
  br label %BB_140001045.backedge

BB_14000143b:                                     ; preds = %BB_140001175
  %210 = load i64, i64* %34, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %34, align 8
  %212 = add i64 %32, 168
  %213 = inttoptr i64 %212 to i64*
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = inttoptr i64 %214 to i32**
  %219 = load i32*, i32** %218, align 8
  store i32 %217, i32* %219, align 4
  %220 = load i64, i64* %213, align 8
  %221 = add i64 %220, -16
  store i64 %221, i64* %213, align 8
  br label %BB_140001045.backedge

BB_140001480:                                     ; preds = %BB_140001111
  %222 = load i64, i64* %34, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %34, align 8
  br label %BB_140001045.backedge

BB_140001499:                                     ; preds = %BB_14000112a
  %224 = load i64, i64* %34, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %34, align 8
  %226 = add i64 %32, 168
  %227 = inttoptr i64 %226 to i64*
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, -8
  %230 = inttoptr i64 %229 to i64*
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %228 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  %235 = add i64 %231, %234
  store i64 %235, i64* %230, align 8
  %236 = load i64, i64* %227, align 8
  %237 = add i64 %236, -8
  store i64 %237, i64* %227, align 8
  br label %BB_140001045.backedge

BB_1400014ed:                                     ; preds = %BB_1400010a1
  %238 = inttoptr i64 %33 to i64*
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %238, align 8
  %241 = add i64 %32, 168
  %242 = inttoptr i64 %241 to i32**
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %243, align 4
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %27, align 8
  %246 = add i64 %32, 520
  %247 = inttoptr i64 %246 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %3, align 8
  %249 = add i64 %32, 528
  store i64 %249, i64* %8, align 8
  ret %struct.Memory.0* %2

BB_140001513:                                     ; preds = %BB_140001266
  %250 = load i64, i64* %34, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %34, align 8
  br label %BB_140001045.backedge

BB_140001542:                                     ; preds = %BB_14000124b
  %252 = load i64, i64* %34, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %34, align 8
  %254 = load i64, i64* inttoptr (i64 5368828136 to i64*), align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = add i64 %254, %257
  %259 = add i64 %32, 168
  %260 = inttoptr i64 %259 to i64*
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %261, 8
  %263 = inttoptr i64 %262 to i64*
  store i64 %258, i64* %263, align 8
  %264 = load i64, i64* %260, align 8
  %265 = add i64 %264, 8
  store i64 %265, i64* %260, align 8
  %266 = load i64, i64* %34, align 8
  %267 = add i64 %266, 4
  store i64 %267, i64* %34, align 8
  br label %BB_140001045.backedge

BB_1400015a4:                                     ; preds = %BB_14000115c
  %268 = load i64, i64* %34, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %34, align 8
  %270 = add i64 %32, 168
  %271 = inttoptr i64 %270 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to i8**
  %274 = load i8*, i8** %273, align 8
  %275 = load i8, i8* %274, align 1
  %276 = inttoptr i64 %272 to i8*
  store i8 %275, i8* %276, align 1
  br label %BB_140001045.backedge

BB_1400015d4:                                     ; preds = %BB_140001281
  %277 = add i64 %32, 432
  %278 = load i64, i64* %34, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %34, align 8
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = add i64 %277, %282
  %284 = add i64 %32, 168
  %285 = inttoptr i64 %284 to i64*
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %286, 8
  %288 = inttoptr i64 %287 to i64*
  store i64 %283, i64* %288, align 8
  %289 = load i64, i64* %285, align 8
  %290 = add i64 %289, 8
  store i64 %290, i64* %285, align 8
  %291 = load i64, i64* %34, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %34, align 8
  br label %BB_140001045.backedge

BB_140001637:                                     ; preds = %BB_1400011a9
  %293 = load i64, i64* %34, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %34, align 8
  %295 = add i64 %32, 168
  %296 = inttoptr i64 %295 to i64*
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = inttoptr i64 %297 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = mul i32 %302, %300
  store i32 %303, i32* %299, align 4
  %304 = load i64, i64* %296, align 8
  %305 = add i64 %304, -8
  store i64 %305, i64* %296, align 8
  br label %BB_140001045.backedge

BB_140001685:                                     ; preds = %BB_1400011c4
  %306 = load i64, i64* %34, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %34, align 8
  %308 = add i64 %32, 168
  %309 = inttoptr i64 %308 to i64*
  %310 = load i64, i64* %309, align 8
  %311 = inttoptr i64 %310 to i32**
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %312, align 4
  %314 = inttoptr i64 %310 to i32*
  store i32 %313, i32* %314, align 4
  br label %BB_140001045.backedge

BB_1400016b5:                                     ; preds = %BB_14000118e
  %315 = load i64, i64* %34, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %34, align 8
  %317 = inttoptr i64 %316 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 0
  %320 = add i64 %32, 60
  %321 = inttoptr i64 %320 to i32*
  store i32 %318, i32* %321, align 4
  br i1 %319, label %BB_140001713, label %BB_1400016df

BB_1400016df:                                     ; preds = %BB_1400016b5
  %322 = add i32 %318, -1
  %323 = icmp eq i32 %322, 0
  %324 = add i64 %32, 56
  %325 = inttoptr i64 %324 to i32*
  store i32 %322, i32* %325, align 4
  br i1 %323, label %BB_1400016f5, label %BB_1400016df.BB_140001727_crit_edge

BB_1400016df.BB_140001727_crit_edge:              ; preds = %BB_1400016df
  %326 = add i64 %32, 168
  %327 = inttoptr i64 %326 to i64*
  br label %BB_140001727

BB_1400016f5:                                     ; preds = %BB_1400016df
  %328 = add i64 %32, 504
  %329 = add i64 %32, 168
  %330 = inttoptr i64 %329 to i64*
  %331 = load i64, i64* %330, align 8
  %332 = add i64 %331, 8
  %333 = inttoptr i64 %332 to i64*
  store i64 %328, i64* %333, align 8
  br label %BB_140001727

BB_140001713:                                     ; preds = %BB_1400016b5
  %334 = add i64 %32, 500
  %335 = add i64 %32, 168
  %336 = inttoptr i64 %335 to i64*
  %337 = load i64, i64* %336, align 8
  %338 = add i64 %337, 8
  %339 = inttoptr i64 %338 to i64*
  store i64 %334, i64* %339, align 8
  br label %BB_140001727

BB_140001727:                                     ; preds = %BB_1400016df.BB_140001727_crit_edge, %BB_140001713, %BB_1400016f5
  %340 = phi i64* [ %327, %BB_1400016df.BB_140001727_crit_edge ], [ %336, %BB_140001713 ], [ %330, %BB_1400016f5 ]
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, 8
  store i64 %342, i64* %340, align 8
  %343 = load i64, i64* %34, align 8
  %344 = add i64 %343, 4
  store i64 %344, i64* %34, align 8
  br label %BB_140001045.backedge

BB_140001754:                                     ; preds = %BB_140001215
  %345 = load i64, i64* %34, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %34, align 8
  %347 = add i64 %32, 168
  %348 = inttoptr i64 %347 to i64*
  %349 = load i64, i64* %348, align 8
  %350 = add i64 %349, -8
  %351 = inttoptr i64 %350 to i64*
  %352 = load i64, i64* %351, align 8
  %353 = inttoptr i64 %349 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  %356 = add i64 %352, %355
  store i64 %356, i64* %351, align 8
  %357 = load i64, i64* %348, align 8
  %358 = add i64 %357, -8
  store i64 %358, i64* %348, align 8
  br label %BB_140001045.backedge

BB_140001045.backedge:                            ; preds = %BB_140001754, %BB_140001854, %BB_1400017fe, %BB_140001882, %BB_1400018af, %BB_140001727, %BB_1400017a8, %BB_140001409, %BB_140001361, %BB_140001542, %BB_14000137a, %BB_140001480, %BB_1400012bc, %BB_140001499, %BB_140001513, %BB_1400015d4, %BB_140001637, %BB_1400015a4, %BB_140001685, %BB_1400013d0, %BB_14000143b, %BB_14000129c, %BB_140001976
  %.be = phi i64 [ %449, %BB_140001976 ], [ %31, %BB_14000129c ], [ %31, %BB_14000143b ], [ %31, %BB_1400013d0 ], [ %31, %BB_140001685 ], [ %31, %BB_1400015a4 ], [ %31, %BB_140001637 ], [ %31, %BB_1400015d4 ], [ %31, %BB_140001513 ], [ %31, %BB_140001499 ], [ %31, %BB_1400012bc ], [ %31, %BB_140001480 ], [ %31, %BB_14000137a ], [ %31, %BB_140001542 ], [ %31, %BB_140001361 ], [ %31, %BB_140001409 ], [ %31, %BB_1400017a8 ], [ %31, %BB_140001727 ], [ %31, %BB_1400018af ], [ %31, %BB_140001882 ], [ %31, %BB_1400017fe ], [ %31, %BB_140001854 ], [ %31, %BB_140001754 ]
  %.be1954 = phi i64 [ %449, %BB_140001976 ], [ %32, %BB_14000129c ], [ %32, %BB_14000143b ], [ %32, %BB_1400013d0 ], [ %32, %BB_140001685 ], [ %32, %BB_1400015a4 ], [ %32, %BB_140001637 ], [ %32, %BB_1400015d4 ], [ %32, %BB_140001513 ], [ %32, %BB_140001499 ], [ %32, %BB_1400012bc ], [ %32, %BB_140001480 ], [ %32, %BB_14000137a ], [ %32, %BB_140001542 ], [ %32, %BB_140001361 ], [ %32, %BB_140001409 ], [ %32, %BB_1400017a8 ], [ %32, %BB_140001727 ], [ %32, %BB_1400018af ], [ %32, %BB_140001882 ], [ %32, %BB_1400017fe ], [ %32, %BB_140001854 ], [ %32, %BB_140001754 ]
  br label %BB_140001045

BB_1400017a8:                                     ; preds = %BB_140001143
  %359 = load i64, i64* %34, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %34, align 8
  %361 = add i64 %32, 168
  %362 = inttoptr i64 %361 to i64*
  %363 = load i64, i64* %362, align 8
  %364 = inttoptr i64 %363 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i64 %363, -8
  %367 = inttoptr i64 %366 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %365, %368
  %370 = zext i1 %369 to i32
  store i32 %370, i32* %367, align 4
  %371 = load i64, i64* %362, align 8
  %372 = add i64 %371, -8
  store i64 %372, i64* %362, align 8
  br label %BB_140001045.backedge

BB_1400017fe:                                     ; preds = %BB_1400011df
  %373 = load i64, i64* %34, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %34, align 8
  %375 = inttoptr i64 %374 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i64 %32, 168
  %378 = inttoptr i64 %377 to i64*
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %379, 8
  %381 = inttoptr i64 %380 to i32*
  store i32 %376, i32* %381, align 4
  %382 = load i64, i64* %378, align 8
  %383 = add i64 %382, 8
  store i64 %383, i64* %378, align 8
  %384 = load i64, i64* %34, align 8
  %385 = add i64 %384, 8
  store i64 %385, i64* %34, align 8
  br label %BB_140001045.backedge

BB_140001854:                                     ; preds = %BB_1400010f5
  %386 = load i64, i64* %34, align 8
  %387 = add i64 %386, 1
  store i64 %387, i64* %34, align 8
  %388 = add i64 %32, 168
  %389 = inttoptr i64 %388 to i64*
  %390 = load i64, i64* %389, align 8
  %391 = inttoptr i64 %390 to i8*
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = inttoptr i64 %390 to i32*
  store i32 %393, i32* %394, align 4
  br label %BB_140001045.backedge

BB_140001882:                                     ; preds = %BB_140001069
  %395 = load i64, i64* %34, align 8
  %396 = add i64 %395, 1
  store i64 %396, i64* %34, align 8
  br label %BB_140001045.backedge

BB_1400018af:                                     ; preds = %BB_14000129c
  %397 = load i64, i64* %34, align 8
  %398 = add i64 %397, 1
  store i64 %398, i64* %34, align 8
  %399 = add i64 %32, 168
  %400 = inttoptr i64 %399 to i64*
  %401 = load i64, i64* %400, align 8
  %402 = add i64 %401, -8
  %403 = inttoptr i64 %402 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = inttoptr i64 %401 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, %404
  store i32 %407, i32* %403, align 4
  %408 = load i64, i64* %400, align 8
  %409 = add i64 %408, -8
  store i64 %409, i64* %400, align 8
  br label %BB_140001045.backedge

BB_1400018fc:                                     ; preds = %BB_1400010d9
  %410 = load i64, i64* %34, align 8
  %411 = add i64 %410, 1
  store i64 %411, i64* %34, align 8
  store i64 %411, i64* %27, align 8
  %412 = inttoptr i64 %411 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = add i32 %413, -1
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %7, align 8
  %416 = icmp eq i32 %414, 0
  %417 = add i64 %32, 52
  %418 = inttoptr i64 %417 to i32*
  store i32 %413, i32* %418, align 4
  %419 = add i64 %32, 48
  %420 = inttoptr i64 %419 to i32*
  store i32 %414, i32* %420, align 4
  store i8 0, i8* %4, align 1
  br i1 %416, label %BB_140001948, label %BB_14000192d

BB_14000192d:                                     ; preds = %BB_1400018fc
  %421 = load i32, i32* %418, align 4
  %422 = add i32 %421, -2
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %27, align 8
  %424 = icmp eq i32 %422, 0
  %425 = add i64 %32, 44
  %426 = inttoptr i64 %425 to i32*
  store i32 %422, i32* %426, align 4
  store i8 0, i8* %4, align 1
  br i1 %424, label %BB_140001965, label %BB_140001976

BB_140001948:                                     ; preds = %BB_1400018fc
  %427 = add i64 %32, 480
  %428 = inttoptr i64 %427 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %7, align 8
  %431 = add i64 %32, 472
  %432 = inttoptr i64 %431 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %28, align 8
  %434 = add i64 %32, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 5368715612, i64* %435, align 8
  store i64 %434, i64* %8, align 8
  store i64 5368721736, i64* %3, align 8
  %436 = tail call %struct.Memory.0* @__remill_function_call(%struct.State.32* nonnull %0, i64 5368721736, %struct.Memory.0* %2) #2
  %437 = load i64, i64* %8, align 8
  %438 = add i64 %437, 40
  br label %BB_140001976.sink.split

BB_140001965:                                     ; preds = %BB_14000192d
  %439 = add i64 %32, 488
  %440 = inttoptr i64 %439 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %28, align 8
  %442 = add i64 %32, -8
  %443 = inttoptr i64 %442 to i64*
  store i64 5368715634, i64* %443, align 8
  store i64 %442, i64* %8, align 8
  store i64 5368721736, i64* %3, align 8
  %444 = tail call %struct.Memory.0* @__remill_function_call(%struct.State.32* nonnull %0, i64 5368721736, %struct.Memory.0* %2) #2
  %445 = load i64, i64* %8, align 8
  %446 = add i64 %445, 36
  br label %BB_140001976.sink.split

BB_140001976.sink.split:                          ; preds = %BB_140001948, %BB_140001965
  %.sink1945 = phi i64 [ %446, %BB_140001965 ], [ %438, %BB_140001948 ]
  %.ph = phi i64 [ %445, %BB_140001965 ], [ %437, %BB_140001948 ]
  %447 = load i32, i32* %30, align 4
  %448 = inttoptr i64 %.sink1945 to i32*
  store i32 %447, i32* %448, align 4
  br label %BB_140001976

BB_140001976:                                     ; preds = %BB_140001976.sink.split, %BB_14000192d
  %449 = phi i64 [ %31, %BB_14000192d ], [ %.ph, %BB_140001976.sink.split ]
  %450 = add i64 %449, 160
  %451 = inttoptr i64 %450 to i64*
  %452 = load i64, i64* %451, align 8
  %453 = add i64 %452, 4
  store i64 %453, i64* %451, align 8
  br label %BB_140001045.backedge
}

; Function Attrs: noduplicate noinline nounwind optnone
declare dso_local %struct.Memory.0* @__remill_function_call(%struct.State.32* dereferenceable(3392), i64, %struct.Memory.0*) local_unnamed_addr #1

attributes #0 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
