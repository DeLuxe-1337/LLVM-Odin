package LLVM

foreign import LLVM_C "LLVM-C.lib"

import _c "core:c"

LLVM_C_ANALYSIS_H :: 1;
LLVM_C_BITREADER_H :: 1;
LLVM_C_BITWRITER_H :: 1;
LLVM_C_BLAKE3_H :: 1;
LLVM_BLAKE3_VERSION_STRING :: "1.3.1";
LLVM_BLAKE3_KEY_LEN :: 32;
LLVM_BLAKE3_OUT_LEN :: 32;
LLVM_BLAKE3_BLOCK_LEN :: 64;
LLVM_BLAKE3_CHUNK_LEN :: 1024;
LLVM_BLAKE3_MAX_DEPTH :: 54;
LLVM_C_COMDAT_H :: 1;
LLVM_C_CORE_H :: 1;
LLVM_C_DATATYPES_H :: 1;
LLVM_C_DEBUGINFO_H :: 1;
LLVM_C_DEPRECATED_H :: 1;
LLVM_C_DISASSEMBLER_H :: 1;
LLVMDisassembler_Option_UseMarkup :: 1;
LLVMDisassembler_Option_PrintImmHex :: 2;
LLVMDisassembler_Option_AsmPrinterVariant :: 4;
LLVMDisassembler_Option_SetInstrComments :: 8;
LLVMDisassembler_Option_PrintLatency :: 16;
LLVM_C_DISASSEMBLERTYPES_H :: 1;
LLVMDisassembler_VariantKind_None :: 0;
LLVMDisassembler_VariantKind_ARM_HI16 :: 1;
LLVMDisassembler_VariantKind_ARM_LO16 :: 2;
LLVMDisassembler_VariantKind_ARM64_PAGE :: 1;
LLVMDisassembler_VariantKind_ARM64_PAGEOFF :: 2;
LLVMDisassembler_VariantKind_ARM64_GOTPAGE :: 3;
LLVMDisassembler_VariantKind_ARM64_GOTPAGEOFF :: 4;
LLVMDisassembler_VariantKind_ARM64_TLVP :: 5;
LLVMDisassembler_VariantKind_ARM64_TLVOFF :: 6;
LLVMDisassembler_ReferenceType_InOut_None :: 0;
LLVMDisassembler_ReferenceType_In_Branch :: 1;
LLVMDisassembler_ReferenceType_In_PCrel_Load :: 2;
LLVMDisassembler_ReferenceType_In_ARM64_ADRP :: 4294967297;
LLVMDisassembler_ReferenceType_In_ARM64_ADDXri :: 4294967298;
LLVMDisassembler_ReferenceType_In_ARM64_LDRXui :: 4294967299;
LLVMDisassembler_ReferenceType_In_ARM64_LDRXl :: 4294967300;
LLVMDisassembler_ReferenceType_In_ARM64_ADR :: 4294967301;
LLVMDisassembler_ReferenceType_Out_SymbolStub :: 1;
LLVMDisassembler_ReferenceType_Out_LitPool_SymAddr :: 2;
LLVMDisassembler_ReferenceType_Out_LitPool_CstrAddr :: 3;
LLVMDisassembler_ReferenceType_Out_Objc_CFString_Ref :: 4;
LLVMDisassembler_ReferenceType_Out_Objc_Message :: 5;
LLVMDisassembler_ReferenceType_Out_Objc_Message_Ref :: 6;
LLVMDisassembler_ReferenceType_Out_Objc_Selector_Ref :: 7;
LLVMDisassembler_ReferenceType_Out_Objc_Class_Ref :: 8;
LLVMDisassembler_ReferenceType_DeMangled_Name :: 9;
LLVM_C_ERROR_H :: 1;
LLVMErrorSuccess :: 0;
LLVM_C_ERRORHANDLING_H :: 1;
LLVM_C_EXECUTIONENGINE_H :: 1;
LLVM_C_EXTERNC_H :: 1;
LLVM_C_IRREADER_H :: 1;
LLVM_C_LINKER_H :: 1;
LLVM_C_LLJIT_H :: 1;
LLVM_C_LTO_H :: 1;
LTO_API_VERSION :: 29;
LLVM_C_OBJECT_H :: 1;
LLVM_C_ORC_H :: 1;
LLVM_C_ORCEE_H :: 1;
LLVM_C_REMARKS_H :: 1;
REMARKS_API_VERSION :: 1;
LLVM_C_SUPPORT_H :: 1;
LLVM_C_TARGET_H :: 1;
LLVM_C_TARGETMACHINE_H :: 1;
LLVM_C_TYPES_H :: 1;

LLVMAttributeIndex :: _c.uint;
LLVMDiagnosticHandler :: #type proc(unamed0 : LLVMDiagnosticInfoRef, unamed1 : rawptr);
LLVMYieldCallback :: #type proc(unamed0 : LLVMContextRef, unamed1 : rawptr);
ssize_t :: i64;
LLVMMetadataKind :: _c.uint;
LLVMDWARFTypeEncoding :: _c.uint;
LLVMDisasmContextRef :: rawptr;
LLVMOpInfoCallback :: #type proc(DisInfo : rawptr, PC : u64, Offset : u64, OpSize : u64, InstSize : u64, TagType : _c.int, TagBuf : rawptr) -> _c.int;
LLVMSymbolLookupCallback :: #type proc(DisInfo : rawptr, ReferenceValue : u64, ReferenceType : ^u64, ReferencePC : u64, ReferenceName : ^cstring) -> cstring;
LLVMErrorRef :: ^LLVMOpaqueError;
LLVMErrorTypeId :: rawptr;
LLVMFatalErrorHandler :: #type proc(Reason : cstring);
LLVMGenericValueRef :: ^LLVMOpaqueGenericValue;
LLVMExecutionEngineRef :: ^LLVMOpaqueExecutionEngine;
LLVMMCJITMemoryManagerRef :: ^LLVMOpaqueMCJITMemoryManager;
LLVMMemoryManagerAllocateCodeSectionCallback :: #type proc(Opaque : rawptr, Size : _c.uintptr_t, Alignment : _c.uint, SectionID : _c.uint, SectionName : cstring) -> ^u8;
LLVMMemoryManagerAllocateDataSectionCallback :: #type proc(Opaque : rawptr, Size : _c.uintptr_t, Alignment : _c.uint, SectionID : _c.uint, SectionName : cstring, IsReadOnly : LLVMBool) -> ^u8;
LLVMMemoryManagerFinalizeMemoryCallback :: #type proc(Opaque : rawptr, ErrMsg : ^cstring) -> LLVMBool;
LLVMMemoryManagerDestroyCallback :: #type proc(Opaque : rawptr);
LLVMOrcLLJITBuilderObjectLinkingLayerCreatorFunction :: #type proc(Ctx : rawptr, ES : LLVMOrcExecutionSessionRef, Triple : cstring) -> LLVMOrcObjectLayerRef;
LLVMOrcLLJITBuilderRef :: ^LLVMOrcOpaqueLLJITBuilder;
LLVMOrcLLJITRef :: ^LLVMOrcOpaqueLLJIT;
lto_bool_t :: bool;
lto_module_t :: ^LLVMOpaqueLTOModule;
lto_code_gen_t :: ^LLVMOpaqueLTOCodeGenerator;
thinlto_code_gen_t :: ^LLVMOpaqueThinLTOCodeGenerator;
lto_diagnostic_handler_t :: #type proc(severity : lto_codegen_diagnostic_severity_t, diag : cstring, ctxt : rawptr);
lto_input_t :: ^LLVMOpaqueLTOInput;
LLVMSectionIteratorRef :: ^LLVMOpaqueSectionIterator;
LLVMSymbolIteratorRef :: ^LLVMOpaqueSymbolIterator;
LLVMRelocationIteratorRef :: ^LLVMOpaqueRelocationIterator;
LLVMObjectFileRef :: ^LLVMOpaqueObjectFile;
LLVMOrcJITTargetAddress :: u64;
LLVMOrcExecutorAddress :: u64;
LLVMJITSymbolTargetFlags :: u8;
LLVMOrcExecutionSessionRef :: ^LLVMOrcOpaqueExecutionSession;
LLVMOrcErrorReporterFunction :: #type proc(Ctx : rawptr, Err : LLVMErrorRef);
LLVMOrcSymbolStringPoolRef :: ^LLVMOrcOpaqueSymbolStringPool;
LLVMOrcSymbolStringPoolEntryRef :: ^LLVMOrcOpaqueSymbolStringPoolEntry;
LLVMOrcCSymbolFlagsMapPairs :: ^LLVMOrcCSymbolFlagsMapPair;
LLVMOrcCSymbolMapPairs :: ^LLVMOrcCSymbolMapPair;
LLVMOrcCSymbolAliasMapPairs :: ^LLVMOrcCSymbolAliasMapPair;
LLVMOrcJITDylibRef :: ^LLVMOrcOpaqueJITDylib;
LLVMOrcCDependenceMapPairs :: ^LLVMOrcCDependenceMapPair;
LLVMOrcCJITDylibSearchOrder :: ^LLVMOrcCJITDylibSearchOrderElement;
LLVMOrcCLookupSet :: ^LLVMOrcCLookupSetElement;
LLVMOrcMaterializationUnitRef :: ^LLVMOrcOpaqueMaterializationUnit;
LLVMOrcMaterializationResponsibilityRef :: ^LLVMOrcOpaqueMaterializationResponsibility;
LLVMOrcMaterializationUnitMaterializeFunction :: #type proc(Ctx : rawptr, MR : LLVMOrcMaterializationResponsibilityRef);
LLVMOrcMaterializationUnitDiscardFunction :: #type proc(Ctx : rawptr, JD : LLVMOrcJITDylibRef, Symbol : LLVMOrcSymbolStringPoolEntryRef);
LLVMOrcMaterializationUnitDestroyFunction :: #type proc(Ctx : rawptr);
LLVMOrcResourceTrackerRef :: ^LLVMOrcOpaqueResourceTracker;
LLVMOrcDefinitionGeneratorRef :: ^LLVMOrcOpaqueDefinitionGenerator;
LLVMOrcLookupStateRef :: ^LLVMOrcOpaqueLookupState;
LLVMOrcCAPIDefinitionGeneratorTryToGenerateFunction :: #type proc(GeneratorObj : LLVMOrcDefinitionGeneratorRef, Ctx : rawptr, LookupState : ^LLVMOrcLookupStateRef, Kind : LLVMOrcLookupKind, JD : LLVMOrcJITDylibRef, JDLookupFlags : LLVMOrcJITDylibLookupFlags, LookupSet : LLVMOrcCLookupSet, LookupSetSize : _c.size_t) -> LLVMErrorRef;
LLVMOrcDisposeCAPIDefinitionGeneratorFunction :: #type proc(Ctx : rawptr);
LLVMOrcSymbolPredicate :: #type proc(Ctx : rawptr, Sym : LLVMOrcSymbolStringPoolEntryRef) -> _c.int;
LLVMOrcThreadSafeContextRef :: ^LLVMOrcOpaqueThreadSafeContext;
LLVMOrcThreadSafeModuleRef :: ^LLVMOrcOpaqueThreadSafeModule;
LLVMOrcGenericIRModuleOperationFunction :: #type proc(Ctx : rawptr, M : LLVMModuleRef) -> LLVMErrorRef;
LLVMOrcJITTargetMachineBuilderRef :: ^LLVMOrcOpaqueJITTargetMachineBuilder;
LLVMOrcObjectLayerRef :: ^LLVMOrcOpaqueObjectLayer;
LLVMOrcObjectLinkingLayerRef :: ^LLVMOrcOpaqueObjectLinkingLayer;
LLVMOrcIRTransformLayerRef :: ^LLVMOrcOpaqueIRTransformLayer;
LLVMOrcIRTransformLayerTransformFunction :: #type proc(Ctx : rawptr, ModInOut : ^LLVMOrcThreadSafeModuleRef, MR : LLVMOrcMaterializationResponsibilityRef) -> LLVMErrorRef;
LLVMOrcObjectTransformLayerRef :: ^LLVMOrcOpaqueObjectTransformLayer;
LLVMOrcObjectTransformLayerTransformFunction :: #type proc(Ctx : rawptr, ObjInOut : ^LLVMMemoryBufferRef) -> LLVMErrorRef;
LLVMOrcIndirectStubsManagerRef :: ^LLVMOrcOpaqueIndirectStubsManager;
LLVMOrcLazyCallThroughManagerRef :: ^LLVMOrcOpaqueLazyCallThroughManager;
LLVMOrcDumpObjectsRef :: ^LLVMOrcOpaqueDumpObjects;
LLVMOrcExecutionSessionLookupHandleResultFunction :: #type proc(Err : LLVMErrorRef, Result : LLVMOrcCSymbolMapPairs, NumPairs : _c.size_t, Ctx : rawptr);
LLVMMemoryManagerCreateContextCallback :: #type proc(CtxCtx : rawptr) -> rawptr;
LLVMMemoryManagerNotifyTerminatingCallback :: #type proc(CtxCtx : rawptr);
LLVMRemarkStringRef :: ^LLVMRemarkOpaqueString;
LLVMRemarkDebugLocRef :: ^LLVMRemarkOpaqueDebugLoc;
LLVMRemarkArgRef :: ^LLVMRemarkOpaqueArg;
LLVMRemarkEntryRef :: ^LLVMRemarkOpaqueEntry;
LLVMRemarkParserRef :: ^LLVMRemarkOpaqueParser;
LLVMTargetDataRef :: ^LLVMOpaqueTargetData;
LLVMTargetLibraryInfoRef :: ^LLVMOpaqueTargetLibraryInfotData;
LLVMTargetMachineRef :: ^LLVMOpaqueTargetMachine;
LLVMTargetRef :: ^LLVMTarget;
LLVMBool :: _c.int;
LLVMMemoryBufferRef :: ^LLVMOpaqueMemoryBuffer;
LLVMContextRef :: ^LLVMOpaqueContext;
LLVMModuleRef :: ^LLVMOpaqueModule;
LLVMTypeRef :: ^LLVMOpaqueType;
LLVMValueRef :: ^LLVMOpaqueValue;
LLVMBasicBlockRef :: ^LLVMOpaqueBasicBlock;
LLVMMetadataRef :: ^LLVMOpaqueMetadata;
LLVMNamedMDNodeRef :: ^LLVMOpaqueNamedMDNode;
LLVMValueMetadataEntry :: LLVMOpaqueValueMetadataEntry;
LLVMBuilderRef :: ^LLVMOpaqueBuilder;
LLVMDIBuilderRef :: ^LLVMOpaqueDIBuilder;
LLVMModuleProviderRef :: ^LLVMOpaqueModuleProvider;
LLVMPassManagerRef :: ^LLVMOpaquePassManager;
LLVMUseRef :: ^LLVMOpaqueUse;
LLVMAttributeRef :: ^LLVMOpaqueAttributeRef;
LLVMDiagnosticInfoRef :: ^LLVMOpaqueDiagnosticInfo;
LLVMComdatRef :: ^LLVMComdat;
LLVMModuleFlagEntry :: LLVMOpaqueModuleFlagEntry;
LLVMJITEventListenerRef :: ^LLVMOpaqueJITEventListener;
LLVMBinaryRef :: ^LLVMOpaqueBinary;

LLVMVerifierFailureAction :: enum i32 {
    LLVMAbortProcessAction,
    LLVMPrintMessageAction,
    LLVMReturnStatusAction,
};

LLVMComdatSelectionKind :: enum i32 {
    LLVMAnyComdatSelectionKind,
    LLVMExactMatchComdatSelectionKind,
    LLVMLargestComdatSelectionKind,
    LLVMNoDeduplicateComdatSelectionKind,
    LLVMSameSizeComdatSelectionKind,
};

LLVMOpcode :: enum i32 {
    LLVMRet = 1,
    LLVMBr = 2,
    LLVMSwitch = 3,
    LLVMIndirectBr = 4,
    LLVMInvoke = 5,
    LLVMUnreachable = 7,
    LLVMCallBr = 67,
    LLVMFNeg = 66,
    LLVMAdd = 8,
    LLVMFAdd = 9,
    LLVMSub = 10,
    LLVMFSub = 11,
    LLVMMul = 12,
    LLVMFMul = 13,
    LLVMUDiv = 14,
    LLVMSDiv = 15,
    LLVMFDiv = 16,
    LLVMURem = 17,
    LLVMSRem = 18,
    LLVMFRem = 19,
    LLVMShl = 20,
    LLVMLShr = 21,
    LLVMAShr = 22,
    LLVMAnd = 23,
    LLVMOr = 24,
    LLVMXor = 25,
    LLVMAlloca = 26,
    LLVMLoad = 27,
    LLVMStore = 28,
    LLVMGetElementPtr = 29,
    LLVMTrunc = 30,
    LLVMZExt = 31,
    LLVMSExt = 32,
    LLVMFPToUI = 33,
    LLVMFPToSI = 34,
    LLVMUIToFP = 35,
    LLVMSIToFP = 36,
    LLVMFPTrunc = 37,
    LLVMFPExt = 38,
    LLVMPtrToInt = 39,
    LLVMIntToPtr = 40,
    LLVMBitCast = 41,
    LLVMAddrSpaceCast = 60,
    LLVMICmp = 42,
    LLVMFCmp = 43,
    LLVMPHI = 44,
    LLVMCall = 45,
    LLVMSelect = 46,
    LLVMUserOp1 = 47,
    LLVMUserOp2 = 48,
    LLVMVAArg = 49,
    LLVMExtractElement = 50,
    LLVMInsertElement = 51,
    LLVMShuffleVector = 52,
    LLVMExtractValue = 53,
    LLVMInsertValue = 54,
    LLVMFreeze = 68,
    LLVMFence = 55,
    LLVMAtomicCmpXchg = 56,
    LLVMAtomicRMW = 57,
    LLVMResume = 58,
    LLVMLandingPad = 59,
    LLVMCleanupRet = 61,
    LLVMCatchRet = 62,
    LLVMCatchPad = 63,
    LLVMCleanupPad = 64,
    LLVMCatchSwitch = 65,
};

LLVMTypeKind :: enum i32 {
    LLVMVoidTypeKind,
    LLVMHalfTypeKind,
    LLVMFloatTypeKind,
    LLVMDoubleTypeKind,
    LLVMX86_FP80TypeKind,
    LLVMFP128TypeKind,
    LLVMPPC_FP128TypeKind,
    LLVMLabelTypeKind,
    LLVMIntegerTypeKind,
    LLVMFunctionTypeKind,
    LLVMStructTypeKind,
    LLVMArrayTypeKind,
    LLVMPointerTypeKind,
    LLVMVectorTypeKind,
    LLVMMetadataTypeKind,
    LLVMX86_MMXTypeKind,
    LLVMTokenTypeKind,
    LLVMScalableVectorTypeKind,
    LLVMBFloatTypeKind,
    LLVMX86_AMXTypeKind,
    LLVMTargetExtTypeKind,
};

LLVMLinkage :: enum i32 {
    LLVMExternalLinkage,
    LLVMAvailableExternallyLinkage,
    LLVMLinkOnceAnyLinkage,
    LLVMLinkOnceODRLinkage,
    LLVMLinkOnceODRAutoHideLinkage,
    LLVMWeakAnyLinkage,
    LLVMWeakODRLinkage,
    LLVMAppendingLinkage,
    LLVMInternalLinkage,
    LLVMPrivateLinkage,
    LLVMDLLImportLinkage,
    LLVMDLLExportLinkage,
    LLVMExternalWeakLinkage,
    LLVMGhostLinkage,
    LLVMCommonLinkage,
    LLVMLinkerPrivateLinkage,
    LLVMLinkerPrivateWeakLinkage,
};

LLVMVisibility :: enum i32 {
    LLVMDefaultVisibility,
    LLVMHiddenVisibility,
    LLVMProtectedVisibility,
};

LLVMUnnamedAddr :: enum i32 {
    LLVMNoUnnamedAddr,
    LLVMLocalUnnamedAddr,
    LLVMGlobalUnnamedAddr,
};

LLVMDLLStorageClass :: enum i32 {
    LLVMDefaultStorageClass = 0,
    LLVMDLLImportStorageClass = 1,
    LLVMDLLExportStorageClass = 2,
};

LLVMCallConv :: enum i32 {
    LLVMCCallConv = 0,
    LLVMFastCallConv = 8,
    LLVMColdCallConv = 9,
    LLVMGHCCallConv = 10,
    LLVMHiPECallConv = 11,
    LLVMWebKitJSCallConv = 12,
    LLVMAnyRegCallConv = 13,
    LLVMPreserveMostCallConv = 14,
    LLVMPreserveAllCallConv = 15,
    LLVMSwiftCallConv = 16,
    LLVMCXXFASTTLSCallConv = 17,
    LLVMX86StdcallCallConv = 64,
    LLVMX86FastcallCallConv = 65,
    LLVMARMAPCSCallConv = 66,
    LLVMARMAAPCSCallConv = 67,
    LLVMARMAAPCSVFPCallConv = 68,
    LLVMMSP430INTRCallConv = 69,
    LLVMX86ThisCallCallConv = 70,
    LLVMPTXKernelCallConv = 71,
    LLVMPTXDeviceCallConv = 72,
    LLVMSPIRFUNCCallConv = 75,
    LLVMSPIRKERNELCallConv = 76,
    LLVMIntelOCLBICallConv = 77,
    LLVMX8664SysVCallConv = 78,
    LLVMWin64CallConv = 79,
    LLVMX86VectorCallCallConv = 80,
    LLVMHHVMCallConv = 81,
    LLVMHHVMCCallConv = 82,
    LLVMX86INTRCallConv = 83,
    LLVMAVRINTRCallConv = 84,
    LLVMAVRSIGNALCallConv = 85,
    LLVMAVRBUILTINCallConv = 86,
    LLVMAMDGPUVSCallConv = 87,
    LLVMAMDGPUGSCallConv = 88,
    LLVMAMDGPUPSCallConv = 89,
    LLVMAMDGPUCSCallConv = 90,
    LLVMAMDGPUKERNELCallConv = 91,
    LLVMX86RegCallCallConv = 92,
    LLVMAMDGPUHSCallConv = 93,
    LLVMMSP430BUILTINCallConv = 94,
    LLVMAMDGPULSCallConv = 95,
    LLVMAMDGPUESCallConv = 96,
};

LLVMValueKind :: enum i32 {
    LLVMArgumentValueKind,
    LLVMBasicBlockValueKind,
    LLVMMemoryUseValueKind,
    LLVMMemoryDefValueKind,
    LLVMMemoryPhiValueKind,
    LLVMFunctionValueKind,
    LLVMGlobalAliasValueKind,
    LLVMGlobalIFuncValueKind,
    LLVMGlobalVariableValueKind,
    LLVMBlockAddressValueKind,
    LLVMConstantExprValueKind,
    LLVMConstantArrayValueKind,
    LLVMConstantStructValueKind,
    LLVMConstantVectorValueKind,
    LLVMUndefValueValueKind,
    LLVMConstantAggregateZeroValueKind,
    LLVMConstantDataArrayValueKind,
    LLVMConstantDataVectorValueKind,
    LLVMConstantIntValueKind,
    LLVMConstantFPValueKind,
    LLVMConstantPointerNullValueKind,
    LLVMConstantTokenNoneValueKind,
    LLVMMetadataAsValueValueKind,
    LLVMInlineAsmValueKind,
    LLVMInstructionValueKind,
    LLVMPoisonValueValueKind,
    LLVMConstantTargetNoneValueKind,
};

LLVMIntPredicate :: enum i32 {
    LLVMIntEQ = 32,
    LLVMIntNE,
    LLVMIntUGT,
    LLVMIntUGE,
    LLVMIntULT,
    LLVMIntULE,
    LLVMIntSGT,
    LLVMIntSGE,
    LLVMIntSLT,
    LLVMIntSLE,
};

LLVMRealPredicate :: enum i32 {
    LLVMRealPredicateFalse,
    LLVMRealOEQ,
    LLVMRealOGT,
    LLVMRealOGE,
    LLVMRealOLT,
    LLVMRealOLE,
    LLVMRealONE,
    LLVMRealORD,
    LLVMRealUNO,
    LLVMRealUEQ,
    LLVMRealUGT,
    LLVMRealUGE,
    LLVMRealULT,
    LLVMRealULE,
    LLVMRealUNE,
    LLVMRealPredicateTrue,
};

LLVMLandingPadClauseTy :: enum i32 {
    LLVMLandingPadCatch,
    LLVMLandingPadFilter,
};

LLVMThreadLocalMode :: enum i32 {
    LLVMNotThreadLocal = 0,
    LLVMGeneralDynamicTLSModel,
    LLVMLocalDynamicTLSModel,
    LLVMInitialExecTLSModel,
    LLVMLocalExecTLSModel,
};

LLVMAtomicOrdering :: enum i32 {
    LLVMAtomicOrderingNotAtomic = 0,
    LLVMAtomicOrderingUnordered = 1,
    LLVMAtomicOrderingMonotonic = 2,
    LLVMAtomicOrderingAcquire = 4,
    LLVMAtomicOrderingRelease = 5,
    LLVMAtomicOrderingAcquireRelease = 6,
    LLVMAtomicOrderingSequentiallyConsistent = 7,
};

LLVMAtomicRMWBinOp :: enum i32 {
    LLVMAtomicRMWBinOpXchg,
    LLVMAtomicRMWBinOpAdd,
    LLVMAtomicRMWBinOpSub,
    LLVMAtomicRMWBinOpAnd,
    LLVMAtomicRMWBinOpNand,
    LLVMAtomicRMWBinOpOr,
    LLVMAtomicRMWBinOpXor,
    LLVMAtomicRMWBinOpMax,
    LLVMAtomicRMWBinOpMin,
    LLVMAtomicRMWBinOpUMax,
    LLVMAtomicRMWBinOpUMin,
    LLVMAtomicRMWBinOpFAdd,
    LLVMAtomicRMWBinOpFSub,
    LLVMAtomicRMWBinOpFMax,
    LLVMAtomicRMWBinOpFMin,
};

LLVMDiagnosticSeverity :: enum i32 {
    LLVMDSError,
    LLVMDSWarning,
    LLVMDSRemark,
    LLVMDSNote,
};

LLVMInlineAsmDialect :: enum i32 {
    LLVMInlineAsmDialectATT,
    LLVMInlineAsmDialectIntel,
};

LLVMModuleFlagBehavior :: enum i32 {
    LLVMModuleFlagBehaviorError,
    LLVMModuleFlagBehaviorWarning,
    LLVMModuleFlagBehaviorRequire,
    LLVMModuleFlagBehaviorOverride,
    LLVMModuleFlagBehaviorAppend,
    LLVMModuleFlagBehaviorAppendUnique,
};

AnonymousEnum19 :: enum i32 {
    LLVMAttributeReturnIndex = 0,
    LLVMAttributeFunctionIndex = -1,
};

