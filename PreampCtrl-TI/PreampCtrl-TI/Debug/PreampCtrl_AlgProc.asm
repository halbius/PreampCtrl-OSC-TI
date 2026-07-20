;******************************************************************************
;* TMS320C6x C/C++ Codegen                                         PC v7.4.24 *
;* Date/Time created: Thu Jul 16 08:42:23 2026                                *
;******************************************************************************
	.compiler_opts --abi=eabi --c64p_l1d_workaround=default --endian=little --hll_source=on --long_precision_bits=32 --mem_model:code=near --mem_model:const=data --mem_model:data=far --object_format=elf --silicon_version=6800 --symdebug:dwarf --symdebug:dwarf_version=3 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C67xx                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C6x C/C++ Codegen PC v7.4.24 Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\dev\AAX-DSP\PreampCtrl-TI\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("operator delete ")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_ZdlPv")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/new")
	.dwattr $C$DW$1, DW_AT_decl_line(0x46)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$1


$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("fabsf")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("fabsf")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/mathf.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$101, DW_AT_decl_column(0x10)
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwendtag $C$DW$101

	.global	__binit__
__binit__:	.usect	".far",4,4
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("__binit__")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("__binit__")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr __binit__]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/TI/CCSv5/elf_linkage_aax_ccsv5.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x24)
	.dwattr $C$DW$103, DW_AT_decl_column(0x10)
;	C:\ti\ccs1281\ccs\tools\compiler\c6000_7.4.24\bin\acpia6x.exe -@C:\\Users\\User\\AppData\\Local\\Temp\\{37EC6E7B-4F0B-482A-9954-A9D95747DD95} 
	.sect	".text"
	.clink

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("PreampCtrl_MaxF")
	.dwattr $C$DW$104, DW_AT_low_pc(_Z15PreampCtrl_MaxFff)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_Z15PreampCtrl_MaxFff")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$104, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x15)
	.dwattr $C$DW$104, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$104, DW_AT_decl_line(0x15)
	.dwattr $C$DW$104, DW_AT_decl_column(0x15)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 21,column 55,is_stmt,address _Z15PreampCtrl_MaxFff,isa 0

	.dwfde $C$DW$CIE, _Z15PreampCtrl_MaxFff
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("a")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("a")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg4]
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("b")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("b")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: PreampCtrl_MaxF(float, float)                               *
;*                                                                            *
;*   Regs Modified     : A4,B0,B5,SP                                          *
;*   Regs Used         : A4,B0,B3,B4,B5,SP                                    *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                    *
;******************************************************************************
_Z15PreampCtrl_MaxFff:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  21 | static inline float PreampCtrl_MaxF(float a, float b) { return a > b ?
;     | a : b; }                                                               
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 11
	.dwcfi	cfa_offset, 0
           SUB     .L2     SP,8,SP           ; |21| 
	.dwcfi	cfa_offset, 8
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("a")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_breg31 4]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("b")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg31 8]
           STW     .D2T2   B4,*+SP(8)        ; |21| 
           STW     .D2T1   A4,*+SP(4)        ; |21| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 21,column 57,is_stmt,isa 0
           MV      .L2X    A4,B5
           CMPGTSP .S2     B5,B4,B0          ; |21| 
   [ B0]   B       .S1     $C$L1             ; |21| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L1}         ; |21| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           MV      .L1X    B4,A4
;** --------------------------------------------------------------------------*
$C$L1:    
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 21,column 79,is_stmt,isa 0
           ADD     .L2     8,SP,SP           ; |21| 
	.dwcfi	cfa_offset, 0
	.dwcfi	cfa_offset, 0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_return
           RET     .S2     B3                ; |21| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |21| 
	.dwattr $C$DW$104, DW_AT_TI_end_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x15)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x4f)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text:_ZSt8_DestroyIcEvPT_"
	.clink
	.global	_ZSt8_DestroyIcEvPT_

$C$DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("_Destroy")
	.dwattr $C$DW$110, DW_AT_low_pc(_ZSt8_DestroyIcEvPT_)
	.dwattr $C$DW$110, DW_AT_high_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_ZSt8_DestroyIcEvPT_")
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_TI_begin_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$110, DW_AT_TI_begin_line(0x31)
	.dwattr $C$DW$110, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$110, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$110, DW_AT_decl_line(0x31)
	.dwattr $C$DW$110, DW_AT_decl_column(0x07)
	.dwattr $C$DW$110, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory",line 50,column 2,is_stmt,address _ZSt8_DestroyIcEvPT_,isa 0

	.dwfde $C$DW$CIE, _ZSt8_DestroyIcEvPT_
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("$P$T0")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("$P$T0")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$483)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg4]
;----------------------------------------------------------------------
;  49 | void _Destroy(char _FARQ *)                                            
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: std::_Destroy<char>(T1 *)                                   *
;*                                                                            *
;*   Regs Modified     : SP                                                   *
;*   Regs Used         : A4,B3,SP                                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
_ZSt8_DestroyIcEvPT_:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  50 | {       // destroy a char (do nothing)                                 
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 9
	.dwcfi	cfa_offset, 0
           SUB     .L2     SP,8,SP           ; |50| 
	.dwcfi	cfa_offset, 8
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("$P$T0")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("$P$T0")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$483)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg31 4]
           STW     .D2T1   A4,*+SP(4)        ; |50| 
	.dwpsn	file "C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory",line 51,column 2,is_stmt,isa 0
           ADD     .L2     8,SP,SP           ; |51| 
	.dwcfi	cfa_offset, 0
	.dwcfi	cfa_offset, 0
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return
           RET     .S2     B3                ; |51| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |51| 
	.dwattr $C$DW$110, DW_AT_TI_end_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$110, DW_AT_TI_end_line(0x33)
	.dwattr $C$DW$110, DW_AT_TI_end_column(0x02)
	.dwendentry
	.dwendtag $C$DW$110

	.sect	".text:_ZSt8_DestroyIwEvPT_"
	.clink
	.global	_ZSt8_DestroyIwEvPT_

$C$DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("_Destroy")
	.dwattr $C$DW$114, DW_AT_low_pc(_ZSt8_DestroyIwEvPT_)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_ZSt8_DestroyIwEvPT_")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_TI_begin_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x36)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$114, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$114, DW_AT_decl_line(0x36)
	.dwattr $C$DW$114, DW_AT_decl_column(0x07)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory",line 55,column 2,is_stmt,address _ZSt8_DestroyIwEvPT_,isa 0

	.dwfde $C$DW$CIE, _ZSt8_DestroyIwEvPT_
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("$P$T1")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("$P$T1")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$485)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg4]
;----------------------------------------------------------------------
;  54 | void _Destroy(wchar_t _FARQ *)                                         
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: std::_Destroy<wchar_t>(T1 *)                                *
;*                                                                            *
;*   Regs Modified     : SP                                                   *
;*   Regs Used         : A4,B3,SP                                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
_ZSt8_DestroyIwEvPT_:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  55 | {       // destroy a wchar_t (do nothing)                              
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 9
	.dwcfi	cfa_offset, 0
           SUB     .L2     SP,8,SP           ; |55| 
	.dwcfi	cfa_offset, 8
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("$P$T1")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("$P$T1")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$485)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg31 4]
           STW     .D2T1   A4,*+SP(4)        ; |55| 
	.dwpsn	file "C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory",line 56,column 2,is_stmt,isa 0
           ADD     .L2     8,SP,SP           ; |56| 
	.dwcfi	cfa_offset, 0
	.dwcfi	cfa_offset, 0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
           RET     .S2     B3                ; |56| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |56| 
	.dwattr $C$DW$114, DW_AT_TI_end_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x38)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x02)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text"
	.clink
	.global	_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("PreampCtrl_AlgorithmProcessFunction")
	.dwattr $C$DW$118, DW_AT_low_pc(_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$118, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$118, DW_AT_decl_line(0x25)
	.dwattr $C$DW$118, DW_AT_decl_column(0x01)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x68)
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 40,column 1,is_stmt,address _Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv,isa 0

	.dwfde $C$DW$CIE, _Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inInstancesBegin")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("inInstancesBegin")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$438)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg4]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("inInstancesEnd")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("inInstancesEnd")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg20]
;----------------------------------------------------------------------
;  37 | PreampCtrl_AlgorithmProcessFunction(                                   
;  38 | SPreampCtrl_Alg_Context* const   inInstancesBegin[],                   
;  39 | const void*                      inInstancesEnd)                       
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: PreampCtrl_AlgorithmProcessFunction(SPreampCtrl_Alg_Context *const *, const void *)*
;*                                                                            *
;*   Regs Modified     : A1,A3,A4,B0,B3,B4,B5,B6,B7,B8,B9,SP,B29,B30,B31      *
;*   Regs Used         : A1,A3,A4,B0,B3,B4,B5,B6,B7,B8,B9,SP,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 96 Auto + 4 Save = 100 byte                 *
;******************************************************************************
_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17
	.dwcfi	cfa_offset, 0
           STW     .D2T2   B3,*SP--(104)     ; |40| 
	.dwcfi	cfa_offset, 104
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("inInstancesBegin")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("inInstancesBegin")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$438)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg31 4]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("inInstancesEnd")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("inInstancesEnd")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_breg31 8]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("walk")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("walk")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$438)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg31 12]
;----------------------------------------------------------------------
;  41 | SPreampCtrl_Alg_Context* const* walk;                                  
;----------------------------------------------------------------------
           STW     .D2T2   B4,*+SP(8)        ; |40| 
           STW     .D2T1   A4,*+SP(4)        ; |40| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 42,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  42 | for (walk = inInstancesBegin; walk < inInstancesEnd; ++walk)           
;----------------------------------------------------------------------
           MV      .L2X    A4,B4
           STW     .D2T2   B4,*+SP(12)       ; |42| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 42,column 35,is_stmt,isa 0
           LDW     .D2T2   *+SP(8),B4        ; |42| 
           NOP             4
           CMPLTU  .L2X    A4,B4,B0          ; |42| 
   [!B0]   B       .S1     $C$L35            ; |42| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L35}        ; |42| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L2
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$2$B:
;          EXCLUSIVE CPU CYCLES: 136

$C$DW$124	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("instance")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$439)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg31 16]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("coefs")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("coefs")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$445)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg31 20]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("bypass")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("bypass")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg31 24]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("phaseAudio")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("phaseAudio")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_breg31 28]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("phaseM")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("phaseM")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_breg31 32]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("phaseS")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("phaseS")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_breg31 36]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("msDecode")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("msDecode")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg31 40]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("swapLR")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("swapLR")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_breg31 44]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("mono")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("mono")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg31 48]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("buffersize")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("buffersize")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$524)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg31 52]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("isStereo")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("isStereo")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_breg31 56]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("pdI0")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("pdI0")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$574)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_breg31 60]
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("pdO0")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("pdO0")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$579)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_breg31 64]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("t")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("t")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg31 68]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("meterTaps")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("meterTaps")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$579)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg31 72]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 44,column 47,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | SPreampCtrl_Alg_Context* AAX_RESTRICT instance = *walk;                
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A3       ; |44| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |44| 
           NOP             4
           STW     .D2T1   A3,*+SP(16)       ; |44| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 46,column 57,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | const SPreampCtrl_CoefsGain* const AAX_RESTRICT coefs = instance->mCoef
;     | sGainP;                                                                
;----------------------------------------------------------------------
           LDW     .D1T1   *+A3(4),A3        ; |46| 
           NOP             4
           STW     .D2T1   A3,*+SP(20)       ; |46| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 47,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | const int32_t   bypass      = *instance->mCtrlBypassP;                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |47| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |47| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |47| 
           NOP             4
           STW     .D2T1   A3,*+SP(24)       ; |47| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 48,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | const int32_t   phaseAudio  = coefs->mPhaseAudio;                      
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |48| 
           NOP             4
           LDW     .D1T1   *+A3(8),A3        ; |48| 
           NOP             4
           STW     .D2T1   A3,*+SP(28)       ; |48| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 49,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  49 | const int32_t   phaseM      = coefs->mPhaseM;                          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(20),A3       ; |49| 
           NOP             4
           LDW     .D1T1   *+A3(12),A3       ; |49| 
           NOP             4
           STW     .D2T1   A3,*+SP(32)       ; |49| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 50,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | const int32_t   phaseS      = coefs->mPhaseS;                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |50| 
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |50| 
           NOP             4
           STW     .D2T2   B4,*+SP(36)       ; |50| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 51,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | const int32_t   msDecode    = coefs->mMSDecode;                        
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |51| 
           NOP             4
           LDW     .D2T2   *+B4(24),B4       ; |51| 
           NOP             4
           STW     .D2T2   B4,*+SP(40)       ; |51| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 52,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | const int32_t   swapLR      = coefs->mSwapLR;                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |52| 
           NOP             4
           LDW     .D2T2   *+B4(20),B4       ; |52| 
           NOP             4
           STW     .D2T2   B4,*+SP(44)       ; |52| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 53,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | const int32_t   mono        = coefs->mMono;                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(20),B4       ; |53| 
           NOP             4
           LDW     .D2T2   *+B4(28),B4       ; |53| 
           NOP             4
           STW     .D2T2   B4,*+SP(48)       ; |53| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 54,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | const int32_t   buffersize  = *instance->mBufferSize;                  
;  56 | // nullptr → 0 für C++98                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |54| 
           NOP             4
           LDW     .D2T2   *+B4(16),B4       ; |54| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |54| 
           NOP             4
           STW     .D2T2   B4,*+SP(52)       ; |54| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 57,column 19,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | const int isStereo = (instance->mInputPP[1] != 0);                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |57| 
           ZERO    .L2     B4                ; |57| 
           NOP             3
           LDW     .D1T1   *+A3(8),A3        ; |57| 
           NOP             4
           LDW     .D1T1   *+A3(4),A1        ; |57| 
           NOP             4
   [!A1]   B       .S1     $C$L3             ; |57| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L3}         ; |57| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$3$B:
;          EXCLUSIVE CPU CYCLES: 1
           MVK     .S2     0x1,B4            ; |57| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$4$B:
;          EXCLUSIVE CPU CYCLES: 44
           STW     .D2T2   B4,*+SP(56)       ; |57| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 59,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | const float* const AAX_RESTRICT pdI0 = instance->mInputPP[0];          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |59| 
           NOP             4
           LDW     .D1T1   *+A3(8),A3        ; |59| 
           NOP             4
           LDW     .D1T1   *A3,A3            ; |59| 
           NOP             4
           STW     .D2T1   A3,*+SP(60)       ; |59| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 60,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | float* const AAX_RESTRICT       pdO0 = instance->mOutputPP[0];         
;  62 | int t;  // Schleifenvariable außerhalb deklarieren (C++98)            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |60| 
           NOP             4
           LDW     .D2T2   *+B4(12),B4       ; |60| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |60| 
           NOP             4
           STW     .D2T2   B4,*+SP(64)       ; |60| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 64,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  64 | if (bypass)                                                            
;  66 |     // Bypass: Signal 1:1 durchlassen                                  
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(24),B0       ; |64| 
           NOP             4
   [!B0]   B       .S1     $C$L7             ; |64| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L7}         ; |64| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$5$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 67,column 18,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |67| 
           STW     .D2T2   B4,*+SP(68)       ; |67| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 67,column 25,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |67| 
           LDW     .D2T2   *+SP(68),B5       ; |67| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |67| 
   [!B0]   B       .S1     $C$L5             ; |67| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L5}         ; |67| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$6$B:
;          EXCLUSIVE CPU CYCLES: 31
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 68,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | pdO0[t] = pdI0[t];                                                     
;----------------------------------------------------------------------

           MV      .L2     B5,B6
||         MV      .S2     B5,B4
||         LDW     .D2T2   *+SP(60),B5       ; |68| 

           LDW     .D2T2   *+SP(64),B7       ; |68| 
           NOP             3
           LDW     .D2T2   *+B5[B4],B4       ; |68| 
           NOP             4
           STW     .D2T2   B4,*+B7[B6]       ; |68| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 67,column 41,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |67| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |67| 
           STW     .D2T2   B4,*+SP(68)       ; |67| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 67,column 25,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |67| 
           LDW     .D2T2   *+SP(68),B5       ; |67| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |67| 
   [ B0]   B       .S1     $C$L4             ; |67| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L4}         ; |67| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$6$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$7$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 70,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | if (isStereo)                                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B0       ; |70| 
           NOP             4
   [!B0]   B       .S1     $C$L32            ; |70| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L32}        ; |70| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$8$B:
;          EXCLUSIVE CPU CYCLES: 47

$C$DW$140	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("pdI1")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("pdI1")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$574)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg31 76]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("pdO1")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("pdO1")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$579)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_breg31 80]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 72,column 49,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | const float* const AAX_RESTRICT pdI1 = instance->mInputPP[1];          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |72| 
           NOP             4
           LDW     .D1T1   *+A3(8),A3        ; |72| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |72| 
           NOP             4
           STW     .D2T1   A3,*+SP(76)       ; |72| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 73,column 49,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | float* const AAX_RESTRICT       pdO1 = instance->mOutputPP[1];         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |73| 
           NOP             4
           LDW     .D2T2   *+B4(12),B4       ; |73| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |73| 
           NOP             4
           STW     .D2T2   B4,*+SP(80)       ; |73| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 74,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |74| 
           STW     .D2T2   B4,*+SP(68)       ; |74| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 74,column 29,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |74| 
           LDW     .D2T2   *+SP(68),B5       ; |74| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |74| 
   [!B0]   B       .S1     $C$L32            ; |74| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L32}        ; |74| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$9$B:
;          EXCLUSIVE CPU CYCLES: 31
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 75,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | pdO1[t] = pdI1[t];                                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(76),B7       ; |75| 
           LDW     .D2T2   *+SP(80),B4       ; |75| 
           MV      .L2     B5,B6             ; |75| 
           NOP             2
           LDW     .D2T2   *+B7[B5],B5       ; |75| 
           NOP             4
           STW     .D2T2   B5,*+B4[B6]       ; |75| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 74,column 45,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |74| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |74| 
           STW     .D2T2   B4,*+SP(68)       ; |74| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 74,column 29,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |74| 
           LDW     .D2T2   *+SP(68),B5       ; |74| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |74| 
   [ B0]   B       .S1     $C$L6             ; |74| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L6}         ; |74| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$10$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwendtag $C$DW$140

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 77,column 9,is_stmt,isa 0
           B       .S1     $C$L32            ; |77| 
           NOP             5
           ; BRANCH OCCURS {$C$L32}          ; |77| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$10$E:
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$11$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 78,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | else if (!isStereo)                                                    
;  80 |     // ----------------------------------------------------------------
;  81 |     // Mono-Verarbeitung: nur PhaseAudio                               
;  82 |     // ----------------------------------------------------------------
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(56),B0       ; |78| 
           NOP             4
   [ B0]   B       .S1     $C$L11            ; |78| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L11}        ; |78| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$12$B:
;          EXCLUSIVE CPU CYCLES: 11

$C$DW$143	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("phase")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("phase")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg31 76]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 83,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | const float phase = phaseAudio ? -1.0f : 1.0f;                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(28),B0       ; |83| 
           NOP             4
   [!B0]   B       .S1     $C$L8             ; |83| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L8}         ; |83| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$13$B:
;          EXCLUSIVE CPU CYCLES: 6
           B       .S1     $C$L9             ; |83| 
           ZERO    .L1     A3                ; |83| 
           MVKH    .S1     0xbf800000,A3     ; |83| 
           MV      .L2X    A3,B4             ; |83| 
           NOP             2
           ; BRANCH OCCURS {$C$L9}           ; |83| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$13$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$14$B:
;          EXCLUSIVE CPU CYCLES: 3
           ZERO    .L1     A3                ; |83| 
           MVKH    .S1     0x3f800000,A3     ; |83| 
           MV      .L2X    A3,B4             ; |83| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$14$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$15$B:
;          EXCLUSIVE CPU CYCLES: 16
           STW     .D2T2   B4,*+SP(76)       ; |83| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 84,column 18,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |84| 
           STW     .D2T2   B4,*+SP(68)       ; |84| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 84,column 25,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |84| 
           LDW     .D2T2   *+SP(68),B5       ; |84| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |84| 
   [!B0]   B       .S1     $C$L32            ; |84| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L32}        ; |84| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$15$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$16$B:
;          EXCLUSIVE CPU CYCLES: 35
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 85,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | pdO0[t] = phase * pdI0[t];                                             
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(68),B5       ; |85| 
           LDW     .D2T2   *+SP(60),B6       ; |85| 
           LDW     .D2T2   *+SP(76),B4       ; |85| 
           LDW     .D2T2   *+SP(64),B31      ; |85| 
           NOP             2
           LDW     .D2T2   *+B6[B5],B7       ; |85| 
           NOP             4
           MPYSP   .M2     B7,B4,B4          ; |85| 
           NOP             3
           STW     .D2T2   B4,*+B31[B5]      ; |85| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 84,column 41,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |84| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |84| 
           STW     .D2T2   B4,*+SP(68)       ; |84| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 84,column 25,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B5       ; |84| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |84| 
   [ B0]   B       .S1     $C$L10            ; |84| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L10}        ; |84| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$17$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwendtag $C$DW$143

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 86,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | else                                                                   
;  89 |     // ----------------------------------------------------------------
;  90 |     // Stereo-Verarbeitung                                             
;  91 |     // Signalkette: [PhaseM] → [PhaseS] → [MSDecode] → [SwapLR] �
;     | �� [Mono]                                                              
;  92 |     // ----------------------------------------------------------------
;----------------------------------------------------------------------
           B       .S1     $C$L32            ; |86| 
           NOP             5
           ; BRANCH OCCURS {$C$L32}          ; |86| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$17$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$18$B:
;          EXCLUSIVE CPU CYCLES: 43

$C$DW$145	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("pdI1")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("pdI1")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$574)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg31 76]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("pdO1")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("pdO1")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$579)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg31 80]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("pm")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("pm")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg31 84]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("ps")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("ps")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg31 88]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 93,column 45,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | const float* const AAX_RESTRICT pdI1 = instance->mInputPP[1];          
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(16),A3       ; |93| 
           NOP             4
           LDW     .D1T1   *+A3(8),A3        ; |93| 
           NOP             4
           LDW     .D1T1   *+A3(4),A3        ; |93| 
           NOP             4
           STW     .D2T1   A3,*+SP(76)       ; |93| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 94,column 45,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | float* const AAX_RESTRICT       pdO1 = instance->mOutputPP[1];         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |94| 
           NOP             4
           LDW     .D2T2   *+B4(12),B4       ; |94| 
           NOP             4
           LDW     .D2T2   *+B4(4),B4        ; |94| 
           NOP             4
           STW     .D2T2   B4,*+SP(80)       ; |94| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 96,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | const float pm = phaseM ? -1.0f : 1.0f;                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(32),B0       ; |96| 
           NOP             4
   [!B0]   B       .S1     $C$L12            ; |96| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L12}        ; |96| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$19$B:
;          EXCLUSIVE CPU CYCLES: 6
           B       .S1     $C$L13            ; |96| 
           ZERO    .L1     A3                ; |96| 
           MVKH    .S1     0xbf800000,A3     ; |96| 
           MV      .L2X    A3,B4             ; |96| 
           NOP             2
           ; BRANCH OCCURS {$C$L13}          ; |96| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$19$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$20$B:
;          EXCLUSIVE CPU CYCLES: 3
           ZERO    .L1     A3                ; |96| 
           MVKH    .S1     0x3f800000,A3     ; |96| 
           MV      .L2X    A3,B4             ; |96| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$20$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$21$B:
;          EXCLUSIVE CPU CYCLES: 12
           STW     .D2T2   B4,*+SP(84)       ; |96| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 97,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | const float ps = phaseS ? -1.0f : 1.0f;                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(36),B0       ; |97| 
           NOP             4
   [!B0]   B       .S1     $C$L14            ; |97| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L14}        ; |97| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$22$B:
;          EXCLUSIVE CPU CYCLES: 6
           B       .S1     $C$L15            ; |97| 
           ZERO    .L1     A3                ; |97| 
           MVKH    .S1     0xbf800000,A3     ; |97| 
           MV      .L2X    A3,B4             ; |97| 
           NOP             2
           ; BRANCH OCCURS {$C$L15}          ; |97| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$22$E:
;** --------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$23$B:
;          EXCLUSIVE CPU CYCLES: 3
           ZERO    .L1     A3                ; |97| 
           MVKH    .S1     0x3f800000,A3     ; |97| 
           MV      .L2X    A3,B4             ; |97| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$23$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$24$B:
;          EXCLUSIVE CPU CYCLES: 12
           STW     .D2T2   B4,*+SP(88)       ; |97| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 99,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | if (msDecode)                                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(40),B0       ; |99| 
           NOP             4
   [!B0]   B       .S1     $C$L23            ; |99| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L23}        ; |99| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$25$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 101,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | if (swapLR)                                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B0       ; |101| 
           NOP             4
   [!B0]   B       .S1     $C$L19            ; |101| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L19}        ; |101| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$26$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 103,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | if (mono)                                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(48),B0       ; |103| 
           NOP             4
   [!B0]   B       .S1     $C$L17            ; |103| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L17}        ; |103| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$26$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$27$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 105,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |105| 
           STW     .D2T2   B4,*+SP(68)       ; |105| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 105,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |105| 
           LDW     .D2T2   *+SP(68),B5       ; |105| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |105| 
   [!B0]   B       .S1     $C$L31            ; |105| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |105| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$27$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$28$B:
;          EXCLUSIVE CPU CYCLES: 50

$C$DW$150	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_breg31 92]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 107,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | const float val = 0.5f * pm * pdI0[t];                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B6       ; |107| 
           LDW     .D2T2   *+SP(84),B4       ; |107| 
           ZERO    .L1     A3                ; |107| 
           MVKH    .S1     0x3f000000,A3     ; |107| 
           NOP             1
           LDW     .D2T2   *+B6[B5],B5       ; |107| 
           MPYSP   .M2X    B4,A3,B4          ; |107| 
           NOP             3
           MPYSP   .M2     B5,B4,B4          ; |107| 
           NOP             3
           STW     .D2T2   B4,*+SP(92)       ; |107| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 108,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | pdO0[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(64),A4       ; |108| 
           LDW     .D2T1   *+SP(68),A3       ; |108| 
           NOP             4
           STW     .D1T2   B4,*+A4[A3]       ; |108| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 109,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | pdO1[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(68),A3       ; |109| 
           LDW     .D2T1   *+SP(80),A4       ; |109| 
           LDW     .D2T2   *+SP(92),B4       ; |109| 
           NOP             4
           STW     .D1T2   B4,*+A4[A3]       ; |109| 
	.dwendtag $C$DW$150

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 105,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |105| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |105| 
           STW     .D2T2   B4,*+SP(68)       ; |105| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 105,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |105| 
           LDW     .D2T2   *+SP(68),B5       ; |105| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |105| 
   [ B0]   B       .S1     $C$L16            ; |105| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L16}        ; |105| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$28$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$29$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 111,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 112 | else                                                                   
; 114 |     // M/S → Swap                                                    
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |111| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |111| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$29$E:
;** --------------------------------------------------------------------------*
$C$L17:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$30$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 115,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |115| 
           STW     .D2T2   B4,*+SP(68)       ; |115| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 115,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |115| 
           LDW     .D2T2   *+SP(68),B5       ; |115| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |115| 
   [!B0]   B       .S1     $C$L31            ; |115| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |115| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$30$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L18:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$31$B:
;          EXCLUSIVE CPU CYCLES: 80

$C$DW$152	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("m")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("m")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_breg31 92]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg31 96]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 117,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | const float m = pm * pdI0[t];                                          
;----------------------------------------------------------------------

           MV      .L2     B5,B4
||         LDW     .D2T2   *+SP(60),B5       ; |117| 

           LDW     .D2T2   *+SP(84),B6       ; |117| 
           NOP             3
           LDW     .D2T2   *+B5[B4],B4       ; |117| 
           NOP             4
           MPYSP   .M2     B4,B6,B4          ; |117| 
           NOP             3
           STW     .D2T2   B4,*+SP(92)       ; |117| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 118,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | const float s = ps * pdI1[t];                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(68),B4       ; |118| 
           LDW     .D2T2   *+SP(76),B6       ; |118| 
           LDW     .D2T2   *+SP(88),B5       ; |118| 
           NOP             3
           LDW     .D2T2   *+B6[B4],B4       ; |118| 
           NOP             4
           MPYSP   .M2     B4,B5,B4          ; |118| 
           NOP             3
           STW     .D2T2   B4,*+SP(96)       ; |118| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 119,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | pdO0[t] = 0.5f * (m - s);                                              
;----------------------------------------------------------------------

           MV      .L2     B4,B5
||         LDW     .D2T2   *+SP(92),B4       ; |119| 

           ZERO    .L2     B30               ; |119| 
           LDW     .D2T2   *+SP(64),B7       ; |119| 
           MVKH    .S2     0x3f000000,B30    ; |119| 
           LDW     .D2T2   *+SP(68),B31      ; |119| 
           SUBSP   .L2     B4,B5,B6          ; |119| 
           NOP             3
           MPYSP   .M2     B6,B30,B4         ; |119| 
           NOP             3
           STW     .D2T2   B4,*+B7[B31]      ; |119| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 120,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | pdO1[t] = 0.5f * (m + s);                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(92),B5       ; |120| 
           LDW     .D2T2   *+SP(96),B4       ; |120| 
           ZERO    .L1     A3                ; |120| 
           LDW     .D2T2   *+SP(80),B29      ; |120| 
           MVKH    .S1     0x3f000000,A3     ; |120| 
           LDW     .D2T2   *+SP(68),B6       ; |120| 
           ADDSP   .L2     B4,B5,B5          ; |120| 
           NOP             3
           MPYSP   .M1X    B5,A3,A3          ; |120| 
           NOP             3
           STW     .D2T1   A3,*+B29[B6]      ; |120| 
	.dwendtag $C$DW$152

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 115,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |115| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |115| 
           STW     .D2T2   B4,*+SP(68)       ; |115| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 115,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |115| 
           LDW     .D2T2   *+SP(68),B5       ; |115| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |115| 
   [ B0]   B       .S1     $C$L18            ; |115| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L18}        ; |115| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$31$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$32$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 123,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | else                                                                   
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |123| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |123| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$32$E:
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$33$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 126,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | if (mono)                                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(48),B0       ; |126| 
           NOP             4
   [!B0]   B       .S1     $C$L21            ; |126| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L21}        ; |126| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$33$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$34$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 128,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 128 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |128| 
           STW     .D2T2   B4,*+SP(68)       ; |128| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 128,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |128| 
           LDW     .D2T2   *+SP(68),B5       ; |128| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |128| 
   [!B0]   B       .S1     $C$L31            ; |128| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |128| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$34$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$35$B:
;          EXCLUSIVE CPU CYCLES: 51

$C$DW$155	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_breg31 92]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 130,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | const float val = 0.5f * pm * pdI0[t];                                 
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B5       ; |130| 
           LDW     .D2T2   *+SP(68),B4       ; |130| 
           LDW     .D2T2   *+SP(84),B6       ; |130| 
           ZERO    .L1     A3                ; |130| 
           MVKH    .S1     0x3f000000,A3     ; |130| 
           NOP             1
           LDW     .D2T2   *+B5[B4],B4       ; |130| 
           MPYSP   .M2X    B6,A3,B5          ; |130| 
           NOP             3
           MPYSP   .M2     B4,B5,B4          ; |130| 
           NOP             3
           STW     .D2T2   B4,*+SP(92)       ; |130| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 131,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | pdO0[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(64),A4       ; |131| 
           LDW     .D2T1   *+SP(68),A3       ; |131| 
           NOP             4
           STW     .D1T2   B4,*+A4[A3]       ; |131| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 132,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | pdO1[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(68),A3       ; |132| 
           LDW     .D2T1   *+SP(80),A4       ; |132| 
           LDW     .D2T2   *+SP(92),B4       ; |132| 
           NOP             4
           STW     .D1T2   B4,*+A4[A3]       ; |132| 
	.dwendtag $C$DW$155

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 128,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |128| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |128| 
           STW     .D2T2   B4,*+SP(68)       ; |128| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 128,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |128| 
           LDW     .D2T2   *+SP(68),B5       ; |128| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |128| 
   [ B0]   B       .S1     $C$L20            ; |128| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L20}        ; |128| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$35$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$36$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 134,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | else                                                                   
; 137 |     // M/S, kein Swap, kein Mono                                       
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |134| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |134| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$36$E:
;** --------------------------------------------------------------------------*
$C$L21:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$37$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 138,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |138| 
           STW     .D2T2   B4,*+SP(68)       ; |138| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 138,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |138| 
           LDW     .D2T2   *+SP(68),B5       ; |138| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |138| 
   [!B0]   B       .S1     $C$L31            ; |138| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |138| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$37$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L22:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$38$B:
;          EXCLUSIVE CPU CYCLES: 80

$C$DW$157	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("m")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("m")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_breg31 92]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("s")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg31 96]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 140,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | const float m = pm * pdI0[t];                                          
;----------------------------------------------------------------------

           MV      .L2     B5,B4
