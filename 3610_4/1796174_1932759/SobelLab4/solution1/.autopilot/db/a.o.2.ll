; ModuleID = 'C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str1 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  call void @llvm.dbg.value(metadata !{[2073600 x i8]* %inter_pix}, i64 0, metadata !43), !dbg !47 ; [debug line = 31:27] [debug variable = inter_pix]
  call void @llvm.dbg.value(metadata !{[2073600 x i32]* %out_pix}, i64 0, metadata !48), !dbg !50 ; [debug line = 31:60] [debug variable = out_pix]
  br label %1, !dbg !51                           ; [debug line = 45:20]

; <label>:1                                       ; preds = %3, %0
  %i = phi i21 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i21]
  %i.cast = zext i21 %i to i32, !dbg !51          ; [#uses=2 type=i32] [debug line = 45:20]
  %exitcond1 = icmp eq i21 %i, -23552, !dbg !51   ; [#uses=1 type=i1] [debug line = 45:20]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %5, label %3, !dbg !51  ; [debug line = 45:20]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str1) nounwind, !dbg !54 ; [debug line = 45:45]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str1) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 45:45]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !56 ; [debug line = 46:1]
  %inter_pix.addr = getelementptr [2073600 x i8]* %inter_pix, i32 0, i32 %i.cast, !dbg !57 ; [#uses=1 type=i8*] [debug line = 47:28]
  %val = load i8* %inter_pix.addr, align 1, !dbg !57 ; [#uses=4 type=i8] [debug line = 47:28]
  call void @llvm.dbg.value(metadata !{i8 %val}, i64 0, metadata !58), !dbg !57 ; [debug line = 47:28] [debug variable = val]
  %.cast = zext i8 %val to i16, !dbg !59          ; [#uses=1 type=i16] [debug line = 50:4]
  %tmp = shl nuw i16 %.cast, 8, !dbg !59          ; [#uses=1 type=i16] [debug line = 50:4]
  %tmp1 = call i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8 %val, i16 %tmp), !dbg !59 ; [#uses=1 type=i24] [debug line = 50:4]
  %tmp.2 = call i24 @_ssdm_op_BitConcatenate.i24.i16.i8(i16 0, i8 %val) ; [#uses=1 type=i24]
  %tmp.3 = or i24 %tmp.2, %tmp1                   ; [#uses=1 type=i24]
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8 %val, i24 %tmp.3), !dbg !59 ; [#uses=1 type=i32] [debug line = 50:4]
  call void @llvm.dbg.value(metadata !{i32 %fourWide}, i64 0, metadata !62), !dbg !59 ; [debug line = 50:4] [debug variable = fourWide]
  %out_pix.addr = getelementptr [2073600 x i32]* %out_pix, i32 0, i32 %i.cast, !dbg !76 ; [#uses=1 type=i32*] [debug line = 51:3]
  store i32 %fourWide, i32* %out_pix.addr, align 4, !dbg !76 ; [debug line = 51:3]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str1, i32 %tmp.1) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 52:2]
  %i.1 = add i21 %i, 1, !dbg !78                  ; [#uses=1 type=i21] [debug line = 45:39]
  call void @llvm.dbg.value(metadata !{i21 %i.1}, i64 0, metadata !79), !dbg !78 ; [debug line = 45:39] [debug variable = i]
  br label %1, !dbg !78                           ; [debug line = 45:39]

; <label>:5                                       ; preds = %1
  ret void, !dbg !80                              ; [debug line = 53:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone

; [#uses=0]
declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8, i24) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i8.i16(i8, i16) nounwind readnone

; [#uses=1]
declare i24 @_ssdm_op_BitConcatenate.i24.i16.i8(i16, i8) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!21, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"_Z12sobel_filterPhPj", metadata !6, i32 31, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 32} ; [ DW_TAG_subprogram ]
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
!28 = metadata !{null, metadata !29, metadata !23, metadata !30, metadata !31, metadata !32, metadata !27}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"inter_pix", metadata !"out_pix"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 7, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"inter_pix", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 2073599, i32 1}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"out_pix", metadata !37, metadata !"unsigned int", i32 0, i32 31}
!43 = metadata !{i32 786689, metadata !16, metadata !"inter_pix", null, i32 31, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !9, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 2073599}  ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 31, i32 27, metadata !16, null}
!48 = metadata !{i32 786689, metadata !16, metadata !"out_pix", null, i32 31, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 66355200, i64 32, i32 0, i32 0, metadata !20, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{i32 31, i32 60, metadata !16, null}
!51 = metadata !{i32 45, i32 20, metadata !52, null}
!52 = metadata !{i32 786443, metadata !53, i32 45, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !16, i32 32, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 45, i32 45, metadata !55, null}
!55 = metadata !{i32 786443, metadata !52, i32 45, i32 44, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 46, i32 1, metadata !55, null}
!57 = metadata !{i32 47, i32 28, metadata !55, null}
!58 = metadata !{i32 786688, metadata !55, metadata !"val", metadata !6, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 50, i32 4, metadata !60, null}
!60 = metadata !{i32 786443, metadata !61, i32 50, i32 4, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !55, i32 49, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 790529, metadata !63, metadata !"fourWide", null, i32 48, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!63 = metadata !{i32 786688, metadata !55, metadata !"fourWide", metadata !6, i32 48, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786454, null, metadata !"OneToFourPixels", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 786455, null, metadata !"", metadata !6, i32 6, i64 32, i64 32, i64 0, i32 0, null, metadata !66, i32 0, null} ; [ DW_TAG_union_type ]
!66 = metadata !{metadata !67, metadata !71, metadata !72}
!67 = metadata !{i32 786445, metadata !65, metadata !"pix", metadata !6, i32 7, i64 32, i64 8, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !9, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!71 = metadata !{i32 786445, metadata !65, metadata !"full", metadata !6, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!72 = metadata !{i32 786478, i32 0, metadata !65, metadata !"", metadata !"", metadata !"", metadata !6, i32 6, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !14, i32 6} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75}
!75 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !65} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 51, i32 3, metadata !55, null}
!77 = metadata !{i32 52, i32 2, metadata !55, null}
!78 = metadata !{i32 45, i32 39, metadata !52, null}
!79 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !6, i32 45, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 53, i32 1, metadata !53, null}
