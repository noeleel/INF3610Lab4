; ModuleID = 'C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%union.OneToFourPixels = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define zeroext i8 @_Z14sobel_operatoriPh(i32 %fullIndex, i8* %image) nounwind {
  %1 = alloca i32, align 4                        ; [#uses=1 type=i32*]
  %2 = alloca i8*, align 4                        ; [#uses=1 type=i8**]
  store i32 %fullIndex, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !33), !dbg !34 ; [debug line = 12:34] [debug variable = fullIndex]
  store i8* %image, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !35), !dbg !36 ; [debug line = 12:55] [debug variable = image]
  call void (...)* @_ssdm_InlineSelf(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !37 ; [debug line = 14:1]
  ret i8 0, !dbg !39                              ; [debug line = 27:2]
}

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_InlineSelf(...) nounwind

; [#uses=0]
define void @_Z12sobel_filterPhPj(i8* %inter_pix, i32* %out_pix) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %2 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %val = alloca i8, align 1                       ; [#uses=2 type=i8*]
  %fourWide = alloca %union.OneToFourPixels, align 4 ; [#uses=2 type=%union.OneToFourPixels*]
  %j = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store i8* %inter_pix, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !40), !dbg !41 ; [debug line = 31:27] [debug variable = inter_pix]
  store i32* %out_pix, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !42), !dbg !43 ; [debug line = 31:60] [debug variable = out_pix]
  %3 = load i32** %2, align 4, !dbg !44           ; [#uses=1 type=i32*] [debug line = 32:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 2073600) nounwind, !dbg !44 ; [debug line = 32:2]
  %4 = load i8** %1, align 4, !dbg !46            ; [#uses=1 type=i8*] [debug line = 32:46]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %4, i32 2073600) nounwind, !dbg !46 ; [debug line = 32:46]
  br label %5, !dbg !46                           ; [debug line = 32:46]

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !47), !dbg !49 ; [debug line = 45:15] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !50         ; [debug line = 45:20]
  br label %6, !dbg !50                           ; [debug line = 45:20]

; <label>:6                                       ; preds = %32, %5
  %7 = load i32* %i, align 4, !dbg !50            ; [#uses=1 type=i32] [debug line = 45:20]
  %8 = icmp slt i32 %7, 2073600, !dbg !50         ; [#uses=1 type=i1] [debug line = 45:20]
  br i1 %8, label %9, label %35, !dbg !50         ; [debug line = 45:20]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 45:45]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 45:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 46:1]
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !54), !dbg !55 ; [debug line = 47:10] [debug variable = val]
  %10 = load i32* %i, align 4, !dbg !56           ; [#uses=1 type=i32] [debug line = 47:28]
  %11 = load i8** %1, align 4, !dbg !56           ; [#uses=1 type=i8*] [debug line = 47:28]
  %12 = getelementptr inbounds i8* %11, i32 %10, !dbg !56 ; [#uses=1 type=i8*] [debug line = 47:28]
  %13 = load i8* %12, align 1, !dbg !56           ; [#uses=1 type=i8] [debug line = 47:28]
  store i8 %13, i8* %val, align 1, !dbg !56       ; [debug line = 47:28]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels* %fourWide}, metadata !57), !dbg !70 ; [debug line = 48:19] [debug variable = fourWide]
  br label %14, !dbg !71                          ; [debug line = 48:27]

; <label>:14                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !72), !dbg !74 ; [debug line = 49:18] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !75         ; [debug line = 49:23]
  br label %15, !dbg !75                          ; [debug line = 49:23]

; <label>:15                                      ; preds = %23, %14
  %16 = load i32* %j, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 49:23]
  %17 = icmp slt i32 %16, 4, !dbg !75             ; [#uses=1 type=i1] [debug line = 49:23]
  br i1 %17, label %18, label %26, !dbg !75       ; [debug line = 49:23]

; <label>:18                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 50:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 50:4]
  %19 = load i8* %val, align 1, !dbg !76          ; [#uses=1 type=i8] [debug line = 50:4]
  %20 = load i32* %j, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 50:4]
  %21 = bitcast %union.OneToFourPixels* %fourWide to [4 x i8]*, !dbg !76 ; [#uses=1 type=[4 x i8]*] [debug line = 50:4]
  %22 = getelementptr inbounds [4 x i8]* %21, i32 0, i32 %20, !dbg !76 ; [#uses=1 type=i8*] [debug line = 50:4]
  store i8 %19, i8* %22, align 1, !dbg !76        ; [debug line = 50:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 50:22]
  br label %23, !dbg !78                          ; [debug line = 50:22]

; <label>:23                                      ; preds = %18
  %24 = load i32* %j, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 49:32]
  %25 = add nsw i32 %24, 1, !dbg !79              ; [#uses=1 type=i32] [debug line = 49:32]
  store i32 %25, i32* %j, align 4, !dbg !79       ; [debug line = 49:32]
  br label %15, !dbg !79                          ; [debug line = 49:32]

; <label>:26                                      ; preds = %15
  %27 = bitcast %union.OneToFourPixels* %fourWide to i32*, !dbg !80 ; [#uses=1 type=i32*] [debug line = 51:3]
  %28 = load i32* %27, align 4, !dbg !80          ; [#uses=1 type=i32] [debug line = 51:3]
  %29 = load i32* %i, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 51:3]
  %30 = load i32** %2, align 4, !dbg !80          ; [#uses=1 type=i32*] [debug line = 51:3]
  %31 = getelementptr inbounds i32* %30, i32 %29, !dbg !80 ; [#uses=1 type=i32*] [debug line = 51:3]
  store i32 %28, i32* %31, align 4, !dbg !80      ; [debug line = 51:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 52:2]
  br label %32, !dbg !81                          ; [debug line = 52:2]

; <label>:32                                      ; preds = %26
  %33 = load i32* %i, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 45:39]
  %34 = add nsw i32 %33, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 45:39]
  store i32 %34, i32* %i, align 4, !dbg !82       ; [debug line = 45:39]
  br label %6, !dbg !82                           ; [debug line = 45:39]

; <label>:35                                      ; preds = %6
  ret void, !dbg !83                              ; [debug line = 53:1]
}

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!21, !28}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"C:\5CTEMP\5C3610_4\5C1796174_1932759", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32, i8*)* @_Z14sobel_operatoriPh, null, null, metadata !14, i32 13} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"C:\5CTEMP\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !11, metadata !13}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 31, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @_Z12sobel_filterPhPj, null, null, metadata !14, i32 32} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i8 (i32, i8*)* @_Z14sobel_operatoriPh, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!27 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!28 = metadata !{void (i8*, i32*)* @_Z12sobel_filterPhPj, metadata !29, metadata !23, metadata !30, metadata !31, metadata !32, metadata !27}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!33 = metadata !{i32 786689, metadata !5, metadata !"fullIndex", metadata !6, i32 16777228, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 12, i32 34, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"image", metadata !6, i32 33554444, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 12, i32 55, metadata !5, null}
!37 = metadata !{i32 14, i32 1, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 13, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 27, i32 2, metadata !38, null}
!40 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777247, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 31, i32 27, metadata !16, null}
!42 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554463, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 31, i32 60, metadata !16, null}
!44 = metadata !{i32 32, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !16, i32 32, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 32, i32 46, metadata !45, null}
!47 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !6, i32 45, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 786443, metadata !45, i32 45, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 45, i32 15, metadata !48, null}
!50 = metadata !{i32 45, i32 20, metadata !48, null}
!51 = metadata !{i32 45, i32 45, metadata !52, null}
!52 = metadata !{i32 786443, metadata !48, i32 45, i32 44, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 46, i32 1, metadata !52, null}
!54 = metadata !{i32 786688, metadata !52, metadata !"val", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 47, i32 10, metadata !52, null}
!56 = metadata !{i32 47, i32 28, metadata !52, null}
!57 = metadata !{i32 786688, metadata !52, metadata !"fourWide", metadata !6, i32 48, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ]
!59 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !60, i32 0, null} ; [ DW_TAG_union_type ]
!60 = metadata !{metadata !61, metadata !65, metadata !66}
!61 = metadata !{i32 786445, metadata !59, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!65 = metadata !{i32 786445, metadata !59, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!66 = metadata !{i32 786478, i32 0, metadata !59, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{null, metadata !69}
!69 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !59} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 48, i32 19, metadata !52, null}
!71 = metadata !{i32 48, i32 27, metadata !52, null}
!72 = metadata !{i32 786688, metadata !73, metadata !"j", metadata !6, i32 49, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786443, metadata !52, i32 49, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 49, i32 18, metadata !73, null}
!75 = metadata !{i32 49, i32 23, metadata !73, null}
!76 = metadata !{i32 50, i32 4, metadata !77, null}
!77 = metadata !{i32 786443, metadata !73, i32 50, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 50, i32 22, metadata !77, null}
!79 = metadata !{i32 49, i32 32, metadata !73, null}
!80 = metadata !{i32 51, i32 3, metadata !52, null}
!81 = metadata !{i32 52, i32 2, metadata !52, null}
!82 = metadata !{i32 45, i32 39, metadata !48, null}
!83 = metadata !{i32 53, i32 1, metadata !45, null}