||         LDW     .D2T2   *+SP(60),B5       ; |140| 

           LDW     .D2T2   *+SP(84),B6       ; |140| 
           NOP             3
           LDW     .D2T2   *+B5[B4],B4       ; |140| 
           NOP             4
           MPYSP   .M2     B4,B6,B4          ; |140| 
           NOP             3
           STW     .D2T2   B4,*+SP(92)       ; |140| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 141,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | const float s = ps * pdI1[t];                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(68),B4       ; |141| 
           LDW     .D2T2   *+SP(76),B6       ; |141| 
           LDW     .D2T2   *+SP(88),B5       ; |141| 
           NOP             3
           LDW     .D2T2   *+B6[B4],B4       ; |141| 
           NOP             4
           MPYSP   .M2     B4,B5,B4          ; |141| 
           NOP             3
           STW     .D2T2   B4,*+SP(96)       ; |141| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 142,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | pdO0[t] = 0.5f * (m + s);                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(92),B5       ; |142| 
           ZERO    .L2     B30               ; |142| 
           LDW     .D2T2   *+SP(64),B7       ; |142| 
           MVKH    .S2     0x3f000000,B30    ; |142| 
           LDW     .D2T2   *+SP(68),B31      ; |142| 
           ADDSP   .L2     B4,B5,B6          ; |142| 
           NOP             3
           MPYSP   .M2     B6,B30,B4         ; |142| 
           NOP             3
           STW     .D2T2   B4,*+B7[B31]      ; |142| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 143,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | pdO1[t] = 0.5f * (m - s);                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(92),B4       ; |143| 
           LDW     .D2T2   *+SP(96),B5       ; |143| 
           ZERO    .L1     A3                ; |143| 
           LDW     .D2T2   *+SP(80),B29      ; |143| 
           MVKH    .S1     0x3f000000,A3     ; |143| 
           LDW     .D2T2   *+SP(68),B6       ; |143| 
           SUBSP   .L2     B4,B5,B5          ; |143| 
           NOP             3
           MPYSP   .M1X    B5,A3,A3          ; |143| 
           NOP             3
           STW     .D2T1   A3,*+B29[B6]      ; |143| 
	.dwendtag $C$DW$157

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 138,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |138| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |138| 
           STW     .D2T2   B4,*+SP(68)       ; |138| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 138,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |138| 
           LDW     .D2T2   *+SP(68),B5       ; |138| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |138| 
   [ B0]   B       .S1     $C$L22            ; |138| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L22}        ; |138| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$38$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$39$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 147,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | else                                                                   
; 150 |     // Kein M/S-Decoder                                                
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |147| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |147| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$39$E:
;** --------------------------------------------------------------------------*
$C$L23:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$40$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 151,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | if (swapLR)                                                            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(44),B0       ; |151| 
           NOP             4
   [!B0]   B       .S1     $C$L27            ; |151| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L27}        ; |151| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$40$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$41$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 153,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | if (mono)                                                              
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(48),B0       ; |153| 
           NOP             4
   [!B0]   B       .S1     $C$L25            ; |153| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L25}        ; |153| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$41$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$42$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 155,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |155| 
           STW     .D2T2   B4,*+SP(68)       ; |155| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 155,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |155| 
           LDW     .D2T2   *+SP(68),B5       ; |155| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |155| 
   [!B0]   B       .S1     $C$L31            ; |155| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |155| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$42$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L24:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$43$B:
;          EXCLUSIVE CPU CYCLES: 58

$C$DW$160	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_breg31 92]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 157,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 157 | const float val = 0.5f * (ps * pdI1[t] + pm * pdI0[t]);                
;----------------------------------------------------------------------

           MV      .L2     B5,B8
||         MV      .S2     B5,B4
||         LDW     .D2T2   *+SP(76),B5       ; |157| 

           LDW     .D2T2   *+SP(60),B9       ; |157| 
           LDW     .D2T2   *+SP(88),B6       ; |157| 
           LDW     .D2T2   *+SP(84),B7       ; |157| 
           ZERO    .L1     A3                ; |157| 
           LDW     .D2T2   *+B5[B4],B4       ; |157| 
           LDW     .D2T2   *+B9[B8],B5       ; |157| 
           MVKH    .S1     0x3f000000,A3     ; |157| 
           NOP             2
           MPYSP   .M2     B4,B6,B4          ; |157| 
           MPYSP   .M2     B5,B7,B5          ; |157| 
           NOP             3
           ADDSP   .L2     B5,B4,B4          ; |157| 
           NOP             3
           MPYSP   .M2X    B4,A3,B4          ; |157| 
           NOP             3
           STW     .D2T2   B4,*+SP(92)       ; |157| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 158,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | pdO0[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(64),A4       ; |158| 
           MV      .L1X    B8,A3
           NOP             3
           STW     .D1T2   B4,*+A4[A3]       ; |158| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 159,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | pdO1[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(68),A3       ; |159| 
           LDW     .D2T1   *+SP(80),A4       ; |159| 
           LDW     .D2T2   *+SP(92),B4       ; |159| 
           NOP             4
           STW     .D1T2   B4,*+A4[A3]       ; |159| 
	.dwendtag $C$DW$160

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 155,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |155| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |155| 
           STW     .D2T2   B4,*+SP(68)       ; |155| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 155,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |155| 
           LDW     .D2T2   *+SP(68),B5       ; |155| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |155| 
   [ B0]   B       .S1     $C$L24            ; |155| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L24}        ; |155| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$43$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$44$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 161,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | else                                                                   
; 164 |     // Nur Swap + Phase                                                
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |161| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |161| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$44$E:
;** --------------------------------------------------------------------------*
$C$L25:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$45$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 165,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |165| 
           STW     .D2T2   B4,*+SP(68)       ; |165| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 165,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |165| 
           LDW     .D2T2   *+SP(68),B5       ; |165| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |165| 
   [!B0]   B       .S1     $C$L31            ; |165| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |165| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$45$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L26:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$46$B:
;          EXCLUSIVE CPU CYCLES: 51
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 167,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | pdO0[t] = ps * pdI1[t];                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(76),B6       ; |167| 
           LDW     .D2T2   *+SP(88),B4       ; |167| 
           LDW     .D2T2   *+SP(64),B31      ; |167| 
           NOP             2
           LDW     .D2T2   *+B6[B5],B7       ; |167| 
           NOP             4
           MPYSP   .M2     B7,B4,B4          ; |167| 
           NOP             3
           STW     .D2T2   B4,*+B31[B5]      ; |167| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 168,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 168 | pdO1[t] = pm * pdI0[t];                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(68),B5       ; |168| 
           LDW     .D2T2   *+SP(60),B6       ; |168| 
           LDW     .D2T2   *+SP(84),B4       ; |168| 
           LDW     .D2T2   *+SP(80),B30      ; |168| 
           NOP             2
           LDW     .D2T2   *+B6[B5],B7       ; |168| 
           NOP             4
           MPYSP   .M2     B7,B4,B4          ; |168| 
           NOP             3
           STW     .D2T2   B4,*+B30[B5]      ; |168| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 165,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |165| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |165| 
           STW     .D2T2   B4,*+SP(68)       ; |165| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 165,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |165| 
           LDW     .D2T2   *+SP(68),B5       ; |165| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |165| 
   [ B0]   B       .S1     $C$L26            ; |165| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L26}        ; |165| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$46$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$47$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 171,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | else                                                                   
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |171| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |171| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$47$E:
;** --------------------------------------------------------------------------*
$C$L27:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$48$B:
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 174,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | if (mono)                                                              
; 176 |     // Nur Mono + Phase                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(48),B0       ; |174| 
           NOP             4
   [!B0]   B       .S1     $C$L29            ; |174| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L29}        ; |174| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$48$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$49$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 177,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |177| 
           STW     .D2T2   B4,*+SP(68)       ; |177| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 177,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |177| 
           LDW     .D2T2   *+SP(68),B5       ; |177| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |177| 
   [!B0]   B       .S1     $C$L31            ; |177| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |177| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$49$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L28:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$50$B:
;          EXCLUSIVE CPU CYCLES: 58

$C$DW$162	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("val")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_breg31 92]
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 179,column 41,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | const float val = 0.5f * (pm * pdI0[t] + ps * pdI1[t]);                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(76),B7       ; |179| 
           LDW     .D2T2   *+SP(60),B6       ; |179| 
           LDW     .D2T2   *+SP(88),B8       ; |179| 
           LDW     .D2T2   *+SP(84),B4       ; |179| 
           MV      .L2     B5,B9
           LDW     .D2T2   *+B7[B5],B5       ; |179| 
           LDW     .D2T2   *+B6[B9],B6       ; |179| 
           ZERO    .L1     A3                ; |179| 
           MVKH    .S1     0x3f000000,A3     ; |179| 
           NOP             1
           MPYSP   .M2     B5,B8,B5          ; |179| 
           MPYSP   .M2     B6,B4,B4          ; |179| 
           NOP             3
           ADDSP   .L2     B5,B4,B4          ; |179| 
           NOP             3
           MPYSP   .M2X    B4,A3,B4          ; |179| 
           NOP             3
           STW     .D2T2   B4,*+SP(92)       ; |179| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 180,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | pdO0[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(64),A4       ; |180| 
           MV      .L1X    B9,A3
           NOP             3
           STW     .D1T2   B4,*+A4[A3]       ; |180| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 181,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | pdO1[t] = val;                                                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(68),A3       ; |181| 
           LDW     .D2T1   *+SP(80),A4       ; |181| 
           LDW     .D2T2   *+SP(92),B4       ; |181| 
           NOP             4
           STW     .D1T2   B4,*+A4[A3]       ; |181| 
	.dwendtag $C$DW$162

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 177,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |177| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |177| 
           STW     .D2T2   B4,*+SP(68)       ; |177| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 177,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |177| 
           LDW     .D2T2   *+SP(68),B5       ; |177| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |177| 
   [ B0]   B       .S1     $C$L28            ; |177| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L28}        ; |177| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$50$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$51$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 183,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | else                                                                   
; 186 |     // Nur Phase                                                       
;----------------------------------------------------------------------
           B       .S1     $C$L31            ; |183| 
           NOP             5
           ; BRANCH OCCURS {$C$L31}          ; |183| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$51$E:
;** --------------------------------------------------------------------------*
$C$L29:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$52$B:
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 187,column 30,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |187| 
           STW     .D2T2   B4,*+SP(68)       ; |187| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 187,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |187| 
           LDW     .D2T2   *+SP(68),B5       ; |187| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |187| 
   [!B0]   B       .S1     $C$L31            ; |187| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L31}        ; |187| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$52$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L30:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$53$B:
;          EXCLUSIVE CPU CYCLES: 51
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 189,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | pdO0[t] = pm * pdI0[t];                                                
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(60),B6       ; |189| 
           LDW     .D2T2   *+SP(84),B4       ; |189| 
           LDW     .D2T2   *+SP(64),B7       ; |189| 
           LDW     .D2T2   *+SP(68),B31      ; |189| 
           NOP             1
           LDW     .D2T2   *+B6[B5],B5       ; |189| 
           NOP             4
           MPYSP   .M2     B5,B4,B4          ; |189| 
           NOP             3
           STW     .D2T2   B4,*+B7[B31]      ; |189| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 190,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | pdO1[t] = ps * pdI1[t];                                                
; 197 | // Metering – PreampCtrl_MaxF statt std::max (C++98-kompatibel)      
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(76),B6       ; |190| 
           LDW     .D2T2   *+SP(68),B5       ; |190| 
           LDW     .D2T2   *+SP(88),B4       ; |190| 
           LDW     .D2T2   *+SP(68),B30      ; |190| 
           LDW     .D2T2   *+SP(80),B7       ; |190| 
           NOP             1
           LDW     .D2T2   *+B6[B5],B5       ; |190| 
           NOP             4
           MPYSP   .M2     B5,B4,B4          ; |190| 
           NOP             3
           STW     .D2T2   B4,*+B7[B30]      ; |190| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 187,column 53,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |187| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |187| 
           STW     .D2T2   B4,*+SP(68)       ; |187| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 187,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |187| 
           LDW     .D2T2   *+SP(68),B5       ; |187| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |187| 
   [ B0]   B       .S1     $C$L30            ; |187| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L30}        ; |187| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$53$E:
;** --------------------------------------------------------------------------*
$C$L31:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$54$B:
	.dwendtag $C$DW$145

$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$54$E:
;** --------------------------------------------------------------------------*
$C$L32:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$55$B:
;          EXCLUSIVE CPU CYCLES: 31
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 198,column 35,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | float* const AAX_RESTRICT meterTaps = *instance->mMetersPP;            
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B4       ; |198| 
           NOP             4
           LDW     .D2T2   *+B4(20),B4       ; |198| 
           NOP             4
           LDW     .D2T2   *B4,B4            ; |198| 
           NOP             4
           STW     .D2T2   B4,*+SP(72)       ; |198| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 199,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 199 | for (t = 0; t < buffersize; t++)                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |199| 
           STW     .D2T2   B4,*+SP(68)       ; |199| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 199,column 21,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |199| 
           LDW     .D2T2   *+SP(68),B5       ; |199| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |199| 
   [!B0]   B       .S1     $C$L34            ; |199| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L34}        ; |199| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$55$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L33:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$56$B:
;          EXCLUSIVE CPU CYCLES: 60
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 201,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | meterTaps[eMeterTap_PreGain]  = PreampCtrl_MaxF(fabsf(pdI0[t]), meterTa
;     | ps[eMeterTap_PreGain]);                                                
;----------------------------------------------------------------------

           MV      .L2     B5,B4
||         LDW     .D2T2   *+SP(60),B5       ; |201| 

           LDW     .D2T1   *+SP(72),A3       ; |201| 
           MVKL    .S2     $C$RL0,B3         ; |201| 
           MVKH    .S2     $C$RL0,B3         ; |201| 
           NOP             1
           LDW     .D2T2   *+B5[B4],B4       ; |201| 
           NOP             3
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_Z15PreampCtrl_MaxFff")
	.dwattr $C$DW$164, DW_AT_TI_call
           CALL    .S1     _Z15PreampCtrl_MaxFff ; |201| 

           ABSSP   .S2     B4,B5             ; |201| 
||         LDW     .D1T2   *A3,B4            ; |201| 

           MV      .L1X    B5,A4             ; |201| 
           NOP             3
$C$RL0:    ; CALL OCCURS {_Z15PreampCtrl_MaxFff} {0}  ; |201| 
           LDW     .D2T2   *+SP(72),B4       ; |201| 
           NOP             4
           STW     .D2T1   A4,*B4            ; |201| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 202,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | meterTaps[eMeterTap_PostGain] = PreampCtrl_MaxF(fabsf(pdO0[t]), meterTa
;     | ps[eMeterTap_PostGain]);                                               
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(64),B6       ; |202| 
           LDW     .D2T2   *+SP(68),B5       ; |202| 
           LDW     .D2T2   *+SP(72),B4       ; |202| 
           MVKL    .S2     $C$RL1,B3         ; |202| 
           MVKH    .S2     $C$RL1,B3         ; |202| 
           NOP             1
           LDW     .D2T2   *+B6[B5],B5       ; |202| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_Z15PreampCtrl_MaxFff")
	.dwattr $C$DW$165, DW_AT_TI_call
           CALL    .S1     _Z15PreampCtrl_MaxFff ; |202| 
           LDW     .D2T2   *+B4(4),B4        ; |202| 
           NOP             2
           ABSSP   .S2     B5,B5             ; |202| 
           MV      .L1X    B5,A4             ; |202| 
$C$RL1:    ; CALL OCCURS {_Z15PreampCtrl_MaxFff} {0}  ; |202| 
           LDW     .D2T2   *+SP(72),B4       ; |202| 
           NOP             4
           STW     .D2T1   A4,*+B4(4)        ; |202| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 199,column 37,is_stmt,isa 0
           LDW     .D2T2   *+SP(68),B4       ; |199| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |199| 
           STW     .D2T2   B4,*+SP(68)       ; |199| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 199,column 21,is_stmt,isa 0
           LDW     .D2T2   *+SP(52),B4       ; |199| 
           LDW     .D2T2   *+SP(68),B5       ; |199| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |199| 
   [ B0]   B       .S1     $C$L33            ; |199| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L33}        ; |199| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$56$E:
;** --------------------------------------------------------------------------*
$C$L34:    
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$57$B:
;          EXCLUSIVE CPU CYCLES: 19
	.dwendtag $C$DW$124

	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 42,column 58,is_stmt,isa 0
           LDW     .D2T2   *+SP(12),B4       ; |42| 
           NOP             4
           ADD     .L2     4,B4,B4           ; |42| 
           STW     .D2T2   B4,*+SP(12)       ; |42| 
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 42,column 35,is_stmt,isa 0
           LDW     .D2T2   *+SP(8),B5        ; |42| 
           NOP             4
           CMPLTU  .L2     B4,B5,B0          ; |42| 
   [ B0]   B       .S1     $C$L2             ; |42| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L2}         ; |42| 
$C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$57$E:
;** --------------------------------------------------------------------------*
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 205,column 1,is_stmt,isa 0
;** --------------------------------------------------------------------------*
$C$L35:    
;          EXCLUSIVE CPU CYCLES: 11
           LDW     .D2T2   *++SP(104),B3     ; |205| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_return
           RET     .S2     B3                ; |205| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |205| 

$C$DW$167	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$167, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L2:1:1784184143")
	.dwattr $C$DW$167, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x2a)
	.dwattr $C$DW$167, DW_AT_TI_end_line(0xcc)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$2$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$2$E)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$48$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$48$E)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$40$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$40$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$41$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$41$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$33$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$33$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$18$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$18$E)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$19$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$19$E)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$20$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$20$E)
$C$DW$176	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$176, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$21$B)
	.dwattr $C$DW$176, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$21$E)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$22$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$22$E)
$C$DW$178	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$178, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$23$B)
	.dwattr $C$DW$178, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$23$E)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$24$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$24$E)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$25$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$25$E)
$C$DW$181	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$181, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$26$B)
	.dwattr $C$DW$181, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$26$E)
$C$DW$182	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$182, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$27$B)
	.dwattr $C$DW$182, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$27$E)
$C$DW$183	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$183, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$29$B)
	.dwattr $C$DW$183, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$29$E)
$C$DW$184	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$184, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$30$B)
	.dwattr $C$DW$184, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$30$E)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$32$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$32$E)
$C$DW$186	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$186, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$34$B)
	.dwattr $C$DW$186, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$34$E)
$C$DW$187	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$187, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$36$B)
	.dwattr $C$DW$187, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$36$E)
$C$DW$188	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$188, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$37$B)
	.dwattr $C$DW$188, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$37$E)
$C$DW$189	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$189, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$39$B)
	.dwattr $C$DW$189, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$39$E)
$C$DW$190	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$190, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$42$B)
	.dwattr $C$DW$190, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$42$E)
$C$DW$191	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$191, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$44$B)
	.dwattr $C$DW$191, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$44$E)
$C$DW$192	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$192, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$45$B)
	.dwattr $C$DW$192, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$45$E)
$C$DW$193	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$193, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$47$B)
	.dwattr $C$DW$193, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$47$E)
$C$DW$194	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$194, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$49$B)
	.dwattr $C$DW$194, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$49$E)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$51$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$51$E)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$52$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$52$E)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$11$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$11$E)
$C$DW$198	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$198, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$12$B)
	.dwattr $C$DW$198, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$12$E)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$13$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$13$E)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$14$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$14$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$3$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$3$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$4$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$4$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$5$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$5$E)
$C$DW$204	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$204, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$7$B)
	.dwattr $C$DW$204, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$7$E)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$8$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$8$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$10$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$10$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$15$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$15$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$17$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$17$E)
$C$DW$209	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$209, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$54$B)
	.dwattr $C$DW$209, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$54$E)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$55$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$55$E)
$C$DW$211	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$211, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$57$B)
	.dwattr $C$DW$211, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$57$E)

$C$DW$212	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$212, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L28:2:1784184143")
	.dwattr $C$DW$212, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$212, DW_AT_TI_begin_line(0xb1)
	.dwattr $C$DW$212, DW_AT_TI_end_line(0xb6)
$C$DW$213	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$213, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$50$B)
	.dwattr $C$DW$213, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$50$E)
	.dwendtag $C$DW$212


$C$DW$214	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$214, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L26:2:1784184143")
	.dwattr $C$DW$214, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$214, DW_AT_TI_begin_line(0xa5)
	.dwattr $C$DW$214, DW_AT_TI_end_line(0xa9)
$C$DW$215	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$215, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$46$B)
	.dwattr $C$DW$215, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$46$E)
	.dwendtag $C$DW$214


$C$DW$216	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$216, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L24:2:1784184143")
	.dwattr $C$DW$216, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$216, DW_AT_TI_begin_line(0x9b)
	.dwattr $C$DW$216, DW_AT_TI_end_line(0xa0)
$C$DW$217	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$217, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$43$B)
	.dwattr $C$DW$217, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$43$E)
	.dwendtag $C$DW$216


$C$DW$218	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$218, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L22:2:1784184143")
	.dwattr $C$DW$218, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x8a)
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x90)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$38$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$38$E)
	.dwendtag $C$DW$218


$C$DW$220	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$220, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L20:2:1784184143")
	.dwattr $C$DW$220, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x85)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$35$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$35$E)
	.dwendtag $C$DW$220


$C$DW$222	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$222, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L18:2:1784184143")
	.dwattr $C$DW$222, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$222, DW_AT_TI_begin_line(0x73)
	.dwattr $C$DW$222, DW_AT_TI_end_line(0x79)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$31$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$31$E)
	.dwendtag $C$DW$222


$C$DW$224	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$224, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L16:2:1784184143")
	.dwattr $C$DW$224, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x69)
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x6e)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$28$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$28$E)
	.dwendtag $C$DW$224


$C$DW$226	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$226, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L30:2:1784184143")
	.dwattr $C$DW$226, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$226, DW_AT_TI_begin_line(0xbb)
	.dwattr $C$DW$226, DW_AT_TI_end_line(0xbf)
$C$DW$227	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$227, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$53$B)
	.dwattr $C$DW$227, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$53$E)
	.dwendtag $C$DW$226


$C$DW$228	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$228, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L10:2:1784184143")
	.dwattr $C$DW$228, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x54)
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x55)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$16$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$16$E)
	.dwendtag $C$DW$228


$C$DW$230	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$230, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L6:2:1784184143")
	.dwattr $C$DW$230, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$230, DW_AT_TI_begin_line(0x4a)
	.dwattr $C$DW$230, DW_AT_TI_end_line(0x4b)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$9$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$9$E)
	.dwendtag $C$DW$230


$C$DW$232	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$232, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L4:2:1784184143")
	.dwattr $C$DW$232, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$232, DW_AT_TI_begin_line(0x43)
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x44)
$C$DW$233	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$233, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$6$B)
	.dwattr $C$DW$233, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$6$E)
	.dwendtag $C$DW$232


$C$DW$234	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$234, DW_AT_name("C:\dev\AAX-DSP\PreampCtrl-TI\Debug\PreampCtrl_AlgProc.asm:$C$L33:2:1784184143")
	.dwattr $C$DW$234, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$234, DW_AT_TI_begin_line(0xc7)
	.dwattr $C$DW$234, DW_AT_TI_end_line(0xcb)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$56$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_Z35PreampCtrl_AlgorithmProcessFunctionPKP23SPreampCtrl_Alg_ContextPKv$56$E)
	.dwendtag $C$DW$234

	.dwendtag $C$DW$167

	.dwattr $C$DW$118, DW_AT_TI_end_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0xcd)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.clink
	.global	AlgEntry

$C$DW$236	.dwtag  DW_TAG_subprogram, DW_AT_name("AlgEntry")
	.dwattr $C$DW$236, DW_AT_low_pc(AlgEntry)
	.dwattr $C$DW$236, DW_AT_high_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("AlgEntry")
	.dwattr $C$DW$236, DW_AT_external
	.dwattr $C$DW$236, DW_AT_TI_begin_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0xd3)
	.dwattr $C$DW$236, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$236, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$236, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$236, DW_AT_decl_column(0x06)
	.dwattr $C$DW$236, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 211,column 21,is_stmt,address AlgEntry,isa 0

	.dwfde $C$DW$CIE, AlgEntry

;******************************************************************************
;* FUNCTION NAME: AlgEntry                                                    *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
AlgEntry:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 211 | void AlgEntry(void) {}                                                 
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 6
	.dwcfi	cfa_offset, 0
	.dwpsn	file "C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp",line 211,column 22,is_stmt,isa 0
	.dwcfi	cfa_offset, 0
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_return
           RET     .S2     B3                ; |211| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |211| 
	.dwattr $C$DW$236, DW_AT_TI_end_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$236, DW_AT_TI_end_line(0xd3)
	.dwattr $C$DW$236, DW_AT_TI_end_column(0x16)
	.dwendentry
	.dwendtag $C$DW$236

;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "_ZSt8_DestroyIcEvPT_", 1
	.gmember  ".text:_ZSt8_DestroyIcEvPT_"
	.endgroup
	.group    "_ZSt8_DestroyIwEvPT_", 1
	.gmember  ".text:_ZSt8_DestroyIwEvPT_"
	.endgroup


;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_Long_Precision_Bits(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_ABI_enum_size(2)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_wchar_t(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_alignment(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_align_expected(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PIC(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PID(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_DSBT(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x08)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$238, DW_AT_name("tinfo")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("tinfo")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$238, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$238, DW_AT_decl_column(0x16)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$239, DW_AT_name("offset_flags")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("offset_flags")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$239, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$239, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$26

	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x16)

$C$DW$T$150	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x08)
$C$DW$240	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$240, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$150


$C$DW$T$377	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$377, DW_AT_name("AAE_EAudioBufferLengthNative")
	.dwattr $C$DW$T$377, DW_AT_byte_size(0x04)
$C$DW$241	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthNative_Min"), DW_AT_const_value(0x05)
	.dwattr $C$DW$241, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$241, DW_AT_decl_column(0x02)
$C$DW$242	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthNative_Max"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$242, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$242, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$377

	.dwattr $C$DW$T$377, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$377, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$T$377, DW_AT_decl_column(0x06)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("AAX_CMidiPacket")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x10)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$243, DW_AT_name("mTimestamp")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("mTimestamp")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$243, DW_AT_decl_column(0x0d)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$244, DW_AT_name("mLength")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("mLength")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$244, DW_AT_decl_column(0x0d)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$245, DW_AT_name("mData")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("mData")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$245, DW_AT_decl_column(0x16)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$246, DW_AT_name("mIsImmediate")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("mIsImmediate")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x250)
	.dwattr $C$DW$246, DW_AT_decl_column(0x16)

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_ZN15AAX_CMidiPacketaSERKS_")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$3, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$33)
	.dwendtag $C$DW$3

	.dwendtag $C$DW$T$35

	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x08)
$C$DW$T$32	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$35)
$C$DW$T$33	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
$C$DW$T$31	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)

$C$DW$T$34	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$33)
	.dwendtag $C$DW$T$34

$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("AAX_CMidiStream")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x08)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$249, DW_AT_name("mBufferSize")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("mBufferSize")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x266)
	.dwattr $C$DW$249, DW_AT_decl_column(0x0d)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$250, DW_AT_name("mBuffer")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("mBuffer")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x267)
	.dwattr $C$DW$250, DW_AT_decl_column(0x14)

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_ZN15AAX_CMidiStreamaSERKS_")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$4, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$4

	.dwendtag $C$DW$T$41

	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x264)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x08)
$C$DW$T$38	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$41)
$C$DW$T$39	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x20)
$C$DW$T$37	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)

$C$DW$T$40	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$252	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$40


$C$DW$T$378	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$378, DW_AT_name("AAX_EAssertFlags")
	.dwattr $C$DW$T$378, DW_AT_byte_size(0x04)
$C$DW$253	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAssertFlags_Default"), DW_AT_const_value(0x00)
	.dwattr $C$DW$253, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x5df)
	.dwattr $C$DW$253, DW_AT_decl_column(0x02)
$C$DW$254	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAssertFlags_Log"), DW_AT_const_value(0x01)
	.dwattr $C$DW$254, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x5e0)
	.dwattr $C$DW$254, DW_AT_decl_column(0x02)
$C$DW$255	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAssertFlags_Dialog"), DW_AT_const_value(0x02)
	.dwattr $C$DW$255, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x5e1)
	.dwattr $C$DW$255, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$378

	.dwattr $C$DW$T$378, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$378, DW_AT_decl_line(0x5dd)
	.dwattr $C$DW$T$378, DW_AT_decl_column(0x06)

$C$DW$T$379	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$379, DW_AT_name("AAX_EAudioBufferLength")
	.dwattr $C$DW$T$379, DW_AT_byte_size(0x04)
$C$DW$256	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_Undefined"), DW_AT_const_value(-1)
	.dwattr $C$DW$256, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$256, DW_AT_decl_column(0x02)
$C$DW$257	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_1"), DW_AT_const_value(0x00)
	.dwattr $C$DW$257, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$257, DW_AT_decl_column(0x02)
$C$DW$258	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_2"), DW_AT_const_value(0x01)
	.dwattr $C$DW$258, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$258, DW_AT_decl_column(0x02)
$C$DW$259	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_4"), DW_AT_const_value(0x02)
	.dwattr $C$DW$259, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$259, DW_AT_decl_column(0x02)
$C$DW$260	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_8"), DW_AT_const_value(0x03)
	.dwattr $C$DW$260, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$260, DW_AT_decl_column(0x02)
$C$DW$261	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_16"), DW_AT_const_value(0x04)
	.dwattr $C$DW$261, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$261, DW_AT_decl_column(0x02)
$C$DW$262	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_32"), DW_AT_const_value(0x05)
	.dwattr $C$DW$262, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x90)
	.dwattr $C$DW$262, DW_AT_decl_column(0x02)
$C$DW$263	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_64"), DW_AT_const_value(0x06)
	.dwattr $C$DW$263, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x91)
	.dwattr $C$DW$263, DW_AT_decl_column(0x02)
$C$DW$264	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_128"), DW_AT_const_value(0x07)
	.dwattr $C$DW$264, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x92)
	.dwattr $C$DW$264, DW_AT_decl_column(0x02)
$C$DW$265	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_256"), DW_AT_const_value(0x08)
	.dwattr $C$DW$265, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x93)
	.dwattr $C$DW$265, DW_AT_decl_column(0x02)
$C$DW$266	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_512"), DW_AT_const_value(0x09)
	.dwattr $C$DW$266, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x94)
	.dwattr $C$DW$266, DW_AT_decl_column(0x02)
$C$DW$267	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_1024"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$267, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x95)
	.dwattr $C$DW$267, DW_AT_decl_column(0x02)
$C$DW$268	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLength_Max"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$268, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$268, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$379

	.dwattr $C$DW$T$379, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$379, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$379, DW_AT_decl_column(0x06)

$C$DW$T$380	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$380, DW_AT_name("AAX_EAudioBufferLengthDSP")
	.dwattr $C$DW$T$380, DW_AT_byte_size(0x04)
$C$DW$269	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthDSP_Default"), DW_AT_const_value(0x02)
	.dwattr $C$DW$269, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0xad)
	.dwattr $C$DW$269, DW_AT_decl_column(0x02)
$C$DW$270	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthDSP_4"), DW_AT_const_value(0x02)
	.dwattr $C$DW$270, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0xae)
	.dwattr $C$DW$270, DW_AT_decl_column(0x02)
$C$DW$271	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthDSP_16"), DW_AT_const_value(0x04)
	.dwattr $C$DW$271, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$271, DW_AT_decl_column(0x02)
$C$DW$272	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthDSP_32"), DW_AT_const_value(0x05)
	.dwattr $C$DW$272, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$272, DW_AT_decl_column(0x02)
$C$DW$273	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthDSP_64"), DW_AT_const_value(0x06)
	.dwattr $C$DW$273, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$273, DW_AT_decl_column(0x02)
$C$DW$274	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eAudioBufferLengthDSP_Max"), DW_AT_const_value(0x06)
	.dwattr $C$DW$274, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$274, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$380

	.dwattr $C$DW$T$380, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$380, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$380, DW_AT_decl_column(0x06)

$C$DW$T$381	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$381, DW_AT_name("AAX_EComponentInstanceInitAction")
	.dwattr $C$DW$T$381, DW_AT_byte_size(0x04)
$C$DW$275	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eComponentInstanceInitAction_AddingNewInstance"), DW_AT_const_value(0x00)
	.dwattr $C$DW$275, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x396)
	.dwattr $C$DW$275, DW_AT_decl_column(0x02)
