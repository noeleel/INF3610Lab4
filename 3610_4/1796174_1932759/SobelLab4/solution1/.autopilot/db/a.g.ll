; ModuleID = 'C:/TEMP/INF3610_H18_Lab4/INF3610_H18_Lab4/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@_ZZ14sobel_operatoriPhE4x_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@_ZZ14sobel_operatoriPhE4y_op = internal constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=2 type=[3 x [3 x i8]]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@_amblksiz = external global i32                  ; [#uses=0 type=i32*]
@_sys_nerr = dllimport global i32                 ; [#uses=0 type=i32*]
@_imp___osplatform = external global i32*         ; [#uses=0 type=i32**]
@_imp___osver = external global i32*              ; [#uses=0 type=i32**]
@_imp___winver = external global i32*             ; [#uses=0 type=i32**]
@_imp___winmajor = external global i32*           ; [#uses=0 type=i32**]
@_imp___winminor = external global i32*           ; [#uses=0 type=i32**]

; [#uses=1]
define zeroext i8 @_Z14sobel_operatoriPh(i32 %fullIndex, i8* %image) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %x_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %y_weight = alloca i32, align 4                 ; [#uses=6 type=i32*]
  %edge_weight = alloca i32, align 4              ; [#uses=2 type=i32*]
  %edge_val = alloca i8, align 1                  ; [#uses=6 type=i8*]
  %i = alloca i32, align 4                        ; [#uses=8 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=8 type=i32*]
  store i32 %fullIndex, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !60), !dbg !61 ; [debug line = 20:34] [debug variable = fullIndex]
  store i8* %image, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !62), !dbg !63 ; [debug line = 20:55] [debug variable = image]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !64 ; [debug line = 22:1]
  call void @llvm.dbg.declare(metadata !{i32* %x_weight}, metadata !66), !dbg !67 ; [debug line = 35:6] [debug variable = x_weight]
  store i32 0, i32* %x_weight, align 4, !dbg !68  ; [debug line = 35:18]
  call void @llvm.dbg.declare(metadata !{i32* %y_weight}, metadata !69), !dbg !70 ; [debug line = 36:6] [debug variable = y_weight]
  store i32 0, i32* %y_weight, align 4, !dbg !71  ; [debug line = 36:18]
  call void @llvm.dbg.declare(metadata !{i32* %edge_weight}, metadata !72), !dbg !73 ; [debug line = 38:11] [debug variable = edge_weight]
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !74), !dbg !75 ; [debug line = 39:10] [debug variable = edge_val]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 44:1]
  call void (...)* @_ssdm_SpecConstant([3 x i8]* getelementptr inbounds ([3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 48:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !78), !dbg !80 ; [debug line = 50:11] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !81         ; [debug line = 50:16]
  br label %3, !dbg !81                           ; [debug line = 50:16]

; <label>:3                                       ; preds = %49, %0
  %4 = load i32* %i, align 4, !dbg !81            ; [#uses=1 type=i32] [debug line = 50:16]
  %5 = icmp slt i32 %4, 3, !dbg !81               ; [#uses=1 type=i1] [debug line = 50:16]
  br i1 %5, label %6, label %52, !dbg !81         ; [debug line = 50:16]

; <label>:6                                       ; preds = %3
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !82), !dbg !85 ; [debug line = 51:12] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !86         ; [debug line = 51:17]
  br label %7, !dbg !86                           ; [debug line = 51:17]

; <label>:7                                       ; preds = %45, %6
  %8 = load i32* %j, align 4, !dbg !86            ; [#uses=1 type=i32] [debug line = 51:17]
  %9 = icmp slt i32 %8, 3, !dbg !86               ; [#uses=1 type=i1] [debug line = 51:17]
  br i1 %9, label %10, label %48, !dbg !86        ; [debug line = 51:17]

; <label>:10                                      ; preds = %7
  %11 = load i32* %x_weight, align 4, !dbg !87    ; [#uses=1 type=i32] [debug line = 53:3]
  %12 = load i32* %1, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 53:26]
  %13 = load i32* %i, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 53:26]
  %14 = sub nsw i32 %13, 1, !dbg !89              ; [#uses=1 type=i32] [debug line = 53:26]
  %15 = load i32* %j, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 53:26]
  %16 = sub nsw i32 %15, 1, !dbg !89              ; [#uses=1 type=i32] [debug line = 53:26]
  %17 = load i8** %2, align 4, !dbg !89           ; [#uses=1 type=i8*] [debug line = 53:26]
  %18 = call zeroext i8 @_ZL6getValiiiPh(i32 %12, i32 %14, i32 %16, i8* %17), !dbg !89 ; [#uses=1 type=i8] [debug line = 53:26]
  %19 = zext i8 %18 to i32, !dbg !89              ; [#uses=1 type=i32] [debug line = 53:26]
  %20 = load i32* %j, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 53:26]
  %21 = load i32* %i, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 53:26]
  %22 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op, i32 0, i32 %21, !dbg !89 ; [#uses=1 type=[3 x i8]*] [debug line = 53:26]
  %23 = getelementptr inbounds [3 x i8]* %22, i32 0, i32 %20, !dbg !89 ; [#uses=1 type=i8*] [debug line = 53:26]
  %24 = load i8* %23, align 1, !dbg !89           ; [#uses=1 type=i8] [debug line = 53:26]
  %25 = sext i8 %24 to i32, !dbg !89              ; [#uses=1 type=i32] [debug line = 53:26]
  %26 = mul nsw i32 %19, %25, !dbg !89            ; [#uses=1 type=i32] [debug line = 53:26]
  %27 = add nsw i32 %11, %26, !dbg !89            ; [#uses=1 type=i32] [debug line = 53:26]
  store i32 %27, i32* %x_weight, align 4, !dbg !89 ; [debug line = 53:26]
  %28 = load i32* %y_weight, align 4, !dbg !90    ; [#uses=1 type=i32] [debug line = 56:3]
  %29 = load i32* %1, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 56:26]
  %30 = load i32* %i, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 56:26]
  %31 = sub nsw i32 %30, 1, !dbg !91              ; [#uses=1 type=i32] [debug line = 56:26]
  %32 = load i32* %j, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 56:26]
  %33 = sub nsw i32 %32, 1, !dbg !91              ; [#uses=1 type=i32] [debug line = 56:26]
  %34 = load i8** %2, align 4, !dbg !91           ; [#uses=1 type=i8*] [debug line = 56:26]
  %35 = call zeroext i8 @_ZL6getValiiiPh(i32 %29, i32 %31, i32 %33, i8* %34), !dbg !91 ; [#uses=1 type=i8] [debug line = 56:26]
  %36 = zext i8 %35 to i32, !dbg !91              ; [#uses=1 type=i32] [debug line = 56:26]
  %37 = load i32* %j, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 56:26]
  %38 = load i32* %i, align 4, !dbg !91           ; [#uses=1 type=i32] [debug line = 56:26]
  %39 = getelementptr inbounds [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op, i32 0, i32 %38, !dbg !91 ; [#uses=1 type=[3 x i8]*] [debug line = 56:26]
  %40 = getelementptr inbounds [3 x i8]* %39, i32 0, i32 %37, !dbg !91 ; [#uses=1 type=i8*] [debug line = 56:26]
  %41 = load i8* %40, align 1, !dbg !91           ; [#uses=1 type=i8] [debug line = 56:26]
  %42 = sext i8 %41 to i32, !dbg !91              ; [#uses=1 type=i32] [debug line = 56:26]
  %43 = mul nsw i32 %36, %42, !dbg !91            ; [#uses=1 type=i32] [debug line = 56:26]
  %44 = add nsw i32 %28, %43, !dbg !91            ; [#uses=1 type=i32] [debug line = 56:26]
  store i32 %44, i32* %y_weight, align 4, !dbg !91 ; [debug line = 56:26]
  br label %45, !dbg !92                          ; [debug line = 57:3]

; <label>:45                                      ; preds = %10
  %46 = load i32* %j, align 4, !dbg !93           ; [#uses=1 type=i32] [debug line = 51:26]
  %47 = add nsw i32 %46, 1, !dbg !93              ; [#uses=1 type=i32] [debug line = 51:26]
  store i32 %47, i32* %j, align 4, !dbg !93       ; [debug line = 51:26]
  br label %7, !dbg !93                           ; [debug line = 51:26]

; <label>:48                                      ; preds = %7
  br label %49, !dbg !94                          ; [debug line = 58:2]

; <label>:49                                      ; preds = %48
  %50 = load i32* %i, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 50:25]
  %51 = add nsw i32 %50, 1, !dbg !95              ; [#uses=1 type=i32] [debug line = 50:25]
  store i32 %51, i32* %i, align 4, !dbg !95       ; [debug line = 50:25]
  br label %3, !dbg !95                           ; [debug line = 50:25]

; <label>:52                                      ; preds = %3
  %53 = load i32* %x_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 60:2]
  %54 = icmp sgt i32 %53, 0, !dbg !96             ; [#uses=1 type=i1] [debug line = 60:2]
  br i1 %54, label %55, label %57, !dbg !96       ; [debug line = 60:2]

; <label>:55                                      ; preds = %52
  %56 = load i32* %x_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 60:2]
  br label %60, !dbg !96                          ; [debug line = 60:2]

; <label>:57                                      ; preds = %52
  %58 = load i32* %x_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 60:2]
  %59 = sub nsw i32 0, %58, !dbg !96              ; [#uses=1 type=i32] [debug line = 60:2]
  br label %60, !dbg !96                          ; [debug line = 60:2]

; <label>:60                                      ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ], !dbg !96 ; [#uses=1 type=i32] [debug line = 60:2]
  %62 = load i32* %y_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 60:2]
  %63 = icmp sgt i32 %62, 0, !dbg !96             ; [#uses=1 type=i1] [debug line = 60:2]
  br i1 %63, label %64, label %66, !dbg !96       ; [debug line = 60:2]

; <label>:64                                      ; preds = %60
  %65 = load i32* %y_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 60:2]
  br label %69, !dbg !96                          ; [debug line = 60:2]

; <label>:66                                      ; preds = %60
  %67 = load i32* %y_weight, align 4, !dbg !96    ; [#uses=1 type=i32] [debug line = 60:2]
  %68 = sub nsw i32 0, %67, !dbg !96              ; [#uses=1 type=i32] [debug line = 60:2]
  br label %69, !dbg !96                          ; [debug line = 60:2]

; <label>:69                                      ; preds = %66, %64
  %70 = phi i32 [ %65, %64 ], [ %68, %66 ], !dbg !96 ; [#uses=1 type=i32] [debug line = 60:2]
  %71 = add nsw i32 %61, %70, !dbg !96            ; [#uses=1 type=i32] [debug line = 60:2]
  store i32 %71, i32* %edge_weight, align 4, !dbg !96 ; [debug line = 60:2]
  %72 = load i32* %edge_weight, align 4, !dbg !97 ; [#uses=1 type=i32] [debug line = 62:2]
  %73 = trunc i32 %72 to i8, !dbg !97             ; [#uses=1 type=i8] [debug line = 62:2]
  %74 = zext i8 %73 to i32, !dbg !97              ; [#uses=1 type=i32] [debug line = 62:2]
  %75 = sub nsw i32 255, %74, !dbg !97            ; [#uses=1 type=i32] [debug line = 62:2]
  %76 = trunc i32 %75 to i8, !dbg !97             ; [#uses=1 type=i8] [debug line = 62:2]
  store i8 %76, i8* %edge_val, align 1, !dbg !97  ; [debug line = 62:2]
  %77 = load i8* %edge_val, align 1, !dbg !98     ; [#uses=1 type=i8] [debug line = 65:2]
  %78 = zext i8 %77 to i32, !dbg !98              ; [#uses=1 type=i32] [debug line = 65:2]
  %79 = icmp sgt i32 %78, 200, !dbg !98           ; [#uses=1 type=i1] [debug line = 65:2]
  br i1 %79, label %80, label %81, !dbg !98       ; [debug line = 65:2]

; <label>:80                                      ; preds = %69
  store i8 -1, i8* %edge_val, align 1, !dbg !99   ; [debug line = 66:3]
  br label %87, !dbg !99                          ; [debug line = 66:3]

; <label>:81                                      ; preds = %69
  %82 = load i8* %edge_val, align 1, !dbg !100    ; [#uses=1 type=i8] [debug line = 67:7]
  %83 = zext i8 %82 to i32, !dbg !100             ; [#uses=1 type=i32] [debug line = 67:7]
  %84 = icmp slt i32 %83, 100, !dbg !100          ; [#uses=1 type=i1] [debug line = 67:7]
  br i1 %84, label %85, label %86, !dbg !100      ; [debug line = 67:7]

; <label>:85                                      ; preds = %81
  store i8 0, i8* %edge_val, align 1, !dbg !101   ; [debug line = 68:3]
  br label %86, !dbg !101                         ; [debug line = 68:3]

; <label>:86                                      ; preds = %85, %81
  br label %87

; <label>:87                                      ; preds = %86, %80
  %88 = load i8* %edge_val, align 1, !dbg !102    ; [#uses=1 type=i8] [debug line = 70:2]
  ret i8 %88, !dbg !102                           ; [debug line = 70:2]
}

; [#uses=29]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=2]
define internal zeroext i8 @_ZL6getValiiiPh(i32 %index, i32 %xDiff, i32 %yDiff, i8* %Y) nounwind inlinehint {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %4 = alloca i8*, align 4                        ; [#uses=2 type=i8**]
  store i32 %index, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !103), !dbg !104 ; [debug line = 15:34] [debug variable = index]
  store i32 %xDiff, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !105), !dbg !106 ; [debug line = 15:45] [debug variable = xDiff]
  store i32 %yDiff, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !107), !dbg !108 ; [debug line = 15:56] [debug variable = yDiff]
  store i8* %Y, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !109), !dbg !110 ; [debug line = 15:73] [debug variable = Y]
  %5 = load i32* %1, align 4, !dbg !111           ; [#uses=1 type=i32] [debug line = 17:2]
  %6 = load i32* %3, align 4, !dbg !111           ; [#uses=1 type=i32] [debug line = 17:2]
  %7 = mul nsw i32 %6, 1920, !dbg !111            ; [#uses=1 type=i32] [debug line = 17:2]
  %8 = add nsw i32 %5, %7, !dbg !111              ; [#uses=1 type=i32] [debug line = 17:2]
  %9 = load i32* %2, align 4, !dbg !111           ; [#uses=1 type=i32] [debug line = 17:2]
  %10 = add nsw i32 %8, %9, !dbg !111             ; [#uses=1 type=i32] [debug line = 17:2]
  %11 = load i8** %4, align 4, !dbg !111          ; [#uses=1 type=i8*] [debug line = 17:2]
  %12 = getelementptr inbounds i8* %11, i32 %10, !dbg !111 ; [#uses=1 type=i8*] [debug line = 17:2]
  %13 = load i8* %12, align 1, !dbg !111          ; [#uses=1 type=i8] [debug line = 17:2]
  ret i8 %13, !dbg !111                           ; [debug line = 17:2]
}

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=4 type=i8**]
  %2 = alloca i32*, align 4                       ; [#uses=4 type=i32**]
  %oneToFourPixels = alloca %union.OneToFourPixels, align 4 ; [#uses=4 type=%union.OneToFourPixels*]
  %val = alloca i8, align 1                       ; [#uses=4 type=i8*]
  %image = alloca i8*, align 4                    ; [#uses=4 type=i8**]
  %result = alloca i8*, align 4                   ; [#uses=8 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i2 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i3 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i4 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %i5 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %j6 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %fullIndex = alloca i32, align 4                ; [#uses=3 type=i32*]
  %i7 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %j8 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !113), !dbg !114 ; [debug line = 74:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !115), !dbg !116 ; [debug line = 74:60] [debug variable = out_pix]
  %3 = load i32** %2, align 4, !dbg !117          ; [#uses=1 type=i32*] [debug line = 75:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !117 ; [debug line = 75:2]
  %4 = load i8** %1, align 4, !dbg !119           ; [#uses=1 type=i8*] [debug line = 75:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !119 ; [debug line = 75:46]
  %5 = load i8** %1, align 4, !dbg !120           ; [#uses=1 type=i8*] [debug line = 92:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 92:1]
  %6 = load i32** %2, align 4, !dbg !121          ; [#uses=1 type=i32*] [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !121 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 94:1]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %oneToFourPixels}, metadata !123), !dbg !136 ; [debug line = 95:18] [debug variable = oneToFourPixels]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !137), !dbg !138 ; [debug line = 96:10] [debug variable = val]
  br label %7, !dbg !139                          ; [debug line = 98:2]

; <label>:7                                       ; preds = %138, %0
  call void @llvm.dbg.declare(metadata !{i8** %image}, metadata !140), !dbg !142 ; [debug line = 102:13] [debug variable = image]
  %8 = call i8* @malloc(i32 2073600), !dbg !143   ; [#uses=1 type=i8*] [debug line = 102:33]
  store i8* %8, i8** %image, align 4, !dbg !143   ; [debug line = 102:33]
  call void @llvm.dbg.declare(metadata !{i8** %result}, metadata !144), !dbg !145 ; [debug line = 103:13] [debug variable = result]
  %9 = call i8* @malloc(i32 2073600), !dbg !146   ; [#uses=1 type=i8*] [debug line = 103:34]
  store i8* %9, i8** %result, align 4, !dbg !146  ; [debug line = 103:34]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !147), !dbg !149 ; [debug line = 105:21] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !150        ; [debug line = 105:26]
  br label %10, !dbg !150                         ; [debug line = 105:26]

; <label>:10                                      ; preds = %36, %7
  %11 = load i32* %i, align 4, !dbg !150          ; [#uses=1 type=i32] [debug line = 105:26]
  %12 = icmp ult i32 %11, 2073600, !dbg !150      ; [#uses=1 type=i1] [debug line = 105:26]
  br i1 %12, label %13, label %39, !dbg !150      ; [debug line = 105:26]

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 107:4]
  %15 = load i8** %1, align 4, !dbg !151          ; [#uses=1 type=i8*] [debug line = 107:4]
  %16 = getelementptr inbounds i8* %15, i32 %14, !dbg !151 ; [#uses=1 type=i8*] [debug line = 107:4]
  %17 = load i8* %16, align 1, !dbg !151          ; [#uses=1 type=i8] [debug line = 107:4]
  store i8 %17, i8* %val, align 1, !dbg !151      ; [debug line = 107:4]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !153), !dbg !155 ; [debug line = 108:22] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !156        ; [debug line = 108:27]
  br label %18, !dbg !156                         ; [debug line = 108:27]

; <label>:18                                      ; preds = %26, %13
  %19 = load i32* %j, align 4, !dbg !156          ; [#uses=1 type=i32] [debug line = 108:27]
  %20 = icmp ult i32 %19, 4, !dbg !156            ; [#uses=1 type=i1] [debug line = 108:27]
  br i1 %20, label %21, label %29, !dbg !156      ; [debug line = 108:27]

; <label>:21                                      ; preds = %18
  %22 = load i8* %val, align 1, !dbg !157         ; [#uses=1 type=i8] [debug line = 109:5]
  %23 = load i32* %j, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 109:5]
  %24 = bitcast %union.OneToFourPixels* %oneToFourPixels to [4 x i8]*, !dbg !157 ; [#uses=1 type=[4 x i8]*] [debug line = 109:5]
  %25 = getelementptr inbounds [4 x i8]* %24, i32 0, i32 %23, !dbg !157 ; [#uses=1 type=i8*] [debug line = 109:5]
  store i8 %22, i8* %25, align 1, !dbg !157       ; [debug line = 109:5]
  br label %26, !dbg !159                         ; [debug line = 110:5]

; <label>:26                                      ; preds = %21
  %27 = load i32* %j, align 4, !dbg !160          ; [#uses=1 type=i32] [debug line = 108:36]
  %28 = add i32 %27, 1, !dbg !160                 ; [#uses=1 type=i32] [debug line = 108:36]
  store i32 %28, i32* %j, align 4, !dbg !160      ; [debug line = 108:36]
  br label %18, !dbg !160                         ; [debug line = 108:36]

; <label>:29                                      ; preds = %18
  %30 = bitcast %union.OneToFourPixels* %oneToFourPixels to i32*, !dbg !161 ; [#uses=1 type=i32*] [debug line = 111:4]
  %31 = load i32* %30, align 4, !dbg !161         ; [#uses=1 type=i32] [debug line = 111:4]
  %32 = trunc i32 %31 to i8, !dbg !161            ; [#uses=1 type=i8] [debug line = 111:4]
  %33 = load i32* %i, align 4, !dbg !161          ; [#uses=1 type=i32] [debug line = 111:4]
  %34 = load i8** %image, align 4, !dbg !161      ; [#uses=1 type=i8*] [debug line = 111:4]
  %35 = getelementptr inbounds i8* %34, i32 %33, !dbg !161 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 %32, i8* %35, align 1, !dbg !161       ; [debug line = 111:4]
  br label %36, !dbg !162                         ; [debug line = 112:3]

; <label>:36                                      ; preds = %29
  %37 = load i32* %i, align 4, !dbg !163          ; [#uses=1 type=i32] [debug line = 105:47]
  %38 = add i32 %37, 1, !dbg !163                 ; [#uses=1 type=i32] [debug line = 105:47]
  store i32 %38, i32* %i, align 4, !dbg !163      ; [debug line = 105:47]
  br label %10, !dbg !163                         ; [debug line = 105:47]

; <label>:39                                      ; preds = %10
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !164), !dbg !166 ; [debug line = 115:21] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !167       ; [debug line = 115:26]
  br label %40, !dbg !167                         ; [debug line = 115:26]

; <label>:40                                      ; preds = %47, %39
  %41 = load i32* %i1, align 4, !dbg !167         ; [#uses=1 type=i32] [debug line = 115:26]
  %42 = icmp ult i32 %41, 1920, !dbg !167         ; [#uses=1 type=i1] [debug line = 115:26]
  br i1 %42, label %43, label %50, !dbg !167      ; [debug line = 115:26]

; <label>:43                                      ; preds = %40
  %44 = load i32* %i1, align 4, !dbg !168         ; [#uses=1 type=i32] [debug line = 116:4]
  %45 = load i8** %result, align 4, !dbg !168     ; [#uses=1 type=i8*] [debug line = 116:4]
  %46 = getelementptr inbounds i8* %45, i32 %44, !dbg !168 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %46, align 1, !dbg !168         ; [debug line = 116:4]
  br label %47, !dbg !168                         ; [debug line = 116:4]

; <label>:47                                      ; preds = %43
  %48 = load i32* %i1, align 4, !dbg !169         ; [#uses=1 type=i32] [debug line = 115:38]
  %49 = add i32 %48, 1, !dbg !169                 ; [#uses=1 type=i32] [debug line = 115:38]
  store i32 %49, i32* %i1, align 4, !dbg !169     ; [debug line = 115:38]
  br label %40, !dbg !169                         ; [debug line = 115:38]

; <label>:50                                      ; preds = %40
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !170), !dbg !172 ; [debug line = 117:21] [debug variable = i]
  store i32 2071680, i32* %i2, align 4, !dbg !173 ; [debug line = 117:45]
  br label %51, !dbg !173                         ; [debug line = 117:45]

; <label>:51                                      ; preds = %58, %50
  %52 = load i32* %i2, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 117:45]
  %53 = icmp ult i32 %52, 2073600, !dbg !173      ; [#uses=1 type=i1] [debug line = 117:45]
  br i1 %53, label %54, label %61, !dbg !173      ; [debug line = 117:45]

; <label>:54                                      ; preds = %51
  %55 = load i32* %i2, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 118:4]
  %56 = load i8** %result, align 4, !dbg !174     ; [#uses=1 type=i8*] [debug line = 118:4]
  %57 = getelementptr inbounds i8* %56, i32 %55, !dbg !174 ; [#uses=1 type=i8*] [debug line = 118:4]
  store i8 0, i8* %57, align 1, !dbg !174         ; [debug line = 118:4]
  br label %58, !dbg !174                         ; [debug line = 118:4]

; <label>:58                                      ; preds = %54
  %59 = load i32* %i2, align 4, !dbg !175         ; [#uses=1 type=i32] [debug line = 117:66]
  %60 = add i32 %59, 1, !dbg !175                 ; [#uses=1 type=i32] [debug line = 117:66]
  store i32 %60, i32* %i2, align 4, !dbg !175     ; [debug line = 117:66]
  br label %51, !dbg !175                         ; [debug line = 117:66]

; <label>:61                                      ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %i3}, metadata !176), !dbg !178 ; [debug line = 119:21] [debug variable = i]
  store i32 0, i32* %i3, align 4, !dbg !179       ; [debug line = 119:26]
  br label %62, !dbg !179                         ; [debug line = 119:26]

; <label>:62                                      ; preds = %69, %61
  %63 = load i32* %i3, align 4, !dbg !179         ; [#uses=1 type=i32] [debug line = 119:26]
  %64 = icmp ult i32 %63, 2073600, !dbg !179      ; [#uses=1 type=i1] [debug line = 119:26]
  br i1 %64, label %65, label %72, !dbg !179      ; [debug line = 119:26]

; <label>:65                                      ; preds = %62
  %66 = load i32* %i3, align 4, !dbg !180         ; [#uses=1 type=i32] [debug line = 120:4]
  %67 = load i8** %result, align 4, !dbg !180     ; [#uses=1 type=i8*] [debug line = 120:4]
  %68 = getelementptr inbounds i8* %67, i32 %66, !dbg !180 ; [#uses=1 type=i8*] [debug line = 120:4]
  store i8 0, i8* %68, align 1, !dbg !180         ; [debug line = 120:4]
  br label %69, !dbg !180                         ; [debug line = 120:4]

; <label>:69                                      ; preds = %65
  %70 = load i32* %i3, align 4, !dbg !181         ; [#uses=1 type=i32] [debug line = 119:47]
  %71 = add i32 %70, 1920, !dbg !181              ; [#uses=1 type=i32] [debug line = 119:47]
  store i32 %71, i32* %i3, align 4, !dbg !181     ; [debug line = 119:47]
  br label %62, !dbg !181                         ; [debug line = 119:47]

; <label>:72                                      ; preds = %62
  call void @llvm.dbg.declare(metadata !{i32* %i4}, metadata !182), !dbg !184 ; [debug line = 121:21] [debug variable = i]
  store i32 1919, i32* %i4, align 4, !dbg !185    ; [debug line = 121:33]
  br label %73, !dbg !185                         ; [debug line = 121:33]

; <label>:73                                      ; preds = %80, %72
  %74 = load i32* %i4, align 4, !dbg !185         ; [#uses=1 type=i32] [debug line = 121:33]
  %75 = icmp ult i32 %74, 2073600, !dbg !185      ; [#uses=1 type=i1] [debug line = 121:33]
  br i1 %75, label %76, label %83, !dbg !185      ; [debug line = 121:33]

; <label>:76                                      ; preds = %73
  %77 = load i32* %i4, align 4, !dbg !186         ; [#uses=1 type=i32] [debug line = 122:4]
  %78 = load i8** %result, align 4, !dbg !186     ; [#uses=1 type=i8*] [debug line = 122:4]
  %79 = getelementptr inbounds i8* %78, i32 %77, !dbg !186 ; [#uses=1 type=i8*] [debug line = 122:4]
  store i8 0, i8* %79, align 1, !dbg !186         ; [debug line = 122:4]
  br label %80, !dbg !186                         ; [debug line = 122:4]

; <label>:80                                      ; preds = %76
  %81 = load i32* %i4, align 4, !dbg !187         ; [#uses=1 type=i32] [debug line = 121:54]
  %82 = add i32 %81, 1920, !dbg !187              ; [#uses=1 type=i32] [debug line = 121:54]
  store i32 %82, i32* %i4, align 4, !dbg !187     ; [debug line = 121:54]
  br label %73, !dbg !187                         ; [debug line = 121:54]

; <label>:83                                      ; preds = %73
  call void @llvm.dbg.declare(metadata !{i32* %i5}, metadata !188), !dbg !190 ; [debug line = 125:21] [debug variable = i]
  store i32 1, i32* %i5, align 4, !dbg !191       ; [debug line = 125:26]
  br label %84, !dbg !191                         ; [debug line = 125:26]

; <label>:84                                      ; preds = %106, %83
  %85 = load i32* %i5, align 4, !dbg !191         ; [#uses=1 type=i32] [debug line = 125:26]
  %86 = icmp ult i32 %85, 1079, !dbg !191         ; [#uses=1 type=i1] [debug line = 125:26]
  br i1 %86, label %87, label %109, !dbg !191     ; [debug line = 125:26]

; <label>:87                                      ; preds = %84
  call void @llvm.dbg.declare(metadata !{i32* %j6}, metadata !192), !dbg !195 ; [debug line = 126:22] [debug variable = j]
  store i32 1, i32* %j6, align 4, !dbg !196       ; [debug line = 126:27]
  br label %88, !dbg !196                         ; [debug line = 126:27]

; <label>:88                                      ; preds = %102, %87
  %89 = load i32* %j6, align 4, !dbg !196         ; [#uses=1 type=i32] [debug line = 126:27]
  %90 = icmp ult i32 %89, 1919, !dbg !196         ; [#uses=1 type=i1] [debug line = 126:27]
  br i1 %90, label %91, label %105, !dbg !196     ; [debug line = 126:27]

; <label>:91                                      ; preds = %88
  call void @llvm.dbg.declare(metadata !{i32* %fullIndex}, metadata !197), !dbg !199 ; [debug line = 127:9] [debug variable = fullIndex]
  %92 = load i32* %i5, align 4, !dbg !200         ; [#uses=1 type=i32] [debug line = 127:33]
  %93 = mul i32 %92, 1920, !dbg !200              ; [#uses=1 type=i32] [debug line = 127:33]
  %94 = load i32* %j6, align 4, !dbg !200         ; [#uses=1 type=i32] [debug line = 127:33]
  %95 = add i32 %93, %94, !dbg !200               ; [#uses=1 type=i32] [debug line = 127:33]
  store i32 %95, i32* %fullIndex, align 4, !dbg !200 ; [debug line = 127:33]
  %96 = load i32* %fullIndex, align 4, !dbg !201  ; [#uses=1 type=i32] [debug line = 128:25]
  %97 = load i8** %image, align 4, !dbg !201      ; [#uses=1 type=i8*] [debug line = 128:25]
  %98 = call zeroext i8 @_Z14sobel_operatoriPh(i32 %96, i8* %97), !dbg !201 ; [#uses=1 type=i8] [debug line = 128:25]
  %99 = load i32* %fullIndex, align 4, !dbg !201  ; [#uses=1 type=i32] [debug line = 128:25]
  %100 = load i8** %result, align 4, !dbg !201    ; [#uses=1 type=i8*] [debug line = 128:25]
  %101 = getelementptr inbounds i8* %100, i32 %99, !dbg !201 ; [#uses=1 type=i8*] [debug line = 128:25]
  store i8 %98, i8* %101, align 1, !dbg !201      ; [debug line = 128:25]
  br label %102, !dbg !202                        ; [debug line = 129:4]

; <label>:102                                     ; preds = %91
  %103 = load i32* %j6, align 4, !dbg !203        ; [#uses=1 type=i32] [debug line = 126:43]
  %104 = add i32 %103, 1, !dbg !203               ; [#uses=1 type=i32] [debug line = 126:43]
  store i32 %104, i32* %j6, align 4, !dbg !203    ; [debug line = 126:43]
  br label %88, !dbg !203                         ; [debug line = 126:43]

; <label>:105                                     ; preds = %88
  br label %106, !dbg !204                        ; [debug line = 130:3]

; <label>:106                                     ; preds = %105
  %107 = load i32* %i5, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 125:42]
  %108 = add i32 %107, 1, !dbg !205               ; [#uses=1 type=i32] [debug line = 125:42]
  store i32 %108, i32* %i5, align 4, !dbg !205    ; [debug line = 125:42]
  br label %84, !dbg !205                         ; [debug line = 125:42]

; <label>:109                                     ; preds = %84
  call void @llvm.dbg.declare(metadata !{i32* %i7}, metadata !206), !dbg !208 ; [debug line = 133:21] [debug variable = i]
  store i32 0, i32* %i7, align 4, !dbg !209       ; [debug line = 133:26]
  br label %110, !dbg !209                        ; [debug line = 133:26]

; <label>:110                                     ; preds = %135, %109
  %111 = load i32* %i7, align 4, !dbg !209        ; [#uses=1 type=i32] [debug line = 133:26]
  %112 = icmp ult i32 %111, 518400, !dbg !209     ; [#uses=1 type=i1] [debug line = 133:26]
  br i1 %112, label %113, label %138, !dbg !209   ; [debug line = 133:26]

; <label>:113                                     ; preds = %110
  %114 = load i32* %i7, align 4, !dbg !210        ; [#uses=1 type=i32] [debug line = 134:4]
  %115 = load i8** %result, align 4, !dbg !210    ; [#uses=1 type=i8*] [debug line = 134:4]
  %116 = getelementptr inbounds i8* %115, i32 %114, !dbg !210 ; [#uses=1 type=i8*] [debug line = 134:4]
  %117 = load i8* %116, align 1, !dbg !210        ; [#uses=1 type=i8] [debug line = 134:4]
  store i8 %117, i8* %val, align 1, !dbg !210     ; [debug line = 134:4]
  call void @llvm.dbg.declare(metadata !{i32* %j8}, metadata !212), !dbg !214 ; [debug line = 135:22] [debug variable = j]
  store i32 0, i32* %j8, align 4, !dbg !215       ; [debug line = 135:27]
  br label %118, !dbg !215                        ; [debug line = 135:27]

; <label>:118                                     ; preds = %126, %113
  %119 = load i32* %j8, align 4, !dbg !215        ; [#uses=1 type=i32] [debug line = 135:27]
  %120 = icmp ult i32 %119, 4, !dbg !215          ; [#uses=1 type=i1] [debug line = 135:27]
  br i1 %120, label %121, label %129, !dbg !215   ; [debug line = 135:27]

; <label>:121                                     ; preds = %118
  %122 = load i8* %val, align 1, !dbg !216        ; [#uses=1 type=i8] [debug line = 136:5]
  %123 = load i32* %j8, align 4, !dbg !216        ; [#uses=1 type=i32] [debug line = 136:5]
  %124 = bitcast %union.OneToFourPixels* %oneToFourPixels to [4 x i8]*, !dbg !216 ; [#uses=1 type=[4 x i8]*] [debug line = 136:5]
  %125 = getelementptr inbounds [4 x i8]* %124, i32 0, i32 %123, !dbg !216 ; [#uses=1 type=i8*] [debug line = 136:5]
  store i8 %122, i8* %125, align 1, !dbg !216     ; [debug line = 136:5]
  br label %126, !dbg !218                        ; [debug line = 137:5]

; <label>:126                                     ; preds = %121
  %127 = load i32* %j8, align 4, !dbg !219        ; [#uses=1 type=i32] [debug line = 135:36]
  %128 = add i32 %127, 1, !dbg !219               ; [#uses=1 type=i32] [debug line = 135:36]
  store i32 %128, i32* %j8, align 4, !dbg !219    ; [debug line = 135:36]
  br label %118, !dbg !219                        ; [debug line = 135:36]

; <label>:129                                     ; preds = %118
  %130 = bitcast %union.OneToFourPixels* %oneToFourPixels to i32*, !dbg !220 ; [#uses=1 type=i32*] [debug line = 138:4]
  %131 = load i32* %130, align 4, !dbg !220       ; [#uses=1 type=i32] [debug line = 138:4]
  %132 = load i32* %i7, align 4, !dbg !220        ; [#uses=1 type=i32] [debug line = 138:4]
  %133 = load i32** %2, align 4, !dbg !220        ; [#uses=1 type=i32*] [debug line = 138:4]
  %134 = getelementptr inbounds i32* %133, i32 %132, !dbg !220 ; [#uses=1 type=i32*] [debug line = 138:4]
  store i32 %131, i32* %134, align 4, !dbg !220   ; [debug line = 138:4]
  br label %135, !dbg !221                        ; [debug line = 139:3]

; <label>:135                                     ; preds = %129
  %136 = load i32* %i7, align 4, !dbg !222        ; [#uses=1 type=i32] [debug line = 133:61]
  %137 = add i32 %136, 1, !dbg !222               ; [#uses=1 type=i32] [debug line = 133:61]
  store i32 %137, i32* %i7, align 4, !dbg !222    ; [debug line = 133:61]
  br label %110, !dbg !222                        ; [debug line = 133:61]

; <label>:138                                     ; preds = %110
  %139 = load i8** %image, align 4, !dbg !223     ; [#uses=1 type=i8*] [debug line = 141:3]
  call void @free(i8* %139), !dbg !223            ; [debug line = 141:3]
  %140 = load i8** %result, align 4, !dbg !224    ; [#uses=1 type=i8*] [debug line = 142:3]
  call void @free(i8* %140), !dbg !224            ; [debug line = 142:3]
  br label %7, !dbg !225                          ; [debug line = 143:2]
                                                  ; No predecessors!
  ret void, !dbg !226                             ; [debug line = 144:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare i8* @malloc(i32)

; [#uses=2]
declare void @free(i8*)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!42, !49, !54}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/TEMP/INF3610_H18_Lab4/INF3610_H18_Lab4/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 20, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i8*)* @_Z14sobel_operatoriPh, null, null, metadata !14, i32 21} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !13}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 74, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !14, i32 75} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiPh", metadata !6, i32 15, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i32, i32, i8*)* @_ZL6getValiiiPh, null, null, metadata !14, i32 16} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !12, metadata !12, metadata !12, metadata !13}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !32, metadata !33, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41}
!26 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 41, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4x_op} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 45, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @_ZZ14sobel_operatoriPhE4y_op} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"_amblksiz", metadata !"_amblksiz", metadata !"", metadata !34, i32 53, metadata !20, i32 0, i32 1, i32* @_amblksiz} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786473, metadata !"C:/Logiciels/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cmalloc.h", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !36, i32 157, metadata !12, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786473, metadata !"C:/Logiciels/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"_imp___osplatform", metadata !"_imp___osplatform", metadata !"", metadata !36, i32 248, metadata !19, i32 0, i32 1, i32** @_imp___osplatform} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"_imp___osver", metadata !"_imp___osver", metadata !"", metadata !36, i32 257, metadata !19, i32 0, i32 1, i32** @_imp___osver} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"_imp___winver", metadata !"_imp___winver", metadata !"", metadata !36, i32 266, metadata !19, i32 0, i32 1, i32** @_imp___winver} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"_imp___winmajor", metadata !"_imp___winmajor", metadata !"", metadata !36, i32 275, metadata !19, i32 0, i32 1, i32** @_imp___winmajor} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"_imp___winminor", metadata !"_imp___winminor", metadata !"", metadata !36, i32 284, metadata !19, i32 0, i32 1, i32** @_imp___winminor} ; [ DW_TAG_variable ]
!42 = metadata !{i8 (i32, i8*)* @_Z14sobel_operatoriPh, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!44 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!48 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!49 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !50, metadata !44, metadata !51, metadata !52, metadata !53, metadata !48}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!52 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!54 = metadata !{i8 (i32, i32, i32, i8*)* @_ZL6getValiiiPh, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !48}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!56 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!58 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"Y"}
!60 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777236, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 20, i32 34, metadata !5, null}
!62 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554452, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 20, i32 55, metadata !5, null}
!64 = metadata !{i32 22, i32 1, metadata !65, null}
!65 = metadata !{i32 786443, metadata !5, i32 21, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786688, metadata !65, metadata !"x_weight", metadata !6, i32 35, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 35, i32 6, metadata !65, null}
!68 = metadata !{i32 35, i32 18, metadata !65, null}
!69 = metadata !{i32 786688, metadata !65, metadata !"y_weight", metadata !6, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 36, i32 6, metadata !65, null}
!71 = metadata !{i32 36, i32 18, metadata !65, null}
!72 = metadata !{i32 786688, metadata !65, metadata !"edge_weight", metadata !6, i32 38, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 38, i32 11, metadata !65, null}
!74 = metadata !{i32 786688, metadata !65, metadata !"edge_val", metadata !6, i32 39, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 39, i32 10, metadata !65, null}
!76 = metadata !{i32 44, i32 1, metadata !65, null}
!77 = metadata !{i32 48, i32 1, metadata !65, null}
!78 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !6, i32 50, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786443, metadata !65, i32 50, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 50, i32 11, metadata !79, null}
!81 = metadata !{i32 50, i32 16, metadata !79, null}
!82 = metadata !{i32 786688, metadata !83, metadata !"j", metadata !6, i32 51, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 786443, metadata !84, i32 51, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !79, i32 50, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 51, i32 12, metadata !83, null}
!86 = metadata !{i32 51, i32 17, metadata !83, null}
!87 = metadata !{i32 53, i32 3, metadata !88, null}
!88 = metadata !{i32 786443, metadata !83, i32 51, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 53, i32 26, metadata !88, null}
!90 = metadata !{i32 56, i32 3, metadata !88, null}
!91 = metadata !{i32 56, i32 26, metadata !88, null}
!92 = metadata !{i32 57, i32 3, metadata !88, null}
!93 = metadata !{i32 51, i32 26, metadata !83, null}
!94 = metadata !{i32 58, i32 2, metadata !84, null}
!95 = metadata !{i32 50, i32 25, metadata !79, null}
!96 = metadata !{i32 60, i32 2, metadata !65, null}
!97 = metadata !{i32 62, i32 2, metadata !65, null}
!98 = metadata !{i32 65, i32 2, metadata !65, null}
!99 = metadata !{i32 66, i32 3, metadata !65, null}
!100 = metadata !{i32 67, i32 7, metadata !65, null}
!101 = metadata !{i32 68, i32 3, metadata !65, null}
!102 = metadata !{i32 70, i32 2, metadata !65, null}
!103 = metadata !{i32 786689, metadata !21, metadata !"index", metadata !6, i32 16777231, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 15, i32 34, metadata !21, null}
!105 = metadata !{i32 786689, metadata !21, metadata !"xDiff", metadata !6, i32 33554447, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 15, i32 45, metadata !21, null}
!107 = metadata !{i32 786689, metadata !21, metadata !"yDiff", metadata !6, i32 50331663, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 15, i32 56, metadata !21, null}
!109 = metadata !{i32 786689, metadata !21, metadata !"Y", metadata !6, i32 67108879, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 15, i32 73, metadata !21, null}
!111 = metadata !{i32 17, i32 2, metadata !112, null}
!112 = metadata !{i32 786443, metadata !21, i32 16, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777290, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 74, i32 27, metadata !16, null}
!115 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554506, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 74, i32 60, metadata !16, null}
!117 = metadata !{i32 75, i32 2, metadata !118, null}
!118 = metadata !{i32 786443, metadata !16, i32 75, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 75, i32 46, metadata !118, null}
!120 = metadata !{i32 92, i32 1, metadata !118, null}
!121 = metadata !{i32 93, i32 1, metadata !118, null}
!122 = metadata !{i32 94, i32 1, metadata !118, null}
!123 = metadata !{i32 786688, metadata !118, metadata !"oneToFourPixels", metadata !6, i32 95, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ]
!125 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 9, i64 32, i64 32, i64 0, i32 0, null, metadata !126, i32 0, null} ; [ DW_TAG_union_type ]
!126 = metadata !{metadata !127, metadata !131, metadata !132}
!127 = metadata !{i32 786445, metadata !125, metadata !"pix", metadata !6, i32 10, i64 32, i64 8, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ]
!128 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!131 = metadata !{i32 786445, metadata !125, metadata !"full", metadata !6, i32 11, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!132 = metadata !{i32 786478, i32 0, metadata !125, metadata !"", metadata !"", metadata !"", metadata !6, i32 9, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 9} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{null, metadata !135}
!135 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !125} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 95, i32 18, metadata !118, null}
!137 = metadata !{i32 786688, metadata !118, metadata !"val", metadata !6, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 96, i32 10, metadata !118, null}
!139 = metadata !{i32 98, i32 2, metadata !118, null}
!140 = metadata !{i32 786688, metadata !141, metadata !"image", metadata !6, i32 102, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 786443, metadata !118, i32 98, i32 15, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 102, i32 13, metadata !141, null}
!143 = metadata !{i32 102, i32 33, metadata !141, null}
!144 = metadata !{i32 786688, metadata !141, metadata !"result", metadata !6, i32 103, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 103, i32 13, metadata !141, null}
!146 = metadata !{i32 103, i32 34, metadata !141, null}
!147 = metadata !{i32 786688, metadata !148, metadata !"i", metadata !6, i32 105, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 786443, metadata !141, i32 105, i32 3, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 105, i32 21, metadata !148, null}
!150 = metadata !{i32 105, i32 26, metadata !148, null}
!151 = metadata !{i32 107, i32 4, metadata !152, null}
!152 = metadata !{i32 786443, metadata !148, i32 105, i32 52, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 786688, metadata !154, metadata !"j", metadata !6, i32 108, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 786443, metadata !152, i32 108, i32 4, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 108, i32 22, metadata !154, null}
!156 = metadata !{i32 108, i32 27, metadata !154, null}
!157 = metadata !{i32 109, i32 5, metadata !158, null}
!158 = metadata !{i32 786443, metadata !154, i32 108, i32 41, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 110, i32 5, metadata !158, null}
!160 = metadata !{i32 108, i32 36, metadata !154, null}
!161 = metadata !{i32 111, i32 4, metadata !152, null}
!162 = metadata !{i32 112, i32 3, metadata !152, null}
!163 = metadata !{i32 105, i32 47, metadata !148, null}
!164 = metadata !{i32 786688, metadata !165, metadata !"i", metadata !6, i32 115, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 786443, metadata !141, i32 115, i32 3, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 115, i32 21, metadata !165, null}
!167 = metadata !{i32 115, i32 26, metadata !165, null}
!168 = metadata !{i32 116, i32 4, metadata !165, null}
!169 = metadata !{i32 115, i32 38, metadata !165, null}
!170 = metadata !{i32 786688, metadata !171, metadata !"i", metadata !6, i32 117, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786443, metadata !141, i32 117, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 117, i32 21, metadata !171, null}
!173 = metadata !{i32 117, i32 45, metadata !171, null}
!174 = metadata !{i32 118, i32 4, metadata !171, null}
!175 = metadata !{i32 117, i32 66, metadata !171, null}
!176 = metadata !{i32 786688, metadata !177, metadata !"i", metadata !6, i32 119, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 786443, metadata !141, i32 119, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 119, i32 21, metadata !177, null}
!179 = metadata !{i32 119, i32 26, metadata !177, null}
!180 = metadata !{i32 120, i32 4, metadata !177, null}
!181 = metadata !{i32 119, i32 47, metadata !177, null}
!182 = metadata !{i32 786688, metadata !183, metadata !"i", metadata !6, i32 121, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 786443, metadata !141, i32 121, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 121, i32 21, metadata !183, null}
!185 = metadata !{i32 121, i32 33, metadata !183, null}
!186 = metadata !{i32 122, i32 4, metadata !183, null}
!187 = metadata !{i32 121, i32 54, metadata !183, null}
!188 = metadata !{i32 786688, metadata !189, metadata !"i", metadata !6, i32 125, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 786443, metadata !141, i32 125, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 125, i32 21, metadata !189, null}
!191 = metadata !{i32 125, i32 26, metadata !189, null}
!192 = metadata !{i32 786688, metadata !193, metadata !"j", metadata !6, i32 126, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 786443, metadata !194, i32 126, i32 4, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 786443, metadata !189, i32 125, i32 47, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 126, i32 22, metadata !193, null}
!196 = metadata !{i32 126, i32 27, metadata !193, null}
!197 = metadata !{i32 786688, metadata !198, metadata !"fullIndex", metadata !6, i32 127, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 786443, metadata !193, i32 126, i32 48, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 127, i32 9, metadata !198, null}
!200 = metadata !{i32 127, i32 33, metadata !198, null}
!201 = metadata !{i32 128, i32 25, metadata !198, null}
!202 = metadata !{i32 129, i32 4, metadata !198, null}
!203 = metadata !{i32 126, i32 43, metadata !193, null}
!204 = metadata !{i32 130, i32 3, metadata !194, null}
!205 = metadata !{i32 125, i32 42, metadata !189, null}
!206 = metadata !{i32 786688, metadata !207, metadata !"i", metadata !6, i32 133, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 786443, metadata !141, i32 133, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 133, i32 21, metadata !207, null}
!209 = metadata !{i32 133, i32 26, metadata !207, null}
!210 = metadata !{i32 134, i32 4, metadata !211, null}
!211 = metadata !{i32 786443, metadata !207, i32 133, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 786688, metadata !213, metadata !"j", metadata !6, i32 135, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 786443, metadata !211, i32 135, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 135, i32 22, metadata !213, null}
!215 = metadata !{i32 135, i32 27, metadata !213, null}
!216 = metadata !{i32 136, i32 5, metadata !217, null}
!217 = metadata !{i32 786443, metadata !213, i32 135, i32 41, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 137, i32 5, metadata !217, null}
!219 = metadata !{i32 135, i32 36, metadata !213, null}
!220 = metadata !{i32 138, i32 4, metadata !211, null}
!221 = metadata !{i32 139, i32 3, metadata !211, null}
!222 = metadata !{i32 133, i32 61, metadata !207, null}
!223 = metadata !{i32 141, i32 3, metadata !141, null}
!224 = metadata !{i32 142, i32 3, metadata !141, null}
!225 = metadata !{i32 143, i32 2, metadata !141, null}
!226 = metadata !{i32 144, i32 1, metadata !118, null}