LLVMDIFlags :: enum i32 {
    LLVMDIFlagZero = 0,
    LLVMDIFlagPrivate = 1,
    LLVMDIFlagProtected = 2,
    LLVMDIFlagPublic = 3,
    LLVMDIFlagFwdDecl = 4,
    LLVMDIFlagAppleBlock = 8,
    LLVMDIFlagReservedBit4 = 16,
    LLVMDIFlagVirtual = 32,
    LLVMDIFlagArtificial = 64,
    LLVMDIFlagExplicit = 128,
    LLVMDIFlagPrototyped = 256,
    LLVMDIFlagObjcClassComplete = 512,
    LLVMDIFlagObjectPointer = 1024,
    LLVMDIFlagVector = 2048,
    LLVMDIFlagStaticMember = 4096,
    LLVMDIFlagLValueReference = 8192,
    LLVMDIFlagRValueReference = 16384,
    LLVMDIFlagReserved = 32768,
    LLVMDIFlagSingleInheritance = 65536,
    LLVMDIFlagMultipleInheritance = 131072,
    LLVMDIFlagVirtualInheritance = 196608,
    LLVMDIFlagIntroducedVirtual = 262144,
    LLVMDIFlagBitField = 524288,
    LLVMDIFlagNoReturn = 1048576,
    LLVMDIFlagTypePassByValue = 4194304,
    LLVMDIFlagTypePassByReference = 8388608,
    LLVMDIFlagEnumClass = 16777216,
    LLVMDIFlagFixedEnum = 16777216,
    LLVMDIFlagThunk = 33554432,
    LLVMDIFlagNonTrivial = 67108864,
    LLVMDIFlagBigEndian = 134217728,
    LLVMDIFlagLittleEndian = 268435456,
    LLVMDIFlagIndirectVirtualBase = 4,
    LLVMDIFlagAccessibility = 1,
    LLVMDIFlagPtrToMemberRep = 65536,
};

LLVMDWARFSourceLanguage :: enum i32 {
    LLVMDWARFSourceLanguageC89,
    LLVMDWARFSourceLanguageC,
    LLVMDWARFSourceLanguageAda83,
    LLVMDWARFSourceLanguageC_plus_plus,
    LLVMDWARFSourceLanguageCobol74,
    LLVMDWARFSourceLanguageCobol85,
    LLVMDWARFSourceLanguageFortran77,
    LLVMDWARFSourceLanguageFortran90,
    LLVMDWARFSourceLanguagePascal83,
    LLVMDWARFSourceLanguageModula2,
    LLVMDWARFSourceLanguageJava,
    LLVMDWARFSourceLanguageC99,
    LLVMDWARFSourceLanguageAda95,
    LLVMDWARFSourceLanguageFortran95,
    LLVMDWARFSourceLanguagePLI,
    LLVMDWARFSourceLanguageObjC,
    LLVMDWARFSourceLanguageObjC_plus_plus,
    LLVMDWARFSourceLanguageUPC,
    LLVMDWARFSourceLanguageD,
    LLVMDWARFSourceLanguagePython,
    LLVMDWARFSourceLanguageOpenCL,
    LLVMDWARFSourceLanguageGo,
    LLVMDWARFSourceLanguageModula3,
    LLVMDWARFSourceLanguageHaskell,
    LLVMDWARFSourceLanguageC_plus_plus_03,
    LLVMDWARFSourceLanguageC_plus_plus_11,
    LLVMDWARFSourceLanguageOCaml,
    LLVMDWARFSourceLanguageRust,
    LLVMDWARFSourceLanguageC11,
    LLVMDWARFSourceLanguageSwift,
    LLVMDWARFSourceLanguageJulia,
    LLVMDWARFSourceLanguageDylan,
    LLVMDWARFSourceLanguageC_plus_plus_14,
    LLVMDWARFSourceLanguageFortran03,
    LLVMDWARFSourceLanguageFortran08,
    LLVMDWARFSourceLanguageRenderScript,
    LLVMDWARFSourceLanguageBLISS,
    LLVMDWARFSourceLanguageKotlin,
    LLVMDWARFSourceLanguageZig,
    LLVMDWARFSourceLanguageCrystal,
    LLVMDWARFSourceLanguageC_plus_plus_17,
    LLVMDWARFSourceLanguageC_plus_plus_20,
    LLVMDWARFSourceLanguageC17,
    LLVMDWARFSourceLanguageFortran18,
    LLVMDWARFSourceLanguageAda2005,
    LLVMDWARFSourceLanguageAda2012,
    LLVMDWARFSourceLanguageMojo,
    LLVMDWARFSourceLanguageMips_Assembler,
    LLVMDWARFSourceLanguageGOOGLE_RenderScript,
    LLVMDWARFSourceLanguageBORLAND_Delphi,
};

LLVMDWARFEmissionKind :: enum i32 {
    LLVMDWARFEmissionNone = 0,
    LLVMDWARFEmissionFull,
    LLVMDWARFEmissionLineTablesOnly,
};

AnonymousEnum23 :: enum i32 {
    LLVMMDStringMetadataKind,
    LLVMConstantAsMetadataMetadataKind,
    LLVMLocalAsMetadataMetadataKind,
    LLVMDistinctMDOperandPlaceholderMetadataKind,
    LLVMMDTupleMetadataKind,
    LLVMDILocationMetadataKind,
    LLVMDIExpressionMetadataKind,
    LLVMDIGlobalVariableExpressionMetadataKind,
    LLVMGenericDINodeMetadataKind,
    LLVMDISubrangeMetadataKind,
    LLVMDIEnumeratorMetadataKind,
    LLVMDIBasicTypeMetadataKind,
    LLVMDIDerivedTypeMetadataKind,
    LLVMDICompositeTypeMetadataKind,
    LLVMDISubroutineTypeMetadataKind,
    LLVMDIFileMetadataKind,
    LLVMDICompileUnitMetadataKind,
    LLVMDISubprogramMetadataKind,
    LLVMDILexicalBlockMetadataKind,
    LLVMDILexicalBlockFileMetadataKind,
    LLVMDINamespaceMetadataKind,
    LLVMDIModuleMetadataKind,
    LLVMDITemplateTypeParameterMetadataKind,
    LLVMDITemplateValueParameterMetadataKind,
    LLVMDIGlobalVariableMetadataKind,
    LLVMDILocalVariableMetadataKind,
    LLVMDILabelMetadataKind,
    LLVMDIObjCPropertyMetadataKind,
    LLVMDIImportedEntityMetadataKind,
    LLVMDIMacroMetadataKind,
    LLVMDIMacroFileMetadataKind,
    LLVMDICommonBlockMetadataKind,
    LLVMDIStringTypeMetadataKind,
    LLVMDIGenericSubrangeMetadataKind,
    LLVMDIArgListMetadataKind,
    LLVMDIAssignIDMetadataKind,
};

LLVMDWARFMacinfoRecordType :: enum i32 {
    LLVMDWARFMacinfoRecordTypeDefine = 1,
    LLVMDWARFMacinfoRecordTypeMacro = 2,
    LLVMDWARFMacinfoRecordTypeStartFile = 3,
    LLVMDWARFMacinfoRecordTypeEndFile = 4,
    LLVMDWARFMacinfoRecordTypeVendorExt = 255,
};

LLVMLinkerMode :: enum i32 {
    LLVMLinkerDestroySource = 0,
    LLVMLinkerPreserveSource_Removed = 1,
};

lto_symbol_attributes :: enum i32 {
    LTO_SYMBOL_ALIGNMENT_MASK = 31,
    LTO_SYMBOL_PERMISSIONS_MASK = 224,
    LTO_SYMBOL_PERMISSIONS_CODE = 160,
    LTO_SYMBOL_PERMISSIONS_DATA = 192,
    LTO_SYMBOL_PERMISSIONS_RODATA = 128,
    LTO_SYMBOL_DEFINITION_MASK = 1792,
    LTO_SYMBOL_DEFINITION_REGULAR = 256,
    LTO_SYMBOL_DEFINITION_TENTATIVE = 512,
    LTO_SYMBOL_DEFINITION_WEAK = 768,
    LTO_SYMBOL_DEFINITION_UNDEFINED = 1024,
    LTO_SYMBOL_DEFINITION_WEAKUNDEF = 1280,
    LTO_SYMBOL_SCOPE_MASK = 14336,
    LTO_SYMBOL_SCOPE_INTERNAL = 2048,
    LTO_SYMBOL_SCOPE_HIDDEN = 4096,
    LTO_SYMBOL_SCOPE_PROTECTED = 8192,
    LTO_SYMBOL_SCOPE_DEFAULT = 6144,
    LTO_SYMBOL_SCOPE_DEFAULT_CAN_BE_HIDDEN = 10240,
    LTO_SYMBOL_COMDAT = 16384,
    LTO_SYMBOL_ALIAS = 32768,
};

lto_debug_model :: enum i32 {
    LTO_DEBUG_MODEL_NONE = 0,
    LTO_DEBUG_MODEL_DWARF = 1,
};

lto_codegen_model :: enum i32 {
    LTO_CODEGEN_PIC_MODEL_STATIC = 0,
    LTO_CODEGEN_PIC_MODEL_DYNAMIC = 1,
    LTO_CODEGEN_PIC_MODEL_DYNAMIC_NO_PIC = 2,
    LTO_CODEGEN_PIC_MODEL_DEFAULT = 3,
};

lto_codegen_diagnostic_severity_t :: enum i32 {
    LTO_DS_ERROR = 0,
    LTO_DS_WARNING = 1,
    LTO_DS_REMARK = 3,
    LTO_DS_NOTE = 2,
};

LLVMBinaryType :: enum i32 {
    LLVMBinaryTypeArchive,
    LLVMBinaryTypeMachOUniversalBinary,
    LLVMBinaryTypeCOFFImportFile,
    LLVMBinaryTypeIR,
    LLVMBinaryTypeWinRes,
    LLVMBinaryTypeCOFF,
    LLVMBinaryTypeELF32L,
    LLVMBinaryTypeELF32B,
    LLVMBinaryTypeELF64L,
    LLVMBinaryTypeELF64B,
    LLVMBinaryTypeMachO32L,
    LLVMBinaryTypeMachO32B,
    LLVMBinaryTypeMachO64L,
    LLVMBinaryTypeMachO64B,
    LLVMBinaryTypeWasm,
    LLVMBinaryTypeOffload,
};

LLVMJITSymbolGenericFlags :: enum i32 {
    LLVMJITSymbolGenericFlagsNone = 0,
    LLVMJITSymbolGenericFlagsExported = 1,
    LLVMJITSymbolGenericFlagsWeak = 2,
    LLVMJITSymbolGenericFlagsCallable = 4,
    LLVMJITSymbolGenericFlagsMaterializationSideEffectsOnly = 8,
};

LLVMOrcLookupKind :: enum i32 {
    LLVMOrcLookupKindStatic,
    LLVMOrcLookupKindDLSym,
};

LLVMOrcJITDylibLookupFlags :: enum i32 {
    LLVMOrcJITDylibLookupFlagsMatchExportedSymbolsOnly,
    LLVMOrcJITDylibLookupFlagsMatchAllSymbols,
};

LLVMOrcSymbolLookupFlags :: enum i32 {
    LLVMOrcSymbolLookupFlagsRequiredSymbol,
    LLVMOrcSymbolLookupFlagsWeaklyReferencedSymbol,
};

LLVMRemarkType :: enum i32 {
    LLVMRemarkTypeUnknown,
    LLVMRemarkTypePassed,
    LLVMRemarkTypeMissed,
    LLVMRemarkTypeAnalysis,
    LLVMRemarkTypeAnalysisFPCommute,
    LLVMRemarkTypeAnalysisAliasing,
    LLVMRemarkTypeFailure,
};

LLVMByteOrdering :: enum i32 {
    LLVMBigEndian,
    LLVMLittleEndian,
};

LLVMCodeGenOptLevel :: enum i32 {
    LLVMCodeGenLevelNone,
    LLVMCodeGenLevelLess,
    LLVMCodeGenLevelDefault,
    LLVMCodeGenLevelAggressive,
};

LLVMRelocMode :: enum i32 {
    LLVMRelocDefault,
    LLVMRelocStatic,
    LLVMRelocPIC,
    LLVMRelocDynamicNoPic,
    LLVMRelocROPI,
    LLVMRelocRWPI,
    LLVMRelocROPI_RWPI,
};

LLVMCodeModel :: enum i32 {
    LLVMCodeModelDefault,
    LLVMCodeModelJITDefault,
    LLVMCodeModelTiny,
    LLVMCodeModelSmall,
    LLVMCodeModelKernel,
    LLVMCodeModelMedium,
    LLVMCodeModelLarge,
};

LLVMCodeGenFileType :: enum i32 {
    LLVMAssemblyFile,
    LLVMObjectFile,
};

llvm_blake3_chunk_state :: struct {
    cv : [8]u32,
    chunk_counter : u64,
    buf : [64]u8,
    buf_len : u8,
    blocks_compressed : u8,
    flags : u8,
};

llvm_blake3_hasher :: struct {
    key : [8]u32,
    chunk : llvm_blake3_chunk_state,
    cv_stack_len : u8,
    cv_stack : [1760]u8,
};

LLVMOpInfoSymbol1 :: struct {
    Present : u64,
    Name : cstring,
    Value : u64,
};

LLVMOpInfo1 :: struct {
    AddSymbol : LLVMOpInfoSymbol1,
    SubtractSymbol : LLVMOpInfoSymbol1,
    Value : u64,
    VariantKind : u64,
};

LLVMOpaqueError :: struct {};

LLVMOpaqueGenericValue :: struct {};

LLVMOpaqueExecutionEngine :: struct {};

LLVMOpaqueMCJITMemoryManager :: struct {};

LLVMMCJITCompilerOptions :: struct {
    OptLevel : _c.uint,
    CodeModel : LLVMCodeModel,
    NoFramePointerElim : LLVMBool,
    EnableFastISel : LLVMBool,
    MCJMM : LLVMMCJITMemoryManagerRef,
};

LLVMOrcOpaqueLLJITBuilder :: struct {};

LLVMOrcOpaqueLLJIT :: struct {};

LLVMOpaqueLTOModule :: struct {};

LLVMOpaqueLTOCodeGenerator :: struct {};

LLVMOpaqueThinLTOCodeGenerator :: struct {};

LLVMOpaqueLTOInput :: struct {};

LTOObjectBuffer :: struct {
    Buffer : cstring,
    Size : _c.size_t,
};

LLVMOpaqueSectionIterator :: struct {};

LLVMOpaqueSymbolIterator :: struct {};

LLVMOpaqueRelocationIterator :: struct {};

LLVMOpaqueObjectFile :: struct {};

LLVMJITSymbolFlags :: struct {
    GenericFlags : u8,
    TargetFlags : u8,
};

LLVMJITEvaluatedSymbol :: struct {
    Address : u64,
    Flags : LLVMJITSymbolFlags,
};

LLVMOrcOpaqueExecutionSession :: struct {};

LLVMOrcOpaqueSymbolStringPool :: struct {};

LLVMOrcOpaqueSymbolStringPoolEntry :: struct {};

LLVMOrcCSymbolFlagsMapPair :: struct {
    Name : LLVMOrcSymbolStringPoolEntryRef,
    Flags : LLVMJITSymbolFlags,
};

LLVMOrcCSymbolMapPair :: struct {
    Name : LLVMOrcSymbolStringPoolEntryRef,
    Sym : LLVMJITEvaluatedSymbol,
};

LLVMOrcCSymbolAliasMapEntry :: struct {
    Name : LLVMOrcSymbolStringPoolEntryRef,
    Flags : LLVMJITSymbolFlags,
};

LLVMOrcCSymbolAliasMapPair :: struct {
    Name : LLVMOrcSymbolStringPoolEntryRef,
    Entry : LLVMOrcCSymbolAliasMapEntry,
};

LLVMOrcOpaqueJITDylib :: struct {};

LLVMOrcCSymbolsList :: struct {
    Symbols : ^LLVMOrcSymbolStringPoolEntryRef,
    Length : _c.size_t,
};

LLVMOrcCDependenceMapPair :: struct {
    JD : LLVMOrcJITDylibRef,
    Names : LLVMOrcCSymbolsList,
};

LLVMOrcCJITDylibSearchOrderElement :: struct {
    JD : LLVMOrcJITDylibRef,
    JDLookupFlags : LLVMOrcJITDylibLookupFlags,
};

LLVMOrcCLookupSetElement :: struct {
    Name : LLVMOrcSymbolStringPoolEntryRef,
    LookupFlags : LLVMOrcSymbolLookupFlags,
};

LLVMOrcOpaqueMaterializationUnit :: struct {};

LLVMOrcOpaqueMaterializationResponsibility :: struct {};

LLVMOrcOpaqueResourceTracker :: struct {};

LLVMOrcOpaqueDefinitionGenerator :: struct {};

LLVMOrcOpaqueLookupState :: struct {};

LLVMOrcOpaqueThreadSafeContext :: struct {};

LLVMOrcOpaqueThreadSafeModule :: struct {};

LLVMOrcOpaqueJITTargetMachineBuilder :: struct {};

LLVMOrcOpaqueObjectLayer :: struct {};

LLVMOrcOpaqueObjectLinkingLayer :: struct {};

LLVMOrcOpaqueIRTransformLayer :: struct {};

LLVMOrcOpaqueObjectTransformLayer :: struct {};

LLVMOrcOpaqueIndirectStubsManager :: struct {};

LLVMOrcOpaqueLazyCallThroughManager :: struct {};

LLVMOrcOpaqueDumpObjects :: struct {};

LLVMRemarkOpaqueString :: struct {};

LLVMRemarkOpaqueDebugLoc :: struct {};

LLVMRemarkOpaqueArg :: struct {};

LLVMRemarkOpaqueEntry :: struct {};

LLVMRemarkOpaqueParser :: struct {};

LLVMOpaqueTargetData :: struct {};

LLVMOpaqueTargetLibraryInfotData :: struct {};

LLVMOpaqueTargetMachine :: struct {};

LLVMTarget :: struct {};

LLVMOpaqueMemoryBuffer :: struct {};

LLVMOpaqueContext :: struct {};

LLVMOpaqueModule :: struct {};

LLVMOpaqueType :: struct {};

LLVMOpaqueValue :: struct {};

LLVMOpaqueBasicBlock :: struct {};

LLVMOpaqueMetadata :: struct {};

LLVMOpaqueNamedMDNode :: struct {};

LLVMOpaqueValueMetadataEntry :: struct {};

LLVMOpaqueBuilder :: struct {};

LLVMOpaqueDIBuilder :: struct {};

LLVMOpaqueModuleProvider :: struct {};

LLVMOpaquePassManager :: struct {};

LLVMOpaqueUse :: struct {};

LLVMOpaqueAttributeRef :: struct {};

LLVMOpaqueDiagnosticInfo :: struct {};

LLVMComdat :: struct {};

LLVMOpaqueModuleFlagEntry :: struct {};

LLVMOpaqueJITEventListener :: struct {};

LLVMOpaqueBinary :: struct {};