$C$DW$276	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eComponentInstanceInitAction_RemovingInstance"), DW_AT_const_value(0x01)
	.dwattr $C$DW$276, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x397)
	.dwattr $C$DW$276, DW_AT_decl_column(0x02)
$C$DW$277	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eComponentInstanceInitAction_ResetInstance"), DW_AT_const_value(0x02)
	.dwattr $C$DW$277, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x398)
	.dwattr $C$DW$277, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$381

	.dwattr $C$DW$T$381, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$381, DW_AT_decl_line(0x394)
	.dwattr $C$DW$T$381, DW_AT_decl_column(0x06)

$C$DW$T$382	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$382, DW_AT_name("AAX_EConstraintLocationMask")
	.dwattr $C$DW$T$382, DW_AT_byte_size(0x04)
$C$DW$278	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eConstraintLocationMask_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$278, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x372)
	.dwattr $C$DW$278, DW_AT_decl_column(0x02)
$C$DW$279	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eConstraintLocationMask_DataModel"), DW_AT_const_value(0x01)
	.dwattr $C$DW$279, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x375)
	.dwattr $C$DW$279, DW_AT_decl_column(0x02)
$C$DW$280	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eConstraintLocationMask_DLLChipAffinity"), DW_AT_const_value(0x02)
	.dwattr $C$DW$280, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x37f)
	.dwattr $C$DW$280, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$382

	.dwattr $C$DW$T$382, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$382, DW_AT_decl_line(0x36e)
	.dwattr $C$DW$T$382, DW_AT_decl_column(0x06)

$C$DW$T$383	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$383, DW_AT_name("AAX_EConstraintTopology")
	.dwattr $C$DW$T$383, DW_AT_byte_size(0x04)
$C$DW$281	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eConstraintTopology_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$281, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x38a)
	.dwattr $C$DW$281, DW_AT_decl_column(0x02)
$C$DW$282	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eConstraintTopology_Monolithic"), DW_AT_const_value(0x01)
	.dwattr $C$DW$282, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x38b)
	.dwattr $C$DW$282, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$383

	.dwattr $C$DW$T$383, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$383, DW_AT_decl_line(0x388)
	.dwattr $C$DW$T$383, DW_AT_decl_column(0x06)

$C$DW$T$384	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$384, DW_AT_name("AAX_ECurveType")
	.dwattr $C$DW$T$384, DW_AT_byte_size(0x04)
$C$DW$283	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eCurveType_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$283, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$283, DW_AT_decl_column(0x02)
$C$DW$284	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eCurveType_EQ"), DW_AT_const_value(0x41586571)
	.dwattr $C$DW$284, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$284, DW_AT_decl_column(0x02)
$C$DW$285	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eCurveType_Dynamics"), DW_AT_const_value(0x41586479)
	.dwattr $C$DW$285, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$285, DW_AT_decl_column(0x02)
$C$DW$286	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eCurveType_Reduction"), DW_AT_const_value(0x41586472)
	.dwattr $C$DW$286, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$286, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$384

	.dwattr $C$DW$T$384, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$384, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$T$384, DW_AT_decl_column(0x07)

$C$DW$T$385	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$385, DW_AT_name("AAX_EDataInPortType")
	.dwattr $C$DW$T$385, DW_AT_byte_size(0x04)
$C$DW$287	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eDataInPortType_Unbuffered"), DW_AT_const_value(0x00)
	.dwattr $C$DW$287, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x4c7)
	.dwattr $C$DW$287, DW_AT_decl_column(0x02)
$C$DW$288	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eDataInPortType_Buffered"), DW_AT_const_value(0x01)
	.dwattr $C$DW$288, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x4ce)
	.dwattr $C$DW$288, DW_AT_decl_column(0x02)
$C$DW$289	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eDataInPortType_Incremental"), DW_AT_const_value(0x02)
	.dwattr $C$DW$289, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x4db)
	.dwattr $C$DW$289, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$385

	.dwattr $C$DW$T$385, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$385, DW_AT_decl_line(0x4c3)
	.dwattr $C$DW$T$385, DW_AT_decl_column(0x06)

$C$DW$T$386	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$386, DW_AT_name("AAX_EEQBandTypes")
	.dwattr $C$DW$T$386, DW_AT_byte_size(0x04)
$C$DW$290	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQBandType_HighPass"), DW_AT_const_value(0x00)
	.dwattr $C$DW$290, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x44c)
	.dwattr $C$DW$290, DW_AT_decl_column(0x02)
$C$DW$291	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQBandType_LowShelf"), DW_AT_const_value(0x01)
	.dwattr $C$DW$291, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x44d)
	.dwattr $C$DW$291, DW_AT_decl_column(0x02)
$C$DW$292	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQBandType_Parametric"), DW_AT_const_value(0x02)
	.dwattr $C$DW$292, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x44e)
	.dwattr $C$DW$292, DW_AT_decl_column(0x02)
$C$DW$293	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQBandType_HighShelf"), DW_AT_const_value(0x03)
	.dwattr $C$DW$293, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x44f)
	.dwattr $C$DW$293, DW_AT_decl_column(0x02)
$C$DW$294	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQBandType_LowPass"), DW_AT_const_value(0x04)
	.dwattr $C$DW$294, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x450)
	.dwattr $C$DW$294, DW_AT_decl_column(0x02)
$C$DW$295	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQBandType_Notch"), DW_AT_const_value(0x05)
	.dwattr $C$DW$295, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x451)
	.dwattr $C$DW$295, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$386

	.dwattr $C$DW$T$386, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$386, DW_AT_decl_line(0x44a)
	.dwattr $C$DW$T$386, DW_AT_decl_column(0x06)

$C$DW$T$387	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$387, DW_AT_name("AAX_EEQInCircuitPolarity")
	.dwattr $C$DW$T$387, DW_AT_byte_size(0x04)
$C$DW$296	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQInCircuitPolarity_Enabled"), DW_AT_const_value(0x00)
	.dwattr $C$DW$296, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x45b)
	.dwattr $C$DW$296, DW_AT_decl_column(0x02)
$C$DW$297	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQInCircuitPolarity_Bypassed"), DW_AT_const_value(0x01)
	.dwattr $C$DW$297, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x45c)
	.dwattr $C$DW$297, DW_AT_decl_column(0x02)
$C$DW$298	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eEQInCircuitPolarity_Disabled"), DW_AT_const_value(0x02)
	.dwattr $C$DW$298, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x45d)
	.dwattr $C$DW$298, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$387

	.dwattr $C$DW$T$387, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$387, DW_AT_decl_line(0x459)
	.dwattr $C$DW$T$387, DW_AT_decl_column(0x06)

$C$DW$T$388	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$388, DW_AT_name("AAX_EError")
	.dwattr $C$DW$T$388, DW_AT_byte_size(0x04)
$C$DW$299	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_SUCCESS"), DW_AT_const_value(0x00)
	.dwattr $C$DW$299, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x31)
	.dwattr $C$DW$299, DW_AT_decl_column(0x02)
$C$DW$300	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_PARAMETER_ID"), DW_AT_const_value(-20001)
	.dwattr $C$DW$300, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x33)
	.dwattr $C$DW$300, DW_AT_decl_column(0x02)
$C$DW$301	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_STRING_CONVERSION"), DW_AT_const_value(-20002)
	.dwattr $C$DW$301, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x34)
	.dwattr $C$DW$301, DW_AT_decl_column(0x02)
$C$DW$302	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_METER_INDEX"), DW_AT_const_value(-20003)
	.dwattr $C$DW$302, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x35)
	.dwattr $C$DW$302, DW_AT_decl_column(0x02)
$C$DW$303	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NULL_OBJECT"), DW_AT_const_value(-20004)
	.dwattr $C$DW$303, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x36)
	.dwattr $C$DW$303, DW_AT_decl_column(0x02)
$C$DW$304	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_OLDER_VERSION"), DW_AT_const_value(-20005)
	.dwattr $C$DW$304, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x37)
	.dwattr $C$DW$304, DW_AT_decl_column(0x02)
$C$DW$305	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_CHUNK_INDEX"), DW_AT_const_value(-20006)
	.dwattr $C$DW$305, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x38)
	.dwattr $C$DW$305, DW_AT_decl_column(0x02)
$C$DW$306	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_CHUNK_ID"), DW_AT_const_value(-20007)
	.dwattr $C$DW$306, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x39)
	.dwattr $C$DW$306, DW_AT_decl_column(0x02)
$C$DW$307	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INCORRECT_CHUNK_SIZE"), DW_AT_const_value(-20008)
	.dwattr $C$DW$307, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$307, DW_AT_decl_column(0x02)
$C$DW$308	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_UNIMPLEMENTED"), DW_AT_const_value(-20009)
	.dwattr $C$DW$308, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$308, DW_AT_decl_column(0x02)
$C$DW$309	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_PARAMETER_INDEX"), DW_AT_const_value(-20010)
	.dwattr $C$DW$309, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$309, DW_AT_decl_column(0x02)
$C$DW$310	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NOT_INITIALIZED"), DW_AT_const_value(-20011)
	.dwattr $C$DW$310, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$310, DW_AT_decl_column(0x02)
$C$DW$311	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_ACF_ERROR"), DW_AT_const_value(-20012)
	.dwattr $C$DW$311, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$311, DW_AT_decl_column(0x02)
$C$DW$312	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_METER_TYPE"), DW_AT_const_value(-20013)
	.dwattr $C$DW$312, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$312, DW_AT_decl_column(0x02)
$C$DW$313	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_CONTEXT_ALREADY_HAS_METERS"), DW_AT_const_value(-20014)
	.dwattr $C$DW$313, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x40)
	.dwattr $C$DW$313, DW_AT_decl_column(0x02)
$C$DW$314	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NULL_COMPONENT"), DW_AT_const_value(-20015)
	.dwattr $C$DW$314, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x41)
	.dwattr $C$DW$314, DW_AT_decl_column(0x02)
$C$DW$315	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PORT_ID_OUT_OF_RANGE"), DW_AT_const_value(-20016)
	.dwattr $C$DW$315, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x42)
	.dwattr $C$DW$315, DW_AT_decl_column(0x02)
$C$DW$316	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_FIELD_TYPE_DOES_NOT_SUPPORT_DIRECT_ACCESS"), DW_AT_const_value(-20017)
	.dwattr $C$DW$316, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x43)
	.dwattr $C$DW$316, DW_AT_decl_column(0x02)
$C$DW$317	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_DIRECT_ACCESS_OUT_OF_BOUNDS"), DW_AT_const_value(-20018)
	.dwattr $C$DW$317, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x44)
	.dwattr $C$DW$317, DW_AT_decl_column(0x02)
$C$DW$318	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_FIFO_FULL"), DW_AT_const_value(-20019)
	.dwattr $C$DW$318, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x45)
	.dwattr $C$DW$318, DW_AT_decl_column(0x02)
$C$DW$319	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INITIALIZING_PACKET_STREAM_THREAD"), DW_AT_const_value(-20020)
	.dwattr $C$DW$319, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x46)
	.dwattr $C$DW$319, DW_AT_decl_column(0x02)
$C$DW$320	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_POST_PACKET_FAILED"), DW_AT_const_value(-20021)
	.dwattr $C$DW$320, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x47)
	.dwattr $C$DW$320, DW_AT_decl_column(0x02)
$C$DW$321	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_RESULT_PACKET_STREAM_NOT_EMPTY"), DW_AT_const_value(-20022)
	.dwattr $C$DW$321, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x48)
	.dwattr $C$DW$321, DW_AT_decl_column(0x02)
$C$DW$322	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_RESULT_ADD_FIELD_UNSUPPORTED_FIELD_TYPE"), DW_AT_const_value(-20023)
	.dwattr $C$DW$322, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x49)
	.dwattr $C$DW$322, DW_AT_decl_column(0x02)
$C$DW$323	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_MIXER_THREAD_FALLING_BEHIND"), DW_AT_const_value(-20024)
	.dwattr $C$DW$323, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$323, DW_AT_decl_column(0x02)
$C$DW$324	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_FIELD_INDEX"), DW_AT_const_value(-20025)
	.dwattr $C$DW$324, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$324, DW_AT_decl_column(0x02)
$C$DW$325	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_MALFORMED_CHUNK"), DW_AT_const_value(-20026)
	.dwattr $C$DW$325, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$325, DW_AT_decl_column(0x02)
$C$DW$326	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_TOD_BEHIND"), DW_AT_const_value(-20027)
	.dwattr $C$DW$326, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$326, DW_AT_decl_column(0x02)
$C$DW$327	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_RESULT_NEW_PACKET_POSTED"), DW_AT_const_value(-20028)
	.dwattr $C$DW$327, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$327, DW_AT_decl_column(0x02)
$C$DW$328	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PLUGIN_NOT_AUTHORIZED"), DW_AT_const_value(-20029)
	.dwattr $C$DW$328, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$328, DW_AT_decl_column(0x02)
$C$DW$329	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PLUGIN_NULL_PARAMETER"), DW_AT_const_value(-20030)
	.dwattr $C$DW$329, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x50)
	.dwattr $C$DW$329, DW_AT_decl_column(0x02)
$C$DW$330	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NOTIFICATION_FAILED"), DW_AT_const_value(-20031)
	.dwattr $C$DW$330, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x51)
	.dwattr $C$DW$330, DW_AT_decl_column(0x02)
$C$DW$331	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_VIEW_SIZE"), DW_AT_const_value(-20032)
	.dwattr $C$DW$331, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x52)
	.dwattr $C$DW$331, DW_AT_decl_column(0x02)
$C$DW$332	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_SIGNED_INT_OVERFLOW"), DW_AT_const_value(-20033)
	.dwattr $C$DW$332, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x53)
	.dwattr $C$DW$332, DW_AT_decl_column(0x02)
$C$DW$333	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NO_COMPONENTS"), DW_AT_const_value(-20034)
	.dwattr $C$DW$333, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x54)
	.dwattr $C$DW$333, DW_AT_decl_column(0x02)
$C$DW$334	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_DUPLICATE_EFFECT_ID"), DW_AT_const_value(-20035)
	.dwattr $C$DW$334, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x55)
	.dwattr $C$DW$334, DW_AT_decl_column(0x02)
$C$DW$335	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_DUPLICATE_TYPE_ID"), DW_AT_const_value(-20036)
	.dwattr $C$DW$335, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x56)
	.dwattr $C$DW$335, DW_AT_decl_column(0x02)
$C$DW$336	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_EMPTY_EFFECT_NAME"), DW_AT_const_value(-20037)
	.dwattr $C$DW$336, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x57)
	.dwattr $C$DW$336, DW_AT_decl_column(0x02)
$C$DW$337	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_UNKNOWN_PLUGIN"), DW_AT_const_value(-20038)
	.dwattr $C$DW$337, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x58)
	.dwattr $C$DW$337, DW_AT_decl_column(0x02)
$C$DW$338	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PROPERTY_UNDEFINED"), DW_AT_const_value(-20039)
	.dwattr $C$DW$338, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x59)
	.dwattr $C$DW$338, DW_AT_decl_column(0x02)
$C$DW$339	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_PATH"), DW_AT_const_value(-20040)
	.dwattr $C$DW$339, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$339, DW_AT_decl_column(0x02)
$C$DW$340	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_UNKNOWN_ID"), DW_AT_const_value(-20041)
	.dwattr $C$DW$340, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$340, DW_AT_decl_column(0x02)
$C$DW$341	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_UNKNOWN_EXCEPTION"), DW_AT_const_value(-20042)
	.dwattr $C$DW$341, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$341, DW_AT_decl_column(0x02)
$C$DW$342	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_ARGUMENT"), DW_AT_const_value(-20043)
	.dwattr $C$DW$342, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$342, DW_AT_decl_column(0x02)
$C$DW$343	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NULL_ARGUMENT"), DW_AT_const_value(-20044)
	.dwattr $C$DW$343, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$343, DW_AT_decl_column(0x02)
$C$DW$344	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_INVALID_INTERNAL_DATA"), DW_AT_const_value(-20045)
	.dwattr $C$DW$344, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$344, DW_AT_decl_column(0x02)
$C$DW$345	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_ARGUMENT_BUFFER_OVERFLOW"), DW_AT_const_value(-20046)
	.dwattr $C$DW$345, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x60)
	.dwattr $C$DW$345, DW_AT_decl_column(0x02)
$C$DW$346	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_UNSUPPORTED_ENCODING"), DW_AT_const_value(-20047)
	.dwattr $C$DW$346, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x61)
	.dwattr $C$DW$346, DW_AT_decl_column(0x02)
$C$DW$347	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_UNEXPECTED_EFFECT_ID"), DW_AT_const_value(-20048)
	.dwattr $C$DW$347, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x62)
	.dwattr $C$DW$347, DW_AT_decl_column(0x02)
$C$DW$348	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NO_ABBREVIATED_PARAMETER_NAME"), DW_AT_const_value(-20049)
	.dwattr $C$DW$348, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x63)
	.dwattr $C$DW$348, DW_AT_decl_column(0x02)
$C$DW$349	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_ARGUMENT_OUT_OF_RANGE"), DW_AT_const_value(-20050)
	.dwattr $C$DW$349, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x64)
	.dwattr $C$DW$349, DW_AT_decl_column(0x02)
$C$DW$350	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PRINT_FAILURE"), DW_AT_const_value(-20051)
	.dwattr $C$DW$350, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x65)
	.dwattr $C$DW$350, DW_AT_decl_column(0x02)
$C$DW$351	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_NOTIFICATION_REGISTRATION_FAILED"), DW_AT_const_value(-20052)
	.dwattr $C$DW$351, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x66)
	.dwattr $C$DW$351, DW_AT_decl_column(0x02)
$C$DW$352	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PLUGIN_BEGIN"), DW_AT_const_value(-20600)
	.dwattr $C$DW$352, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x69)
	.dwattr $C$DW$352, DW_AT_decl_column(0x02)
$C$DW$353	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ERROR_PLUGIN_END"), DW_AT_const_value(-21000)
	.dwattr $C$DW$353, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$353, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$388

	.dwattr $C$DW$T$388, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Errors.h")
	.dwattr $C$DW$T$388, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$388, DW_AT_decl_column(0x06)

$C$DW$T$389	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$389, DW_AT_name("AAX_EFeetFramesRate")
	.dwattr $C$DW$T$389, DW_AT_byte_size(0x04)
$C$DW$354	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFeetFramesRate_23976"), DW_AT_const_value(0x00)
	.dwattr $C$DW$354, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x503)
	.dwattr $C$DW$354, DW_AT_decl_column(0x02)
$C$DW$355	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFeetFramesRate_24"), DW_AT_const_value(0x01)
	.dwattr $C$DW$355, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x504)
	.dwattr $C$DW$355, DW_AT_decl_column(0x02)
$C$DW$356	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFeetFramesRate_25"), DW_AT_const_value(0x02)
	.dwattr $C$DW$356, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x505)
	.dwattr $C$DW$356, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$389

	.dwattr $C$DW$T$389, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$389, DW_AT_decl_line(0x501)
	.dwattr $C$DW$T$389, DW_AT_decl_column(0x06)

$C$DW$T$390	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$390, DW_AT_name("AAX_EFrameRate")
	.dwattr $C$DW$T$390, DW_AT_byte_size(0x04)
$C$DW$357	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_Undeclared"), DW_AT_const_value(0x00)
	.dwattr $C$DW$357, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x4e6)
	.dwattr $C$DW$357, DW_AT_decl_column(0x02)
$C$DW$358	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_24Frame"), DW_AT_const_value(0x01)
	.dwattr $C$DW$358, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x4e7)
	.dwattr $C$DW$358, DW_AT_decl_column(0x02)
$C$DW$359	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_25Frame"), DW_AT_const_value(0x02)
	.dwattr $C$DW$359, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x4e8)
	.dwattr $C$DW$359, DW_AT_decl_column(0x02)
$C$DW$360	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_2997NonDrop"), DW_AT_const_value(0x03)
	.dwattr $C$DW$360, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x4e9)
	.dwattr $C$DW$360, DW_AT_decl_column(0x02)
$C$DW$361	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_2997DropFrame"), DW_AT_const_value(0x04)
	.dwattr $C$DW$361, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x4ea)
	.dwattr $C$DW$361, DW_AT_decl_column(0x02)
$C$DW$362	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_30NonDrop"), DW_AT_const_value(0x05)
	.dwattr $C$DW$362, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x4eb)
	.dwattr $C$DW$362, DW_AT_decl_column(0x02)
$C$DW$363	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_30DropFrame"), DW_AT_const_value(0x06)
	.dwattr $C$DW$363, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x4ec)
	.dwattr $C$DW$363, DW_AT_decl_column(0x02)
$C$DW$364	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_23976"), DW_AT_const_value(0x07)
	.dwattr $C$DW$364, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x4ed)
	.dwattr $C$DW$364, DW_AT_decl_column(0x02)
$C$DW$365	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_47952"), DW_AT_const_value(0x08)
	.dwattr $C$DW$365, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x4ee)
	.dwattr $C$DW$365, DW_AT_decl_column(0x02)
$C$DW$366	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_48Frame"), DW_AT_const_value(0x09)
	.dwattr $C$DW$366, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x4ef)
	.dwattr $C$DW$366, DW_AT_decl_column(0x02)
$C$DW$367	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_50Frame"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$367, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x4f0)
	.dwattr $C$DW$367, DW_AT_decl_column(0x02)
$C$DW$368	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_5994NonDrop"), DW_AT_const_value(0x0b)
	.dwattr $C$DW$368, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x4f1)
	.dwattr $C$DW$368, DW_AT_decl_column(0x02)
$C$DW$369	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_5994DropFrame"), DW_AT_const_value(0x0c)
	.dwattr $C$DW$369, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x4f2)
	.dwattr $C$DW$369, DW_AT_decl_column(0x02)
$C$DW$370	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_60NonDrop"), DW_AT_const_value(0x0d)
	.dwattr $C$DW$370, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x4f3)
	.dwattr $C$DW$370, DW_AT_decl_column(0x02)
$C$DW$371	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_60DropFrame"), DW_AT_const_value(0x0e)
	.dwattr $C$DW$371, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x4f4)
	.dwattr $C$DW$371, DW_AT_decl_column(0x02)
$C$DW$372	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_100Frame"), DW_AT_const_value(0x0f)
	.dwattr $C$DW$372, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x4f5)
	.dwattr $C$DW$372, DW_AT_decl_column(0x02)
$C$DW$373	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_11988NonDrop"), DW_AT_const_value(0x10)
	.dwattr $C$DW$373, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x4f6)
	.dwattr $C$DW$373, DW_AT_decl_column(0x02)
$C$DW$374	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_11988DropFrame"), DW_AT_const_value(0x11)
	.dwattr $C$DW$374, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x4f7)
	.dwattr $C$DW$374, DW_AT_decl_column(0x02)
$C$DW$375	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_120NonDrop"), DW_AT_const_value(0x12)
	.dwattr $C$DW$375, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x4f8)
	.dwattr $C$DW$375, DW_AT_decl_column(0x02)
$C$DW$376	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eFrameRate_120DropFrame"), DW_AT_const_value(0x13)
	.dwattr $C$DW$376, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x4f9)
	.dwattr $C$DW$376, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$390

	.dwattr $C$DW$T$390, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$390, DW_AT_decl_line(0x4e4)
	.dwattr $C$DW$T$390, DW_AT_decl_column(0x06)

$C$DW$T$391	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$391, DW_AT_name("AAX_EHighlightColor")
	.dwattr $C$DW$T$391, DW_AT_byte_size(0x04)
$C$DW$377	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHighlightColor_Red"), DW_AT_const_value(0x00)
	.dwattr $C$DW$377, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x42)
	.dwattr $C$DW$377, DW_AT_decl_column(0x02)
$C$DW$378	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHighlightColor_Blue"), DW_AT_const_value(0x01)
	.dwattr $C$DW$378, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x43)
	.dwattr $C$DW$378, DW_AT_decl_column(0x02)
$C$DW$379	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHighlightColor_Green"), DW_AT_const_value(0x02)
	.dwattr $C$DW$379, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x44)
	.dwattr $C$DW$379, DW_AT_decl_column(0x02)
$C$DW$380	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHighlightColor_Yellow"), DW_AT_const_value(0x03)
	.dwattr $C$DW$380, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x45)
	.dwattr $C$DW$380, DW_AT_decl_column(0x02)
$C$DW$381	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHighlightColor_Num"), DW_AT_const_value(0x04)
	.dwattr $C$DW$381, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x47)
	.dwattr $C$DW$381, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$391

	.dwattr $C$DW$T$391, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$391, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$391, DW_AT_decl_column(0x06)

$C$DW$T$392	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$392, DW_AT_name("AAX_EHostLevel")
	.dwattr $C$DW$T$392, DW_AT_byte_size(0x04)
$C$DW$382	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostLevel_Unknown"), DW_AT_const_value(0x00)
	.dwattr $C$DW$382, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x5cc)
	.dwattr $C$DW$382, DW_AT_decl_column(0x03)
$C$DW$383	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostLevel_Standard"), DW_AT_const_value(0x01)
	.dwattr $C$DW$383, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x5cd)
	.dwattr $C$DW$383, DW_AT_decl_column(0x03)
$C$DW$384	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostLevel_Entry"), DW_AT_const_value(0x02)
	.dwattr $C$DW$384, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x5ce)
	.dwattr $C$DW$384, DW_AT_decl_column(0x03)
$C$DW$385	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostLevel_Intermediate"), DW_AT_const_value(0x03)
	.dwattr $C$DW$385, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x5cf)
	.dwattr $C$DW$385, DW_AT_decl_column(0x03)
	.dwendtag $C$DW$T$392

	.dwattr $C$DW$T$392, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$392, DW_AT_decl_line(0x5ca)
	.dwattr $C$DW$T$392, DW_AT_decl_column(0x06)

$C$DW$T$393	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$393, DW_AT_name("AAX_EHostMode")
	.dwattr $C$DW$T$393, DW_AT_byte_size(0x04)
$C$DW$386	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostMode_Show"), DW_AT_const_value(0x01)
	.dwattr $C$DW$386, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x356)
	.dwattr $C$DW$386, DW_AT_decl_column(0x02)
$C$DW$387	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostMode_Config"), DW_AT_const_value(0x00)
	.dwattr $C$DW$387, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x357)
	.dwattr $C$DW$387, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$393

	.dwattr $C$DW$T$393, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$393, DW_AT_decl_line(0x354)
	.dwattr $C$DW$T$393, DW_AT_decl_column(0x06)

$C$DW$T$394	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$394, DW_AT_name("AAX_EHostModeBits")
	.dwattr $C$DW$T$394, DW_AT_byte_size(0x04)
$C$DW$388	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostModeBits_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$388, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x347)
	.dwattr $C$DW$388, DW_AT_decl_column(0x02)
$C$DW$389	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eHostModeBits_Live"), DW_AT_const_value(0x01)
	.dwattr $C$DW$389, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x348)
	.dwattr $C$DW$389, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$394

	.dwattr $C$DW$T$394, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$394, DW_AT_decl_line(0x345)
	.dwattr $C$DW$T$394, DW_AT_decl_column(0x06)

$C$DW$T$395	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$395, DW_AT_name("AAX_EMIDINodeType")
	.dwattr $C$DW$T$395, DW_AT_byte_size(0x04)
$C$DW$390	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDINodeType_LocalInput"), DW_AT_const_value(0x00)
	.dwattr $C$DW$390, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x47c)
	.dwattr $C$DW$390, DW_AT_decl_column(0x02)
$C$DW$391	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDINodeType_LocalOutput"), DW_AT_const_value(0x01)
	.dwattr $C$DW$391, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x490)
	.dwattr $C$DW$391, DW_AT_decl_column(0x02)
$C$DW$392	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDINodeType_Global"), DW_AT_const_value(0x02)
	.dwattr $C$DW$392, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x4a6)
	.dwattr $C$DW$392, DW_AT_decl_column(0x02)
$C$DW$393	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDINodeType_Transport"), DW_AT_const_value(0x03)
	.dwattr $C$DW$393, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x4ae)
	.dwattr $C$DW$393, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$395

	.dwattr $C$DW$T$395, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$395, DW_AT_decl_line(0x470)
	.dwattr $C$DW$T$395, DW_AT_decl_column(0x06)

$C$DW$T$396	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$396, DW_AT_name("AAX_EMaxAudioSuiteTracks")
	.dwattr $C$DW$T$396, DW_AT_byte_size(0x04)
$C$DW$394	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMaxAudioSuiteTracks"), DW_AT_const_value(0x30)
	.dwattr $C$DW$394, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$394, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$396

	.dwattr $C$DW$T$396, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$396, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$T$396, DW_AT_decl_column(0x06)

$C$DW$T$397	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$397, DW_AT_name("AAX_EMeterBallisticType")
	.dwattr $C$DW$T$397, DW_AT_byte_size(0x04)
$C$DW$395	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterBallisticType_Host"), DW_AT_const_value(0x00)
	.dwattr $C$DW$395, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$395, DW_AT_decl_column(0x02)
$C$DW$396	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterBallisticType_NoDecay"), DW_AT_const_value(0x01)
	.dwattr $C$DW$396, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$396, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$397

	.dwattr $C$DW$T$397, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$397, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$T$397, DW_AT_decl_column(0x06)

$C$DW$T$398	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$398, DW_AT_name("AAX_EMeterOrientation")
	.dwattr $C$DW$T$398, DW_AT_byte_size(0x04)
$C$DW$397	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterOrientation_Default"), DW_AT_const_value(0x00)
	.dwattr $C$DW$397, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$397, DW_AT_decl_column(0x02)
$C$DW$398	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterOrientation_BottomLeft"), DW_AT_const_value(0x00)
	.dwattr $C$DW$398, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$398, DW_AT_decl_column(0x02)
$C$DW$399	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterOrientation_TopRight"), DW_AT_const_value(0x01)
	.dwattr $C$DW$399, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$399, DW_AT_decl_column(0x02)
$C$DW$400	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterOrientation_Center"), DW_AT_const_value(0x02)
	.dwattr $C$DW$400, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$400, DW_AT_decl_column(0x02)
$C$DW$401	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterOrientation_PhaseDot"), DW_AT_const_value(0x03)
	.dwattr $C$DW$401, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$401, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$398

	.dwattr $C$DW$T$398, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$398, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$T$398, DW_AT_decl_column(0x06)

$C$DW$T$399	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$399, DW_AT_name("AAX_EMeterType")
	.dwattr $C$DW$T$399, DW_AT_byte_size(0x04)
$C$DW$402	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_Input"), DW_AT_const_value(0x00)
	.dwattr $C$DW$402, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$402, DW_AT_decl_column(0x02)
$C$DW$403	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_Output"), DW_AT_const_value(0x01)
	.dwattr $C$DW$403, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$403, DW_AT_decl_column(0x02)
$C$DW$404	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_CLGain"), DW_AT_const_value(0x02)
	.dwattr $C$DW$404, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$404, DW_AT_decl_column(0x02)
$C$DW$405	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_EGGain"), DW_AT_const_value(0x03)
	.dwattr $C$DW$405, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$405, DW_AT_decl_column(0x02)
$C$DW$406	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_Analysis"), DW_AT_const_value(0x04)
	.dwattr $C$DW$406, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$406, DW_AT_decl_column(0x02)
$C$DW$407	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_Other"), DW_AT_const_value(0x05)
	.dwattr $C$DW$407, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$407, DW_AT_decl_column(0x02)
$C$DW$408	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMeterType_None"), DW_AT_const_value(0x1f)
	.dwattr $C$DW$408, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$408, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$399

	.dwattr $C$DW$T$399, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$399, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$T$399, DW_AT_decl_column(0x06)

$C$DW$T$400	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$400, DW_AT_name("AAX_EMidiGlobalNodeSelectors")
	.dwattr $C$DW$T$400, DW_AT_byte_size(0x04)
$C$DW$409	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDIClick"), DW_AT_const_value(0x01)
	.dwattr $C$DW$409, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x51b)
	.dwattr $C$DW$409, DW_AT_decl_column(0x02)
$C$DW$410	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDIMtc"), DW_AT_const_value(0x02)
	.dwattr $C$DW$410, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x522)
	.dwattr $C$DW$410, DW_AT_decl_column(0x02)
$C$DW$411	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eMIDIBeatClock"), DW_AT_const_value(0x04)
	.dwattr $C$DW$411, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x529)
	.dwattr $C$DW$411, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$400

	.dwattr $C$DW$T$400, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$400, DW_AT_decl_line(0x510)
	.dwattr $C$DW$T$400, DW_AT_decl_column(0x06)

$C$DW$T$401	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$401, DW_AT_name("AAX_EModifiers")
	.dwattr $C$DW$T$401, DW_AT_byte_size(0x04)
$C$DW$412	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$412, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$412, DW_AT_decl_column(0x02)
$C$DW$413	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_Shift"), DW_AT_const_value(0x01)
	.dwattr $C$DW$413, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x70)
	.dwattr $C$DW$413, DW_AT_decl_column(0x02)
