; ModuleID = 'C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%union.OneToFourPixels.0 = type { i32 }

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"OneTo4\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter(i8* %inter_pix, i32* %out_pix) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %fourWide = alloca %union.OneToFourPixels.0, align 4 ; [#uses=2 type=%union.OneToFourPixels.0*]
  call void @llvm.dbg.value(metadata !{i8* %inter_pix}, i64 0, metadata !33), !dbg !34 ; [debug line = 31:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{i32* %out_pix}, i64 0, metadata !35), !dbg !36 ; [debug line = 31:60] [debug variable = out_pix]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_pix, i32 2073600) nounwind, !dbg !37 ; [debug line = 32:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %inter_pix, i32 2073600) nounwind, !dbg !39 ; [debug line = 32:46]
  %tmp = bitcast %union.OneToFourPixels.0* %fourWide to [4 x i8]*, !dbg !40 ; [#uses=1 type=[4 x i8]*] [debug line = 50:4]
  %fourWide.addr = getelementptr inbounds %union.OneToFourPixels.0* %fourWide, i32 0, i32 0, !dbg !45 ; [#uses=1 type=i32*] [debug line = 51:3]
  br label %1, !dbg !46                           ; [debug line = 45:20]

; <label>:1                                       ; preds = %5, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 2073600, !dbg !46  ; [#uses=1 type=i1] [debug line = 45:20]
  br i1 %exitcond1, label %6, label %2, !dbg !46  ; [debug line = 45:20]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !47 ; [debug line = 45:45]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !47 ; [#uses=1 type=i32] [debug line = 45:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !48 ; [debug line = 46:1]
  %inter_pix.addr = getelementptr inbounds i8* %inter_pix, i32 %i, !dbg !49 ; [#uses=1 type=i8*] [debug line = 47:28]
  %val = load i8* %inter_pix.addr, align 1, !dbg !49 ; [#uses=2 type=i8] [debug line = 47:28]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %val) nounwind
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !50), !dbg !49 ; [debug line = 47:28] [debug variable = val]
  call void @llvm.dbg.declare(metadata !{%union.OneToFourPixels.0* %fourWide}, metadata !51), !dbg !64 ; [debug line = 48:19] [debug variable = fourWide]
  br label %3, !dbg !65                           ; [debug line = 49:23]

; <label>:3                                       ; preds = %4, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %4 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 4, !dbg !65         ; [#uses=1 type=i1] [debug line = 49:23]
  br i1 %exitcond, label %5, label %4, !dbg !65   ; [debug line = 49:23]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !40 ; [debug line = 50:4]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !40 ; [#uses=1 type=i32] [debug line = 50:4]
  %tmp.addr = getelementptr inbounds [4 x i8]* %tmp, i32 0, i32 %j, !dbg !40 ; [#uses=1 type=i8*] [debug line = 50:4]
  store i8 %val, i8* %tmp.addr, align 1, !dbg !40 ; [debug line = 50:4]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i32 %rbegin2) nounwind, !dbg !66 ; [#uses=0 type=i32] [debug line = 50:22]
  %j.1 = add nsw i32 %j, 1, !dbg !67              ; [#uses=1 type=i32] [debug line = 49:32]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !68), !dbg !67 ; [debug line = 49:32] [debug variable = j]
  br label %3, !dbg !67                           ; [debug line = 49:32]

; <label>:5                                       ; preds = %3
  %fourWide.load = load i32* %fourWide.addr, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 51:3]
  %out_pix.addr = getelementptr inbounds i32* %out_pix, i32 %i, !dbg !45 ; [#uses=1 type=i32*] [debug line = 51:3]
  store i32 %fourWide.load, i32* %out_pix.addr, align 4, !dbg !45 ; [debug line = 51:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 52:2]
  %i.1 = add nsw i32 %i, 1, !dbg !70              ; [#uses=1 type=i32] [debug line = 45:39]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 45:39] [debug variable = i]
  br label %1, !dbg !70                           ; [debug line = 45:39]

; <label>:6                                       ; preds = %1
  ret void, !dbg !72                              ; [debug line = 53:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!21, !28}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/Sobel.pragma.2.cpp", metadata !"C:\5CTEMP\5C3610_4\5C1796174_1932759", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatoriPh", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 13} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 31, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32*)* @sobel_filter, null, null, metadata !14, i32 32} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !13, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!27 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!28 = metadata !{void (i8*, i32*)* @sobel_filter, metadata !29, metadata !23, metadata !30, metadata !31, metadata !32, metadata !27}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!33 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", metadata !6, i32 16777247, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 31, i32 27, metadata !16, null}
!35 = metadata !{i32 786689, metadata !16, metadata !"out_pix", metadata !6, i32 33554463, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 31, i32 60, metadata !16, null}
!37 = metadata !{i32 32, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !16, i32 32, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 32, i32 46, metadata !38, null}
!40 = metadata !{i32 50, i32 4, metadata !41, null}
!41 = metadata !{i32 786443, metadata !42, i32 50, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 49, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !44, i32 45, i32 44, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 786443, metadata !38, i32 45, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 51, i32 3, metadata !43, null}
!46 = metadata !{i32 45, i32 20, metadata !44, null}
!47 = metadata !{i32 45, i32 45, metadata !43, null}
!48 = metadata !{i32 46, i32 1, metadata !43, null}
!49 = metadata !{i32 47, i32 28, metadata !43, null}
!50 = metadata !{i32 786688, metadata !43, metadata !"val", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786688, metadata !43, metadata !"fourWide", metadata !6, i32 48, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ]
!53 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !54, i32 0, null} ; [ DW_TAG_union_type ]
!54 = metadata !{metadata !55, metadata !59, metadata !60}
!55 = metadata !{i32 786445, metadata !53, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!59 = metadata !{i32 786445, metadata !53, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!60 = metadata !{i32 786478, i32 0, metadata !53, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !63}
!63 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !53} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 48, i32 19, metadata !43, null}
!65 = metadata !{i32 49, i32 23, metadata !42, null}
!66 = metadata !{i32 50, i32 22, metadata !41, null}
!67 = metadata !{i32 49, i32 32, metadata !42, null}
!68 = metadata !{i32 786688, metadata !42, metadata !"j", metadata !6, i32 49, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 52, i32 2, metadata !43, null}
!70 = metadata !{i32 45, i32 39, metadata !44, null}
!71 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !6, i32 45, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 53, i32 1, metadata !38, null}