@(default_calling_convention="c")
foreign LLVM_C {

    @(link_name="LLVMVerifyModule")
    LLVMVerifyModule :: proc(M : LLVMModuleRef, Action : LLVMVerifierFailureAction, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMVerifyFunction")
    LLVMVerifyFunction :: proc(Fn : LLVMValueRef, Action : LLVMVerifierFailureAction) -> LLVMBool ---;

    @(link_name="LLVMViewFunctionCFG")
    LLVMViewFunctionCFG :: proc(Fn : LLVMValueRef) ---;

    @(link_name="LLVMViewFunctionCFGOnly")
    LLVMViewFunctionCFGOnly :: proc(Fn : LLVMValueRef) ---;

    @(link_name="LLVMParseBitcode")
    LLVMParseBitcode :: proc(MemBuf : LLVMMemoryBufferRef, OutModule : ^LLVMModuleRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMParseBitcode2")
    LLVMParseBitcode2 :: proc(MemBuf : LLVMMemoryBufferRef, OutModule : ^LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMParseBitcodeInContext")
    LLVMParseBitcodeInContext :: proc(ContextRef : LLVMContextRef, MemBuf : LLVMMemoryBufferRef, OutModule : ^LLVMModuleRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMParseBitcodeInContext2")
    LLVMParseBitcodeInContext2 :: proc(ContextRef : LLVMContextRef, MemBuf : LLVMMemoryBufferRef, OutModule : ^LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMGetBitcodeModuleInContext")
    LLVMGetBitcodeModuleInContext :: proc(ContextRef : LLVMContextRef, MemBuf : LLVMMemoryBufferRef, OutM : ^LLVMModuleRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMGetBitcodeModuleInContext2")
    LLVMGetBitcodeModuleInContext2 :: proc(ContextRef : LLVMContextRef, MemBuf : LLVMMemoryBufferRef, OutM : ^LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMGetBitcodeModule")
    LLVMGetBitcodeModule :: proc(MemBuf : LLVMMemoryBufferRef, OutM : ^LLVMModuleRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMGetBitcodeModule2")
    LLVMGetBitcodeModule2 :: proc(MemBuf : LLVMMemoryBufferRef, OutM : ^LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMWriteBitcodeToFile")
    LLVMWriteBitcodeToFile :: proc(M : LLVMModuleRef, Path : cstring) -> _c.int ---;

    @(link_name="LLVMWriteBitcodeToFD")
    LLVMWriteBitcodeToFD :: proc(M : LLVMModuleRef, FD : _c.int, ShouldClose : _c.int, Unbuffered : _c.int) -> _c.int ---;

    @(link_name="LLVMWriteBitcodeToFileHandle")
    LLVMWriteBitcodeToFileHandle :: proc(M : LLVMModuleRef, Handle : _c.int) -> _c.int ---;

    @(link_name="LLVMWriteBitcodeToMemoryBuffer")
    LLVMWriteBitcodeToMemoryBuffer :: proc(M : LLVMModuleRef) -> LLVMMemoryBufferRef ---;

    @(link_name="llvm_blake3_version")
    llvm_blake3_version :: proc() -> cstring ---;

    @(link_name="llvm_blake3_hasher_init")
    llvm_blake3_hasher_init :: proc(self : ^llvm_blake3_hasher) ---;

    @(link_name="llvm_blake3_hasher_init_keyed")
    llvm_blake3_hasher_init_keyed :: proc(self : ^llvm_blake3_hasher, key : [32]u8) ---;

    @(link_name="llvm_blake3_hasher_init_derive_key")
    llvm_blake3_hasher_init_derive_key :: proc(self : ^llvm_blake3_hasher, _context : cstring) ---;

    @(link_name="llvm_blake3_hasher_init_derive_key_raw")
    llvm_blake3_hasher_init_derive_key_raw :: proc(self : ^llvm_blake3_hasher, _context : rawptr, context_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_update")
    llvm_blake3_hasher_update :: proc(self : ^llvm_blake3_hasher, input : rawptr, input_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_finalize")
    llvm_blake3_hasher_finalize :: proc(self : ^llvm_blake3_hasher, out : ^u8, out_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_finalize_seek")
    llvm_blake3_hasher_finalize_seek :: proc(self : ^llvm_blake3_hasher, seek : u64, out : ^u8, out_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_reset")
    llvm_blake3_hasher_reset :: proc(self : ^llvm_blake3_hasher) ---;

    @(link_name="LLVMGetOrInsertComdat")
    LLVMGetOrInsertComdat :: proc(M : LLVMModuleRef, Name : cstring) -> LLVMComdatRef ---;

    @(link_name="LLVMGetComdat")
    LLVMGetComdat :: proc(V : LLVMValueRef) -> LLVMComdatRef ---;

    @(link_name="LLVMSetComdat")
    LLVMSetComdat :: proc(V : LLVMValueRef, C : LLVMComdatRef) ---;

    @(link_name="LLVMGetComdatSelectionKind")
    LLVMGetComdatSelectionKind :: proc(C : LLVMComdatRef) -> LLVMComdatSelectionKind ---;

    @(link_name="LLVMSetComdatSelectionKind")
    LLVMSetComdatSelectionKind :: proc(C : LLVMComdatRef, Kind : LLVMComdatSelectionKind) ---;

    @(link_name="LLVMShutdown")
    LLVMShutdown :: proc() ---;

    @(link_name="LLVMGetVersion")
    LLVMGetVersion :: proc(Major : ^_c.uint, Minor : ^_c.uint, Patch : ^_c.uint) ---;

    @(link_name="LLVMCreateMessage")
    LLVMCreateMessage :: proc(Message : cstring) -> cstring ---;

    @(link_name="LLVMDisposeMessage")
    LLVMDisposeMessage :: proc(Message : cstring) ---;

    @(link_name="LLVMContextCreate")
    LLVMContextCreate :: proc() -> LLVMContextRef ---;

    @(link_name="LLVMGetGlobalContext")
    LLVMGetGlobalContext :: proc() -> LLVMContextRef ---;

    @(link_name="LLVMContextSetDiagnosticHandler")
    LLVMContextSetDiagnosticHandler :: proc(C : LLVMContextRef, Handler : LLVMDiagnosticHandler, DiagnosticContext : rawptr) ---;

    @(link_name="LLVMContextGetDiagnosticHandler")
    LLVMContextGetDiagnosticHandler :: proc(C : LLVMContextRef) -> LLVMDiagnosticHandler ---;

    @(link_name="LLVMContextGetDiagnosticContext")
    LLVMContextGetDiagnosticContext :: proc(C : LLVMContextRef) -> rawptr ---;

    @(link_name="LLVMContextSetYieldCallback")
    LLVMContextSetYieldCallback :: proc(C : LLVMContextRef, Callback : LLVMYieldCallback, OpaqueHandle : rawptr) ---;

    @(link_name="LLVMContextShouldDiscardValueNames")
    LLVMContextShouldDiscardValueNames :: proc(C : LLVMContextRef) -> LLVMBool ---;

    @(link_name="LLVMContextSetDiscardValueNames")
    LLVMContextSetDiscardValueNames :: proc(C : LLVMContextRef, Discard : LLVMBool) ---;

    @(link_name="LLVMContextDispose")
    LLVMContextDispose :: proc(C : LLVMContextRef) ---;

    @(link_name="LLVMGetDiagInfoDescription")
    LLVMGetDiagInfoDescription :: proc(DI : LLVMDiagnosticInfoRef) -> cstring ---;

    @(link_name="LLVMGetDiagInfoSeverity")
    LLVMGetDiagInfoSeverity :: proc(DI : LLVMDiagnosticInfoRef) -> LLVMDiagnosticSeverity ---;

    @(link_name="LLVMGetMDKindIDInContext")
    LLVMGetMDKindIDInContext :: proc(C : LLVMContextRef, Name : cstring, SLen : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetMDKindID")
    LLVMGetMDKindID :: proc(Name : cstring, SLen : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetEnumAttributeKindForName")
    LLVMGetEnumAttributeKindForName :: proc(Name : cstring, SLen : _c.size_t) -> _c.uint ---;

    @(link_name="LLVMGetLastEnumAttributeKind")
    LLVMGetLastEnumAttributeKind :: proc() -> _c.uint ---;

    @(link_name="LLVMCreateEnumAttribute")
    LLVMCreateEnumAttribute :: proc(C : LLVMContextRef, KindID : _c.uint, Val : u64) -> LLVMAttributeRef ---;

    @(link_name="LLVMGetEnumAttributeKind")
    LLVMGetEnumAttributeKind :: proc(A : LLVMAttributeRef) -> _c.uint ---;

    @(link_name="LLVMGetEnumAttributeValue")
    LLVMGetEnumAttributeValue :: proc(A : LLVMAttributeRef) -> u64 ---;

    @(link_name="LLVMCreateTypeAttribute")
    LLVMCreateTypeAttribute :: proc(C : LLVMContextRef, KindID : _c.uint, type_ref : LLVMTypeRef) -> LLVMAttributeRef ---;

    @(link_name="LLVMGetTypeAttributeValue")
    LLVMGetTypeAttributeValue :: proc(A : LLVMAttributeRef) -> LLVMTypeRef ---;

    @(link_name="LLVMCreateStringAttribute")
    LLVMCreateStringAttribute :: proc(C : LLVMContextRef, K : cstring, KLength : _c.uint, V : cstring, VLength : _c.uint) -> LLVMAttributeRef ---;

    @(link_name="LLVMGetStringAttributeKind")
    LLVMGetStringAttributeKind :: proc(A : LLVMAttributeRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetStringAttributeValue")
    LLVMGetStringAttributeValue :: proc(A : LLVMAttributeRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMIsEnumAttribute")
    LLVMIsEnumAttribute :: proc(A : LLVMAttributeRef) -> LLVMBool ---;

    @(link_name="LLVMIsStringAttribute")
    LLVMIsStringAttribute :: proc(A : LLVMAttributeRef) -> LLVMBool ---;

    @(link_name="LLVMIsTypeAttribute")
    LLVMIsTypeAttribute :: proc(A : LLVMAttributeRef) -> LLVMBool ---;

    @(link_name="LLVMGetTypeByName2")
    LLVMGetTypeByName2 :: proc(C : LLVMContextRef, Name : cstring) -> LLVMTypeRef ---;

    @(link_name="LLVMModuleCreateWithName")
    LLVMModuleCreateWithName :: proc(ModuleID : cstring) -> LLVMModuleRef ---;

    @(link_name="LLVMModuleCreateWithNameInContext")
    LLVMModuleCreateWithNameInContext :: proc(ModuleID : cstring, C : LLVMContextRef) -> LLVMModuleRef ---;

    @(link_name="LLVMCloneModule")
    LLVMCloneModule :: proc(M : LLVMModuleRef) -> LLVMModuleRef ---;

    @(link_name="LLVMDisposeModule")
    LLVMDisposeModule :: proc(M : LLVMModuleRef) ---;

    @(link_name="LLVMGetModuleIdentifier")
    LLVMGetModuleIdentifier :: proc(M : LLVMModuleRef, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetModuleIdentifier")
    LLVMSetModuleIdentifier :: proc(M : LLVMModuleRef, Ident : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMGetSourceFileName")
    LLVMGetSourceFileName :: proc(M : LLVMModuleRef, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetSourceFileName")
    LLVMSetSourceFileName :: proc(M : LLVMModuleRef, Name : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMGetDataLayoutStr")
    LLVMGetDataLayoutStr :: proc(M : LLVMModuleRef) -> cstring ---;

    @(link_name="LLVMGetDataLayout")
    LLVMGetDataLayout :: proc(M : LLVMModuleRef) -> cstring ---;

    @(link_name="LLVMSetDataLayout")
    LLVMSetDataLayout :: proc(M : LLVMModuleRef, DataLayoutStr : cstring) ---;

    @(link_name="LLVMGetTarget")
    LLVMGetTarget :: proc(M : LLVMModuleRef) -> cstring ---;

    @(link_name="LLVMSetTarget")
    LLVMSetTarget :: proc(M : LLVMModuleRef, Triple : cstring) ---;

    @(link_name="LLVMCopyModuleFlagsMetadata")
    LLVMCopyModuleFlagsMetadata :: proc(M : LLVMModuleRef, Len : ^_c.size_t) -> ^LLVMModuleFlagEntry ---;

    @(link_name="LLVMDisposeModuleFlagsMetadata")
    LLVMDisposeModuleFlagsMetadata :: proc(Entries : ^LLVMModuleFlagEntry) ---;

    @(link_name="LLVMModuleFlagEntriesGetFlagBehavior")
    LLVMModuleFlagEntriesGetFlagBehavior :: proc(Entries : ^LLVMModuleFlagEntry, Index : _c.uint) -> LLVMModuleFlagBehavior ---;

    @(link_name="LLVMModuleFlagEntriesGetKey")
    LLVMModuleFlagEntriesGetKey :: proc(Entries : ^LLVMModuleFlagEntry, Index : _c.uint, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMModuleFlagEntriesGetMetadata")
    LLVMModuleFlagEntriesGetMetadata :: proc(Entries : ^LLVMModuleFlagEntry, Index : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMGetModuleFlag")
    LLVMGetModuleFlag :: proc(M : LLVMModuleRef, Key : cstring, KeyLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMAddModuleFlag")
    LLVMAddModuleFlag :: proc(M : LLVMModuleRef, Behavior : LLVMModuleFlagBehavior, Key : cstring, KeyLen : _c.size_t, Val : LLVMMetadataRef) ---;

    @(link_name="LLVMDumpModule")
    LLVMDumpModule :: proc(M : LLVMModuleRef) ---;

    @(link_name="LLVMPrintModuleToFile")
    LLVMPrintModuleToFile :: proc(M : LLVMModuleRef, Filename : cstring, ErrorMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMPrintModuleToString")
    LLVMPrintModuleToString :: proc(M : LLVMModuleRef) -> cstring ---;

    @(link_name="LLVMGetModuleInlineAsm")
    LLVMGetModuleInlineAsm :: proc(M : LLVMModuleRef, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetModuleInlineAsm2")
    LLVMSetModuleInlineAsm2 :: proc(M : LLVMModuleRef, Asm : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMAppendModuleInlineAsm")
    LLVMAppendModuleInlineAsm :: proc(M : LLVMModuleRef, Asm : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMGetInlineAsm")
    LLVMGetInlineAsm :: proc(Ty : LLVMTypeRef, AsmString : cstring, AsmStringSize : _c.size_t, Constraints : cstring, ConstraintsSize : _c.size_t, HasSideEffects : LLVMBool, IsAlignStack : LLVMBool, Dialect : LLVMInlineAsmDialect, CanThrow : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMGetModuleContext")
    LLVMGetModuleContext :: proc(M : LLVMModuleRef) -> LLVMContextRef ---;

    @(link_name="LLVMGetTypeByName")
    LLVMGetTypeByName :: proc(M : LLVMModuleRef, Name : cstring) -> LLVMTypeRef ---;

    @(link_name="LLVMGetFirstNamedMetadata")
    LLVMGetFirstNamedMetadata :: proc(M : LLVMModuleRef) -> LLVMNamedMDNodeRef ---;

    @(link_name="LLVMGetLastNamedMetadata")
    LLVMGetLastNamedMetadata :: proc(M : LLVMModuleRef) -> LLVMNamedMDNodeRef ---;

    @(link_name="LLVMGetNextNamedMetadata")
    LLVMGetNextNamedMetadata :: proc(NamedMDNode : LLVMNamedMDNodeRef) -> LLVMNamedMDNodeRef ---;

    @(link_name="LLVMGetPreviousNamedMetadata")
    LLVMGetPreviousNamedMetadata :: proc(NamedMDNode : LLVMNamedMDNodeRef) -> LLVMNamedMDNodeRef ---;

    @(link_name="LLVMGetNamedMetadata")
    LLVMGetNamedMetadata :: proc(M : LLVMModuleRef, Name : cstring, NameLen : _c.size_t) -> LLVMNamedMDNodeRef ---;

    @(link_name="LLVMGetOrInsertNamedMetadata")
    LLVMGetOrInsertNamedMetadata :: proc(M : LLVMModuleRef, Name : cstring, NameLen : _c.size_t) -> LLVMNamedMDNodeRef ---;

    @(link_name="LLVMGetNamedMetadataName")
    LLVMGetNamedMetadataName :: proc(NamedMD : LLVMNamedMDNodeRef, NameLen : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMGetNamedMetadataNumOperands")
    LLVMGetNamedMetadataNumOperands :: proc(M : LLVMModuleRef, Name : cstring) -> _c.uint ---;

    @(link_name="LLVMGetNamedMetadataOperands")
    LLVMGetNamedMetadataOperands :: proc(M : LLVMModuleRef, Name : cstring, Dest : ^LLVMValueRef) ---;

    @(link_name="LLVMAddNamedMetadataOperand")
    LLVMAddNamedMetadataOperand :: proc(M : LLVMModuleRef, Name : cstring, Val : LLVMValueRef) ---;

    @(link_name="LLVMGetDebugLocDirectory")
    LLVMGetDebugLocDirectory :: proc(Val : LLVMValueRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetDebugLocFilename")
    LLVMGetDebugLocFilename :: proc(Val : LLVMValueRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetDebugLocLine")
    LLVMGetDebugLocLine :: proc(Val : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetDebugLocColumn")
    LLVMGetDebugLocColumn :: proc(Val : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMAddFunction")
    LLVMAddFunction :: proc(M : LLVMModuleRef, Name : cstring, FunctionTy : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNamedFunction")
    LLVMGetNamedFunction :: proc(M : LLVMModuleRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMGetFirstFunction")
    LLVMGetFirstFunction :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetLastFunction")
    LLVMGetLastFunction :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNextFunction")
    LLVMGetNextFunction :: proc(Fn : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPreviousFunction")
    LLVMGetPreviousFunction :: proc(Fn : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetModuleInlineAsm")
    LLVMSetModuleInlineAsm :: proc(M : LLVMModuleRef, Asm : cstring) ---;

    @(link_name="LLVMGetTypeKind")
    LLVMGetTypeKind :: proc(Ty : LLVMTypeRef) -> LLVMTypeKind ---;

    @(link_name="LLVMTypeIsSized")
    LLVMTypeIsSized :: proc(Ty : LLVMTypeRef) -> LLVMBool ---;

    @(link_name="LLVMGetTypeContext")
    LLVMGetTypeContext :: proc(Ty : LLVMTypeRef) -> LLVMContextRef ---;

    @(link_name="LLVMDumpType")
    LLVMDumpType :: proc(Val : LLVMTypeRef) ---;

    @(link_name="LLVMPrintTypeToString")
    LLVMPrintTypeToString :: proc(Val : LLVMTypeRef) -> cstring ---;

    @(link_name="LLVMInt1TypeInContext")
    LLVMInt1TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMInt8TypeInContext")
    LLVMInt8TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMInt16TypeInContext")
    LLVMInt16TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMInt32TypeInContext")
    LLVMInt32TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMInt64TypeInContext")
    LLVMInt64TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMInt128TypeInContext")
    LLVMInt128TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMIntTypeInContext")
    LLVMIntTypeInContext :: proc(C : LLVMContextRef, NumBits : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMInt1Type")
    LLVMInt1Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMInt8Type")
    LLVMInt8Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMInt16Type")
    LLVMInt16Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMInt32Type")
    LLVMInt32Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMInt64Type")
    LLVMInt64Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMInt128Type")
    LLVMInt128Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMIntType")
    LLVMIntType :: proc(NumBits : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMGetIntTypeWidth")
    LLVMGetIntTypeWidth :: proc(IntegerTy : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMHalfTypeInContext")
    LLVMHalfTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMBFloatTypeInContext")
    LLVMBFloatTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMFloatTypeInContext")
    LLVMFloatTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMDoubleTypeInContext")
    LLVMDoubleTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMX86FP80TypeInContext")
    LLVMX86FP80TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMFP128TypeInContext")
    LLVMFP128TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMPPCFP128TypeInContext")
    LLVMPPCFP128TypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMHalfType")
    LLVMHalfType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMBFloatType")
    LLVMBFloatType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMFloatType")
    LLVMFloatType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMDoubleType")
    LLVMDoubleType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMX86FP80Type")
    LLVMX86FP80Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMFP128Type")
    LLVMFP128Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMPPCFP128Type")
    LLVMPPCFP128Type :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMFunctionType")
    LLVMFunctionType :: proc(ReturnType : LLVMTypeRef, ParamTypes : ^LLVMTypeRef, ParamCount : _c.uint, IsVarArg : LLVMBool) -> LLVMTypeRef ---;

    @(link_name="LLVMIsFunctionVarArg")
    LLVMIsFunctionVarArg :: proc(FunctionTy : LLVMTypeRef) -> LLVMBool ---;

    @(link_name="LLVMGetReturnType")
    LLVMGetReturnType :: proc(FunctionTy : LLVMTypeRef) -> LLVMTypeRef ---;

    @(link_name="LLVMCountParamTypes")
    LLVMCountParamTypes :: proc(FunctionTy : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMGetParamTypes")
    LLVMGetParamTypes :: proc(FunctionTy : LLVMTypeRef, Dest : ^LLVMTypeRef) ---;

    @(link_name="LLVMStructTypeInContext")
    LLVMStructTypeInContext :: proc(C : LLVMContextRef, ElementTypes : ^LLVMTypeRef, ElementCount : _c.uint, Packed : LLVMBool) -> LLVMTypeRef ---;

    @(link_name="LLVMStructType")
    LLVMStructType :: proc(ElementTypes : ^LLVMTypeRef, ElementCount : _c.uint, Packed : LLVMBool) -> LLVMTypeRef ---;

    @(link_name="LLVMStructCreateNamed")
    LLVMStructCreateNamed :: proc(C : LLVMContextRef, Name : cstring) -> LLVMTypeRef ---;

    @(link_name="LLVMGetStructName")
    LLVMGetStructName :: proc(Ty : LLVMTypeRef) -> cstring ---;

    @(link_name="LLVMStructSetBody")
    LLVMStructSetBody :: proc(StructTy : LLVMTypeRef, ElementTypes : ^LLVMTypeRef, ElementCount : _c.uint, Packed : LLVMBool) ---;

    @(link_name="LLVMCountStructElementTypes")
    LLVMCountStructElementTypes :: proc(StructTy : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMGetStructElementTypes")
    LLVMGetStructElementTypes :: proc(StructTy : LLVMTypeRef, Dest : ^LLVMTypeRef) ---;

    @(link_name="LLVMStructGetTypeAtIndex")
    LLVMStructGetTypeAtIndex :: proc(StructTy : LLVMTypeRef, i : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMIsPackedStruct")
    LLVMIsPackedStruct :: proc(StructTy : LLVMTypeRef) -> LLVMBool ---;

    @(link_name="LLVMIsOpaqueStruct")
    LLVMIsOpaqueStruct :: proc(StructTy : LLVMTypeRef) -> LLVMBool ---;

    @(link_name="LLVMIsLiteralStruct")
    LLVMIsLiteralStruct :: proc(StructTy : LLVMTypeRef) -> LLVMBool ---;

    @(link_name="LLVMGetElementType")
    LLVMGetElementType :: proc(Ty : LLVMTypeRef) -> LLVMTypeRef ---;

    @(link_name="LLVMGetSubtypes")
    LLVMGetSubtypes :: proc(Tp : LLVMTypeRef, Arr : ^LLVMTypeRef) ---;

    @(link_name="LLVMGetNumContainedTypes")
    LLVMGetNumContainedTypes :: proc(Tp : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMArrayType")
    LLVMArrayType :: proc(ElementType : LLVMTypeRef, ElementCount : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMArrayType2")
    LLVMArrayType2 :: proc(ElementType : LLVMTypeRef, ElementCount : u64) -> LLVMTypeRef ---;

    @(link_name="LLVMGetArrayLength")
    LLVMGetArrayLength :: proc(ArrayTy : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMGetArrayLength2")
    LLVMGetArrayLength2 :: proc(ArrayTy : LLVMTypeRef) -> u64 ---;

    @(link_name="LLVMPointerType")
    LLVMPointerType :: proc(ElementType : LLVMTypeRef, AddressSpace : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMPointerTypeIsOpaque")
    LLVMPointerTypeIsOpaque :: proc(Ty : LLVMTypeRef) -> LLVMBool ---;

    @(link_name="LLVMPointerTypeInContext")
    LLVMPointerTypeInContext :: proc(C : LLVMContextRef, AddressSpace : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMGetPointerAddressSpace")
    LLVMGetPointerAddressSpace :: proc(PointerTy : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMVectorType")
    LLVMVectorType :: proc(ElementType : LLVMTypeRef, ElementCount : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMScalableVectorType")
    LLVMScalableVectorType :: proc(ElementType : LLVMTypeRef, ElementCount : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMGetVectorSize")
    LLVMGetVectorSize :: proc(VectorTy : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMVoidTypeInContext")
    LLVMVoidTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMLabelTypeInContext")
    LLVMLabelTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMX86MMXTypeInContext")
    LLVMX86MMXTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMX86AMXTypeInContext")
    LLVMX86AMXTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMTokenTypeInContext")
    LLVMTokenTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMMetadataTypeInContext")
    LLVMMetadataTypeInContext :: proc(C : LLVMContextRef) -> LLVMTypeRef ---;

    @(link_name="LLVMVoidType")
    LLVMVoidType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMLabelType")
    LLVMLabelType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMX86MMXType")
    LLVMX86MMXType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMX86AMXType")
    LLVMX86AMXType :: proc() -> LLVMTypeRef ---;

    @(link_name="LLVMTargetExtTypeInContext")
    LLVMTargetExtTypeInContext :: proc(C : LLVMContextRef, Name : cstring, TypeParams : ^LLVMTypeRef, TypeParamCount : _c.uint, IntParams : ^_c.uint, IntParamCount : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMTypeOf")
    LLVMTypeOf :: proc(Val : LLVMValueRef) -> LLVMTypeRef ---;

    @(link_name="LLVMGetValueKind")
    LLVMGetValueKind :: proc(Val : LLVMValueRef) -> LLVMValueKind ---;

    @(link_name="LLVMGetValueName2")
    LLVMGetValueName2 :: proc(Val : LLVMValueRef, Length : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetValueName2")
    LLVMSetValueName2 :: proc(Val : LLVMValueRef, Name : cstring, NameLen : _c.size_t) ---;

    @(link_name="LLVMDumpValue")
    LLVMDumpValue :: proc(Val : LLVMValueRef) ---;

    @(link_name="LLVMPrintValueToString")
    LLVMPrintValueToString :: proc(Val : LLVMValueRef) -> cstring ---;

    @(link_name="LLVMReplaceAllUsesWith")
    LLVMReplaceAllUsesWith :: proc(OldVal : LLVMValueRef, NewVal : LLVMValueRef) ---;

    @(link_name="LLVMIsConstant")
    LLVMIsConstant :: proc(Val : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMIsUndef")
    LLVMIsUndef :: proc(Val : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMIsPoison")
    LLVMIsPoison :: proc(Val : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMIsAMDNode")
    LLVMIsAMDNode :: proc(Val : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMIsAValueAsMetadata")
    LLVMIsAValueAsMetadata :: proc(Val : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMIsAMDString")
    LLVMIsAMDString :: proc(Val : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetValueName")
    LLVMGetValueName :: proc(Val : LLVMValueRef) -> cstring ---;

    @(link_name="LLVMSetValueName")
    LLVMSetValueName :: proc(Val : LLVMValueRef, Name : cstring) ---;

    @(link_name="LLVMGetFirstUse")
    LLVMGetFirstUse :: proc(Val : LLVMValueRef) -> LLVMUseRef ---;

    @(link_name="LLVMGetNextUse")
    LLVMGetNextUse :: proc(U : LLVMUseRef) -> LLVMUseRef ---;

    @(link_name="LLVMGetUser")
    LLVMGetUser :: proc(U : LLVMUseRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetUsedValue")
    LLVMGetUsedValue :: proc(U : LLVMUseRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetOperand")
    LLVMGetOperand :: proc(Val : LLVMValueRef, Index : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMGetOperandUse")
    LLVMGetOperandUse :: proc(Val : LLVMValueRef, Index : _c.uint) -> LLVMUseRef ---;

    @(link_name="LLVMSetOperand")
    LLVMSetOperand :: proc(User : LLVMValueRef, Index : _c.uint, Val : LLVMValueRef) ---;

    @(link_name="LLVMGetNumOperands")
    LLVMGetNumOperands :: proc(Val : LLVMValueRef) -> _c.int ---;

    @(link_name="LLVMConstNull")
    LLVMConstNull :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstAllOnes")
    LLVMConstAllOnes :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetUndef")
    LLVMGetUndef :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPoison")
    LLVMGetPoison :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMIsNull")
    LLVMIsNull :: proc(Val : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMConstPointerNull")
    LLVMConstPointerNull :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstInt")
    LLVMConstInt :: proc(IntTy : LLVMTypeRef, N : _c.ulonglong, SignExtend : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMConstIntOfArbitraryPrecision")
    LLVMConstIntOfArbitraryPrecision :: proc(IntTy : LLVMTypeRef, NumWords : _c.uint, Words : ^u64) -> LLVMValueRef ---;

    @(link_name="LLVMConstIntOfString")
    LLVMConstIntOfString :: proc(IntTy : LLVMTypeRef, Text : cstring, Radix : u8) -> LLVMValueRef ---;

    @(link_name="LLVMConstIntOfStringAndSize")
    LLVMConstIntOfStringAndSize :: proc(IntTy : LLVMTypeRef, Text : cstring, SLen : _c.uint, Radix : u8) -> LLVMValueRef ---;

    @(link_name="LLVMConstReal")
    LLVMConstReal :: proc(RealTy : LLVMTypeRef, N : _c.double) -> LLVMValueRef ---;

    @(link_name="LLVMConstRealOfString")
    LLVMConstRealOfString :: proc(RealTy : LLVMTypeRef, Text : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMConstRealOfStringAndSize")
    LLVMConstRealOfStringAndSize :: proc(RealTy : LLVMTypeRef, Text : cstring, SLen : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMConstIntGetZExtValue")
    LLVMConstIntGetZExtValue :: proc(ConstantVal : LLVMValueRef) -> _c.ulonglong ---;

    @(link_name="LLVMConstIntGetSExtValue")
    LLVMConstIntGetSExtValue :: proc(ConstantVal : LLVMValueRef) -> _c.longlong ---;

    @(link_name="LLVMConstRealGetDouble")
    LLVMConstRealGetDouble :: proc(ConstantVal : LLVMValueRef, losesInfo : ^LLVMBool) -> _c.double ---;

    @(link_name="LLVMConstStringInContext")
    LLVMConstStringInContext :: proc(C : LLVMContextRef, Str : cstring, Length : _c.uint, DontNullTerminate : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMConstString")
    LLVMConstString :: proc(Str : cstring, Length : _c.uint, DontNullTerminate : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMIsConstantString")
    LLVMIsConstantString :: proc(c : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMGetAsString")
    LLVMGetAsString :: proc(c : LLVMValueRef, Length : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMConstStructInContext")
    LLVMConstStructInContext :: proc(C : LLVMContextRef, ConstantVals : ^LLVMValueRef, Count : _c.uint, Packed : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMConstStruct")
    LLVMConstStruct :: proc(ConstantVals : ^LLVMValueRef, Count : _c.uint, Packed : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMConstArray")
    LLVMConstArray :: proc(ElementTy : LLVMTypeRef, ConstantVals : ^LLVMValueRef, Length : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMConstArray2")
    LLVMConstArray2 :: proc(ElementTy : LLVMTypeRef, ConstantVals : ^LLVMValueRef, Length : u64) -> LLVMValueRef ---;

    @(link_name="LLVMConstNamedStruct")
    LLVMConstNamedStruct :: proc(StructTy : LLVMTypeRef, ConstantVals : ^LLVMValueRef, Count : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMGetAggregateElement")
    LLVMGetAggregateElement :: proc(C : LLVMValueRef, Idx : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMConstVector")
    LLVMConstVector :: proc(ScalarConstantVals : ^LLVMValueRef, Size : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMGetConstOpcode")
    LLVMGetConstOpcode :: proc(ConstantVal : LLVMValueRef) -> LLVMOpcode ---;

    @(link_name="LLVMAlignOf")
    LLVMAlignOf :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMSizeOf")
    LLVMSizeOf :: proc(Ty : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNeg")
    LLVMConstNeg :: proc(ConstantVal : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNSWNeg")
    LLVMConstNSWNeg :: proc(ConstantVal : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNUWNeg")
    LLVMConstNUWNeg :: proc(ConstantVal : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNot")
    LLVMConstNot :: proc(ConstantVal : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstAdd")
    LLVMConstAdd :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNSWAdd")
    LLVMConstNSWAdd :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNUWAdd")
    LLVMConstNUWAdd :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstSub")
    LLVMConstSub :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNSWSub")
    LLVMConstNSWSub :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNUWSub")
    LLVMConstNUWSub :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstMul")
    LLVMConstMul :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNSWMul")
    LLVMConstNSWMul :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstNUWMul")
    LLVMConstNUWMul :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstAnd")
    LLVMConstAnd :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstOr")
    LLVMConstOr :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstXor")
    LLVMConstXor :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstICmp")
    LLVMConstICmp :: proc(Predicate : LLVMIntPredicate, LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstFCmp")
    LLVMConstFCmp :: proc(Predicate : LLVMRealPredicate, LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstShl")
    LLVMConstShl :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstLShr")
    LLVMConstLShr :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstAShr")
    LLVMConstAShr :: proc(LHSConstant : LLVMValueRef, RHSConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstGEP2")
    LLVMConstGEP2 :: proc(Ty : LLVMTypeRef, ConstantVal : LLVMValueRef, ConstantIndices : ^LLVMValueRef, NumIndices : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMConstInBoundsGEP2")
    LLVMConstInBoundsGEP2 :: proc(Ty : LLVMTypeRef, ConstantVal : LLVMValueRef, ConstantIndices : ^LLVMValueRef, NumIndices : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMConstTrunc")
    LLVMConstTrunc :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstSExt")
    LLVMConstSExt :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstZExt")
    LLVMConstZExt :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstFPTrunc")
    LLVMConstFPTrunc :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstFPExt")
    LLVMConstFPExt :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstUIToFP")
    LLVMConstUIToFP :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstSIToFP")
    LLVMConstSIToFP :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstFPToUI")
    LLVMConstFPToUI :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstFPToSI")
    LLVMConstFPToSI :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstPtrToInt")
    LLVMConstPtrToInt :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstIntToPtr")
    LLVMConstIntToPtr :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstBitCast")
    LLVMConstBitCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstAddrSpaceCast")
    LLVMConstAddrSpaceCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstZExtOrBitCast")
    LLVMConstZExtOrBitCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstSExtOrBitCast")
    LLVMConstSExtOrBitCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstTruncOrBitCast")
    LLVMConstTruncOrBitCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstPointerCast")
    LLVMConstPointerCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstIntCast")
    LLVMConstIntCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef, isSigned : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMConstFPCast")
    LLVMConstFPCast :: proc(ConstantVal : LLVMValueRef, ToType : LLVMTypeRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstExtractElement")
    LLVMConstExtractElement :: proc(VectorConstant : LLVMValueRef, IndexConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstInsertElement")
    LLVMConstInsertElement :: proc(VectorConstant : LLVMValueRef, ElementValueConstant : LLVMValueRef, IndexConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstShuffleVector")
    LLVMConstShuffleVector :: proc(VectorAConstant : LLVMValueRef, VectorBConstant : LLVMValueRef, MaskConstant : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBlockAddress")
    LLVMBlockAddress :: proc(F : LLVMValueRef, BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMConstInlineAsm")
    LLVMConstInlineAsm :: proc(Ty : LLVMTypeRef, AsmString : cstring, Constraints : cstring, HasSideEffects : LLVMBool, IsAlignStack : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMGetGlobalParent")
    LLVMGetGlobalParent :: proc(Global : LLVMValueRef) -> LLVMModuleRef ---;

    @(link_name="LLVMIsDeclaration")
    LLVMIsDeclaration :: proc(Global : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMGetLinkage")
    LLVMGetLinkage :: proc(Global : LLVMValueRef) -> LLVMLinkage ---;

    @(link_name="LLVMSetLinkage")
    LLVMSetLinkage :: proc(Global : LLVMValueRef, Linkage : LLVMLinkage) ---;

    @(link_name="LLVMGetSection")
    LLVMGetSection :: proc(Global : LLVMValueRef) -> cstring ---;

    @(link_name="LLVMSetSection")
    LLVMSetSection :: proc(Global : LLVMValueRef, Section : cstring) ---;

    @(link_name="LLVMGetVisibility")
    LLVMGetVisibility :: proc(Global : LLVMValueRef) -> LLVMVisibility ---;

    @(link_name="LLVMSetVisibility")
    LLVMSetVisibility :: proc(Global : LLVMValueRef, Viz : LLVMVisibility) ---;

    @(link_name="LLVMGetDLLStorageClass")
    LLVMGetDLLStorageClass :: proc(Global : LLVMValueRef) -> LLVMDLLStorageClass ---;

    @(link_name="LLVMSetDLLStorageClass")
    LLVMSetDLLStorageClass :: proc(Global : LLVMValueRef, Class : LLVMDLLStorageClass) ---;

    @(link_name="LLVMGetUnnamedAddress")
    LLVMGetUnnamedAddress :: proc(Global : LLVMValueRef) -> LLVMUnnamedAddr ---;

    @(link_name="LLVMSetUnnamedAddress")
    LLVMSetUnnamedAddress :: proc(Global : LLVMValueRef, UnnamedAddr : LLVMUnnamedAddr) ---;

    @(link_name="LLVMGlobalGetValueType")
    LLVMGlobalGetValueType :: proc(Global : LLVMValueRef) -> LLVMTypeRef ---;

    @(link_name="LLVMHasUnnamedAddr")
    LLVMHasUnnamedAddr :: proc(Global : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetUnnamedAddr")
    LLVMSetUnnamedAddr :: proc(Global : LLVMValueRef, HasUnnamedAddr : LLVMBool) ---;

    @(link_name="LLVMGetAlignment")
    LLVMGetAlignment :: proc(V : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMSetAlignment")
    LLVMSetAlignment :: proc(V : LLVMValueRef, Bytes : _c.uint) ---;

    @(link_name="LLVMGlobalSetMetadata")
    LLVMGlobalSetMetadata :: proc(Global : LLVMValueRef, Kind : _c.uint, MD : LLVMMetadataRef) ---;

    @(link_name="LLVMGlobalEraseMetadata")
    LLVMGlobalEraseMetadata :: proc(Global : LLVMValueRef, Kind : _c.uint) ---;

    @(link_name="LLVMGlobalClearMetadata")
    LLVMGlobalClearMetadata :: proc(Global : LLVMValueRef) ---;

    @(link_name="LLVMGlobalCopyAllMetadata")
    LLVMGlobalCopyAllMetadata :: proc(Value : LLVMValueRef, NumEntries : ^_c.size_t) -> ^LLVMValueMetadataEntry ---;

    @(link_name="LLVMDisposeValueMetadataEntries")
    LLVMDisposeValueMetadataEntries :: proc(Entries : ^LLVMValueMetadataEntry) ---;

    @(link_name="LLVMValueMetadataEntriesGetKind")
    LLVMValueMetadataEntriesGetKind :: proc(Entries : ^LLVMValueMetadataEntry, Index : _c.uint) -> _c.uint ---;

    @(link_name="LLVMValueMetadataEntriesGetMetadata")
    LLVMValueMetadataEntriesGetMetadata :: proc(Entries : ^LLVMValueMetadataEntry, Index : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMAddGlobal")
    LLVMAddGlobal :: proc(M : LLVMModuleRef, Ty : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMAddGlobalInAddressSpace")
    LLVMAddGlobalInAddressSpace :: proc(M : LLVMModuleRef, Ty : LLVMTypeRef, Name : cstring, AddressSpace : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMGetNamedGlobal")
    LLVMGetNamedGlobal :: proc(M : LLVMModuleRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMGetFirstGlobal")
    LLVMGetFirstGlobal :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetLastGlobal")
    LLVMGetLastGlobal :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNextGlobal")
    LLVMGetNextGlobal :: proc(GlobalVar : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPreviousGlobal")
    LLVMGetPreviousGlobal :: proc(GlobalVar : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMDeleteGlobal")
    LLVMDeleteGlobal :: proc(GlobalVar : LLVMValueRef) ---;

    @(link_name="LLVMGetInitializer")
    LLVMGetInitializer :: proc(GlobalVar : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetInitializer")
    LLVMSetInitializer :: proc(GlobalVar : LLVMValueRef, ConstantVal : LLVMValueRef) ---;

    @(link_name="LLVMIsThreadLocal")
    LLVMIsThreadLocal :: proc(GlobalVar : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetThreadLocal")
    LLVMSetThreadLocal :: proc(GlobalVar : LLVMValueRef, IsThreadLocal : LLVMBool) ---;

    @(link_name="LLVMIsGlobalConstant")
    LLVMIsGlobalConstant :: proc(GlobalVar : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetGlobalConstant")
    LLVMSetGlobalConstant :: proc(GlobalVar : LLVMValueRef, IsConstant : LLVMBool) ---;

    @(link_name="LLVMGetThreadLocalMode")
    LLVMGetThreadLocalMode :: proc(GlobalVar : LLVMValueRef) -> LLVMThreadLocalMode ---;

    @(link_name="LLVMSetThreadLocalMode")
    LLVMSetThreadLocalMode :: proc(GlobalVar : LLVMValueRef, Mode : LLVMThreadLocalMode) ---;

    @(link_name="LLVMIsExternallyInitialized")
    LLVMIsExternallyInitialized :: proc(GlobalVar : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetExternallyInitialized")
    LLVMSetExternallyInitialized :: proc(GlobalVar : LLVMValueRef, IsExtInit : LLVMBool) ---;

    @(link_name="LLVMAddAlias2")
    LLVMAddAlias2 :: proc(M : LLVMModuleRef, ValueTy : LLVMTypeRef, AddrSpace : _c.uint, Aliasee : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMGetNamedGlobalAlias")
    LLVMGetNamedGlobalAlias :: proc(M : LLVMModuleRef, Name : cstring, NameLen : _c.size_t) -> LLVMValueRef ---;

    @(link_name="LLVMGetFirstGlobalAlias")
    LLVMGetFirstGlobalAlias :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetLastGlobalAlias")
    LLVMGetLastGlobalAlias :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNextGlobalAlias")
    LLVMGetNextGlobalAlias :: proc(GA : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPreviousGlobalAlias")
    LLVMGetPreviousGlobalAlias :: proc(GA : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMAliasGetAliasee")
    LLVMAliasGetAliasee :: proc(Alias : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMAliasSetAliasee")
    LLVMAliasSetAliasee :: proc(Alias : LLVMValueRef, Aliasee : LLVMValueRef) ---;

    @(link_name="LLVMDeleteFunction")
    LLVMDeleteFunction :: proc(Fn : LLVMValueRef) ---;

    @(link_name="LLVMHasPersonalityFn")
    LLVMHasPersonalityFn :: proc(Fn : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMGetPersonalityFn")
    LLVMGetPersonalityFn :: proc(Fn : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetPersonalityFn")
    LLVMSetPersonalityFn :: proc(Fn : LLVMValueRef, PersonalityFn : LLVMValueRef) ---;

    @(link_name="LLVMLookupIntrinsicID")
    LLVMLookupIntrinsicID :: proc(Name : cstring, NameLen : _c.size_t) -> _c.uint ---;

    @(link_name="LLVMGetIntrinsicID")
    LLVMGetIntrinsicID :: proc(Fn : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetIntrinsicDeclaration")
    LLVMGetIntrinsicDeclaration :: proc(Mod : LLVMModuleRef, ID : _c.uint, ParamTypes : ^LLVMTypeRef, ParamCount : _c.size_t) -> LLVMValueRef ---;

    @(link_name="LLVMIntrinsicGetType")
    LLVMIntrinsicGetType :: proc(Ctx : LLVMContextRef, ID : _c.uint, ParamTypes : ^LLVMTypeRef, ParamCount : _c.size_t) -> LLVMTypeRef ---;

    @(link_name="LLVMIntrinsicGetName")
    LLVMIntrinsicGetName :: proc(ID : _c.uint, NameLength : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMIntrinsicCopyOverloadedName")
    LLVMIntrinsicCopyOverloadedName :: proc(ID : _c.uint, ParamTypes : ^LLVMTypeRef, ParamCount : _c.size_t, NameLength : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMIntrinsicCopyOverloadedName2")
    LLVMIntrinsicCopyOverloadedName2 :: proc(Mod : LLVMModuleRef, ID : _c.uint, ParamTypes : ^LLVMTypeRef, ParamCount : _c.size_t, NameLength : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMIntrinsicIsOverloaded")
    LLVMIntrinsicIsOverloaded :: proc(ID : _c.uint) -> LLVMBool ---;

    @(link_name="LLVMGetFunctionCallConv")
    LLVMGetFunctionCallConv :: proc(Fn : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMSetFunctionCallConv")
    LLVMSetFunctionCallConv :: proc(Fn : LLVMValueRef, CC : _c.uint) ---;

    @(link_name="LLVMGetGC")
    LLVMGetGC :: proc(Fn : LLVMValueRef) -> cstring ---;

    @(link_name="LLVMSetGC")
    LLVMSetGC :: proc(Fn : LLVMValueRef, Name : cstring) ---;

    @(link_name="LLVMAddAttributeAtIndex")
    LLVMAddAttributeAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint, A : LLVMAttributeRef) ---;

    @(link_name="LLVMGetAttributeCountAtIndex")
    LLVMGetAttributeCountAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetAttributesAtIndex")
    LLVMGetAttributesAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint, Attrs : ^LLVMAttributeRef) ---;

    @(link_name="LLVMGetEnumAttributeAtIndex")
    LLVMGetEnumAttributeAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint, KindID : _c.uint) -> LLVMAttributeRef ---;

    @(link_name="LLVMGetStringAttributeAtIndex")
    LLVMGetStringAttributeAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) -> LLVMAttributeRef ---;

    @(link_name="LLVMRemoveEnumAttributeAtIndex")
    LLVMRemoveEnumAttributeAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint, KindID : _c.uint) ---;

    @(link_name="LLVMRemoveStringAttributeAtIndex")
    LLVMRemoveStringAttributeAtIndex :: proc(F : LLVMValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) ---;

    @(link_name="LLVMAddTargetDependentFunctionAttr")
    LLVMAddTargetDependentFunctionAttr :: proc(Fn : LLVMValueRef, A : cstring, V : cstring) ---;

    @(link_name="LLVMCountParams")
    LLVMCountParams :: proc(Fn : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetParams")
    LLVMGetParams :: proc(Fn : LLVMValueRef, Params : ^LLVMValueRef) ---;

    @(link_name="LLVMGetParam")
    LLVMGetParam :: proc(Fn : LLVMValueRef, Index : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMGetParamParent")
    LLVMGetParamParent :: proc(Inst : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetFirstParam")
    LLVMGetFirstParam :: proc(Fn : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetLastParam")
    LLVMGetLastParam :: proc(Fn : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNextParam")
    LLVMGetNextParam :: proc(Arg : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPreviousParam")
    LLVMGetPreviousParam :: proc(Arg : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetParamAlignment")
    LLVMSetParamAlignment :: proc(Arg : LLVMValueRef, Align : _c.uint) ---;

    @(link_name="LLVMAddGlobalIFunc")
    LLVMAddGlobalIFunc :: proc(M : LLVMModuleRef, Name : cstring, NameLen : _c.size_t, Ty : LLVMTypeRef, AddrSpace : _c.uint, Resolver : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNamedGlobalIFunc")
    LLVMGetNamedGlobalIFunc :: proc(M : LLVMModuleRef, Name : cstring, NameLen : _c.size_t) -> LLVMValueRef ---;

    @(link_name="LLVMGetFirstGlobalIFunc")
    LLVMGetFirstGlobalIFunc :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetLastGlobalIFunc")
    LLVMGetLastGlobalIFunc :: proc(M : LLVMModuleRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNextGlobalIFunc")
    LLVMGetNextGlobalIFunc :: proc(IFunc : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPreviousGlobalIFunc")
    LLVMGetPreviousGlobalIFunc :: proc(IFunc : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetGlobalIFuncResolver")
    LLVMGetGlobalIFuncResolver :: proc(IFunc : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetGlobalIFuncResolver")
    LLVMSetGlobalIFuncResolver :: proc(IFunc : LLVMValueRef, Resolver : LLVMValueRef) ---;

    @(link_name="LLVMEraseGlobalIFunc")
    LLVMEraseGlobalIFunc :: proc(IFunc : LLVMValueRef) ---;

    @(link_name="LLVMRemoveGlobalIFunc")
    LLVMRemoveGlobalIFunc :: proc(IFunc : LLVMValueRef) ---;

    @(link_name="LLVMMDStringInContext2")
    LLVMMDStringInContext2 :: proc(C : LLVMContextRef, Str : cstring, SLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMMDNodeInContext2")
    LLVMMDNodeInContext2 :: proc(C : LLVMContextRef, MDs : ^LLVMMetadataRef, Count : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMMetadataAsValue")
    LLVMMetadataAsValue :: proc(C : LLVMContextRef, MD : LLVMMetadataRef) -> LLVMValueRef ---;

    @(link_name="LLVMValueAsMetadata")
    LLVMValueAsMetadata :: proc(Val : LLVMValueRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMGetMDString")
    LLVMGetMDString :: proc(V : LLVMValueRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetMDNodeNumOperands")
    LLVMGetMDNodeNumOperands :: proc(V : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetMDNodeOperands")
    LLVMGetMDNodeOperands :: proc(V : LLVMValueRef, Dest : ^LLVMValueRef) ---;

    @(link_name="LLVMReplaceMDNodeOperandWith")
    LLVMReplaceMDNodeOperandWith :: proc(V : LLVMValueRef, Index : _c.uint, Replacement : LLVMMetadataRef) ---;

    @(link_name="LLVMMDStringInContext")
    LLVMMDStringInContext :: proc(C : LLVMContextRef, Str : cstring, SLen : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMMDString")
    LLVMMDString :: proc(Str : cstring, SLen : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMMDNodeInContext")
    LLVMMDNodeInContext :: proc(C : LLVMContextRef, Vals : ^LLVMValueRef, Count : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMMDNode")
    LLVMMDNode :: proc(Vals : ^LLVMValueRef, Count : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMBasicBlockAsValue")
    LLVMBasicBlockAsValue :: proc(BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMValueIsBasicBlock")
    LLVMValueIsBasicBlock :: proc(Val : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMValueAsBasicBlock")
    LLVMValueAsBasicBlock :: proc(Val : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetBasicBlockName")
    LLVMGetBasicBlockName :: proc(BB : LLVMBasicBlockRef) -> cstring ---;

    @(link_name="LLVMGetBasicBlockParent")
    LLVMGetBasicBlockParent :: proc(BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetBasicBlockTerminator")
    LLVMGetBasicBlockTerminator :: proc(BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMCountBasicBlocks")
    LLVMCountBasicBlocks :: proc(Fn : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetBasicBlocks")
    LLVMGetBasicBlocks :: proc(Fn : LLVMValueRef, BasicBlocks : ^LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetFirstBasicBlock")
    LLVMGetFirstBasicBlock :: proc(Fn : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetLastBasicBlock")
    LLVMGetLastBasicBlock :: proc(Fn : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetNextBasicBlock")
    LLVMGetNextBasicBlock :: proc(BB : LLVMBasicBlockRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetPreviousBasicBlock")
    LLVMGetPreviousBasicBlock :: proc(BB : LLVMBasicBlockRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetEntryBasicBlock")
    LLVMGetEntryBasicBlock :: proc(Fn : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMInsertExistingBasicBlockAfterInsertBlock")
    LLVMInsertExistingBasicBlockAfterInsertBlock :: proc(Builder : LLVMBuilderRef, BB : LLVMBasicBlockRef) ---;

    @(link_name="LLVMAppendExistingBasicBlock")
    LLVMAppendExistingBasicBlock :: proc(Fn : LLVMValueRef, BB : LLVMBasicBlockRef) ---;

    @(link_name="LLVMCreateBasicBlockInContext")
    LLVMCreateBasicBlockInContext :: proc(C : LLVMContextRef, Name : cstring) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMAppendBasicBlockInContext")
    LLVMAppendBasicBlockInContext :: proc(C : LLVMContextRef, Fn : LLVMValueRef, Name : cstring) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMAppendBasicBlock")
    LLVMAppendBasicBlock :: proc(Fn : LLVMValueRef, Name : cstring) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMInsertBasicBlockInContext")
    LLVMInsertBasicBlockInContext :: proc(C : LLVMContextRef, BB : LLVMBasicBlockRef, Name : cstring) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMInsertBasicBlock")
    LLVMInsertBasicBlock :: proc(InsertBeforeBB : LLVMBasicBlockRef, Name : cstring) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMDeleteBasicBlock")
    LLVMDeleteBasicBlock :: proc(BB : LLVMBasicBlockRef) ---;

    @(link_name="LLVMRemoveBasicBlockFromParent")
    LLVMRemoveBasicBlockFromParent :: proc(BB : LLVMBasicBlockRef) ---;

    @(link_name="LLVMMoveBasicBlockBefore")
    LLVMMoveBasicBlockBefore :: proc(BB : LLVMBasicBlockRef, MovePos : LLVMBasicBlockRef) ---;

    @(link_name="LLVMMoveBasicBlockAfter")
    LLVMMoveBasicBlockAfter :: proc(BB : LLVMBasicBlockRef, MovePos : LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetFirstInstruction")
    LLVMGetFirstInstruction :: proc(BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetLastInstruction")
    LLVMGetLastInstruction :: proc(BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMHasMetadata")
    LLVMHasMetadata :: proc(Val : LLVMValueRef) -> _c.int ---;

    @(link_name="LLVMGetMetadata")
    LLVMGetMetadata :: proc(Val : LLVMValueRef, KindID : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMSetMetadata")
    LLVMSetMetadata :: proc(Val : LLVMValueRef, KindID : _c.uint, Node : LLVMValueRef) ---;

    @(link_name="LLVMInstructionGetAllMetadataOtherThanDebugLoc")
    LLVMInstructionGetAllMetadataOtherThanDebugLoc :: proc(Instr : LLVMValueRef, NumEntries : ^_c.size_t) -> ^LLVMValueMetadataEntry ---;

    @(link_name="LLVMGetInstructionParent")
    LLVMGetInstructionParent :: proc(Inst : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetNextInstruction")
    LLVMGetNextInstruction :: proc(Inst : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetPreviousInstruction")
    LLVMGetPreviousInstruction :: proc(Inst : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMInstructionRemoveFromParent")
    LLVMInstructionRemoveFromParent :: proc(Inst : LLVMValueRef) ---;

    @(link_name="LLVMInstructionEraseFromParent")
    LLVMInstructionEraseFromParent :: proc(Inst : LLVMValueRef) ---;

    @(link_name="LLVMDeleteInstruction")
    LLVMDeleteInstruction :: proc(Inst : LLVMValueRef) ---;

    @(link_name="LLVMGetInstructionOpcode")
    LLVMGetInstructionOpcode :: proc(Inst : LLVMValueRef) -> LLVMOpcode ---;

    @(link_name="LLVMGetICmpPredicate")
    LLVMGetICmpPredicate :: proc(Inst : LLVMValueRef) -> LLVMIntPredicate ---;

    @(link_name="LLVMGetFCmpPredicate")
    LLVMGetFCmpPredicate :: proc(Inst : LLVMValueRef) -> LLVMRealPredicate ---;

    @(link_name="LLVMInstructionClone")
    LLVMInstructionClone :: proc(Inst : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMIsATerminatorInst")
    LLVMIsATerminatorInst :: proc(Inst : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMGetNumArgOperands")
    LLVMGetNumArgOperands :: proc(Instr : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMSetInstructionCallConv")
    LLVMSetInstructionCallConv :: proc(Instr : LLVMValueRef, CC : _c.uint) ---;

    @(link_name="LLVMGetInstructionCallConv")
    LLVMGetInstructionCallConv :: proc(Instr : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMSetInstrParamAlignment")
    LLVMSetInstrParamAlignment :: proc(Instr : LLVMValueRef, Idx : _c.uint, Align : _c.uint) ---;

    @(link_name="LLVMAddCallSiteAttribute")
    LLVMAddCallSiteAttribute :: proc(C : LLVMValueRef, Idx : _c.uint, A : LLVMAttributeRef) ---;

    @(link_name="LLVMGetCallSiteAttributeCount")
    LLVMGetCallSiteAttributeCount :: proc(C : LLVMValueRef, Idx : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetCallSiteAttributes")
    LLVMGetCallSiteAttributes :: proc(C : LLVMValueRef, Idx : _c.uint, Attrs : ^LLVMAttributeRef) ---;

    @(link_name="LLVMGetCallSiteEnumAttribute")
    LLVMGetCallSiteEnumAttribute :: proc(C : LLVMValueRef, Idx : _c.uint, KindID : _c.uint) -> LLVMAttributeRef ---;

    @(link_name="LLVMGetCallSiteStringAttribute")
    LLVMGetCallSiteStringAttribute :: proc(C : LLVMValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) -> LLVMAttributeRef ---;

    @(link_name="LLVMRemoveCallSiteEnumAttribute")
    LLVMRemoveCallSiteEnumAttribute :: proc(C : LLVMValueRef, Idx : _c.uint, KindID : _c.uint) ---;

    @(link_name="LLVMRemoveCallSiteStringAttribute")
    LLVMRemoveCallSiteStringAttribute :: proc(C : LLVMValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) ---;

    @(link_name="LLVMGetCalledFunctionType")
    LLVMGetCalledFunctionType :: proc(C : LLVMValueRef) -> LLVMTypeRef ---;

    @(link_name="LLVMGetCalledValue")
    LLVMGetCalledValue :: proc(Instr : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMIsTailCall")
    LLVMIsTailCall :: proc(CallInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetTailCall")
    LLVMSetTailCall :: proc(CallInst : LLVMValueRef, IsTailCall : LLVMBool) ---;

    @(link_name="LLVMGetNormalDest")
    LLVMGetNormalDest :: proc(InvokeInst : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetUnwindDest")
    LLVMGetUnwindDest :: proc(InvokeInst : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMSetNormalDest")
    LLVMSetNormalDest :: proc(InvokeInst : LLVMValueRef, B : LLVMBasicBlockRef) ---;

    @(link_name="LLVMSetUnwindDest")
    LLVMSetUnwindDest :: proc(InvokeInst : LLVMValueRef, B : LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetNumSuccessors")
    LLVMGetNumSuccessors :: proc(Term : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetSuccessor")
    LLVMGetSuccessor :: proc(Term : LLVMValueRef, i : _c.uint) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMSetSuccessor")
    LLVMSetSuccessor :: proc(Term : LLVMValueRef, i : _c.uint, block : LLVMBasicBlockRef) ---;

    @(link_name="LLVMIsConditional")
    LLVMIsConditional :: proc(Branch : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMGetCondition")
    LLVMGetCondition :: proc(Branch : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetCondition")
    LLVMSetCondition :: proc(Branch : LLVMValueRef, Cond : LLVMValueRef) ---;

    @(link_name="LLVMGetSwitchDefaultDest")
    LLVMGetSwitchDefaultDest :: proc(SwitchInstr : LLVMValueRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetAllocatedType")
    LLVMGetAllocatedType :: proc(Alloca : LLVMValueRef) -> LLVMTypeRef ---;

    @(link_name="LLVMIsInBounds")
    LLVMIsInBounds :: proc(GEP : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetIsInBounds")
    LLVMSetIsInBounds :: proc(GEP : LLVMValueRef, InBounds : LLVMBool) ---;

    @(link_name="LLVMGetGEPSourceElementType")
    LLVMGetGEPSourceElementType :: proc(GEP : LLVMValueRef) -> LLVMTypeRef ---;

    @(link_name="LLVMAddIncoming")
    LLVMAddIncoming :: proc(PhiNode : LLVMValueRef, IncomingValues : ^LLVMValueRef, IncomingBlocks : ^LLVMBasicBlockRef, Count : _c.uint) ---;

    @(link_name="LLVMCountIncoming")
    LLVMCountIncoming :: proc(PhiNode : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetIncomingValue")
    LLVMGetIncomingValue :: proc(PhiNode : LLVMValueRef, Index : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMGetIncomingBlock")
    LLVMGetIncomingBlock :: proc(PhiNode : LLVMValueRef, Index : _c.uint) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMGetNumIndices")
    LLVMGetNumIndices :: proc(Inst : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetIndices")
    LLVMGetIndices :: proc(Inst : LLVMValueRef) -> ^_c.uint ---;

    @(link_name="LLVMCreateBuilderInContext")
    LLVMCreateBuilderInContext :: proc(C : LLVMContextRef) -> LLVMBuilderRef ---;

    @(link_name="LLVMCreateBuilder")
    LLVMCreateBuilder :: proc() -> LLVMBuilderRef ---;

    @(link_name="LLVMPositionBuilder")
    LLVMPositionBuilder :: proc(Builder : LLVMBuilderRef, Block : LLVMBasicBlockRef, Instr : LLVMValueRef) ---;

    @(link_name="LLVMPositionBuilderBefore")
    LLVMPositionBuilderBefore :: proc(Builder : LLVMBuilderRef, Instr : LLVMValueRef) ---;

    @(link_name="LLVMPositionBuilderAtEnd")
    LLVMPositionBuilderAtEnd :: proc(Builder : LLVMBuilderRef, Block : LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetInsertBlock")
    LLVMGetInsertBlock :: proc(Builder : LLVMBuilderRef) -> LLVMBasicBlockRef ---;

    @(link_name="LLVMClearInsertionPosition")
    LLVMClearInsertionPosition :: proc(Builder : LLVMBuilderRef) ---;

    @(link_name="LLVMInsertIntoBuilder")
    LLVMInsertIntoBuilder :: proc(Builder : LLVMBuilderRef, Instr : LLVMValueRef) ---;

    @(link_name="LLVMInsertIntoBuilderWithName")
    LLVMInsertIntoBuilderWithName :: proc(Builder : LLVMBuilderRef, Instr : LLVMValueRef, Name : cstring) ---;

    @(link_name="LLVMDisposeBuilder")
    LLVMDisposeBuilder :: proc(Builder : LLVMBuilderRef) ---;

    @(link_name="LLVMGetCurrentDebugLocation2")
    LLVMGetCurrentDebugLocation2 :: proc(Builder : LLVMBuilderRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMSetCurrentDebugLocation2")
    LLVMSetCurrentDebugLocation2 :: proc(Builder : LLVMBuilderRef, Loc : LLVMMetadataRef) ---;

    @(link_name="LLVMSetInstDebugLocation")
    LLVMSetInstDebugLocation :: proc(Builder : LLVMBuilderRef, Inst : LLVMValueRef) ---;

    @(link_name="LLVMAddMetadataToInst")
    LLVMAddMetadataToInst :: proc(Builder : LLVMBuilderRef, Inst : LLVMValueRef) ---;

    @(link_name="LLVMBuilderGetDefaultFPMathTag")
    LLVMBuilderGetDefaultFPMathTag :: proc(Builder : LLVMBuilderRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMBuilderSetDefaultFPMathTag")
    LLVMBuilderSetDefaultFPMathTag :: proc(Builder : LLVMBuilderRef, FPMathTag : LLVMMetadataRef) ---;

    @(link_name="LLVMSetCurrentDebugLocation")
    LLVMSetCurrentDebugLocation :: proc(Builder : LLVMBuilderRef, L : LLVMValueRef) ---;

    @(link_name="LLVMGetCurrentDebugLocation")
    LLVMGetCurrentDebugLocation :: proc(Builder : LLVMBuilderRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildRetVoid")
    LLVMBuildRetVoid :: proc(unamed0 : LLVMBuilderRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildRet")
    LLVMBuildRet :: proc(unamed0 : LLVMBuilderRef, V : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAggregateRet")
    LLVMBuildAggregateRet :: proc(unamed0 : LLVMBuilderRef, RetVals : ^LLVMValueRef, N : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMBuildBr")
    LLVMBuildBr :: proc(unamed0 : LLVMBuilderRef, Dest : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCondBr")
    LLVMBuildCondBr :: proc(unamed0 : LLVMBuilderRef, If : LLVMValueRef, Then : LLVMBasicBlockRef, Else : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSwitch")
    LLVMBuildSwitch :: proc(unamed0 : LLVMBuilderRef, V : LLVMValueRef, Else : LLVMBasicBlockRef, NumCases : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMBuildIndirectBr")
    LLVMBuildIndirectBr :: proc(B : LLVMBuilderRef, Addr : LLVMValueRef, NumDests : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMBuildInvoke2")
    LLVMBuildInvoke2 :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, Fn : LLVMValueRef, Args : ^LLVMValueRef, NumArgs : _c.uint, Then : LLVMBasicBlockRef, Catch : LLVMBasicBlockRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildUnreachable")
    LLVMBuildUnreachable :: proc(unamed0 : LLVMBuilderRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildResume")
    LLVMBuildResume :: proc(B : LLVMBuilderRef, Exn : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildLandingPad")
    LLVMBuildLandingPad :: proc(B : LLVMBuilderRef, Ty : LLVMTypeRef, PersFn : LLVMValueRef, NumClauses : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCleanupRet")
    LLVMBuildCleanupRet :: proc(B : LLVMBuilderRef, CatchPad : LLVMValueRef, BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCatchRet")
    LLVMBuildCatchRet :: proc(B : LLVMBuilderRef, CatchPad : LLVMValueRef, BB : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCatchPad")
    LLVMBuildCatchPad :: proc(B : LLVMBuilderRef, ParentPad : LLVMValueRef, Args : ^LLVMValueRef, NumArgs : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCleanupPad")
    LLVMBuildCleanupPad :: proc(B : LLVMBuilderRef, ParentPad : LLVMValueRef, Args : ^LLVMValueRef, NumArgs : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCatchSwitch")
    LLVMBuildCatchSwitch :: proc(B : LLVMBuilderRef, ParentPad : LLVMValueRef, UnwindBB : LLVMBasicBlockRef, NumHandlers : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMAddCase")
    LLVMAddCase :: proc(Switch : LLVMValueRef, OnVal : LLVMValueRef, Dest : LLVMBasicBlockRef) ---;

    @(link_name="LLVMAddDestination")
    LLVMAddDestination :: proc(IndirectBr : LLVMValueRef, Dest : LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetNumClauses")
    LLVMGetNumClauses :: proc(LandingPad : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetClause")
    LLVMGetClause :: proc(LandingPad : LLVMValueRef, Idx : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMAddClause")
    LLVMAddClause :: proc(LandingPad : LLVMValueRef, ClauseVal : LLVMValueRef) ---;

    @(link_name="LLVMIsCleanup")
    LLVMIsCleanup :: proc(LandingPad : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetCleanup")
    LLVMSetCleanup :: proc(LandingPad : LLVMValueRef, Val : LLVMBool) ---;

    @(link_name="LLVMAddHandler")
    LLVMAddHandler :: proc(CatchSwitch : LLVMValueRef, Dest : LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetNumHandlers")
    LLVMGetNumHandlers :: proc(CatchSwitch : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetHandlers")
    LLVMGetHandlers :: proc(CatchSwitch : LLVMValueRef, Handlers : ^LLVMBasicBlockRef) ---;

    @(link_name="LLVMGetArgOperand")
    LLVMGetArgOperand :: proc(Funclet : LLVMValueRef, i : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMSetArgOperand")
    LLVMSetArgOperand :: proc(Funclet : LLVMValueRef, i : _c.uint, value : LLVMValueRef) ---;

    @(link_name="LLVMGetParentCatchSwitch")
    LLVMGetParentCatchSwitch :: proc(CatchPad : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMSetParentCatchSwitch")
    LLVMSetParentCatchSwitch :: proc(CatchPad : LLVMValueRef, CatchSwitch : LLVMValueRef) ---;

    @(link_name="LLVMBuildAdd")
    LLVMBuildAdd :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNSWAdd")
    LLVMBuildNSWAdd :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNUWAdd")
    LLVMBuildNUWAdd :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFAdd")
    LLVMBuildFAdd :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSub")
    LLVMBuildSub :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNSWSub")
    LLVMBuildNSWSub :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNUWSub")
    LLVMBuildNUWSub :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFSub")
    LLVMBuildFSub :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildMul")
    LLVMBuildMul :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNSWMul")
    LLVMBuildNSWMul :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNUWMul")
    LLVMBuildNUWMul :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFMul")
    LLVMBuildFMul :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildUDiv")
    LLVMBuildUDiv :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildExactUDiv")
    LLVMBuildExactUDiv :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSDiv")
    LLVMBuildSDiv :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildExactSDiv")
    LLVMBuildExactSDiv :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFDiv")
    LLVMBuildFDiv :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildURem")
    LLVMBuildURem :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSRem")
    LLVMBuildSRem :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFRem")
    LLVMBuildFRem :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildShl")
    LLVMBuildShl :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildLShr")
    LLVMBuildLShr :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAShr")
    LLVMBuildAShr :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAnd")
    LLVMBuildAnd :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildOr")
    LLVMBuildOr :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildXor")
    LLVMBuildXor :: proc(unamed0 : LLVMBuilderRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildBinOp")
    LLVMBuildBinOp :: proc(B : LLVMBuilderRef, Op : LLVMOpcode, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNeg")
    LLVMBuildNeg :: proc(unamed0 : LLVMBuilderRef, V : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNSWNeg")
    LLVMBuildNSWNeg :: proc(B : LLVMBuilderRef, V : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNUWNeg")
    LLVMBuildNUWNeg :: proc(B : LLVMBuilderRef, V : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFNeg")
    LLVMBuildFNeg :: proc(unamed0 : LLVMBuilderRef, V : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildNot")
    LLVMBuildNot :: proc(unamed0 : LLVMBuilderRef, V : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMGetNUW")
    LLVMGetNUW :: proc(ArithInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetNUW")
    LLVMSetNUW :: proc(ArithInst : LLVMValueRef, HasNUW : LLVMBool) ---;

    @(link_name="LLVMGetNSW")
    LLVMGetNSW :: proc(ArithInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetNSW")
    LLVMSetNSW :: proc(ArithInst : LLVMValueRef, HasNSW : LLVMBool) ---;

    @(link_name="LLVMGetExact")
    LLVMGetExact :: proc(DivOrShrInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetExact")
    LLVMSetExact :: proc(DivOrShrInst : LLVMValueRef, IsExact : LLVMBool) ---;

    @(link_name="LLVMBuildMalloc")
    LLVMBuildMalloc :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildArrayMalloc")
    LLVMBuildArrayMalloc :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, Val : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildMemSet")
    LLVMBuildMemSet :: proc(B : LLVMBuilderRef, Ptr : LLVMValueRef, Val : LLVMValueRef, Len : LLVMValueRef, Align : _c.uint) -> LLVMValueRef ---;

    @(link_name="LLVMBuildMemCpy")
    LLVMBuildMemCpy :: proc(B : LLVMBuilderRef, Dst : LLVMValueRef, DstAlign : _c.uint, Src : LLVMValueRef, SrcAlign : _c.uint, Size : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildMemMove")
    LLVMBuildMemMove :: proc(B : LLVMBuilderRef, Dst : LLVMValueRef, DstAlign : _c.uint, Src : LLVMValueRef, SrcAlign : _c.uint, Size : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAlloca")
    LLVMBuildAlloca :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildArrayAlloca")
    LLVMBuildArrayAlloca :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, Val : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFree")
    LLVMBuildFree :: proc(unamed0 : LLVMBuilderRef, PointerVal : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildLoad2")
    LLVMBuildLoad2 :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, PointerVal : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildStore")
    LLVMBuildStore :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, Ptr : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMBuildGEP2")
    LLVMBuildGEP2 :: proc(B : LLVMBuilderRef, Ty : LLVMTypeRef, Pointer : LLVMValueRef, Indices : ^LLVMValueRef, NumIndices : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildInBoundsGEP2")
    LLVMBuildInBoundsGEP2 :: proc(B : LLVMBuilderRef, Ty : LLVMTypeRef, Pointer : LLVMValueRef, Indices : ^LLVMValueRef, NumIndices : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildStructGEP2")
    LLVMBuildStructGEP2 :: proc(B : LLVMBuilderRef, Ty : LLVMTypeRef, Pointer : LLVMValueRef, Idx : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildGlobalString")
    LLVMBuildGlobalString :: proc(B : LLVMBuilderRef, Str : cstring, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildGlobalStringPtr")
    LLVMBuildGlobalStringPtr :: proc(B : LLVMBuilderRef, Str : cstring, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMGetVolatile")
    LLVMGetVolatile :: proc(MemoryAccessInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetVolatile")
    LLVMSetVolatile :: proc(MemoryAccessInst : LLVMValueRef, IsVolatile : LLVMBool) ---;

    @(link_name="LLVMGetWeak")
    LLVMGetWeak :: proc(CmpXchgInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetWeak")
    LLVMSetWeak :: proc(CmpXchgInst : LLVMValueRef, IsWeak : LLVMBool) ---;

    @(link_name="LLVMGetOrdering")
    LLVMGetOrdering :: proc(MemoryAccessInst : LLVMValueRef) -> LLVMAtomicOrdering ---;

    @(link_name="LLVMSetOrdering")
    LLVMSetOrdering :: proc(MemoryAccessInst : LLVMValueRef, Ordering : LLVMAtomicOrdering) ---;

    @(link_name="LLVMGetAtomicRMWBinOp")
    LLVMGetAtomicRMWBinOp :: proc(AtomicRMWInst : LLVMValueRef) -> LLVMAtomicRMWBinOp ---;

    @(link_name="LLVMSetAtomicRMWBinOp")
    LLVMSetAtomicRMWBinOp :: proc(AtomicRMWInst : LLVMValueRef, BinOp : LLVMAtomicRMWBinOp) ---;

    @(link_name="LLVMBuildTrunc")
    LLVMBuildTrunc :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildZExt")
    LLVMBuildZExt :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSExt")
    LLVMBuildSExt :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFPToUI")
    LLVMBuildFPToUI :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFPToSI")
    LLVMBuildFPToSI :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildUIToFP")
    LLVMBuildUIToFP :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSIToFP")
    LLVMBuildSIToFP :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFPTrunc")
    LLVMBuildFPTrunc :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFPExt")
    LLVMBuildFPExt :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildPtrToInt")
    LLVMBuildPtrToInt :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildIntToPtr")
    LLVMBuildIntToPtr :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildBitCast")
    LLVMBuildBitCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAddrSpaceCast")
    LLVMBuildAddrSpaceCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildZExtOrBitCast")
    LLVMBuildZExtOrBitCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSExtOrBitCast")
    LLVMBuildSExtOrBitCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildTruncOrBitCast")
    LLVMBuildTruncOrBitCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCast")
    LLVMBuildCast :: proc(B : LLVMBuilderRef, Op : LLVMOpcode, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildPointerCast")
    LLVMBuildPointerCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildIntCast2")
    LLVMBuildIntCast2 :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, IsSigned : LLVMBool, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFPCast")
    LLVMBuildFPCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildIntCast")
    LLVMBuildIntCast :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, DestTy : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMGetCastOpcode")
    LLVMGetCastOpcode :: proc(Src : LLVMValueRef, SrcIsSigned : LLVMBool, DestTy : LLVMTypeRef, DestIsSigned : LLVMBool) -> LLVMOpcode ---;

    @(link_name="LLVMBuildICmp")
    LLVMBuildICmp :: proc(unamed0 : LLVMBuilderRef, Op : LLVMIntPredicate, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFCmp")
    LLVMBuildFCmp :: proc(unamed0 : LLVMBuilderRef, Op : LLVMRealPredicate, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildPhi")
    LLVMBuildPhi :: proc(unamed0 : LLVMBuilderRef, Ty : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildCall2")
    LLVMBuildCall2 :: proc(unamed0 : LLVMBuilderRef, unamed1 : LLVMTypeRef, Fn : LLVMValueRef, Args : ^LLVMValueRef, NumArgs : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildSelect")
    LLVMBuildSelect :: proc(unamed0 : LLVMBuilderRef, If : LLVMValueRef, Then : LLVMValueRef, Else : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildVAArg")
    LLVMBuildVAArg :: proc(unamed0 : LLVMBuilderRef, List : LLVMValueRef, Ty : LLVMTypeRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildExtractElement")
    LLVMBuildExtractElement :: proc(unamed0 : LLVMBuilderRef, VecVal : LLVMValueRef, Index : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildInsertElement")
    LLVMBuildInsertElement :: proc(unamed0 : LLVMBuilderRef, VecVal : LLVMValueRef, EltVal : LLVMValueRef, Index : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildShuffleVector")
    LLVMBuildShuffleVector :: proc(unamed0 : LLVMBuilderRef, V1 : LLVMValueRef, V2 : LLVMValueRef, Mask : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildExtractValue")
    LLVMBuildExtractValue :: proc(unamed0 : LLVMBuilderRef, AggVal : LLVMValueRef, Index : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildInsertValue")
    LLVMBuildInsertValue :: proc(unamed0 : LLVMBuilderRef, AggVal : LLVMValueRef, EltVal : LLVMValueRef, Index : _c.uint, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFreeze")
    LLVMBuildFreeze :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildIsNull")
    LLVMBuildIsNull :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildIsNotNull")
    LLVMBuildIsNotNull :: proc(unamed0 : LLVMBuilderRef, Val : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildPtrDiff2")
    LLVMBuildPtrDiff2 :: proc(unamed0 : LLVMBuilderRef, ElemTy : LLVMTypeRef, LHS : LLVMValueRef, RHS : LLVMValueRef, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildFence")
    LLVMBuildFence :: proc(B : LLVMBuilderRef, ordering : LLVMAtomicOrdering, singleThread : LLVMBool, Name : cstring) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAtomicRMW")
    LLVMBuildAtomicRMW :: proc(B : LLVMBuilderRef, op : LLVMAtomicRMWBinOp, PTR : LLVMValueRef, Val : LLVMValueRef, ordering : LLVMAtomicOrdering, singleThread : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMBuildAtomicCmpXchg")
    LLVMBuildAtomicCmpXchg :: proc(B : LLVMBuilderRef, Ptr : LLVMValueRef, Cmp : LLVMValueRef, New : LLVMValueRef, SuccessOrdering : LLVMAtomicOrdering, FailureOrdering : LLVMAtomicOrdering, SingleThread : LLVMBool) -> LLVMValueRef ---;

    @(link_name="LLVMGetNumMaskElements")
    LLVMGetNumMaskElements :: proc(ShuffleVectorInst : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMGetUndefMaskElem")
    LLVMGetUndefMaskElem :: proc() -> _c.int ---;

    @(link_name="LLVMGetMaskValue")
    LLVMGetMaskValue :: proc(ShuffleVectorInst : LLVMValueRef, Elt : _c.uint) -> _c.int ---;

    @(link_name="LLVMIsAtomicSingleThread")
    LLVMIsAtomicSingleThread :: proc(AtomicInst : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMSetAtomicSingleThread")
    LLVMSetAtomicSingleThread :: proc(AtomicInst : LLVMValueRef, SingleThread : LLVMBool) ---;

    @(link_name="LLVMGetCmpXchgSuccessOrdering")
    LLVMGetCmpXchgSuccessOrdering :: proc(CmpXchgInst : LLVMValueRef) -> LLVMAtomicOrdering ---;

    @(link_name="LLVMSetCmpXchgSuccessOrdering")
    LLVMSetCmpXchgSuccessOrdering :: proc(CmpXchgInst : LLVMValueRef, Ordering : LLVMAtomicOrdering) ---;

    @(link_name="LLVMGetCmpXchgFailureOrdering")
    LLVMGetCmpXchgFailureOrdering :: proc(CmpXchgInst : LLVMValueRef) -> LLVMAtomicOrdering ---;

    @(link_name="LLVMSetCmpXchgFailureOrdering")
    LLVMSetCmpXchgFailureOrdering :: proc(CmpXchgInst : LLVMValueRef, Ordering : LLVMAtomicOrdering) ---;

    @(link_name="LLVMCreateModuleProviderForExistingModule")
    LLVMCreateModuleProviderForExistingModule :: proc(M : LLVMModuleRef) -> LLVMModuleProviderRef ---;

    @(link_name="LLVMDisposeModuleProvider")
    LLVMDisposeModuleProvider :: proc(M : LLVMModuleProviderRef) ---;

    @(link_name="LLVMCreateMemoryBufferWithContentsOfFile")
    LLVMCreateMemoryBufferWithContentsOfFile :: proc(Path : cstring, OutMemBuf : ^LLVMMemoryBufferRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMCreateMemoryBufferWithSTDIN")
    LLVMCreateMemoryBufferWithSTDIN :: proc(OutMemBuf : ^LLVMMemoryBufferRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMCreateMemoryBufferWithMemoryRange")
    LLVMCreateMemoryBufferWithMemoryRange :: proc(InputData : cstring, InputDataLength : _c.size_t, BufferName : cstring, RequiresNullTerminator : LLVMBool) -> LLVMMemoryBufferRef ---;

    @(link_name="LLVMCreateMemoryBufferWithMemoryRangeCopy")
    LLVMCreateMemoryBufferWithMemoryRangeCopy :: proc(InputData : cstring, InputDataLength : _c.size_t, BufferName : cstring) -> LLVMMemoryBufferRef ---;

    @(link_name="LLVMGetBufferStart")
    LLVMGetBufferStart :: proc(MemBuf : LLVMMemoryBufferRef) -> cstring ---;

    @(link_name="LLVMGetBufferSize")
    LLVMGetBufferSize :: proc(MemBuf : LLVMMemoryBufferRef) -> _c.size_t ---;

    @(link_name="LLVMDisposeMemoryBuffer")
    LLVMDisposeMemoryBuffer :: proc(MemBuf : LLVMMemoryBufferRef) ---;

    @(link_name="LLVMCreatePassManager")
    LLVMCreatePassManager :: proc() -> LLVMPassManagerRef ---;

    @(link_name="LLVMCreateFunctionPassManagerForModule")
    LLVMCreateFunctionPassManagerForModule :: proc(M : LLVMModuleRef) -> LLVMPassManagerRef ---;

    @(link_name="LLVMCreateFunctionPassManager")
    LLVMCreateFunctionPassManager :: proc(MP : LLVMModuleProviderRef) -> LLVMPassManagerRef ---;

    @(link_name="LLVMRunPassManager")
    LLVMRunPassManager :: proc(PM : LLVMPassManagerRef, M : LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMInitializeFunctionPassManager")
    LLVMInitializeFunctionPassManager :: proc(FPM : LLVMPassManagerRef) -> LLVMBool ---;

    @(link_name="LLVMRunFunctionPassManager")
    LLVMRunFunctionPassManager :: proc(FPM : LLVMPassManagerRef, F : LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMFinalizeFunctionPassManager")
    LLVMFinalizeFunctionPassManager :: proc(FPM : LLVMPassManagerRef) -> LLVMBool ---;

    @(link_name="LLVMDisposePassManager")
    LLVMDisposePassManager :: proc(PM : LLVMPassManagerRef) ---;

    @(link_name="LLVMStartMultithreaded")
    LLVMStartMultithreaded :: proc() -> LLVMBool ---;

    @(link_name="LLVMStopMultithreaded")
    LLVMStopMultithreaded :: proc() ---;

    @(link_name="LLVMIsMultithreaded")
    LLVMIsMultithreaded :: proc() -> LLVMBool ---;

    @(link_name="LLVMDebugMetadataVersion")
    LLVMDebugMetadataVersion :: proc() -> _c.uint ---;

    @(link_name="LLVMGetModuleDebugMetadataVersion")
    LLVMGetModuleDebugMetadataVersion :: proc(Module : LLVMModuleRef) -> _c.uint ---;

    @(link_name="LLVMStripModuleDebugInfo")
    LLVMStripModuleDebugInfo :: proc(Module : LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMCreateDIBuilderDisallowUnresolved")
    LLVMCreateDIBuilderDisallowUnresolved :: proc(M : LLVMModuleRef) -> LLVMDIBuilderRef ---;

    @(link_name="LLVMCreateDIBuilder")
    LLVMCreateDIBuilder :: proc(M : LLVMModuleRef) -> LLVMDIBuilderRef ---;

    @(link_name="LLVMDisposeDIBuilder")
    LLVMDisposeDIBuilder :: proc(Builder : LLVMDIBuilderRef) ---;

    @(link_name="LLVMDIBuilderFinalize")
    LLVMDIBuilderFinalize :: proc(Builder : LLVMDIBuilderRef) ---;

    @(link_name="LLVMDIBuilderFinalizeSubprogram")
    LLVMDIBuilderFinalizeSubprogram :: proc(Builder : LLVMDIBuilderRef, Subprogram : LLVMMetadataRef) ---;

    @(link_name="LLVMDIBuilderCreateCompileUnit")
    LLVMDIBuilderCreateCompileUnit :: proc(Builder : LLVMDIBuilderRef, Lang : LLVMDWARFSourceLanguage, FileRef : LLVMMetadataRef, Producer : cstring, ProducerLen : _c.size_t, isOptimized : LLVMBool, Flags : cstring, FlagsLen : _c.size_t, RuntimeVer : _c.uint, SplitName : cstring, SplitNameLen : _c.size_t, Kind : LLVMDWARFEmissionKind, DWOId : _c.uint, SplitDebugInlining : LLVMBool, DebugInfoForProfiling : LLVMBool, SysRoot : cstring, SysRootLen : _c.size_t, SDK : cstring, SDKLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateFile")
    LLVMDIBuilderCreateFile :: proc(Builder : LLVMDIBuilderRef, Filename : cstring, FilenameLen : _c.size_t, Directory : cstring, DirectoryLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateModule")
    LLVMDIBuilderCreateModule :: proc(Builder : LLVMDIBuilderRef, ParentScope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, ConfigMacros : cstring, ConfigMacrosLen : _c.size_t, IncludePath : cstring, IncludePathLen : _c.size_t, APINotesFile : cstring, APINotesFileLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateNameSpace")
    LLVMDIBuilderCreateNameSpace :: proc(Builder : LLVMDIBuilderRef, ParentScope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, ExportSymbols : LLVMBool) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateFunction")
    LLVMDIBuilderCreateFunction :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, LinkageName : cstring, LinkageNameLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, Ty : LLVMMetadataRef, IsLocalToUnit : LLVMBool, IsDefinition : LLVMBool, ScopeLine : _c.uint, Flags : LLVMDIFlags, IsOptimized : LLVMBool) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateLexicalBlock")
    LLVMDIBuilderCreateLexicalBlock :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint, Column : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateLexicalBlockFile")
    LLVMDIBuilderCreateLexicalBlockFile :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, File : LLVMMetadataRef, Discriminator : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedModuleFromNamespace")
    LLVMDIBuilderCreateImportedModuleFromNamespace :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, NS : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedModuleFromAlias")
    LLVMDIBuilderCreateImportedModuleFromAlias :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, ImportedEntity : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint, Elements : ^LLVMMetadataRef, NumElements : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedModuleFromModule")
    LLVMDIBuilderCreateImportedModuleFromModule :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, M : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint, Elements : ^LLVMMetadataRef, NumElements : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedDeclaration")
    LLVMDIBuilderCreateImportedDeclaration :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Decl : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint, Name : cstring, NameLen : _c.size_t, Elements : ^LLVMMetadataRef, NumElements : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateDebugLocation")
    LLVMDIBuilderCreateDebugLocation :: proc(Ctx : LLVMContextRef, Line : _c.uint, Column : _c.uint, Scope : LLVMMetadataRef, InlinedAt : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDILocationGetLine")
    LLVMDILocationGetLine :: proc(Location : LLVMMetadataRef) -> _c.uint ---;

    @(link_name="LLVMDILocationGetColumn")
    LLVMDILocationGetColumn :: proc(Location : LLVMMetadataRef) -> _c.uint ---;

    @(link_name="LLVMDILocationGetScope")
    LLVMDILocationGetScope :: proc(Location : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDILocationGetInlinedAt")
    LLVMDILocationGetInlinedAt :: proc(Location : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIScopeGetFile")
    LLVMDIScopeGetFile :: proc(Scope : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIFileGetDirectory")
    LLVMDIFileGetDirectory :: proc(File : LLVMMetadataRef, Len : ^_c.uint) -> cstring ---;

    @(link_name="LLVMDIFileGetFilename")
    LLVMDIFileGetFilename :: proc(File : LLVMMetadataRef, Len : ^_c.uint) -> cstring ---;

    @(link_name="LLVMDIFileGetSource")
    LLVMDIFileGetSource :: proc(File : LLVMMetadataRef, Len : ^_c.uint) -> cstring ---;

    @(link_name="LLVMDIBuilderGetOrCreateTypeArray")
    LLVMDIBuilderGetOrCreateTypeArray :: proc(Builder : LLVMDIBuilderRef, Data : ^LLVMMetadataRef, NumElements : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateSubroutineType")
    LLVMDIBuilderCreateSubroutineType :: proc(Builder : LLVMDIBuilderRef, File : LLVMMetadataRef, ParameterTypes : ^LLVMMetadataRef, NumParameterTypes : _c.uint, Flags : LLVMDIFlags) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateMacro")
    LLVMDIBuilderCreateMacro :: proc(Builder : LLVMDIBuilderRef, ParentMacroFile : LLVMMetadataRef, Line : _c.uint, RecordType : LLVMDWARFMacinfoRecordType, Name : cstring, NameLen : _c.size_t, Value : cstring, ValueLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateTempMacroFile")
    LLVMDIBuilderCreateTempMacroFile :: proc(Builder : LLVMDIBuilderRef, ParentMacroFile : LLVMMetadataRef, Line : _c.uint, File : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateEnumerator")
    LLVMDIBuilderCreateEnumerator :: proc(Builder : LLVMDIBuilderRef, Name : cstring, NameLen : _c.size_t, Value : i64, IsUnsigned : LLVMBool) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateEnumerationType")
    LLVMDIBuilderCreateEnumerationType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, Elements : ^LLVMMetadataRef, NumElements : _c.uint, ClassTy : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateUnionType")
    LLVMDIBuilderCreateUnionType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, Flags : LLVMDIFlags, Elements : ^LLVMMetadataRef, NumElements : _c.uint, RunTimeLang : _c.uint, UniqueId : cstring, UniqueIdLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateArrayType")
    LLVMDIBuilderCreateArrayType :: proc(Builder : LLVMDIBuilderRef, Size : u64, AlignInBits : u32, Ty : LLVMMetadataRef, Subscripts : ^LLVMMetadataRef, NumSubscripts : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateVectorType")
    LLVMDIBuilderCreateVectorType :: proc(Builder : LLVMDIBuilderRef, Size : u64, AlignInBits : u32, Ty : LLVMMetadataRef, Subscripts : ^LLVMMetadataRef, NumSubscripts : _c.uint) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateUnspecifiedType")
    LLVMDIBuilderCreateUnspecifiedType :: proc(Builder : LLVMDIBuilderRef, Name : cstring, NameLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateBasicType")
    LLVMDIBuilderCreateBasicType :: proc(Builder : LLVMDIBuilderRef, Name : cstring, NameLen : _c.size_t, SizeInBits : u64, Encoding : _c.uint, Flags : LLVMDIFlags) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreatePointerType")
    LLVMDIBuilderCreatePointerType :: proc(Builder : LLVMDIBuilderRef, PointeeTy : LLVMMetadataRef, SizeInBits : u64, AlignInBits : u32, AddressSpace : _c.uint, Name : cstring, NameLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateStructType")
    LLVMDIBuilderCreateStructType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, Flags : LLVMDIFlags, DerivedFrom : LLVMMetadataRef, Elements : ^LLVMMetadataRef, NumElements : _c.uint, RunTimeLang : _c.uint, VTableHolder : LLVMMetadataRef, UniqueId : cstring, UniqueIdLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateMemberType")
    LLVMDIBuilderCreateMemberType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, SizeInBits : u64, AlignInBits : u32, OffsetInBits : u64, Flags : LLVMDIFlags, Ty : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateStaticMemberType")
    LLVMDIBuilderCreateStaticMemberType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNumber : _c.uint, Type : LLVMMetadataRef, Flags : LLVMDIFlags, ConstantVal : LLVMValueRef, AlignInBits : u32) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateMemberPointerType")
    LLVMDIBuilderCreateMemberPointerType :: proc(Builder : LLVMDIBuilderRef, PointeeType : LLVMMetadataRef, ClassType : LLVMMetadataRef, SizeInBits : u64, AlignInBits : u32, Flags : LLVMDIFlags) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateObjCIVar")
    LLVMDIBuilderCreateObjCIVar :: proc(Builder : LLVMDIBuilderRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, SizeInBits : u64, AlignInBits : u32, OffsetInBits : u64, Flags : LLVMDIFlags, Ty : LLVMMetadataRef, PropertyNode : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateObjCProperty")
    LLVMDIBuilderCreateObjCProperty :: proc(Builder : LLVMDIBuilderRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, GetterName : cstring, GetterNameLen : _c.size_t, SetterName : cstring, SetterNameLen : _c.size_t, PropertyAttributes : _c.uint, Ty : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateObjectPointerType")
    LLVMDIBuilderCreateObjectPointerType :: proc(Builder : LLVMDIBuilderRef, Type : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateQualifiedType")
    LLVMDIBuilderCreateQualifiedType :: proc(Builder : LLVMDIBuilderRef, Tag : _c.uint, Type : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateReferenceType")
    LLVMDIBuilderCreateReferenceType :: proc(Builder : LLVMDIBuilderRef, Tag : _c.uint, Type : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateNullPtrType")
    LLVMDIBuilderCreateNullPtrType :: proc(Builder : LLVMDIBuilderRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateTypedef")
    LLVMDIBuilderCreateTypedef :: proc(Builder : LLVMDIBuilderRef, Type : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, Scope : LLVMMetadataRef, AlignInBits : u32) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateInheritance")
    LLVMDIBuilderCreateInheritance :: proc(Builder : LLVMDIBuilderRef, Ty : LLVMMetadataRef, BaseTy : LLVMMetadataRef, BaseOffset : u64, VBPtrOffset : u32, Flags : LLVMDIFlags) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateForwardDecl")
    LLVMDIBuilderCreateForwardDecl :: proc(Builder : LLVMDIBuilderRef, Tag : _c.uint, Name : cstring, NameLen : _c.size_t, Scope : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint, RuntimeLang : _c.uint, SizeInBits : u64, AlignInBits : u32, UniqueIdentifier : cstring, UniqueIdentifierLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateReplaceableCompositeType")
    LLVMDIBuilderCreateReplaceableCompositeType :: proc(Builder : LLVMDIBuilderRef, Tag : _c.uint, Name : cstring, NameLen : _c.size_t, Scope : LLVMMetadataRef, File : LLVMMetadataRef, Line : _c.uint, RuntimeLang : _c.uint, SizeInBits : u64, AlignInBits : u32, Flags : LLVMDIFlags, UniqueIdentifier : cstring, UniqueIdentifierLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateBitFieldMemberType")
    LLVMDIBuilderCreateBitFieldMemberType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNumber : _c.uint, SizeInBits : u64, OffsetInBits : u64, StorageOffsetInBits : u64, Flags : LLVMDIFlags, Type : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateClassType")
    LLVMDIBuilderCreateClassType :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, OffsetInBits : u64, Flags : LLVMDIFlags, DerivedFrom : LLVMMetadataRef, Elements : ^LLVMMetadataRef, NumElements : _c.uint, VTableHolder : LLVMMetadataRef, TemplateParamsNode : LLVMMetadataRef, UniqueIdentifier : cstring, UniqueIdentifierLen : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateArtificialType")
    LLVMDIBuilderCreateArtificialType :: proc(Builder : LLVMDIBuilderRef, Type : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDITypeGetName")
    LLVMDITypeGetName :: proc(DType : LLVMMetadataRef, Length : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMDITypeGetSizeInBits")
    LLVMDITypeGetSizeInBits :: proc(DType : LLVMMetadataRef) -> u64 ---;

    @(link_name="LLVMDITypeGetOffsetInBits")
    LLVMDITypeGetOffsetInBits :: proc(DType : LLVMMetadataRef) -> u64 ---;

    @(link_name="LLVMDITypeGetAlignInBits")
    LLVMDITypeGetAlignInBits :: proc(DType : LLVMMetadataRef) -> u32 ---;

    @(link_name="LLVMDITypeGetLine")
    LLVMDITypeGetLine :: proc(DType : LLVMMetadataRef) -> _c.uint ---;

    @(link_name="LLVMDITypeGetFlags")
    LLVMDITypeGetFlags :: proc(DType : LLVMMetadataRef) -> LLVMDIFlags ---;

    @(link_name="LLVMDIBuilderGetOrCreateSubrange")
    LLVMDIBuilderGetOrCreateSubrange :: proc(Builder : LLVMDIBuilderRef, LowerBound : i64, Count : i64) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderGetOrCreateArray")
    LLVMDIBuilderGetOrCreateArray :: proc(Builder : LLVMDIBuilderRef, Data : ^LLVMMetadataRef, NumElements : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateExpression")
    LLVMDIBuilderCreateExpression :: proc(Builder : LLVMDIBuilderRef, Addr : ^u64, Length : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateConstantValueExpression")
    LLVMDIBuilderCreateConstantValueExpression :: proc(Builder : LLVMDIBuilderRef, Value : u64) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateGlobalVariableExpression")
    LLVMDIBuilderCreateGlobalVariableExpression :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, Linkage : cstring, LinkLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, Ty : LLVMMetadataRef, LocalToUnit : LLVMBool, Expr : LLVMMetadataRef, Decl : LLVMMetadataRef, AlignInBits : u32) -> LLVMMetadataRef ---;

    @(link_name="LLVMGetDINodeTag")
    LLVMGetDINodeTag :: proc(MD : LLVMMetadataRef) -> u16 ---;

    @(link_name="LLVMDIGlobalVariableExpressionGetVariable")
    LLVMDIGlobalVariableExpressionGetVariable :: proc(GVE : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIGlobalVariableExpressionGetExpression")
    LLVMDIGlobalVariableExpressionGetExpression :: proc(GVE : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIVariableGetFile")
    LLVMDIVariableGetFile :: proc(Var : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIVariableGetScope")
    LLVMDIVariableGetScope :: proc(Var : LLVMMetadataRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIVariableGetLine")
    LLVMDIVariableGetLine :: proc(Var : LLVMMetadataRef) -> _c.uint ---;

    @(link_name="LLVMTemporaryMDNode")
    LLVMTemporaryMDNode :: proc(Ctx : LLVMContextRef, Data : ^LLVMMetadataRef, NumElements : _c.size_t) -> LLVMMetadataRef ---;

    @(link_name="LLVMDisposeTemporaryMDNode")
    LLVMDisposeTemporaryMDNode :: proc(TempNode : LLVMMetadataRef) ---;

    @(link_name="LLVMMetadataReplaceAllUsesWith")
    LLVMMetadataReplaceAllUsesWith :: proc(TempTargetMetadata : LLVMMetadataRef, Replacement : LLVMMetadataRef) ---;

    @(link_name="LLVMDIBuilderCreateTempGlobalVariableFwdDecl")
    LLVMDIBuilderCreateTempGlobalVariableFwdDecl :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, Linkage : cstring, LnkLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, Ty : LLVMMetadataRef, LocalToUnit : LLVMBool, Decl : LLVMMetadataRef, AlignInBits : u32) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderInsertDeclareBefore")
    LLVMDIBuilderInsertDeclareBefore :: proc(Builder : LLVMDIBuilderRef, Storage : LLVMValueRef, VarInfo : LLVMMetadataRef, Expr : LLVMMetadataRef, DebugLoc : LLVMMetadataRef, Instr : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMDIBuilderInsertDeclareAtEnd")
    LLVMDIBuilderInsertDeclareAtEnd :: proc(Builder : LLVMDIBuilderRef, Storage : LLVMValueRef, VarInfo : LLVMMetadataRef, Expr : LLVMMetadataRef, DebugLoc : LLVMMetadataRef, Block : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMDIBuilderInsertDbgValueBefore")
    LLVMDIBuilderInsertDbgValueBefore :: proc(Builder : LLVMDIBuilderRef, Val : LLVMValueRef, VarInfo : LLVMMetadataRef, Expr : LLVMMetadataRef, DebugLoc : LLVMMetadataRef, Instr : LLVMValueRef) -> LLVMValueRef ---;

    @(link_name="LLVMDIBuilderInsertDbgValueAtEnd")
    LLVMDIBuilderInsertDbgValueAtEnd :: proc(Builder : LLVMDIBuilderRef, Val : LLVMValueRef, VarInfo : LLVMMetadataRef, Expr : LLVMMetadataRef, DebugLoc : LLVMMetadataRef, Block : LLVMBasicBlockRef) -> LLVMValueRef ---;

    @(link_name="LLVMDIBuilderCreateAutoVariable")
    LLVMDIBuilderCreateAutoVariable :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, File : LLVMMetadataRef, LineNo : _c.uint, Ty : LLVMMetadataRef, AlwaysPreserve : LLVMBool, Flags : LLVMDIFlags, AlignInBits : u32) -> LLVMMetadataRef ---;

    @(link_name="LLVMDIBuilderCreateParameterVariable")
    LLVMDIBuilderCreateParameterVariable :: proc(Builder : LLVMDIBuilderRef, Scope : LLVMMetadataRef, Name : cstring, NameLen : _c.size_t, ArgNo : _c.uint, File : LLVMMetadataRef, LineNo : _c.uint, Ty : LLVMMetadataRef, AlwaysPreserve : LLVMBool, Flags : LLVMDIFlags) -> LLVMMetadataRef ---;

    @(link_name="LLVMGetSubprogram")
    LLVMGetSubprogram :: proc(Func : LLVMValueRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMSetSubprogram")
    LLVMSetSubprogram :: proc(Func : LLVMValueRef, SP : LLVMMetadataRef) ---;

    @(link_name="LLVMDISubprogramGetLine")
    LLVMDISubprogramGetLine :: proc(Subprogram : LLVMMetadataRef) -> _c.uint ---;

    @(link_name="LLVMInstructionGetDebugLoc")
    LLVMInstructionGetDebugLoc :: proc(Inst : LLVMValueRef) -> LLVMMetadataRef ---;

    @(link_name="LLVMInstructionSetDebugLoc")
    LLVMInstructionSetDebugLoc :: proc(Inst : LLVMValueRef, Loc : LLVMMetadataRef) ---;

    @(link_name="LLVMGetMetadataKind")
    LLVMGetMetadataKind :: proc(Metadata : LLVMMetadataRef) -> _c.uint ---;

    @(link_name="LLVMCreateDisasm")
    LLVMCreateDisasm :: proc(TripleName : cstring, DisInfo : rawptr, TagType : _c.int, GetOpInfo : LLVMOpInfoCallback, SymbolLookUp : LLVMSymbolLookupCallback) -> LLVMDisasmContextRef ---;

    @(link_name="LLVMCreateDisasmCPU")
    LLVMCreateDisasmCPU :: proc(Triple : cstring, CPU : cstring, DisInfo : rawptr, TagType : _c.int, GetOpInfo : LLVMOpInfoCallback, SymbolLookUp : LLVMSymbolLookupCallback) -> LLVMDisasmContextRef ---;

    @(link_name="LLVMCreateDisasmCPUFeatures")
    LLVMCreateDisasmCPUFeatures :: proc(Triple : cstring, CPU : cstring, Features : cstring, DisInfo : rawptr, TagType : _c.int, GetOpInfo : LLVMOpInfoCallback, SymbolLookUp : LLVMSymbolLookupCallback) -> LLVMDisasmContextRef ---;

    @(link_name="LLVMSetDisasmOptions")
    LLVMSetDisasmOptions :: proc(DC : LLVMDisasmContextRef, Options : u64) -> _c.int ---;

    @(link_name="LLVMDisasmDispose")
    LLVMDisasmDispose :: proc(DC : LLVMDisasmContextRef) ---;

    @(link_name="LLVMDisasmInstruction")
    LLVMDisasmInstruction :: proc(DC : LLVMDisasmContextRef, Bytes : ^u8, BytesSize : u64, PC : u64, OutString : cstring, OutStringSize : _c.size_t) -> _c.size_t ---;

    @(link_name="LLVMGetErrorTypeId")
    LLVMGetErrorTypeId :: proc(Err : LLVMErrorRef) -> LLVMErrorTypeId ---;

    @(link_name="LLVMConsumeError")
    LLVMConsumeError :: proc(Err : LLVMErrorRef) ---;

    @(link_name="LLVMGetErrorMessage")
    LLVMGetErrorMessage :: proc(Err : LLVMErrorRef) -> cstring ---;

    @(link_name="LLVMDisposeErrorMessage")
    LLVMDisposeErrorMessage :: proc(ErrMsg : cstring) ---;

    @(link_name="LLVMGetStringErrorTypeId")
    LLVMGetStringErrorTypeId :: proc() -> LLVMErrorTypeId ---;

    @(link_name="LLVMCreateStringError")
    LLVMCreateStringError :: proc(ErrMsg : cstring) -> LLVMErrorRef ---;

    @(link_name="LLVMInstallFatalErrorHandler")
    LLVMInstallFatalErrorHandler :: proc(Handler : LLVMFatalErrorHandler) ---;

    @(link_name="LLVMResetFatalErrorHandler")
    LLVMResetFatalErrorHandler :: proc() ---;

    @(link_name="LLVMEnablePrettyStackTrace")
    LLVMEnablePrettyStackTrace :: proc() ---;

    @(link_name="LLVMLinkInMCJIT")
    LLVMLinkInMCJIT :: proc() ---;

    @(link_name="LLVMLinkInInterpreter")
    LLVMLinkInInterpreter :: proc() ---;

    @(link_name="LLVMCreateGenericValueOfInt")
    LLVMCreateGenericValueOfInt :: proc(Ty : LLVMTypeRef, N : _c.ulonglong, IsSigned : LLVMBool) -> LLVMGenericValueRef ---;

    @(link_name="LLVMCreateGenericValueOfPointer")
    LLVMCreateGenericValueOfPointer :: proc(P : rawptr) -> LLVMGenericValueRef ---;

    @(link_name="LLVMCreateGenericValueOfFloat")
    LLVMCreateGenericValueOfFloat :: proc(Ty : LLVMTypeRef, N : _c.double) -> LLVMGenericValueRef ---;

    @(link_name="LLVMGenericValueIntWidth")
    LLVMGenericValueIntWidth :: proc(GenValRef : LLVMGenericValueRef) -> _c.uint ---;

    @(link_name="LLVMGenericValueToInt")
    LLVMGenericValueToInt :: proc(GenVal : LLVMGenericValueRef, IsSigned : LLVMBool) -> _c.ulonglong ---;

    @(link_name="LLVMGenericValueToPointer")
    LLVMGenericValueToPointer :: proc(GenVal : LLVMGenericValueRef) -> rawptr ---;

    @(link_name="LLVMGenericValueToFloat")
    LLVMGenericValueToFloat :: proc(TyRef : LLVMTypeRef, GenVal : LLVMGenericValueRef) -> _c.double ---;

    @(link_name="LLVMDisposeGenericValue")
    LLVMDisposeGenericValue :: proc(GenVal : LLVMGenericValueRef) ---;

    @(link_name="LLVMCreateExecutionEngineForModule")
    LLVMCreateExecutionEngineForModule :: proc(OutEE : ^LLVMExecutionEngineRef, M : LLVMModuleRef, OutError : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMCreateInterpreterForModule")
    LLVMCreateInterpreterForModule :: proc(OutInterp : ^LLVMExecutionEngineRef, M : LLVMModuleRef, OutError : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMCreateJITCompilerForModule")
    LLVMCreateJITCompilerForModule :: proc(OutJIT : ^LLVMExecutionEngineRef, M : LLVMModuleRef, OptLevel : _c.uint, OutError : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMInitializeMCJITCompilerOptions")
    LLVMInitializeMCJITCompilerOptions :: proc(Options : ^LLVMMCJITCompilerOptions, SizeOfOptions : _c.size_t) ---;

    @(link_name="LLVMCreateMCJITCompilerForModule")
    LLVMCreateMCJITCompilerForModule :: proc(OutJIT : ^LLVMExecutionEngineRef, M : LLVMModuleRef, Options : ^LLVMMCJITCompilerOptions, SizeOfOptions : _c.size_t, OutError : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMDisposeExecutionEngine")
    LLVMDisposeExecutionEngine :: proc(EE : LLVMExecutionEngineRef) ---;

    @(link_name="LLVMRunStaticConstructors")
    LLVMRunStaticConstructors :: proc(EE : LLVMExecutionEngineRef) ---;

    @(link_name="LLVMRunStaticDestructors")
    LLVMRunStaticDestructors :: proc(EE : LLVMExecutionEngineRef) ---;

    @(link_name="LLVMRunFunctionAsMain")
    LLVMRunFunctionAsMain :: proc(EE : LLVMExecutionEngineRef, F : LLVMValueRef, ArgC : _c.uint, ArgV : ^cstring, EnvP : ^cstring) -> _c.int ---;

    @(link_name="LLVMRunFunction")
    LLVMRunFunction :: proc(EE : LLVMExecutionEngineRef, F : LLVMValueRef, NumArgs : _c.uint, Args : ^LLVMGenericValueRef) -> LLVMGenericValueRef ---;

    @(link_name="LLVMFreeMachineCodeForFunction")
    LLVMFreeMachineCodeForFunction :: proc(EE : LLVMExecutionEngineRef, F : LLVMValueRef) ---;

    @(link_name="LLVMAddModule")
    LLVMAddModule :: proc(EE : LLVMExecutionEngineRef, M : LLVMModuleRef) ---;

    @(link_name="LLVMRemoveModule")
    LLVMRemoveModule :: proc(EE : LLVMExecutionEngineRef, M : LLVMModuleRef, OutMod : ^LLVMModuleRef, OutError : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMFindFunction")
    LLVMFindFunction :: proc(EE : LLVMExecutionEngineRef, Name : cstring, OutFn : ^LLVMValueRef) -> LLVMBool ---;

    @(link_name="LLVMRecompileAndRelinkFunction")
    LLVMRecompileAndRelinkFunction :: proc(EE : LLVMExecutionEngineRef, Fn : LLVMValueRef) -> rawptr ---;

    @(link_name="LLVMGetExecutionEngineTargetData")
    LLVMGetExecutionEngineTargetData :: proc(EE : LLVMExecutionEngineRef) -> LLVMTargetDataRef ---;

    @(link_name="LLVMGetExecutionEngineTargetMachine")
    LLVMGetExecutionEngineTargetMachine :: proc(EE : LLVMExecutionEngineRef) -> LLVMTargetMachineRef ---;

    @(link_name="LLVMAddGlobalMapping")
    LLVMAddGlobalMapping :: proc(EE : LLVMExecutionEngineRef, Global : LLVMValueRef, Addr : rawptr) ---;

    @(link_name="LLVMGetPointerToGlobal")
    LLVMGetPointerToGlobal :: proc(EE : LLVMExecutionEngineRef, Global : LLVMValueRef) -> rawptr ---;

    @(link_name="LLVMGetGlobalValueAddress")
    LLVMGetGlobalValueAddress :: proc(EE : LLVMExecutionEngineRef, Name : cstring) -> u64 ---;

    @(link_name="LLVMGetFunctionAddress")
    LLVMGetFunctionAddress :: proc(EE : LLVMExecutionEngineRef, Name : cstring) -> u64 ---;

    @(link_name="LLVMExecutionEngineGetErrMsg")
    LLVMExecutionEngineGetErrMsg :: proc(EE : LLVMExecutionEngineRef, OutError : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMCreateSimpleMCJITMemoryManager")
    LLVMCreateSimpleMCJITMemoryManager :: proc(Opaque : rawptr, AllocateCodeSection : LLVMMemoryManagerAllocateCodeSectionCallback, AllocateDataSection : LLVMMemoryManagerAllocateDataSectionCallback, FinalizeMemory : LLVMMemoryManagerFinalizeMemoryCallback, Destroy : LLVMMemoryManagerDestroyCallback) -> LLVMMCJITMemoryManagerRef ---;

    @(link_name="LLVMDisposeMCJITMemoryManager")
    LLVMDisposeMCJITMemoryManager :: proc(MM : LLVMMCJITMemoryManagerRef) ---;

    @(link_name="LLVMCreateGDBRegistrationListener")
    LLVMCreateGDBRegistrationListener :: proc() -> LLVMJITEventListenerRef ---;

    @(link_name="LLVMCreateIntelJITEventListener")
    LLVMCreateIntelJITEventListener :: proc() -> LLVMJITEventListenerRef ---;

    @(link_name="LLVMCreateOProfileJITEventListener")
    LLVMCreateOProfileJITEventListener :: proc() -> LLVMJITEventListenerRef ---;

    @(link_name="LLVMCreatePerfJITEventListener")
    LLVMCreatePerfJITEventListener :: proc() -> LLVMJITEventListenerRef ---;

    @(link_name="LLVMParseIRInContext")
    LLVMParseIRInContext :: proc(ContextRef : LLVMContextRef, MemBuf : LLVMMemoryBufferRef, OutM : ^LLVMModuleRef, OutMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMLinkModules2")
    LLVMLinkModules2 :: proc(Dest : LLVMModuleRef, Src : LLVMModuleRef) -> LLVMBool ---;

    @(link_name="LLVMOrcCreateLLJITBuilder")
    LLVMOrcCreateLLJITBuilder :: proc() -> LLVMOrcLLJITBuilderRef ---;

    @(link_name="LLVMOrcDisposeLLJITBuilder")
    LLVMOrcDisposeLLJITBuilder :: proc(Builder : LLVMOrcLLJITBuilderRef) ---;

    @(link_name="LLVMOrcLLJITBuilderSetJITTargetMachineBuilder")
    LLVMOrcLLJITBuilderSetJITTargetMachineBuilder :: proc(Builder : LLVMOrcLLJITBuilderRef, JTMB : LLVMOrcJITTargetMachineBuilderRef) ---;

    @(link_name="LLVMOrcLLJITBuilderSetObjectLinkingLayerCreator")
    LLVMOrcLLJITBuilderSetObjectLinkingLayerCreator :: proc(Builder : LLVMOrcLLJITBuilderRef, F : LLVMOrcLLJITBuilderObjectLinkingLayerCreatorFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcCreateLLJIT")
    LLVMOrcCreateLLJIT :: proc(Result : ^LLVMOrcLLJITRef, Builder : LLVMOrcLLJITBuilderRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcDisposeLLJIT")
    LLVMOrcDisposeLLJIT :: proc(J : LLVMOrcLLJITRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcLLJITGetExecutionSession")
    LLVMOrcLLJITGetExecutionSession :: proc(J : LLVMOrcLLJITRef) -> LLVMOrcExecutionSessionRef ---;

    @(link_name="LLVMOrcLLJITGetMainJITDylib")
    LLVMOrcLLJITGetMainJITDylib :: proc(J : LLVMOrcLLJITRef) -> LLVMOrcJITDylibRef ---;

    @(link_name="LLVMOrcLLJITGetTripleString")
    LLVMOrcLLJITGetTripleString :: proc(J : LLVMOrcLLJITRef) -> cstring ---;

    @(link_name="LLVMOrcLLJITGetGlobalPrefix")
    LLVMOrcLLJITGetGlobalPrefix :: proc(J : LLVMOrcLLJITRef) -> _c.char ---;

    @(link_name="LLVMOrcLLJITMangleAndIntern")
    LLVMOrcLLJITMangleAndIntern :: proc(J : LLVMOrcLLJITRef, UnmangledName : cstring) -> LLVMOrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcLLJITAddObjectFile")
    LLVMOrcLLJITAddObjectFile :: proc(J : LLVMOrcLLJITRef, JD : LLVMOrcJITDylibRef, ObjBuffer : LLVMMemoryBufferRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcLLJITAddObjectFileWithRT")
    LLVMOrcLLJITAddObjectFileWithRT :: proc(J : LLVMOrcLLJITRef, RT : LLVMOrcResourceTrackerRef, ObjBuffer : LLVMMemoryBufferRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcLLJITAddLLVMIRModule")
    LLVMOrcLLJITAddLLVMIRModule :: proc(J : LLVMOrcLLJITRef, JD : LLVMOrcJITDylibRef, TSM : LLVMOrcThreadSafeModuleRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcLLJITAddLLVMIRModuleWithRT")
    LLVMOrcLLJITAddLLVMIRModuleWithRT :: proc(J : LLVMOrcLLJITRef, JD : LLVMOrcResourceTrackerRef, TSM : LLVMOrcThreadSafeModuleRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcLLJITLookup")
    LLVMOrcLLJITLookup :: proc(J : LLVMOrcLLJITRef, Result : ^LLVMOrcExecutorAddress, Name : cstring) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcLLJITGetObjLinkingLayer")
    LLVMOrcLLJITGetObjLinkingLayer :: proc(J : LLVMOrcLLJITRef) -> LLVMOrcObjectLayerRef ---;

    @(link_name="LLVMOrcLLJITGetObjTransformLayer")
    LLVMOrcLLJITGetObjTransformLayer :: proc(J : LLVMOrcLLJITRef) -> LLVMOrcObjectTransformLayerRef ---;

    @(link_name="LLVMOrcLLJITGetIRTransformLayer")
    LLVMOrcLLJITGetIRTransformLayer :: proc(J : LLVMOrcLLJITRef) -> LLVMOrcIRTransformLayerRef ---;

    @(link_name="LLVMOrcLLJITGetDataLayoutStr")
    LLVMOrcLLJITGetDataLayoutStr :: proc(J : LLVMOrcLLJITRef) -> cstring ---;

    @(link_name="lto_get_version")
    lto_get_version :: proc() -> cstring ---;

    @(link_name="lto_get_error_message")
    lto_get_error_message :: proc() -> cstring ---;

    @(link_name="lto_module_is_object_file")
    lto_module_is_object_file :: proc(path : cstring) -> lto_bool_t ---;

    @(link_name="lto_module_is_object_file_for_target")
    lto_module_is_object_file_for_target :: proc(path : cstring, target_triple_prefix : cstring) -> lto_bool_t ---;

    @(link_name="lto_module_has_objc_category")
    lto_module_has_objc_category :: proc(mem : rawptr, length : _c.size_t) -> lto_bool_t ---;

    @(link_name="lto_module_is_object_file_in_memory")
    lto_module_is_object_file_in_memory :: proc(mem : rawptr, length : _c.size_t) -> lto_bool_t ---;

    @(link_name="lto_module_is_object_file_in_memory_for_target")
    lto_module_is_object_file_in_memory_for_target :: proc(mem : rawptr, length : _c.size_t, target_triple_prefix : cstring) -> lto_bool_t ---;

    @(link_name="lto_module_create")
    lto_module_create :: proc(path : cstring) -> lto_module_t ---;

    @(link_name="lto_module_create_from_memory")
    lto_module_create_from_memory :: proc(mem : rawptr, length : _c.size_t) -> lto_module_t ---;

    @(link_name="lto_module_create_from_memory_with_path")
    lto_module_create_from_memory_with_path :: proc(mem : rawptr, length : _c.size_t, path : cstring) -> lto_module_t ---;

    @(link_name="lto_module_create_in_local_context")
    lto_module_create_in_local_context :: proc(mem : rawptr, length : _c.size_t, path : cstring) -> lto_module_t ---;

    @(link_name="lto_module_create_in_codegen_context")
    lto_module_create_in_codegen_context :: proc(mem : rawptr, length : _c.size_t, path : cstring, cg : lto_code_gen_t) -> lto_module_t ---;

    @(link_name="lto_module_create_from_fd")
    lto_module_create_from_fd :: proc(fd : _c.int, path : cstring, file_size : _c.size_t) -> lto_module_t ---;

    // @(link_name="lto_module_create_from_fd_at_offset")
    // lto_module_create_from_fd_at_offset :: proc(fd : _c.int, path : cstring, file_size : _c.size_t, map_size : _c.size_t, offset : off_t) -> lto_module_t ---;

    @(link_name="lto_module_dispose")
    lto_module_dispose :: proc(mod : lto_module_t) ---;

    @(link_name="lto_module_get_target_triple")
    lto_module_get_target_triple :: proc(mod : lto_module_t) -> cstring ---;

    @(link_name="lto_module_set_target_triple")
    lto_module_set_target_triple :: proc(mod : lto_module_t, triple : cstring) ---;

    @(link_name="lto_module_get_num_symbols")
    lto_module_get_num_symbols :: proc(mod : lto_module_t) -> _c.uint ---;

    @(link_name="lto_module_get_symbol_name")
    lto_module_get_symbol_name :: proc(mod : lto_module_t, index : _c.uint) -> cstring ---;

    @(link_name="lto_module_get_symbol_attribute")
    lto_module_get_symbol_attribute :: proc(mod : lto_module_t, index : _c.uint) -> lto_symbol_attributes ---;

    @(link_name="lto_module_get_linkeropts")
    lto_module_get_linkeropts :: proc(mod : lto_module_t) -> cstring ---;

    @(link_name="lto_module_get_macho_cputype")
    lto_module_get_macho_cputype :: proc(mod : lto_module_t, out_cputype : ^_c.uint, out_cpusubtype : ^_c.uint) -> lto_bool_t ---;

    @(link_name="lto_module_has_ctor_dtor")
    lto_module_has_ctor_dtor :: proc(mod : lto_module_t) -> lto_bool_t ---;

    @(link_name="lto_codegen_set_diagnostic_handler")
    lto_codegen_set_diagnostic_handler :: proc(unamed0 : lto_code_gen_t, unamed1 : lto_diagnostic_handler_t, unamed2 : rawptr) ---;

    @(link_name="lto_codegen_create")
    lto_codegen_create :: proc() -> lto_code_gen_t ---;

    @(link_name="lto_codegen_create_in_local_context")
    lto_codegen_create_in_local_context :: proc() -> lto_code_gen_t ---;

    @(link_name="lto_codegen_dispose")
    lto_codegen_dispose :: proc(unamed0 : lto_code_gen_t) ---;

    @(link_name="lto_codegen_add_module")
    lto_codegen_add_module :: proc(cg : lto_code_gen_t, mod : lto_module_t) -> lto_bool_t ---;

    @(link_name="lto_codegen_set_module")
    lto_codegen_set_module :: proc(cg : lto_code_gen_t, mod : lto_module_t) ---;

    @(link_name="lto_codegen_set_debug_model")
    lto_codegen_set_debug_model :: proc(cg : lto_code_gen_t, unamed0 : lto_debug_model) -> lto_bool_t ---;

    @(link_name="lto_codegen_set_pic_model")
    lto_codegen_set_pic_model :: proc(cg : lto_code_gen_t, unamed0 : lto_codegen_model) -> lto_bool_t ---;

    @(link_name="lto_codegen_set_cpu")
    lto_codegen_set_cpu :: proc(cg : lto_code_gen_t, cpu : cstring) ---;

    @(link_name="lto_codegen_set_assembler_path")
    lto_codegen_set_assembler_path :: proc(cg : lto_code_gen_t, path : cstring) ---;

    @(link_name="lto_codegen_set_assembler_args")
    lto_codegen_set_assembler_args :: proc(cg : lto_code_gen_t, args : ^cstring, nargs : _c.int) ---;

    @(link_name="lto_codegen_add_must_preserve_symbol")
    lto_codegen_add_must_preserve_symbol :: proc(cg : lto_code_gen_t, symbol : cstring) ---;

    @(link_name="lto_codegen_write_merged_modules")
    lto_codegen_write_merged_modules :: proc(cg : lto_code_gen_t, path : cstring) -> lto_bool_t ---;

    @(link_name="lto_codegen_compile")
    lto_codegen_compile :: proc(cg : lto_code_gen_t, length : ^_c.size_t) -> rawptr ---;

    @(link_name="lto_codegen_compile_to_file")
    lto_codegen_compile_to_file :: proc(cg : lto_code_gen_t, name : ^cstring) -> lto_bool_t ---;

    @(link_name="lto_codegen_optimize")
    lto_codegen_optimize :: proc(cg : lto_code_gen_t) -> lto_bool_t ---;

    @(link_name="lto_codegen_compile_optimized")
    lto_codegen_compile_optimized :: proc(cg : lto_code_gen_t, length : ^_c.size_t) -> rawptr ---;

    @(link_name="lto_api_version")
    lto_api_version :: proc() -> _c.uint ---;

    @(link_name="lto_set_debug_options")
    lto_set_debug_options :: proc(options : ^cstring, number : _c.int) ---;

    @(link_name="lto_codegen_debug_options")
    lto_codegen_debug_options :: proc(cg : lto_code_gen_t, unamed0 : cstring) ---;

    @(link_name="lto_codegen_debug_options_array")
    lto_codegen_debug_options_array :: proc(cg : lto_code_gen_t, unamed0 : ^cstring, number : _c.int) ---;

    @(link_name="lto_initialize_disassembler")
    lto_initialize_disassembler :: proc() ---;

    @(link_name="lto_codegen_set_should_internalize")
    lto_codegen_set_should_internalize :: proc(cg : lto_code_gen_t, ShouldInternalize : lto_bool_t) ---;

    @(link_name="lto_codegen_set_should_embed_uselists")
    lto_codegen_set_should_embed_uselists :: proc(cg : lto_code_gen_t, ShouldEmbedUselists : lto_bool_t) ---;

    @(link_name="lto_input_create")
    lto_input_create :: proc(buffer : rawptr, buffer_size : _c.size_t, path : cstring) -> lto_input_t ---;

    @(link_name="lto_input_dispose")
    lto_input_dispose :: proc(input : lto_input_t) ---;

    @(link_name="lto_input_get_num_dependent_libraries")
    lto_input_get_num_dependent_libraries :: proc(input : lto_input_t) -> _c.uint ---;

    @(link_name="lto_input_get_dependent_library")
    lto_input_get_dependent_library :: proc(input : lto_input_t, index : _c.size_t, size : ^_c.size_t) -> cstring ---;

    @(link_name="lto_runtime_lib_symbols_list")
    lto_runtime_lib_symbols_list :: proc(size : ^_c.size_t) -> ^cstring ---;

    @(link_name="thinlto_create_codegen")
    thinlto_create_codegen :: proc() -> thinlto_code_gen_t ---;

    @(link_name="thinlto_codegen_dispose")
    thinlto_codegen_dispose :: proc(cg : thinlto_code_gen_t) ---;

    @(link_name="thinlto_codegen_add_module")
    thinlto_codegen_add_module :: proc(cg : thinlto_code_gen_t, identifier : cstring, data : cstring, length : _c.int) ---;

    @(link_name="thinlto_codegen_process")
    thinlto_codegen_process :: proc(cg : thinlto_code_gen_t) ---;

    @(link_name="thinlto_module_get_num_objects")
    thinlto_module_get_num_objects :: proc(cg : thinlto_code_gen_t) -> _c.uint ---;

    @(link_name="thinlto_module_get_object")
    thinlto_module_get_object :: proc(cg : thinlto_code_gen_t, index : _c.uint) -> LTOObjectBuffer ---;

    @(link_name="thinlto_module_get_num_object_files")
    thinlto_module_get_num_object_files :: proc(cg : thinlto_code_gen_t) -> _c.uint ---;

    @(link_name="thinlto_module_get_object_file")
    thinlto_module_get_object_file :: proc(cg : thinlto_code_gen_t, index : _c.uint) -> cstring ---;

    @(link_name="thinlto_codegen_set_pic_model")
    thinlto_codegen_set_pic_model :: proc(cg : thinlto_code_gen_t, unamed0 : lto_codegen_model) -> lto_bool_t ---;

    @(link_name="thinlto_codegen_set_savetemps_dir")
    thinlto_codegen_set_savetemps_dir :: proc(cg : thinlto_code_gen_t, save_temps_dir : cstring) ---;

    @(link_name="thinlto_set_generated_objects_dir")
    thinlto_set_generated_objects_dir :: proc(cg : thinlto_code_gen_t, save_temps_dir : cstring) ---;

    @(link_name="thinlto_codegen_set_cpu")
    thinlto_codegen_set_cpu :: proc(cg : thinlto_code_gen_t, cpu : cstring) ---;

    @(link_name="thinlto_codegen_disable_codegen")
    thinlto_codegen_disable_codegen :: proc(cg : thinlto_code_gen_t, disable : lto_bool_t) ---;

    @(link_name="thinlto_codegen_set_codegen_only")
    thinlto_codegen_set_codegen_only :: proc(cg : thinlto_code_gen_t, codegen_only : lto_bool_t) ---;

    @(link_name="thinlto_debug_options")
    thinlto_debug_options :: proc(options : ^cstring, number : _c.int) ---;

    @(link_name="lto_module_is_thinlto")
    lto_module_is_thinlto :: proc(mod : lto_module_t) -> lto_bool_t ---;

    @(link_name="thinlto_codegen_add_must_preserve_symbol")
    thinlto_codegen_add_must_preserve_symbol :: proc(cg : thinlto_code_gen_t, name : cstring, length : _c.int) ---;

    @(link_name="thinlto_codegen_add_cross_referenced_symbol")
    thinlto_codegen_add_cross_referenced_symbol :: proc(cg : thinlto_code_gen_t, name : cstring, length : _c.int) ---;

    @(link_name="thinlto_codegen_set_cache_dir")
    thinlto_codegen_set_cache_dir :: proc(cg : thinlto_code_gen_t, cache_dir : cstring) ---;

    @(link_name="thinlto_codegen_set_cache_pruning_interval")
    thinlto_codegen_set_cache_pruning_interval :: proc(cg : thinlto_code_gen_t, interval : _c.int) ---;

    @(link_name="thinlto_codegen_set_final_cache_size_relative_to_available_space")
    thinlto_codegen_set_final_cache_size_relative_to_available_space :: proc(cg : thinlto_code_gen_t, percentage : _c.uint) ---;

    @(link_name="thinlto_codegen_set_cache_entry_expiration")
    thinlto_codegen_set_cache_entry_expiration :: proc(cg : thinlto_code_gen_t, expiration : _c.uint) ---;

    @(link_name="thinlto_codegen_set_cache_size_bytes")
    thinlto_codegen_set_cache_size_bytes :: proc(cg : thinlto_code_gen_t, max_size_bytes : _c.uint) ---;

    @(link_name="thinlto_codegen_set_cache_size_megabytes")
    thinlto_codegen_set_cache_size_megabytes :: proc(cg : thinlto_code_gen_t, max_size_megabytes : _c.uint) ---;

    @(link_name="thinlto_codegen_set_cache_size_files")
    thinlto_codegen_set_cache_size_files :: proc(cg : thinlto_code_gen_t, max_size_files : _c.uint) ---;

    @(link_name="LLVMCreateBinary")
    LLVMCreateBinary :: proc(MemBuf : LLVMMemoryBufferRef, Context : LLVMContextRef, ErrorMessage : ^cstring) -> LLVMBinaryRef ---;

    @(link_name="LLVMDisposeBinary")
    LLVMDisposeBinary :: proc(BR : LLVMBinaryRef) ---;

    @(link_name="LLVMBinaryCopyMemoryBuffer")
    LLVMBinaryCopyMemoryBuffer :: proc(BR : LLVMBinaryRef) -> LLVMMemoryBufferRef ---;

    @(link_name="LLVMBinaryGetType")
    LLVMBinaryGetType :: proc(BR : LLVMBinaryRef) -> LLVMBinaryType ---;

    @(link_name="LLVMMachOUniversalBinaryCopyObjectForArch")
    LLVMMachOUniversalBinaryCopyObjectForArch :: proc(BR : LLVMBinaryRef, Arch : cstring, ArchLen : _c.size_t, ErrorMessage : ^cstring) -> LLVMBinaryRef ---;

    @(link_name="LLVMObjectFileCopySectionIterator")
    LLVMObjectFileCopySectionIterator :: proc(BR : LLVMBinaryRef) -> LLVMSectionIteratorRef ---;

    @(link_name="LLVMObjectFileIsSectionIteratorAtEnd")
    LLVMObjectFileIsSectionIteratorAtEnd :: proc(BR : LLVMBinaryRef, SI : LLVMSectionIteratorRef) -> LLVMBool ---;

    @(link_name="LLVMObjectFileCopySymbolIterator")
    LLVMObjectFileCopySymbolIterator :: proc(BR : LLVMBinaryRef) -> LLVMSymbolIteratorRef ---;

    @(link_name="LLVMObjectFileIsSymbolIteratorAtEnd")
    LLVMObjectFileIsSymbolIteratorAtEnd :: proc(BR : LLVMBinaryRef, SI : LLVMSymbolIteratorRef) -> LLVMBool ---;

    @(link_name="LLVMDisposeSectionIterator")
    LLVMDisposeSectionIterator :: proc(SI : LLVMSectionIteratorRef) ---;

    @(link_name="LLVMMoveToNextSection")
    LLVMMoveToNextSection :: proc(SI : LLVMSectionIteratorRef) ---;

    @(link_name="LLVMMoveToContainingSection")
    LLVMMoveToContainingSection :: proc(Sect : LLVMSectionIteratorRef, Sym : LLVMSymbolIteratorRef) ---;

    @(link_name="LLVMDisposeSymbolIterator")
    LLVMDisposeSymbolIterator :: proc(SI : LLVMSymbolIteratorRef) ---;

    @(link_name="LLVMMoveToNextSymbol")
    LLVMMoveToNextSymbol :: proc(SI : LLVMSymbolIteratorRef) ---;

    @(link_name="LLVMGetSectionName")
    LLVMGetSectionName :: proc(SI : LLVMSectionIteratorRef) -> cstring ---;

    @(link_name="LLVMGetSectionSize")
    LLVMGetSectionSize :: proc(SI : LLVMSectionIteratorRef) -> u64 ---;

    @(link_name="LLVMGetSectionContents")
    LLVMGetSectionContents :: proc(SI : LLVMSectionIteratorRef) -> cstring ---;

    @(link_name="LLVMGetSectionAddress")
    LLVMGetSectionAddress :: proc(SI : LLVMSectionIteratorRef) -> u64 ---;

    @(link_name="LLVMGetSectionContainsSymbol")
    LLVMGetSectionContainsSymbol :: proc(SI : LLVMSectionIteratorRef, Sym : LLVMSymbolIteratorRef) -> LLVMBool ---;

    @(link_name="LLVMGetRelocations")
    LLVMGetRelocations :: proc(Section : LLVMSectionIteratorRef) -> LLVMRelocationIteratorRef ---;

    @(link_name="LLVMDisposeRelocationIterator")
    LLVMDisposeRelocationIterator :: proc(RI : LLVMRelocationIteratorRef) ---;

    @(link_name="LLVMIsRelocationIteratorAtEnd")
    LLVMIsRelocationIteratorAtEnd :: proc(Section : LLVMSectionIteratorRef, RI : LLVMRelocationIteratorRef) -> LLVMBool ---;

    @(link_name="LLVMMoveToNextRelocation")
    LLVMMoveToNextRelocation :: proc(RI : LLVMRelocationIteratorRef) ---;

    @(link_name="LLVMGetSymbolName")
    LLVMGetSymbolName :: proc(SI : LLVMSymbolIteratorRef) -> cstring ---;

    @(link_name="LLVMGetSymbolAddress")
    LLVMGetSymbolAddress :: proc(SI : LLVMSymbolIteratorRef) -> u64 ---;

    @(link_name="LLVMGetSymbolSize")
    LLVMGetSymbolSize :: proc(SI : LLVMSymbolIteratorRef) -> u64 ---;

    @(link_name="LLVMGetRelocationOffset")
    LLVMGetRelocationOffset :: proc(RI : LLVMRelocationIteratorRef) -> u64 ---;

    @(link_name="LLVMGetRelocationSymbol")
    LLVMGetRelocationSymbol :: proc(RI : LLVMRelocationIteratorRef) -> LLVMSymbolIteratorRef ---;

    @(link_name="LLVMGetRelocationType")
    LLVMGetRelocationType :: proc(RI : LLVMRelocationIteratorRef) -> u64 ---;

    @(link_name="LLVMGetRelocationTypeName")
    LLVMGetRelocationTypeName :: proc(RI : LLVMRelocationIteratorRef) -> cstring ---;

    @(link_name="LLVMGetRelocationValueString")
    LLVMGetRelocationValueString :: proc(RI : LLVMRelocationIteratorRef) -> cstring ---;

    @(link_name="LLVMCreateObjectFile")
    LLVMCreateObjectFile :: proc(MemBuf : LLVMMemoryBufferRef) -> LLVMObjectFileRef ---;

    @(link_name="LLVMDisposeObjectFile")
    LLVMDisposeObjectFile :: proc(ObjectFile : LLVMObjectFileRef) ---;

    @(link_name="LLVMGetSections")
    LLVMGetSections :: proc(ObjectFile : LLVMObjectFileRef) -> LLVMSectionIteratorRef ---;

    @(link_name="LLVMIsSectionIteratorAtEnd")
    LLVMIsSectionIteratorAtEnd :: proc(ObjectFile : LLVMObjectFileRef, SI : LLVMSectionIteratorRef) -> LLVMBool ---;

    @(link_name="LLVMGetSymbols")
    LLVMGetSymbols :: proc(ObjectFile : LLVMObjectFileRef) -> LLVMSymbolIteratorRef ---;

    @(link_name="LLVMIsSymbolIteratorAtEnd")
    LLVMIsSymbolIteratorAtEnd :: proc(ObjectFile : LLVMObjectFileRef, SI : LLVMSymbolIteratorRef) -> LLVMBool ---;

    @(link_name="LLVMOrcExecutionSessionSetErrorReporter")
    LLVMOrcExecutionSessionSetErrorReporter :: proc(ES : LLVMOrcExecutionSessionRef, ReportError : LLVMOrcErrorReporterFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcExecutionSessionGetSymbolStringPool")
    LLVMOrcExecutionSessionGetSymbolStringPool :: proc(ES : LLVMOrcExecutionSessionRef) -> LLVMOrcSymbolStringPoolRef ---;

    @(link_name="LLVMOrcSymbolStringPoolClearDeadEntries")
    LLVMOrcSymbolStringPoolClearDeadEntries :: proc(SSP : LLVMOrcSymbolStringPoolRef) ---;

    @(link_name="LLVMOrcExecutionSessionIntern")
    LLVMOrcExecutionSessionIntern :: proc(ES : LLVMOrcExecutionSessionRef, Name : cstring) -> LLVMOrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcExecutionSessionLookup")
    LLVMOrcExecutionSessionLookup :: proc(ES : LLVMOrcExecutionSessionRef, K : LLVMOrcLookupKind, SearchOrder : LLVMOrcCJITDylibSearchOrder, SearchOrderSize : _c.size_t, Symbols : LLVMOrcCLookupSet, SymbolsSize : _c.size_t, HandleResult : LLVMOrcExecutionSessionLookupHandleResultFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcRetainSymbolStringPoolEntry")
    LLVMOrcRetainSymbolStringPoolEntry :: proc(S : LLVMOrcSymbolStringPoolEntryRef) ---;

    @(link_name="LLVMOrcReleaseSymbolStringPoolEntry")
    LLVMOrcReleaseSymbolStringPoolEntry :: proc(S : LLVMOrcSymbolStringPoolEntryRef) ---;

    @(link_name="LLVMOrcSymbolStringPoolEntryStr")
    LLVMOrcSymbolStringPoolEntryStr :: proc(S : LLVMOrcSymbolStringPoolEntryRef) -> cstring ---;

    @(link_name="LLVMOrcReleaseResourceTracker")
    LLVMOrcReleaseResourceTracker :: proc(RT : LLVMOrcResourceTrackerRef) ---;

    @(link_name="LLVMOrcResourceTrackerTransferTo")
    LLVMOrcResourceTrackerTransferTo :: proc(SrcRT : LLVMOrcResourceTrackerRef, DstRT : LLVMOrcResourceTrackerRef) ---;

    @(link_name="LLVMOrcResourceTrackerRemove")
    LLVMOrcResourceTrackerRemove :: proc(RT : LLVMOrcResourceTrackerRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcDisposeDefinitionGenerator")
    LLVMOrcDisposeDefinitionGenerator :: proc(DG : LLVMOrcDefinitionGeneratorRef) ---;

    @(link_name="LLVMOrcDisposeMaterializationUnit")
    LLVMOrcDisposeMaterializationUnit :: proc(MU : LLVMOrcMaterializationUnitRef) ---;

    @(link_name="LLVMOrcCreateCustomMaterializationUnit")
    LLVMOrcCreateCustomMaterializationUnit :: proc(Name : cstring, Ctx : rawptr, Syms : LLVMOrcCSymbolFlagsMapPairs, NumSyms : _c.size_t, InitSym : LLVMOrcSymbolStringPoolEntryRef, Materialize : LLVMOrcMaterializationUnitMaterializeFunction, Discard : LLVMOrcMaterializationUnitDiscardFunction, Destroy : LLVMOrcMaterializationUnitDestroyFunction) -> LLVMOrcMaterializationUnitRef ---;

    @(link_name="LLVMOrcAbsoluteSymbols")
    LLVMOrcAbsoluteSymbols :: proc(Syms : LLVMOrcCSymbolMapPairs, NumPairs : _c.size_t) -> LLVMOrcMaterializationUnitRef ---;

    @(link_name="LLVMOrcLazyReexports")
    LLVMOrcLazyReexports :: proc(LCTM : LLVMOrcLazyCallThroughManagerRef, ISM : LLVMOrcIndirectStubsManagerRef, SourceRef : LLVMOrcJITDylibRef, CallableAliases : LLVMOrcCSymbolAliasMapPairs, NumPairs : _c.size_t) -> LLVMOrcMaterializationUnitRef ---;

    @(link_name="LLVMOrcDisposeMaterializationResponsibility")
    LLVMOrcDisposeMaterializationResponsibility :: proc(MR : LLVMOrcMaterializationResponsibilityRef) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetTargetDylib")
    LLVMOrcMaterializationResponsibilityGetTargetDylib :: proc(MR : LLVMOrcMaterializationResponsibilityRef) -> LLVMOrcJITDylibRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetExecutionSession")
    LLVMOrcMaterializationResponsibilityGetExecutionSession :: proc(MR : LLVMOrcMaterializationResponsibilityRef) -> LLVMOrcExecutionSessionRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetSymbols")
    LLVMOrcMaterializationResponsibilityGetSymbols :: proc(MR : LLVMOrcMaterializationResponsibilityRef, NumPairs : ^_c.size_t) -> LLVMOrcCSymbolFlagsMapPairs ---;

    @(link_name="LLVMOrcDisposeCSymbolFlagsMap")
    LLVMOrcDisposeCSymbolFlagsMap :: proc(Pairs : LLVMOrcCSymbolFlagsMapPairs) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetInitializerSymbol")
    LLVMOrcMaterializationResponsibilityGetInitializerSymbol :: proc(MR : LLVMOrcMaterializationResponsibilityRef) -> LLVMOrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetRequestedSymbols")
    LLVMOrcMaterializationResponsibilityGetRequestedSymbols :: proc(MR : LLVMOrcMaterializationResponsibilityRef, NumSymbols : ^_c.size_t) -> ^LLVMOrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcDisposeSymbols")
    LLVMOrcDisposeSymbols :: proc(Symbols : ^LLVMOrcSymbolStringPoolEntryRef) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityNotifyResolved")
    LLVMOrcMaterializationResponsibilityNotifyResolved :: proc(MR : LLVMOrcMaterializationResponsibilityRef, Symbols : LLVMOrcCSymbolMapPairs, NumPairs : _c.size_t) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityNotifyEmitted")
    LLVMOrcMaterializationResponsibilityNotifyEmitted :: proc(MR : LLVMOrcMaterializationResponsibilityRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityDefineMaterializing")
    LLVMOrcMaterializationResponsibilityDefineMaterializing :: proc(MR : LLVMOrcMaterializationResponsibilityRef, Pairs : LLVMOrcCSymbolFlagsMapPairs, NumPairs : _c.size_t) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityFailMaterialization")
    LLVMOrcMaterializationResponsibilityFailMaterialization :: proc(MR : LLVMOrcMaterializationResponsibilityRef) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityReplace")
    LLVMOrcMaterializationResponsibilityReplace :: proc(MR : LLVMOrcMaterializationResponsibilityRef, MU : LLVMOrcMaterializationUnitRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityDelegate")
    LLVMOrcMaterializationResponsibilityDelegate :: proc(MR : LLVMOrcMaterializationResponsibilityRef, Symbols : ^LLVMOrcSymbolStringPoolEntryRef, NumSymbols : _c.size_t, Result : ^LLVMOrcMaterializationResponsibilityRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityAddDependencies")
    LLVMOrcMaterializationResponsibilityAddDependencies :: proc(MR : LLVMOrcMaterializationResponsibilityRef, Name : LLVMOrcSymbolStringPoolEntryRef, Dependencies : LLVMOrcCDependenceMapPairs, NumPairs : _c.size_t) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityAddDependenciesForAll")
    LLVMOrcMaterializationResponsibilityAddDependenciesForAll :: proc(MR : LLVMOrcMaterializationResponsibilityRef, Dependencies : LLVMOrcCDependenceMapPairs, NumPairs : _c.size_t) ---;

    @(link_name="LLVMOrcExecutionSessionCreateBareJITDylib")
    LLVMOrcExecutionSessionCreateBareJITDylib :: proc(ES : LLVMOrcExecutionSessionRef, Name : cstring) -> LLVMOrcJITDylibRef ---;

    @(link_name="LLVMOrcExecutionSessionCreateJITDylib")
    LLVMOrcExecutionSessionCreateJITDylib :: proc(ES : LLVMOrcExecutionSessionRef, Result : ^LLVMOrcJITDylibRef, Name : cstring) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcExecutionSessionGetJITDylibByName")
    LLVMOrcExecutionSessionGetJITDylibByName :: proc(ES : LLVMOrcExecutionSessionRef, Name : cstring) -> LLVMOrcJITDylibRef ---;

    @(link_name="LLVMOrcJITDylibCreateResourceTracker")
    LLVMOrcJITDylibCreateResourceTracker :: proc(JD : LLVMOrcJITDylibRef) -> LLVMOrcResourceTrackerRef ---;

    @(link_name="LLVMOrcJITDylibGetDefaultResourceTracker")
    LLVMOrcJITDylibGetDefaultResourceTracker :: proc(JD : LLVMOrcJITDylibRef) -> LLVMOrcResourceTrackerRef ---;

    @(link_name="LLVMOrcJITDylibDefine")
    LLVMOrcJITDylibDefine :: proc(JD : LLVMOrcJITDylibRef, MU : LLVMOrcMaterializationUnitRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcJITDylibClear")
    LLVMOrcJITDylibClear :: proc(JD : LLVMOrcJITDylibRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcJITDylibAddGenerator")
    LLVMOrcJITDylibAddGenerator :: proc(JD : LLVMOrcJITDylibRef, DG : LLVMOrcDefinitionGeneratorRef) ---;

    @(link_name="LLVMOrcCreateCustomCAPIDefinitionGenerator")
    LLVMOrcCreateCustomCAPIDefinitionGenerator :: proc(F : LLVMOrcCAPIDefinitionGeneratorTryToGenerateFunction, Ctx : rawptr, Dispose : LLVMOrcDisposeCAPIDefinitionGeneratorFunction) -> LLVMOrcDefinitionGeneratorRef ---;

    @(link_name="LLVMOrcLookupStateContinueLookup")
    LLVMOrcLookupStateContinueLookup :: proc(S : LLVMOrcLookupStateRef, Err : LLVMErrorRef) ---;

    @(link_name="LLVMOrcCreateDynamicLibrarySearchGeneratorForProcess")
    LLVMOrcCreateDynamicLibrarySearchGeneratorForProcess :: proc(Result : ^LLVMOrcDefinitionGeneratorRef, GlobalPrefx : _c.char, Filter : LLVMOrcSymbolPredicate, FilterCtx : rawptr) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcCreateDynamicLibrarySearchGeneratorForPath")
    LLVMOrcCreateDynamicLibrarySearchGeneratorForPath :: proc(Result : ^LLVMOrcDefinitionGeneratorRef, FileName : cstring, GlobalPrefix : _c.char, Filter : LLVMOrcSymbolPredicate, FilterCtx : rawptr) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcCreateStaticLibrarySearchGeneratorForPath")
    LLVMOrcCreateStaticLibrarySearchGeneratorForPath :: proc(Result : ^LLVMOrcDefinitionGeneratorRef, ObjLayer : LLVMOrcObjectLayerRef, FileName : cstring, TargetTriple : cstring) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcCreateNewThreadSafeContext")
    LLVMOrcCreateNewThreadSafeContext :: proc() -> LLVMOrcThreadSafeContextRef ---;

    @(link_name="LLVMOrcThreadSafeContextGetContext")
    LLVMOrcThreadSafeContextGetContext :: proc(TSCtx : LLVMOrcThreadSafeContextRef) -> LLVMContextRef ---;

    @(link_name="LLVMOrcDisposeThreadSafeContext")
    LLVMOrcDisposeThreadSafeContext :: proc(TSCtx : LLVMOrcThreadSafeContextRef) ---;

    @(link_name="LLVMOrcCreateNewThreadSafeModule")
    LLVMOrcCreateNewThreadSafeModule :: proc(M : LLVMModuleRef, TSCtx : LLVMOrcThreadSafeContextRef) -> LLVMOrcThreadSafeModuleRef ---;

    @(link_name="LLVMOrcDisposeThreadSafeModule")
    LLVMOrcDisposeThreadSafeModule :: proc(TSM : LLVMOrcThreadSafeModuleRef) ---;

    @(link_name="LLVMOrcThreadSafeModuleWithModuleDo")
    LLVMOrcThreadSafeModuleWithModuleDo :: proc(TSM : LLVMOrcThreadSafeModuleRef, F : LLVMOrcGenericIRModuleOperationFunction, Ctx : rawptr) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderDetectHost")
    LLVMOrcJITTargetMachineBuilderDetectHost :: proc(Result : ^LLVMOrcJITTargetMachineBuilderRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderCreateFromTargetMachine")
    LLVMOrcJITTargetMachineBuilderCreateFromTargetMachine :: proc(TM : LLVMTargetMachineRef) -> LLVMOrcJITTargetMachineBuilderRef ---;

    @(link_name="LLVMOrcDisposeJITTargetMachineBuilder")
    LLVMOrcDisposeJITTargetMachineBuilder :: proc(JTMB : LLVMOrcJITTargetMachineBuilderRef) ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderGetTargetTriple")
    LLVMOrcJITTargetMachineBuilderGetTargetTriple :: proc(JTMB : LLVMOrcJITTargetMachineBuilderRef) -> cstring ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderSetTargetTriple")
    LLVMOrcJITTargetMachineBuilderSetTargetTriple :: proc(JTMB : LLVMOrcJITTargetMachineBuilderRef, TargetTriple : cstring) ---;

    @(link_name="LLVMOrcObjectLayerAddObjectFile")
    LLVMOrcObjectLayerAddObjectFile :: proc(ObjLayer : LLVMOrcObjectLayerRef, JD : LLVMOrcJITDylibRef, ObjBuffer : LLVMMemoryBufferRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcObjectLayerAddObjectFileWithRT")
    LLVMOrcObjectLayerAddObjectFileWithRT :: proc(ObjLayer : LLVMOrcObjectLayerRef, RT : LLVMOrcResourceTrackerRef, ObjBuffer : LLVMMemoryBufferRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcObjectLayerEmit")
    LLVMOrcObjectLayerEmit :: proc(ObjLayer : LLVMOrcObjectLayerRef, R : LLVMOrcMaterializationResponsibilityRef, ObjBuffer : LLVMMemoryBufferRef) ---;

    @(link_name="LLVMOrcDisposeObjectLayer")
    LLVMOrcDisposeObjectLayer :: proc(ObjLayer : LLVMOrcObjectLayerRef) ---;

    @(link_name="LLVMOrcIRTransformLayerEmit")
    LLVMOrcIRTransformLayerEmit :: proc(IRTransformLayer : LLVMOrcIRTransformLayerRef, MR : LLVMOrcMaterializationResponsibilityRef, TSM : LLVMOrcThreadSafeModuleRef) ---;

    @(link_name="LLVMOrcIRTransformLayerSetTransform")
    LLVMOrcIRTransformLayerSetTransform :: proc(IRTransformLayer : LLVMOrcIRTransformLayerRef, TransformFunction : LLVMOrcIRTransformLayerTransformFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcObjectTransformLayerSetTransform")
    LLVMOrcObjectTransformLayerSetTransform :: proc(ObjTransformLayer : LLVMOrcObjectTransformLayerRef, TransformFunction : LLVMOrcObjectTransformLayerTransformFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcCreateLocalIndirectStubsManager")
    LLVMOrcCreateLocalIndirectStubsManager :: proc(TargetTriple : cstring) -> LLVMOrcIndirectStubsManagerRef ---;

    @(link_name="LLVMOrcDisposeIndirectStubsManager")
    LLVMOrcDisposeIndirectStubsManager :: proc(ISM : LLVMOrcIndirectStubsManagerRef) ---;

    @(link_name="LLVMOrcCreateLocalLazyCallThroughManager")
    LLVMOrcCreateLocalLazyCallThroughManager :: proc(TargetTriple : cstring, ES : LLVMOrcExecutionSessionRef, ErrorHandlerAddr : u64, LCTM : ^LLVMOrcLazyCallThroughManagerRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcDisposeLazyCallThroughManager")
    LLVMOrcDisposeLazyCallThroughManager :: proc(LCTM : LLVMOrcLazyCallThroughManagerRef) ---;

    @(link_name="LLVMOrcCreateDumpObjects")
    LLVMOrcCreateDumpObjects :: proc(DumpDir : cstring, IdentifierOverride : cstring) -> LLVMOrcDumpObjectsRef ---;

    @(link_name="LLVMOrcDisposeDumpObjects")
    LLVMOrcDisposeDumpObjects :: proc(DumpObjects : LLVMOrcDumpObjectsRef) ---;

    @(link_name="LLVMOrcDumpObjects_CallOperator")
    LLVMOrcDumpObjects_CallOperator :: proc(DumpObjects : LLVMOrcDumpObjectsRef, ObjBuffer : ^LLVMMemoryBufferRef) -> LLVMErrorRef ---;

    @(link_name="LLVMOrcCreateRTDyldObjectLinkingLayerWithSectionMemoryManager")
    LLVMOrcCreateRTDyldObjectLinkingLayerWithSectionMemoryManager :: proc(ES : LLVMOrcExecutionSessionRef) -> LLVMOrcObjectLayerRef ---;

    @(link_name="LLVMOrcCreateRTDyldObjectLinkingLayerWithMCJITMemoryManagerLikeCallbacks")
    LLVMOrcCreateRTDyldObjectLinkingLayerWithMCJITMemoryManagerLikeCallbacks :: proc(ES : LLVMOrcExecutionSessionRef, CreateContextCtx : rawptr, CreateContext : LLVMMemoryManagerCreateContextCallback, NotifyTerminating : LLVMMemoryManagerNotifyTerminatingCallback, AllocateCodeSection : LLVMMemoryManagerAllocateCodeSectionCallback, AllocateDataSection : LLVMMemoryManagerAllocateDataSectionCallback, FinalizeMemory : LLVMMemoryManagerFinalizeMemoryCallback, Destroy : LLVMMemoryManagerDestroyCallback) -> LLVMOrcObjectLayerRef ---;

    @(link_name="LLVMOrcRTDyldObjectLinkingLayerRegisterJITEventListener")
    LLVMOrcRTDyldObjectLinkingLayerRegisterJITEventListener :: proc(RTDyldObjLinkingLayer : LLVMOrcObjectLayerRef, Listener : LLVMJITEventListenerRef) ---;

    @(link_name="LLVMRemarkStringGetData")
    LLVMRemarkStringGetData :: proc(String : LLVMRemarkStringRef) -> cstring ---;

    @(link_name="LLVMRemarkStringGetLen")
    LLVMRemarkStringGetLen :: proc(String : LLVMRemarkStringRef) -> u32 ---;

    @(link_name="LLVMRemarkDebugLocGetSourceFilePath")
    LLVMRemarkDebugLocGetSourceFilePath :: proc(DL : LLVMRemarkDebugLocRef) -> LLVMRemarkStringRef ---;

    @(link_name="LLVMRemarkDebugLocGetSourceLine")
    LLVMRemarkDebugLocGetSourceLine :: proc(DL : LLVMRemarkDebugLocRef) -> u32 ---;

    @(link_name="LLVMRemarkDebugLocGetSourceColumn")
    LLVMRemarkDebugLocGetSourceColumn :: proc(DL : LLVMRemarkDebugLocRef) -> u32 ---;

    @(link_name="LLVMRemarkArgGetKey")
    LLVMRemarkArgGetKey :: proc(Arg : LLVMRemarkArgRef) -> LLVMRemarkStringRef ---;

    @(link_name="LLVMRemarkArgGetValue")
    LLVMRemarkArgGetValue :: proc(Arg : LLVMRemarkArgRef) -> LLVMRemarkStringRef ---;

    @(link_name="LLVMRemarkArgGetDebugLoc")
    LLVMRemarkArgGetDebugLoc :: proc(Arg : LLVMRemarkArgRef) -> LLVMRemarkDebugLocRef ---;

    @(link_name="LLVMRemarkEntryDispose")
    LLVMRemarkEntryDispose :: proc(Remark : LLVMRemarkEntryRef) ---;

    @(link_name="LLVMRemarkEntryGetType")
    LLVMRemarkEntryGetType :: proc(Remark : LLVMRemarkEntryRef) -> LLVMRemarkType ---;

    @(link_name="LLVMRemarkEntryGetPassName")
    LLVMRemarkEntryGetPassName :: proc(Remark : LLVMRemarkEntryRef) -> LLVMRemarkStringRef ---;

    @(link_name="LLVMRemarkEntryGetRemarkName")
    LLVMRemarkEntryGetRemarkName :: proc(Remark : LLVMRemarkEntryRef) -> LLVMRemarkStringRef ---;

    @(link_name="LLVMRemarkEntryGetFunctionName")
    LLVMRemarkEntryGetFunctionName :: proc(Remark : LLVMRemarkEntryRef) -> LLVMRemarkStringRef ---;

    @(link_name="LLVMRemarkEntryGetDebugLoc")
    LLVMRemarkEntryGetDebugLoc :: proc(Remark : LLVMRemarkEntryRef) -> LLVMRemarkDebugLocRef ---;

    @(link_name="LLVMRemarkEntryGetHotness")
    LLVMRemarkEntryGetHotness :: proc(Remark : LLVMRemarkEntryRef) -> u64 ---;

    @(link_name="LLVMRemarkEntryGetNumArgs")
    LLVMRemarkEntryGetNumArgs :: proc(Remark : LLVMRemarkEntryRef) -> u32 ---;

    @(link_name="LLVMRemarkEntryGetFirstArg")
    LLVMRemarkEntryGetFirstArg :: proc(Remark : LLVMRemarkEntryRef) -> LLVMRemarkArgRef ---;

    @(link_name="LLVMRemarkEntryGetNextArg")
    LLVMRemarkEntryGetNextArg :: proc(It : LLVMRemarkArgRef, Remark : LLVMRemarkEntryRef) -> LLVMRemarkArgRef ---;

    @(link_name="LLVMRemarkParserCreateYAML")
    LLVMRemarkParserCreateYAML :: proc(Buf : rawptr, Size : u64) -> LLVMRemarkParserRef ---;

    @(link_name="LLVMRemarkParserCreateBitstream")
    LLVMRemarkParserCreateBitstream :: proc(Buf : rawptr, Size : u64) -> LLVMRemarkParserRef ---;

    @(link_name="LLVMRemarkParserGetNext")
    LLVMRemarkParserGetNext :: proc(Parser : LLVMRemarkParserRef) -> LLVMRemarkEntryRef ---;

    @(link_name="LLVMRemarkParserHasError")
    LLVMRemarkParserHasError :: proc(Parser : LLVMRemarkParserRef) -> LLVMBool ---;

    @(link_name="LLVMRemarkParserGetErrorMessage")
    LLVMRemarkParserGetErrorMessage :: proc(Parser : LLVMRemarkParserRef) -> cstring ---;

    @(link_name="LLVMRemarkParserDispose")
    LLVMRemarkParserDispose :: proc(Parser : LLVMRemarkParserRef) ---;

    @(link_name="LLVMRemarkVersion")
    LLVMRemarkVersion :: proc() -> u32 ---;

    @(link_name="LLVMLoadLibraryPermanently")
    LLVMLoadLibraryPermanently :: proc(Filename : cstring) -> LLVMBool ---;

    @(link_name="LLVMParseCommandLineOptions")
    LLVMParseCommandLineOptions :: proc(argc : _c.int, argv : ^cstring, Overview : cstring) ---;

    @(link_name="LLVMSearchForAddressOfSymbol")
    LLVMSearchForAddressOfSymbol :: proc(symbolName : cstring) -> rawptr ---;

    @(link_name="LLVMAddSymbol")
    LLVMAddSymbol :: proc(symbolName : cstring, symbolValue : rawptr) ---;

    @(link_name="LLVMInitializeAllDisassemblers")
    LLVMInitializeAllDisassemblers :: proc() ---;

    @(link_name="LLVMInitializeNativeTarget")
    LLVMInitializeNativeTarget :: proc() -> LLVMBool ---;

    @(link_name="LLVMInitializeNativeAsmParser")
    LLVMInitializeNativeAsmParser :: proc() -> LLVMBool ---;

    @(link_name="LLVMInitializeNativeAsmPrinter")
    LLVMInitializeNativeAsmPrinter :: proc() -> LLVMBool ---;

    @(link_name="LLVMInitializeNativeDisassembler")
    LLVMInitializeNativeDisassembler :: proc() -> LLVMBool ---;

    @(link_name="LLVMGetModuleDataLayout")
    LLVMGetModuleDataLayout :: proc(M : LLVMModuleRef) -> LLVMTargetDataRef ---;

    @(link_name="LLVMSetModuleDataLayout")
    LLVMSetModuleDataLayout :: proc(M : LLVMModuleRef, DL : LLVMTargetDataRef) ---;

    @(link_name="LLVMCreateTargetData")
    LLVMCreateTargetData :: proc(StringRep : cstring) -> LLVMTargetDataRef ---;

    @(link_name="LLVMDisposeTargetData")
    LLVMDisposeTargetData :: proc(TD : LLVMTargetDataRef) ---;

    @(link_name="LLVMAddTargetLibraryInfo")
    LLVMAddTargetLibraryInfo :: proc(TLI : LLVMTargetLibraryInfoRef, PM : LLVMPassManagerRef) ---;

    @(link_name="LLVMCopyStringRepOfTargetData")
    LLVMCopyStringRepOfTargetData :: proc(TD : LLVMTargetDataRef) -> cstring ---;

    @(link_name="LLVMByteOrder")
    LLVMByteOrder :: proc(TD : LLVMTargetDataRef) -> LLVMByteOrdering ---;

    @(link_name="LLVMPointerSize")
    LLVMPointerSize :: proc(TD : LLVMTargetDataRef) -> _c.uint ---;

    @(link_name="LLVMPointerSizeForAS")
    LLVMPointerSizeForAS :: proc(TD : LLVMTargetDataRef, AS : _c.uint) -> _c.uint ---;

    @(link_name="LLVMIntPtrType")
    LLVMIntPtrType :: proc(TD : LLVMTargetDataRef) -> LLVMTypeRef ---;

    @(link_name="LLVMIntPtrTypeForAS")
    LLVMIntPtrTypeForAS :: proc(TD : LLVMTargetDataRef, AS : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMIntPtrTypeInContext")
    LLVMIntPtrTypeInContext :: proc(C : LLVMContextRef, TD : LLVMTargetDataRef) -> LLVMTypeRef ---;

    @(link_name="LLVMIntPtrTypeForASInContext")
    LLVMIntPtrTypeForASInContext :: proc(C : LLVMContextRef, TD : LLVMTargetDataRef, AS : _c.uint) -> LLVMTypeRef ---;

    @(link_name="LLVMSizeOfTypeInBits")
    LLVMSizeOfTypeInBits :: proc(TD : LLVMTargetDataRef, Ty : LLVMTypeRef) -> _c.ulonglong ---;

    @(link_name="LLVMStoreSizeOfType")
    LLVMStoreSizeOfType :: proc(TD : LLVMTargetDataRef, Ty : LLVMTypeRef) -> _c.ulonglong ---;

    @(link_name="LLVMABISizeOfType")
    LLVMABISizeOfType :: proc(TD : LLVMTargetDataRef, Ty : LLVMTypeRef) -> _c.ulonglong ---;

    @(link_name="LLVMABIAlignmentOfType")
    LLVMABIAlignmentOfType :: proc(TD : LLVMTargetDataRef, Ty : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMCallFrameAlignmentOfType")
    LLVMCallFrameAlignmentOfType :: proc(TD : LLVMTargetDataRef, Ty : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMPreferredAlignmentOfType")
    LLVMPreferredAlignmentOfType :: proc(TD : LLVMTargetDataRef, Ty : LLVMTypeRef) -> _c.uint ---;

    @(link_name="LLVMPreferredAlignmentOfGlobal")
    LLVMPreferredAlignmentOfGlobal :: proc(TD : LLVMTargetDataRef, GlobalVar : LLVMValueRef) -> _c.uint ---;

    @(link_name="LLVMElementAtOffset")
    LLVMElementAtOffset :: proc(TD : LLVMTargetDataRef, StructTy : LLVMTypeRef, Offset : _c.ulonglong) -> _c.uint ---;

    @(link_name="LLVMOffsetOfElement")
    LLVMOffsetOfElement :: proc(TD : LLVMTargetDataRef, StructTy : LLVMTypeRef, Element : _c.uint) -> _c.ulonglong ---;

    @(link_name="LLVMGetFirstTarget")
    LLVMGetFirstTarget :: proc() -> LLVMTargetRef ---;

    @(link_name="LLVMGetNextTarget")
    LLVMGetNextTarget :: proc(T : LLVMTargetRef) -> LLVMTargetRef ---;

    @(link_name="LLVMGetTargetFromName")
    LLVMGetTargetFromName :: proc(Name : cstring) -> LLVMTargetRef ---;

    @(link_name="LLVMGetTargetFromTriple")
    LLVMGetTargetFromTriple :: proc(Triple : cstring, T : ^LLVMTargetRef, ErrorMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMGetTargetName")
    LLVMGetTargetName :: proc(T : LLVMTargetRef) -> cstring ---;

    @(link_name="LLVMGetTargetDescription")
    LLVMGetTargetDescription :: proc(T : LLVMTargetRef) -> cstring ---;

    @(link_name="LLVMTargetHasJIT")
    LLVMTargetHasJIT :: proc(T : LLVMTargetRef) -> LLVMBool ---;

    @(link_name="LLVMTargetHasTargetMachine")
    LLVMTargetHasTargetMachine :: proc(T : LLVMTargetRef) -> LLVMBool ---;

    @(link_name="LLVMTargetHasAsmBackend")
    LLVMTargetHasAsmBackend :: proc(T : LLVMTargetRef) -> LLVMBool ---;

    @(link_name="LLVMCreateTargetMachine")
    LLVMCreateTargetMachine :: proc(T : LLVMTargetRef, Triple : cstring, CPU : cstring, Features : cstring, Level : LLVMCodeGenOptLevel, Reloc : LLVMRelocMode, CodeModel : LLVMCodeModel) -> LLVMTargetMachineRef ---;

    @(link_name="LLVMDisposeTargetMachine")
    LLVMDisposeTargetMachine :: proc(T : LLVMTargetMachineRef) ---;

    @(link_name="LLVMGetTargetMachineTarget")
    LLVMGetTargetMachineTarget :: proc(T : LLVMTargetMachineRef) -> LLVMTargetRef ---;

    @(link_name="LLVMGetTargetMachineTriple")
    LLVMGetTargetMachineTriple :: proc(T : LLVMTargetMachineRef) -> cstring ---;

    @(link_name="LLVMGetTargetMachineCPU")
    LLVMGetTargetMachineCPU :: proc(T : LLVMTargetMachineRef) -> cstring ---;

    @(link_name="LLVMGetTargetMachineFeatureString")
    LLVMGetTargetMachineFeatureString :: proc(T : LLVMTargetMachineRef) -> cstring ---;

    @(link_name="LLVMCreateTargetDataLayout")
    LLVMCreateTargetDataLayout :: proc(T : LLVMTargetMachineRef) -> LLVMTargetDataRef ---;

    @(link_name="LLVMSetTargetMachineAsmVerbosity")
    LLVMSetTargetMachineAsmVerbosity :: proc(T : LLVMTargetMachineRef, VerboseAsm : LLVMBool) ---;

    @(link_name="LLVMTargetMachineEmitToFile")
    LLVMTargetMachineEmitToFile :: proc(T : LLVMTargetMachineRef, M : LLVMModuleRef, Filename : cstring, codegen : LLVMCodeGenFileType, ErrorMessage : ^cstring) -> LLVMBool ---;

    @(link_name="LLVMTargetMachineEmitToMemoryBuffer")
    LLVMTargetMachineEmitToMemoryBuffer :: proc(T : LLVMTargetMachineRef, M : LLVMModuleRef, codegen : LLVMCodeGenFileType, ErrorMessage : ^cstring, OutMemBuf : ^LLVMMemoryBufferRef) -> LLVMBool ---;

    @(link_name="LLVMGetDefaultTargetTriple")
    LLVMGetDefaultTargetTriple :: proc() -> cstring ---;

    @(link_name="LLVMNormalizeTargetTriple")
    LLVMNormalizeTargetTriple :: proc(triple : cstring) -> cstring ---;

    @(link_name="LLVMGetHostCPUName")
    LLVMGetHostCPUName :: proc() -> cstring ---;

    @(link_name="LLVMGetHostCPUFeatures")
    LLVMGetHostCPUFeatures :: proc() -> cstring ---;

    @(link_name="LLVMAddAnalysisPasses")
    LLVMAddAnalysisPasses :: proc(T : LLVMTargetMachineRef, PM : LLVMPassManagerRef) ---;

}