$C$DW$414	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_Control"), DW_AT_const_value(0x02)
	.dwattr $C$DW$414, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x71)
	.dwattr $C$DW$414, DW_AT_decl_column(0x02)
$C$DW$415	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_Option"), DW_AT_const_value(0x04)
	.dwattr $C$DW$415, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x72)
	.dwattr $C$DW$415, DW_AT_decl_column(0x02)
$C$DW$416	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_Command"), DW_AT_const_value(0x08)
	.dwattr $C$DW$416, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x73)
	.dwattr $C$DW$416, DW_AT_decl_column(0x02)
$C$DW$417	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_SecondaryButton"), DW_AT_const_value(0x10)
	.dwattr $C$DW$417, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x74)
	.dwattr $C$DW$417, DW_AT_decl_column(0x02)
$C$DW$418	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_Alt"), DW_AT_const_value(0x04)
	.dwattr $C$DW$418, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x76)
	.dwattr $C$DW$418, DW_AT_decl_column(0x02)
$C$DW$419	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_Cntl"), DW_AT_const_value(0x08)
	.dwattr $C$DW$419, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x77)
	.dwattr $C$DW$419, DW_AT_decl_column(0x02)
$C$DW$420	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eModifiers_WINKEY"), DW_AT_const_value(0x02)
	.dwattr $C$DW$420, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x78)
	.dwattr $C$DW$420, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$401

	.dwattr $C$DW$T$401, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$401, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$401, DW_AT_decl_column(0x06)

$C$DW$T$402	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$402, DW_AT_name("AAX_ENotificationEvent")
	.dwattr $C$DW$T$402, DW_AT_byte_size(0x04)
$C$DW$421	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_InsertPositionChanged"), DW_AT_const_value(0x41586970)
	.dwattr $C$DW$421, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x21b)
	.dwattr $C$DW$421, DW_AT_decl_column(0x02)
$C$DW$422	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_TrackNameChanged"), DW_AT_const_value(0x4158746e)
	.dwattr $C$DW$422, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x225)
	.dwattr $C$DW$422, DW_AT_decl_column(0x02)
$C$DW$423	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_TrackUIDChanged"), DW_AT_const_value(0x41587475)
	.dwattr $C$DW$423, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$423, DW_AT_decl_column(0x02)
$C$DW$424	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_TrackPositionChanged"), DW_AT_const_value(0x41587470)
	.dwattr $C$DW$424, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x233)
	.dwattr $C$DW$424, DW_AT_decl_column(0x02)
$C$DW$425	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_AlgorithmMoved"), DW_AT_const_value(0x4158616d)
	.dwattr $C$DW$425, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x239)
	.dwattr $C$DW$425, DW_AT_decl_column(0x02)
$C$DW$426	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_GUIOpened"), DW_AT_const_value(0x4158676f)
	.dwattr $C$DW$426, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$426, DW_AT_decl_column(0x02)
$C$DW$427	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_GUIClosed"), DW_AT_const_value(0x41586763)
	.dwattr $C$DW$427, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x245)
	.dwattr $C$DW$427, DW_AT_decl_column(0x02)
$C$DW$428	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_ASProcessingState"), DW_AT_const_value(0x41585072)
	.dwattr $C$DW$428, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$428, DW_AT_decl_column(0x02)
$C$DW$429	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_ASPreviewState"), DW_AT_const_value(0x41535076)
	.dwattr $C$DW$429, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x259)
	.dwattr $C$DW$429, DW_AT_decl_column(0x02)
$C$DW$430	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_SessionBeingOpened"), DW_AT_const_value(0x4158736f)
	.dwattr $C$DW$430, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x262)
	.dwattr $C$DW$430, DW_AT_decl_column(0x02)
$C$DW$431	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_PresetOpened"), DW_AT_const_value(0x4158706f)
	.dwattr $C$DW$431, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$431, DW_AT_decl_column(0x02)
$C$DW$432	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_EnteringOfflineMode"), DW_AT_const_value(0x41586f66)
	.dwattr $C$DW$432, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x272)
	.dwattr $C$DW$432, DW_AT_decl_column(0x02)
$C$DW$433	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_ExitingOfflineMode"), DW_AT_const_value(0x41586f78)
	.dwattr $C$DW$433, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$433, DW_AT_decl_column(0x02)
$C$DW$434	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_SessionPathChanged"), DW_AT_const_value(0x41587370)
	.dwattr $C$DW$434, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x283)
	.dwattr $C$DW$434, DW_AT_decl_column(0x02)
$C$DW$435	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_SignalLatencyChanged"), DW_AT_const_value(0x4158736c)
	.dwattr $C$DW$435, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x290)
	.dwattr $C$DW$435, DW_AT_decl_column(0x02)
$C$DW$436	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_DelayCompensationState"), DW_AT_const_value(0x41586463)
	.dwattr $C$DW$436, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$436, DW_AT_decl_column(0x02)
$C$DW$437	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_CycleCountChanged"), DW_AT_const_value(0x41586363)
	.dwattr $C$DW$437, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x2aa)
	.dwattr $C$DW$437, DW_AT_decl_column(0x02)
$C$DW$438	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_MaxViewSizeChanged"), DW_AT_const_value(0x41587773)
	.dwattr $C$DW$438, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x2b4)
	.dwattr $C$DW$438, DW_AT_decl_column(0x02)
$C$DW$439	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_SideChainBeingConnected"), DW_AT_const_value(0x41587363)
	.dwattr $C$DW$439, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x2bc)
	.dwattr $C$DW$439, DW_AT_decl_column(0x02)
$C$DW$440	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_SideChainBeingDisconnected"), DW_AT_const_value(0x41587364)
	.dwattr $C$DW$440, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x2c5)
	.dwattr $C$DW$440, DW_AT_decl_column(0x02)
$C$DW$441	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_NoiseFloorChanged"), DW_AT_const_value(0x41586e66)
	.dwattr $C$DW$441, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x2d3)
	.dwattr $C$DW$441, DW_AT_decl_column(0x02)
$C$DW$442	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_ParameterMappingChanged"), DW_AT_const_value(0x4158706d)
	.dwattr $C$DW$442, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x2dc)
	.dwattr $C$DW$442, DW_AT_decl_column(0x02)
$C$DW$443	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_ParameterNameChanged"), DW_AT_const_value(0x4158706e)
	.dwattr $C$DW$443, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x2e8)
	.dwattr $C$DW$443, DW_AT_decl_column(0x02)
$C$DW$444	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_HostModeChanged"), DW_AT_const_value(0x4158486d)
	.dwattr $C$DW$444, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$444, DW_AT_decl_column(0x02)
$C$DW$445	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_PriorSettingsInvalid"), DW_AT_const_value(0x41587073)
	.dwattr $C$DW$445, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x304)
	.dwattr $C$DW$445, DW_AT_decl_column(0x02)
$C$DW$446	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_LogState"), DW_AT_const_value(0x41586c73)
	.dwattr $C$DW$446, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x30f)
	.dwattr $C$DW$446, DW_AT_decl_column(0x02)
$C$DW$447	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_TransportStateChanged"), DW_AT_const_value(0x41587473)
	.dwattr $C$DW$447, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x317)
	.dwattr $C$DW$447, DW_AT_decl_column(0x02)
$C$DW$448	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_HostLocale"), DW_AT_const_value(0x41584c63)
	.dwattr $C$DW$448, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x336)
	.dwattr $C$DW$448, DW_AT_decl_column(0x02)
$C$DW$449	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eNotificationEvent_TimelineSelectionChanged"), DW_AT_const_value(0x41587443)
	.dwattr $C$DW$449, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x33e)
	.dwattr $C$DW$449, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$402

	.dwattr $C$DW$T$402, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$402, DW_AT_decl_line(0x210)
	.dwattr $C$DW$T$402, DW_AT_decl_column(0x06)

$C$DW$T$403	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$403, DW_AT_name("AAX_EParameterOrientationBits")
	.dwattr $C$DW$T$403, DW_AT_byte_size(0x04)
$C$DW$450	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_Default"), DW_AT_const_value(0x00)
	.dwattr $C$DW$450, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x3fd)
	.dwattr $C$DW$450, DW_AT_decl_column(0x02)
$C$DW$451	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_BottomMinTopMax"), DW_AT_const_value(0x00)
	.dwattr $C$DW$451, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x3ff)
	.dwattr $C$DW$451, DW_AT_decl_column(0x02)
$C$DW$452	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_TopMinBottomMax"), DW_AT_const_value(0x01)
	.dwattr $C$DW$452, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x400)
	.dwattr $C$DW$452, DW_AT_decl_column(0x02)
$C$DW$453	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_LeftMinRightMax"), DW_AT_const_value(0x00)
	.dwattr $C$DW$453, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x402)
	.dwattr $C$DW$453, DW_AT_decl_column(0x02)
$C$DW$454	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RightMinLeftMax"), DW_AT_const_value(0x02)
	.dwattr $C$DW$454, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x403)
	.dwattr $C$DW$454, DW_AT_decl_column(0x02)
$C$DW$455	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RotarySingleDotMode"), DW_AT_const_value(0x00)
	.dwattr $C$DW$455, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x406)
	.dwattr $C$DW$455, DW_AT_decl_column(0x02)
$C$DW$456	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RotaryBoostCutMode"), DW_AT_const_value(0x04)
	.dwattr $C$DW$456, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x407)
	.dwattr $C$DW$456, DW_AT_decl_column(0x02)
$C$DW$457	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RotaryWrapMode"), DW_AT_const_value(0x08)
	.dwattr $C$DW$457, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x408)
	.dwattr $C$DW$457, DW_AT_decl_column(0x02)
$C$DW$458	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RotarySpreadMode"), DW_AT_const_value(0x0c)
	.dwattr $C$DW$458, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x409)
	.dwattr $C$DW$458, DW_AT_decl_column(0x02)
$C$DW$459	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RotaryLeftMinRightMax"), DW_AT_const_value(0x00)
	.dwattr $C$DW$459, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x40c)
	.dwattr $C$DW$459, DW_AT_decl_column(0x02)
$C$DW$460	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterOrientation_RotaryRightMinLeftMax"), DW_AT_const_value(0x10)
	.dwattr $C$DW$460, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x40d)
	.dwattr $C$DW$460, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$403

	.dwattr $C$DW$T$403, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$403, DW_AT_decl_line(0x3fc)
	.dwattr $C$DW$T$403, DW_AT_decl_column(0x06)

$C$DW$T$404	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$404, DW_AT_name("AAX_EParameterType")
	.dwattr $C$DW$T$404, DW_AT_byte_size(0x04)
$C$DW$461	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterType_Discrete"), DW_AT_const_value(0x00)
	.dwattr $C$DW$461, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x3f2)
	.dwattr $C$DW$461, DW_AT_decl_column(0x02)
$C$DW$462	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eParameterType_Continuous"), DW_AT_const_value(0x01)
	.dwattr $C$DW$462, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x3f3)
	.dwattr $C$DW$462, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$404

	.dwattr $C$DW$T$404, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$404, DW_AT_decl_line(0x3f0)
	.dwattr $C$DW$T$404, DW_AT_decl_column(0x0e)
$C$DW$T$405	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_EParameterType")
	.dwattr $C$DW$T$405, DW_AT_type(*$C$DW$T$404)
	.dwattr $C$DW$T$405, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$405, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$405, DW_AT_decl_line(0x3f4)
	.dwattr $C$DW$T$405, DW_AT_decl_column(0x03)

$C$DW$T$406	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$406, DW_AT_name("AAX_EParameterValueInfoSelector")
	.dwattr $C$DW$T$406, DW_AT_byte_size(0x04)
$C$DW$463	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePageTable_EQ_Band_Type"), DW_AT_const_value(0x00)
	.dwattr $C$DW$463, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x427)
	.dwattr $C$DW$463, DW_AT_decl_column(0x02)
$C$DW$464	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePageTable_EQ_InCircuitPolarity"), DW_AT_const_value(0x01)
	.dwattr $C$DW$464, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x430)
	.dwattr $C$DW$464, DW_AT_decl_column(0x02)
$C$DW$465	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePageTable_UseAlternateControl"), DW_AT_const_value(0x02)
	.dwattr $C$DW$465, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x442)
	.dwattr $C$DW$465, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$406

	.dwattr $C$DW$T$406, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$406, DW_AT_decl_line(0x41d)
	.dwattr $C$DW$T$406, DW_AT_decl_column(0x06)

$C$DW$T$407	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$407, DW_AT_name("AAX_EPlugInCategory")
	.dwattr $C$DW$T$407, DW_AT_byte_size(0x04)
$C$DW$466	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$466, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$466, DW_AT_decl_column(0x02)
$C$DW$467	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_EQ"), DW_AT_const_value(0x01)
	.dwattr $C$DW$467, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$467, DW_AT_decl_column(0x02)
$C$DW$468	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Dynamics"), DW_AT_const_value(0x02)
	.dwattr $C$DW$468, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$468, DW_AT_decl_column(0x02)
$C$DW$469	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_PitchShift"), DW_AT_const_value(0x04)
	.dwattr $C$DW$469, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$469, DW_AT_decl_column(0x02)
$C$DW$470	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Reverb"), DW_AT_const_value(0x08)
	.dwattr $C$DW$470, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$470, DW_AT_decl_column(0x02)
$C$DW$471	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Delay"), DW_AT_const_value(0x10)
	.dwattr $C$DW$471, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x150)
	.dwattr $C$DW$471, DW_AT_decl_column(0x02)
$C$DW$472	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Modulation"), DW_AT_const_value(0x20)
	.dwattr $C$DW$472, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x151)
	.dwattr $C$DW$472, DW_AT_decl_column(0x02)
$C$DW$473	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Harmonic"), DW_AT_const_value(0x40)
	.dwattr $C$DW$473, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x152)
	.dwattr $C$DW$473, DW_AT_decl_column(0x02)
$C$DW$474	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_NoiseReduction"), DW_AT_const_value(0x80)
	.dwattr $C$DW$474, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x153)
	.dwattr $C$DW$474, DW_AT_decl_column(0x02)
$C$DW$475	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Dither"), DW_AT_const_value(0x100)
	.dwattr $C$DW$475, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x154)
	.dwattr $C$DW$475, DW_AT_decl_column(0x02)
$C$DW$476	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_SoundField"), DW_AT_const_value(0x200)
	.dwattr $C$DW$476, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x155)
	.dwattr $C$DW$476, DW_AT_decl_column(0x02)
$C$DW$477	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_HWGenerators"), DW_AT_const_value(0x400)
	.dwattr $C$DW$477, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x156)
	.dwattr $C$DW$477, DW_AT_decl_column(0x02)
$C$DW$478	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_SWGenerators"), DW_AT_const_value(0x800)
	.dwattr $C$DW$478, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x157)
	.dwattr $C$DW$478, DW_AT_decl_column(0x02)
$C$DW$479	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_WrappedPlugin"), DW_AT_const_value(0x1000)
	.dwattr $C$DW$479, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x158)
	.dwattr $C$DW$479, DW_AT_decl_column(0x02)
$C$DW$480	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Effect"), DW_AT_const_value(0x2000)
	.dwattr $C$DW$480, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x159)
	.dwattr $C$DW$480, DW_AT_decl_column(0x02)
$C$DW$481	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_EPlugInCategory_Effect"), DW_AT_const_value(0x2000)
	.dwattr $C$DW$481, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$481, DW_AT_decl_column(0x02)
$C$DW$482	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_Example"), DW_AT_const_value(0x2000)
	.dwattr $C$DW$482, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x160)
	.dwattr $C$DW$482, DW_AT_decl_column(0x02)
$C$DW$483	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInCategory_MIDIEffect"), DW_AT_const_value(0x10000)
	.dwattr $C$DW$483, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x163)
	.dwattr $C$DW$483, DW_AT_decl_column(0x02)
$C$DW$484	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_EPlugInCategory_MIDIEffect"), DW_AT_const_value(0x10000)
	.dwattr $C$DW$484, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x164)
	.dwattr $C$DW$484, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$407

	.dwattr $C$DW$T$407, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$407, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$407, DW_AT_decl_column(0x06)

$C$DW$T$408	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$408, DW_AT_name("AAX_EPlugInRole")
	.dwattr $C$DW$T$408, DW_AT_byte_size(0x04)
$C$DW$485	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInRole_InsertOrAudioSuite"), DW_AT_const_value(0x00)
	.dwattr $C$DW$485, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$485, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$408

	.dwattr $C$DW$T$408, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$408, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$T$408, DW_AT_decl_column(0x06)

$C$DW$T$409	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$409, DW_AT_name("AAX_EPlugInStrings")
	.dwattr $C$DW$T$409, DW_AT_byte_size(0x04)
$C$DW$486	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_Analysis"), DW_AT_const_value(0x00)
	.dwattr $C$DW$486, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$486, DW_AT_decl_column(0x02)
$C$DW$487	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_MonoMode"), DW_AT_const_value(0x01)
	.dwattr $C$DW$487, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$487, DW_AT_decl_column(0x02)
$C$DW$488	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_MultiInputMode"), DW_AT_const_value(0x02)
	.dwattr $C$DW$488, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$488, DW_AT_decl_column(0x02)
$C$DW$489	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_RegionByRegionAnalysis"), DW_AT_const_value(0x03)
	.dwattr $C$DW$489, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$489, DW_AT_decl_column(0x02)
$C$DW$490	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_AllSelectedRegionsAnalysis"), DW_AT_const_value(0x04)
	.dwattr $C$DW$490, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$490, DW_AT_decl_column(0x02)
$C$DW$491	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_RegionName"), DW_AT_const_value(0x05)
	.dwattr $C$DW$491, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x190)
	.dwattr $C$DW$491, DW_AT_decl_column(0x02)
$C$DW$492	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_ClipName"), DW_AT_const_value(0x05)
	.dwattr $C$DW$492, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x191)
	.dwattr $C$DW$492, DW_AT_decl_column(0x02)
$C$DW$493	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_Progress"), DW_AT_const_value(0x06)
	.dwattr $C$DW$493, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x192)
	.dwattr $C$DW$493, DW_AT_decl_column(0x02)
$C$DW$494	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_PlugInFileName"), DW_AT_const_value(0x07)
	.dwattr $C$DW$494, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x193)
	.dwattr $C$DW$494, DW_AT_decl_column(0x02)
$C$DW$495	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_Preview"), DW_AT_const_value(0x08)
	.dwattr $C$DW$495, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x194)
	.dwattr $C$DW$495, DW_AT_decl_column(0x02)
$C$DW$496	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_Process"), DW_AT_const_value(0x09)
	.dwattr $C$DW$496, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x195)
	.dwattr $C$DW$496, DW_AT_decl_column(0x02)
$C$DW$497	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_Bypass"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$497, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x196)
	.dwattr $C$DW$497, DW_AT_decl_column(0x02)
$C$DW$498	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_ClipNameSuffix"), DW_AT_const_value(0x0b)
	.dwattr $C$DW$498, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x197)
	.dwattr $C$DW$498, DW_AT_decl_column(0x02)
$C$DW$499	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePlugInStrings_INT32_MAX"), DW_AT_const_value(0x7fffffff)
	.dwattr $C$DW$499, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x199)
	.dwattr $C$DW$499, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$409

	.dwattr $C$DW$T$409, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$409, DW_AT_decl_line(0x189)
	.dwattr $C$DW$T$409, DW_AT_decl_column(0x06)

$C$DW$T$410	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$410, DW_AT_name("AAX_EPreviewState")
	.dwattr $C$DW$T$410, DW_AT_byte_size(0x04)
$C$DW$500	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePreviewState_Stop"), DW_AT_const_value(0x00)
	.dwattr $C$DW$500, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x53d)
	.dwattr $C$DW$500, DW_AT_decl_column(0x02)
$C$DW$501	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePreviewState_Start"), DW_AT_const_value(0x01)
	.dwattr $C$DW$501, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x545)
	.dwattr $C$DW$501, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$410

	.dwattr $C$DW$T$410, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$410, DW_AT_decl_line(0x534)
	.dwattr $C$DW$T$410, DW_AT_decl_column(0x06)

$C$DW$T$411	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$411, DW_AT_name("AAX_EPrivateDataOptions")
	.dwattr $C$DW$T$411, DW_AT_byte_size(0x04)
$C$DW$502	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePrivateDataOptions_DefaultOptions"), DW_AT_const_value(0x00)
	.dwattr $C$DW$502, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x35f)
	.dwattr $C$DW$502, DW_AT_decl_column(0x02)
$C$DW$503	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePrivateDataOptions_KeepOnReset"), DW_AT_const_value(0x01)
	.dwattr $C$DW$503, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x360)
	.dwattr $C$DW$503, DW_AT_decl_column(0x02)
$C$DW$504	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePrivateDataOptions_External"), DW_AT_const_value(0x02)
	.dwattr $C$DW$504, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x361)
	.dwattr $C$DW$504, DW_AT_decl_column(0x02)
$C$DW$505	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePrivateDataOptions_Align8"), DW_AT_const_value(0x04)
	.dwattr $C$DW$505, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x362)
	.dwattr $C$DW$505, DW_AT_decl_column(0x02)
$C$DW$506	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_ePrivateDataOptions_INT32_MAX"), DW_AT_const_value(0x7fffffff)
	.dwattr $C$DW$506, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x364)
	.dwattr $C$DW$506, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$411

	.dwattr $C$DW$T$411, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$411, DW_AT_decl_line(0x35d)
	.dwattr $C$DW$T$411, DW_AT_decl_column(0x06)

$C$DW$T$412	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$412, DW_AT_name("AAX_EProcessingState")
	.dwattr $C$DW$T$412, DW_AT_byte_size(0x04)
$C$DW$507	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProcessingState_StopPass"), DW_AT_const_value(0x02)
	.dwattr $C$DW$507, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x55b)
	.dwattr $C$DW$507, DW_AT_decl_column(0x02)
$C$DW$508	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProcessingState_StartPass"), DW_AT_const_value(0x03)
	.dwattr $C$DW$508, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x568)
	.dwattr $C$DW$508, DW_AT_decl_column(0x02)
$C$DW$509	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProcessingState_EndPassGroup"), DW_AT_const_value(0x04)
	.dwattr $C$DW$509, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x572)
	.dwattr $C$DW$509, DW_AT_decl_column(0x02)
$C$DW$510	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProcessingState_BeginPassGroup"), DW_AT_const_value(0x05)
	.dwattr $C$DW$510, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x57c)
	.dwattr $C$DW$510, DW_AT_decl_column(0x02)
$C$DW$511	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProcessingState_Stop"), DW_AT_const_value(0x02)
	.dwattr $C$DW$511, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x57e)
	.dwattr $C$DW$511, DW_AT_decl_column(0x02)
$C$DW$512	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProcessingState_Start"), DW_AT_const_value(0x03)
	.dwattr $C$DW$512, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x57f)
	.dwattr $C$DW$512, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$412

	.dwattr $C$DW$T$412, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$412, DW_AT_decl_line(0x54f)
	.dwattr $C$DW$T$412, DW_AT_decl_column(0x06)

$C$DW$T$413	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$413, DW_AT_name("AAX_EProperty")
	.dwattr $C$DW$T$413, DW_AT_byte_size(0x04)
$C$DW$513	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NoID"), DW_AT_const_value(0x00)
	.dwattr $C$DW$513, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x51)
	.dwattr $C$DW$513, DW_AT_decl_column(0x02)
$C$DW$514	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MinProp"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$514, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x52)
	.dwattr $C$DW$514, DW_AT_decl_column(0x02)
$C$DW$515	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInSpecPropsBase"), DW_AT_const_value(0x0a)
	.dwattr $C$DW$515, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$515, DW_AT_decl_column(0x02)
$C$DW$516	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ManufacturerID"), DW_AT_const_value(0x0b)
	.dwattr $C$DW$516, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$516, DW_AT_decl_column(0x05)
$C$DW$517	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ProductID"), DW_AT_const_value(0x0c)
	.dwattr $C$DW$517, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x77)
	.dwattr $C$DW$517, DW_AT_decl_column(0x05)
$C$DW$518	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_Native"), DW_AT_const_value(0x0d)
	.dwattr $C$DW$518, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$518, DW_AT_decl_column(0x05)
$C$DW$519	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_RTAS"), DW_AT_const_value(0x0d)
	.dwattr $C$DW$519, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$519, DW_AT_decl_column(0x05)
$C$DW$520	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_AudioSuite"), DW_AT_const_value(0x0e)
	.dwattr $C$DW$520, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$520, DW_AT_decl_column(0x05)
$C$DW$521	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_TI"), DW_AT_const_value(0x0f)
	.dwattr $C$DW$521, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$521, DW_AT_decl_column(0x05)
$C$DW$522	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_NoProcessing"), DW_AT_const_value(0x10)
	.dwattr $C$DW$522, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$522, DW_AT_decl_column(0x02)
$C$DW$523	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_Deprecated"), DW_AT_const_value(0x12)
	.dwattr $C$DW$523, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$523, DW_AT_decl_column(0x05)
$C$DW$524	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Deprecated_Plugin_List"), DW_AT_const_value(0x15)
	.dwattr $C$DW$524, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$524, DW_AT_decl_column(0x05)
$C$DW$525	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Related_DSP_Plugin_List"), DW_AT_const_value(0x16)
	.dwattr $C$DW$525, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$525, DW_AT_decl_column(0x05)
$C$DW$526	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Related_Native_Plugin_List"), DW_AT_const_value(0x17)
	.dwattr $C$DW$526, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$526, DW_AT_decl_column(0x05)
$C$DW$527	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Deprecated_DSP_Plugin_List"), DW_AT_const_value(0x18)
	.dwattr $C$DW$527, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$527, DW_AT_decl_column(0x05)
$C$DW$528	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Deprecated_Native_Plugin_List"), DW_AT_const_value(0x15)
	.dwattr $C$DW$528, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$528, DW_AT_decl_column(0x05)
$C$DW$529	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_PlugInID_ExternalProcessor"), DW_AT_const_value(0x19)
	.dwattr $C$DW$529, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$529, DW_AT_decl_column(0x02)
$C$DW$530	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ExternalProcessorTypeID"), DW_AT_const_value(0x1a)
	.dwattr $C$DW$530, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x106)
	.dwattr $C$DW$530, DW_AT_decl_column(0x02)
$C$DW$531	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ProcessProcPropsBase"), DW_AT_const_value(0x23)
	.dwattr $C$DW$531, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x112)
	.dwattr $C$DW$531, DW_AT_decl_column(0x02)
$C$DW$532	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NativeProcessProc"), DW_AT_const_value(0x24)
	.dwattr $C$DW$532, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x119)
	.dwattr $C$DW$532, DW_AT_decl_column(0x02)
$C$DW$533	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NativeInstanceInitProc"), DW_AT_const_value(0x25)
	.dwattr $C$DW$533, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x120)
	.dwattr $C$DW$533, DW_AT_decl_column(0x02)
$C$DW$534	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NativeBackgroundProc"), DW_AT_const_value(0x26)
	.dwattr $C$DW$534, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x127)
	.dwattr $C$DW$534, DW_AT_decl_column(0x02)
$C$DW$535	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TIDLLFileName"), DW_AT_const_value(0x27)
	.dwattr $C$DW$535, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$535, DW_AT_decl_column(0x02)
$C$DW$536	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TIProcessProc"), DW_AT_const_value(0x28)
	.dwattr $C$DW$536, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x135)
	.dwattr $C$DW$536, DW_AT_decl_column(0x02)
$C$DW$537	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TIInstanceInitProc"), DW_AT_const_value(0x29)
	.dwattr $C$DW$537, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$537, DW_AT_decl_column(0x02)
$C$DW$538	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TIBackgroundProc"), DW_AT_const_value(0x2a)
	.dwattr $C$DW$538, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x143)
	.dwattr $C$DW$538, DW_AT_decl_column(0x02)
$C$DW$539	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_GeneralPropsBase"), DW_AT_const_value(0x32)
	.dwattr $C$DW$539, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$539, DW_AT_decl_column(0x02)
$C$DW$540	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_InputStemFormat"), DW_AT_const_value(0x33)
	.dwattr $C$DW$540, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x156)
	.dwattr $C$DW$540, DW_AT_decl_column(0x05)
$C$DW$541	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_OutputStemFormat"), DW_AT_const_value(0x34)
	.dwattr $C$DW$541, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$541, DW_AT_decl_column(0x05)
$C$DW$542	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DSP_AudioBufferLength"), DW_AT_const_value(0x36)
	.dwattr $C$DW$542, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x164)
	.dwattr $C$DW$542, DW_AT_decl_column(0x02)
$C$DW$543	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_AudioBufferLength"), DW_AT_const_value(0x36)
	.dwattr $C$DW$543, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x167)
	.dwattr $C$DW$543, DW_AT_decl_column(0x05)
$C$DW$544	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_LatencyContribution"), DW_AT_const_value(0x38)
	.dwattr $C$DW$544, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x178)
	.dwattr $C$DW$544, DW_AT_decl_column(0x05)
$C$DW$545	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_SampleRate"), DW_AT_const_value(0x3a)
	.dwattr $C$DW$545, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$545, DW_AT_decl_column(0x05)
$C$DW$546	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_CanBypass"), DW_AT_const_value(0x3c)
	.dwattr $C$DW$546, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$546, DW_AT_decl_column(0x05)
$C$DW$547	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_SideChainStemFormat"), DW_AT_const_value(0x3d)
	.dwattr $C$DW$547, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x194)
	.dwattr $C$DW$547, DW_AT_decl_column(0x05)
$C$DW$548	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TI_SharedCycleCount"), DW_AT_const_value(0x3e)
	.dwattr $C$DW$548, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$548, DW_AT_decl_column(0x05)
$C$DW$549	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TI_InstanceCycleCount"), DW_AT_const_value(0x3f)
	.dwattr $C$DW$549, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$549, DW_AT_decl_column(0x05)
$C$DW$550	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TI_MaxInstancesPerChip"), DW_AT_const_value(0x40)
	.dwattr $C$DW$550, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$550, DW_AT_decl_column(0x05)
$C$DW$551	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_TI_ForceAllowChipSharing"), DW_AT_const_value(0x41)
	.dwattr $C$DW$551, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$551, DW_AT_decl_column(0x02)
$C$DW$552	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_AlwaysBypass"), DW_AT_const_value(0x4b)
	.dwattr $C$DW$552, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$552, DW_AT_decl_column(0x02)
$C$DW$553	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ShowInMenus"), DW_AT_const_value(0x4c)
	.dwattr $C$DW$553, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$553, DW_AT_decl_column(0x02)
$C$DW$554	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_HybridOutputStemFormat"), DW_AT_const_value(0x5a)
	.dwattr $C$DW$554, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$554, DW_AT_decl_column(0x05)
$C$DW$555	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_HybridInputStemFormat"), DW_AT_const_value(0x5b)
	.dwattr $C$DW$555, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$555, DW_AT_decl_column(0x05)
$C$DW$556	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_AudiosuitePropsBase"), DW_AT_const_value(0x64)
	.dwattr $C$DW$556, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x204)
	.dwattr $C$DW$556, DW_AT_decl_column(0x02)
$C$DW$557	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_UsesRandomAccess"), DW_AT_const_value(0x65)
	.dwattr $C$DW$557, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x20d)
	.dwattr $C$DW$557, DW_AT_decl_column(0x05)
$C$DW$558	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_RequiresAnalysis"), DW_AT_const_value(0x66)
	.dwattr $C$DW$558, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x215)
	.dwattr $C$DW$558, DW_AT_decl_column(0x05)
$C$DW$559	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_OptionalAnalysis"), DW_AT_const_value(0x67)
	.dwattr $C$DW$559, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x220)
	.dwattr $C$DW$559, DW_AT_decl_column(0x05)
$C$DW$560	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_AllowPreviewWithoutAnalysis"), DW_AT_const_value(0x68)
	.dwattr $C$DW$560, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x228)
	.dwattr $C$DW$560, DW_AT_decl_column(0x05)
$C$DW$561	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DestinationTrack"), DW_AT_const_value(0x69)
	.dwattr $C$DW$561, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x232)
	.dwattr $C$DW$561, DW_AT_decl_column(0x05)
$C$DW$562	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_RequestsAllTrackData"), DW_AT_const_value(0x6a)
	.dwattr $C$DW$562, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$562, DW_AT_decl_column(0x05)
$C$DW$563	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ContinuousOnly"), DW_AT_const_value(0x6b)
	.dwattr $C$DW$563, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x244)
	.dwattr $C$DW$563, DW_AT_decl_column(0x05)
$C$DW$564	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MultiInputModeOnly"), DW_AT_const_value(0x6c)
	.dwattr $C$DW$564, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$564, DW_AT_decl_column(0x05)
