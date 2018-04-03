; ModuleID = 'C:/TEMP/3610_4/1796174_1932759/SobelLab4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00"
@p_str1 = private unnamed_addr constant [4 x i8] c"IMG\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sobel_filter([2073600 x i8]* %inter_pix, [2073600 x i32]* %out_pix) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i8]* %inter_pix) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap([2073600 x i32]* %out_pix) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i21 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond1 = icmp eq i21 %i, -23552
  %i_1 = add i21 %i, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %i_cast = zext i21 %i to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %inter_pix_addr = getelementptr [2073600 x i8]* %inter_pix, i32 0, i32 %i_cast
  %val = load i8* %inter_pix_addr, align 1
  %fourWide = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %val, i8 %val, i8 %val, i8 %val)
  %out_pix_addr = getelementptr [2073600 x i32]* %out_pix, i32 0, i32 %i_cast
  store i32 %fourWide, i32* %out_pix_addr, align 4
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_1) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_3 = zext i8 %3 to i16
  %empty_4 = shl i16 %empty, 8
  %empty_5 = or i16 %empty_4, %empty_3
  %empty_6 = zext i8 %1 to i24
  %empty_7 = zext i16 %empty_5 to i24
  %empty_8 = shl i24 %empty_6, 16
  %empty_9 = or i24 %empty_8, %empty_7
  %empty_10 = zext i8 %0 to i32
  %empty_11 = zext i24 %empty_9 to i32
  %empty_12 = shl i32 %empty_10, 24
  %empty_13 = or i32 %empty_12, %empty_11
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
