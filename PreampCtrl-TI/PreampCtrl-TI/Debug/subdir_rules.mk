################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
PreampCtrl_AlgProc.obj: C:/dev/PreampCtrl-OSC/Source/PreampCtrl_AlgProc.cpp $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/bin/cl6x" --cmd_file="C:\dev\avid\aax-sdk-2-9-0\TI\CCSv4\CommonPlugIn_CompilerCmd.cmd"  -mv67p --abi=eabi -g --include_path="C:/dev/AAX-DSP/PreampCtrl-TI" --include_path="C:/dev/avid/aax-sdk-2-9-0/TI/CCSv5" --include_path="C:/dev/PreampCtrl-OSC/Source" --include_path="C:/dev/avid/aax-sdk-2-9-0/Interfaces" --include_path="C:/dev/avid/aax-sdk-2-9-0/Interfaces/ACF" --include_path="C:/dev/PreampCtrl-OSC/Source" --include_path="C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include" --define=c6727 --define=AAX_ALLOW_UNKNOWN_ENVIRONMENT --define=AAX_TI_BINARY_IN_DEVELOPMENT --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/bin/cl6x" --cmd_file="C:\dev\avid\aax-sdk-2-9-0\TI\CCSv4\CommonPlugIn_CompilerCmd.cmd"  -mv67p --abi=eabi -g --include_path="C:/dev/AAX-DSP/PreampCtrl-TI" --include_path="C:/dev/avid/aax-sdk-2-9-0/TI/CCSv5" --include_path="C:/dev/PreampCtrl-OSC/Source" --include_path="C:/dev/avid/aax-sdk-2-9-0/Interfaces" --include_path="C:/dev/avid/aax-sdk-2-9-0/Interfaces/ACF" --include_path="C:/dev/PreampCtrl-OSC/Source" --include_path="C:/ti/ccs1281/ccs/tools/compiler/c6000_7.4.24/include" --define=c6727 --define=AAX_ALLOW_UNKNOWN_ENVIRONMENT --define=AAX_TI_BINARY_IN_DEVELOPMENT --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