$C$DW$565	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DisablePreview"), DW_AT_const_value(0x6e)
	.dwattr $C$DW$565, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x256)
	.dwattr $C$DW$565, DW_AT_decl_column(0x05)
$C$DW$566	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DoesntIncrOutputSample"), DW_AT_const_value(0x70)
	.dwattr $C$DW$566, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x25f)
	.dwattr $C$DW$566, DW_AT_decl_column(0x05)
$C$DW$567	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NumberOfInputs"), DW_AT_const_value(0x71)
	.dwattr $C$DW$567, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x268)
	.dwattr $C$DW$567, DW_AT_decl_column(0x05)
$C$DW$568	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NumberOfOutputs"), DW_AT_const_value(0x72)
	.dwattr $C$DW$568, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x271)
	.dwattr $C$DW$568, DW_AT_decl_column(0x05)
$C$DW$569	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DisableHandles"), DW_AT_const_value(0x73)
	.dwattr $C$DW$569, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x277)
	.dwattr $C$DW$569, DW_AT_decl_column(0x05)
$C$DW$570	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_SupportsSideChainInput"), DW_AT_const_value(0x74)
	.dwattr $C$DW$570, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x27d)
	.dwattr $C$DW$570, DW_AT_decl_column(0x05)
$C$DW$571	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_NeedsOutputDithered"), DW_AT_const_value(0x75)
	.dwattr $C$DW$571, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x285)
	.dwattr $C$DW$571, DW_AT_decl_column(0x05)
$C$DW$572	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DisableAudioSuiteReverse"), DW_AT_const_value(0x76)
	.dwattr $C$DW$572, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x28d)
	.dwattr $C$DW$572, DW_AT_decl_column(0x05)
$C$DW$573	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxASProp"), DW_AT_const_value(0x77)
	.dwattr $C$DW$573, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x28f)
	.dwattr $C$DW$573, DW_AT_decl_column(0x02)
$C$DW$574	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_GUIBase"), DW_AT_const_value(0x96)
	.dwattr $C$DW$574, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$574, DW_AT_decl_column(0x02)
$C$DW$575	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_UsesClientGUI"), DW_AT_const_value(0x97)
	.dwattr $C$DW$575, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$575, DW_AT_decl_column(0x05)
$C$DW$576	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxGUIProp"), DW_AT_const_value(0x98)
	.dwattr $C$DW$576, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$576, DW_AT_decl_column(0x02)
$C$DW$577	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MeterBase"), DW_AT_const_value(0xc7)
	.dwattr $C$DW$577, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x2ba)
	.dwattr $C$DW$577, DW_AT_decl_column(0x02)
$C$DW$578	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Meter_Type"), DW_AT_const_value(0xc8)
	.dwattr $C$DW$578, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x2bf)
	.dwattr $C$DW$578, DW_AT_decl_column(0x05)
$C$DW$579	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Meter_Orientation"), DW_AT_const_value(0xc9)
	.dwattr $C$DW$579, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x2c4)
	.dwattr $C$DW$579, DW_AT_decl_column(0x05)
$C$DW$580	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Meter_Ballistics"), DW_AT_const_value(0xca)
	.dwattr $C$DW$580, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x2c9)
	.dwattr $C$DW$580, DW_AT_decl_column(0x05)
$C$DW$581	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxMeterProp"), DW_AT_const_value(0xcb)
	.dwattr $C$DW$581, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x2cb)
	.dwattr $C$DW$581, DW_AT_decl_column(0x02)
$C$DW$582	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ConstraintBase"), DW_AT_const_value(0x12b)
	.dwattr $C$DW$582, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x2da)
	.dwattr $C$DW$582, DW_AT_decl_column(0x02)
$C$DW$583	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_Location"), DW_AT_const_value(0x12c)
	.dwattr $C$DW$583, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x2df)
	.dwattr $C$DW$583, DW_AT_decl_column(0x05)
$C$DW$584	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_Topology"), DW_AT_const_value(0x12d)
	.dwattr $C$DW$584, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x2e5)
	.dwattr $C$DW$584, DW_AT_decl_column(0x05)
$C$DW$585	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_NeverUnload"), DW_AT_const_value(0x12e)
	.dwattr $C$DW$585, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x2ec)
	.dwattr $C$DW$585, DW_AT_decl_column(0x05)
$C$DW$586	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_NeverCache"), DW_AT_const_value(0x12f)
	.dwattr $C$DW$586, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x2f8)
	.dwattr $C$DW$586, DW_AT_decl_column(0x05)
$C$DW$587	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_MultiMonoSupport"), DW_AT_const_value(0x130)
	.dwattr $C$DW$587, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x303)
	.dwattr $C$DW$587, DW_AT_decl_column(0x05)
$C$DW$588	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxConstraintProp"), DW_AT_const_value(0x131)
	.dwattr $C$DW$588, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x305)
	.dwattr $C$DW$588, DW_AT_decl_column(0x02)
$C$DW$589	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_FeaturesBase"), DW_AT_const_value(0x131)
	.dwattr $C$DW$589, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x312)
	.dwattr $C$DW$589, DW_AT_decl_column(0x02)
$C$DW$590	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_SupportsSaveRestore"), DW_AT_const_value(0x131)
	.dwattr $C$DW$590, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x31b)
	.dwattr $C$DW$590, DW_AT_decl_column(0x02)
$C$DW$591	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_UsesTransport"), DW_AT_const_value(0x132)
	.dwattr $C$DW$591, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x322)
	.dwattr $C$DW$591, DW_AT_decl_column(0x02)
$C$DW$592	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_StoreXMLPageTablesByEffect"), DW_AT_const_value(0x133)
	.dwattr $C$DW$592, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x32e)
	.dwattr $C$DW$592, DW_AT_decl_column(0x02)
$C$DW$593	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_StoreXMLPageTablesByType"), DW_AT_const_value(0x133)
	.dwattr $C$DW$593, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x331)
	.dwattr $C$DW$593, DW_AT_decl_column(0x05)
$C$DW$594	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_RequiresChunkCallsOnMainThread"), DW_AT_const_value(0x134)
	.dwattr $C$DW$594, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x33d)
	.dwattr $C$DW$594, DW_AT_decl_column(0x05)
$C$DW$595	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ObservesTransportState"), DW_AT_const_value(0x135)
	.dwattr $C$DW$595, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x347)
	.dwattr $C$DW$595, DW_AT_decl_column(0x02)
$C$DW$596	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_UsesTransportControl"), DW_AT_const_value(0x137)
	.dwattr $C$DW$596, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x34e)
	.dwattr $C$DW$596, DW_AT_decl_column(0x02)
$C$DW$597	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxFeaturesProp"), DW_AT_const_value(0x138)
	.dwattr $C$DW$597, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x351)
	.dwattr $C$DW$597, DW_AT_decl_column(0x02)
$C$DW$598	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_ConstraintBase_2"), DW_AT_const_value(0x15e)
	.dwattr $C$DW$598, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x35e)
	.dwattr $C$DW$598, DW_AT_decl_column(0x02)
$C$DW$599	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_AlwaysProcess"), DW_AT_const_value(0x15f)
	.dwattr $C$DW$599, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x36f)
	.dwattr $C$DW$599, DW_AT_decl_column(0x02)
$C$DW$600	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_Constraint_DoNotApplyDefaultSettings"), DW_AT_const_value(0x160)
	.dwattr $C$DW$600, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x386)
	.dwattr $C$DW$600, DW_AT_decl_column(0x02)
$C$DW$601	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxConstraintProp_2"), DW_AT_const_value(0x161)
	.dwattr $C$DW$601, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x388)
	.dwattr $C$DW$601, DW_AT_decl_column(0x02)
$C$DW$602	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_DebugPropertiesBase"), DW_AT_const_value(0x190)
	.dwattr $C$DW$602, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x392)
	.dwattr $C$DW$602, DW_AT_decl_column(0x02)
$C$DW$603	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_EnableHostDebugLogs"), DW_AT_const_value(0x191)
	.dwattr $C$DW$603, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x39a)
	.dwattr $C$DW$603, DW_AT_decl_column(0x02)
$C$DW$604	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxProp"), DW_AT_const_value(0x192)
	.dwattr $C$DW$604, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x39e)
	.dwattr $C$DW$604, DW_AT_decl_column(0x02)
$C$DW$605	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_MaxCap"), DW_AT_const_value(0x2710)
	.dwattr $C$DW$605, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x39f)
	.dwattr $C$DW$605, DW_AT_decl_column(0x02)
$C$DW$606	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eProperty_StemFormat"), DW_AT_const_value(0x2711)
	.dwattr $C$DW$606, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x3a8)
	.dwattr $C$DW$606, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$413

	.dwattr $C$DW$T$413, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Properties.h")
	.dwattr $C$DW$T$413, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$413, DW_AT_decl_column(0x06)

$C$DW$T$414	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$414, DW_AT_name("AAX_ERecordMode")
	.dwattr $C$DW$T$414, DW_AT_byte_size(0x04)
$C$DW$607	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_Unknown"), DW_AT_const_value(0x00)
	.dwattr $C$DW$607, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x5fd)
	.dwattr $C$DW$607, DW_AT_decl_column(0x02)
$C$DW$608	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_None"), DW_AT_const_value(0x01)
	.dwattr $C$DW$608, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x5fe)
	.dwattr $C$DW$608, DW_AT_decl_column(0x02)
$C$DW$609	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_Normal"), DW_AT_const_value(0x02)
	.dwattr $C$DW$609, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x5ff)
	.dwattr $C$DW$609, DW_AT_decl_column(0x02)
$C$DW$610	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_Destructive"), DW_AT_const_value(0x03)
	.dwattr $C$DW$610, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x600)
	.dwattr $C$DW$610, DW_AT_decl_column(0x02)
$C$DW$611	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_QuickPunch"), DW_AT_const_value(0x04)
	.dwattr $C$DW$611, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x601)
	.dwattr $C$DW$611, DW_AT_decl_column(0x02)
$C$DW$612	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_TrackPunch"), DW_AT_const_value(0x05)
	.dwattr $C$DW$612, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x602)
	.dwattr $C$DW$612, DW_AT_decl_column(0x02)
$C$DW$613	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eRecordMode_Num"), DW_AT_const_value(0x06)
	.dwattr $C$DW$613, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x604)
	.dwattr $C$DW$613, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$414

	.dwattr $C$DW$T$414, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$414, DW_AT_decl_line(0x5fb)
	.dwattr $C$DW$T$414, DW_AT_decl_column(0x06)

$C$DW$T$415	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$415, DW_AT_name("AAX_EResourceType")
	.dwattr $C$DW$T$415, DW_AT_byte_size(0x04)
$C$DW$614	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eResourceType_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$614, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$614, DW_AT_decl_column(0x02)
$C$DW$615	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eResourceType_PageTable"), DW_AT_const_value(0x01)
	.dwattr $C$DW$615, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$615, DW_AT_decl_column(0x02)
$C$DW$616	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eResourceType_PageTableDir"), DW_AT_const_value(0x02)
	.dwattr $C$DW$616, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$616, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$415

	.dwattr $C$DW$T$415, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$415, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$T$415, DW_AT_decl_column(0x06)

$C$DW$T$416	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$416, DW_AT_name("AAX_ESampleRateMask")
	.dwattr $C$DW$T$416, DW_AT_byte_size(0x04)
$C$DW$617	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_No"), DW_AT_const_value(0x00)
	.dwattr $C$DW$617, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x3a6)
	.dwattr $C$DW$617, DW_AT_decl_column(0x02)
$C$DW$618	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_44100"), DW_AT_const_value(0x01)
	.dwattr $C$DW$618, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x3a8)
	.dwattr $C$DW$618, DW_AT_decl_column(0x02)
$C$DW$619	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_48000"), DW_AT_const_value(0x02)
	.dwattr $C$DW$619, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x3a9)
	.dwattr $C$DW$619, DW_AT_decl_column(0x02)
$C$DW$620	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_88200"), DW_AT_const_value(0x04)
	.dwattr $C$DW$620, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x3aa)
	.dwattr $C$DW$620, DW_AT_decl_column(0x02)
$C$DW$621	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_96000"), DW_AT_const_value(0x08)
	.dwattr $C$DW$621, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x3ab)
	.dwattr $C$DW$621, DW_AT_decl_column(0x02)
$C$DW$622	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_176400"), DW_AT_const_value(0x10)
	.dwattr $C$DW$622, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x3ac)
	.dwattr $C$DW$622, DW_AT_decl_column(0x02)
$C$DW$623	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_192000"), DW_AT_const_value(0x20)
	.dwattr $C$DW$623, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x3ad)
	.dwattr $C$DW$623, DW_AT_decl_column(0x02)
$C$DW$624	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSampleRateMask_All"), DW_AT_const_value(0x7fffffff)
	.dwattr $C$DW$624, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x3af)
	.dwattr $C$DW$624, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$416

	.dwattr $C$DW$T$416, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$416, DW_AT_decl_line(0x3a4)
	.dwattr $C$DW$T$416, DW_AT_decl_column(0x06)

$C$DW$T$417	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$417, DW_AT_name("AAX_EStemFormat")
	.dwattr $C$DW$T$417, DW_AT_byte_size(0x04)
$C$DW$625	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Mono"), DW_AT_const_value(0x01)
	.dwattr $C$DW$625, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$625, DW_AT_decl_column(0x02)
$C$DW$626	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_DummyConnection"), DW_AT_const_value(0x01)
	.dwattr $C$DW$626, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$626, DW_AT_decl_column(0x02)
$C$DW$627	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Stereo"), DW_AT_const_value(0x10002)
	.dwattr $C$DW$627, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$627, DW_AT_decl_column(0x02)
$C$DW$628	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_LCR"), DW_AT_const_value(0x20003)
	.dwattr $C$DW$628, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$628, DW_AT_decl_column(0x02)
$C$DW$629	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_LCRS"), DW_AT_const_value(0x30004)
	.dwattr $C$DW$629, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0xff)
	.dwattr $C$DW$629, DW_AT_decl_column(0x02)
$C$DW$630	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Quad"), DW_AT_const_value(0x40004)
	.dwattr $C$DW$630, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x100)
	.dwattr $C$DW$630, DW_AT_decl_column(0x02)
$C$DW$631	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_5_0"), DW_AT_const_value(0x50005)
	.dwattr $C$DW$631, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x101)
	.dwattr $C$DW$631, DW_AT_decl_column(0x02)
$C$DW$632	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_5_1"), DW_AT_const_value(0x60006)
	.dwattr $C$DW$632, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x102)
	.dwattr $C$DW$632, DW_AT_decl_column(0x02)
$C$DW$633	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_6_0"), DW_AT_const_value(0x70006)
	.dwattr $C$DW$633, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x103)
	.dwattr $C$DW$633, DW_AT_decl_column(0x02)
$C$DW$634	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_6_1"), DW_AT_const_value(0x80007)
	.dwattr $C$DW$634, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x104)
	.dwattr $C$DW$634, DW_AT_decl_column(0x02)
$C$DW$635	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_0_SDDS"), DW_AT_const_value(0x90007)
	.dwattr $C$DW$635, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x105)
	.dwattr $C$DW$635, DW_AT_decl_column(0x02)
$C$DW$636	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_1_SDDS"), DW_AT_const_value(0xa0008)
	.dwattr $C$DW$636, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x106)
	.dwattr $C$DW$636, DW_AT_decl_column(0x02)
$C$DW$637	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_0_DTS"), DW_AT_const_value(0xb0007)
	.dwattr $C$DW$637, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x107)
	.dwattr $C$DW$637, DW_AT_decl_column(0x02)
$C$DW$638	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_1_DTS"), DW_AT_const_value(0xc0008)
	.dwattr $C$DW$638, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x108)
	.dwattr $C$DW$638, DW_AT_decl_column(0x02)
$C$DW$639	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_0_2"), DW_AT_const_value(0x140009)
	.dwattr $C$DW$639, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x109)
	.dwattr $C$DW$639, DW_AT_decl_column(0x02)
$C$DW$640	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_1_2"), DW_AT_const_value(0xd000a)
	.dwattr $C$DW$640, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$640, DW_AT_decl_column(0x02)
$C$DW$641	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_5_0_2"), DW_AT_const_value(0x150007)
	.dwattr $C$DW$641, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$641, DW_AT_decl_column(0x02)
$C$DW$642	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_5_1_2"), DW_AT_const_value(0x160008)
	.dwattr $C$DW$642, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$642, DW_AT_decl_column(0x02)
$C$DW$643	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_5_0_4"), DW_AT_const_value(0x170009)
	.dwattr $C$DW$643, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$643, DW_AT_decl_column(0x02)
$C$DW$644	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_5_1_4"), DW_AT_const_value(0x18000a)
	.dwattr $C$DW$644, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$644, DW_AT_decl_column(0x02)
$C$DW$645	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_0_4"), DW_AT_const_value(0x19000b)
	.dwattr $C$DW$645, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$645, DW_AT_decl_column(0x02)
$C$DW$646	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_1_4"), DW_AT_const_value(0x1a000c)
	.dwattr $C$DW$646, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x110)
	.dwattr $C$DW$646, DW_AT_decl_column(0x02)
$C$DW$647	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_0_6"), DW_AT_const_value(0x23000d)
	.dwattr $C$DW$647, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x111)
	.dwattr $C$DW$647, DW_AT_decl_column(0x02)
$C$DW$648	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_7_1_6"), DW_AT_const_value(0x24000e)
	.dwattr $C$DW$648, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x112)
	.dwattr $C$DW$648, DW_AT_decl_column(0x02)
$C$DW$649	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_9_0_4"), DW_AT_const_value(0x1b000d)
	.dwattr $C$DW$649, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x113)
	.dwattr $C$DW$649, DW_AT_decl_column(0x02)
$C$DW$650	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_9_1_4"), DW_AT_const_value(0x1c000e)
	.dwattr $C$DW$650, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x114)
	.dwattr $C$DW$650, DW_AT_decl_column(0x02)
$C$DW$651	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_9_0_6"), DW_AT_const_value(0x1d000f)
	.dwattr $C$DW$651, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x115)
	.dwattr $C$DW$651, DW_AT_decl_column(0x02)
$C$DW$652	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_9_1_6"), DW_AT_const_value(0x1e0010)
	.dwattr $C$DW$652, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x116)
	.dwattr $C$DW$652, DW_AT_decl_column(0x02)
$C$DW$653	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_1_ACN"), DW_AT_const_value(0xe0004)
	.dwattr $C$DW$653, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x119)
	.dwattr $C$DW$653, DW_AT_decl_column(0x02)
$C$DW$654	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_2_ACN"), DW_AT_const_value(0x120009)
	.dwattr $C$DW$654, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$654, DW_AT_decl_column(0x02)
$C$DW$655	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_3_ACN"), DW_AT_const_value(0x130010)
	.dwattr $C$DW$655, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$655, DW_AT_decl_column(0x02)
$C$DW$656	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_4_ACN"), DW_AT_const_value(0x1f0019)
	.dwattr $C$DW$656, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$656, DW_AT_decl_column(0x02)
$C$DW$657	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_5_ACN"), DW_AT_const_value(0x200024)
	.dwattr $C$DW$657, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$657, DW_AT_decl_column(0x02)
$C$DW$658	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_6_ACN"), DW_AT_const_value(0x210031)
	.dwattr $C$DW$658, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$658, DW_AT_decl_column(0x02)
$C$DW$659	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Ambi_7_ACN"), DW_AT_const_value(0x220040)
	.dwattr $C$DW$659, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$659, DW_AT_decl_column(0x02)
$C$DW$660	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormatNum"), DW_AT_const_value(0x25)
	.dwattr $C$DW$660, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x124)
	.dwattr $C$DW$660, DW_AT_decl_column(0x02)
$C$DW$661	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_None"), DW_AT_const_value(-6553600)
	.dwattr $C$DW$661, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x126)
	.dwattr $C$DW$661, DW_AT_decl_column(0x02)
$C$DW$662	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_Any"), DW_AT_const_value(-65536)
	.dwattr $C$DW$662, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x127)
	.dwattr $C$DW$662, DW_AT_decl_column(0x02)
$C$DW$663	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eStemFormat_INT32_MAX"), DW_AT_const_value(0x7fffffff)
	.dwattr $C$DW$663, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x129)
	.dwattr $C$DW$663, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$417

	.dwattr $C$DW$T$417, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$417, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$417, DW_AT_decl_column(0x06)

$C$DW$T$418	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$418, DW_AT_name("AAX_ESupportLevel")
	.dwattr $C$DW$T$418, DW_AT_byte_size(0x04)
$C$DW$664	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSupportLevel_Uninitialized"), DW_AT_const_value(0x00)
	.dwattr $C$DW$664, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x59a)
	.dwattr $C$DW$664, DW_AT_decl_column(0x02)
$C$DW$665	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSupportLevel_Unsupported"), DW_AT_const_value(0x01)
	.dwattr $C$DW$665, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x59e)
	.dwattr $C$DW$665, DW_AT_decl_column(0x02)
$C$DW$666	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSupportLevel_Supported"), DW_AT_const_value(0x02)
	.dwattr $C$DW$666, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x5a2)
	.dwattr $C$DW$666, DW_AT_decl_column(0x03)
$C$DW$667	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSupportLevel_Disabled"), DW_AT_const_value(0x03)
	.dwattr $C$DW$667, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x5ad)
	.dwattr $C$DW$667, DW_AT_decl_column(0x03)
$C$DW$668	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eSupportLevel_ByProperty"), DW_AT_const_value(0x04)
	.dwattr $C$DW$668, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x5b4)
	.dwattr $C$DW$668, DW_AT_decl_column(0x03)
	.dwendtag $C$DW$T$418

	.dwattr $C$DW$T$418, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$418, DW_AT_decl_line(0x596)
	.dwattr $C$DW$T$418, DW_AT_decl_column(0x06)

$C$DW$T$419	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$419, DW_AT_name("AAX_ETargetPlatform")
	.dwattr $C$DW$T$419, DW_AT_byte_size(0x04)
$C$DW$669	.dwtag  DW_TAG_enumerator, DW_AT_name("kAAX_eTargetPlatform_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$669, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x585)
	.dwattr $C$DW$669, DW_AT_decl_column(0x02)
$C$DW$670	.dwtag  DW_TAG_enumerator, DW_AT_name("kAAX_eTargetPlatform_Native"), DW_AT_const_value(0x01)
	.dwattr $C$DW$670, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x586)
	.dwattr $C$DW$670, DW_AT_decl_column(0x02)
$C$DW$671	.dwtag  DW_TAG_enumerator, DW_AT_name("kAAX_eTargetPlatform_TI"), DW_AT_const_value(0x02)
	.dwattr $C$DW$671, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x587)
	.dwattr $C$DW$671, DW_AT_decl_column(0x02)
$C$DW$672	.dwtag  DW_TAG_enumerator, DW_AT_name("kAAX_eTargetPlatform_External"), DW_AT_const_value(0x03)
	.dwattr $C$DW$672, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x588)
	.dwattr $C$DW$672, DW_AT_decl_column(0x02)
$C$DW$673	.dwtag  DW_TAG_enumerator, DW_AT_name("kAAX_eTargetPlatform_Count"), DW_AT_const_value(0x05)
	.dwattr $C$DW$673, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x589)
	.dwattr $C$DW$673, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$419

	.dwattr $C$DW$T$419, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$419, DW_AT_decl_line(0x583)
	.dwattr $C$DW$T$419, DW_AT_decl_column(0x06)

$C$DW$T$420	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$420, DW_AT_name("AAX_ETextEncoding")
	.dwattr $C$DW$T$420, DW_AT_byte_size(0x04)
$C$DW$674	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTextEncoding_Undefined"), DW_AT_const_value(-1)
	.dwattr $C$DW$674, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x5d5)
	.dwattr $C$DW$674, DW_AT_decl_column(0x03)
$C$DW$675	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTextEncoding_UTF8"), DW_AT_const_value(0x00)
	.dwattr $C$DW$675, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x5d6)
	.dwattr $C$DW$675, DW_AT_decl_column(0x03)
$C$DW$676	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTextEncoding_Num"), DW_AT_const_value(0x01)
	.dwattr $C$DW$676, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x5d8)
	.dwattr $C$DW$676, DW_AT_decl_column(0x03)
	.dwendtag $C$DW$T$420

	.dwattr $C$DW$T$420, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$420, DW_AT_decl_line(0x5d3)
	.dwattr $C$DW$T$420, DW_AT_decl_column(0x06)

$C$DW$T$421	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$421, DW_AT_name("AAX_ETracePriorityDSP")
	.dwattr $C$DW$T$421, DW_AT_byte_size(0x04)
$C$DW$677	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityDSP_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$677, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x63)
	.dwattr $C$DW$677, DW_AT_decl_column(0x02)
$C$DW$678	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityDSP_Assert"), DW_AT_const_value(0x01)
	.dwattr $C$DW$678, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x64)
	.dwattr $C$DW$678, DW_AT_decl_column(0x02)
$C$DW$679	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityDSP_High"), DW_AT_const_value(0x02)
	.dwattr $C$DW$679, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x65)
	.dwattr $C$DW$679, DW_AT_decl_column(0x02)
$C$DW$680	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityDSP_Normal"), DW_AT_const_value(0x03)
	.dwattr $C$DW$680, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x66)
	.dwattr $C$DW$680, DW_AT_decl_column(0x02)
$C$DW$681	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityDSP_Low"), DW_AT_const_value(0x04)
	.dwattr $C$DW$681, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x67)
	.dwattr $C$DW$681, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$421

	.dwattr $C$DW$T$421, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$421, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$421, DW_AT_decl_column(0x06)

$C$DW$T$422	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$422, DW_AT_name("AAX_ETracePriorityHost")
	.dwattr $C$DW$T$422, DW_AT_byte_size(0x04)
$C$DW$682	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityHost_None"), DW_AT_const_value(0x00)
	.dwattr $C$DW$682, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x53)
	.dwattr $C$DW$682, DW_AT_decl_column(0x02)
$C$DW$683	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityHost_Critical"), DW_AT_const_value(0x10000000)
	.dwattr $C$DW$683, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x54)
	.dwattr $C$DW$683, DW_AT_decl_column(0x02)
$C$DW$684	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityHost_High"), DW_AT_const_value(0x8000000)
	.dwattr $C$DW$684, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x55)
	.dwattr $C$DW$684, DW_AT_decl_column(0x02)
$C$DW$685	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityHost_Normal"), DW_AT_const_value(0x4000000)
	.dwattr $C$DW$685, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x56)
	.dwattr $C$DW$685, DW_AT_decl_column(0x02)
$C$DW$686	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityHost_Low"), DW_AT_const_value(0x2000000)
	.dwattr $C$DW$686, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x57)
	.dwattr $C$DW$686, DW_AT_decl_column(0x02)
$C$DW$687	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTracePriorityHost_Lowest"), DW_AT_const_value(0x1000000)
	.dwattr $C$DW$687, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x58)
	.dwattr $C$DW$687, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$422

	.dwattr $C$DW$T$422, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$422, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$422, DW_AT_decl_column(0x06)

$C$DW$T$423	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$423, DW_AT_name("AAX_ETransportState")
	.dwattr $C$DW$T$423, DW_AT_byte_size(0x04)
$C$DW$688	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Unknown"), DW_AT_const_value(0x00)
	.dwattr $C$DW$688, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x5ea)
	.dwattr $C$DW$688, DW_AT_decl_column(0x02)
$C$DW$689	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Stopping"), DW_AT_const_value(0x01)
	.dwattr $C$DW$689, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x5eb)
	.dwattr $C$DW$689, DW_AT_decl_column(0x02)
$C$DW$690	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Stop"), DW_AT_const_value(0x02)
	.dwattr $C$DW$690, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x5ec)
	.dwattr $C$DW$690, DW_AT_decl_column(0x02)
$C$DW$691	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Paused"), DW_AT_const_value(0x03)
	.dwattr $C$DW$691, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x5ed)
	.dwattr $C$DW$691, DW_AT_decl_column(0x02)
$C$DW$692	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Play"), DW_AT_const_value(0x04)
	.dwattr $C$DW$692, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x5ee)
	.dwattr $C$DW$692, DW_AT_decl_column(0x02)
$C$DW$693	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_FastForward"), DW_AT_const_value(0x05)
	.dwattr $C$DW$693, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x5ef)
	.dwattr $C$DW$693, DW_AT_decl_column(0x02)
$C$DW$694	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Rewind"), DW_AT_const_value(0x06)
	.dwattr $C$DW$694, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x5f0)
	.dwattr $C$DW$694, DW_AT_decl_column(0x02)
$C$DW$695	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Scrub"), DW_AT_const_value(0x0b)
	.dwattr $C$DW$695, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x5f1)
	.dwattr $C$DW$695, DW_AT_decl_column(0x02)
$C$DW$696	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Shuttle"), DW_AT_const_value(0x0c)
	.dwattr $C$DW$696, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x5f2)
	.dwattr $C$DW$696, DW_AT_decl_column(0x02)
$C$DW$697	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eTransportState_Num"), DW_AT_const_value(0x0d)
	.dwattr $C$DW$697, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x5f4)
	.dwattr $C$DW$697, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$423

	.dwattr $C$DW$T$423, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$423, DW_AT_decl_line(0x5e8)
	.dwattr $C$DW$T$423, DW_AT_decl_column(0x06)

$C$DW$T$424	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$424, DW_AT_name("AAX_EUpdateSource")
	.dwattr $C$DW$T$424, DW_AT_byte_size(0x04)
$C$DW$698	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eUpdateSource_Unspecified"), DW_AT_const_value(0x00)
	.dwattr $C$DW$698, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x4b7)
	.dwattr $C$DW$698, DW_AT_decl_column(0x02)
$C$DW$699	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eUpdateSource_Parameter"), DW_AT_const_value(0x01)
	.dwattr $C$DW$699, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x4b8)
	.dwattr $C$DW$699, DW_AT_decl_column(0x02)
$C$DW$700	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eUpdateSource_Chunk"), DW_AT_const_value(0x02)
	.dwattr $C$DW$700, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x4b9)
	.dwattr $C$DW$700, DW_AT_decl_column(0x02)
$C$DW$701	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eUpdateSource_Delay"), DW_AT_const_value(0x03)
	.dwattr $C$DW$701, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x4ba)
	.dwattr $C$DW$701, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$424

	.dwattr $C$DW$T$424, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$424, DW_AT_decl_line(0x4b5)
	.dwattr $C$DW$T$424, DW_AT_decl_column(0x06)

$C$DW$T$425	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$425, DW_AT_name("AAX_EUseAlternateControl")
	.dwattr $C$DW$T$425, DW_AT_byte_size(0x04)
$C$DW$702	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eUseAlternateControl_No"), DW_AT_const_value(0x00)
	.dwattr $C$DW$702, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x467)
	.dwattr $C$DW$702, DW_AT_decl_column(0x02)
$C$DW$703	.dwtag  DW_TAG_enumerator, DW_AT_name("AAX_eUseAlternateControl_Yes"), DW_AT_const_value(0x01)
	.dwattr $C$DW$703, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x468)
	.dwattr $C$DW$703, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$425

	.dwattr $C$DW$T$425, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$425, DW_AT_decl_line(0x465)
	.dwattr $C$DW$T$425, DW_AT_decl_column(0x06)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("AAX_SPlugInChunk")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x3c)
$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$704, DW_AT_name("fSize")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("fSize")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$704, DW_AT_decl_column(0x0d)
$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$705, DW_AT_name("fVersion")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("fVersion")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0d)
$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$706, DW_AT_name("fManufacturerID")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("fManufacturerID")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$706, DW_AT_decl_column(0x10)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$707, DW_AT_name("fProductID")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("fProductID")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$707, DW_AT_decl_column(0x10)
$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$708, DW_AT_name("fPlugInID")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("fPlugInID")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$708, DW_AT_decl_column(0x10)
$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$709, DW_AT_name("fChunkID")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("fChunkID")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$709, DW_AT_decl_column(0x10)
$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$710, DW_AT_name("fName")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("fName")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$710, DW_AT_decl_column(0x11)
$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$711, DW_AT_name("fData")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("fData")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$711, DW_AT_decl_column(0x0a)

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_ZN16AAX_SPlugInChunkaSERKS_")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$5, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$712	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$5

	.dwendtag $C$DW$T$51

	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
$C$DW$T$48	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$51)
$C$DW$T$49	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x20)
$C$DW$T$426	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_SPlugInChunk")
	.dwattr $C$DW$T$426, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$426, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$426, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$426, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$T$426, DW_AT_decl_column(0x21)
$C$DW$T$47	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)

$C$DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$713	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$T$50

$C$DW$T$427	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$427, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$427, DW_AT_address_class(0x20)
$C$DW$T$428	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_SPlugInChunkPtr")
	.dwattr $C$DW$T$428, DW_AT_type(*$C$DW$T$427)
	.dwattr $C$DW$T$428, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$428, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$428, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$T$428, DW_AT_decl_column(0x34)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("AAX_SPlugInChunkHeader")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x38)
