; ModuleID = 'C:/TEMP/INF3610_H18_Lab4/INF3610_H18_Lab4/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%union.OneToFourPixels.0 = type { i32 }

@y_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\01\02\01", [3 x i8] zeroinitializer, [3 x i8] c"\FF\FE\FF"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@x_op = internal unnamed_addr constant [3 x [3 x i8]] [[3 x i8] c"\FF\00\01", [3 x i8] c"\FE\00\02", [3 x i8] c"\FF\00\01"], align 1 ; [#uses=1 type=[3 x [3 x i8]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) noreturn nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %oneToFourPixels = alloca %union.OneToFourPixels.0, align 4 ; [#uses=2 type=%union.OneToFourPixels.0*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !60), !dbg !61 ; [debug line = 74:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !62), !dbg !63 ; [debug line = 74:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !64 ; [debug line = 75:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !66 ; [debug line = 75:46]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inter_pix, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !67 ; [debug line = 92:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pix, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 93:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !69 ; [debug line = 94:1]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels.0* %oneToFourPixels}, metadata !70), !dbg !83 ; [debug line = 95:18] [debug variable = oneToFourPixels]
  %tmp = bitcast %union.OneToFourPixels.0* %oneToFourPixels to [4 x i8]*, !dbg !84 ; [#uses=2 type=[4 x i8]*] [debug line = 109:5]
  %oneToFourPixels.addr = getelementptr inbounds %union.OneToFourPixels.0* %oneToFourPixels, i32 0, i32 0, !dbg !90 ; [#uses=2 type=i32*] [debug line = 111:4]
  br label %1, !dbg !91                           ; [debug line = 98:2]

; <label>:1                                       ; preds = %22, %0
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind ; [#uses=0 type=i32]
  %image = call i8* @malloc(i32 2073600), !dbg !92 ; [#uses=4 type=i8*] [debug line = 102:33]
  call void @llvm.dbg.value(metadata !{i8* %image}, i64 0, metadata !93), !dbg !92 ; [debug line = 102:33] [debug variable = image]
  %result = call i8* @malloc(i32 2073600), !dbg !94 ; [#uses=7 type=i8*] [debug line = 103:34]
  call void @llvm.dbg.value(metadata !{i8* %result}, i64 0, metadata !95), !dbg !94 ; [debug line = 103:34] [debug variable = result]
  br label %2, !dbg !96                           ; [debug line = 105:26]

; <label>:2                                       ; preds = %6, %1
  %i = phi i32 [ 0, %1 ], [ %i.2, %6 ]            ; [#uses=4 type=i32]
  %tmp.1 = icmp eq i32 %i, 2073600, !dbg !96      ; [#uses=1 type=i1] [debug line = 105:26]
  br i1 %tmp.1, label %.preheader8.preheader, label %3, !dbg !96 ; [debug line = 105:26]

.preheader8.preheader:                            ; preds = %2
  br label %.preheader8, !dbg !97                 ; [debug line = 115:26]

; <label>:3                                       ; preds = %2
  %inter_pix.addr = getelementptr inbounds i8* %inter_pix, i32 %i, !dbg !99 ; [#uses=1 type=i8*] [debug line = 107:4]
  %val = load i8* %inter_pix.addr, align 1, !dbg !99 ; [#uses=2 type=i8] [debug line = 107:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %val) nounwind
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !100), !dbg !99 ; [debug line = 107:4] [debug variable = val]
  br label %4, !dbg !101                          ; [debug line = 108:27]

; <label>:4                                       ; preds = %5, %3
  %j = phi i32 [ 0, %3 ], [ %j.1, %5 ]            ; [#uses=3 type=i32]
  %tmp.3 = icmp eq i32 %j, 4, !dbg !101           ; [#uses=1 type=i1] [debug line = 108:27]
  br i1 %tmp.3, label %6, label %5, !dbg !101     ; [debug line = 108:27]

; <label>:5                                       ; preds = %4
  %tmp.addr = getelementptr inbounds [4 x i8]* %tmp, i32 0, i32 %j, !dbg !84 ; [#uses=1 type=i8*] [debug line = 109:5]
  store i8 %val, i8* %tmp.addr, align 1, !dbg !84 ; [debug line = 109:5]
  %j.1 = add i32 %j, 1, !dbg !102                 ; [#uses=1 type=i32] [debug line = 108:36]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !103), !dbg !102 ; [debug line = 108:36] [debug variable = j]
  br label %4, !dbg !102                          ; [debug line = 108:36]

; <label>:6                                       ; preds = %4
  %oneToFourPixels.load = load i32* %oneToFourPixels.addr, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 111:4]
  %tmp.5 = trunc i32 %oneToFourPixels.load to i8, !dbg !90 ; [#uses=1 type=i8] [debug line = 111:4]
  %image.addr = getelementptr inbounds i8* %image, i32 %i, !dbg !90 ; [#uses=1 type=i8*] [debug line = 111:4]
  store i8 %tmp.5, i8* %image.addr, align 1, !dbg !90 ; [debug line = 111:4]
  %i.2 = add i32 %i, 1, !dbg !104                 ; [#uses=1 type=i32] [debug line = 105:47]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !105), !dbg !104 ; [debug line = 105:47] [debug variable = i]
  br label %2, !dbg !104                          ; [debug line = 105:47]

.preheader8:                                      ; preds = %7, %.preheader8.preheader
  %i1 = phi i32 [ %i.1, %7 ], [ 0, %.preheader8.preheader ] ; [#uses=3 type=i32]
  %tmp.2 = icmp eq i32 %i1, 1920, !dbg !97        ; [#uses=1 type=i1] [debug line = 115:26]
  br i1 %tmp.2, label %.preheader7.preheader, label %7, !dbg !97 ; [debug line = 115:26]

.preheader7.preheader:                            ; preds = %.preheader8
  br label %.preheader7, !dbg !106                ; [debug line = 117:45]

; <label>:7                                       ; preds = %.preheader8
  %result.addr = getelementptr inbounds i8* %result, i32 %i1, !dbg !108 ; [#uses=1 type=i8*] [debug line = 116:4]
  store i8 0, i8* %result.addr, align 1, !dbg !108 ; [debug line = 116:4]
  %i.1 = add i32 %i1, 1, !dbg !109                ; [#uses=1 type=i32] [debug line = 115:38]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !110), !dbg !109 ; [debug line = 115:38] [debug variable = i]
  br label %.preheader8, !dbg !109                ; [debug line = 115:38]

.preheader7:                                      ; preds = %8, %.preheader7.preheader
  %i2 = phi i32 [ %i.3, %8 ], [ 2071680, %.preheader7.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i2, 2073600, !dbg !106 ; [#uses=1 type=i1] [debug line = 117:45]
  br i1 %exitcond2, label %.preheader6.preheader, label %8, !dbg !106 ; [debug line = 117:45]

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6, !dbg !111                ; [debug line = 119:26]

; <label>:8                                       ; preds = %.preheader7
  %result.addr.1 = getelementptr inbounds i8* %result, i32 %i2, !dbg !113 ; [#uses=1 type=i8*] [debug line = 118:4]
  store i8 0, i8* %result.addr.1, align 1, !dbg !113 ; [debug line = 118:4]
  %i.3 = add i32 %i2, 1, !dbg !114                ; [#uses=1 type=i32] [debug line = 117:66]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !115), !dbg !114 ; [debug line = 117:66] [debug variable = i]
  br label %.preheader7, !dbg !114                ; [debug line = 117:66]

.preheader6:                                      ; preds = %9, %.preheader6.preheader
  %i3 = phi i32 [ %i.4, %9 ], [ 0, %.preheader6.preheader ] ; [#uses=3 type=i32]
  %tmp.9 = icmp ult i32 %i3, 2073600, !dbg !111   ; [#uses=1 type=i1] [debug line = 119:26]
  br i1 %tmp.9, label %9, label %.preheader5.preheader, !dbg !111 ; [debug line = 119:26]

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5, !dbg !116                ; [debug line = 121:33]

; <label>:9                                       ; preds = %.preheader6
  %result.addr.2 = getelementptr inbounds i8* %result, i32 %i3, !dbg !118 ; [#uses=1 type=i8*] [debug line = 120:4]
  store i8 0, i8* %result.addr.2, align 1, !dbg !118 ; [debug line = 120:4]
  %i.4 = add i32 %i3, 1920, !dbg !119             ; [#uses=1 type=i32] [debug line = 119:47]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !120), !dbg !119 ; [debug line = 119:47] [debug variable = i]
  br label %.preheader6, !dbg !119                ; [debug line = 119:47]

.preheader5:                                      ; preds = %10, %.preheader5.preheader
  %i4 = phi i32 [ %i.5, %10 ], [ 1919, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %tmp.11 = icmp ult i32 %i4, 2073600, !dbg !116  ; [#uses=1 type=i1] [debug line = 121:33]
  br i1 %tmp.11, label %10, label %.preheader4.preheader, !dbg !116 ; [debug line = 121:33]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !121                ; [debug line = 125:26]

; <label>:10                                      ; preds = %.preheader5
  %result.addr.3 = getelementptr inbounds i8* %result, i32 %i4, !dbg !123 ; [#uses=1 type=i8*] [debug line = 122:4]
  store i8 0, i8* %result.addr.3, align 1, !dbg !123 ; [debug line = 122:4]
  %i.5 = add i32 %i4, 1920, !dbg !124             ; [#uses=1 type=i32] [debug line = 121:54]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !125), !dbg !124 ; [debug line = 121:54] [debug variable = i]
  br label %.preheader5, !dbg !124                ; [debug line = 121:54]

.preheader4:                                      ; preds = %17, %.preheader4.preheader
  %i5 = phi i32 [ %i.6, %17 ], [ 1, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i5, 1079, !dbg !121   ; [#uses=1 type=i1] [debug line = 125:26]
  br i1 %exitcond1, label %.preheader.preheader, label %.preheader3.preheader, !dbg !121 ; [debug line = 125:26]

.preheader.preheader:                             ; preds = %.preheader4
  br label %.preheader, !dbg !126                 ; [debug line = 133:26]

.preheader3.preheader:                            ; preds = %.preheader4
  %tmp.13 = mul i32 %i5, 1920, !dbg !128          ; [#uses=1 type=i32] [debug line = 127:33]
  br label %.preheader3, !dbg !132                ; [debug line = 126:27]

.preheader3:                                      ; preds = %sobel_operator.exit, %.preheader3.preheader
  %j6 = phi i32 [ %j.3, %sobel_operator.exit ], [ 1, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j6, 1919, !dbg !132    ; [#uses=1 type=i1] [debug line = 126:27]
  br i1 %exitcond, label %17, label %11, !dbg !132 ; [debug line = 126:27]

; <label>:11                                      ; preds = %.preheader3
  %fullIndex = add i32 %j6, %tmp.13, !dbg !128    ; [#uses=3 type=i32] [debug line = 127:33]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !133), !dbg !128 ; [debug line = 127:33] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i32 %fullIndex}, i64 0, metadata !134) nounwind, !dbg !136 ; [debug line = 20:34@128:25] [debug variable = fullIndex]
  call void @llvm.dbg.value(metadata !{i8* %image}, i64 0, metadata !137) nounwind, !dbg !138 ; [debug line = 20:55@128:25] [debug variable = image]
  br label %12, !dbg !139                         ; [debug line = 50:16@128:25]

; <label>:12                                      ; preds = %14, %11
  %y_weight.0.i = phi i32 [ 0, %11 ], [ %y_weight.1.i.lcssa, %14 ] ; [#uses=2 type=i32]
  %x_weight.0.i = phi i32 [ 0, %11 ], [ %x_weight.1.i.lcssa, %14 ] ; [#uses=2 type=i32]
  %i.0.i = phi i32 [ 0, %11 ], [ %i.8, %14 ]      ; [#uses=5 type=i32]
  %exitcond1.i = icmp eq i32 %i.0.i, 3, !dbg !139 ; [#uses=1 type=i1] [debug line = 50:16@128:25]
  br i1 %exitcond1.i, label %15, label %.preheader.preheader.i, !dbg !139 ; [debug line = 50:16@128:25]

.preheader.preheader.i:                           ; preds = %12
  %tmp.28 = add nsw i32 %i.0.i, -1, !dbg !142     ; [#uses=2 type=i32] [debug line = 53:26@128:25]
  br label %.preheader.i, !dbg !146               ; [debug line = 51:17@128:25]

.preheader.i:                                     ; preds = %13, %.preheader.preheader.i
  %y_weight.1.i = phi i32 [ %y_weight, %13 ], [ %y_weight.0.i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %x_weight.1.i = phi i32 [ %x_weight, %13 ], [ %x_weight.0.i, %.preheader.preheader.i ] ; [#uses=2 type=i32]
  %j.0.i = phi i32 [ %j.4, %13 ], [ 0, %.preheader.preheader.i ] ; [#uses=5 type=i32]
  %exitcond.i = icmp eq i32 %j.0.i, 3, !dbg !146  ; [#uses=1 type=i1] [debug line = 51:17@128:25]
  br i1 %exitcond.i, label %14, label %13, !dbg !146 ; [debug line = 51:17@128:25]

; <label>:13                                      ; preds = %.preheader.i
  %tmp.32 = add nsw i32 %j.0.i, -1, !dbg !142     ; [#uses=2 type=i32] [debug line = 53:26@128:25]
  %tmp.33 = call fastcc zeroext i8 @getVal(i32 %fullIndex, i32 %tmp.28, i32 %tmp.32, i8* %image) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 53:26@128:25]
  %tmp.34 = zext i8 %tmp.33 to i32, !dbg !142     ; [#uses=1 type=i32] [debug line = 53:26@128:25]
  %x_op.addr = getelementptr inbounds [3 x [3 x i8]]* @x_op, i32 0, i32 %i.0.i, i32 %j.0.i, !dbg !142 ; [#uses=1 type=i8*] [debug line = 53:26@128:25]
  %x_op.load = load i8* %x_op.addr, align 1, !dbg !142 ; [#uses=2 type=i8] [debug line = 53:26@128:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %x_op.load) nounwind
  %tmp.35 = sext i8 %x_op.load to i32, !dbg !142  ; [#uses=1 type=i32] [debug line = 53:26@128:25]
  %tmp.36 = mul nsw i32 %tmp.35, %tmp.34, !dbg !142 ; [#uses=1 type=i32] [debug line = 53:26@128:25]
  %x_weight = add nsw i32 %tmp.36, %x_weight.1.i, !dbg !142 ; [#uses=1 type=i32] [debug line = 53:26@128:25]
  call void @llvm.dbg.value(metadata !{i32 %x_weight}, i64 0, metadata !147) nounwind, !dbg !142 ; [debug line = 53:26@128:25] [debug variable = x_weight]
  %tmp.38 = call fastcc zeroext i8 @getVal(i32 %fullIndex, i32 %tmp.28, i32 %tmp.32, i8* %image) nounwind, !dbg !148 ; [#uses=1 type=i8] [debug line = 56:26@128:25]
  %tmp.39 = zext i8 %tmp.38 to i32, !dbg !148     ; [#uses=1 type=i32] [debug line = 56:26@128:25]
  %y_op.addr = getelementptr inbounds [3 x [3 x i8]]* @y_op, i32 0, i32 %i.0.i, i32 %j.0.i, !dbg !148 ; [#uses=1 type=i8*] [debug line = 56:26@128:25]
  %y_op.load = load i8* %y_op.addr, align 1, !dbg !148 ; [#uses=2 type=i8] [debug line = 56:26@128:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y_op.load) nounwind
  %tmp.40 = sext i8 %y_op.load to i32, !dbg !148  ; [#uses=1 type=i32] [debug line = 56:26@128:25]
  %tmp.41 = mul nsw i32 %tmp.40, %tmp.39, !dbg !148 ; [#uses=1 type=i32] [debug line = 56:26@128:25]
  %y_weight = add nsw i32 %tmp.41, %y_weight.1.i, !dbg !148 ; [#uses=1 type=i32] [debug line = 56:26@128:25]
  call void @llvm.dbg.value(metadata !{i32 %y_weight}, i64 0, metadata !149) nounwind, !dbg !148 ; [debug line = 56:26@128:25] [debug variable = y_weight]
  %j.4 = add nsw i32 %j.0.i, 1, !dbg !150         ; [#uses=1 type=i32] [debug line = 51:26@128:25]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !151) nounwind, !dbg !150 ; [debug line = 51:26@128:25] [debug variable = j]
  br label %.preheader.i, !dbg !150               ; [debug line = 51:26@128:25]

; <label>:14                                      ; preds = %.preheader.i
  %x_weight.1.i.lcssa = phi i32 [ %x_weight.1.i, %.preheader.i ] ; [#uses=1 type=i32]
  %y_weight.1.i.lcssa = phi i32 [ %y_weight.1.i, %.preheader.i ] ; [#uses=1 type=i32]
  %i.8 = add nsw i32 %i.0.i, 1, !dbg !152         ; [#uses=1 type=i32] [debug line = 50:25@128:25]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !153) nounwind, !dbg !152 ; [debug line = 50:25@128:25] [debug variable = i]
  br label %12, !dbg !152                         ; [debug line = 50:25@128:25]

; <label>:15                                      ; preds = %12
  %x_weight.0.i.lcssa = phi i32 [ %x_weight.0.i, %12 ] ; [#uses=3 type=i32]
  %y_weight.0.i.lcssa = phi i32 [ %y_weight.0.i, %12 ] ; [#uses=3 type=i32]
  %tmp.19 = icmp sgt i32 %x_weight.0.i.lcssa, 0, !dbg !154 ; [#uses=1 type=i1] [debug line = 60:2@128:25]
  %tmp.20 = sub nsw i32 0, %x_weight.0.i.lcssa, !dbg !154 ; [#uses=1 type=i32] [debug line = 60:2@128:25]
  %tmp.21 = select i1 %tmp.19, i32 %x_weight.0.i.lcssa, i32 %tmp.20, !dbg !154 ; [#uses=1 type=i32] [debug line = 60:2@128:25]
  %tmp.22 = icmp sgt i32 %y_weight.0.i.lcssa, 0, !dbg !154 ; [#uses=1 type=i1] [debug line = 60:2@128:25]
  %tmp.23 = sub nsw i32 0, %y_weight.0.i.lcssa, !dbg !154 ; [#uses=1 type=i32] [debug line = 60:2@128:25]
  %tmp.24 = select i1 %tmp.22, i32 %y_weight.0.i.lcssa, i32 %tmp.23, !dbg !154 ; [#uses=1 type=i32] [debug line = 60:2@128:25]
  %edge_weight = add nsw i32 %tmp.24, %tmp.21, !dbg !154 ; [#uses=1 type=i32] [debug line = 60:2@128:25]
  call void @llvm.dbg.value(metadata !{i32 %edge_weight}, i64 0, metadata !155) nounwind, !dbg !154 ; [debug line = 60:2@128:25] [debug variable = edge_weight]
  %tmp.25 = trunc i32 %edge_weight to i8, !dbg !156 ; [#uses=3 type=i8] [debug line = 62:2@128:25]
  %edge_val = xor i8 %tmp.25, -1, !dbg !156       ; [#uses=1 type=i8] [debug line = 62:2@128:25]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !157) nounwind, !dbg !156 ; [debug line = 62:2@128:25] [debug variable = edge_val]
  %tmp.27 = icmp ult i8 %tmp.25, 55, !dbg !158    ; [#uses=1 type=i1] [debug line = 65:2@128:25]
  br i1 %tmp.27, label %sobel_operator.exit, label %16, !dbg !158 ; [debug line = 65:2@128:25]

; <label>:16                                      ; preds = %15
  %tmp.29 = icmp ugt i8 %tmp.25, -101, !dbg !159  ; [#uses=1 type=i1] [debug line = 67:7@128:25]
  %..i = select i1 %tmp.29, i8 0, i8 %edge_val, !dbg !159 ; [#uses=1 type=i8] [debug line = 67:7@128:25]
  br label %sobel_operator.exit

sobel_operator.exit:                              ; preds = %16, %15
  %edge_val.1.i = phi i8 [ %..i, %16 ], [ -1, %15 ] ; [#uses=1 type=i8]
  %result.addr.5 = getelementptr inbounds i8* %result, i32 %fullIndex, !dbg !135 ; [#uses=1 type=i8*] [debug line = 128:25]
  store i8 %edge_val.1.i, i8* %result.addr.5, align 1, !dbg !135 ; [debug line = 128:25]
  %j.3 = add i32 %j6, 1, !dbg !160                ; [#uses=1 type=i32] [debug line = 126:43]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !161), !dbg !160 ; [debug line = 126:43] [debug variable = j]
  br label %.preheader3, !dbg !160                ; [debug line = 126:43]

; <label>:17                                      ; preds = %.preheader3
  %i.6 = add i32 %i5, 1, !dbg !162                ; [#uses=1 type=i32] [debug line = 125:42]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !163), !dbg !162 ; [debug line = 125:42] [debug variable = i]
  br label %.preheader4, !dbg !162                ; [debug line = 125:42]

.preheader:                                       ; preds = %21, %.preheader.preheader
  %i7 = phi i32 [ %i.7, %21 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %tmp.14 = icmp eq i32 %i7, 518400, !dbg !126    ; [#uses=1 type=i1] [debug line = 133:26]
  br i1 %tmp.14, label %22, label %18, !dbg !126  ; [debug line = 133:26]

; <label>:18                                      ; preds = %.preheader
  %result.addr.4 = getelementptr inbounds i8* %result, i32 %i7, !dbg !164 ; [#uses=1 type=i8*] [debug line = 134:4]
  %val.1 = load i8* %result.addr.4, align 1, !dbg !164 ; [#uses=2 type=i8] [debug line = 134:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %val.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %val.1}, i64 0, metadata !100), !dbg !164 ; [debug line = 134:4] [debug variable = val]
  br label %19, !dbg !166                         ; [debug line = 135:27]

; <label>:19                                      ; preds = %20, %18
  %j8 = phi i32 [ 0, %18 ], [ %j.2, %20 ]         ; [#uses=3 type=i32]
  %tmp.16 = icmp eq i32 %j8, 4, !dbg !166         ; [#uses=1 type=i1] [debug line = 135:27]
  br i1 %tmp.16, label %21, label %20, !dbg !166  ; [debug line = 135:27]

; <label>:20                                      ; preds = %19
  %tmp.addr.1 = getelementptr inbounds [4 x i8]* %tmp, i32 0, i32 %j8, !dbg !168 ; [#uses=1 type=i8*] [debug line = 136:5]
  store i8 %val.1, i8* %tmp.addr.1, align 1, !dbg !168 ; [debug line = 136:5]
  %j.2 = add i32 %j8, 1, !dbg !170                ; [#uses=1 type=i32] [debug line = 135:36]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !171), !dbg !170 ; [debug line = 135:36] [debug variable = j]
  br label %19, !dbg !170                         ; [debug line = 135:36]

; <label>:21                                      ; preds = %19
  %oneToFourPixels.load.1 = load i32* %oneToFourPixels.addr, align 4, !dbg !172 ; [#uses=1 type=i32] [debug line = 138:4]
  %out_pix.addr = getelementptr inbounds i32* %out_pix, i32 %i7, !dbg !172 ; [#uses=1 type=i32*] [debug line = 138:4]
  store i32 %oneToFourPixels.load.1, i32* %out_pix.addr, align 4, !dbg !172 ; [debug line = 138:4]
  %i.7 = add i32 %i7, 1, !dbg !173                ; [#uses=1 type=i32] [debug line = 133:61]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !174), !dbg !173 ; [debug line = 133:61] [debug variable = i]
  br label %.preheader, !dbg !173                 ; [debug line = 133:61]

; <label>:22                                      ; preds = %.preheader
  call void @free(i8* %image), !dbg !175          ; [debug line = 141:3]
  call void @free(i8* %result), !dbg !176         ; [debug line = 142:3]
  br label %1, !dbg !177                          ; [debug line = 143:2]
}

; [#uses=2]
declare i8* @malloc(i32)

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define internal fastcc zeroext i8 @getVal(i32 %index, i32 %xDiff, i32 %yDiff, i8* %Y) nounwind inlinehint {
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !178), !dbg !179 ; [debug line = 15:34] [debug variable = index]
  call void @llvm.dbg.value(metadata !{i32 %xDiff}, i64 0, metadata !180), !dbg !181 ; [debug line = 15:45] [debug variable = xDiff]
  call void @llvm.dbg.value(metadata !{i32 %yDiff}, i64 0, metadata !182), !dbg !183 ; [debug line = 15:56] [debug variable = yDiff]
  call void @llvm.dbg.value(metadata !{i8* %Y}, i64 0, metadata !184), !dbg !185 ; [debug line = 15:73] [debug variable = Y]
  %tmp = mul nsw i32 %yDiff, 1920, !dbg !186      ; [#uses=1 type=i32] [debug line = 17:2]
  %tmp.44 = add i32 %xDiff, %index, !dbg !186     ; [#uses=1 type=i32] [debug line = 17:2]
  %tmp.45 = add i32 %tmp.44, %tmp, !dbg !186      ; [#uses=1 type=i32] [debug line = 17:2]
  %Y.addr = getelementptr inbounds i8* %Y, i32 %tmp.45, !dbg !186 ; [#uses=1 type=i8*] [debug line = 17:2]
  %Y.load = load i8* %Y.addr, align 1, !dbg !186  ; [#uses=2 type=i8] [debug line = 17:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %Y.load) nounwind
  ret i8 %Y.load, !dbg !186                       ; [debug line = 17:2]
}

; [#uses=2]
declare void @free(i8*)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!42, !49, !54}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/TEMP/INF3610_H18_Lab4/INF3610_H18_Lab4/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !21}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 20, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 21} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 74, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !14, i32 75} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVal", metadata !"getVal", metadata !"_ZL6getValiiiPh", metadata !6, i32 15, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i32, i32, i8*)* @getVal, null, null, metadata !14, i32 16} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !12, metadata !12, metadata !12, metadata !13}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !32, metadata !33, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41}
!26 = metadata !{i32 786484, i32 0, metadata !5, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 41, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @x_op} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786484, i32 0, metadata !5, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 45, metadata !27, i32 1, i32 1, [3 x [3 x i8]]* @y_op} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786484, i32 0, null, metadata !"_amblksiz", metadata !"_amblksiz", metadata !"", metadata !34, i32 53, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786473, metadata !"C:/Logiciels/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cmalloc.h", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !36, i32 157, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786473, metadata !"C:/Logiciels/Xilinx/Vivado_HLS/2017.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"C:\5CTEMP\5CINF3610_H18_Lab4\5CINF3610_H18_Lab4\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"_imp___osplatform", metadata !"_imp___osplatform", metadata !"", metadata !36, i32 248, metadata !19, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"_imp___osver", metadata !"_imp___osver", metadata !"", metadata !36, i32 257, metadata !19, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"_imp___winver", metadata !"_imp___winver", metadata !"", metadata !36, i32 266, metadata !19, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"_imp___winmajor", metadata !"_imp___winmajor", metadata !"", metadata !36, i32 275, metadata !19, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"_imp___winminor", metadata !"_imp___winminor", metadata !"", metadata !36, i32 284, metadata !19, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!42 = metadata !{null, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!44 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!48 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!49 = metadata !{void (i8*, i32*)* @sobel_filter, metadata !50, metadata !44, metadata !51, metadata !52, metadata !53, metadata !48}
!50 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!52 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!54 = metadata !{i8 (i32, i32, i32, i8*)* @getVal, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !48}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!56 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"uint8_t*"}
!58 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"index", metadata !"xDiff", metadata !"yDiff", metadata !"Y"}
!60 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777290, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 74, i32 27, metadata !16, null}
!62 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554506, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 74, i32 60, metadata !16, null}
!64 = metadata !{i32 75, i32 2, metadata !65, null}
!65 = metadata !{i32 786443, metadata !16, i32 75, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 75, i32 46, metadata !65, null}
!67 = metadata !{i32 92, i32 1, metadata !65, null}
!68 = metadata !{i32 93, i32 1, metadata !65, null}
!69 = metadata !{i32 94, i32 1, metadata !65, null}
!70 = metadata !{i32 786688, metadata !65, metadata !"oneToFourPixels", metadata !6, i32 95, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ]
!72 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 9, i64 32, i64 32, i64 0, i32 0, null, metadata !73, i32 0, null} ; [ DW_TAG_union_type ]
!73 = metadata !{metadata !74, metadata !78, metadata !79}
!74 = metadata !{i32 786445, metadata !72, metadata !"pix", metadata !6, i32 10, i64 32, i64 8, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ]
!75 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!78 = metadata !{i32 786445, metadata !72, metadata !"full", metadata !6, i32 11, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!79 = metadata !{i32 786478, i32 0, metadata !72, metadata !"", metadata !"", metadata !"", metadata !6, i32 9, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 9} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !82}
!82 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !72} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 95, i32 18, metadata !65, null}
!84 = metadata !{i32 109, i32 5, metadata !85, null}
!85 = metadata !{i32 786443, metadata !86, i32 108, i32 41, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 108, i32 4, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !88, i32 105, i32 52, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !89, i32 105, i32 3, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !65, i32 98, i32 15, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 111, i32 4, metadata !87, null}
!91 = metadata !{i32 98, i32 2, metadata !65, null}
!92 = metadata !{i32 102, i32 33, metadata !89, null}
!93 = metadata !{i32 786688, metadata !89, metadata !"image", metadata !6, i32 102, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 103, i32 34, metadata !89, null}
!95 = metadata !{i32 786688, metadata !89, metadata !"result", metadata !6, i32 103, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 105, i32 26, metadata !88, null}
!97 = metadata !{i32 115, i32 26, metadata !98, null}
!98 = metadata !{i32 786443, metadata !89, i32 115, i32 3, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 107, i32 4, metadata !87, null}
!100 = metadata !{i32 786688, metadata !65, metadata !"val", metadata !6, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 108, i32 27, metadata !86, null}
!102 = metadata !{i32 108, i32 36, metadata !86, null}
!103 = metadata !{i32 786688, metadata !86, metadata !"j", metadata !6, i32 108, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 105, i32 47, metadata !88, null}
!105 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !6, i32 105, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 117, i32 45, metadata !107, null}
!107 = metadata !{i32 786443, metadata !89, i32 117, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 116, i32 4, metadata !98, null}
!109 = metadata !{i32 115, i32 38, metadata !98, null}
!110 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !6, i32 115, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 119, i32 26, metadata !112, null}
!112 = metadata !{i32 786443, metadata !89, i32 119, i32 3, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 118, i32 4, metadata !107, null}
!114 = metadata !{i32 117, i32 66, metadata !107, null}
!115 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !6, i32 117, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 121, i32 33, metadata !117, null}
!117 = metadata !{i32 786443, metadata !89, i32 121, i32 3, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 120, i32 4, metadata !112, null}
!119 = metadata !{i32 119, i32 47, metadata !112, null}
!120 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !6, i32 119, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 125, i32 26, metadata !122, null}
!122 = metadata !{i32 786443, metadata !89, i32 125, i32 3, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 122, i32 4, metadata !117, null}
!124 = metadata !{i32 121, i32 54, metadata !117, null}
!125 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !6, i32 121, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 133, i32 26, metadata !127, null}
!127 = metadata !{i32 786443, metadata !89, i32 133, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 127, i32 33, metadata !129, null}
!129 = metadata !{i32 786443, metadata !130, i32 126, i32 48, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !131, i32 126, i32 4, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !122, i32 125, i32 47, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 126, i32 27, metadata !130, null}
!133 = metadata !{i32 786688, metadata !129, metadata !"fullIndex", metadata !6, i32 127, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777236, metadata !11, i32 0, metadata !135} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 128, i32 25, metadata !129, null}
!136 = metadata !{i32 20, i32 34, metadata !5, metadata !135}
!137 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554452, metadata !13, i32 0, metadata !135} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 20, i32 55, metadata !5, metadata !135}
!139 = metadata !{i32 50, i32 16, metadata !140, metadata !135}
!140 = metadata !{i32 786443, metadata !141, i32 50, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !5, i32 21, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 53, i32 26, metadata !143, metadata !135}
!143 = metadata !{i32 786443, metadata !144, i32 51, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 786443, metadata !145, i32 51, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786443, metadata !140, i32 50, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 51, i32 17, metadata !144, metadata !135}
!147 = metadata !{i32 786688, metadata !141, metadata !"x_weight", metadata !6, i32 35, metadata !12, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 56, i32 26, metadata !143, metadata !135}
!149 = metadata !{i32 786688, metadata !141, metadata !"y_weight", metadata !6, i32 36, metadata !12, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 51, i32 26, metadata !144, metadata !135}
!151 = metadata !{i32 786688, metadata !144, metadata !"j", metadata !6, i32 51, metadata !12, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 50, i32 25, metadata !140, metadata !135}
!153 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !6, i32 50, metadata !12, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 60, i32 2, metadata !141, metadata !135}
!155 = metadata !{i32 786688, metadata !141, metadata !"edge_weight", metadata !6, i32 38, metadata !20, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 62, i32 2, metadata !141, metadata !135}
!157 = metadata !{i32 786688, metadata !141, metadata !"edge_val", metadata !6, i32 39, metadata !9, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 65, i32 2, metadata !141, metadata !135}
!159 = metadata !{i32 67, i32 7, metadata !141, metadata !135}
!160 = metadata !{i32 126, i32 43, metadata !130, null}
!161 = metadata !{i32 786688, metadata !130, metadata !"j", metadata !6, i32 126, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 125, i32 42, metadata !122, null}
!163 = metadata !{i32 786688, metadata !122, metadata !"i", metadata !6, i32 125, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 134, i32 4, metadata !165, null}
!165 = metadata !{i32 786443, metadata !127, i32 133, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 135, i32 27, metadata !167, null}
!167 = metadata !{i32 786443, metadata !165, i32 135, i32 4, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 136, i32 5, metadata !169, null}
!169 = metadata !{i32 786443, metadata !167, i32 135, i32 41, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 135, i32 36, metadata !167, null}
!171 = metadata !{i32 786688, metadata !167, metadata !"j", metadata !6, i32 135, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 138, i32 4, metadata !165, null}
!173 = metadata !{i32 133, i32 61, metadata !127, null}
!174 = metadata !{i32 786688, metadata !127, metadata !"i", metadata !6, i32 133, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 141, i32 3, metadata !89, null}
!176 = metadata !{i32 142, i32 3, metadata !89, null}
!177 = metadata !{i32 143, i32 2, metadata !89, null}
!178 = metadata !{i32 786689, metadata !21, metadata !"index", metadata !6, i32 16777231, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 15, i32 34, metadata !21, null}
!180 = metadata !{i32 786689, metadata !21, metadata !"xDiff", metadata !6, i32 33554447, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 15, i32 45, metadata !21, null}
!182 = metadata !{i32 786689, metadata !21, metadata !"yDiff", metadata !6, i32 50331663, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 15, i32 56, metadata !21, null}
!184 = metadata !{i32 786689, metadata !21, metadata !"Y", metadata !6, i32 67108879, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 15, i32 73, metadata !21, null}
!186 = metadata !{i32 17, i32 2, metadata !187, null}
!187 = metadata !{i32 786443, metadata !21, i32 16, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
