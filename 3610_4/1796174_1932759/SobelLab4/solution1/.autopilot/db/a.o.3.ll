; ModuleID = 'C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=3 type=[4 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !22), !dbg !37 ; [debug line = 31:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !38), !dbg !40 ; [debug line = 31:60] [debug variable = out_pix]
  br label %1, !dbg !41                           ; [debug line = 45:20]

; <label>:1                                       ; preds = %2, %0
  %i = phi i21 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=3 type=i21]
  %exitcond1 = icmp eq i21 %i, -23552, !dbg !41   ; [#uses=1 type=i1] [debug line = 45:20]
  %i_1 = add i21 %i, 1, !dbg !44                  ; [#uses=1 type=i21] [debug line = 45:39]
  br i1 %exitcond1, label %3, label %2, !dbg !41  ; [debug line = 45:20]

; <label>:2                                       ; preds = %1
  %i_cast = zext i21 %i to i32, !dbg !41          ; [#uses=2 type=i32] [debug line = 45:20]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind, !dbg !45 ; [debug line = 45:45]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind, !dbg !45 ; [#uses=1 type=i32] [debug line = 45:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !47 ; [debug line = 46:1]
  %inter_pix_addr = getelementptr [2073600 x i8]* %inter_pix, i32 0, i32 %i_cast, !dbg !48 ; [#uses=1 type=i8*] [debug line = 47:28]
  %val = load i8* %inter_pix_addr, align 1, !dbg !48 ; [#uses=4 type=i8] [debug line = 47:28]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !49), !dbg !48 ; [debug line = 47:28] [debug variable = val]
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %val, i8 %val, i8 %val, i8 %val), !dbg !50 ; [#uses=1 type=i32] [debug line = 50:4]
  call void @llvm.dbg.value(metadata !{i32 %fourWide}, i64 0, metadata !53), !dbg !50 ; [debug line = 50:4] [debug variable = fourWide]
  %out_pix_addr = getelementptr [2073600 x i32]* %out_pix, i32 0, i32 %i_cast, !dbg !67 ; [#uses=1 type=i32*] [debug line = 51:3]
  store i32 %fourWide, i32* %out_pix_addr, align 4, !dbg !67 ; [debug line = 51:3]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_1) nounwind, !dbg !68 ; [#uses=0 type=i32] [debug line = 52:2]
  call void @llvm.dbg.value(metadata !{i21 %i_1}, i64 0, metadata !69), !dbg !44 ; [debug line = 45:39] [debug variable = i]
  br label %1, !dbg !44                           ; [debug line = 45:39]

; <label>:3                                       ; preds = %1
  ret void, !dbg !71                              ; [debug line = 53:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; [#uses=1 type=i16]
  %empty_3 = zext i8 %3 to i16                    ; [#uses=1 type=i16]
  %empty_4 = shl i16 %empty, 8                    ; [#uses=1 type=i16]
  %empty_5 = or i16 %empty_4, %empty_3            ; [#uses=1 type=i16]
  %empty_6 = zext i8 %1 to i24                    ; [#uses=1 type=i24]
  %empty_7 = zext i16 %empty_5 to i24             ; [#uses=1 type=i24]
  %empty_8 = shl i24 %empty_6, 16                 ; [#uses=1 type=i24]
  %empty_9 = or i24 %empty_8, %empty_7            ; [#uses=1 type=i24]
  %empty_10 = zext i8 %0 to i32                   ; [#uses=1 type=i32]
  %empty_11 = zext i24 %empty_9 to i32            ; [#uses=1 type=i32]
  %empty_12 = shl i32 %empty_10, 24               ; [#uses=1 type=i32]
  %empty_13 = or i32 %empty_12, %empty_11         ; [#uses=1 type=i32]
  ret i32 %empty_13
}

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"uint8_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"fullIndex", metadata !"image"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !10, metadata !11, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!10 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!11 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 7, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"inter_pix", metadata !16, metadata !"unsigned char", i32 0, i32 7}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 2073599, i32 1}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"out_pix", metadata !16, metadata !"unsigned int", i32 0, i32 31}
!22 = metadata !{i32 786689, metadata !23, metadata !"inter_pix", null, i32 31, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !24, i32 31, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 32} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"SobelLab4/Sobel.cpp", metadata !"C:\5CTEMP\5C3610_4\5C1796174_1932759", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27, metadata !30}
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !24, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !28, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!37 = metadata !{i32 31, i32 27, metadata !23, null}
!38 = metadata !{i32 786689, metadata !23, metadata !"out_pix", null, i32 31, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !31, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{i32 31, i32 60, metadata !23, null}
!41 = metadata !{i32 45, i32 20, metadata !42, null}
!42 = metadata !{i32 786443, metadata !43, i32 45, i32 6, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !23, i32 32, i32 1, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 45, i32 39, metadata !42, null}
!45 = metadata !{i32 45, i32 45, metadata !46, null}
!46 = metadata !{i32 786443, metadata !42, i32 45, i32 44, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 46, i32 1, metadata !46, null}
!48 = metadata !{i32 47, i32 28, metadata !46, null}
!49 = metadata !{i32 786688, metadata !46, metadata !"val", metadata !24, i32 47, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 50, i32 4, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 50, i32 4, metadata !24, i32 5} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !46, i32 49, i32 9, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 790529, metadata !54, metadata !"fourWide", null, i32 48, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!54 = metadata !{i32 786688, metadata !46, metadata !"fourWide", metadata !24, i32 48, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !24, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ]
!56 = metadata !{i32 786455, null, metadata !"", metadata !24, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !57, i32 0, null} ; [ DW_TAG_union_type ]
!57 = metadata !{metadata !58, metadata !62, metadata !63}
!58 = metadata !{i32 786445, metadata !56, metadata !"pix", metadata !24, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!59 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !28, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!62 = metadata !{i32 786445, metadata !56, metadata !"full", metadata !24, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!63 = metadata !{i32 786478, i32 0, metadata !56, metadata !"", metadata !"", metadata !"", metadata !24, i32 6, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !32, i32 6} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !66}
!66 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !56} ; [ DW_TAG_pointer_type ]
!67 = metadata !{i32 51, i32 3, metadata !46, null}
!68 = metadata !{i32 52, i32 2, metadata !46, null}
!69 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !24, i32 45, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 53, i32 1, metadata !43, null}