$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$714, DW_AT_name("fSize")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("fSize")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0d)
$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$715, DW_AT_name("fVersion")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("fVersion")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0d)
$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$716, DW_AT_name("fManufacturerID")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("fManufacturerID")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$716, DW_AT_decl_column(0x10)
$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$717, DW_AT_name("fProductID")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("fProductID")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$717, DW_AT_decl_column(0x10)
$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$718, DW_AT_name("fPlugInID")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("fPlugInID")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$718, DW_AT_decl_column(0x10)
$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$719, DW_AT_name("fChunkID")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("fChunkID")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$719, DW_AT_decl_column(0x10)
$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$720, DW_AT_name("fName")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("fName")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$720, DW_AT_decl_column(0x11)

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_ZN22AAX_SPlugInChunkHeaderaSERKS_")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$6, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$721	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$6

	.dwendtag $C$DW$T$56

	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x08)
$C$DW$T$53	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$56)
$C$DW$T$54	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)
$C$DW$T$429	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_SPlugInChunkHeader")
	.dwattr $C$DW$T$429, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$429, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$429, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$429, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$T$429, DW_AT_decl_column(0x27)
$C$DW$T$52	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)

$C$DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$722	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$T$55


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("AAX_SPlugInIdentifierTriad")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x0c)
$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$723, DW_AT_name("mManufacturerID")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("mManufacturerID")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$723, DW_AT_decl_column(0x13)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$724, DW_AT_name("mProductID")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("mProductID")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$724, DW_AT_decl_column(0x10)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$725, DW_AT_name("mPlugInID")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("mPlugInID")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$725, DW_AT_decl_column(0x10)

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("IsUndefined")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_ZNK26AAX_SPlugInIdentifierTriad11IsUndefinedEv")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$7, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("IsSameProduct")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_ZNK26AAX_SPlugInIdentifierTriad13IsSameProductERKS_")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$8, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$726	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_ZN26AAX_SPlugInIdentifierTriadaSERKS_")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$727	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$9

	.dwendtag $C$DW$T$64

	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
$C$DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$64)
$C$DW$T$60	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)
$C$DW$T$430	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_SPlugInIdentifierTriad")
	.dwattr $C$DW$T$430, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$430, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$430, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$430, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$T$430, DW_AT_decl_column(0x2b)
$C$DW$T$62	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)

$C$DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$728	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$T$63

$C$DW$T$431	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$431, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$431, DW_AT_address_class(0x20)
$C$DW$T$432	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_SPlugInIdentifierTriadPtr")
	.dwattr $C$DW$T$432, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$T$432, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$432, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$432, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$T$432, DW_AT_decl_column(0x48)

$C$DW$T$433	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$433, DW_AT_name("EPreampCtrl_Alg_PortID")
	.dwattr $C$DW$T$433, DW_AT_byte_size(0x04)
$C$DW$729	.dwtag  DW_TAG_enumerator, DW_AT_name("eAlgPortID_BypassIn"), DW_AT_const_value(0x00)
	.dwattr $C$DW$729, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x52)
	.dwattr $C$DW$729, DW_AT_decl_column(0x03)
$C$DW$730	.dwtag  DW_TAG_enumerator, DW_AT_name("eAlgPortID_CoefsGainIn"), DW_AT_const_value(0x01)
	.dwattr $C$DW$730, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x53)
	.dwattr $C$DW$730, DW_AT_decl_column(0x03)
$C$DW$731	.dwtag  DW_TAG_enumerator, DW_AT_name("eAlgFieldID_AudioIn"), DW_AT_const_value(0x02)
	.dwattr $C$DW$731, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x54)
	.dwattr $C$DW$731, DW_AT_decl_column(0x03)
$C$DW$732	.dwtag  DW_TAG_enumerator, DW_AT_name("eAlgFieldID_AudioOut"), DW_AT_const_value(0x03)
	.dwattr $C$DW$732, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x55)
	.dwattr $C$DW$732, DW_AT_decl_column(0x03)
$C$DW$733	.dwtag  DW_TAG_enumerator, DW_AT_name("eAlgFieldID_BufferSize"), DW_AT_const_value(0x04)
	.dwattr $C$DW$733, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x56)
	.dwattr $C$DW$733, DW_AT_decl_column(0x03)
$C$DW$734	.dwtag  DW_TAG_enumerator, DW_AT_name("eAlgFieldID_Meters"), DW_AT_const_value(0x05)
	.dwattr $C$DW$734, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x57)
	.dwattr $C$DW$734, DW_AT_decl_column(0x03)
	.dwendtag $C$DW$T$433

	.dwattr $C$DW$T$433, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$T$433, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$433, DW_AT_decl_column(0x06)

$C$DW$T$434	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$434, DW_AT_name("EPreampCtrl_MeterTaps")
	.dwattr $C$DW$T$434, DW_AT_byte_size(0x04)
$C$DW$735	.dwtag  DW_TAG_enumerator, DW_AT_name("eMeterTap_PreGain"), DW_AT_const_value(0x00)
	.dwattr $C$DW$735, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x21)
	.dwattr $C$DW$735, DW_AT_decl_column(0x02)
$C$DW$736	.dwtag  DW_TAG_enumerator, DW_AT_name("eMeterTap_PostGain"), DW_AT_const_value(0x01)
	.dwattr $C$DW$736, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x22)
	.dwattr $C$DW$736, DW_AT_decl_column(0x02)
$C$DW$737	.dwtag  DW_TAG_enumerator, DW_AT_name("eMeterTap_Count"), DW_AT_const_value(0x02)
	.dwattr $C$DW$737, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x23)
	.dwattr $C$DW$737, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$434

	.dwattr $C$DW$T$434, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$T$434, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$T$434, DW_AT_decl_column(0x06)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("FILE")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x18)
$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$738, DW_AT_name("fd")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("fd")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x49)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0b)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$739, DW_AT_name("buf")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$739, DW_AT_decl_column(0x16)
$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$740, DW_AT_name("pos")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("pos")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$740, DW_AT_decl_column(0x16)
$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$741, DW_AT_name("bufend")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("bufend")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$741, DW_AT_decl_column(0x16)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$742, DW_AT_name("buff_stop")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("buff_stop")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$742, DW_AT_decl_column(0x16)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$743, DW_AT_name("flags")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$743, DW_AT_decl_column(0x16)

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_ZNSt4FILEaSERKS_")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$10, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$744	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$68)
	.dwendtag $C$DW$10

	.dwendtag $C$DW$T$70

	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x10)
$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$70)
$C$DW$T$68	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)
$C$DW$T$435	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$435, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$435, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$435, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$T$435, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$435, DW_AT_decl_column(0x03)
$C$DW$T$66	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)

$C$DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$745	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$68)
	.dwendtag $C$DW$T$69


$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("SPreampCtrl_Alg_Context")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x18)
$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$746, DW_AT_name("mCtrlBypassP")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("mCtrlBypassP")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x48)
	.dwattr $C$DW$746, DW_AT_decl_column(0x1c)
$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$747, DW_AT_name("mCoefsGainP")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("mCoefsGainP")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x49)
	.dwattr $C$DW$747, DW_AT_decl_column(0x1c)
$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$748, DW_AT_name("mInputPP")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("mInputPP")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$748, DW_AT_decl_column(0x1c)
$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$749, DW_AT_name("mOutputPP")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("mOutputPP")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$749, DW_AT_decl_column(0x1c)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$750, DW_AT_name("mBufferSize")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("mBufferSize")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$750, DW_AT_decl_column(0x1c)
$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$751, DW_AT_name("mMetersPP")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("mMetersPP")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$751, DW_AT_decl_column(0x1c)

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_ZN23SPreampCtrl_Alg_ContextaSERKS_")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$752	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$77)
	.dwendtag $C$DW$11

	.dwendtag $C$DW$T$79

	.dwattr $C$DW$T$79, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x08)
$C$DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$79)
$C$DW$T$77	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)
$C$DW$T$75	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x20)

$C$DW$T$78	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$753	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$77)
	.dwendtag $C$DW$T$78

$C$DW$T$436	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$436, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$436, DW_AT_address_class(0x20)
$C$DW$T$437	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$437, DW_AT_type(*$C$DW$T$436)
$C$DW$T$438	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$438, DW_AT_type(*$C$DW$T$437)
	.dwattr $C$DW$T$438, DW_AT_address_class(0x20)
$C$DW$T$439	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$439, DW_AT_type(*$C$DW$T$436)

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("SPreampCtrl_CoefsGain")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x20)
$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$754, DW_AT_name("mGain")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("mGain")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x30)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0a)
$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$755, DW_AT_name("mIsStereo")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("mIsStereo")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x31)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0a)
$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$756, DW_AT_name("mPhaseAudio")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("mPhaseAudio")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x36)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0a)
$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$757, DW_AT_name("mPhaseM")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("mPhaseM")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x37)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0a)
$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$758, DW_AT_name("mPhaseS")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("mPhaseS")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x38)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0a)
$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$759, DW_AT_name("mSwapLR")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("mSwapLR")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x39)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0a)
$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$760, DW_AT_name("mMSDecode")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("mMSDecode")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0a)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$761, DW_AT_name("mMono")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("mMono")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0a)

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_ZN21SPreampCtrl_CoefsGainaSERKS_")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$762	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$12

	.dwendtag $C$DW$T$86

	.dwattr $C$DW$T$86, DW_AT_decl_file("C:\dev\PreampCtrl-OSC\Source\PreampCtrl_Alg.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x08)
$C$DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$86)
$C$DW$T$84	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
$C$DW$T$444	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$444, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$444, DW_AT_address_class(0x20)
$C$DW$763	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$444)
$C$DW$T$445	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$445, DW_AT_type(*$C$DW$763)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)
$C$DW$T$82	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)

$C$DW$T$85	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$764	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$T$85


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("_Container_base")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ZNSt15_Container_baseaSERKS_")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$765	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$90)
	.dwendtag $C$DW$13

	.dwendtag $C$DW$T$92

	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x08)
$C$DW$T$89	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$92)
$C$DW$T$90	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)
$C$DW$T$88	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)

$C$DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$766	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$90)
	.dwendtag $C$DW$T$91


$C$DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$97, DW_AT_name("_Int_iterator_tag")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ZNSt17_Int_iterator_tagaSERKS_")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$767	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$95)
	.dwendtag $C$DW$14

	.dwendtag $C$DW$T$97

	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x08)
$C$DW$T$94	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$97)
$C$DW$T$95	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x20)
$C$DW$T$93	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)

$C$DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$768	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$95)
	.dwendtag $C$DW$T$96

$C$DW$T$449	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$449, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$449, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$449, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$449, DW_AT_decl_line(0x141)
	.dwattr $C$DW$T$449, DW_AT_decl_column(0x1c)
$C$DW$T$450	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$450, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$450, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$450, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$450, DW_AT_decl_line(0x146)
	.dwattr $C$DW$T$450, DW_AT_decl_column(0x1c)
$C$DW$T$451	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$451, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$451, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$451, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$451, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$T$451, DW_AT_decl_column(0x1c)
$C$DW$T$452	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$452, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$452, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$452, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$452, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$452, DW_AT_decl_column(0x1c)
$C$DW$T$453	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$453, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$453, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$453, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$453, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$453, DW_AT_decl_column(0x1c)
$C$DW$T$454	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$454, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$454, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$454, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$454, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$T$454, DW_AT_decl_column(0x1c)
$C$DW$T$455	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$455, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$455, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$455, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$455, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$T$455, DW_AT_decl_column(0x1c)
$C$DW$T$456	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$456, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$456, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$456, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$456, DW_AT_decl_line(0x164)
	.dwattr $C$DW$T$456, DW_AT_decl_column(0x1c)
$C$DW$T$457	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$457, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$457, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$457, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$457, DW_AT_decl_line(0x169)
	.dwattr $C$DW$T$457, DW_AT_decl_column(0x1c)
$C$DW$T$458	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$458, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$458, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$458, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$458, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$T$458, DW_AT_decl_column(0x1c)
$C$DW$T$459	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$459, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$459, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$459, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$459, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$459, DW_AT_decl_column(0x1c)
$C$DW$T$460	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$460, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$460, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$460, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$460, DW_AT_decl_line(0x179)
	.dwattr $C$DW$T$460, DW_AT_decl_column(0x1c)
$C$DW$T$461	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$461, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$461, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$461, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$461, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$T$461, DW_AT_decl_column(0x1c)

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("_Iterator_base")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_ZNSt14_Iterator_baseaSERKS_")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$769	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$100)
	.dwendtag $C$DW$15

	.dwendtag $C$DW$T$102

	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x08)
$C$DW$T$99	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$102)
$C$DW$T$100	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_address_class(0x20)
$C$DW$T$98	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$98, DW_AT_address_class(0x20)

$C$DW$T$101	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$770	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$100)
	.dwendtag $C$DW$T$101


$C$DW$T$110	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$110, DW_AT_name("_Lockit")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("_Lockit")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_ZNSt7_LockitC1Ev")
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("_Lockit")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_ZNSt7_LockitC1Ei")
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$771	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("~_Lockit")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_ZNSt7_LockitD1Ev")
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("_Lockit")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_ZNSt7_LockitC1ERKS_")
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$772	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$106)
	.dwendtag $C$DW$19


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_ZNSt7_LockitaSERKS_")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$773	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$106)
	.dwendtag $C$DW$20

	.dwendtag $C$DW$T$110

	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x260)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x07)
$C$DW$T$105	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$110)
$C$DW$T$106	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_address_class(0x20)
$C$DW$T$108	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$108, DW_AT_address_class(0x20)

$C$DW$T$109	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$774	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$106)
	.dwendtag $C$DW$T$109


$C$DW$T$115	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$115, DW_AT_name("_Mutex")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)

$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("_Lock")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_ZNSt6_Mutex5_LockEv")
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("_Unlock")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_ZNSt6_Mutex7_UnlockEv")
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_ZNSt6_MutexaSERKS_")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$775	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$113)
	.dwendtag $C$DW$23

	.dwendtag $C$DW$T$115

	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x293)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x07)
$C$DW$T$112	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$115)
$C$DW$T$113	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_address_class(0x20)
$C$DW$T$111	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x20)

$C$DW$T$114	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$776	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$113)
	.dwendtag $C$DW$T$114


$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("_Nonscalar_ptr_iterator_tag")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x01)

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_ZNSt27_Nonscalar_ptr_iterator_tagaSERKS_")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$777	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$118)
	.dwendtag $C$DW$24

	.dwendtag $C$DW$T$120

	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x08)
$C$DW$T$117	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$120)
$C$DW$T$118	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_address_class(0x20)
$C$DW$T$116	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$116, DW_AT_address_class(0x20)

$C$DW$T$119	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$778	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$118)
	.dwendtag $C$DW$T$119


$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("_Outit")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$779	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$371)
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_ZNSt6_OutitaSERKS_")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$780	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$25

	.dwendtag $C$DW$T$125

	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x08)
$C$DW$T$122	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$125)
$C$DW$T$123	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$123, DW_AT_address_class(0x20)
$C$DW$T$121	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x20)

$C$DW$T$124	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$781	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$T$124


$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("_Scalar_ptr_iterator_tag")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x01)

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_ZNSt24_Scalar_ptr_iterator_tagaSERKS_")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$782	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$128)
	.dwendtag $C$DW$26

	.dwendtag $C$DW$T$130

	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0xee)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x08)
$C$DW$T$127	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$130)
$C$DW$T$128	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x20)
$C$DW$T$126	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x20)

$C$DW$T$129	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$783	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$128)
	.dwendtag $C$DW$T$129


$C$DW$T$462	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$462, DW_AT_name("_Uninitialized")
	.dwattr $C$DW$T$462, DW_AT_byte_size(0x04)
$C$DW$784	.dwtag  DW_TAG_enumerator, DW_AT_name("_Noinit"), DW_AT_const_value(0x00)
	.dwattr $C$DW$784, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xstddef")
	.dwattr $C$DW$784, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$784, DW_AT_decl_column(0x02)
	.dwendtag $C$DW$T$462

	.dwattr $C$DW$T$462, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xstddef")
	.dwattr $C$DW$T$462, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$462, DW_AT_decl_column(0x06)

$C$DW$T$131	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$131, DW_AT_name("_ZSd")
	.dwattr $C$DW$T$131, DW_AT_declaration
	.dwendtag $C$DW$T$131

	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x08)
$C$DW$T$463	.dwtag  DW_TAG_typedef, DW_AT_name("iostream")
	.dwattr $C$DW$T$463, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$463, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$463, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$463, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$T$463, DW_AT_decl_column(0x32)

$C$DW$T$132	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$132, DW_AT_name("_ZSi")
	.dwattr $C$DW$T$132, DW_AT_declaration
	.dwendtag $C$DW$T$132

	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x08)
$C$DW$T$464	.dwtag  DW_TAG_typedef, DW_AT_name("istream")
	.dwattr $C$DW$T$464, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$464, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$464, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$464, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$T$464, DW_AT_decl_column(0x31)

$C$DW$T$133	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$133, DW_AT_name("_ZSo")
	.dwattr $C$DW$T$133, DW_AT_declaration
	.dwendtag $C$DW$T$133

	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x08)
$C$DW$T$465	.dwtag  DW_TAG_typedef, DW_AT_name("ostream")
	.dwattr $C$DW$T$465, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$465, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$465, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$465, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$T$465, DW_AT_decl_column(0x31)

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__SO__SaIvE")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwendtag $C$DW$T$19

	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x12)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__SO__St7_Lockit")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwendtag $C$DW$T$20

	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x260)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x07)

$C$DW$T$134	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$134, DW_AT_name("__array_type_info")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x08)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$785, DW_AT_name("base")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$785, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$785, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$134

	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x16)
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$466	.dwtag  DW_TAG_typedef, DW_AT_name("_Ty")
	.dwattr $C$DW$T$466, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$466, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$T$466, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$466, DW_AT_decl_column(0x0f)
$C$DW$T$467	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$467, DW_AT_type(*$C$DW$T$466)
$C$DW$T$468	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$468, DW_AT_type(*$C$DW$T$467)
	.dwattr $C$DW$T$468, DW_AT_address_class(0x20)
$C$DW$T$469	.dwtag  DW_TAG_typedef, DW_AT_name("const_pointer")
	.dwattr $C$DW$T$469, DW_AT_type(*$C$DW$T$468)
	.dwattr $C$DW$T$469, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$469, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$T$469, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$469, DW_AT_decl_column(0x1b)
$C$DW$T$470	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$470, DW_AT_type(*$C$DW$T$466)
	.dwattr $C$DW$T$470, DW_AT_address_class(0x20)
$C$DW$T$471	.dwtag  DW_TAG_typedef, DW_AT_name("pointer")
	.dwattr $C$DW$T$471, DW_AT_type(*$C$DW$T$470)
	.dwattr $C$DW$T$471, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$471, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$T$471, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$471, DW_AT_decl_column(0x15)
$C$DW$T$472	.dwtag  DW_TAG_typedef, DW_AT_name("value_type")
	.dwattr $C$DW$T$472, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$472, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$T$472, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$472, DW_AT_decl_column(0x0e)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$473	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$473, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$473, DW_AT_language(DW_LANG_C_plus_plus)

$C$DW$T$103	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$T$474	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$474, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$474, DW_AT_address_class(0x20)
$C$DW$T$475	.dwtag  DW_TAG_typedef, DW_AT_name("__TI_atexit_fn")
	.dwattr $C$DW$T$475, DW_AT_type(*$C$DW$T$474)
	.dwattr $C$DW$T$475, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$475, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$475, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$475, DW_AT_decl_column(0x14)
$C$DW$T$476	.dwtag  DW_TAG_typedef, DW_AT_name("new_handler")
	.dwattr $C$DW$T$476, DW_AT_type(*$C$DW$T$474)
	.dwattr $C$DW$T$476, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$476, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/new")
	.dwattr $C$DW$T$476, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$476, DW_AT_decl_column(0x10)
$C$DW$T$477	.dwtag  DW_TAG_typedef, DW_AT_name("terminate_handler")
	.dwattr $C$DW$T$477, DW_AT_type(*$C$DW$T$474)
	.dwattr $C$DW$T$477, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$477, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$T$477, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$477, DW_AT_decl_column(0x10)
$C$DW$T$478	.dwtag  DW_TAG_typedef, DW_AT_name("unexpected_handler")
	.dwattr $C$DW$T$478, DW_AT_type(*$C$DW$T$474)
	.dwattr $C$DW$T$478, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$478, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$T$478, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$478, DW_AT_decl_column(0x10)

$C$DW$T$104	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$786	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$104


$C$DW$T$107	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$787	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$106)
	.dwendtag $C$DW$T$107


$C$DW$T$159	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$788	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$158)
	.dwendtag $C$DW$T$159


$C$DW$T$168	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$789	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$148)
	.dwendtag $C$DW$T$168


$C$DW$T$171	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$171, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$790	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$170)
	.dwendtag $C$DW$T$171


$C$DW$T$177	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$177, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$791	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$176)
	.dwendtag $C$DW$T$177


$C$DW$T$190	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$190, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$792	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$187)
$C$DW$793	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$T$190


$C$DW$T$223	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$223, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$794	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$220)
$C$DW$795	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$T$223


$C$DW$T$262	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$262, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$796	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$261)
	.dwendtag $C$DW$T$262

$C$DW$T$263	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$263, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$T$263, DW_AT_address_class(0x20)
$C$DW$T$264	.dwtag  DW_TAG_typedef, DW_AT_name("_Prhand")
	.dwattr $C$DW$T$264, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$T$264, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$264, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$T$264, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$T$264, DW_AT_decl_column(0x10)

$C$DW$T$265	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$265, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$T$265, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$797	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$264)
	.dwendtag $C$DW$T$265

$C$DW$T$479	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$479, DW_AT_type(*$C$DW$T$2)
$C$DW$T$480	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$480, DW_AT_type(*$C$DW$T$479)
	.dwattr $C$DW$T$480, DW_AT_address_class(0x20)
$C$DW$T$490	.dwtag  DW_TAG_typedef, DW_AT_name("difference_type")
	.dwattr $C$DW$T$490, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$490, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$490, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$490, DW_AT_decl_column(0x10)
$C$DW$T$491	.dwtag  DW_TAG_typedef, DW_AT_name("distance_type")
	.dwattr $C$DW$T$491, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$491, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$491, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$491, DW_AT_decl_column(0x10)
$C$DW$T$492	.dwtag  DW_TAG_typedef, DW_AT_name("pointer")
	.dwattr $C$DW$T$492, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$492, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$492, DW_AT_decl_line(0xff)
	.dwattr $C$DW$T$492, DW_AT_decl_column(0x13)
$C$DW$T$493	.dwtag  DW_TAG_typedef, DW_AT_name("reference")
	.dwattr $C$DW$T$493, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$493, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$493, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$493, DW_AT_decl_column(0x15)
$C$DW$T$494	.dwtag  DW_TAG_typedef, DW_AT_name("value_type")
	.dwattr $C$DW$T$494, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$494, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$494, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$494, DW_AT_decl_column(0x0e)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$496	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$496, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$496, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$496, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$496, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$496, DW_AT_decl_column(0x1d)
$C$DW$T$497	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$497, DW_AT_type(*$C$DW$T$496)
	.dwattr $C$DW$T$497, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$497, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$497, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$497, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x04)
$C$DW$798	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$798, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$28


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x20)
$C$DW$799	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$799, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$44

$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x20)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x1c)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CBoolean")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x12)
$C$DW$T$498	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$498, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$498, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$498, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$498, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$498, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$219	.dwtag  DW_TAG_typedef, DW_AT_name("_Elem")
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$7)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$219, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$219, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$219, DW_AT_decl_column(0x12)
$C$DW$T$221	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$219)
$C$DW$T$222	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$222, DW_AT_address_class(0x20)
$C$DW$T$225	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$225, DW_AT_address_class(0x20)

$C$DW$T$230	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$230, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$800	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$225)
$C$DW$801	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$193)
$C$DW$802	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$T$230

$C$DW$T$220	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$T$220, DW_AT_address_class(0x20)
$C$DW$T$228	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$T$228, DW_AT_address_class(0x20)

$C$DW$T$229	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$229, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$803	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$228)
$C$DW$804	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$225)
$C$DW$805	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$T$229


$C$DW$T$231	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$231, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$806	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$228)
$C$DW$807	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$193)
$C$DW$808	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$219)
	.dwendtag $C$DW$T$231


$C$DW$T$236	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$236, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$T$236, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$809	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$235)
	.dwendtag $C$DW$T$236

$C$DW$T$499	.dwtag  DW_TAG_typedef, DW_AT_name("char_type")
	.dwattr $C$DW$T$499, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$T$499, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$499, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$499, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$499, DW_AT_decl_column(0x10)
$C$DW$T$500	.dwtag  DW_TAG_typedef, DW_AT_name("_Wchart")
	.dwattr $C$DW$T$500, DW_AT_type(*$C$DW$T$7)
	.dwattr $C$DW$T$500, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$500, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$500, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$T$500, DW_AT_decl_column(0x11)
$C$DW$T$501	.dwtag  DW_TAG_typedef, DW_AT_name("_Wintt")
	.dwattr $C$DW$T$501, DW_AT_type(*$C$DW$T$7)
	.dwattr $C$DW$T$501, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$501, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$501, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$T$501, DW_AT_decl_column(0x11)
$C$DW$T$485	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$485, DW_AT_type(*$C$DW$T$7)
	.dwattr $C$DW$T$485, DW_AT_address_class(0x20)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$502	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$502, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$502, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$502, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$502, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$502, DW_AT_decl_column(0x1d)
$C$DW$T$503	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$503, DW_AT_type(*$C$DW$T$502)
	.dwattr $C$DW$T$503, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$503, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$503, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$503, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$504	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$504, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$504, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$504, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$504, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$504, DW_AT_decl_column(0x1c)
$C$DW$T$505	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$505, DW_AT_type(*$C$DW$T$504)
	.dwattr $C$DW$T$505, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$505, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$505, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$505, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$506	.dwtag  DW_TAG_typedef, DW_AT_name("_Int32t")
	.dwattr $C$DW$T$506, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$506, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$506, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$506, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$506, DW_AT_decl_column(0x0e)
$C$DW$T$275	.dwtag  DW_TAG_typedef, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$275, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$275, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$275, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/wchar.hx")
	.dwattr $C$DW$T$275, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$275, DW_AT_decl_column(0x0d)
$C$DW$T$507	.dwtag  DW_TAG_typedef, DW_AT_name("mbstate_t")
	.dwattr $C$DW$T$507, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$T$507, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$507, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/wchar.hx")
	.dwattr $C$DW$T$507, DW_AT_decl_line(0x26)
	.dwattr $C$DW$T$507, DW_AT_decl_column(0x13)
$C$DW$T$508	.dwtag  DW_TAG_typedef, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$508, DW_AT_type(*$C$DW$T$507)
	.dwattr $C$DW$T$508, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$508, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/cwchar")
	.dwattr $C$DW$T$508, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$508, DW_AT_decl_column(0x18)
$C$DW$T$509	.dwtag  DW_TAG_typedef, DW_AT_name("state_type")
	.dwattr $C$DW$T$509, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$T$509, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$509, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$509, DW_AT_decl_line(0x100)
	.dwattr $C$DW$T$509, DW_AT_decl_column(0x14)
$C$DW$T$510	.dwtag  DW_TAG_typedef, DW_AT_name("state_type")
	.dwattr $C$DW$T$510, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$T$510, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$510, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$510, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$T$510, DW_AT_decl_column(0x14)
$C$DW$T$511	.dwtag  DW_TAG_typedef, DW_AT_name("_Ptrdifft")
	.dwattr $C$DW$T$511, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$511, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$511, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$511, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$511, DW_AT_decl_column(0x1e)
$C$DW$T$145	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$10)
$C$DW$T$146	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$146, DW_AT_address_class(0x20)

$C$DW$T$194	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$810	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$192)
$C$DW$811	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$192)
$C$DW$812	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$T$194


$C$DW$T$226	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$226, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$813	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$225)
$C$DW$814	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$225)
$C$DW$815	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$T$226


$C$DW$T$512	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$512, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$512, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$816	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$480)
$C$DW$817	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$480)
	.dwendtag $C$DW$T$512

$C$DW$T$513	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$513, DW_AT_type(*$C$DW$T$512)
	.dwattr $C$DW$T$513, DW_AT_address_class(0x20)
$C$DW$T$514	.dwtag  DW_TAG_typedef, DW_AT_name("__TI_compar_fn")
	.dwattr $C$DW$T$514, DW_AT_type(*$C$DW$T$513)
	.dwattr $C$DW$T$514, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$514, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$514, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$514, DW_AT_decl_column(0x13)
$C$DW$T$515	.dwtag  DW_TAG_typedef, DW_AT_name("fpos_t")
	.dwattr $C$DW$T$515, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$515, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$515, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdio.h")
	.dwattr $C$DW$T$515, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$515, DW_AT_decl_column(0x0d)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x1d)
$C$DW$T$516	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CIndex")
	.dwattr $C$DW$T$516, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$516, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$516, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$516, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$T$516, DW_AT_decl_column(0x12)
$C$DW$T$517	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CCount")
	.dwattr $C$DW$T$517, DW_AT_type(*$C$DW$T$516)
	.dwattr $C$DW$T$517, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$517, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$517, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$517, DW_AT_decl_column(0x14)
$C$DW$T$518	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CFieldIndex")
	.dwattr $C$DW$T$518, DW_AT_type(*$C$DW$T$516)
	.dwattr $C$DW$T$518, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$518, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$518, DW_AT_decl_line(0x143)
	.dwattr $C$DW$T$518, DW_AT_decl_column(0x15)
$C$DW$T$519	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CPropertyValue")
	.dwattr $C$DW$T$519, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$519, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$519, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$519, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$519, DW_AT_decl_column(0x12)
$C$DW$T$520	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CPointerPropertyValue")
	.dwattr $C$DW$T$520, DW_AT_type(*$C$DW$T$519)
	.dwattr $C$DW$T$520, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$520, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$520, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$T$520, DW_AT_decl_column(0x1d)
$C$DW$T$521	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CTargetPlatform")
	.dwattr $C$DW$T$521, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$521, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$521, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$521, DW_AT_decl_line(0x141)
	.dwattr $C$DW$T$521, DW_AT_decl_column(0x12)
$C$DW$T$522	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_EParameterOrientation")
	.dwattr $C$DW$T$522, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$522, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$522, DW_AT_decl_file("C:\dev\avid\aax-sdk-2-9-0\Interfaces\AAX_Enums.h")
	.dwattr $C$DW$T$522, DW_AT_decl_line(0x412)
	.dwattr $C$DW$T$522, DW_AT_decl_column(0x12)
$C$DW$T$523	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_Result")
	.dwattr $C$DW$T$523, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$523, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$523, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$523, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$523, DW_AT_decl_column(0x12)
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x20)
$C$DW$T$524	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$524, DW_AT_type(*$C$DW$T$42)
$C$DW$T$525	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$525, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$525, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$525, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$525, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$525, DW_AT_decl_column(0x17)
$C$DW$T$526	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$526, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$526, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$526, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$526, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$526, DW_AT_decl_column(0x17)
$C$DW$T$527	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$527, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$527, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$527, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$527, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$527, DW_AT_decl_column(0x17)
$C$DW$T$528	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$528, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$528, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$528, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$528, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$528, DW_AT_decl_column(0x17)
$C$DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("int_type")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$200, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$200, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$T$200, DW_AT_decl_column(0x0e)

$C$DW$T$204	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$818	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$T$204


$C$DW$T$206	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$T$206, DW_AT_language(DW_LANG_C_plus_plus)

$C$DW$T$207	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$T$207, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$819	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$202)
	.dwendtag $C$DW$T$207

$C$DW$T$201	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$200)
$C$DW$T$202	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_address_class(0x20)
$C$DW$T$529	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$529, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$529, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$529, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$529, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$529, DW_AT_decl_column(0x1a)
$C$DW$T$530	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$530, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$530, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$530, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stddef.h")
	.dwattr $C$DW$T$530, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$530, DW_AT_decl_column(0x1c)
$C$DW$T$531	.dwtag  DW_TAG_typedef, DW_AT_name("streamoff")
	.dwattr $C$DW$T$531, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$531, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$531, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$531, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$T$531, DW_AT_decl_column(0x0e)
$C$DW$T$532	.dwtag  DW_TAG_typedef, DW_AT_name("off_type")
	.dwattr $C$DW$T$532, DW_AT_type(*$C$DW$T$531)
	.dwattr $C$DW$T$532, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$532, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$532, DW_AT_decl_line(0xff)
	.dwattr $C$DW$T$532, DW_AT_decl_column(0x14)
$C$DW$T$533	.dwtag  DW_TAG_typedef, DW_AT_name("off_type")
	.dwattr $C$DW$T$533, DW_AT_type(*$C$DW$T$531)
	.dwattr $C$DW$T$533, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$533, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$533, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$533, DW_AT_decl_column(0x14)
$C$DW$T$534	.dwtag  DW_TAG_typedef, DW_AT_name("streamsize")
	.dwattr $C$DW$T$534, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$534, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$534, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$534, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$534, DW_AT_decl_column(0x0d)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$535	.dwtag  DW_TAG_typedef, DW_AT_name("_Sizet")
	.dwattr $C$DW$T$535, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$535, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$535, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$535, DW_AT_decl_line(0xad)
	.dwattr $C$DW$T$535, DW_AT_decl_column(0x1a)
$C$DW$T$536	.dwtag  DW_TAG_typedef, DW_AT_name("_Uint32t")
	.dwattr $C$DW$T$536, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$536, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$536, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$536, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$536, DW_AT_decl_column(0x17)
$C$DW$T$193	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$193, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$193, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stddef.h")
	.dwattr $C$DW$T$193, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$193, DW_AT_decl_column(0x19)

$C$DW$T$195	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$820	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$192)
	.dwendtag $C$DW$T$195


$C$DW$T$227	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$821	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$225)
	.dwendtag $C$DW$T$227

$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)
$C$DW$T$537	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CInstanceID")
	.dwattr $C$DW$T$537, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$537, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$537, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$537, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$537, DW_AT_decl_column(0x13)
$C$DW$T$538	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CSelector")
	.dwattr $C$DW$T$538, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$538, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$538, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$538, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$T$538, DW_AT_decl_column(0x12)
$C$DW$T$539	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CComponentID")
	.dwattr $C$DW$T$539, DW_AT_type(*$C$DW$T$538)
	.dwattr $C$DW$T$539, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$539, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$539, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$539, DW_AT_decl_column(0x17)
$C$DW$T$540	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CMeterID")
	.dwattr $C$DW$T$540, DW_AT_type(*$C$DW$T$538)
	.dwattr $C$DW$T$540, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$540, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$540, DW_AT_decl_line(0x145)
	.dwattr $C$DW$T$540, DW_AT_decl_column(0x17)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CTypeID")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x135)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x12)
$C$DW$T$541	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$541, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$541, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$541, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$541, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$541, DW_AT_decl_column(0x16)
$C$DW$T$542	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$542, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$542, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$542, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$542, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$542, DW_AT_decl_column(0x16)
$C$DW$T$543	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$543, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$543, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$543, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$543, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$543, DW_AT_decl_column(0x16)
$C$DW$T$544	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$544, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$544, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$544, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$544, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$544, DW_AT_decl_column(0x16)
$C$DW$T$545	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$545, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$545, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$545, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$545, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$545, DW_AT_decl_column(0x1a)
$C$DW$T$232	.dwtag  DW_TAG_typedef, DW_AT_name("wint_t")
	.dwattr $C$DW$T$232, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$232, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$232, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/wchar.hx")
	.dwattr $C$DW$T$232, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$232, DW_AT_decl_column(0x16)
$C$DW$T$233	.dwtag  DW_TAG_typedef, DW_AT_name("int_type")
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$T$233, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$233, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$233, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$233, DW_AT_decl_column(0x11)

$C$DW$T$237	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$237, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$237, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$822	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$T$237


$C$DW$T$239	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$239, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$239, DW_AT_language(DW_LANG_C_plus_plus)

$C$DW$T$240	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$240, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$240, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$823	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$235)
	.dwendtag $C$DW$T$240

$C$DW$T$234	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$233)
$C$DW$T$235	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$235, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$T$235, DW_AT_address_class(0x20)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("__int40_t")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$546	.dwtag  DW_TAG_typedef, DW_AT_name("int40_t")
	.dwattr $C$DW$T$546, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$546, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$546, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$546, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$546, DW_AT_decl_column(0x21)
$C$DW$T$547	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast40_t")
	.dwattr $C$DW$T$547, DW_AT_type(*$C$DW$T$546)
	.dwattr $C$DW$T$547, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$547, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$547, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$547, DW_AT_decl_column(0x17)
$C$DW$T$548	.dwtag  DW_TAG_typedef, DW_AT_name("int_least40_t")
	.dwattr $C$DW$T$548, DW_AT_type(*$C$DW$T$546)
	.dwattr $C$DW$T$548, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$548, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$548, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$548, DW_AT_decl_column(0x17)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned __int40_t")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$549	.dwtag  DW_TAG_typedef, DW_AT_name("uint40_t")
	.dwattr $C$DW$T$549, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$549, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$549, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$549, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$549, DW_AT_decl_column(0x20)
$C$DW$T$550	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast40_t")
	.dwattr $C$DW$T$550, DW_AT_type(*$C$DW$T$549)
	.dwattr $C$DW$T$550, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$550, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$550, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$550, DW_AT_decl_column(0x16)
$C$DW$T$551	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least40_t")
	.dwattr $C$DW$T$551, DW_AT_type(*$C$DW$T$549)
	.dwattr $C$DW$T$551, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$551, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$551, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$551, DW_AT_decl_column(0x16)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$552	.dwtag  DW_TAG_typedef, DW_AT_name("_Longlong")
	.dwattr $C$DW$T$552, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$552, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$552, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$552, DW_AT_decl_line(0x1cf)
	.dwattr $C$DW$T$552, DW_AT_decl_column(0x13)
$C$DW$T$553	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$553, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$553, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$553, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$553, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$553, DW_AT_decl_column(0x21)
$C$DW$T$554	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CPropertyValue64")
	.dwattr $C$DW$T$554, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$554, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$554, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$554, DW_AT_decl_line(0x139)
	.dwattr $C$DW$T$554, DW_AT_decl_column(0x12)
$C$DW$T$555	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CTimeOfDay")
	.dwattr $C$DW$T$555, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$555, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$555, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$555, DW_AT_decl_line(0x131)
	.dwattr $C$DW$T$555, DW_AT_decl_column(0x12)
$C$DW$T$556	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CTimestamp")
	.dwattr $C$DW$T$556, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$556, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$556, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$556, DW_AT_decl_line(0x130)
	.dwattr $C$DW$T$556, DW_AT_decl_column(0x12)
$C$DW$T$557	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CTransportCounter")
	.dwattr $C$DW$T$557, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$557, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$557, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$557, DW_AT_decl_line(0x132)
	.dwattr $C$DW$T$557, DW_AT_decl_column(0x15)
$C$DW$T$558	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$558, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$558, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$558, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$558, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$558, DW_AT_decl_column(0x17)
$C$DW$T$559	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$559, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$559, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$559, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$559, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$559, DW_AT_decl_column(0x17)
$C$DW$T$560	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$560, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$560, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$560, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$560, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$560, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$561	.dwtag  DW_TAG_typedef, DW_AT_name("_ULonglong")
	.dwattr $C$DW$T$561, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$561, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$561, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$561, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$T$561, DW_AT_decl_column(0x14)
$C$DW$T$562	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$562, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$562, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$562, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$562, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$562, DW_AT_decl_column(0x20)
$C$DW$T$563	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CInstanceGroupID")
	.dwattr $C$DW$T$563, DW_AT_type(*$C$DW$T$562)
	.dwattr $C$DW$T$563, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$563, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$563, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$T$563, DW_AT_decl_column(0x13)
$C$DW$T$564	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CTaskID")
	.dwattr $C$DW$T$564, DW_AT_type(*$C$DW$T$562)
	.dwattr $C$DW$T$564, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$564, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$564, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$T$564, DW_AT_decl_column(0x13)
$C$DW$T$565	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$565, DW_AT_type(*$C$DW$T$562)
	.dwattr $C$DW$T$565, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$565, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$565, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$565, DW_AT_decl_column(0x16)
$C$DW$T$566	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$566, DW_AT_type(*$C$DW$T$562)
	.dwattr $C$DW$T$566, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$566, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$566, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$566, DW_AT_decl_column(0x16)
$C$DW$T$567	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$567, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$567, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$567, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdint.h")
	.dwattr $C$DW$T$567, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$567, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$568	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CSampleRate")
	.dwattr $C$DW$T$568, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$568, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$568, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$568, DW_AT_decl_line(0x133)
	.dwattr $C$DW$T$568, DW_AT_decl_column(0x10)
$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x20)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)
$C$DW$T$575	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$575, DW_AT_type(*$C$DW$T$73)
$C$DW$T$576	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CMeterPort")
	.dwattr $C$DW$T$576, DW_AT_type(*$C$DW$T$575)
	.dwattr $C$DW$T$576, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$576, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$576, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$T$576, DW_AT_decl_column(0x19)
$C$DW$T$577	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$577, DW_AT_type(*$C$DW$T$575)
	.dwattr $C$DW$T$577, DW_AT_address_class(0x20)
$C$DW$T$578	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CAudioOutPort")
	.dwattr $C$DW$T$578, DW_AT_type(*$C$DW$T$577)
	.dwattr $C$DW$T$578, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$578, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$578, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$578, DW_AT_decl_column(0x1a)
$C$DW$824	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$73)
$C$DW$T$579	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$579, DW_AT_type(*$C$DW$824)
$C$DW$T$569	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$569, DW_AT_type(*$C$DW$T$16)
$C$DW$T$570	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$570, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$T$570, DW_AT_address_class(0x20)
$C$DW$T$571	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$571, DW_AT_type(*$C$DW$T$570)
$C$DW$T$572	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$572, DW_AT_type(*$C$DW$T$571)
	.dwattr $C$DW$T$572, DW_AT_address_class(0x20)
$C$DW$T$573	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CAudioInPort")
	.dwattr $C$DW$T$573, DW_AT_type(*$C$DW$T$572)
	.dwattr $C$DW$T$573, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$573, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$573, DW_AT_decl_line(0x176)
	.dwattr $C$DW$T$573, DW_AT_decl_column(0x20)
$C$DW$825	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$570)
$C$DW$T$574	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$574, DW_AT_type(*$C$DW$825)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$45	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$45, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$45, DW_AT_name("signed char")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$T$186	.dwtag  DW_TAG_typedef, DW_AT_name("_Elem")
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$186, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$186, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$T$186, DW_AT_decl_column(0x0f)
$C$DW$T$188	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$186)
$C$DW$T$189	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$T$189, DW_AT_address_class(0x20)
$C$DW$T$192	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$T$192, DW_AT_address_class(0x20)

$C$DW$T$198	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$T$198, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$826	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$192)
$C$DW$827	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$193)
$C$DW$828	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$T$198

$C$DW$T$187	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_address_class(0x20)
$C$DW$T$196	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$196, DW_AT_address_class(0x20)

$C$DW$T$197	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$829	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$196)
$C$DW$830	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$192)
$C$DW$831	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$T$197


$C$DW$T$199	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$832	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$196)
$C$DW$833	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$193)
$C$DW$834	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$186)
	.dwendtag $C$DW$T$199


$C$DW$T$203	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$203, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$835	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$202)
	.dwendtag $C$DW$T$203

$C$DW$T$583	.dwtag  DW_TAG_typedef, DW_AT_name("char_type")
	.dwattr $C$DW$T$583, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$583, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$583, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$583, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$T$583, DW_AT_decl_column(0x10)
$C$DW$T$584	.dwtag  DW_TAG_typedef, DW_AT_name("_Sysch_t")
	.dwattr $C$DW$T$584, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$584, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$584, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$584, DW_AT_decl_line(0x232)
	.dwattr $C$DW$T$584, DW_AT_decl_column(0x0e)

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$836	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$836, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$46

$C$DW$T$147	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$45)
$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x20)
$C$DW$T$587	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CEffectID")
	.dwattr $C$DW$T$587, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$587, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$587, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$587, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$587, DW_AT_decl_column(0x16)
$C$DW$T$588	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CParamID")
	.dwattr $C$DW$T$588, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$588, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$588, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$588, DW_AT_decl_line(0x146)
	.dwattr $C$DW$T$588, DW_AT_decl_column(0x16)
$C$DW$T$589	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_CPageTableParamID")
	.dwattr $C$DW$T$589, DW_AT_type(*$C$DW$T$588)
	.dwattr $C$DW$T$589, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$589, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$589, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$589, DW_AT_decl_column(0x16)

$C$DW$T$268	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$268, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$T$483	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$483, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$483, DW_AT_address_class(0x20)
$C$DW$T$585	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$585, DW_AT_type(*$C$DW$T$483)
	.dwattr $C$DW$T$585, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$585, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdarg.h")
	.dwattr $C$DW$T$585, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$585, DW_AT_decl_column(0x12)
$C$DW$T$586	.dwtag  DW_TAG_typedef, DW_AT_name("_Va_list")
	.dwattr $C$DW$T$586, DW_AT_type(*$C$DW$T$585)
	.dwattr $C$DW$T$586, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$586, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$586, DW_AT_decl_line(0x210)
	.dwattr $C$DW$T$586, DW_AT_decl_column(0x17)
$C$DW$T$57	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$57, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$57, DW_AT_name("bool")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$T$495	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$495, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$495, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$495, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/yvals.h")
	.dwattr $C$DW$T$495, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$T$495, DW_AT_decl_column(0x0e)

$C$DW$T$58	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C_plus_plus)

$C$DW$T$61	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$837	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$60)
	.dwendtag $C$DW$T$61


$C$DW$T$191	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$191, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$838	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$189)
$C$DW$839	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$T$191


$C$DW$T$205	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$205, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$840	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$202)
$C$DW$841	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$202)
	.dwendtag $C$DW$T$205


$C$DW$T$224	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$224, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$842	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$222)
$C$DW$843	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$T$224


$C$DW$T$238	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$238, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$238, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$844	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$235)
$C$DW$845	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$235)
	.dwendtag $C$DW$T$238


$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("__class_type_info")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x08)
$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$846, DW_AT_name("base")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$846, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$846, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$135

	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x16)
$C$DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$135)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)

$C$DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$136, DW_AT_name("__enum_type_info")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x08)
$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$847, DW_AT_name("base")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$847, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$847, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$136

	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x16)

$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("__function_type_info")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x08)
$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$848, DW_AT_name("base")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$848, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$848, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$137

	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x16)

$C$DW$T$138	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$138, DW_AT_name("__fundamental_type_info")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x08)
$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$849, DW_AT_name("base")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$849, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$849, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$138

	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x16)

$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("__pbase_type_info")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x10)
$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$850, DW_AT_name("base")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$850, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$850, DW_AT_decl_column(0x16)
$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$851, DW_AT_name("flags")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$851, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$851, DW_AT_decl_column(0x16)
$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$852, DW_AT_name("pointee")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("pointee")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$852, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$852, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$141

	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x16)

$C$DW$T$142	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$142, DW_AT_name("__pointer_to_member_type_info")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x14)
$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$853, DW_AT_name("base")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$853, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$853, DW_AT_decl_column(0x16)
$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$854, DW_AT_name("context")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("context")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$854, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$854, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$142

	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x16)

$C$DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$143, DW_AT_name("__pointer_type_info")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x10)
$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$855, DW_AT_name("base")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$855, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$855, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$143

	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x16)

$C$DW$T$144	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$144, DW_AT_name("__si_class_type_info")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x0c)
$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$856, DW_AT_name("base")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$856, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$856, DW_AT_decl_column(0x16)
$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$857, DW_AT_name("base_type")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("base_type")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$857, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$857, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$144

	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x16)

$C$DW$T$149	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$149, DW_AT_name("__type_info")
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x08)
$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$858, DW_AT_name("__vptr")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("__vptr")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$858, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$858, DW_AT_decl_column(0x16)
$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$859, DW_AT_name("__name")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$859, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$859, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$149

	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x16)
$C$DW$T$139	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$149)
$C$DW$T$140	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_address_class(0x20)

$C$DW$T$151	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$151, DW_AT_name("__vmi_class_type_info")
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x18)
$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$860, DW_AT_name("base")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$860, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$860, DW_AT_decl_column(0x16)
$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$861, DW_AT_name("flags")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$861, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$861, DW_AT_decl_column(0x16)
$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$862, DW_AT_name("base_count")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("base_count")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$862, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$862, DW_AT_decl_column(0x16)
$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$863, DW_AT_name("base_info")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("base_info")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$863, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$863, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$151

	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x16)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("_acfUID")
	.dwattr $C$DW$T$21, DW_AT_declaration
	.dwendtag $C$DW$T$21

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x151)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x08)
$C$DW$T$590	.dwtag  DW_TAG_typedef, DW_AT_name("acfUID")
	.dwattr $C$DW$T$590, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$590, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$590, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$590, DW_AT_decl_line(0x152)
	.dwattr $C$DW$T$590, DW_AT_decl_column(0x11)
$C$DW$T$591	.dwtag  DW_TAG_typedef, DW_AT_name("AAX_Feature_UID")
	.dwattr $C$DW$T$591, DW_AT_type(*$C$DW$T$590)
	.dwattr $C$DW$T$591, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$591, DW_AT_decl_file("C:/dev/avid/aax-sdk-2-9-0/Interfaces/AAX.h")
	.dwattr $C$DW$T$591, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$591, DW_AT_decl_column(0x10)

$C$DW$T$152	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$152, DW_AT_name("allocator")
	.dwattr $C$DW$T$152, DW_AT_declaration
	.dwendtag $C$DW$T$152

	.dwattr $C$DW$T$152, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x08)

$C$DW$T$153	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$153, DW_AT_name("basic_stringbuf")
	.dwattr $C$DW$T$153, DW_AT_declaration
	.dwendtag $C$DW$T$153

	.dwattr $C$DW$T$153, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x08)
$C$DW$T$592	.dwtag  DW_TAG_typedef, DW_AT_name("stringbuf")
	.dwattr $C$DW$T$592, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$592, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$592, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$592, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$T$592, DW_AT_decl_column(0x14)

$C$DW$T$154	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$154, DW_AT_name("basic_istringstream")
	.dwattr $C$DW$T$154, DW_AT_declaration
	.dwendtag $C$DW$T$154

	.dwattr $C$DW$T$154, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x08)
$C$DW$T$593	.dwtag  DW_TAG_typedef, DW_AT_name("istringstream")
	.dwattr $C$DW$T$593, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$593, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$593, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$593, DW_AT_decl_line(0x200)
	.dwattr $C$DW$T$593, DW_AT_decl_column(0x14)

$C$DW$T$155	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$155, DW_AT_name("basic_ostringstream")
	.dwattr $C$DW$T$155, DW_AT_declaration
	.dwendtag $C$DW$T$155

	.dwattr $C$DW$T$155, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x08)
$C$DW$T$594	.dwtag  DW_TAG_typedef, DW_AT_name("ostringstream")
	.dwattr $C$DW$T$594, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$594, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$594, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$594, DW_AT_decl_line(0x202)
	.dwattr $C$DW$T$594, DW_AT_decl_column(0x14)

$C$DW$T$156	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$156, DW_AT_name("basic_stringstream")
	.dwattr $C$DW$T$156, DW_AT_declaration
	.dwendtag $C$DW$T$156

	.dwattr $C$DW$T$156, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x08)
$C$DW$T$595	.dwtag  DW_TAG_typedef, DW_AT_name("stringstream")
	.dwattr $C$DW$T$595, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$T$595, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$595, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$595, DW_AT_decl_line(0x204)
	.dwattr $C$DW$T$595, DW_AT_decl_column(0x14)

$C$DW$T$162	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$162, DW_AT_name("allocator")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x01)
$C$DW$864	.dwtag  DW_TAG_template_type_parameter

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("allocator")
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_ZNSaIvEC1Ev")
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("allocator")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_ZNSaIvEC1ERKS_")
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$865	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$158)
	.dwendtag $C$DW$28


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_ZNSaIvEaSERKS_")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$866	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$158)
	.dwendtag $C$DW$29

	.dwendtag $C$DW$T$162

	.dwattr $C$DW$T$162, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xmemory")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x12)
$C$DW$T$160	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$160, DW_AT_address_class(0x20)

$C$DW$T$161	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$867	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$158)
	.dwendtag $C$DW$T$161

$C$DW$T$157	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$162)
$C$DW$T$158	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$T$158, DW_AT_address_class(0x20)

$C$DW$T$163	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$163, DW_AT_name("allocator")
	.dwattr $C$DW$T$163, DW_AT_declaration
	.dwendtag $C$DW$T$163

	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x08)

$C$DW$T$164	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$164, DW_AT_name("basic_stringbuf")
	.dwattr $C$DW$T$164, DW_AT_declaration
	.dwendtag $C$DW$T$164

	.dwattr $C$DW$T$164, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x08)
$C$DW$T$596	.dwtag  DW_TAG_typedef, DW_AT_name("wstringbuf")
	.dwattr $C$DW$T$596, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$596, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$596, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$596, DW_AT_decl_line(0x217)
	.dwattr $C$DW$T$596, DW_AT_decl_column(0x17)

$C$DW$T$165	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$165, DW_AT_name("basic_istringstream")
	.dwattr $C$DW$T$165, DW_AT_declaration
	.dwendtag $C$DW$T$165

	.dwattr $C$DW$T$165, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x08)
$C$DW$T$597	.dwtag  DW_TAG_typedef, DW_AT_name("wistringstream")
	.dwattr $C$DW$T$597, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$597, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$597, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$597, DW_AT_decl_line(0x219)
	.dwattr $C$DW$T$597, DW_AT_decl_column(0x17)

$C$DW$T$166	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$166, DW_AT_name("basic_ostringstream")
	.dwattr $C$DW$T$166, DW_AT_declaration
	.dwendtag $C$DW$T$166

	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x08)
$C$DW$T$598	.dwtag  DW_TAG_typedef, DW_AT_name("wostringstream")
	.dwattr $C$DW$T$598, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$598, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$598, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$598, DW_AT_decl_line(0x21b)
	.dwattr $C$DW$T$598, DW_AT_decl_column(0x17)

$C$DW$T$167	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$167, DW_AT_name("basic_stringstream")
	.dwattr $C$DW$T$167, DW_AT_declaration
	.dwendtag $C$DW$T$167

	.dwattr $C$DW$T$167, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x08)
$C$DW$T$599	.dwtag  DW_TAG_typedef, DW_AT_name("wstringstream")
	.dwattr $C$DW$T$599, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$599, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$599, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$599, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$T$599, DW_AT_decl_column(0x17)

$C$DW$T$174	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$174, DW_AT_name("bad_alloc")
	.dwattr $C$DW$T$174, DW_AT_byte_size(0x08)
$C$DW$868	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$869, DW_AT_name("__b_St9exception")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("__b_St9exception")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/new")
	.dwattr $C$DW$869, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$869, DW_AT_decl_column(0x07)

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("bad_alloc")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_ZNSt9bad_allocC1EPKc")
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$870	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$148)
	.dwendtag $C$DW$30


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("_Doraise")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_ZNKSt9bad_alloc8_DoraiseEv")
	.dwattr $C$DW$31, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x03]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_protected)

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("bad_alloc")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_ZNSt9bad_allocC1ERKS_")
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$871	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$170)
	.dwendtag $C$DW$32


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("~bad_alloc")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ZNSt9bad_allocD1Ev")
	.dwattr $C$DW$33, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x00]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ZNSt9bad_allocaSERKS_")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$872	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$170)
	.dwendtag $C$DW$34

	.dwendtag $C$DW$T$174

	.dwattr $C$DW$T$174, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/new")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x07)
$C$DW$T$172	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$172, DW_AT_address_class(0x20)

$C$DW$T$173	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$873	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$170)
	.dwendtag $C$DW$T$173

$C$DW$T$169	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$174)
$C$DW$T$170	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$170, DW_AT_address_class(0x20)

$C$DW$T$180	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$180, DW_AT_name("bad_exception")
	.dwattr $C$DW$T$180, DW_AT_byte_size(0x08)
$C$DW$874	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$875, DW_AT_name("__b_St9exception")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("__b_St9exception")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$875, DW_AT_decl_line(0x51)
	.dwattr $C$DW$875, DW_AT_decl_column(0x07)

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("bad_exception")
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_ZNSt13bad_exceptionC1EPKc")
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$876	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$148)
	.dwendtag $C$DW$35


$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("~bad_exception")
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_ZNSt13bad_exceptionD1Ev")
	.dwattr $C$DW$36, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x00]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("_Doraise")
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_ZNKSt13bad_exception8_DoraiseEv")
	.dwattr $C$DW$37, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x03]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_protected)

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("bad_exception")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_ZNSt13bad_exceptionC1ERKS_")
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$877	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$176)
	.dwendtag $C$DW$38


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_ZNSt13bad_exceptionaSERKS_")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$878	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$176)
	.dwendtag $C$DW$39

	.dwendtag $C$DW$T$180

	.dwattr $C$DW$T$180, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$T$180, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$180, DW_AT_decl_column(0x07)
$C$DW$T$178	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$178, DW_AT_address_class(0x20)

$C$DW$T$179	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$179, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$879	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$176)
	.dwendtag $C$DW$T$179

$C$DW$T$175	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$180)
$C$DW$T$176	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_address_class(0x20)

$C$DW$T$185	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$185, DW_AT_name("bidirectional_iterator_tag")
	.dwattr $C$DW$T$185, DW_AT_byte_size(0x01)
$C$DW$880	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$274)
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_ZNSt26bidirectional_iterator_tagaSERKS_")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$881	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$183)
	.dwendtag $C$DW$40

	.dwendtag $C$DW$T$185

	.dwattr $C$DW$T$185, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$185, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$T$185, DW_AT_decl_column(0x08)
$C$DW$T$181	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$T$181, DW_AT_address_class(0x20)

$C$DW$T$184	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$882	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$183)
	.dwendtag $C$DW$T$184

$C$DW$T$182	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$185)
$C$DW$T$183	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_address_class(0x20)

$C$DW$T$212	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$212, DW_AT_name("char_traits")
	.dwattr $C$DW$T$212, DW_AT_byte_size(0x01)

$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("assign")
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE6assignERcRKc")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$883	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$187)
$C$DW$884	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$41


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("eq")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE2eqERKcS2_")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$885	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$189)
$C$DW$886	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$42


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("lt")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE2ltERKcS2_")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$887	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$189)
$C$DW$888	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$43


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("compare")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE7compareEPKcS2_j")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$889	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$192)
$C$DW$890	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$192)
$C$DW$891	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$44


$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("length")
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE6lengthEPKc")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$892	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$192)
	.dwendtag $C$DW$45


$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("copy")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE4copyEPcPKcj")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$893	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$196)
$C$DW$894	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$192)
$C$DW$895	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$46


$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("find")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE4findEPKcjRS1_")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$896	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$192)
$C$DW$897	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$193)
$C$DW$898	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$47


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("move")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE4moveEPcPKcj")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$899	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$196)
$C$DW$900	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$192)
$C$DW$901	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$48


$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("assign")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE6assignEPcjc")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$902	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$196)
$C$DW$903	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$193)
$C$DW$904	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$186)
	.dwendtag $C$DW$49


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("to_char_type")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE12to_char_typeERKi")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$905	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$202)
	.dwendtag $C$DW$50


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("to_int_type")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE11to_int_typeERKc")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$906	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$189)
	.dwendtag $C$DW$51


$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("eq_int_type")
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE11eq_int_typeERKiS2_")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$907	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$202)
$C$DW$908	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$202)
	.dwendtag $C$DW$52


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("eof")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE3eofEv")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("not_eof")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcE7not_eofERKi")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$909	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$202)
	.dwendtag $C$DW$54


$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_ZNSt11char_traitsIcEaSERKS0_")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$910	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$210)
	.dwendtag $C$DW$55

	.dwendtag $C$DW$T$212

	.dwattr $C$DW$T$212, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$212, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$212, DW_AT_decl_column(0x13)
$C$DW$T$208	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$T$208, DW_AT_address_class(0x20)

$C$DW$T$211	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$211, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$T$211, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$911	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$210)
	.dwendtag $C$DW$T$211

$C$DW$T$209	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$212)
$C$DW$T$210	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$210, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$T$210, DW_AT_address_class(0x20)

$C$DW$T$213	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$213, DW_AT_name("basic_ios")
	.dwattr $C$DW$T$213, DW_AT_declaration
	.dwendtag $C$DW$T$213

	.dwattr $C$DW$T$213, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$213, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$T$213, DW_AT_decl_column(0x08)
$C$DW$T$600	.dwtag  DW_TAG_typedef, DW_AT_name("ios")
	.dwattr $C$DW$T$600, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$T$600, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$600, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$600, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$T$600, DW_AT_decl_column(0x2d)

$C$DW$T$214	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$214, DW_AT_name("basic_streambuf")
	.dwattr $C$DW$T$214, DW_AT_declaration
	.dwendtag $C$DW$T$214

	.dwattr $C$DW$T$214, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$214, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$T$214, DW_AT_decl_column(0x08)
$C$DW$T$601	.dwtag  DW_TAG_typedef, DW_AT_name("streambuf")
	.dwattr $C$DW$T$601, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$T$601, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$601, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$601, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$T$601, DW_AT_decl_column(0x33)

$C$DW$T$215	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$215, DW_AT_name("basic_filebuf")
	.dwattr $C$DW$T$215, DW_AT_declaration
	.dwendtag $C$DW$T$215

	.dwattr $C$DW$T$215, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$215, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$T$215, DW_AT_decl_column(0x08)
$C$DW$T$602	.dwtag  DW_TAG_typedef, DW_AT_name("filebuf")
	.dwattr $C$DW$T$602, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$T$602, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$602, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$602, DW_AT_decl_line(0x205)
	.dwattr $C$DW$T$602, DW_AT_decl_column(0x31)

$C$DW$T$216	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$216, DW_AT_name("basic_ifstream")
	.dwattr $C$DW$T$216, DW_AT_declaration
	.dwendtag $C$DW$T$216

	.dwattr $C$DW$T$216, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$216, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$T$216, DW_AT_decl_column(0x08)
$C$DW$T$603	.dwtag  DW_TAG_typedef, DW_AT_name("ifstream")
	.dwattr $C$DW$T$603, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$T$603, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$603, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$603, DW_AT_decl_line(0x206)
	.dwattr $C$DW$T$603, DW_AT_decl_column(0x32)

$C$DW$T$217	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$217, DW_AT_name("basic_ofstream")
	.dwattr $C$DW$T$217, DW_AT_declaration
	.dwendtag $C$DW$T$217

	.dwattr $C$DW$T$217, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$217, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$T$217, DW_AT_decl_column(0x08)
$C$DW$T$604	.dwtag  DW_TAG_typedef, DW_AT_name("ofstream")
	.dwattr $C$DW$T$604, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$T$604, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$604, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$604, DW_AT_decl_line(0x207)
	.dwattr $C$DW$T$604, DW_AT_decl_column(0x32)

$C$DW$T$218	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$218, DW_AT_name("basic_fstream")
	.dwattr $C$DW$T$218, DW_AT_declaration
	.dwendtag $C$DW$T$218

	.dwattr $C$DW$T$218, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$218, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$T$218, DW_AT_decl_column(0x08)
$C$DW$T$605	.dwtag  DW_TAG_typedef, DW_AT_name("fstream")
	.dwattr $C$DW$T$605, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$T$605, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$605, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$605, DW_AT_decl_line(0x208)
	.dwattr $C$DW$T$605, DW_AT_decl_column(0x31)

$C$DW$T$245	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$245, DW_AT_name("char_traits")
	.dwattr $C$DW$T$245, DW_AT_byte_size(0x01)

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("assign")
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE6assignERwRKw")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$912	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$220)
$C$DW$913	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$56


$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("eq")
	.dwattr $C$DW$57, DW_AT_declaration
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE2eqERKwS2_")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$914	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$222)
$C$DW$915	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$57


$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("lt")
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE2ltERKwS2_")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$916	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$222)
$C$DW$917	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$58


$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("compare")
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE7compareEPKwS2_j")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$918	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$225)
$C$DW$919	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$225)
$C$DW$920	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$59


$C$DW$60	.dwtag  DW_TAG_subprogram, DW_AT_name("length")
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE6lengthEPKw")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$921	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$225)
	.dwendtag $C$DW$60


$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("copy")
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE4copyEPwPKwj")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$922	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$228)
$C$DW$923	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$225)
$C$DW$924	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$61


$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("find")
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE4findEPKwjRS1_")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$925	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$225)
$C$DW$926	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$193)
$C$DW$927	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$62


$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("move")
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE4moveEPwPKwj")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$928	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$228)
$C$DW$929	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$225)
$C$DW$930	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$193)
	.dwendtag $C$DW$63


$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("assign")
	.dwattr $C$DW$64, DW_AT_declaration
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE6assignEPwjw")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$931	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$228)
$C$DW$932	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$193)
$C$DW$933	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$219)
	.dwendtag $C$DW$64


$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("to_char_type")
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE12to_char_typeERKj")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$934	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$235)
	.dwendtag $C$DW$65


$C$DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("to_int_type")
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE11to_int_typeERKw")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$935	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$66


$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("eq_int_type")
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE11eq_int_typeERKjS2_")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$936	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$235)
$C$DW$937	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$235)
	.dwendtag $C$DW$67


$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("eof")
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE3eofEv")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("not_eof")
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwE7not_eofERKj")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$938	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$235)
	.dwendtag $C$DW$69


$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_ZNSt11char_traitsIwEaSERKS0_")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$241)
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$939	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$243)
	.dwendtag $C$DW$70

	.dwendtag $C$DW$T$245

	.dwattr $C$DW$T$245, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$245, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$245, DW_AT_decl_column(0x13)
$C$DW$T$241	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$241, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$T$241, DW_AT_address_class(0x20)

$C$DW$T$244	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$244, DW_AT_type(*$C$DW$T$241)
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$940	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$243)
	.dwendtag $C$DW$T$244

$C$DW$T$242	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$242, DW_AT_type(*$C$DW$T$245)
$C$DW$T$243	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$243, DW_AT_type(*$C$DW$T$242)
	.dwattr $C$DW$T$243, DW_AT_address_class(0x20)

$C$DW$T$246	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$246, DW_AT_name("basic_ios")
	.dwattr $C$DW$T$246, DW_AT_declaration
	.dwendtag $C$DW$T$246

	.dwattr $C$DW$T$246, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$246, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$T$246, DW_AT_decl_column(0x08)
$C$DW$T$606	.dwtag  DW_TAG_typedef, DW_AT_name("wios")
	.dwattr $C$DW$T$606, DW_AT_type(*$C$DW$T$246)
	.dwattr $C$DW$T$606, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$606, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$606, DW_AT_decl_line(0x210)
	.dwattr $C$DW$T$606, DW_AT_decl_column(0x33)

$C$DW$T$247	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$247, DW_AT_name("basic_streambuf")
	.dwattr $C$DW$T$247, DW_AT_declaration
	.dwendtag $C$DW$T$247

	.dwattr $C$DW$T$247, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$247, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$T$247, DW_AT_decl_column(0x08)
$C$DW$T$607	.dwtag  DW_TAG_typedef, DW_AT_name("wstreambuf")
	.dwattr $C$DW$T$607, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$T$607, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$607, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$607, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$607, DW_AT_decl_column(0x02)

$C$DW$T$248	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$248, DW_AT_name("basic_istream")
	.dwattr $C$DW$T$248, DW_AT_declaration
	.dwendtag $C$DW$T$248

	.dwattr $C$DW$T$248, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$248, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$T$248, DW_AT_decl_column(0x08)
$C$DW$T$608	.dwtag  DW_TAG_typedef, DW_AT_name("wistream")
	.dwattr $C$DW$T$608, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$608, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$608, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$608, DW_AT_decl_line(0x213)
	.dwattr $C$DW$T$608, DW_AT_decl_column(0x37)

$C$DW$T$249	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$249, DW_AT_name("basic_ostream")
	.dwattr $C$DW$T$249, DW_AT_declaration
	.dwendtag $C$DW$T$249

	.dwattr $C$DW$T$249, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$249, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$T$249, DW_AT_decl_column(0x08)
$C$DW$T$609	.dwtag  DW_TAG_typedef, DW_AT_name("wostream")
	.dwattr $C$DW$T$609, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$T$609, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$609, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$609, DW_AT_decl_line(0x214)
	.dwattr $C$DW$T$609, DW_AT_decl_column(0x37)

$C$DW$T$250	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$250, DW_AT_name("basic_iostream")
	.dwattr $C$DW$T$250, DW_AT_declaration
	.dwendtag $C$DW$T$250

	.dwattr $C$DW$T$250, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$250, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$T$250, DW_AT_decl_column(0x08)
$C$DW$T$610	.dwtag  DW_TAG_typedef, DW_AT_name("wiostream")
	.dwattr $C$DW$T$610, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$T$610, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$610, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$610, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$610, DW_AT_decl_column(0x38)

$C$DW$T$251	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$251, DW_AT_name("basic_filebuf")
	.dwattr $C$DW$T$251, DW_AT_declaration
	.dwendtag $C$DW$T$251

	.dwattr $C$DW$T$251, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$251, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$T$251, DW_AT_decl_column(0x08)
$C$DW$T$611	.dwtag  DW_TAG_typedef, DW_AT_name("wfilebuf")
	.dwattr $C$DW$T$611, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$T$611, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$611, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$611, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$T$611, DW_AT_decl_column(0x37)

$C$DW$T$252	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$252, DW_AT_name("basic_ifstream")
	.dwattr $C$DW$T$252, DW_AT_declaration
	.dwendtag $C$DW$T$252

	.dwattr $C$DW$T$252, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$252, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$T$252, DW_AT_decl_column(0x08)
$C$DW$T$612	.dwtag  DW_TAG_typedef, DW_AT_name("wifstream")
	.dwattr $C$DW$T$612, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$T$612, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$612, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$612, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$T$612, DW_AT_decl_column(0x38)

$C$DW$T$253	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$253, DW_AT_name("basic_ofstream")
	.dwattr $C$DW$T$253, DW_AT_declaration
	.dwendtag $C$DW$T$253

	.dwattr $C$DW$T$253, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$253, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$T$253, DW_AT_decl_column(0x08)
$C$DW$T$613	.dwtag  DW_TAG_typedef, DW_AT_name("wofstream")
	.dwattr $C$DW$T$613, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$T$613, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$613, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$613, DW_AT_decl_line(0x220)
	.dwattr $C$DW$T$613, DW_AT_decl_column(0x38)

$C$DW$T$254	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$254, DW_AT_name("basic_fstream")
	.dwattr $C$DW$T$254, DW_AT_declaration
	.dwendtag $C$DW$T$254

	.dwattr $C$DW$T$254, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$254, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$T$254, DW_AT_decl_column(0x08)
$C$DW$T$614	.dwtag  DW_TAG_typedef, DW_AT_name("wfstream")
	.dwattr $C$DW$T$614, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$T$614, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$614, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$614, DW_AT_decl_line(0x221)
	.dwattr $C$DW$T$614, DW_AT_decl_column(0x37)

$C$DW$T$259	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$259, DW_AT_name("div_t")
	.dwattr $C$DW$T$259, DW_AT_byte_size(0x08)
$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$941, DW_AT_name("quot")
	.dwattr $C$DW$941, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$941, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$941, DW_AT_decl_column(0x16)
$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$942, DW_AT_name("rem")
	.dwattr $C$DW$942, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$942, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$942, DW_AT_decl_column(0x1c)

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$71, DW_AT_declaration
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_ZNSt5div_taSERKS_")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$943	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$257)
	.dwendtag $C$DW$71

	.dwendtag $C$DW$T$259

	.dwattr $C$DW$T$259, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$259, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$259, DW_AT_decl_column(0x10)
$C$DW$T$255	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$255, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$T$255, DW_AT_address_class(0x20)

$C$DW$T$258	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$258, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$T$258, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$944	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$257)
	.dwendtag $C$DW$T$258

$C$DW$T$256	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$256, DW_AT_type(*$C$DW$T$259)
$C$DW$T$257	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$257, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$T$257, DW_AT_address_class(0x20)
$C$DW$T$615	.dwtag  DW_TAG_typedef, DW_AT_name("div_t")
	.dwattr $C$DW$T$615, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$T$615, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$615, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$615, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$615, DW_AT_decl_column(0x23)

$C$DW$T$269	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$269, DW_AT_name("exception")
	.dwattr $C$DW$T$269, DW_AT_byte_size(0x08)
$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$945, DW_AT_name("__vptr")
	.dwattr $C$DW$945, DW_AT_TI_symbol_name("__vptr")
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$945, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$945, DW_AT_decl_line(0x11)
	.dwattr $C$DW$945, DW_AT_decl_column(0x07)
$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$946, DW_AT_name("_Ptr")
	.dwattr $C$DW$946, DW_AT_TI_symbol_name("_Ptr")
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_protected)
	.dwattr $C$DW$946, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$946, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$946, DW_AT_decl_column(0x0e)

$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("_Set_raise_handler")
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_ZNSt9exception18_Set_raise_handlerEPFvRKS_E")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$947	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$264)
	.dwendtag $C$DW$72


$C$DW$73	.dwtag  DW_TAG_subprogram, DW_AT_name("exception")
	.dwattr $C$DW$73, DW_AT_declaration
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_ZNSt9exceptionC1EPKc")
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$948	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$148)
	.dwendtag $C$DW$73


$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("exception")
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_ZNSt9exceptionC1ERKS_")
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$949	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$261)
	.dwendtag $C$DW$74


$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_ZNSt9exceptionaSERKS_")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$950	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$261)
	.dwendtag $C$DW$75


$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("~exception")
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_ZNSt9exceptionD1Ev")
	.dwattr $C$DW$76, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x00]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("what")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_ZNKSt9exception4whatEv")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$77, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x02]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("_Raise")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_ZNKSt9exception6_RaiseEv")
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("_Doraise")
	.dwattr $C$DW$79, DW_AT_declaration
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_ZNKSt9exception8_DoraiseEv")
	.dwattr $C$DW$79, DW_AT_virtuality(0x01), DW_AT_vtable_elem_location[DW_OP_constu 0x03]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_protected)
	.dwendtag $C$DW$T$269

	.dwattr $C$DW$T$269, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/exception")
	.dwattr $C$DW$T$269, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$269, DW_AT_decl_column(0x07)
$C$DW$T$266	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$266, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$T$266, DW_AT_address_class(0x20)

$C$DW$T$267	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$267, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$T$267, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$951	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$261)
	.dwendtag $C$DW$T$267

$C$DW$T$260	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$269)
$C$DW$T$261	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$261, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$T$261, DW_AT_address_class(0x20)

$C$DW$T$274	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$274, DW_AT_name("forward_iterator_tag")
	.dwattr $C$DW$T$274, DW_AT_byte_size(0x01)
$C$DW$952	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$281)
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$952, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$80, DW_AT_declaration
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_ZNSt20forward_iterator_tagaSERKS_")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$953	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$272)
	.dwendtag $C$DW$80

	.dwendtag $C$DW$T$274

	.dwattr $C$DW$T$274, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$274, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$274, DW_AT_decl_column(0x08)
$C$DW$T$270	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$270, DW_AT_type(*$C$DW$T$274)
	.dwattr $C$DW$T$270, DW_AT_address_class(0x20)

$C$DW$T$273	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$273, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$T$273, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$954	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$272)
	.dwendtag $C$DW$T$273

$C$DW$T$271	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$271, DW_AT_type(*$C$DW$T$274)
$C$DW$T$272	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$272, DW_AT_type(*$C$DW$T$271)
	.dwattr $C$DW$T$272, DW_AT_address_class(0x20)

$C$DW$T$276	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$276, DW_AT_name("fpos")
	.dwattr $C$DW$T$276, DW_AT_declaration
	.dwendtag $C$DW$T$276

	.dwattr $C$DW$T$276, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$276, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$276, DW_AT_decl_column(0x08)
$C$DW$T$616	.dwtag  DW_TAG_typedef, DW_AT_name("streampos")
	.dwattr $C$DW$T$616, DW_AT_type(*$C$DW$T$276)
	.dwattr $C$DW$T$616, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$616, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$616, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$616, DW_AT_decl_column(0x19)
$C$DW$T$617	.dwtag  DW_TAG_typedef, DW_AT_name("pos_type")
	.dwattr $C$DW$T$617, DW_AT_type(*$C$DW$T$616)
	.dwattr $C$DW$T$617, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$617, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$617, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$617, DW_AT_decl_column(0x14)
$C$DW$T$618	.dwtag  DW_TAG_typedef, DW_AT_name("pos_type")
	.dwattr $C$DW$T$618, DW_AT_type(*$C$DW$T$616)
	.dwattr $C$DW$T$618, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$618, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$618, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$T$618, DW_AT_decl_column(0x14)
$C$DW$T$619	.dwtag  DW_TAG_typedef, DW_AT_name("wstreampos")
	.dwattr $C$DW$T$619, DW_AT_type(*$C$DW$T$616)
	.dwattr $C$DW$T$619, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$619, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$619, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$619, DW_AT_decl_column(0x13)

$C$DW$T$281	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$281, DW_AT_name("input_iterator_tag")
	.dwattr $C$DW$T$281, DW_AT_byte_size(0x01)

$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$81, DW_AT_declaration
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_ZNSt18input_iterator_tagaSERKS_")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$277)
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$955	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$279)
	.dwendtag $C$DW$81

	.dwendtag $C$DW$T$281

	.dwattr $C$DW$T$281, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$281, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$281, DW_AT_decl_column(0x08)
$C$DW$T$277	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$277, DW_AT_type(*$C$DW$T$281)
	.dwattr $C$DW$T$277, DW_AT_address_class(0x20)

$C$DW$T$280	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$280, DW_AT_type(*$C$DW$T$277)
	.dwattr $C$DW$T$280, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$956	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$279)
	.dwendtag $C$DW$T$280

$C$DW$T$278	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$278, DW_AT_type(*$C$DW$T$281)
$C$DW$T$279	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$279, DW_AT_type(*$C$DW$T$278)
	.dwattr $C$DW$T$279, DW_AT_address_class(0x20)

$C$DW$T$22	.dwtag  DW_TAG_class_type
	.dwattr $C$DW$T$22, DW_AT_name("ios_base")
	.dwattr $C$DW$T$22, DW_AT_declaration
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/iosfwd")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x07)

$C$DW$T$286	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$286, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$286, DW_AT_byte_size(0x01)

$C$DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIbEaSERKS0_")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$282)
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$957	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$284)
	.dwendtag $C$DW$82

	.dwendtag $C$DW$T$286

	.dwattr $C$DW$T$286, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$286, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$T$286, DW_AT_decl_column(0x13)
$C$DW$T$282	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$282, DW_AT_type(*$C$DW$T$286)
	.dwattr $C$DW$T$282, DW_AT_address_class(0x20)

$C$DW$T$285	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$285, DW_AT_type(*$C$DW$T$282)
	.dwattr $C$DW$T$285, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$958	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$284)
	.dwendtag $C$DW$T$285

$C$DW$T$283	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$283, DW_AT_type(*$C$DW$T$286)
$C$DW$T$284	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$284, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$T$284, DW_AT_address_class(0x20)

$C$DW$T$291	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$291, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$291, DW_AT_byte_size(0x01)

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIcEaSERKS0_")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$287)
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$959	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$289)
	.dwendtag $C$DW$83

	.dwendtag $C$DW$T$291

	.dwattr $C$DW$T$291, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$291, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$291, DW_AT_decl_column(0x13)
$C$DW$T$287	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$287, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$T$287, DW_AT_address_class(0x20)

$C$DW$T$290	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$290, DW_AT_type(*$C$DW$T$287)
	.dwattr $C$DW$T$290, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$960	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$289)
	.dwendtag $C$DW$T$290

$C$DW$T$288	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$288, DW_AT_type(*$C$DW$T$291)
$C$DW$T$289	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$289, DW_AT_type(*$C$DW$T$288)
	.dwattr $C$DW$T$289, DW_AT_address_class(0x20)

$C$DW$T$296	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$296, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$296, DW_AT_byte_size(0x01)

$C$DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$84, DW_AT_declaration
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIiEaSERKS0_")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$292)
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$961	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$294)
	.dwendtag $C$DW$84

	.dwendtag $C$DW$T$296

	.dwattr $C$DW$T$296, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$296, DW_AT_decl_line(0x162)
	.dwattr $C$DW$T$296, DW_AT_decl_column(0x13)
$C$DW$T$292	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$292, DW_AT_type(*$C$DW$T$296)
	.dwattr $C$DW$T$292, DW_AT_address_class(0x20)

$C$DW$T$295	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$295, DW_AT_type(*$C$DW$T$292)
	.dwattr $C$DW$T$295, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$962	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$294)
	.dwendtag $C$DW$T$295

$C$DW$T$293	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$293, DW_AT_type(*$C$DW$T$296)
$C$DW$T$294	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$294, DW_AT_type(*$C$DW$T$293)
	.dwattr $C$DW$T$294, DW_AT_address_class(0x20)

$C$DW$T$301	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$301, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$301, DW_AT_byte_size(0x01)

$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIxEaSERKS0_")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$297)
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$963	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$299)
	.dwendtag $C$DW$85

	.dwendtag $C$DW$T$301

	.dwattr $C$DW$T$301, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$301, DW_AT_decl_line(0x177)
	.dwattr $C$DW$T$301, DW_AT_decl_column(0x13)
$C$DW$T$297	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$297, DW_AT_type(*$C$DW$T$301)
	.dwattr $C$DW$T$297, DW_AT_address_class(0x20)

$C$DW$T$300	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$300, DW_AT_type(*$C$DW$T$297)
	.dwattr $C$DW$T$300, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$964	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$299)
	.dwendtag $C$DW$T$300

$C$DW$T$298	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$298, DW_AT_type(*$C$DW$T$301)
$C$DW$T$299	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$299, DW_AT_type(*$C$DW$T$298)
	.dwattr $C$DW$T$299, DW_AT_address_class(0x20)

$C$DW$T$306	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$306, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$306, DW_AT_byte_size(0x01)

$C$DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$86, DW_AT_declaration
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIlEaSERKS0_")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$965	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$304)
	.dwendtag $C$DW$86

	.dwendtag $C$DW$T$306

	.dwattr $C$DW$T$306, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$306, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$T$306, DW_AT_decl_column(0x13)
$C$DW$T$302	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$302, DW_AT_type(*$C$DW$T$306)
	.dwattr $C$DW$T$302, DW_AT_address_class(0x20)

$C$DW$T$305	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$305, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$T$305, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$966	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$304)
	.dwendtag $C$DW$T$305

$C$DW$T$303	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$303, DW_AT_type(*$C$DW$T$306)
$C$DW$T$304	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$304, DW_AT_type(*$C$DW$T$303)
	.dwattr $C$DW$T$304, DW_AT_address_class(0x20)

$C$DW$T$311	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$311, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$311, DW_AT_byte_size(0x01)

$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIsEaSERKS0_")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$307)
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$967	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$309)
	.dwendtag $C$DW$87

	.dwendtag $C$DW$T$311

	.dwattr $C$DW$T$311, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$311, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$311, DW_AT_decl_column(0x13)
$C$DW$T$307	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$307, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$T$307, DW_AT_address_class(0x20)

$C$DW$T$310	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$307)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$968	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$309)
	.dwendtag $C$DW$T$310

$C$DW$T$308	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$308, DW_AT_type(*$C$DW$T$311)
$C$DW$T$309	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$309, DW_AT_type(*$C$DW$T$308)
	.dwattr $C$DW$T$309, DW_AT_address_class(0x20)

$C$DW$T$316	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$316, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$316, DW_AT_byte_size(0x01)

$C$DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIaEaSERKS0_")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$312)
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$969	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$314)
	.dwendtag $C$DW$88

	.dwendtag $C$DW$T$316

	.dwattr $C$DW$T$316, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$316, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$316, DW_AT_decl_column(0x13)
$C$DW$T$312	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$312, DW_AT_type(*$C$DW$T$316)
	.dwattr $C$DW$T$312, DW_AT_address_class(0x20)

$C$DW$T$315	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$315, DW_AT_type(*$C$DW$T$312)
	.dwattr $C$DW$T$315, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$970	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$314)
	.dwendtag $C$DW$T$315

$C$DW$T$313	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$313, DW_AT_type(*$C$DW$T$316)
$C$DW$T$314	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$314, DW_AT_type(*$C$DW$T$313)
	.dwattr $C$DW$T$314, DW_AT_address_class(0x20)

$C$DW$T$321	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$321, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$321, DW_AT_byte_size(0x01)

$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIhEaSERKS0_")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$317)
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$971	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$319)
	.dwendtag $C$DW$89

	.dwendtag $C$DW$T$321

	.dwattr $C$DW$T$321, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$321, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$T$321, DW_AT_decl_column(0x13)
$C$DW$T$317	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$317, DW_AT_type(*$C$DW$T$321)
	.dwattr $C$DW$T$317, DW_AT_address_class(0x20)

$C$DW$T$320	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$320, DW_AT_type(*$C$DW$T$317)
	.dwattr $C$DW$T$320, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$972	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$319)
	.dwendtag $C$DW$T$320

$C$DW$T$318	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$318, DW_AT_type(*$C$DW$T$321)
$C$DW$T$319	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$319, DW_AT_type(*$C$DW$T$318)
	.dwattr $C$DW$T$319, DW_AT_address_class(0x20)

$C$DW$T$326	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$326, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$326, DW_AT_byte_size(0x01)

$C$DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$90, DW_AT_declaration
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIjEaSERKS0_")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$973	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$324)
	.dwendtag $C$DW$90

	.dwendtag $C$DW$T$326

	.dwattr $C$DW$T$326, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$326, DW_AT_decl_line(0x167)
	.dwattr $C$DW$T$326, DW_AT_decl_column(0x13)
$C$DW$T$322	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$T$326)
	.dwattr $C$DW$T$322, DW_AT_address_class(0x20)

$C$DW$T$325	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$325, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$T$325, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$974	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$324)
	.dwendtag $C$DW$T$325

$C$DW$T$323	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$T$326)
$C$DW$T$324	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$324, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$T$324, DW_AT_address_class(0x20)

$C$DW$T$331	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$331, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$331, DW_AT_byte_size(0x01)

$C$DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$91, DW_AT_declaration
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIyEaSERKS0_")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$327)
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$975	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$329)
	.dwendtag $C$DW$91

	.dwendtag $C$DW$T$331

	.dwattr $C$DW$T$331, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$331, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$T$331, DW_AT_decl_column(0x13)
$C$DW$T$327	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$327, DW_AT_type(*$C$DW$T$331)
	.dwattr $C$DW$T$327, DW_AT_address_class(0x20)

$C$DW$T$330	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$330, DW_AT_type(*$C$DW$T$327)
	.dwattr $C$DW$T$330, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$976	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$329)
	.dwendtag $C$DW$T$330

$C$DW$T$328	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$328, DW_AT_type(*$C$DW$T$331)
$C$DW$T$329	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$329, DW_AT_type(*$C$DW$T$328)
	.dwattr $C$DW$T$329, DW_AT_address_class(0x20)

$C$DW$T$336	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$336, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$336, DW_AT_byte_size(0x01)

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsImEaSERKS0_")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$332)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$977	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$334)
	.dwendtag $C$DW$92

	.dwendtag $C$DW$T$336

	.dwattr $C$DW$T$336, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$336, DW_AT_decl_line(0x171)
	.dwattr $C$DW$T$336, DW_AT_decl_column(0x13)
$C$DW$T$332	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$332, DW_AT_type(*$C$DW$T$336)
	.dwattr $C$DW$T$332, DW_AT_address_class(0x20)

$C$DW$T$335	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$335, DW_AT_type(*$C$DW$T$332)
	.dwattr $C$DW$T$335, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$978	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$334)
	.dwendtag $C$DW$T$335

$C$DW$T$333	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$333, DW_AT_type(*$C$DW$T$336)
$C$DW$T$334	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$334, DW_AT_type(*$C$DW$T$333)
	.dwattr $C$DW$T$334, DW_AT_address_class(0x20)

$C$DW$T$341	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$341, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$341, DW_AT_byte_size(0x01)

$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsItEaSERKS0_")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$337)
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$979	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$339)
	.dwendtag $C$DW$93

	.dwendtag $C$DW$T$341

	.dwattr $C$DW$T$341, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$341, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$T$341, DW_AT_decl_column(0x13)
$C$DW$T$337	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$337, DW_AT_type(*$C$DW$T$341)
	.dwattr $C$DW$T$337, DW_AT_address_class(0x20)

$C$DW$T$340	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$340, DW_AT_type(*$C$DW$T$337)
	.dwattr $C$DW$T$340, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$980	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$339)
	.dwendtag $C$DW$T$340

$C$DW$T$338	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$338, DW_AT_type(*$C$DW$T$341)
$C$DW$T$339	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$339, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$T$339, DW_AT_address_class(0x20)

$C$DW$T$346	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$346, DW_AT_name("iterator_traits")
	.dwattr $C$DW$T$346, DW_AT_byte_size(0x01)

$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_ZNSt15iterator_traitsIwEaSERKS0_")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$342)
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$981	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$344)
	.dwendtag $C$DW$94

	.dwendtag $C$DW$T$346

	.dwattr $C$DW$T$346, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$346, DW_AT_decl_line(0x153)
	.dwattr $C$DW$T$346, DW_AT_decl_column(0x13)
$C$DW$T$342	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$342, DW_AT_type(*$C$DW$T$346)
	.dwattr $C$DW$T$342, DW_AT_address_class(0x20)

$C$DW$T$345	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$345, DW_AT_type(*$C$DW$T$342)
	.dwattr $C$DW$T$345, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$982	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$344)
	.dwendtag $C$DW$T$345

$C$DW$T$343	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$343, DW_AT_type(*$C$DW$T$346)
$C$DW$T$344	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$344, DW_AT_type(*$C$DW$T$343)
	.dwattr $C$DW$T$344, DW_AT_address_class(0x20)

$C$DW$T$351	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$351, DW_AT_name("ldiv_t")
	.dwattr $C$DW$T$351, DW_AT_byte_size(0x08)
$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$983, DW_AT_name("quot")
	.dwattr $C$DW$983, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$983, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$983, DW_AT_decl_line(0x40)
	.dwattr $C$DW$983, DW_AT_decl_column(0x17)
$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$984, DW_AT_name("rem")
	.dwattr $C$DW$984, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$984, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$984, DW_AT_decl_line(0x40)
	.dwattr $C$DW$984, DW_AT_decl_column(0x1d)

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_ZNSt6ldiv_taSERKS_")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$985	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$349)
	.dwendtag $C$DW$95

	.dwendtag $C$DW$T$351

	.dwattr $C$DW$T$351, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$351, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$351, DW_AT_decl_column(0x10)
$C$DW$T$347	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$347, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$347, DW_AT_address_class(0x20)

$C$DW$T$350	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$350, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$350, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$986	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$349)
	.dwendtag $C$DW$T$350

$C$DW$T$348	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$348, DW_AT_type(*$C$DW$T$351)
$C$DW$T$349	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$349, DW_AT_type(*$C$DW$T$348)
	.dwattr $C$DW$T$349, DW_AT_address_class(0x20)
$C$DW$T$620	.dwtag  DW_TAG_typedef, DW_AT_name("ldiv_t")
	.dwattr $C$DW$T$620, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$620, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$620, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$620, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$620, DW_AT_decl_column(0x24)

$C$DW$T$356	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$356, DW_AT_name("lldiv_t")
	.dwattr $C$DW$T$356, DW_AT_byte_size(0x10)
$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$987, DW_AT_name("quot")
	.dwattr $C$DW$987, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$987, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$987, DW_AT_decl_line(0x43)
	.dwattr $C$DW$987, DW_AT_decl_column(0x1c)
$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$988, DW_AT_name("rem")
	.dwattr $C$DW$988, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$988, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$988, DW_AT_decl_line(0x43)
	.dwattr $C$DW$988, DW_AT_decl_column(0x22)

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_ZNSt7lldiv_taSERKS_")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$989	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$354)
	.dwendtag $C$DW$96

	.dwendtag $C$DW$T$356

	.dwattr $C$DW$T$356, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$356, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$356, DW_AT_decl_column(0x10)
$C$DW$T$352	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$352, DW_AT_type(*$C$DW$T$356)
	.dwattr $C$DW$T$352, DW_AT_address_class(0x20)

$C$DW$T$355	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$355, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$T$355, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$990	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$354)
	.dwendtag $C$DW$T$355

$C$DW$T$353	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$353, DW_AT_type(*$C$DW$T$356)
$C$DW$T$354	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$354, DW_AT_type(*$C$DW$T$353)
	.dwattr $C$DW$T$354, DW_AT_address_class(0x20)
$C$DW$T$621	.dwtag  DW_TAG_typedef, DW_AT_name("lldiv_t")
	.dwattr $C$DW$T$621, DW_AT_type(*$C$DW$T$356)
	.dwattr $C$DW$T$621, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$621, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/stdlib.h")
	.dwattr $C$DW$T$621, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$621, DW_AT_decl_column(0x29)

$C$DW$T$361	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$361, DW_AT_name("nothrow_t")
	.dwattr $C$DW$T$361, DW_AT_byte_size(0x01)

$C$DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_ZNSt9nothrow_taSERKS_")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$357)
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$991	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$359)
	.dwendtag $C$DW$97

	.dwendtag $C$DW$T$361

	.dwattr $C$DW$T$361, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/new")
	.dwattr $C$DW$T$361, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$361, DW_AT_decl_column(0x08)
$C$DW$T$357	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$357, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$357, DW_AT_address_class(0x20)

$C$DW$T$360	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$360, DW_AT_type(*$C$DW$T$357)
	.dwattr $C$DW$T$360, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$992	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$359)
	.dwendtag $C$DW$T$360

$C$DW$T$358	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$358, DW_AT_type(*$C$DW$T$361)
$C$DW$T$359	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$359, DW_AT_type(*$C$DW$T$358)
	.dwattr $C$DW$T$359, DW_AT_address_class(0x20)

$C$DW$T$366	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$366, DW_AT_name("output_iterator_tag")
	.dwattr $C$DW$T$366, DW_AT_byte_size(0x01)

$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$98, DW_AT_declaration
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_ZNSt19output_iterator_tagaSERKS_")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$362)
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$993	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$364)
	.dwendtag $C$DW$98

	.dwendtag $C$DW$T$366

	.dwattr $C$DW$T$366, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$366, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$366, DW_AT_decl_column(0x08)
$C$DW$T$362	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$T$362, DW_AT_address_class(0x20)

$C$DW$T$365	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$T$362)
	.dwattr $C$DW$T$365, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$994	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$364)
	.dwendtag $C$DW$T$365

$C$DW$T$622	.dwtag  DW_TAG_typedef, DW_AT_name("iterator_category")
	.dwattr $C$DW$T$622, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$T$622, DW_AT_language(DW_LANG_C_plus_plus)
	.dwattr $C$DW$T$622, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$622, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$622, DW_AT_decl_column(0x14)
$C$DW$T$363	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$363, DW_AT_type(*$C$DW$T$366)
$C$DW$T$364	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$364, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$T$364, DW_AT_address_class(0x20)

$C$DW$T$371	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$371, DW_AT_name("iterator")
	.dwattr $C$DW$T$371, DW_AT_byte_size(0x01)
$C$DW$995	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$995, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$99, DW_AT_declaration
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_ZNSt8iteratorISt19output_iterator_tagvvvvEaSERKS1_")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$996	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$369)
	.dwendtag $C$DW$99

	.dwendtag $C$DW$T$371

	.dwattr $C$DW$T$371, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$371, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$371, DW_AT_decl_column(0x0a)
$C$DW$T$367	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$T$371)
	.dwattr $C$DW$T$367, DW_AT_address_class(0x20)

$C$DW$T$370	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$370, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$T$370, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$997	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$369)
	.dwendtag $C$DW$T$370

$C$DW$T$368	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$371)
$C$DW$T$369	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$T$369, DW_AT_address_class(0x20)

$C$DW$T$376	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$376, DW_AT_name("random_access_iterator_tag")
	.dwattr $C$DW$T$376, DW_AT_byte_size(0x01)
$C$DW$998	.dwtag  DW_TAG_inheritance
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$998, DW_AT_virtuality(0x00), DW_AT_data_member_location[DW_OP_plus_uconst 0x0]

$C$DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("operator =")
	.dwattr $C$DW$100, DW_AT_declaration
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_ZNSt26random_access_iterator_tagaSERKS_")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$372)
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$999	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$374)
	.dwendtag $C$DW$100

	.dwendtag $C$DW$T$376

	.dwattr $C$DW$T$376, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/xutility")
	.dwattr $C$DW$T$376, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$T$376, DW_AT_decl_column(0x08)
$C$DW$T$372	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$372, DW_AT_type(*$C$DW$T$376)
	.dwattr $C$DW$T$372, DW_AT_address_class(0x20)

$C$DW$T$375	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$375, DW_AT_type(*$C$DW$T$372)
	.dwattr $C$DW$T$375, DW_AT_language(DW_LANG_C_plus_plus)
$C$DW$1000	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$374)
	.dwendtag $C$DW$T$375

$C$DW$T$373	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$373, DW_AT_type(*$C$DW$T$376)
$C$DW$T$374	.dwtag  DW_TAG_reference_type
	.dwattr $C$DW$T$374, DW_AT_type(*$C$DW$T$373)
	.dwattr $C$DW$T$374, DW_AT_address_class(0x20)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("tm")
	.dwattr $C$DW$T$23, DW_AT_declaration
	.dwendtag $C$DW$T$23

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include/wchar.hx")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x27)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x08)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C_plus_plus)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 19
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwendentry
	.dwendtag $C$DW$CU

