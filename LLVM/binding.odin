package LLVM

foreign import _C "LLVM-C.lib"

import _c "core:c"

C_ANALYSIS_H :: 1;
C_BITREADER_H :: 1;
C_BITWRITER_H :: 1;
C_BLAKE3_H :: 1;
_BLAKE3_VERSION_STRING :: "1.3.1";
_BLAKE3_KEY_LEN :: 32;
_BLAKE3_OUT_LEN :: 32;
_BLAKE3_BLOCK_LEN :: 64;
_BLAKE3CHUNK_LEN :: 1024;
_BLAKE3_MAX_DEPTH :: 54;
CCOMDAT_H :: 1;
CCORE_H :: 1;
C_DATATYPES_H :: 1;
C_DEBUGINFO_H :: 1;
C_DEPRECATED_H :: 1;
C_DISASSEMBLER_H :: 1;
Disassembler_Option_UseMarkup :: 1;
Disassembler_Option_PrintImmHex :: 2;
Disassembler_Option_AsmPrinterVariant :: 4;
Disassembler_Option_SetInstrComments :: 8;
Disassembler_Option_PrintLatency :: 16;
C_DISASSEMBLERTYPES_H :: 1;
Disassembler_VariantKind_None :: 0;
Disassembler_VariantKind_ARM_HI16 :: 1;
Disassembler_VariantKind_ARM_LO16 :: 2;
Disassembler_VariantKind_ARM64_PAGE :: 1;
Disassembler_VariantKind_ARM64_PAGEOFF :: 2;
Disassembler_VariantKind_ARM64_GOTPAGE :: 3;
Disassembler_VariantKind_ARM64_GOTPAGEOFF :: 4;
Disassembler_VariantKind_ARM64_TLVP :: 5;
Disassembler_VariantKind_ARM64_TLVOFF :: 6;
Disassembler_ReferenceType_InOut_None :: 0;
Disassembler_ReferenceType_In_Branch :: 1;
Disassembler_ReferenceType_In_PCrel_Load :: 2;
Disassembler_ReferenceType_In_ARM64_ADRP :: 4294967297;
Disassembler_ReferenceType_In_ARM64_ADDXri :: 4294967298;
Disassembler_ReferenceType_In_ARM64_LDRXui :: 4294967299;
Disassembler_ReferenceType_In_ARM64_LDRXl :: 4294967300;
Disassembler_ReferenceType_In_ARM64_ADR :: 4294967301;
Disassembler_ReferenceType_Out_SymbolStub :: 1;
Disassembler_ReferenceType_Out_LitPool_SymAddr :: 2;
Disassembler_ReferenceType_Out_LitPoolCstrAddr :: 3;
Disassembler_ReferenceType_Out_ObjcCFString_Ref :: 4;
Disassembler_ReferenceType_Out_Objc_Message :: 5;
Disassembler_ReferenceType_Out_Objc_Message_Ref :: 6;
Disassembler_ReferenceType_Out_Objc_Selector_Ref :: 7;
Disassembler_ReferenceType_Out_ObjcClass_Ref :: 8;
Disassembler_ReferenceType_DeMangled_Name :: 9;
C_ERROR_H :: 1;
ErrorSuccess :: 0;
C_ERRORHANDLING_H :: 1;
C_EXECUTIONENGINE_H :: 1;
C_EXTERNC_H :: 1;
C_IRREADER_H :: 1;
C_LINKER_H :: 1;
C_LLJIT_H :: 1;
C_LTO_H :: 1;
LTO_API_VERSION :: 29;
C_OBJECT_H :: 1;
C_ORC_H :: 1;
C_ORCEE_H :: 1;
C_REMARKS_H :: 1;
REMARKS_API_VERSION :: 1;
C_SUPPORT_H :: 1;
C_TARGET_H :: 1;
C_TARGETMACHINE_H :: 1;
C_TYPES_H :: 1;

AttributeIndex :: _c.uint;
DiagnosticHandler :: #type proc(unamed0 : DiagnosticInfoRef, unamed1 : rawptr);
YieldCallback :: #type proc(unamed0 : ContextRef, unamed1 : rawptr);
ssize_t :: i64;
MetadataKind :: _c.uint;
DWARFTypeEncoding :: _c.uint;
DisasmContextRef :: rawptr;
OpInfoCallback :: #type proc(DisInfo : rawptr, PC : u64, Offset : u64, OpSize : u64, InstSize : u64, TagType : _c.int, TagBuf : rawptr) -> _c.int;
SymbolLookupCallback :: #type proc(DisInfo : rawptr, ReferenceValue : u64, ReferenceType : ^u64, ReferencePC : u64, ReferenceName : ^cstring) -> cstring;
ErrorRef :: ^OpaqueError;
ErrorTypeId :: rawptr;
FatalErrorHandler :: #type proc(Reason : cstring);
GenericValueRef :: ^OpaqueGenericValue;
ExecutionEngineRef :: ^OpaqueExecutionEngine;
MCJITMemoryManagerRef :: ^OpaqueMCJITMemoryManager;
MemoryManagerAllocateCodeSectionCallback :: #type proc(Opaque : rawptr, Size : _c.uintptr_t, Alignment : _c.uint, SectionID : _c.uint, SectionName : cstring) -> ^u8;
MemoryManagerAllocateDataSectionCallback :: #type proc(Opaque : rawptr, Size : _c.uintptr_t, Alignment : _c.uint, SectionID : _c.uint, SectionName : cstring, IsReadOnly : Bool) -> ^u8;
MemoryManagerFinalizeMemoryCallback :: #type proc(Opaque : rawptr, ErrMsg : ^cstring) -> Bool;
MemoryManagerDestroyCallback :: #type proc(Opaque : rawptr);
OrcLLJITBuilderObjectLinkingLayerCreatorFunction :: #type proc(Ctx : rawptr, ES : OrcExecutionSessionRef, Triple : cstring) -> OrcObjectLayerRef;
OrcLLJITBuilderRef :: ^OrcOpaqueLLJITBuilder;
OrcLLJITRef :: ^OrcOpaqueLLJIT;
lto_bool_t :: bool;
lto_module_t :: ^OpaqueLTOModule;
lto_code_gen_t :: ^OpaqueLTOCodeGenerator;
thinlto_code_gen_t :: ^OpaqueThinLTOCodeGenerator;
lto_diagnostic_handler_t :: #type proc(severity : lto_codegen_diagnostic_severity_t, diag : cstring, ctxt : rawptr);
lto_input_t :: ^OpaqueLTOInput;
SectionIteratorRef :: ^OpaqueSectionIterator;
SymbolIteratorRef :: ^OpaqueSymbolIterator;
RelocationIteratorRef :: ^OpaqueRelocationIterator;
ObjectFileRef :: ^OpaqueObjectFile;
OrcJITTargetAddress :: u64;
OrcExecutorAddress :: u64;
JITSymbolTargetFlags :: u8;
OrcExecutionSessionRef :: ^OrcOpaqueExecutionSession;
OrcErrorReporterFunction :: #type proc(Ctx : rawptr, Err : ErrorRef);
OrcSymbolStringPoolRef :: ^OrcOpaqueSymbolStringPool;
OrcSymbolStringPoolEntryRef :: ^OrcOpaqueSymbolStringPoolEntry;
OrcCSymbolFlagsMapPairs :: ^OrcCSymbolFlagsMapPair;
OrcCSymbolMapPairs :: ^OrcCSymbolMapPair;
OrcCSymbolAliasMapPairs :: ^OrcCSymbolAliasMapPair;
OrcJITDylibRef :: ^OrcOpaqueJITDylib;
OrcCDependenceMapPairs :: ^OrcCDependenceMapPair;
OrcCJITDylibSearchOrder :: ^OrcCJITDylibSearchOrderElement;
OrcCLookupSet :: ^OrcCLookupSetElement;
OrcMaterializationUnitRef :: ^OrcOpaqueMaterializationUnit;
OrcMaterializationResponsibilityRef :: ^OrcOpaqueMaterializationResponsibility;
OrcMaterializationUnitMaterializeFunction :: #type proc(Ctx : rawptr, MR : OrcMaterializationResponsibilityRef);
OrcMaterializationUnitDiscardFunction :: #type proc(Ctx : rawptr, JD : OrcJITDylibRef, Symbol : OrcSymbolStringPoolEntryRef);
OrcMaterializationUnitDestroyFunction :: #type proc(Ctx : rawptr);
OrcResourceTrackerRef :: ^OrcOpaqueResourceTracker;
OrcDefinitionGeneratorRef :: ^OrcOpaqueDefinitionGenerator;
OrcLookupStateRef :: ^OrcOpaqueLookupState;
OrcCAPIDefinitionGeneratorTryToGenerateFunction :: #type proc(GeneratorObj : OrcDefinitionGeneratorRef, Ctx : rawptr, LookupState : ^OrcLookupStateRef, Kind : OrcLookupKind, JD : OrcJITDylibRef, JDLookupFlags : OrcJITDylibLookupFlags, LookupSet : OrcCLookupSet, LookupSetSize : _c.size_t) -> ErrorRef;
OrcDisposeCAPIDefinitionGeneratorFunction :: #type proc(Ctx : rawptr);
OrcSymbolPredicate :: #type proc(Ctx : rawptr, Sym : OrcSymbolStringPoolEntryRef) -> _c.int;
OrcThreadSafeContextRef :: ^OrcOpaqueThreadSafeContext;
OrcThreadSafeModuleRef :: ^OrcOpaqueThreadSafeModule;
OrcGenericIRModuleOperationFunction :: #type proc(Ctx : rawptr, M : ModuleRef) -> ErrorRef;
OrcJITTargetMachineBuilderRef :: ^OrcOpaqueJITTargetMachineBuilder;
OrcObjectLayerRef :: ^OrcOpaqueObjectLayer;
OrcObjectLinkingLayerRef :: ^OrcOpaqueObjectLinkingLayer;
OrcIRTransformLayerRef :: ^OrcOpaqueIRTransformLayer;
OrcIRTransformLayerTransformFunction :: #type proc(Ctx : rawptr, ModInOut : ^OrcThreadSafeModuleRef, MR : OrcMaterializationResponsibilityRef) -> ErrorRef;
OrcObjectTransformLayerRef :: ^OrcOpaqueObjectTransformLayer;
OrcObjectTransformLayerTransformFunction :: #type proc(Ctx : rawptr, ObjInOut : ^MemoryBufferRef) -> ErrorRef;
OrcIndirectStubsManagerRef :: ^OrcOpaqueIndirectStubsManager;
OrcLazyCallThroughManagerRef :: ^OrcOpaqueLazyCallThroughManager;
OrcDumpObjectsRef :: ^OrcOpaqueDumpObjects;
OrcExecutionSessionLookupHandleResultFunction :: #type proc(Err : ErrorRef, Result : OrcCSymbolMapPairs, NumPairs : _c.size_t, Ctx : rawptr);
MemoryManagerCreateContextCallback :: #type proc(CtxCtx : rawptr) -> rawptr;
MemoryManagerNotifyTerminatingCallback :: #type proc(CtxCtx : rawptr);
RemarkStringRef :: ^RemarkOpaqueString;
RemarkDebugLocRef :: ^RemarkOpaqueDebugLoc;
RemarkArgRef :: ^RemarkOpaqueArg;
RemarkEntryRef :: ^RemarkOpaqueEntry;
RemarkParserRef :: ^RemarkOpaqueParser;
TargetDataRef :: ^OpaqueTargetData;
TargetLibraryInfoRef :: ^OpaqueTargetLibraryInfotData;
TargetMachineRef :: ^OpaqueTargetMachine;
TargetRef :: ^Target;
Bool :: _c.int;
MemoryBufferRef :: ^OpaqueMemoryBuffer;
ContextRef :: ^OpaqueContext;
ModuleRef :: ^OpaqueModule;
TypeRef :: ^OpaqueType;
ValueRef :: ^OpaqueValue;
BasicBlockRef :: ^OpaqueBasicBlock;
MetadataRef :: ^OpaqueMetadata;
NamedMDNodeRef :: ^OpaqueNamedMDNode;
ValueMetadataEntry :: OpaqueValueMetadataEntry;
BuilderRef :: ^OpaqueBuilder;
DIBuilderRef :: ^OpaqueDIBuilder;
ModuleProviderRef :: ^OpaqueModuleProvider;
PassManagerRef :: ^OpaquePassManager;
UseRef :: ^OpaqueUse;
AttributeRef :: ^OpaqueAttributeRef;
DiagnosticInfoRef :: ^OpaqueDiagnosticInfo;
ComdatRef :: ^Comdat;
ModuleFlagEntry :: OpaqueModuleFlagEntry;
JITEventListenerRef :: ^OpaqueJITEventListener;
BinaryRef :: ^OpaqueBinary;

VerifierFailureAction :: enum i32 {
    AbortProcessAction,
    PrintMessageAction,
    ReturnStatusAction,
};

ComdatSelectionKind :: enum i32 {
    AnyComdatSelectionKind,
    ExactMatchComdatSelectionKind,
    LargestComdatSelectionKind,
    NoDeduplicateComdatSelectionKind,
    SameSizeComdatSelectionKind,
};

Opcode :: enum i32 {
    Ret = 1,
    Br = 2,
    Switch = 3,
    IndirectBr = 4,
    Invoke = 5,
    Unreachable = 7,
    CallBr = 67,
    FNeg = 66,
    Add = 8,
    FAdd = 9,
    Sub = 10,
    FSub = 11,
    Mul = 12,
    FMul = 13,
    UDiv = 14,
    SDiv = 15,
    FDiv = 16,
    URem = 17,
    SRem = 18,
    FRem = 19,
    Shl = 20,
    LShr = 21,
    AShr = 22,
    And = 23,
    Or = 24,
    Xor = 25,
    Alloca = 26,
    Load = 27,
    Store = 28,
    GetElementPtr = 29,
    Trunc = 30,
    ZExt = 31,
    SExt = 32,
    FPToUI = 33,
    FPToSI = 34,
    UIToFP = 35,
    SIToFP = 36,
    FPTrunc = 37,
    FPExt = 38,
    PtrToInt = 39,
    IntToPtr = 40,
    BitCast = 41,
    AddrSpaceCast = 60,
    ICmp = 42,
    FCmp = 43,
    PHI = 44,
    Call = 45,
    Select = 46,
    UserOp1 = 47,
    UserOp2 = 48,
    VAArg = 49,
    ExtractElement = 50,
    InsertElement = 51,
    ShuffleVector = 52,
    ExtractValue = 53,
    InsertValue = 54,
    Freeze = 68,
    Fence = 55,
    AtomicCmpXchg = 56,
    AtomicRMW = 57,
    Resume = 58,
    LandingPad = 59,
    CleanupRet = 61,
    CatchRet = 62,
    CatchPad = 63,
    CleanupPad = 64,
    CatchSwitch = 65,
};

TypeKind :: enum i32 {
    VoidTypeKind,
    HalfTypeKind,
    FloatTypeKind,
    DoubleTypeKind,
    X86_FP80TypeKind,
    FP128TypeKind,
    PPC_FP128TypeKind,
    LabelTypeKind,
    IntegerTypeKind,
    FunctionTypeKind,
    StructTypeKind,
    ArrayTypeKind,
    PointerTypeKind,
    VectorTypeKind,
    MetadataTypeKind,
    X86_MMXTypeKind,
    TokenTypeKind,
    ScalableVectorTypeKind,
    BFloatTypeKind,
    X86_AMXTypeKind,
    TargetExtTypeKind,
};

Linkage :: enum i32 {
    ExternalLinkage,
    AvailableExternallyLinkage,
    LinkOnceAnyLinkage,
    LinkOnceODRLinkage,
    LinkOnceODRAutoHideLinkage,
    WeakAnyLinkage,
    WeakODRLinkage,
    AppendingLinkage,
    InternalLinkage,
    PrivateLinkage,
    DLLImportLinkage,
    DLLExportLinkage,
    ExternalWeakLinkage,
    GhostLinkage,
    CommonLinkage,
    LinkerPrivateLinkage,
    LinkerPrivateWeakLinkage,
};

Visibility :: enum i32 {
    DefaultVisibility,
    HiddenVisibility,
    ProtectedVisibility,
};

UnnamedAddr :: enum i32 {
    NoUnnamedAddr,
    LocalUnnamedAddr,
    GlobalUnnamedAddr,
};

DLLStorageClass :: enum i32 {
    DefaultStorageClass = 0,
    DLLImportStorageClass = 1,
    DLLExportStorageClass = 2,
};

CallConv :: enum i32 {
    CCallConv = 0,
    FastCallConv = 8,
    ColdCallConv = 9,
    GHCCallConv = 10,
    HiPECallConv = 11,
    WebKitJSCallConv = 12,
    AnyRegCallConv = 13,
    PreserveMostCallConv = 14,
    PreserveAllCallConv = 15,
    SwiftCallConv = 16,
    CXXFASTTLSCallConv = 17,
    X86StdcallCallConv = 64,
    X86FastcallCallConv = 65,
    ARMAPCSCallConv = 66,
    ARMAAPCSCallConv = 67,
    ARMAAPCSVFPCallConv = 68,
    MSP430INTRCallConv = 69,
    X86ThisCallCallConv = 70,
    PTXKernelCallConv = 71,
    PTXDeviceCallConv = 72,
    SPIRFUNCCallConv = 75,
    SPIRKERNELCallConv = 76,
    IntelOCLBICallConv = 77,
    X8664SysVCallConv = 78,
    Win64CallConv = 79,
    X86VectorCallCallConv = 80,
    HHVMCallConv = 81,
    HHVMCCallConv = 82,
    X86INTRCallConv = 83,
    AVRINTRCallConv = 84,
    AVRSIGNALCallConv = 85,
    AVRBUILTINCallConv = 86,
    AMDGPUVSCallConv = 87,
    AMDGPUGSCallConv = 88,
    AMDGPUPSCallConv = 89,
    AMDGPUCSCallConv = 90,
    AMDGPUKERNELCallConv = 91,
    X86RegCallCallConv = 92,
    AMDGPUHSCallConv = 93,
    MSP430BUILTINCallConv = 94,
    AMDGPULSCallConv = 95,
    AMDGPUESCallConv = 96,
};

ValueKind :: enum i32 {
    ArgumentValueKind,
    BasicBlockValueKind,
    MemoryUseValueKind,
    MemoryDefValueKind,
    MemoryPhiValueKind,
    FunctionValueKind,
    GlobalAliasValueKind,
    GlobalIFuncValueKind,
    GlobalVariableValueKind,
    BlockAddressValueKind,
    ConstantExprValueKind,
    ConstantArrayValueKind,
    ConstantStructValueKind,
    ConstantVectorValueKind,
    UndefValueValueKind,
    ConstantAggregateZeroValueKind,
    ConstantDataArrayValueKind,
    ConstantDataVectorValueKind,
    ConstantIntValueKind,
    ConstantFPValueKind,
    ConstantPointerNullValueKind,
    ConstantTokenNoneValueKind,
    MetadataAsValueValueKind,
    InlineAsmValueKind,
    InstructionValueKind,
    PoisonValueValueKind,
    ConstantTargetNoneValueKind,
};

IntPredicate :: enum i32 {
    IntEQ = 32,
    IntNE,
    IntUGT,
    IntUGE,
    IntULT,
    IntULE,
    IntSGT,
    IntSGE,
    IntSLT,
    IntSLE,
};

RealPredicate :: enum i32 {
    RealPredicateFalse,
    RealOEQ,
    RealOGT,
    RealOGE,
    RealOLT,
    RealOLE,
    RealONE,
    RealORD,
    RealUNO,
    RealUEQ,
    RealUGT,
    RealUGE,
    RealULT,
    RealULE,
    RealUNE,
    RealPredicateTrue,
};

LandingPadClauseTy :: enum i32 {
    LandingPadCatch,
    LandingPadFilter,
};

ThreadLocalMode :: enum i32 {
    NotThreadLocal = 0,
    GeneralDynamicTLSModel,
    LocalDynamicTLSModel,
    InitialExecTLSModel,
    LocalExecTLSModel,
};

AtomicOrdering :: enum i32 {
    AtomicOrderingNotAtomic = 0,
    AtomicOrderingUnordered = 1,
    AtomicOrderingMonotonic = 2,
    AtomicOrderingAcquire = 4,
    AtomicOrderingRelease = 5,
    AtomicOrderingAcquireRelease = 6,
    AtomicOrderingSequentiallyConsistent = 7,
};

AtomicRMWBinOp :: enum i32 {
    AtomicRMWBinOpXchg,
    AtomicRMWBinOpAdd,
    AtomicRMWBinOpSub,
    AtomicRMWBinOpAnd,
    AtomicRMWBinOpNand,
    AtomicRMWBinOpOr,
    AtomicRMWBinOpXor,
    AtomicRMWBinOpMax,
    AtomicRMWBinOpMin,
    AtomicRMWBinOpUMax,
    AtomicRMWBinOpUMin,
    AtomicRMWBinOpFAdd,
    AtomicRMWBinOpFSub,
    AtomicRMWBinOpFMax,
    AtomicRMWBinOpFMin,
};

DiagnosticSeverity :: enum i32 {
    DSError,
    DSWarning,
    DSRemark,
    DSNote,
};

InlineAsmDialect :: enum i32 {
    InlineAsmDialectATT,
    InlineAsmDialectIntel,
};

ModuleFlagBehavior :: enum i32 {
    ModuleFlagBehaviorError,
    ModuleFlagBehaviorWarning,
    ModuleFlagBehaviorRequire,
    ModuleFlagBehaviorOverride,
    ModuleFlagBehaviorAppend,
    ModuleFlagBehaviorAppendUnique,
};

AnonymousEnum19 :: enum i32 {
    AttributeReturnIndex = 0,
    AttributeFunctionIndex = -1,
};

DIFlags :: enum i32 {
    DIFlagZero = 0,
    DIFlagPrivate = 1,
    DIFlagProtected = 2,
    DIFlagPublic = 3,
    DIFlagFwdDecl = 4,
    DIFlagAppleBlock = 8,
    DIFlagReservedBit4 = 16,
    DIFlagVirtual = 32,
    DIFlagArtificial = 64,
    DIFlagExplicit = 128,
    DIFlagPrototyped = 256,
    DIFlagObjcClassComplete = 512,
    DIFlagObjectPointer = 1024,
    DIFlagVector = 2048,
    DIFlagStaticMember = 4096,
    DIFlagLValueReference = 8192,
    DIFlagRValueReference = 16384,
    DIFlagReserved = 32768,
    DIFlagSingleInheritance = 65536,
    DIFlagMultipleInheritance = 131072,
    DIFlagVirtualInheritance = 196608,
    DIFlagIntroducedVirtual = 262144,
    DIFlagBitField = 524288,
    DIFlagNoReturn = 1048576,
    DIFlagTypePassByValue = 4194304,
    DIFlagTypePassByReference = 8388608,
    DIFlagEnumClass = 16777216,
    DIFlagFixedEnum = 16777216,
    DIFlagThunk = 33554432,
    DIFlagNonTrivial = 67108864,
    DIFlagBigEndian = 134217728,
    DIFlagLittleEndian = 268435456,
    DIFlagIndirectVirtualBase = 4,
    DIFlagAccessibility = 1,
    DIFlagPtrToMemberRep = 65536,
};

DWARFSourceLanguage :: enum i32 {
    DWARFSourceLanguageC89,
    DWARFSourceLanguageC,
    DWARFSourceLanguageAda83,
    DWARFSourceLanguageC_plus_plus,
    DWARFSourceLanguageCobol74,
    DWARFSourceLanguageCobol85,
    DWARFSourceLanguageFortran77,
    DWARFSourceLanguageFortran90,
    DWARFSourceLanguagePascal83,
    DWARFSourceLanguageModula2,
    DWARFSourceLanguageJava,
    DWARFSourceLanguageC99,
    DWARFSourceLanguageAda95,
    DWARFSourceLanguageFortran95,
    DWARFSourceLanguagePLI,
    DWARFSourceLanguageObjC,
    DWARFSourceLanguageObjC_plus_plus,
    DWARFSourceLanguageUPC,
    DWARFSourceLanguageD,
    DWARFSourceLanguagePython,
    DWARFSourceLanguageOpenCL,
    DWARFSourceLanguageGo,
    DWARFSourceLanguageModula3,
    DWARFSourceLanguageHaskell,
    DWARFSourceLanguageC_plus_plus_03,
    DWARFSourceLanguageC_plus_plus_11,
    DWARFSourceLanguageOCaml,
    DWARFSourceLanguageRust,
    DWARFSourceLanguageC11,
    DWARFSourceLanguageSwift,
    DWARFSourceLanguageJulia,
    DWARFSourceLanguageDylan,
    DWARFSourceLanguageC_plus_plus_14,
    DWARFSourceLanguageFortran03,
    DWARFSourceLanguageFortran08,
    DWARFSourceLanguageRenderScript,
    DWARFSourceLanguageBLISS,
    DWARFSourceLanguageKotlin,
    DWARFSourceLanguageZig,
    DWARFSourceLanguageCrystal,
    DWARFSourceLanguageC_plus_plus_17,
    DWARFSourceLanguageC_plus_plus_20,
    DWARFSourceLanguageC17,
    DWARFSourceLanguageFortran18,
    DWARFSourceLanguageAda2005,
    DWARFSourceLanguageAda2012,
    DWARFSourceLanguageMojo,
    DWARFSourceLanguageMips_Assembler,
    DWARFSourceLanguageGOOGLE_RenderScript,
    DWARFSourceLanguageBORLAND_Delphi,
};

DWARFEmissionKind :: enum i32 {
    DWARFEmissionNone = 0,
    DWARFEmissionFull,
    DWARFEmissionLineTablesOnly,
};

AnonymousEnum23 :: enum i32 {
    MDStringMetadataKind,
    ConstantAsMetadataMetadataKind,
    LocalAsMetadataMetadataKind,
    DistinctMDOperandPlaceholderMetadataKind,
    MDTupleMetadataKind,
    DILocationMetadataKind,
    DIExpressionMetadataKind,
    DIGlobalVariableExpressionMetadataKind,
    GenericDINodeMetadataKind,
    DISubrangeMetadataKind,
    DIEnumeratorMetadataKind,
    DIBasicTypeMetadataKind,
    DIDerivedTypeMetadataKind,
    DICompositeTypeMetadataKind,
    DISubroutineTypeMetadataKind,
    DIFileMetadataKind,
    DICompileUnitMetadataKind,
    DISubprogramMetadataKind,
    DILexicalBlockMetadataKind,
    DILexicalBlockFileMetadataKind,
    DINamespaceMetadataKind,
    DIModuleMetadataKind,
    DITemplateTypeParameterMetadataKind,
    DITemplateValueParameterMetadataKind,
    DIGlobalVariableMetadataKind,
    DILocalVariableMetadataKind,
    DILabelMetadataKind,
    DIObjCPropertyMetadataKind,
    DIImportedEntityMetadataKind,
    DIMacroMetadataKind,
    DIMacroFileMetadataKind,
    DICommonBlockMetadataKind,
    DIStringTypeMetadataKind,
    DIGenericSubrangeMetadataKind,
    DIArgListMetadataKind,
    DIAssignIDMetadataKind,
};

DWARFMacinfoRecordType :: enum i32 {
    DWARFMacinfoRecordTypeDefine = 1,
    DWARFMacinfoRecordTypeMacro = 2,
    DWARFMacinfoRecordTypeStartFile = 3,
    DWARFMacinfoRecordTypeEndFile = 4,
    DWARFMacinfoRecordTypeVendorExt = 255,
};

LinkerMode :: enum i32 {
    LinkerDestroySource = 0,
    LinkerPreserveSource_Removed = 1,
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

BinaryType :: enum i32 {
    BinaryTypeArchive,
    BinaryTypeMachOUniversalBinary,
    BinaryTypeCOFFImportFile,
    BinaryTypeIR,
    BinaryTypeWinRes,
    BinaryTypeCOFF,
    BinaryTypeELF32L,
    BinaryTypeELF32B,
    BinaryTypeELF64L,
    BinaryTypeELF64B,
    BinaryTypeMachO32L,
    BinaryTypeMachO32B,
    BinaryTypeMachO64L,
    BinaryTypeMachO64B,
    BinaryTypeWasm,
    BinaryTypeOffload,
};

JITSymbolGenericFlags :: enum i32 {
    JITSymbolGenericFlagsNone = 0,
    JITSymbolGenericFlagsExported = 1,
    JITSymbolGenericFlagsWeak = 2,
    JITSymbolGenericFlagsCallable = 4,
    JITSymbolGenericFlagsMaterializationSideEffectsOnly = 8,
};

OrcLookupKind :: enum i32 {
    OrcLookupKindStatic,
    OrcLookupKindDLSym,
};

OrcJITDylibLookupFlags :: enum i32 {
    OrcJITDylibLookupFlagsMatchExportedSymbolsOnly,
    OrcJITDylibLookupFlagsMatchAllSymbols,
};

OrcSymbolLookupFlags :: enum i32 {
    OrcSymbolLookupFlagsRequiredSymbol,
    OrcSymbolLookupFlagsWeaklyReferencedSymbol,
};

RemarkType :: enum i32 {
    RemarkTypeUnknown,
    RemarkTypePassed,
    RemarkTypeMissed,
    RemarkTypeAnalysis,
    RemarkTypeAnalysisFPCommute,
    RemarkTypeAnalysisAliasing,
    RemarkTypeFailure,
};

ByteOrdering :: enum i32 {
    BigEndian,
    LittleEndian,
};

CodeGenOptLevel :: enum i32 {
    CodeGenLevelNone,
    CodeGenLevelLess,
    CodeGenLevelDefault,
    CodeGenLevelAggressive,
};

RelocMode :: enum i32 {
    RelocDefault,
    RelocStatic,
    RelocPIC,
    RelocDynamicNoPic,
    RelocROPI,
    RelocRWPI,
    RelocROPI_RWPI,
};

CodeModel :: enum i32 {
    CodeModelDefault,
    CodeModelJITDefault,
    CodeModelTiny,
    CodeModelSmall,
    CodeModelKernel,
    CodeModelMedium,
    CodeModelLarge,
};

CodeGenFileType :: enum i32 {
    AssemblyFile,
    ObjectFile,
};

_blake3_chunk_state :: struct {
    cv : [8]u32,
    chunk_counter : u64,
    buf : [64]u8,
    buf_len : u8,
    blocks_compressed : u8,
    flags : u8,
};

_blake3_hasher :: struct {
    key : [8]u32,
    chunk : _blake3_chunk_state,
    cv_stack_len : u8,
    cv_stack : [1760]u8,
};

OpInfoSymbol1 :: struct {
    Present : u64,
    Name : cstring,
    Value : u64,
};

OpInfo1 :: struct {
    AddSymbol : OpInfoSymbol1,
    SubtractSymbol : OpInfoSymbol1,
    Value : u64,
    VariantKind : u64,
};

OpaqueError :: struct {};

OpaqueGenericValue :: struct {};

OpaqueExecutionEngine :: struct {};

OpaqueMCJITMemoryManager :: struct {};

MCJITCompilerOptions :: struct {
    OptLevel : _c.uint,
    CodeModel : CodeModel,
    NoFramePointerElim : Bool,
    EnableFastISel : Bool,
    MCJMM : MCJITMemoryManagerRef,
};

OrcOpaqueLLJITBuilder :: struct {};

OrcOpaqueLLJIT :: struct {};

OpaqueLTOModule :: struct {};

OpaqueLTOCodeGenerator :: struct {};

OpaqueThinLTOCodeGenerator :: struct {};

OpaqueLTOInput :: struct {};

LTOObjectBuffer :: struct {
    Buffer : cstring,
    Size : _c.size_t,
};

OpaqueSectionIterator :: struct {};

OpaqueSymbolIterator :: struct {};

OpaqueRelocationIterator :: struct {};

OpaqueObjectFile :: struct {};

JITSymbolFlags :: struct {
    GenericFlags : u8,
    TargetFlags : u8,
};

JITEvaluatedSymbol :: struct {
    Address : u64,
    Flags : JITSymbolFlags,
};

OrcOpaqueExecutionSession :: struct {};

OrcOpaqueSymbolStringPool :: struct {};

OrcOpaqueSymbolStringPoolEntry :: struct {};

OrcCSymbolFlagsMapPair :: struct {
    Name : OrcSymbolStringPoolEntryRef,
    Flags : JITSymbolFlags,
};

OrcCSymbolMapPair :: struct {
    Name : OrcSymbolStringPoolEntryRef,
    Sym : JITEvaluatedSymbol,
};

OrcCSymbolAliasMapEntry :: struct {
    Name : OrcSymbolStringPoolEntryRef,
    Flags : JITSymbolFlags,
};

OrcCSymbolAliasMapPair :: struct {
    Name : OrcSymbolStringPoolEntryRef,
    Entry : OrcCSymbolAliasMapEntry,
};

OrcOpaqueJITDylib :: struct {};

OrcCSymbolsList :: struct {
    Symbols : ^OrcSymbolStringPoolEntryRef,
    Length : _c.size_t,
};

OrcCDependenceMapPair :: struct {
    JD : OrcJITDylibRef,
    Names : OrcCSymbolsList,
};

OrcCJITDylibSearchOrderElement :: struct {
    JD : OrcJITDylibRef,
    JDLookupFlags : OrcJITDylibLookupFlags,
};

OrcCLookupSetElement :: struct {
    Name : OrcSymbolStringPoolEntryRef,
    LookupFlags : OrcSymbolLookupFlags,
};

OrcOpaqueMaterializationUnit :: struct {};

OrcOpaqueMaterializationResponsibility :: struct {};

OrcOpaqueResourceTracker :: struct {};

OrcOpaqueDefinitionGenerator :: struct {};

OrcOpaqueLookupState :: struct {};

OrcOpaqueThreadSafeContext :: struct {};

OrcOpaqueThreadSafeModule :: struct {};

OrcOpaqueJITTargetMachineBuilder :: struct {};

OrcOpaqueObjectLayer :: struct {};

OrcOpaqueObjectLinkingLayer :: struct {};

OrcOpaqueIRTransformLayer :: struct {};

OrcOpaqueObjectTransformLayer :: struct {};

OrcOpaqueIndirectStubsManager :: struct {};

OrcOpaqueLazyCallThroughManager :: struct {};

OrcOpaqueDumpObjects :: struct {};

RemarkOpaqueString :: struct {};

RemarkOpaqueDebugLoc :: struct {};

RemarkOpaqueArg :: struct {};

RemarkOpaqueEntry :: struct {};

RemarkOpaqueParser :: struct {};

OpaqueTargetData :: struct {};

OpaqueTargetLibraryInfotData :: struct {};

OpaqueTargetMachine :: struct {};

Target :: struct {};

OpaqueMemoryBuffer :: struct {};

OpaqueContext :: struct {};

OpaqueModule :: struct {};

OpaqueType :: struct {};

OpaqueValue :: struct {};

OpaqueBasicBlock :: struct {};

OpaqueMetadata :: struct {};

OpaqueNamedMDNode :: struct {};

OpaqueValueMetadataEntry :: struct {};

OpaqueBuilder :: struct {};

OpaqueDIBuilder :: struct {};

OpaqueModuleProvider :: struct {};

OpaquePassManager :: struct {};

OpaqueUse :: struct {};

OpaqueAttributeRef :: struct {};

OpaqueDiagnosticInfo :: struct {};

Comdat :: struct {};

OpaqueModuleFlagEntry :: struct {};

OpaqueJITEventListener :: struct {};

OpaqueBinary :: struct {};

@(default_calling_convention="c")
foreign _C {

    @(link_name="LLVMVerifyModule")
    VerifyModule :: proc(M : ModuleRef, Action : VerifierFailureAction, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMVerifyFunction")
    VerifyFunction :: proc(Fn : ValueRef, Action : VerifierFailureAction) -> Bool ---;

    @(link_name="LLVMViewFunctionCFG")
    ViewFunctionCFG :: proc(Fn : ValueRef) ---;

    @(link_name="LLVMViewFunctionCFGOnly")
    ViewFunctionCFGOnly :: proc(Fn : ValueRef) ---;

    @(link_name="LLVMParseBitcode")
    ParseBitcode :: proc(MemBuf : MemoryBufferRef, OutModule : ^ModuleRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMParseBitcode2")
    ParseBitcode2 :: proc(MemBuf : MemoryBufferRef, OutModule : ^ModuleRef) -> Bool ---;

    @(link_name="LLVMParseBitcodeInContext")
    ParseBitcodeInContext :: proc(ContextRef : ContextRef, MemBuf : MemoryBufferRef, OutModule : ^ModuleRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMParseBitcodeInContext2")
    ParseBitcodeInContext2 :: proc(ContextRef : ContextRef, MemBuf : MemoryBufferRef, OutModule : ^ModuleRef) -> Bool ---;

    @(link_name="LLVMGetBitcodeModuleInContext")
    GetBitcodeModuleInContext :: proc(ContextRef : ContextRef, MemBuf : MemoryBufferRef, OutM : ^ModuleRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMGetBitcodeModuleInContext2")
    GetBitcodeModuleInContext2 :: proc(ContextRef : ContextRef, MemBuf : MemoryBufferRef, OutM : ^ModuleRef) -> Bool ---;

    @(link_name="LLVMGetBitcodeModule")
    GetBitcodeModule :: proc(MemBuf : MemoryBufferRef, OutM : ^ModuleRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMGetBitcodeModule2")
    GetBitcodeModule2 :: proc(MemBuf : MemoryBufferRef, OutM : ^ModuleRef) -> Bool ---;

    @(link_name="LLVMWriteBitcodeToFile")
    WriteBitcodeToFile :: proc(M : ModuleRef, Path : cstring) -> _c.int ---;

    @(link_name="LLVMWriteBitcodeToFD")
    WriteBitcodeToFD :: proc(M : ModuleRef, FD : _c.int, ShouldClose : _c.int, Unbuffered : _c.int) -> _c.int ---;

    @(link_name="LLVMWriteBitcodeToFileHandle")
    WriteBitcodeToFileHandle :: proc(M : ModuleRef, Handle : _c.int) -> _c.int ---;

    @(link_name="LLVMWriteBitcodeToMemoryBuffer")
    WriteBitcodeToMemoryBuffer :: proc(M : ModuleRef) -> MemoryBufferRef ---;

    @(link_name="llvm_blake3_version")
    _blake3_version :: proc() -> cstring ---;

    @(link_name="llvm_blake3_hasher_init")
    _blake3_hasher_init :: proc(self : ^_blake3_hasher) ---;

    @(link_name="llvm_blake3_hasher_init_keyed")
    _blake3_hasher_init_keyed :: proc(self : ^_blake3_hasher, key : [32]u8) ---;

    @(link_name="llvm_blake3_hasher_init_derive_key")
    _blake3_hasher_init_derive_key :: proc(self : ^_blake3_hasher, _context : cstring) ---;

    @(link_name="llvm_blake3_hasher_init_derive_key_raw")
    _blake3_hasher_init_derive_key_raw :: proc(self : ^_blake3_hasher, _context : rawptr, context_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_update")
    _blake3_hasher_update :: proc(self : ^_blake3_hasher, input : rawptr, input_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_finalize")
    _blake3_hasher_finalize :: proc(self : ^_blake3_hasher, out : ^u8, out_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_finalize_seek")
    _blake3_hasher_finalize_seek :: proc(self : ^_blake3_hasher, seek : u64, out : ^u8, out_len : _c.size_t) ---;

    @(link_name="llvm_blake3_hasher_reset")
    _blake3_hasher_reset :: proc(self : ^_blake3_hasher) ---;

    @(link_name="LLVMGetOrInsertComdat")
    GetOrInsertComdat :: proc(M : ModuleRef, Name : cstring) -> ComdatRef ---;

    @(link_name="LLVMGetComdat")
    GetComdat :: proc(V : ValueRef) -> ComdatRef ---;

    @(link_name="LLVMSetComdat")
    SetComdat :: proc(V : ValueRef, C : ComdatRef) ---;

    @(link_name="LLVMGetComdatSelectionKind")
    GetComdatSelectionKind :: proc(C : ComdatRef) -> ComdatSelectionKind ---;

    @(link_name="LLVMSetComdatSelectionKind")
    SetComdatSelectionKind :: proc(C : ComdatRef, Kind : ComdatSelectionKind) ---;

    @(link_name="LLVMShutdown")
    Shutdown :: proc() ---;

    @(link_name="LLVMGetVersion")
    GetVersion :: proc(Major : ^_c.uint, Minor : ^_c.uint, Patch : ^_c.uint) ---;

    @(link_name="LLVMCreateMessage")
    CreateMessage :: proc(Message : cstring) -> cstring ---;

    @(link_name="LLVMDisposeMessage")
    DisposeMessage :: proc(Message : cstring) ---;

    @(link_name="LLVMContextCreate")
    ContextCreate :: proc() -> ContextRef ---;

    @(link_name="LLVMGetGlobalContext")
    GetGlobalContext :: proc() -> ContextRef ---;

    @(link_name="LLVMContextSetDiagnosticHandler")
    ContextSetDiagnosticHandler :: proc(C : ContextRef, Handler : DiagnosticHandler, DiagnosticContext : rawptr) ---;

    @(link_name="LLVMContextGetDiagnosticHandler")
    ContextGetDiagnosticHandler :: proc(C : ContextRef) -> DiagnosticHandler ---;

    @(link_name="LLVMContextGetDiagnosticContext")
    ContextGetDiagnosticContext :: proc(C : ContextRef) -> rawptr ---;

    @(link_name="LLVMContextSetYieldCallback")
    ContextSetYieldCallback :: proc(C : ContextRef, Callback : YieldCallback, OpaqueHandle : rawptr) ---;

    @(link_name="LLVMContextShouldDiscardValueNames")
    ContextShouldDiscardValueNames :: proc(C : ContextRef) -> Bool ---;

    @(link_name="LLVMContextSetDiscardValueNames")
    ContextSetDiscardValueNames :: proc(C : ContextRef, Discard : Bool) ---;

    @(link_name="LLVMContextDispose")
    ContextDispose :: proc(C : ContextRef) ---;

    @(link_name="LLVMGetDiagInfoDescription")
    GetDiagInfoDescription :: proc(DI : DiagnosticInfoRef) -> cstring ---;

    @(link_name="LLVMGetDiagInfoSeverity")
    GetDiagInfoSeverity :: proc(DI : DiagnosticInfoRef) -> DiagnosticSeverity ---;

    @(link_name="LLVMGetMDKindIDInContext")
    GetMDKindIDInContext :: proc(C : ContextRef, Name : cstring, SLen : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetMDKindID")
    GetMDKindID :: proc(Name : cstring, SLen : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetEnumAttributeKindForName")
    GetEnumAttributeKindForName :: proc(Name : cstring, SLen : _c.size_t) -> _c.uint ---;

    @(link_name="LLVMGetLastEnumAttributeKind")
    GetLastEnumAttributeKind :: proc() -> _c.uint ---;

    @(link_name="LLVMCreateEnumAttribute")
    CreateEnumAttribute :: proc(C : ContextRef, KindID : _c.uint, Val : u64) -> AttributeRef ---;

    @(link_name="LLVMGetEnumAttributeKind")
    GetEnumAttributeKind :: proc(A : AttributeRef) -> _c.uint ---;

    @(link_name="LLVMGetEnumAttributeValue")
    GetEnumAttributeValue :: proc(A : AttributeRef) -> u64 ---;

    @(link_name="LLVMCreateTypeAttribute")
    CreateTypeAttribute :: proc(C : ContextRef, KindID : _c.uint, type_ref : TypeRef) -> AttributeRef ---;

    @(link_name="LLVMGetTypeAttributeValue")
    GetTypeAttributeValue :: proc(A : AttributeRef) -> TypeRef ---;

    @(link_name="LLVMCreateStringAttribute")
    CreateStringAttribute :: proc(C : ContextRef, K : cstring, KLength : _c.uint, V : cstring, VLength : _c.uint) -> AttributeRef ---;

    @(link_name="LLVMGetStringAttributeKind")
    GetStringAttributeKind :: proc(A : AttributeRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetStringAttributeValue")
    GetStringAttributeValue :: proc(A : AttributeRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMIsEnumAttribute")
    IsEnumAttribute :: proc(A : AttributeRef) -> Bool ---;

    @(link_name="LLVMIsStringAttribute")
    IsStringAttribute :: proc(A : AttributeRef) -> Bool ---;

    @(link_name="LLVMIsTypeAttribute")
    IsTypeAttribute :: proc(A : AttributeRef) -> Bool ---;

    @(link_name="LLVMGetTypeByName2")
    GetTypeByName2 :: proc(C : ContextRef, Name : cstring) -> TypeRef ---;

    @(link_name="LLVMModuleCreateWithName")
    ModuleCreateWithName :: proc(ModuleID : cstring) -> ModuleRef ---;

    @(link_name="LLVMModuleCreateWithNameInContext")
    ModuleCreateWithNameInContext :: proc(ModuleID : cstring, C : ContextRef) -> ModuleRef ---;

    @(link_name="LLVMCloneModule")
    CloneModule :: proc(M : ModuleRef) -> ModuleRef ---;

    @(link_name="LLVMDisposeModule")
    DisposeModule :: proc(M : ModuleRef) ---;

    @(link_name="LLVMGetModuleIdentifier")
    GetModuleIdentifier :: proc(M : ModuleRef, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetModuleIdentifier")
    SetModuleIdentifier :: proc(M : ModuleRef, Ident : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMGetSourceFileName")
    GetSourceFileName :: proc(M : ModuleRef, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetSourceFileName")
    SetSourceFileName :: proc(M : ModuleRef, Name : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMGetDataLayoutStr")
    GetDataLayoutStr :: proc(M : ModuleRef) -> cstring ---;

    @(link_name="LLVMGetDataLayout")
    GetDataLayout :: proc(M : ModuleRef) -> cstring ---;

    @(link_name="LLVMSetDataLayout")
    SetDataLayout :: proc(M : ModuleRef, DataLayoutStr : cstring) ---;

    @(link_name="LLVMGetTarget")
    GetTarget :: proc(M : ModuleRef) -> cstring ---;

    @(link_name="LLVMSetTarget")
    SetTarget :: proc(M : ModuleRef, Triple : cstring) ---;

    @(link_name="LLVMCopyModuleFlagsMetadata")
    CopyModuleFlagsMetadata :: proc(M : ModuleRef, Len : ^_c.size_t) -> ^ModuleFlagEntry ---;

    @(link_name="LLVMDisposeModuleFlagsMetadata")
    DisposeModuleFlagsMetadata :: proc(Entries : ^ModuleFlagEntry) ---;

    @(link_name="LLVMModuleFlagEntriesGetFlagBehavior")
    ModuleFlagEntriesGetFlagBehavior :: proc(Entries : ^ModuleFlagEntry, Index : _c.uint) -> ModuleFlagBehavior ---;

    @(link_name="LLVMModuleFlagEntriesGetKey")
    ModuleFlagEntriesGetKey :: proc(Entries : ^ModuleFlagEntry, Index : _c.uint, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMModuleFlagEntriesGetMetadata")
    ModuleFlagEntriesGetMetadata :: proc(Entries : ^ModuleFlagEntry, Index : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMGetModuleFlag")
    GetModuleFlag :: proc(M : ModuleRef, Key : cstring, KeyLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMAddModuleFlag")
    AddModuleFlag :: proc(M : ModuleRef, Behavior : ModuleFlagBehavior, Key : cstring, KeyLen : _c.size_t, Val : MetadataRef) ---;

    @(link_name="LLVMDumpModule")
    DumpModule :: proc(M : ModuleRef) ---;

    @(link_name="LLVMPrintModuleToFile")
    PrintModuleToFile :: proc(M : ModuleRef, Filename : cstring, ErrorMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMPrintModuleToString")
    PrintModuleToString :: proc(M : ModuleRef) -> cstring ---;

    @(link_name="LLVMGetModuleInlineAsm")
    GetModuleInlineAsm :: proc(M : ModuleRef, Len : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetModuleInlineAsm2")
    SetModuleInlineAsm2 :: proc(M : ModuleRef, Asm : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMAppendModuleInlineAsm")
    AppendModuleInlineAsm :: proc(M : ModuleRef, Asm : cstring, Len : _c.size_t) ---;

    @(link_name="LLVMGetInlineAsm")
    GetInlineAsm :: proc(Ty : TypeRef, AsmString : cstring, AsmStringSize : _c.size_t, Constraints : cstring, ConstraintsSize : _c.size_t, HasSideEffects : Bool, IsAlignStack : Bool, Dialect : InlineAsmDialect, CanThrow : Bool) -> ValueRef ---;

    @(link_name="LLVMGetModuleContext")
    GetModuleContext :: proc(M : ModuleRef) -> ContextRef ---;

    @(link_name="LLVMGetTypeByName")
    GetTypeByName :: proc(M : ModuleRef, Name : cstring) -> TypeRef ---;

    @(link_name="LLVMGetFirstNamedMetadata")
    GetFirstNamedMetadata :: proc(M : ModuleRef) -> NamedMDNodeRef ---;

    @(link_name="LLVMGetLastNamedMetadata")
    GetLastNamedMetadata :: proc(M : ModuleRef) -> NamedMDNodeRef ---;

    @(link_name="LLVMGetNextNamedMetadata")
    GetNextNamedMetadata :: proc(NamedMDNode : NamedMDNodeRef) -> NamedMDNodeRef ---;

    @(link_name="LLVMGetPreviousNamedMetadata")
    GetPreviousNamedMetadata :: proc(NamedMDNode : NamedMDNodeRef) -> NamedMDNodeRef ---;

    @(link_name="LLVMGetNamedMetadata")
    GetNamedMetadata :: proc(M : ModuleRef, Name : cstring, NameLen : _c.size_t) -> NamedMDNodeRef ---;

    @(link_name="LLVMGetOrInsertNamedMetadata")
    GetOrInsertNamedMetadata :: proc(M : ModuleRef, Name : cstring, NameLen : _c.size_t) -> NamedMDNodeRef ---;

    @(link_name="LLVMGetNamedMetadataName")
    GetNamedMetadataName :: proc(NamedMD : NamedMDNodeRef, NameLen : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMGetNamedMetadataNumOperands")
    GetNamedMetadataNumOperands :: proc(M : ModuleRef, Name : cstring) -> _c.uint ---;

    @(link_name="LLVMGetNamedMetadataOperands")
    GetNamedMetadataOperands :: proc(M : ModuleRef, Name : cstring, Dest : ^ValueRef) ---;

    @(link_name="LLVMAddNamedMetadataOperand")
    AddNamedMetadataOperand :: proc(M : ModuleRef, Name : cstring, Val : ValueRef) ---;

    @(link_name="LLVMGetDebugLocDirectory")
    GetDebugLocDirectory :: proc(Val : ValueRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetDebugLocFilename")
    GetDebugLocFilename :: proc(Val : ValueRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetDebugLocLine")
    GetDebugLocLine :: proc(Val : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetDebugLocColumn")
    GetDebugLocColumn :: proc(Val : ValueRef) -> _c.uint ---;

    @(link_name="LLVMAddFunction")
    AddFunction :: proc(M : ModuleRef, Name : cstring, FunctionTy : TypeRef) -> ValueRef ---;

    @(link_name="LLVMGetNamedFunction")
    GetNamedFunction :: proc(M : ModuleRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMGetFirstFunction")
    GetFirstFunction :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetLastFunction")
    GetLastFunction :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetNextFunction")
    GetNextFunction :: proc(Fn : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetPreviousFunction")
    GetPreviousFunction :: proc(Fn : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetModuleInlineAsm")
    SetModuleInlineAsm :: proc(M : ModuleRef, Asm : cstring) ---;

    @(link_name="LLVMGetTypeKind")
    GetTypeKind :: proc(Ty : TypeRef) -> TypeKind ---;

    @(link_name="LLVMTypeIsSized")
    TypeIsSized :: proc(Ty : TypeRef) -> Bool ---;

    @(link_name="LLVMGetTypeContext")
    GetTypeContext :: proc(Ty : TypeRef) -> ContextRef ---;

    @(link_name="LLVMDumpType")
    DumpType :: proc(Val : TypeRef) ---;

    @(link_name="LLVMPrintTypeToString")
    PrintTypeToString :: proc(Val : TypeRef) -> cstring ---;

    @(link_name="LLVMInt1TypeInContext")
    Int1TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMInt8TypeInContext")
    Int8TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMInt16TypeInContext")
    Int16TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMInt32TypeInContext")
    Int32TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMInt64TypeInContext")
    Int64TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMInt128TypeInContext")
    Int128TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMIntTypeInContext")
    IntTypeInContext :: proc(C : ContextRef, NumBits : _c.uint) -> TypeRef ---;

    @(link_name="LLVMInt1Type")
    Int1Type :: proc() -> TypeRef ---;

    @(link_name="LLVMInt8Type")
    Int8Type :: proc() -> TypeRef ---;

    @(link_name="LLVMInt16Type")
    Int16Type :: proc() -> TypeRef ---;

    @(link_name="LLVMInt32Type")
    Int32Type :: proc() -> TypeRef ---;

    @(link_name="LLVMInt64Type")
    Int64Type :: proc() -> TypeRef ---;

    @(link_name="LLVMInt128Type")
    Int128Type :: proc() -> TypeRef ---;

    @(link_name="LLVMIntType")
    IntType :: proc(NumBits : _c.uint) -> TypeRef ---;

    @(link_name="LLVMGetIntTypeWidth")
    GetIntTypeWidth :: proc(IntegerTy : TypeRef) -> _c.uint ---;

    @(link_name="LLVMHalfTypeInContext")
    HalfTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMBFloatTypeInContext")
    BFloatTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMFloatTypeInContext")
    FloatTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMDoubleTypeInContext")
    DoubleTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMX86FP80TypeInContext")
    X86FP80TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMFP128TypeInContext")
    FP128TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMPPCFP128TypeInContext")
    PPCFP128TypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMHalfType")
    HalfType :: proc() -> TypeRef ---;

    @(link_name="LLVMBFloatType")
    BFloatType :: proc() -> TypeRef ---;

    @(link_name="LLVMFloatType")
    FloatType :: proc() -> TypeRef ---;

    @(link_name="LLVMDoubleType")
    DoubleType :: proc() -> TypeRef ---;

    @(link_name="LLVMX86FP80Type")
    X86FP80Type :: proc() -> TypeRef ---;

    @(link_name="LLVMFP128Type")
    FP128Type :: proc() -> TypeRef ---;

    @(link_name="LLVMPPCFP128Type")
    PPCFP128Type :: proc() -> TypeRef ---;

    @(link_name="LLVMFunctionType")
    FunctionType :: proc(ReturnType : TypeRef, ParamTypes : ^TypeRef, ParamCount : _c.uint, IsVarArg : Bool) -> TypeRef ---;

    @(link_name="LLVMIsFunctionVarArg")
    IsFunctionVarArg :: proc(FunctionTy : TypeRef) -> Bool ---;

    @(link_name="LLVMGetReturnType")
    GetReturnType :: proc(FunctionTy : TypeRef) -> TypeRef ---;

    @(link_name="LLVMCountParamTypes")
    CountParamTypes :: proc(FunctionTy : TypeRef) -> _c.uint ---;

    @(link_name="LLVMGetParamTypes")
    GetParamTypes :: proc(FunctionTy : TypeRef, Dest : ^TypeRef) ---;

    @(link_name="LLVMStructTypeInContext")
    StructTypeInContext :: proc(C : ContextRef, ElementTypes : ^TypeRef, ElementCount : _c.uint, Packed : Bool) -> TypeRef ---;

    @(link_name="LLVMStructType")
    StructType :: proc(ElementTypes : ^TypeRef, ElementCount : _c.uint, Packed : Bool) -> TypeRef ---;

    @(link_name="LLVMStructCreateNamed")
    StructCreateNamed :: proc(C : ContextRef, Name : cstring) -> TypeRef ---;

    @(link_name="LLVMGetStructName")
    GetStructName :: proc(Ty : TypeRef) -> cstring ---;

    @(link_name="LLVMStructSetBody")
    StructSetBody :: proc(StructTy : TypeRef, ElementTypes : ^TypeRef, ElementCount : _c.uint, Packed : Bool) ---;

    @(link_name="LLVMCountStructElementTypes")
    CountStructElementTypes :: proc(StructTy : TypeRef) -> _c.uint ---;

    @(link_name="LLVMGetStructElementTypes")
    GetStructElementTypes :: proc(StructTy : TypeRef, Dest : ^TypeRef) ---;

    @(link_name="LLVMStructGetTypeAtIndex")
    StructGetTypeAtIndex :: proc(StructTy : TypeRef, i : _c.uint) -> TypeRef ---;

    @(link_name="LLVMIsPackedStruct")
    IsPackedStruct :: proc(StructTy : TypeRef) -> Bool ---;

    @(link_name="LLVMIsOpaqueStruct")
    IsOpaqueStruct :: proc(StructTy : TypeRef) -> Bool ---;

    @(link_name="LLVMIsLiteralStruct")
    IsLiteralStruct :: proc(StructTy : TypeRef) -> Bool ---;

    @(link_name="LLVMGetElementType")
    GetElementType :: proc(Ty : TypeRef) -> TypeRef ---;

    @(link_name="LLVMGetSubtypes")
    GetSubtypes :: proc(Tp : TypeRef, Arr : ^TypeRef) ---;

    @(link_name="LLVMGetNumContainedTypes")
    GetNumContainedTypes :: proc(Tp : TypeRef) -> _c.uint ---;

    @(link_name="LLVMArrayType")
    ArrayType :: proc(ElementType : TypeRef, ElementCount : _c.uint) -> TypeRef ---;

    @(link_name="LLVMArrayType2")
    ArrayType2 :: proc(ElementType : TypeRef, ElementCount : u64) -> TypeRef ---;

    @(link_name="LLVMGetArrayLength")
    GetArrayLength :: proc(ArrayTy : TypeRef) -> _c.uint ---;

    @(link_name="LLVMGetArrayLength2")
    GetArrayLength2 :: proc(ArrayTy : TypeRef) -> u64 ---;

    @(link_name="LLVMPointerType")
    PointerType :: proc(ElementType : TypeRef, AddressSpace : _c.uint) -> TypeRef ---;

    @(link_name="LLVMPointerTypeIsOpaque")
    PointerTypeIsOpaque :: proc(Ty : TypeRef) -> Bool ---;

    @(link_name="LLVMPointerTypeInContext")
    PointerTypeInContext :: proc(C : ContextRef, AddressSpace : _c.uint) -> TypeRef ---;

    @(link_name="LLVMGetPointerAddressSpace")
    GetPointerAddressSpace :: proc(PointerTy : TypeRef) -> _c.uint ---;

    @(link_name="LLVMVectorType")
    VectorType :: proc(ElementType : TypeRef, ElementCount : _c.uint) -> TypeRef ---;

    @(link_name="LLVMScalableVectorType")
    ScalableVectorType :: proc(ElementType : TypeRef, ElementCount : _c.uint) -> TypeRef ---;

    @(link_name="LLVMGetVectorSize")
    GetVectorSize :: proc(VectorTy : TypeRef) -> _c.uint ---;

    @(link_name="LLVMVoidTypeInContext")
    VoidTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMLabelTypeInContext")
    LabelTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMX86MMXTypeInContext")
    X86MMXTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMX86AMXTypeInContext")
    X86AMXTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMTokenTypeInContext")
    TokenTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMMetadataTypeInContext")
    MetadataTypeInContext :: proc(C : ContextRef) -> TypeRef ---;

    @(link_name="LLVMVoidType")
    VoidType :: proc() -> TypeRef ---;

    @(link_name="LLVMLabelType")
    LabelType :: proc() -> TypeRef ---;

    @(link_name="LLVMX86MMXType")
    X86MMXType :: proc() -> TypeRef ---;

    @(link_name="LLVMX86AMXType")
    X86AMXType :: proc() -> TypeRef ---;

    @(link_name="LLVMTargetExtTypeInContext")
    TargetExtTypeInContext :: proc(C : ContextRef, Name : cstring, TypeParams : ^TypeRef, TypeParamCount : _c.uint, IntParams : ^_c.uint, IntParamCount : _c.uint) -> TypeRef ---;

    @(link_name="LLVMTypeOf")
    TypeOf :: proc(Val : ValueRef) -> TypeRef ---;

    @(link_name="LLVMGetValueKind")
    GetValueKind :: proc(Val : ValueRef) -> ValueKind ---;

    @(link_name="LLVMGetValueName2")
    GetValueName2 :: proc(Val : ValueRef, Length : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMSetValueName2")
    SetValueName2 :: proc(Val : ValueRef, Name : cstring, NameLen : _c.size_t) ---;

    @(link_name="LLVMDumpValue")
    DumpValue :: proc(Val : ValueRef) ---;

    @(link_name="LLVMPrintValueToString")
    PrintValueToString :: proc(Val : ValueRef) -> cstring ---;

    @(link_name="LLVMReplaceAllUsesWith")
    ReplaceAllUsesWith :: proc(OldVal : ValueRef, NewVal : ValueRef) ---;

    @(link_name="LLVMIsConstant")
    IsConstant :: proc(Val : ValueRef) -> Bool ---;

    @(link_name="LLVMIsUndef")
    IsUndef :: proc(Val : ValueRef) -> Bool ---;

    @(link_name="LLVMIsPoison")
    IsPoison :: proc(Val : ValueRef) -> Bool ---;

    @(link_name="LLVMIsAMDNode")
    IsAMDNode :: proc(Val : ValueRef) -> ValueRef ---;

    @(link_name="LLVMIsAValueAsMetadata")
    IsAValueAsMetadata :: proc(Val : ValueRef) -> ValueRef ---;

    @(link_name="LLVMIsAMDString")
    IsAMDString :: proc(Val : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetValueName")
    GetValueName :: proc(Val : ValueRef) -> cstring ---;

    @(link_name="LLVMSetValueName")
    SetValueName :: proc(Val : ValueRef, Name : cstring) ---;

    @(link_name="LLVMGetFirstUse")
    GetFirstUse :: proc(Val : ValueRef) -> UseRef ---;

    @(link_name="LLVMGetNextUse")
    GetNextUse :: proc(U : UseRef) -> UseRef ---;

    @(link_name="LLVMGetUser")
    GetUser :: proc(U : UseRef) -> ValueRef ---;

    @(link_name="LLVMGetUsedValue")
    GetUsedValue :: proc(U : UseRef) -> ValueRef ---;

    @(link_name="LLVMGetOperand")
    GetOperand :: proc(Val : ValueRef, Index : _c.uint) -> ValueRef ---;

    @(link_name="LLVMGetOperandUse")
    GetOperandUse :: proc(Val : ValueRef, Index : _c.uint) -> UseRef ---;

    @(link_name="LLVMSetOperand")
    SetOperand :: proc(User : ValueRef, Index : _c.uint, Val : ValueRef) ---;

    @(link_name="LLVMGetNumOperands")
    GetNumOperands :: proc(Val : ValueRef) -> _c.int ---;

    @(link_name="LLVMConstNull")
    ConstNull :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstAllOnes")
    ConstAllOnes :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMGetUndef")
    GetUndef :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMGetPoison")
    GetPoison :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMIsNull")
    IsNull :: proc(Val : ValueRef) -> Bool ---;

    @(link_name="LLVMConstPointerNull")
    ConstPointerNull :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstInt")
    ConstInt :: proc(IntTy : TypeRef, N : _c.ulonglong, SignExtend : Bool) -> ValueRef ---;

    @(link_name="LLVMConstIntOfArbitraryPrecision")
    ConstIntOfArbitraryPrecision :: proc(IntTy : TypeRef, NumWords : _c.uint, Words : ^u64) -> ValueRef ---;

    @(link_name="LLVMConstIntOfString")
    ConstIntOfString :: proc(IntTy : TypeRef, Text : cstring, Radix : u8) -> ValueRef ---;

    @(link_name="LLVMConstIntOfStringAndSize")
    ConstIntOfStringAndSize :: proc(IntTy : TypeRef, Text : cstring, SLen : _c.uint, Radix : u8) -> ValueRef ---;

    @(link_name="LLVMConstReal")
    ConstReal :: proc(RealTy : TypeRef, N : _c.double) -> ValueRef ---;

    @(link_name="LLVMConstRealOfString")
    ConstRealOfString :: proc(RealTy : TypeRef, Text : cstring) -> ValueRef ---;

    @(link_name="LLVMConstRealOfStringAndSize")
    ConstRealOfStringAndSize :: proc(RealTy : TypeRef, Text : cstring, SLen : _c.uint) -> ValueRef ---;

    @(link_name="LLVMConstIntGetZExtValue")
    ConstIntGetZExtValue :: proc(ConstantVal : ValueRef) -> _c.ulonglong ---;

    @(link_name="LLVMConstIntGetSExtValue")
    ConstIntGetSExtValue :: proc(ConstantVal : ValueRef) -> _c.longlong ---;

    @(link_name="LLVMConstRealGetDouble")
    ConstRealGetDouble :: proc(ConstantVal : ValueRef, losesInfo : ^Bool) -> _c.double ---;

    @(link_name="LLVMConstStringInContext")
    ConstStringInContext :: proc(C : ContextRef, Str : cstring, Length : _c.uint, DontNullTerminate : Bool) -> ValueRef ---;

    @(link_name="LLVMConstString")
    ConstString :: proc(Str : cstring, Length : _c.uint, DontNullTerminate : Bool) -> ValueRef ---;

    @(link_name="LLVMIsConstantString")
    IsConstantString :: proc(c : ValueRef) -> Bool ---;

    @(link_name="LLVMGetAsString")
    GetAsString :: proc(c : ValueRef, Length : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMConstStructInContext")
    ConstStructInContext :: proc(C : ContextRef, ConstantVals : ^ValueRef, Count : _c.uint, Packed : Bool) -> ValueRef ---;

    @(link_name="LLVMConstStruct")
    ConstStruct :: proc(ConstantVals : ^ValueRef, Count : _c.uint, Packed : Bool) -> ValueRef ---;

    @(link_name="LLVMConstArray")
    ConstArray :: proc(ElementTy : TypeRef, ConstantVals : ^ValueRef, Length : _c.uint) -> ValueRef ---;

    @(link_name="LLVMConstArray2")
    ConstArray2 :: proc(ElementTy : TypeRef, ConstantVals : ^ValueRef, Length : u64) -> ValueRef ---;

    @(link_name="LLVMConstNamedStruct")
    ConstNamedStruct :: proc(StructTy : TypeRef, ConstantVals : ^ValueRef, Count : _c.uint) -> ValueRef ---;

    @(link_name="LLVMGetAggregateElement")
    GetAggregateElement :: proc(C : ValueRef, Idx : _c.uint) -> ValueRef ---;

    @(link_name="LLVMConstVector")
    ConstVector :: proc(ScalarConstantVals : ^ValueRef, Size : _c.uint) -> ValueRef ---;

    @(link_name="LLVMGetConstOpcode")
    GetConstOpcode :: proc(ConstantVal : ValueRef) -> Opcode ---;

    @(link_name="LLVMAlignOf")
    AlignOf :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMSizeOf")
    SizeOf :: proc(Ty : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstNeg")
    ConstNeg :: proc(ConstantVal : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNSWNeg")
    ConstNSWNeg :: proc(ConstantVal : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNUWNeg")
    ConstNUWNeg :: proc(ConstantVal : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNot")
    ConstNot :: proc(ConstantVal : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstAdd")
    ConstAdd :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNSWAdd")
    ConstNSWAdd :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNUWAdd")
    ConstNUWAdd :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstSub")
    ConstSub :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNSWSub")
    ConstNSWSub :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNUWSub")
    ConstNUWSub :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstMul")
    ConstMul :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNSWMul")
    ConstNSWMul :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstNUWMul")
    ConstNUWMul :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstAnd")
    ConstAnd :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstOr")
    ConstOr :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstXor")
    ConstXor :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstICmp")
    ConstICmp :: proc(Predicate : IntPredicate, LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstFCmp")
    ConstFCmp :: proc(Predicate : RealPredicate, LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstShl")
    ConstShl :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstLShr")
    ConstLShr :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstAShr")
    ConstAShr :: proc(LHSConstant : ValueRef, RHSConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstGEP2")
    ConstGEP2 :: proc(Ty : TypeRef, ConstantVal : ValueRef, ConstantIndices : ^ValueRef, NumIndices : _c.uint) -> ValueRef ---;

    @(link_name="LLVMConstInBoundsGEP2")
    ConstInBoundsGEP2 :: proc(Ty : TypeRef, ConstantVal : ValueRef, ConstantIndices : ^ValueRef, NumIndices : _c.uint) -> ValueRef ---;

    @(link_name="LLVMConstTrunc")
    ConstTrunc :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstSExt")
    ConstSExt :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstZExt")
    ConstZExt :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstFPTrunc")
    ConstFPTrunc :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstFPExt")
    ConstFPExt :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstUIToFP")
    ConstUIToFP :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstSIToFP")
    ConstSIToFP :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstFPToUI")
    ConstFPToUI :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstFPToSI")
    ConstFPToSI :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstPtrToInt")
    ConstPtrToInt :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstIntToPtr")
    ConstIntToPtr :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstBitCast")
    ConstBitCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstAddrSpaceCast")
    ConstAddrSpaceCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstZExtOrBitCast")
    ConstZExtOrBitCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstSExtOrBitCast")
    ConstSExtOrBitCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstTruncOrBitCast")
    ConstTruncOrBitCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstPointerCast")
    ConstPointerCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstIntCast")
    ConstIntCast :: proc(ConstantVal : ValueRef, ToType : TypeRef, isSigned : Bool) -> ValueRef ---;

    @(link_name="LLVMConstFPCast")
    ConstFPCast :: proc(ConstantVal : ValueRef, ToType : TypeRef) -> ValueRef ---;

    @(link_name="LLVMConstExtractElement")
    ConstExtractElement :: proc(VectorConstant : ValueRef, IndexConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstInsertElement")
    ConstInsertElement :: proc(VectorConstant : ValueRef, ElementValueConstant : ValueRef, IndexConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMConstShuffleVector")
    ConstShuffleVector :: proc(VectorAConstant : ValueRef, VectorBConstant : ValueRef, MaskConstant : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBlockAddress")
    BlockAddress :: proc(F : ValueRef, BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMConstInlineAsm")
    ConstInlineAsm :: proc(Ty : TypeRef, AsmString : cstring, Constraints : cstring, HasSideEffects : Bool, IsAlignStack : Bool) -> ValueRef ---;

    @(link_name="LLVMGetGlobalParent")
    GetGlobalParent :: proc(Global : ValueRef) -> ModuleRef ---;

    @(link_name="LLVMIsDeclaration")
    IsDeclaration :: proc(Global : ValueRef) -> Bool ---;

    @(link_name="LLVMGetLinkage")
    GetLinkage :: proc(Global : ValueRef) -> Linkage ---;

    @(link_name="LLVMSetLinkage")
    SetLinkage :: proc(Global : ValueRef, Linkage : Linkage) ---;

    @(link_name="LLVMGetSection")
    GetSection :: proc(Global : ValueRef) -> cstring ---;

    @(link_name="LLVMSetSection")
    SetSection :: proc(Global : ValueRef, Section : cstring) ---;

    @(link_name="LLVMGetVisibility")
    GetVisibility :: proc(Global : ValueRef) -> Visibility ---;

    @(link_name="LLVMSetVisibility")
    SetVisibility :: proc(Global : ValueRef, Viz : Visibility) ---;

    @(link_name="LLVMGetDLLStorageClass")
    GetDLLStorageClass :: proc(Global : ValueRef) -> DLLStorageClass ---;

    @(link_name="LLVMSetDLLStorageClass")
    SetDLLStorageClass :: proc(Global : ValueRef, Class : DLLStorageClass) ---;

    @(link_name="LLVMGetUnnamedAddress")
    GetUnnamedAddress :: proc(Global : ValueRef) -> UnnamedAddr ---;

    @(link_name="LLVMSetUnnamedAddress")
    SetUnnamedAddress :: proc(Global : ValueRef, UnnamedAddr : UnnamedAddr) ---;

    @(link_name="LLVMGlobalGetValueType")
    GlobalGetValueType :: proc(Global : ValueRef) -> TypeRef ---;

    @(link_name="LLVMHasUnnamedAddr")
    HasUnnamedAddr :: proc(Global : ValueRef) -> Bool ---;

    @(link_name="LLVMSetUnnamedAddr")
    SetUnnamedAddr :: proc(Global : ValueRef, HasUnnamedAddr : Bool) ---;

    @(link_name="LLVMGetAlignment")
    GetAlignment :: proc(V : ValueRef) -> _c.uint ---;

    @(link_name="LLVMSetAlignment")
    SetAlignment :: proc(V : ValueRef, Bytes : _c.uint) ---;

    @(link_name="LLVMGlobalSetMetadata")
    GlobalSetMetadata :: proc(Global : ValueRef, Kind : _c.uint, MD : MetadataRef) ---;

    @(link_name="LLVMGlobalEraseMetadata")
    GlobalEraseMetadata :: proc(Global : ValueRef, Kind : _c.uint) ---;

    @(link_name="LLVMGlobalClearMetadata")
    GlobalClearMetadata :: proc(Global : ValueRef) ---;

    @(link_name="LLVMGlobalCopyAllMetadata")
    GlobalCopyAllMetadata :: proc(Value : ValueRef, NumEntries : ^_c.size_t) -> ^ValueMetadataEntry ---;

    @(link_name="LLVMDisposeValueMetadataEntries")
    DisposeValueMetadataEntries :: proc(Entries : ^ValueMetadataEntry) ---;

    @(link_name="LLVMValueMetadataEntriesGetKind")
    ValueMetadataEntriesGetKind :: proc(Entries : ^ValueMetadataEntry, Index : _c.uint) -> _c.uint ---;

    @(link_name="LLVMValueMetadataEntriesGetMetadata")
    ValueMetadataEntriesGetMetadata :: proc(Entries : ^ValueMetadataEntry, Index : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMAddGlobal")
    AddGlobal :: proc(M : ModuleRef, Ty : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMAddGlobalInAddressSpace")
    AddGlobalInAddressSpace :: proc(M : ModuleRef, Ty : TypeRef, Name : cstring, AddressSpace : _c.uint) -> ValueRef ---;

    @(link_name="LLVMGetNamedGlobal")
    GetNamedGlobal :: proc(M : ModuleRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMGetFirstGlobal")
    GetFirstGlobal :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetLastGlobal")
    GetLastGlobal :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetNextGlobal")
    GetNextGlobal :: proc(GlobalVar : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetPreviousGlobal")
    GetPreviousGlobal :: proc(GlobalVar : ValueRef) -> ValueRef ---;

    @(link_name="LLVMDeleteGlobal")
    DeleteGlobal :: proc(GlobalVar : ValueRef) ---;

    @(link_name="LLVMGetInitializer")
    GetInitializer :: proc(GlobalVar : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetInitializer")
    SetInitializer :: proc(GlobalVar : ValueRef, ConstantVal : ValueRef) ---;

    @(link_name="LLVMIsThreadLocal")
    IsThreadLocal :: proc(GlobalVar : ValueRef) -> Bool ---;

    @(link_name="LLVMSetThreadLocal")
    SetThreadLocal :: proc(GlobalVar : ValueRef, IsThreadLocal : Bool) ---;

    @(link_name="LLVMIsGlobalConstant")
    IsGlobalConstant :: proc(GlobalVar : ValueRef) -> Bool ---;

    @(link_name="LLVMSetGlobalConstant")
    SetGlobalConstant :: proc(GlobalVar : ValueRef, IsConstant : Bool) ---;

    @(link_name="LLVMGetThreadLocalMode")
    GetThreadLocalMode :: proc(GlobalVar : ValueRef) -> ThreadLocalMode ---;

    @(link_name="LLVMSetThreadLocalMode")
    SetThreadLocalMode :: proc(GlobalVar : ValueRef, Mode : ThreadLocalMode) ---;

    @(link_name="LLVMIsExternallyInitialized")
    IsExternallyInitialized :: proc(GlobalVar : ValueRef) -> Bool ---;

    @(link_name="LLVMSetExternallyInitialized")
    SetExternallyInitialized :: proc(GlobalVar : ValueRef, IsExtInit : Bool) ---;

    @(link_name="LLVMAddAlias2")
    AddAlias2 :: proc(M : ModuleRef, ValueTy : TypeRef, AddrSpace : _c.uint, Aliasee : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMGetNamedGlobalAlias")
    GetNamedGlobalAlias :: proc(M : ModuleRef, Name : cstring, NameLen : _c.size_t) -> ValueRef ---;

    @(link_name="LLVMGetFirstGlobalAlias")
    GetFirstGlobalAlias :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetLastGlobalAlias")
    GetLastGlobalAlias :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetNextGlobalAlias")
    GetNextGlobalAlias :: proc(GA : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetPreviousGlobalAlias")
    GetPreviousGlobalAlias :: proc(GA : ValueRef) -> ValueRef ---;

    @(link_name="LLVMAliasGetAliasee")
    AliasGetAliasee :: proc(Alias : ValueRef) -> ValueRef ---;

    @(link_name="LLVMAliasSetAliasee")
    AliasSetAliasee :: proc(Alias : ValueRef, Aliasee : ValueRef) ---;

    @(link_name="LLVMDeleteFunction")
    DeleteFunction :: proc(Fn : ValueRef) ---;

    @(link_name="LLVMHasPersonalityFn")
    HasPersonalityFn :: proc(Fn : ValueRef) -> Bool ---;

    @(link_name="LLVMGetPersonalityFn")
    GetPersonalityFn :: proc(Fn : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetPersonalityFn")
    SetPersonalityFn :: proc(Fn : ValueRef, PersonalityFn : ValueRef) ---;

    @(link_name="LLVMLookupIntrinsicID")
    LookupIntrinsicID :: proc(Name : cstring, NameLen : _c.size_t) -> _c.uint ---;

    @(link_name="LLVMGetIntrinsicID")
    GetIntrinsicID :: proc(Fn : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetIntrinsicDeclaration")
    GetIntrinsicDeclaration :: proc(Mod : ModuleRef, ID : _c.uint, ParamTypes : ^TypeRef, ParamCount : _c.size_t) -> ValueRef ---;

    @(link_name="LLVMIntrinsicGetType")
    IntrinsicGetType :: proc(Ctx : ContextRef, ID : _c.uint, ParamTypes : ^TypeRef, ParamCount : _c.size_t) -> TypeRef ---;

    @(link_name="LLVMIntrinsicGetName")
    IntrinsicGetName :: proc(ID : _c.uint, NameLength : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMIntrinsicCopyOverloadedName")
    IntrinsicCopyOverloadedName :: proc(ID : _c.uint, ParamTypes : ^TypeRef, ParamCount : _c.size_t, NameLength : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMIntrinsicCopyOverloadedName2")
    IntrinsicCopyOverloadedName2 :: proc(Mod : ModuleRef, ID : _c.uint, ParamTypes : ^TypeRef, ParamCount : _c.size_t, NameLength : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMIntrinsicIsOverloaded")
    IntrinsicIsOverloaded :: proc(ID : _c.uint) -> Bool ---;

    @(link_name="LLVMGetFunctionCallConv")
    GetFunctionCallConv :: proc(Fn : ValueRef) -> _c.uint ---;

    @(link_name="LLVMSetFunctionCallConv")
    SetFunctionCallConv :: proc(Fn : ValueRef, CC : _c.uint) ---;

    @(link_name="LLVMGetGC")
    GetGC :: proc(Fn : ValueRef) -> cstring ---;

    @(link_name="LLVMSetGC")
    SetGC :: proc(Fn : ValueRef, Name : cstring) ---;

    @(link_name="LLVMAddAttributeAtIndex")
    AddAttributeAtIndex :: proc(F : ValueRef, Idx : _c.uint, A : AttributeRef) ---;

    @(link_name="LLVMGetAttributeCountAtIndex")
    GetAttributeCountAtIndex :: proc(F : ValueRef, Idx : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetAttributesAtIndex")
    GetAttributesAtIndex :: proc(F : ValueRef, Idx : _c.uint, Attrs : ^AttributeRef) ---;

    @(link_name="LLVMGetEnumAttributeAtIndex")
    GetEnumAttributeAtIndex :: proc(F : ValueRef, Idx : _c.uint, KindID : _c.uint) -> AttributeRef ---;

    @(link_name="LLVMGetStringAttributeAtIndex")
    GetStringAttributeAtIndex :: proc(F : ValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) -> AttributeRef ---;

    @(link_name="LLVMRemoveEnumAttributeAtIndex")
    RemoveEnumAttributeAtIndex :: proc(F : ValueRef, Idx : _c.uint, KindID : _c.uint) ---;

    @(link_name="LLVMRemoveStringAttributeAtIndex")
    RemoveStringAttributeAtIndex :: proc(F : ValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) ---;

    @(link_name="LLVMAddTargetDependentFunctionAttr")
    AddTargetDependentFunctionAttr :: proc(Fn : ValueRef, A : cstring, V : cstring) ---;

    @(link_name="LLVMCountParams")
    CountParams :: proc(Fn : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetParams")
    GetParams :: proc(Fn : ValueRef, Params : ^ValueRef) ---;

    @(link_name="LLVMGetParam")
    GetParam :: proc(Fn : ValueRef, Index : _c.uint) -> ValueRef ---;

    @(link_name="LLVMGetParamParent")
    GetParamParent :: proc(Inst : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetFirstParam")
    GetFirstParam :: proc(Fn : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetLastParam")
    GetLastParam :: proc(Fn : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetNextParam")
    GetNextParam :: proc(Arg : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetPreviousParam")
    GetPreviousParam :: proc(Arg : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetParamAlignment")
    SetParamAlignment :: proc(Arg : ValueRef, Align : _c.uint) ---;

    @(link_name="LLVMAddGlobalIFunc")
    AddGlobalIFunc :: proc(M : ModuleRef, Name : cstring, NameLen : _c.size_t, Ty : TypeRef, AddrSpace : _c.uint, Resolver : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetNamedGlobalIFunc")
    GetNamedGlobalIFunc :: proc(M : ModuleRef, Name : cstring, NameLen : _c.size_t) -> ValueRef ---;

    @(link_name="LLVMGetFirstGlobalIFunc")
    GetFirstGlobalIFunc :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetLastGlobalIFunc")
    GetLastGlobalIFunc :: proc(M : ModuleRef) -> ValueRef ---;

    @(link_name="LLVMGetNextGlobalIFunc")
    GetNextGlobalIFunc :: proc(IFunc : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetPreviousGlobalIFunc")
    GetPreviousGlobalIFunc :: proc(IFunc : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetGlobalIFuncResolver")
    GetGlobalIFuncResolver :: proc(IFunc : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetGlobalIFuncResolver")
    SetGlobalIFuncResolver :: proc(IFunc : ValueRef, Resolver : ValueRef) ---;

    @(link_name="LLVMEraseGlobalIFunc")
    EraseGlobalIFunc :: proc(IFunc : ValueRef) ---;

    @(link_name="LLVMRemoveGlobalIFunc")
    RemoveGlobalIFunc :: proc(IFunc : ValueRef) ---;

    @(link_name="LLVMMDStringInContext2")
    MDStringInContext2 :: proc(C : ContextRef, Str : cstring, SLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMMDNodeInContext2")
    MDNodeInContext2 :: proc(C : ContextRef, MDs : ^MetadataRef, Count : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMMetadataAsValue")
    MetadataAsValue :: proc(C : ContextRef, MD : MetadataRef) -> ValueRef ---;

    @(link_name="LLVMValueAsMetadata")
    ValueAsMetadata :: proc(Val : ValueRef) -> MetadataRef ---;

    @(link_name="LLVMGetMDString")
    GetMDString :: proc(V : ValueRef, Length : ^_c.uint) -> cstring ---;

    @(link_name="LLVMGetMDNodeNumOperands")
    GetMDNodeNumOperands :: proc(V : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetMDNodeOperands")
    GetMDNodeOperands :: proc(V : ValueRef, Dest : ^ValueRef) ---;

    @(link_name="LLVMReplaceMDNodeOperandWith")
    ReplaceMDNodeOperandWith :: proc(V : ValueRef, Index : _c.uint, Replacement : MetadataRef) ---;

    @(link_name="LLVMMDStringInContext")
    MDStringInContext :: proc(C : ContextRef, Str : cstring, SLen : _c.uint) -> ValueRef ---;

    @(link_name="LLVMMDString")
    MDString :: proc(Str : cstring, SLen : _c.uint) -> ValueRef ---;

    @(link_name="LLVMMDNodeInContext")
    MDNodeInContext :: proc(C : ContextRef, Vals : ^ValueRef, Count : _c.uint) -> ValueRef ---;

    @(link_name="LLVMMDNode")
    MDNode :: proc(Vals : ^ValueRef, Count : _c.uint) -> ValueRef ---;

    @(link_name="LLVMBasicBlockAsValue")
    BasicBlockAsValue :: proc(BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMValueIsBasicBlock")
    ValueIsBasicBlock :: proc(Val : ValueRef) -> Bool ---;

    @(link_name="LLVMValueAsBasicBlock")
    ValueAsBasicBlock :: proc(Val : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetBasicBlockName")
    GetBasicBlockName :: proc(BB : BasicBlockRef) -> cstring ---;

    @(link_name="LLVMGetBasicBlockParent")
    GetBasicBlockParent :: proc(BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMGetBasicBlockTerminator")
    GetBasicBlockTerminator :: proc(BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMCountBasicBlocks")
    CountBasicBlocks :: proc(Fn : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetBasicBlocks")
    GetBasicBlocks :: proc(Fn : ValueRef, BasicBlocks : ^BasicBlockRef) ---;

    @(link_name="LLVMGetFirstBasicBlock")
    GetFirstBasicBlock :: proc(Fn : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetLastBasicBlock")
    GetLastBasicBlock :: proc(Fn : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetNextBasicBlock")
    GetNextBasicBlock :: proc(BB : BasicBlockRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetPreviousBasicBlock")
    GetPreviousBasicBlock :: proc(BB : BasicBlockRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetEntryBasicBlock")
    GetEntryBasicBlock :: proc(Fn : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMInsertExistingBasicBlockAfterInsertBlock")
    InsertExistingBasicBlockAfterInsertBlock :: proc(Builder : BuilderRef, BB : BasicBlockRef) ---;

    @(link_name="LLVMAppendExistingBasicBlock")
    AppendExistingBasicBlock :: proc(Fn : ValueRef, BB : BasicBlockRef) ---;

    @(link_name="LLVMCreateBasicBlockInContext")
    CreateBasicBlockInContext :: proc(C : ContextRef, Name : cstring) -> BasicBlockRef ---;

    @(link_name="LLVMAppendBasicBlockInContext")
    AppendBasicBlockInContext :: proc(C : ContextRef, Fn : ValueRef, Name : cstring) -> BasicBlockRef ---;

    @(link_name="LLVMAppendBasicBlock")
    AppendBasicBlock :: proc(Fn : ValueRef, Name : cstring) -> BasicBlockRef ---;

    @(link_name="LLVMInsertBasicBlockInContext")
    InsertBasicBlockInContext :: proc(C : ContextRef, BB : BasicBlockRef, Name : cstring) -> BasicBlockRef ---;

    @(link_name="LLVMInsertBasicBlock")
    InsertBasicBlock :: proc(InsertBeforeBB : BasicBlockRef, Name : cstring) -> BasicBlockRef ---;

    @(link_name="LLVMDeleteBasicBlock")
    DeleteBasicBlock :: proc(BB : BasicBlockRef) ---;

    @(link_name="LLVMRemoveBasicBlockFromParent")
    RemoveBasicBlockFromParent :: proc(BB : BasicBlockRef) ---;

    @(link_name="LLVMMoveBasicBlockBefore")
    MoveBasicBlockBefore :: proc(BB : BasicBlockRef, MovePos : BasicBlockRef) ---;

    @(link_name="LLVMMoveBasicBlockAfter")
    MoveBasicBlockAfter :: proc(BB : BasicBlockRef, MovePos : BasicBlockRef) ---;

    @(link_name="LLVMGetFirstInstruction")
    GetFirstInstruction :: proc(BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMGetLastInstruction")
    GetLastInstruction :: proc(BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMHasMetadata")
    HasMetadata :: proc(Val : ValueRef) -> _c.int ---;

    @(link_name="LLVMGetMetadata")
    GetMetadata :: proc(Val : ValueRef, KindID : _c.uint) -> ValueRef ---;

    @(link_name="LLVMSetMetadata")
    SetMetadata :: proc(Val : ValueRef, KindID : _c.uint, Node : ValueRef) ---;

    @(link_name="LLVMInstructionGetAllMetadataOtherThanDebugLoc")
    InstructionGetAllMetadataOtherThanDebugLoc :: proc(Instr : ValueRef, NumEntries : ^_c.size_t) -> ^ValueMetadataEntry ---;

    @(link_name="LLVMGetInstructionParent")
    GetInstructionParent :: proc(Inst : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetNextInstruction")
    GetNextInstruction :: proc(Inst : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetPreviousInstruction")
    GetPreviousInstruction :: proc(Inst : ValueRef) -> ValueRef ---;

    @(link_name="LLVMInstructionRemoveFromParent")
    InstructionRemoveFromParent :: proc(Inst : ValueRef) ---;

    @(link_name="LLVMInstructionEraseFromParent")
    InstructionEraseFromParent :: proc(Inst : ValueRef) ---;

    @(link_name="LLVMDeleteInstruction")
    DeleteInstruction :: proc(Inst : ValueRef) ---;

    @(link_name="LLVMGetInstructionOpcode")
    GetInstructionOpcode :: proc(Inst : ValueRef) -> Opcode ---;

    @(link_name="LLVMGetICmpPredicate")
    GetICmpPredicate :: proc(Inst : ValueRef) -> IntPredicate ---;

    @(link_name="LLVMGetFCmpPredicate")
    GetFCmpPredicate :: proc(Inst : ValueRef) -> RealPredicate ---;

    @(link_name="LLVMInstructionClone")
    InstructionClone :: proc(Inst : ValueRef) -> ValueRef ---;

    @(link_name="LLVMIsATerminatorInst")
    IsATerminatorInst :: proc(Inst : ValueRef) -> ValueRef ---;

    @(link_name="LLVMGetNumArgOperands")
    GetNumArgOperands :: proc(Instr : ValueRef) -> _c.uint ---;

    @(link_name="LLVMSetInstructionCallConv")
    SetInstructionCallConv :: proc(Instr : ValueRef, CC : _c.uint) ---;

    @(link_name="LLVMGetInstructionCallConv")
    GetInstructionCallConv :: proc(Instr : ValueRef) -> _c.uint ---;

    @(link_name="LLVMSetInstrParamAlignment")
    SetInstrParamAlignment :: proc(Instr : ValueRef, Idx : _c.uint, Align : _c.uint) ---;

    @(link_name="LLVMAddCallSiteAttribute")
    AddCallSiteAttribute :: proc(C : ValueRef, Idx : _c.uint, A : AttributeRef) ---;

    @(link_name="LLVMGetCallSiteAttributeCount")
    GetCallSiteAttributeCount :: proc(C : ValueRef, Idx : _c.uint) -> _c.uint ---;

    @(link_name="LLVMGetCallSiteAttributes")
    GetCallSiteAttributes :: proc(C : ValueRef, Idx : _c.uint, Attrs : ^AttributeRef) ---;

    @(link_name="LLVMGetCallSiteEnumAttribute")
    GetCallSiteEnumAttribute :: proc(C : ValueRef, Idx : _c.uint, KindID : _c.uint) -> AttributeRef ---;

    @(link_name="LLVMGetCallSiteStringAttribute")
    GetCallSiteStringAttribute :: proc(C : ValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) -> AttributeRef ---;

    @(link_name="LLVMRemoveCallSiteEnumAttribute")
    RemoveCallSiteEnumAttribute :: proc(C : ValueRef, Idx : _c.uint, KindID : _c.uint) ---;

    @(link_name="LLVMRemoveCallSiteStringAttribute")
    RemoveCallSiteStringAttribute :: proc(C : ValueRef, Idx : _c.uint, K : cstring, KLen : _c.uint) ---;

    @(link_name="LLVMGetCalledFunctionType")
    GetCalledFunctionType :: proc(C : ValueRef) -> TypeRef ---;

    @(link_name="LLVMGetCalledValue")
    GetCalledValue :: proc(Instr : ValueRef) -> ValueRef ---;

    @(link_name="LLVMIsTailCall")
    IsTailCall :: proc(CallInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetTailCall")
    SetTailCall :: proc(CallInst : ValueRef, IsTailCall : Bool) ---;

    @(link_name="LLVMGetNormalDest")
    GetNormalDest :: proc(InvokeInst : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetUnwindDest")
    GetUnwindDest :: proc(InvokeInst : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMSetNormalDest")
    SetNormalDest :: proc(InvokeInst : ValueRef, B : BasicBlockRef) ---;

    @(link_name="LLVMSetUnwindDest")
    SetUnwindDest :: proc(InvokeInst : ValueRef, B : BasicBlockRef) ---;

    @(link_name="LLVMGetNumSuccessors")
    GetNumSuccessors :: proc(Term : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetSuccessor")
    GetSuccessor :: proc(Term : ValueRef, i : _c.uint) -> BasicBlockRef ---;

    @(link_name="LLVMSetSuccessor")
    SetSuccessor :: proc(Term : ValueRef, i : _c.uint, block : BasicBlockRef) ---;

    @(link_name="LLVMIsConditional")
    IsConditional :: proc(Branch : ValueRef) -> Bool ---;

    @(link_name="LLVMGetCondition")
    GetCondition :: proc(Branch : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetCondition")
    SetCondition :: proc(Branch : ValueRef, Cond : ValueRef) ---;

    @(link_name="LLVMGetSwitchDefaultDest")
    GetSwitchDefaultDest :: proc(SwitchInstr : ValueRef) -> BasicBlockRef ---;

    @(link_name="LLVMGetAllocatedType")
    GetAllocatedType :: proc(Alloca : ValueRef) -> TypeRef ---;

    @(link_name="LLVMIsInBounds")
    IsInBounds :: proc(GEP : ValueRef) -> Bool ---;

    @(link_name="LLVMSetIsInBounds")
    SetIsInBounds :: proc(GEP : ValueRef, InBounds : Bool) ---;

    @(link_name="LLVMGetGEPSourceElementType")
    GetGEPSourceElementType :: proc(GEP : ValueRef) -> TypeRef ---;

    @(link_name="LLVMAddIncoming")
    AddIncoming :: proc(PhiNode : ValueRef, IncomingValues : ^ValueRef, IncomingBlocks : ^BasicBlockRef, Count : _c.uint) ---;

    @(link_name="LLVMCountIncoming")
    CountIncoming :: proc(PhiNode : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetIncomingValue")
    GetIncomingValue :: proc(PhiNode : ValueRef, Index : _c.uint) -> ValueRef ---;

    @(link_name="LLVMGetIncomingBlock")
    GetIncomingBlock :: proc(PhiNode : ValueRef, Index : _c.uint) -> BasicBlockRef ---;

    @(link_name="LLVMGetNumIndices")
    GetNumIndices :: proc(Inst : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetIndices")
    GetIndices :: proc(Inst : ValueRef) -> ^_c.uint ---;

    @(link_name="LLVMCreateBuilderInContext")
    CreateBuilderInContext :: proc(C : ContextRef) -> BuilderRef ---;

    @(link_name="LLVMCreateBuilder")
    CreateBuilder :: proc() -> BuilderRef ---;

    @(link_name="LLVMPositionBuilder")
    PositionBuilder :: proc(Builder : BuilderRef, Block : BasicBlockRef, Instr : ValueRef) ---;

    @(link_name="LLVMPositionBuilderBefore")
    PositionBuilderBefore :: proc(Builder : BuilderRef, Instr : ValueRef) ---;

    @(link_name="LLVMPositionBuilderAtEnd")
    PositionBuilderAtEnd :: proc(Builder : BuilderRef, Block : BasicBlockRef) ---;

    @(link_name="LLVMGetInsertBlock")
    GetInsertBlock :: proc(Builder : BuilderRef) -> BasicBlockRef ---;

    @(link_name="LLVMClearInsertionPosition")
    ClearInsertionPosition :: proc(Builder : BuilderRef) ---;

    @(link_name="LLVMInsertIntoBuilder")
    InsertIntoBuilder :: proc(Builder : BuilderRef, Instr : ValueRef) ---;

    @(link_name="LLVMInsertIntoBuilderWithName")
    InsertIntoBuilderWithName :: proc(Builder : BuilderRef, Instr : ValueRef, Name : cstring) ---;

    @(link_name="LLVMDisposeBuilder")
    DisposeBuilder :: proc(Builder : BuilderRef) ---;

    @(link_name="LLVMGetCurrentDebugLocation2")
    GetCurrentDebugLocation2 :: proc(Builder : BuilderRef) -> MetadataRef ---;

    @(link_name="LLVMSetCurrentDebugLocation2")
    SetCurrentDebugLocation2 :: proc(Builder : BuilderRef, Loc : MetadataRef) ---;

    @(link_name="LLVMSetInstDebugLocation")
    SetInstDebugLocation :: proc(Builder : BuilderRef, Inst : ValueRef) ---;

    @(link_name="LLVMAddMetadataToInst")
    AddMetadataToInst :: proc(Builder : BuilderRef, Inst : ValueRef) ---;

    @(link_name="LLVMBuilderGetDefaultFPMathTag")
    BuilderGetDefaultFPMathTag :: proc(Builder : BuilderRef) -> MetadataRef ---;

    @(link_name="LLVMBuilderSetDefaultFPMathTag")
    BuilderSetDefaultFPMathTag :: proc(Builder : BuilderRef, FPMathTag : MetadataRef) ---;

    @(link_name="LLVMSetCurrentDebugLocation")
    SetCurrentDebugLocation :: proc(Builder : BuilderRef, L : ValueRef) ---;

    @(link_name="LLVMGetCurrentDebugLocation")
    GetCurrentDebugLocation :: proc(Builder : BuilderRef) -> ValueRef ---;

    @(link_name="LLVMBuildRetVoid")
    BuildRetVoid :: proc(unamed0 : BuilderRef) -> ValueRef ---;

    @(link_name="LLVMBuildRet")
    BuildRet :: proc(unamed0 : BuilderRef, V : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBuildAggregateRet")
    BuildAggregateRet :: proc(unamed0 : BuilderRef, RetVals : ^ValueRef, N : _c.uint) -> ValueRef ---;

    @(link_name="LLVMBuildBr")
    BuildBr :: proc(unamed0 : BuilderRef, Dest : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMBuildCondBr")
    BuildCondBr :: proc(unamed0 : BuilderRef, If : ValueRef, Then : BasicBlockRef, Else : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMBuildSwitch")
    BuildSwitch :: proc(unamed0 : BuilderRef, V : ValueRef, Else : BasicBlockRef, NumCases : _c.uint) -> ValueRef ---;

    @(link_name="LLVMBuildIndirectBr")
    BuildIndirectBr :: proc(B : BuilderRef, Addr : ValueRef, NumDests : _c.uint) -> ValueRef ---;

    @(link_name="LLVMBuildInvoke2")
    BuildInvoke2 :: proc(unamed0 : BuilderRef, Ty : TypeRef, Fn : ValueRef, Args : ^ValueRef, NumArgs : _c.uint, Then : BasicBlockRef, Catch : BasicBlockRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildUnreachable")
    BuildUnreachable :: proc(unamed0 : BuilderRef) -> ValueRef ---;

    @(link_name="LLVMBuildResume")
    BuildResume :: proc(B : BuilderRef, Exn : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBuildLandingPad")
    BuildLandingPad :: proc(B : BuilderRef, Ty : TypeRef, PersFn : ValueRef, NumClauses : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildCleanupRet")
    BuildCleanupRet :: proc(B : BuilderRef, CatchPad : ValueRef, BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMBuildCatchRet")
    BuildCatchRet :: proc(B : BuilderRef, CatchPad : ValueRef, BB : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMBuildCatchPad")
    BuildCatchPad :: proc(B : BuilderRef, ParentPad : ValueRef, Args : ^ValueRef, NumArgs : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildCleanupPad")
    BuildCleanupPad :: proc(B : BuilderRef, ParentPad : ValueRef, Args : ^ValueRef, NumArgs : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildCatchSwitch")
    BuildCatchSwitch :: proc(B : BuilderRef, ParentPad : ValueRef, UnwindBB : BasicBlockRef, NumHandlers : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMAddCase")
    AddCase :: proc(Switch : ValueRef, OnVal : ValueRef, Dest : BasicBlockRef) ---;

    @(link_name="LLVMAddDestination")
    AddDestination :: proc(IndirectBr : ValueRef, Dest : BasicBlockRef) ---;

    @(link_name="LLVMGetNumClauses")
    GetNumClauses :: proc(LandingPad : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetClause")
    GetClause :: proc(LandingPad : ValueRef, Idx : _c.uint) -> ValueRef ---;

    @(link_name="LLVMAddClause")
    AddClause :: proc(LandingPad : ValueRef, ClauseVal : ValueRef) ---;

    @(link_name="LLVMIsCleanup")
    IsCleanup :: proc(LandingPad : ValueRef) -> Bool ---;

    @(link_name="LLVMSetCleanup")
    SetCleanup :: proc(LandingPad : ValueRef, Val : Bool) ---;

    @(link_name="LLVMAddHandler")
    AddHandler :: proc(CatchSwitch : ValueRef, Dest : BasicBlockRef) ---;

    @(link_name="LLVMGetNumHandlers")
    GetNumHandlers :: proc(CatchSwitch : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetHandlers")
    GetHandlers :: proc(CatchSwitch : ValueRef, Handlers : ^BasicBlockRef) ---;

    @(link_name="LLVMGetArgOperand")
    GetArgOperand :: proc(Funclet : ValueRef, i : _c.uint) -> ValueRef ---;

    @(link_name="LLVMSetArgOperand")
    SetArgOperand :: proc(Funclet : ValueRef, i : _c.uint, value : ValueRef) ---;

    @(link_name="LLVMGetParentCatchSwitch")
    GetParentCatchSwitch :: proc(CatchPad : ValueRef) -> ValueRef ---;

    @(link_name="LLVMSetParentCatchSwitch")
    SetParentCatchSwitch :: proc(CatchPad : ValueRef, CatchSwitch : ValueRef) ---;

    @(link_name="LLVMBuildAdd")
    BuildAdd :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNSWAdd")
    BuildNSWAdd :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNUWAdd")
    BuildNUWAdd :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFAdd")
    BuildFAdd :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSub")
    BuildSub :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNSWSub")
    BuildNSWSub :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNUWSub")
    BuildNUWSub :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFSub")
    BuildFSub :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildMul")
    BuildMul :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNSWMul")
    BuildNSWMul :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNUWMul")
    BuildNUWMul :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFMul")
    BuildFMul :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildUDiv")
    BuildUDiv :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildExactUDiv")
    BuildExactUDiv :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSDiv")
    BuildSDiv :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildExactSDiv")
    BuildExactSDiv :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFDiv")
    BuildFDiv :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildURem")
    BuildURem :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSRem")
    BuildSRem :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFRem")
    BuildFRem :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildShl")
    BuildShl :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildLShr")
    BuildLShr :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildAShr")
    BuildAShr :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildAnd")
    BuildAnd :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildOr")
    BuildOr :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildXor")
    BuildXor :: proc(unamed0 : BuilderRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildBinOp")
    BuildBinOp :: proc(B : BuilderRef, Op : Opcode, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNeg")
    BuildNeg :: proc(unamed0 : BuilderRef, V : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNSWNeg")
    BuildNSWNeg :: proc(B : BuilderRef, V : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNUWNeg")
    BuildNUWNeg :: proc(B : BuilderRef, V : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFNeg")
    BuildFNeg :: proc(unamed0 : BuilderRef, V : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildNot")
    BuildNot :: proc(unamed0 : BuilderRef, V : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMGetNUW")
    GetNUW :: proc(ArithInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetNUW")
    SetNUW :: proc(ArithInst : ValueRef, HasNUW : Bool) ---;

    @(link_name="LLVMGetNSW")
    GetNSW :: proc(ArithInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetNSW")
    SetNSW :: proc(ArithInst : ValueRef, HasNSW : Bool) ---;

    @(link_name="LLVMGetExact")
    GetExact :: proc(DivOrShrInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetExact")
    SetExact :: proc(DivOrShrInst : ValueRef, IsExact : Bool) ---;

    @(link_name="LLVMBuildMalloc")
    BuildMalloc :: proc(unamed0 : BuilderRef, Ty : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildArrayMalloc")
    BuildArrayMalloc :: proc(unamed0 : BuilderRef, Ty : TypeRef, Val : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildMemSet")
    BuildMemSet :: proc(B : BuilderRef, Ptr : ValueRef, Val : ValueRef, Len : ValueRef, Align : _c.uint) -> ValueRef ---;

    @(link_name="LLVMBuildMemCpy")
    BuildMemCpy :: proc(B : BuilderRef, Dst : ValueRef, DstAlign : _c.uint, Src : ValueRef, SrcAlign : _c.uint, Size : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBuildMemMove")
    BuildMemMove :: proc(B : BuilderRef, Dst : ValueRef, DstAlign : _c.uint, Src : ValueRef, SrcAlign : _c.uint, Size : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBuildAlloca")
    BuildAlloca :: proc(unamed0 : BuilderRef, Ty : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildArrayAlloca")
    BuildArrayAlloca :: proc(unamed0 : BuilderRef, Ty : TypeRef, Val : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFree")
    BuildFree :: proc(unamed0 : BuilderRef, PointerVal : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBuildLoad2")
    BuildLoad2 :: proc(unamed0 : BuilderRef, Ty : TypeRef, PointerVal : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildStore")
    BuildStore :: proc(unamed0 : BuilderRef, Val : ValueRef, Ptr : ValueRef) -> ValueRef ---;

    @(link_name="LLVMBuildGEP2")
    BuildGEP2 :: proc(B : BuilderRef, Ty : TypeRef, Pointer : ValueRef, Indices : ^ValueRef, NumIndices : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildInBoundsGEP2")
    BuildInBoundsGEP2 :: proc(B : BuilderRef, Ty : TypeRef, Pointer : ValueRef, Indices : ^ValueRef, NumIndices : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildStructGEP2")
    BuildStructGEP2 :: proc(B : BuilderRef, Ty : TypeRef, Pointer : ValueRef, Idx : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildGlobalString")
    BuildGlobalString :: proc(B : BuilderRef, Str : cstring, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildGlobalStringPtr")
    BuildGlobalStringPtr :: proc(B : BuilderRef, Str : cstring, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMGetVolatile")
    GetVolatile :: proc(MemoryAccessInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetVolatile")
    SetVolatile :: proc(MemoryAccessInst : ValueRef, IsVolatile : Bool) ---;

    @(link_name="LLVMGetWeak")
    GetWeak :: proc(CmpXchgInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetWeak")
    SetWeak :: proc(CmpXchgInst : ValueRef, IsWeak : Bool) ---;

    @(link_name="LLVMGetOrdering")
    GetOrdering :: proc(MemoryAccessInst : ValueRef) -> AtomicOrdering ---;

    @(link_name="LLVMSetOrdering")
    SetOrdering :: proc(MemoryAccessInst : ValueRef, Ordering : AtomicOrdering) ---;

    @(link_name="LLVMGetAtomicRMWBinOp")
    GetAtomicRMWBinOp :: proc(AtomicRMWInst : ValueRef) -> AtomicRMWBinOp ---;

    @(link_name="LLVMSetAtomicRMWBinOp")
    SetAtomicRMWBinOp :: proc(AtomicRMWInst : ValueRef, BinOp : AtomicRMWBinOp) ---;

    @(link_name="LLVMBuildTrunc")
    BuildTrunc :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildZExt")
    BuildZExt :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSExt")
    BuildSExt :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFPToUI")
    BuildFPToUI :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFPToSI")
    BuildFPToSI :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildUIToFP")
    BuildUIToFP :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSIToFP")
    BuildSIToFP :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFPTrunc")
    BuildFPTrunc :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFPExt")
    BuildFPExt :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildPtrToInt")
    BuildPtrToInt :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildIntToPtr")
    BuildIntToPtr :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildBitCast")
    BuildBitCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildAddrSpaceCast")
    BuildAddrSpaceCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildZExtOrBitCast")
    BuildZExtOrBitCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSExtOrBitCast")
    BuildSExtOrBitCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildTruncOrBitCast")
    BuildTruncOrBitCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildCast")
    BuildCast :: proc(B : BuilderRef, Op : Opcode, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildPointerCast")
    BuildPointerCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildIntCast2")
    BuildIntCast2 :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, IsSigned : Bool, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFPCast")
    BuildFPCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildIntCast")
    BuildIntCast :: proc(unamed0 : BuilderRef, Val : ValueRef, DestTy : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMGetCastOpcode")
    GetCastOpcode :: proc(Src : ValueRef, SrcIsSigned : Bool, DestTy : TypeRef, DestIsSigned : Bool) -> Opcode ---;

    @(link_name="LLVMBuildICmp")
    BuildICmp :: proc(unamed0 : BuilderRef, Op : IntPredicate, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFCmp")
    BuildFCmp :: proc(unamed0 : BuilderRef, Op : RealPredicate, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildPhi")
    BuildPhi :: proc(unamed0 : BuilderRef, Ty : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildCall2")
    BuildCall2 :: proc(unamed0 : BuilderRef, unamed1 : TypeRef, Fn : ValueRef, Args : ^ValueRef, NumArgs : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildSelect")
    BuildSelect :: proc(unamed0 : BuilderRef, If : ValueRef, Then : ValueRef, Else : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildVAArg")
    BuildVAArg :: proc(unamed0 : BuilderRef, List : ValueRef, Ty : TypeRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildExtractElement")
    BuildExtractElement :: proc(unamed0 : BuilderRef, VecVal : ValueRef, Index : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildInsertElement")
    BuildInsertElement :: proc(unamed0 : BuilderRef, VecVal : ValueRef, EltVal : ValueRef, Index : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildShuffleVector")
    BuildShuffleVector :: proc(unamed0 : BuilderRef, V1 : ValueRef, V2 : ValueRef, Mask : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildExtractValue")
    BuildExtractValue :: proc(unamed0 : BuilderRef, AggVal : ValueRef, Index : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildInsertValue")
    BuildInsertValue :: proc(unamed0 : BuilderRef, AggVal : ValueRef, EltVal : ValueRef, Index : _c.uint, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFreeze")
    BuildFreeze :: proc(unamed0 : BuilderRef, Val : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildIsNull")
    BuildIsNull :: proc(unamed0 : BuilderRef, Val : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildIsNotNull")
    BuildIsNotNull :: proc(unamed0 : BuilderRef, Val : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildPtrDiff2")
    BuildPtrDiff2 :: proc(unamed0 : BuilderRef, ElemTy : TypeRef, LHS : ValueRef, RHS : ValueRef, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildFence")
    BuildFence :: proc(B : BuilderRef, ordering : AtomicOrdering, singleThread : Bool, Name : cstring) -> ValueRef ---;

    @(link_name="LLVMBuildAtomicRMW")
    BuildAtomicRMW :: proc(B : BuilderRef, op : AtomicRMWBinOp, PTR : ValueRef, Val : ValueRef, ordering : AtomicOrdering, singleThread : Bool) -> ValueRef ---;

    @(link_name="LLVMBuildAtomicCmpXchg")
    BuildAtomicCmpXchg :: proc(B : BuilderRef, Ptr : ValueRef, Cmp : ValueRef, New : ValueRef, SuccessOrdering : AtomicOrdering, FailureOrdering : AtomicOrdering, SingleThread : Bool) -> ValueRef ---;

    @(link_name="LLVMGetNumMaskElements")
    GetNumMaskElements :: proc(ShuffleVectorInst : ValueRef) -> _c.uint ---;

    @(link_name="LLVMGetUndefMaskElem")
    GetUndefMaskElem :: proc() -> _c.int ---;

    @(link_name="LLVMGetMaskValue")
    GetMaskValue :: proc(ShuffleVectorInst : ValueRef, Elt : _c.uint) -> _c.int ---;

    @(link_name="LLVMIsAtomicSingleThread")
    IsAtomicSingleThread :: proc(AtomicInst : ValueRef) -> Bool ---;

    @(link_name="LLVMSetAtomicSingleThread")
    SetAtomicSingleThread :: proc(AtomicInst : ValueRef, SingleThread : Bool) ---;

    @(link_name="LLVMGetCmpXchgSuccessOrdering")
    GetCmpXchgSuccessOrdering :: proc(CmpXchgInst : ValueRef) -> AtomicOrdering ---;

    @(link_name="LLVMSetCmpXchgSuccessOrdering")
    SetCmpXchgSuccessOrdering :: proc(CmpXchgInst : ValueRef, Ordering : AtomicOrdering) ---;

    @(link_name="LLVMGetCmpXchgFailureOrdering")
    GetCmpXchgFailureOrdering :: proc(CmpXchgInst : ValueRef) -> AtomicOrdering ---;

    @(link_name="LLVMSetCmpXchgFailureOrdering")
    SetCmpXchgFailureOrdering :: proc(CmpXchgInst : ValueRef, Ordering : AtomicOrdering) ---;

    @(link_name="LLVMCreateModuleProviderForExistingModule")
    CreateModuleProviderForExistingModule :: proc(M : ModuleRef) -> ModuleProviderRef ---;

    @(link_name="LLVMDisposeModuleProvider")
    DisposeModuleProvider :: proc(M : ModuleProviderRef) ---;

    @(link_name="LLVMCreateMemoryBufferWithContentsOfFile")
    CreateMemoryBufferWithContentsOfFile :: proc(Path : cstring, OutMemBuf : ^MemoryBufferRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMCreateMemoryBufferWithSTDIN")
    CreateMemoryBufferWithSTDIN :: proc(OutMemBuf : ^MemoryBufferRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMCreateMemoryBufferWithMemoryRange")
    CreateMemoryBufferWithMemoryRange :: proc(InputData : cstring, InputDataLength : _c.size_t, BufferName : cstring, RequiresNullTerminator : Bool) -> MemoryBufferRef ---;

    @(link_name="LLVMCreateMemoryBufferWithMemoryRangeCopy")
    CreateMemoryBufferWithMemoryRangeCopy :: proc(InputData : cstring, InputDataLength : _c.size_t, BufferName : cstring) -> MemoryBufferRef ---;

    @(link_name="LLVMGetBufferStart")
    GetBufferStart :: proc(MemBuf : MemoryBufferRef) -> cstring ---;

    @(link_name="LLVMGetBufferSize")
    GetBufferSize :: proc(MemBuf : MemoryBufferRef) -> _c.size_t ---;

    @(link_name="LLVMDisposeMemoryBuffer")
    DisposeMemoryBuffer :: proc(MemBuf : MemoryBufferRef) ---;

    @(link_name="LLVMCreatePassManager")
    CreatePassManager :: proc() -> PassManagerRef ---;

    @(link_name="LLVMCreateFunctionPassManagerForModule")
    CreateFunctionPassManagerForModule :: proc(M : ModuleRef) -> PassManagerRef ---;

    @(link_name="LLVMCreateFunctionPassManager")
    CreateFunctionPassManager :: proc(MP : ModuleProviderRef) -> PassManagerRef ---;

    @(link_name="LLVMRunPassManager")
    RunPassManager :: proc(PM : PassManagerRef, M : ModuleRef) -> Bool ---;

    @(link_name="LLVMInitializeFunctionPassManager")
    InitializeFunctionPassManager :: proc(FPM : PassManagerRef) -> Bool ---;

    @(link_name="LLVMRunFunctionPassManager")
    RunFunctionPassManager :: proc(FPM : PassManagerRef, F : ValueRef) -> Bool ---;

    @(link_name="LLVMFinalizeFunctionPassManager")
    FinalizeFunctionPassManager :: proc(FPM : PassManagerRef) -> Bool ---;

    @(link_name="LLVMDisposePassManager")
    DisposePassManager :: proc(PM : PassManagerRef) ---;

    @(link_name="LLVMStartMultithreaded")
    StartMultithreaded :: proc() -> Bool ---;

    @(link_name="LLVMStopMultithreaded")
    StopMultithreaded :: proc() ---;

    @(link_name="LLVMIsMultithreaded")
    IsMultithreaded :: proc() -> Bool ---;

    @(link_name="LLVMDebugMetadataVersion")
    DebugMetadataVersion :: proc() -> _c.uint ---;

    @(link_name="LLVMGetModuleDebugMetadataVersion")
    GetModuleDebugMetadataVersion :: proc(Module : ModuleRef) -> _c.uint ---;

    @(link_name="LLVMStripModuleDebugInfo")
    StripModuleDebugInfo :: proc(Module : ModuleRef) -> Bool ---;

    @(link_name="LLVMCreateDIBuilderDisallowUnresolved")
    CreateDIBuilderDisallowUnresolved :: proc(M : ModuleRef) -> DIBuilderRef ---;

    @(link_name="LLVMCreateDIBuilder")
    CreateDIBuilder :: proc(M : ModuleRef) -> DIBuilderRef ---;

    @(link_name="LLVMDisposeDIBuilder")
    DisposeDIBuilder :: proc(Builder : DIBuilderRef) ---;

    @(link_name="LLVMDIBuilderFinalize")
    DIBuilderFinalize :: proc(Builder : DIBuilderRef) ---;

    @(link_name="LLVMDIBuilderFinalizeSubprogram")
    DIBuilderFinalizeSubprogram :: proc(Builder : DIBuilderRef, Subprogram : MetadataRef) ---;

    @(link_name="LLVMDIBuilderCreateCompileUnit")
    DIBuilderCreateCompileUnit :: proc(Builder : DIBuilderRef, Lang : DWARFSourceLanguage, FileRef : MetadataRef, Producer : cstring, ProducerLen : _c.size_t, isOptimized : Bool, Flags : cstring, FlagsLen : _c.size_t, RuntimeVer : _c.uint, SplitName : cstring, SplitNameLen : _c.size_t, Kind : DWARFEmissionKind, DWOId : _c.uint, SplitDebugInlining : Bool, DebugInfoForProfiling : Bool, SysRoot : cstring, SysRootLen : _c.size_t, SDK : cstring, SDKLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateFile")
    DIBuilderCreateFile :: proc(Builder : DIBuilderRef, Filename : cstring, FilenameLen : _c.size_t, Directory : cstring, DirectoryLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateModule")
    DIBuilderCreateModule :: proc(Builder : DIBuilderRef, ParentScope : MetadataRef, Name : cstring, NameLen : _c.size_t, ConfigMacros : cstring, ConfigMacrosLen : _c.size_t, IncludePath : cstring, IncludePathLen : _c.size_t, APINotesFile : cstring, APINotesFileLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateNameSpace")
    DIBuilderCreateNameSpace :: proc(Builder : DIBuilderRef, ParentScope : MetadataRef, Name : cstring, NameLen : _c.size_t, ExportSymbols : Bool) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateFunction")
    DIBuilderCreateFunction :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, LinkageName : cstring, LinkageNameLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, Ty : MetadataRef, IsLocalToUnit : Bool, IsDefinition : Bool, ScopeLine : _c.uint, Flags : DIFlags, IsOptimized : Bool) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateLexicalBlock")
    DIBuilderCreateLexicalBlock :: proc(Builder : DIBuilderRef, Scope : MetadataRef, File : MetadataRef, Line : _c.uint, Column : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateLexicalBlockFile")
    DIBuilderCreateLexicalBlockFile :: proc(Builder : DIBuilderRef, Scope : MetadataRef, File : MetadataRef, Discriminator : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedModuleFromNamespace")
    DIBuilderCreateImportedModuleFromNamespace :: proc(Builder : DIBuilderRef, Scope : MetadataRef, NS : MetadataRef, File : MetadataRef, Line : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedModuleFromAlias")
    DIBuilderCreateImportedModuleFromAlias :: proc(Builder : DIBuilderRef, Scope : MetadataRef, ImportedEntity : MetadataRef, File : MetadataRef, Line : _c.uint, Elements : ^MetadataRef, NumElements : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedModuleFromModule")
    DIBuilderCreateImportedModuleFromModule :: proc(Builder : DIBuilderRef, Scope : MetadataRef, M : MetadataRef, File : MetadataRef, Line : _c.uint, Elements : ^MetadataRef, NumElements : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateImportedDeclaration")
    DIBuilderCreateImportedDeclaration :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Decl : MetadataRef, File : MetadataRef, Line : _c.uint, Name : cstring, NameLen : _c.size_t, Elements : ^MetadataRef, NumElements : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateDebugLocation")
    DIBuilderCreateDebugLocation :: proc(Ctx : ContextRef, Line : _c.uint, Column : _c.uint, Scope : MetadataRef, InlinedAt : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDILocationGetLine")
    DILocationGetLine :: proc(Location : MetadataRef) -> _c.uint ---;

    @(link_name="LLVMDILocationGetColumn")
    DILocationGetColumn :: proc(Location : MetadataRef) -> _c.uint ---;

    @(link_name="LLVMDILocationGetScope")
    DILocationGetScope :: proc(Location : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDILocationGetInlinedAt")
    DILocationGetInlinedAt :: proc(Location : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIScopeGetFile")
    DIScopeGetFile :: proc(Scope : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIFileGetDirectory")
    DIFileGetDirectory :: proc(File : MetadataRef, Len : ^_c.uint) -> cstring ---;

    @(link_name="LLVMDIFileGetFilename")
    DIFileGetFilename :: proc(File : MetadataRef, Len : ^_c.uint) -> cstring ---;

    @(link_name="LLVMDIFileGetSource")
    DIFileGetSource :: proc(File : MetadataRef, Len : ^_c.uint) -> cstring ---;

    @(link_name="LLVMDIBuilderGetOrCreateTypeArray")
    DIBuilderGetOrCreateTypeArray :: proc(Builder : DIBuilderRef, Data : ^MetadataRef, NumElements : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateSubroutineType")
    DIBuilderCreateSubroutineType :: proc(Builder : DIBuilderRef, File : MetadataRef, ParameterTypes : ^MetadataRef, NumParameterTypes : _c.uint, Flags : DIFlags) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateMacro")
    DIBuilderCreateMacro :: proc(Builder : DIBuilderRef, ParentMacroFile : MetadataRef, Line : _c.uint, RecordType : DWARFMacinfoRecordType, Name : cstring, NameLen : _c.size_t, Value : cstring, ValueLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateTempMacroFile")
    DIBuilderCreateTempMacroFile :: proc(Builder : DIBuilderRef, ParentMacroFile : MetadataRef, Line : _c.uint, File : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateEnumerator")
    DIBuilderCreateEnumerator :: proc(Builder : DIBuilderRef, Name : cstring, NameLen : _c.size_t, Value : i64, IsUnsigned : Bool) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateEnumerationType")
    DIBuilderCreateEnumerationType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, Elements : ^MetadataRef, NumElements : _c.uint, ClassTy : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateUnionType")
    DIBuilderCreateUnionType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, Flags : DIFlags, Elements : ^MetadataRef, NumElements : _c.uint, RunTimeLang : _c.uint, UniqueId : cstring, UniqueIdLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateArrayType")
    DIBuilderCreateArrayType :: proc(Builder : DIBuilderRef, Size : u64, AlignInBits : u32, Ty : MetadataRef, Subscripts : ^MetadataRef, NumSubscripts : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateVectorType")
    DIBuilderCreateVectorType :: proc(Builder : DIBuilderRef, Size : u64, AlignInBits : u32, Ty : MetadataRef, Subscripts : ^MetadataRef, NumSubscripts : _c.uint) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateUnspecifiedType")
    DIBuilderCreateUnspecifiedType :: proc(Builder : DIBuilderRef, Name : cstring, NameLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateBasicType")
    DIBuilderCreateBasicType :: proc(Builder : DIBuilderRef, Name : cstring, NameLen : _c.size_t, SizeInBits : u64, Encoding : _c.uint, Flags : DIFlags) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreatePointerType")
    DIBuilderCreatePointerType :: proc(Builder : DIBuilderRef, PointeeTy : MetadataRef, SizeInBits : u64, AlignInBits : u32, AddressSpace : _c.uint, Name : cstring, NameLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateStructType")
    DIBuilderCreateStructType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, Flags : DIFlags, DerivedFrom : MetadataRef, Elements : ^MetadataRef, NumElements : _c.uint, RunTimeLang : _c.uint, VTableHolder : MetadataRef, UniqueId : cstring, UniqueIdLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateMemberType")
    DIBuilderCreateMemberType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, SizeInBits : u64, AlignInBits : u32, OffsetInBits : u64, Flags : DIFlags, Ty : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateStaticMemberType")
    DIBuilderCreateStaticMemberType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNumber : _c.uint, Type : MetadataRef, Flags : DIFlags, ConstantVal : ValueRef, AlignInBits : u32) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateMemberPointerType")
    DIBuilderCreateMemberPointerType :: proc(Builder : DIBuilderRef, PointeeType : MetadataRef, ClassType : MetadataRef, SizeInBits : u64, AlignInBits : u32, Flags : DIFlags) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateObjCIVar")
    DIBuilderCreateObjCIVar :: proc(Builder : DIBuilderRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, SizeInBits : u64, AlignInBits : u32, OffsetInBits : u64, Flags : DIFlags, Ty : MetadataRef, PropertyNode : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateObjCProperty")
    DIBuilderCreateObjCProperty :: proc(Builder : DIBuilderRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, GetterName : cstring, GetterNameLen : _c.size_t, SetterName : cstring, SetterNameLen : _c.size_t, PropertyAttributes : _c.uint, Ty : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateObjectPointerType")
    DIBuilderCreateObjectPointerType :: proc(Builder : DIBuilderRef, Type : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateQualifiedType")
    DIBuilderCreateQualifiedType :: proc(Builder : DIBuilderRef, Tag : _c.uint, Type : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateReferenceType")
    DIBuilderCreateReferenceType :: proc(Builder : DIBuilderRef, Tag : _c.uint, Type : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateNullPtrType")
    DIBuilderCreateNullPtrType :: proc(Builder : DIBuilderRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateTypedef")
    DIBuilderCreateTypedef :: proc(Builder : DIBuilderRef, Type : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, Scope : MetadataRef, AlignInBits : u32) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateInheritance")
    DIBuilderCreateInheritance :: proc(Builder : DIBuilderRef, Ty : MetadataRef, BaseTy : MetadataRef, BaseOffset : u64, VBPtrOffset : u32, Flags : DIFlags) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateForwardDecl")
    DIBuilderCreateForwardDecl :: proc(Builder : DIBuilderRef, Tag : _c.uint, Name : cstring, NameLen : _c.size_t, Scope : MetadataRef, File : MetadataRef, Line : _c.uint, RuntimeLang : _c.uint, SizeInBits : u64, AlignInBits : u32, UniqueIdentifier : cstring, UniqueIdentifierLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateReplaceableCompositeType")
    DIBuilderCreateReplaceableCompositeType :: proc(Builder : DIBuilderRef, Tag : _c.uint, Name : cstring, NameLen : _c.size_t, Scope : MetadataRef, File : MetadataRef, Line : _c.uint, RuntimeLang : _c.uint, SizeInBits : u64, AlignInBits : u32, Flags : DIFlags, UniqueIdentifier : cstring, UniqueIdentifierLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateBitFieldMemberType")
    DIBuilderCreateBitFieldMemberType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNumber : _c.uint, SizeInBits : u64, OffsetInBits : u64, StorageOffsetInBits : u64, Flags : DIFlags, Type : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateClassType")
    DIBuilderCreateClassType :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNumber : _c.uint, SizeInBits : u64, AlignInBits : u32, OffsetInBits : u64, Flags : DIFlags, DerivedFrom : MetadataRef, Elements : ^MetadataRef, NumElements : _c.uint, VTableHolder : MetadataRef, TemplateParamsNode : MetadataRef, UniqueIdentifier : cstring, UniqueIdentifierLen : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateArtificialType")
    DIBuilderCreateArtificialType :: proc(Builder : DIBuilderRef, Type : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDITypeGetName")
    DITypeGetName :: proc(DType : MetadataRef, Length : ^_c.size_t) -> cstring ---;

    @(link_name="LLVMDITypeGetSizeInBits")
    DITypeGetSizeInBits :: proc(DType : MetadataRef) -> u64 ---;

    @(link_name="LLVMDITypeGetOffsetInBits")
    DITypeGetOffsetInBits :: proc(DType : MetadataRef) -> u64 ---;

    @(link_name="LLVMDITypeGetAlignInBits")
    DITypeGetAlignInBits :: proc(DType : MetadataRef) -> u32 ---;

    @(link_name="LLVMDITypeGetLine")
    DITypeGetLine :: proc(DType : MetadataRef) -> _c.uint ---;

    @(link_name="LLVMDITypeGetFlags")
    DITypeGetFlags :: proc(DType : MetadataRef) -> DIFlags ---;

    @(link_name="LLVMDIBuilderGetOrCreateSubrange")
    DIBuilderGetOrCreateSubrange :: proc(Builder : DIBuilderRef, LowerBound : i64, Count : i64) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderGetOrCreateArray")
    DIBuilderGetOrCreateArray :: proc(Builder : DIBuilderRef, Data : ^MetadataRef, NumElements : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateExpression")
    DIBuilderCreateExpression :: proc(Builder : DIBuilderRef, Addr : ^u64, Length : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateConstantValueExpression")
    DIBuilderCreateConstantValueExpression :: proc(Builder : DIBuilderRef, Value : u64) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateGlobalVariableExpression")
    DIBuilderCreateGlobalVariableExpression :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, Linkage : cstring, LinkLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, Ty : MetadataRef, LocalToUnit : Bool, Expr : MetadataRef, Decl : MetadataRef, AlignInBits : u32) -> MetadataRef ---;

    @(link_name="LLVMGetDINodeTag")
    GetDINodeTag :: proc(MD : MetadataRef) -> u16 ---;

    @(link_name="LLVMDIGlobalVariableExpressionGetVariable")
    DIGlobalVariableExpressionGetVariable :: proc(GVE : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIGlobalVariableExpressionGetExpression")
    DIGlobalVariableExpressionGetExpression :: proc(GVE : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIVariableGetFile")
    DIVariableGetFile :: proc(Var : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIVariableGetScope")
    DIVariableGetScope :: proc(Var : MetadataRef) -> MetadataRef ---;

    @(link_name="LLVMDIVariableGetLine")
    DIVariableGetLine :: proc(Var : MetadataRef) -> _c.uint ---;

    @(link_name="LLVMTemporaryMDNode")
    TemporaryMDNode :: proc(Ctx : ContextRef, Data : ^MetadataRef, NumElements : _c.size_t) -> MetadataRef ---;

    @(link_name="LLVMDisposeTemporaryMDNode")
    DisposeTemporaryMDNode :: proc(TempNode : MetadataRef) ---;

    @(link_name="LLVMMetadataReplaceAllUsesWith")
    MetadataReplaceAllUsesWith :: proc(TempTargetMetadata : MetadataRef, Replacement : MetadataRef) ---;

    @(link_name="LLVMDIBuilderCreateTempGlobalVariableFwdDecl")
    DIBuilderCreateTempGlobalVariableFwdDecl :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, Linkage : cstring, LnkLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, Ty : MetadataRef, LocalToUnit : Bool, Decl : MetadataRef, AlignInBits : u32) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderInsertDeclareBefore")
    DIBuilderInsertDeclareBefore :: proc(Builder : DIBuilderRef, Storage : ValueRef, VarInfo : MetadataRef, Expr : MetadataRef, DebugLoc : MetadataRef, Instr : ValueRef) -> ValueRef ---;

    @(link_name="LLVMDIBuilderInsertDeclareAtEnd")
    DIBuilderInsertDeclareAtEnd :: proc(Builder : DIBuilderRef, Storage : ValueRef, VarInfo : MetadataRef, Expr : MetadataRef, DebugLoc : MetadataRef, Block : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMDIBuilderInsertDbgValueBefore")
    DIBuilderInsertDbgValueBefore :: proc(Builder : DIBuilderRef, Val : ValueRef, VarInfo : MetadataRef, Expr : MetadataRef, DebugLoc : MetadataRef, Instr : ValueRef) -> ValueRef ---;

    @(link_name="LLVMDIBuilderInsertDbgValueAtEnd")
    DIBuilderInsertDbgValueAtEnd :: proc(Builder : DIBuilderRef, Val : ValueRef, VarInfo : MetadataRef, Expr : MetadataRef, DebugLoc : MetadataRef, Block : BasicBlockRef) -> ValueRef ---;

    @(link_name="LLVMDIBuilderCreateAutoVariable")
    DIBuilderCreateAutoVariable :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, File : MetadataRef, LineNo : _c.uint, Ty : MetadataRef, AlwaysPreserve : Bool, Flags : DIFlags, AlignInBits : u32) -> MetadataRef ---;

    @(link_name="LLVMDIBuilderCreateParameterVariable")
    DIBuilderCreateParameterVariable :: proc(Builder : DIBuilderRef, Scope : MetadataRef, Name : cstring, NameLen : _c.size_t, ArgNo : _c.uint, File : MetadataRef, LineNo : _c.uint, Ty : MetadataRef, AlwaysPreserve : Bool, Flags : DIFlags) -> MetadataRef ---;

    @(link_name="LLVMGetSubprogram")
    GetSubprogram :: proc(Func : ValueRef) -> MetadataRef ---;

    @(link_name="LLVMSetSubprogram")
    SetSubprogram :: proc(Func : ValueRef, SP : MetadataRef) ---;

    @(link_name="LLVMDISubprogramGetLine")
    DISubprogramGetLine :: proc(Subprogram : MetadataRef) -> _c.uint ---;

    @(link_name="LLVMInstructionGetDebugLoc")
    InstructionGetDebugLoc :: proc(Inst : ValueRef) -> MetadataRef ---;

    @(link_name="LLVMInstructionSetDebugLoc")
    InstructionSetDebugLoc :: proc(Inst : ValueRef, Loc : MetadataRef) ---;

    @(link_name="LLVMGetMetadataKind")
    GetMetadataKind :: proc(Metadata : MetadataRef) -> _c.uint ---;

    @(link_name="LLVMCreateDisasm")
    CreateDisasm :: proc(TripleName : cstring, DisInfo : rawptr, TagType : _c.int, GetOpInfo : OpInfoCallback, SymbolLookUp : SymbolLookupCallback) -> DisasmContextRef ---;

    @(link_name="LLVMCreateDisasmCPU")
    CreateDisasmCPU :: proc(Triple : cstring, CPU : cstring, DisInfo : rawptr, TagType : _c.int, GetOpInfo : OpInfoCallback, SymbolLookUp : SymbolLookupCallback) -> DisasmContextRef ---;

    @(link_name="LLVMCreateDisasmCPUFeatures")
    CreateDisasmCPUFeatures :: proc(Triple : cstring, CPU : cstring, Features : cstring, DisInfo : rawptr, TagType : _c.int, GetOpInfo : OpInfoCallback, SymbolLookUp : SymbolLookupCallback) -> DisasmContextRef ---;

    @(link_name="LLVMSetDisasmOptions")
    SetDisasmOptions :: proc(DC : DisasmContextRef, Options : u64) -> _c.int ---;

    @(link_name="LLVMDisasmDispose")
    DisasmDispose :: proc(DC : DisasmContextRef) ---;

    @(link_name="LLVMDisasmInstruction")
    DisasmInstruction :: proc(DC : DisasmContextRef, Bytes : ^u8, BytesSize : u64, PC : u64, OutString : cstring, OutStringSize : _c.size_t) -> _c.size_t ---;

    @(link_name="LLVMGetErrorTypeId")
    GetErrorTypeId :: proc(Err : ErrorRef) -> ErrorTypeId ---;

    @(link_name="LLVMConsumeError")
    ConsumeError :: proc(Err : ErrorRef) ---;

    @(link_name="LLVMGetErrorMessage")
    GetErrorMessage :: proc(Err : ErrorRef) -> cstring ---;

    @(link_name="LLVMDisposeErrorMessage")
    DisposeErrorMessage :: proc(ErrMsg : cstring) ---;

    @(link_name="LLVMGetStringErrorTypeId")
    GetStringErrorTypeId :: proc() -> ErrorTypeId ---;

    @(link_name="LLVMCreateStringError")
    CreateStringError :: proc(ErrMsg : cstring) -> ErrorRef ---;

    @(link_name="LLVMInstallFatalErrorHandler")
    InstallFatalErrorHandler :: proc(Handler : FatalErrorHandler) ---;

    @(link_name="LLVMResetFatalErrorHandler")
    ResetFatalErrorHandler :: proc() ---;

    @(link_name="LLVMEnablePrettyStackTrace")
    EnablePrettyStackTrace :: proc() ---;

    @(link_name="LLVMLinkInMCJIT")
    LinkInMCJIT :: proc() ---;

    @(link_name="LLVMLinkInInterpreter")
    LinkInInterpreter :: proc() ---;

    @(link_name="LLVMCreateGenericValueOfInt")
    CreateGenericValueOfInt :: proc(Ty : TypeRef, N : _c.ulonglong, IsSigned : Bool) -> GenericValueRef ---;

    @(link_name="LLVMCreateGenericValueOfPointer")
    CreateGenericValueOfPointer :: proc(P : rawptr) -> GenericValueRef ---;

    @(link_name="LLVMCreateGenericValueOfFloat")
    CreateGenericValueOfFloat :: proc(Ty : TypeRef, N : _c.double) -> GenericValueRef ---;

    @(link_name="LLVMGenericValueIntWidth")
    GenericValueIntWidth :: proc(GenValRef : GenericValueRef) -> _c.uint ---;

    @(link_name="LLVMGenericValueToInt")
    GenericValueToInt :: proc(GenVal : GenericValueRef, IsSigned : Bool) -> _c.ulonglong ---;

    @(link_name="LLVMGenericValueToPointer")
    GenericValueToPointer :: proc(GenVal : GenericValueRef) -> rawptr ---;

    @(link_name="LLVMGenericValueToFloat")
    GenericValueToFloat :: proc(TyRef : TypeRef, GenVal : GenericValueRef) -> _c.double ---;

    @(link_name="LLVMDisposeGenericValue")
    DisposeGenericValue :: proc(GenVal : GenericValueRef) ---;

    @(link_name="LLVMCreateExecutionEngineForModule")
    CreateExecutionEngineForModule :: proc(OutEE : ^ExecutionEngineRef, M : ModuleRef, OutError : ^cstring) -> Bool ---;

    @(link_name="LLVMCreateInterpreterForModule")
    CreateInterpreterForModule :: proc(OutInterp : ^ExecutionEngineRef, M : ModuleRef, OutError : ^cstring) -> Bool ---;

    @(link_name="LLVMCreateJITCompilerForModule")
    CreateJITCompilerForModule :: proc(OutJIT : ^ExecutionEngineRef, M : ModuleRef, OptLevel : _c.uint, OutError : ^cstring) -> Bool ---;

    @(link_name="LLVMInitializeMCJITCompilerOptions")
    InitializeMCJITCompilerOptions :: proc(Options : ^MCJITCompilerOptions, SizeOfOptions : _c.size_t) ---;

    @(link_name="LLVMCreateMCJITCompilerForModule")
    CreateMCJITCompilerForModule :: proc(OutJIT : ^ExecutionEngineRef, M : ModuleRef, Options : ^MCJITCompilerOptions, SizeOfOptions : _c.size_t, OutError : ^cstring) -> Bool ---;

    @(link_name="LLVMDisposeExecutionEngine")
    DisposeExecutionEngine :: proc(EE : ExecutionEngineRef) ---;

    @(link_name="LLVMRunStaticConstructors")
    RunStaticConstructors :: proc(EE : ExecutionEngineRef) ---;

    @(link_name="LLVMRunStaticDestructors")
    RunStaticDestructors :: proc(EE : ExecutionEngineRef) ---;

    @(link_name="LLVMRunFunctionAsMain")
    RunFunctionAsMain :: proc(EE : ExecutionEngineRef, F : ValueRef, ArgC : _c.uint, ArgV : ^cstring, EnvP : ^cstring) -> _c.int ---;

    @(link_name="LLVMRunFunction")
    RunFunction :: proc(EE : ExecutionEngineRef, F : ValueRef, NumArgs : _c.uint, Args : ^GenericValueRef) -> GenericValueRef ---;

    @(link_name="LLVMFreeMachineCodeForFunction")
    FreeMachineCodeForFunction :: proc(EE : ExecutionEngineRef, F : ValueRef) ---;

    @(link_name="LLVMAddModule")
    AddModule :: proc(EE : ExecutionEngineRef, M : ModuleRef) ---;

    @(link_name="LLVMRemoveModule")
    RemoveModule :: proc(EE : ExecutionEngineRef, M : ModuleRef, OutMod : ^ModuleRef, OutError : ^cstring) -> Bool ---;

    @(link_name="LLVMFindFunction")
    FindFunction :: proc(EE : ExecutionEngineRef, Name : cstring, OutFn : ^ValueRef) -> Bool ---;

    @(link_name="LLVMRecompileAndRelinkFunction")
    RecompileAndRelinkFunction :: proc(EE : ExecutionEngineRef, Fn : ValueRef) -> rawptr ---;

    @(link_name="LLVMGetExecutionEngineTargetData")
    GetExecutionEngineTargetData :: proc(EE : ExecutionEngineRef) -> TargetDataRef ---;

    @(link_name="LLVMGetExecutionEngineTargetMachine")
    GetExecutionEngineTargetMachine :: proc(EE : ExecutionEngineRef) -> TargetMachineRef ---;

    @(link_name="LLVMAddGlobalMapping")
    AddGlobalMapping :: proc(EE : ExecutionEngineRef, Global : ValueRef, Addr : rawptr) ---;

    @(link_name="LLVMGetPointerToGlobal")
    GetPointerToGlobal :: proc(EE : ExecutionEngineRef, Global : ValueRef) -> rawptr ---;

    @(link_name="LLVMGetGlobalValueAddress")
    GetGlobalValueAddress :: proc(EE : ExecutionEngineRef, Name : cstring) -> u64 ---;

    @(link_name="LLVMGetFunctionAddress")
    GetFunctionAddress :: proc(EE : ExecutionEngineRef, Name : cstring) -> u64 ---;

    @(link_name="LLVMExecutionEngineGetErrMsg")
    ExecutionEngineGetErrMsg :: proc(EE : ExecutionEngineRef, OutError : ^cstring) -> Bool ---;

    @(link_name="LLVMCreateSimpleMCJITMemoryManager")
    CreateSimpleMCJITMemoryManager :: proc(Opaque : rawptr, AllocateCodeSection : MemoryManagerAllocateCodeSectionCallback, AllocateDataSection : MemoryManagerAllocateDataSectionCallback, FinalizeMemory : MemoryManagerFinalizeMemoryCallback, Destroy : MemoryManagerDestroyCallback) -> MCJITMemoryManagerRef ---;

    @(link_name="LLVMDisposeMCJITMemoryManager")
    DisposeMCJITMemoryManager :: proc(MM : MCJITMemoryManagerRef) ---;

    @(link_name="LLVMCreateGDBRegistrationListener")
    CreateGDBRegistrationListener :: proc() -> JITEventListenerRef ---;

    @(link_name="LLVMCreateIntelJITEventListener")
    CreateIntelJITEventListener :: proc() -> JITEventListenerRef ---;

    @(link_name="LLVMCreateOProfileJITEventListener")
    CreateOProfileJITEventListener :: proc() -> JITEventListenerRef ---;

    @(link_name="LLVMCreatePerfJITEventListener")
    CreatePerfJITEventListener :: proc() -> JITEventListenerRef ---;

    @(link_name="LLVMParseIRInContext")
    ParseIRInContext :: proc(ContextRef : ContextRef, MemBuf : MemoryBufferRef, OutM : ^ModuleRef, OutMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMLinkModules2")
    LinkModules2 :: proc(Dest : ModuleRef, Src : ModuleRef) -> Bool ---;

    @(link_name="LLVMOrcCreateLLJITBuilder")
    OrcCreateLLJITBuilder :: proc() -> OrcLLJITBuilderRef ---;

    @(link_name="LLVMOrcDisposeLLJITBuilder")
    OrcDisposeLLJITBuilder :: proc(Builder : OrcLLJITBuilderRef) ---;

    @(link_name="LLVMOrcLLJITBuilderSetJITTargetMachineBuilder")
    OrcLLJITBuilderSetJITTargetMachineBuilder :: proc(Builder : OrcLLJITBuilderRef, JTMB : OrcJITTargetMachineBuilderRef) ---;

    @(link_name="LLVMOrcLLJITBuilderSetObjectLinkingLayerCreator")
    OrcLLJITBuilderSetObjectLinkingLayerCreator :: proc(Builder : OrcLLJITBuilderRef, F : OrcLLJITBuilderObjectLinkingLayerCreatorFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcCreateLLJIT")
    OrcCreateLLJIT :: proc(Result : ^OrcLLJITRef, Builder : OrcLLJITBuilderRef) -> ErrorRef ---;

    @(link_name="LLVMOrcDisposeLLJIT")
    OrcDisposeLLJIT :: proc(J : OrcLLJITRef) -> ErrorRef ---;

    @(link_name="LLVMOrcLLJITGetExecutionSession")
    OrcLLJITGetExecutionSession :: proc(J : OrcLLJITRef) -> OrcExecutionSessionRef ---;

    @(link_name="LLVMOrcLLJITGetMainJITDylib")
    OrcLLJITGetMainJITDylib :: proc(J : OrcLLJITRef) -> OrcJITDylibRef ---;

    @(link_name="LLVMOrcLLJITGetTripleString")
    OrcLLJITGetTripleString :: proc(J : OrcLLJITRef) -> cstring ---;

    @(link_name="LLVMOrcLLJITGetGlobalPrefix")
    OrcLLJITGetGlobalPrefix :: proc(J : OrcLLJITRef) -> _c.char ---;

    @(link_name="LLVMOrcLLJITMangleAndIntern")
    OrcLLJITMangleAndIntern :: proc(J : OrcLLJITRef, UnmangledName : cstring) -> OrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcLLJITAddObjectFile")
    OrcLLJITAddObjectFile :: proc(J : OrcLLJITRef, JD : OrcJITDylibRef, ObjBuffer : MemoryBufferRef) -> ErrorRef ---;

    @(link_name="LLVMOrcLLJITAddObjectFileWithRT")
    OrcLLJITAddObjectFileWithRT :: proc(J : OrcLLJITRef, RT : OrcResourceTrackerRef, ObjBuffer : MemoryBufferRef) -> ErrorRef ---;

    @(link_name="LLVMOrcLLJITAddLLVMIRModule")
    OrcLLJITAddLLVMIRModule :: proc(J : OrcLLJITRef, JD : OrcJITDylibRef, TSM : OrcThreadSafeModuleRef) -> ErrorRef ---;

    @(link_name="LLVMOrcLLJITAddLLVMIRModuleWithRT")
    OrcLLJITAddLLVMIRModuleWithRT :: proc(J : OrcLLJITRef, JD : OrcResourceTrackerRef, TSM : OrcThreadSafeModuleRef) -> ErrorRef ---;

    @(link_name="LLVMOrcLLJITLookup")
    OrcLLJITLookup :: proc(J : OrcLLJITRef, Result : ^OrcExecutorAddress, Name : cstring) -> ErrorRef ---;

    @(link_name="LLVMOrcLLJITGetObjLinkingLayer")
    OrcLLJITGetObjLinkingLayer :: proc(J : OrcLLJITRef) -> OrcObjectLayerRef ---;

    @(link_name="LLVMOrcLLJITGetObjTransformLayer")
    OrcLLJITGetObjTransformLayer :: proc(J : OrcLLJITRef) -> OrcObjectTransformLayerRef ---;

    @(link_name="LLVMOrcLLJITGetIRTransformLayer")
    OrcLLJITGetIRTransformLayer :: proc(J : OrcLLJITRef) -> OrcIRTransformLayerRef ---;

    @(link_name="LLVMOrcLLJITGetDataLayoutStr")
    OrcLLJITGetDataLayoutStr :: proc(J : OrcLLJITRef) -> cstring ---;

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
    CreateBinary :: proc(MemBuf : MemoryBufferRef, Context : ContextRef, ErrorMessage : ^cstring) -> BinaryRef ---;

    @(link_name="LLVMDisposeBinary")
    DisposeBinary :: proc(BR : BinaryRef) ---;

    @(link_name="LLVMBinaryCopyMemoryBuffer")
    BinaryCopyMemoryBuffer :: proc(BR : BinaryRef) -> MemoryBufferRef ---;

    @(link_name="LLVMBinaryGetType")
    BinaryGetType :: proc(BR : BinaryRef) -> BinaryType ---;

    @(link_name="LLVMMachOUniversalBinaryCopyObjectForArch")
    MachOUniversalBinaryCopyObjectForArch :: proc(BR : BinaryRef, Arch : cstring, ArchLen : _c.size_t, ErrorMessage : ^cstring) -> BinaryRef ---;

    @(link_name="LLVMObjectFileCopySectionIterator")
    ObjectFileCopySectionIterator :: proc(BR : BinaryRef) -> SectionIteratorRef ---;

    @(link_name="LLVMObjectFileIsSectionIteratorAtEnd")
    ObjectFileIsSectionIteratorAtEnd :: proc(BR : BinaryRef, SI : SectionIteratorRef) -> Bool ---;

    @(link_name="LLVMObjectFileCopySymbolIterator")
    ObjectFileCopySymbolIterator :: proc(BR : BinaryRef) -> SymbolIteratorRef ---;

    @(link_name="LLVMObjectFileIsSymbolIteratorAtEnd")
    ObjectFileIsSymbolIteratorAtEnd :: proc(BR : BinaryRef, SI : SymbolIteratorRef) -> Bool ---;

    @(link_name="LLVMDisposeSectionIterator")
    DisposeSectionIterator :: proc(SI : SectionIteratorRef) ---;

    @(link_name="LLVMMoveToNextSection")
    MoveToNextSection :: proc(SI : SectionIteratorRef) ---;

    @(link_name="LLVMMoveToContainingSection")
    MoveToContainingSection :: proc(Sect : SectionIteratorRef, Sym : SymbolIteratorRef) ---;

    @(link_name="LLVMDisposeSymbolIterator")
    DisposeSymbolIterator :: proc(SI : SymbolIteratorRef) ---;

    @(link_name="LLVMMoveToNextSymbol")
    MoveToNextSymbol :: proc(SI : SymbolIteratorRef) ---;

    @(link_name="LLVMGetSectionName")
    GetSectionName :: proc(SI : SectionIteratorRef) -> cstring ---;

    @(link_name="LLVMGetSectionSize")
    GetSectionSize :: proc(SI : SectionIteratorRef) -> u64 ---;

    @(link_name="LLVMGetSectionContents")
    GetSectionContents :: proc(SI : SectionIteratorRef) -> cstring ---;

    @(link_name="LLVMGetSectionAddress")
    GetSectionAddress :: proc(SI : SectionIteratorRef) -> u64 ---;

    @(link_name="LLVMGetSectionContainsSymbol")
    GetSectionContainsSymbol :: proc(SI : SectionIteratorRef, Sym : SymbolIteratorRef) -> Bool ---;

    @(link_name="LLVMGetRelocations")
    GetRelocations :: proc(Section : SectionIteratorRef) -> RelocationIteratorRef ---;

    @(link_name="LLVMDisposeRelocationIterator")
    DisposeRelocationIterator :: proc(RI : RelocationIteratorRef) ---;

    @(link_name="LLVMIsRelocationIteratorAtEnd")
    IsRelocationIteratorAtEnd :: proc(Section : SectionIteratorRef, RI : RelocationIteratorRef) -> Bool ---;

    @(link_name="LLVMMoveToNextRelocation")
    MoveToNextRelocation :: proc(RI : RelocationIteratorRef) ---;

    @(link_name="LLVMGetSymbolName")
    GetSymbolName :: proc(SI : SymbolIteratorRef) -> cstring ---;

    @(link_name="LLVMGetSymbolAddress")
    GetSymbolAddress :: proc(SI : SymbolIteratorRef) -> u64 ---;

    @(link_name="LLVMGetSymbolSize")
    GetSymbolSize :: proc(SI : SymbolIteratorRef) -> u64 ---;

    @(link_name="LLVMGetRelocationOffset")
    GetRelocationOffset :: proc(RI : RelocationIteratorRef) -> u64 ---;

    @(link_name="LLVMGetRelocationSymbol")
    GetRelocationSymbol :: proc(RI : RelocationIteratorRef) -> SymbolIteratorRef ---;

    @(link_name="LLVMGetRelocationType")
    GetRelocationType :: proc(RI : RelocationIteratorRef) -> u64 ---;

    @(link_name="LLVMGetRelocationTypeName")
    GetRelocationTypeName :: proc(RI : RelocationIteratorRef) -> cstring ---;

    @(link_name="LLVMGetRelocationValueString")
    GetRelocationValueString :: proc(RI : RelocationIteratorRef) -> cstring ---;

    @(link_name="LLVMCreateObjectFile")
    CreateObjectFile :: proc(MemBuf : MemoryBufferRef) -> ObjectFileRef ---;

    @(link_name="LLVMDisposeObjectFile")
    DisposeObjectFile :: proc(ObjectFile : ObjectFileRef) ---;

    @(link_name="LLVMGetSections")
    GetSections :: proc(ObjectFile : ObjectFileRef) -> SectionIteratorRef ---;

    @(link_name="LLVMIsSectionIteratorAtEnd")
    IsSectionIteratorAtEnd :: proc(ObjectFile : ObjectFileRef, SI : SectionIteratorRef) -> Bool ---;

    @(link_name="LLVMGetSymbols")
    GetSymbols :: proc(ObjectFile : ObjectFileRef) -> SymbolIteratorRef ---;

    @(link_name="LLVMIsSymbolIteratorAtEnd")
    IsSymbolIteratorAtEnd :: proc(ObjectFile : ObjectFileRef, SI : SymbolIteratorRef) -> Bool ---;

    @(link_name="LLVMOrcExecutionSessionSetErrorReporter")
    OrcExecutionSessionSetErrorReporter :: proc(ES : OrcExecutionSessionRef, ReportError : OrcErrorReporterFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcExecutionSessionGetSymbolStringPool")
    OrcExecutionSessionGetSymbolStringPool :: proc(ES : OrcExecutionSessionRef) -> OrcSymbolStringPoolRef ---;

    @(link_name="LLVMOrcSymbolStringPoolClearDeadEntries")
    OrcSymbolStringPoolClearDeadEntries :: proc(SSP : OrcSymbolStringPoolRef) ---;

    @(link_name="LLVMOrcExecutionSessionIntern")
    OrcExecutionSessionIntern :: proc(ES : OrcExecutionSessionRef, Name : cstring) -> OrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcExecutionSessionLookup")
    OrcExecutionSessionLookup :: proc(ES : OrcExecutionSessionRef, K : OrcLookupKind, SearchOrder : OrcCJITDylibSearchOrder, SearchOrderSize : _c.size_t, Symbols : OrcCLookupSet, SymbolsSize : _c.size_t, HandleResult : OrcExecutionSessionLookupHandleResultFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcRetainSymbolStringPoolEntry")
    OrcRetainSymbolStringPoolEntry :: proc(S : OrcSymbolStringPoolEntryRef) ---;

    @(link_name="LLVMOrcReleaseSymbolStringPoolEntry")
    OrcReleaseSymbolStringPoolEntry :: proc(S : OrcSymbolStringPoolEntryRef) ---;

    @(link_name="LLVMOrcSymbolStringPoolEntryStr")
    OrcSymbolStringPoolEntryStr :: proc(S : OrcSymbolStringPoolEntryRef) -> cstring ---;

    @(link_name="LLVMOrcReleaseResourceTracker")
    OrcReleaseResourceTracker :: proc(RT : OrcResourceTrackerRef) ---;

    @(link_name="LLVMOrcResourceTrackerTransferTo")
    OrcResourceTrackerTransferTo :: proc(SrcRT : OrcResourceTrackerRef, DstRT : OrcResourceTrackerRef) ---;

    @(link_name="LLVMOrcResourceTrackerRemove")
    OrcResourceTrackerRemove :: proc(RT : OrcResourceTrackerRef) -> ErrorRef ---;

    @(link_name="LLVMOrcDisposeDefinitionGenerator")
    OrcDisposeDefinitionGenerator :: proc(DG : OrcDefinitionGeneratorRef) ---;

    @(link_name="LLVMOrcDisposeMaterializationUnit")
    OrcDisposeMaterializationUnit :: proc(MU : OrcMaterializationUnitRef) ---;

    @(link_name="LLVMOrcCreateCustomMaterializationUnit")
    OrcCreateCustomMaterializationUnit :: proc(Name : cstring, Ctx : rawptr, Syms : OrcCSymbolFlagsMapPairs, NumSyms : _c.size_t, InitSym : OrcSymbolStringPoolEntryRef, Materialize : OrcMaterializationUnitMaterializeFunction, Discard : OrcMaterializationUnitDiscardFunction, Destroy : OrcMaterializationUnitDestroyFunction) -> OrcMaterializationUnitRef ---;

    @(link_name="LLVMOrcAbsoluteSymbols")
    OrcAbsoluteSymbols :: proc(Syms : OrcCSymbolMapPairs, NumPairs : _c.size_t) -> OrcMaterializationUnitRef ---;

    @(link_name="LLVMOrcLazyReexports")
    OrcLazyReexports :: proc(LCTM : OrcLazyCallThroughManagerRef, ISM : OrcIndirectStubsManagerRef, SourceRef : OrcJITDylibRef, CallableAliases : OrcCSymbolAliasMapPairs, NumPairs : _c.size_t) -> OrcMaterializationUnitRef ---;

    @(link_name="LLVMOrcDisposeMaterializationResponsibility")
    OrcDisposeMaterializationResponsibility :: proc(MR : OrcMaterializationResponsibilityRef) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetTargetDylib")
    OrcMaterializationResponsibilityGetTargetDylib :: proc(MR : OrcMaterializationResponsibilityRef) -> OrcJITDylibRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetExecutionSession")
    OrcMaterializationResponsibilityGetExecutionSession :: proc(MR : OrcMaterializationResponsibilityRef) -> OrcExecutionSessionRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetSymbols")
    OrcMaterializationResponsibilityGetSymbols :: proc(MR : OrcMaterializationResponsibilityRef, NumPairs : ^_c.size_t) -> OrcCSymbolFlagsMapPairs ---;

    @(link_name="LLVMOrcDisposeCSymbolFlagsMap")
    OrcDisposeCSymbolFlagsMap :: proc(Pairs : OrcCSymbolFlagsMapPairs) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetInitializerSymbol")
    OrcMaterializationResponsibilityGetInitializerSymbol :: proc(MR : OrcMaterializationResponsibilityRef) -> OrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityGetRequestedSymbols")
    OrcMaterializationResponsibilityGetRequestedSymbols :: proc(MR : OrcMaterializationResponsibilityRef, NumSymbols : ^_c.size_t) -> ^OrcSymbolStringPoolEntryRef ---;

    @(link_name="LLVMOrcDisposeSymbols")
    OrcDisposeSymbols :: proc(Symbols : ^OrcSymbolStringPoolEntryRef) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityNotifyResolved")
    OrcMaterializationResponsibilityNotifyResolved :: proc(MR : OrcMaterializationResponsibilityRef, Symbols : OrcCSymbolMapPairs, NumPairs : _c.size_t) -> ErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityNotifyEmitted")
    OrcMaterializationResponsibilityNotifyEmitted :: proc(MR : OrcMaterializationResponsibilityRef) -> ErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityDefineMaterializing")
    OrcMaterializationResponsibilityDefineMaterializing :: proc(MR : OrcMaterializationResponsibilityRef, Pairs : OrcCSymbolFlagsMapPairs, NumPairs : _c.size_t) -> ErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityFailMaterialization")
    OrcMaterializationResponsibilityFailMaterialization :: proc(MR : OrcMaterializationResponsibilityRef) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityReplace")
    OrcMaterializationResponsibilityReplace :: proc(MR : OrcMaterializationResponsibilityRef, MU : OrcMaterializationUnitRef) -> ErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityDelegate")
    OrcMaterializationResponsibilityDelegate :: proc(MR : OrcMaterializationResponsibilityRef, Symbols : ^OrcSymbolStringPoolEntryRef, NumSymbols : _c.size_t, Result : ^OrcMaterializationResponsibilityRef) -> ErrorRef ---;

    @(link_name="LLVMOrcMaterializationResponsibilityAddDependencies")
    OrcMaterializationResponsibilityAddDependencies :: proc(MR : OrcMaterializationResponsibilityRef, Name : OrcSymbolStringPoolEntryRef, Dependencies : OrcCDependenceMapPairs, NumPairs : _c.size_t) ---;

    @(link_name="LLVMOrcMaterializationResponsibilityAddDependenciesForAll")
    OrcMaterializationResponsibilityAddDependenciesForAll :: proc(MR : OrcMaterializationResponsibilityRef, Dependencies : OrcCDependenceMapPairs, NumPairs : _c.size_t) ---;

    @(link_name="LLVMOrcExecutionSessionCreateBareJITDylib")
    OrcExecutionSessionCreateBareJITDylib :: proc(ES : OrcExecutionSessionRef, Name : cstring) -> OrcJITDylibRef ---;

    @(link_name="LLVMOrcExecutionSessionCreateJITDylib")
    OrcExecutionSessionCreateJITDylib :: proc(ES : OrcExecutionSessionRef, Result : ^OrcJITDylibRef, Name : cstring) -> ErrorRef ---;

    @(link_name="LLVMOrcExecutionSessionGetJITDylibByName")
    OrcExecutionSessionGetJITDylibByName :: proc(ES : OrcExecutionSessionRef, Name : cstring) -> OrcJITDylibRef ---;

    @(link_name="LLVMOrcJITDylibCreateResourceTracker")
    OrcJITDylibCreateResourceTracker :: proc(JD : OrcJITDylibRef) -> OrcResourceTrackerRef ---;

    @(link_name="LLVMOrcJITDylibGetDefaultResourceTracker")
    OrcJITDylibGetDefaultResourceTracker :: proc(JD : OrcJITDylibRef) -> OrcResourceTrackerRef ---;

    @(link_name="LLVMOrcJITDylibDefine")
    OrcJITDylibDefine :: proc(JD : OrcJITDylibRef, MU : OrcMaterializationUnitRef) -> ErrorRef ---;

    @(link_name="LLVMOrcJITDylibClear")
    OrcJITDylibClear :: proc(JD : OrcJITDylibRef) -> ErrorRef ---;

    @(link_name="LLVMOrcJITDylibAddGenerator")
    OrcJITDylibAddGenerator :: proc(JD : OrcJITDylibRef, DG : OrcDefinitionGeneratorRef) ---;

    @(link_name="LLVMOrcCreateCustomCAPIDefinitionGenerator")
    OrcCreateCustomCAPIDefinitionGenerator :: proc(F : OrcCAPIDefinitionGeneratorTryToGenerateFunction, Ctx : rawptr, Dispose : OrcDisposeCAPIDefinitionGeneratorFunction) -> OrcDefinitionGeneratorRef ---;

    @(link_name="LLVMOrcLookupStateContinueLookup")
    OrcLookupStateContinueLookup :: proc(S : OrcLookupStateRef, Err : ErrorRef) ---;

    @(link_name="LLVMOrcCreateDynamicLibrarySearchGeneratorForProcess")
    OrcCreateDynamicLibrarySearchGeneratorForProcess :: proc(Result : ^OrcDefinitionGeneratorRef, GlobalPrefx : _c.char, Filter : OrcSymbolPredicate, FilterCtx : rawptr) -> ErrorRef ---;

    @(link_name="LLVMOrcCreateDynamicLibrarySearchGeneratorForPath")
    OrcCreateDynamicLibrarySearchGeneratorForPath :: proc(Result : ^OrcDefinitionGeneratorRef, FileName : cstring, GlobalPrefix : _c.char, Filter : OrcSymbolPredicate, FilterCtx : rawptr) -> ErrorRef ---;

    @(link_name="LLVMOrcCreateStaticLibrarySearchGeneratorForPath")
    OrcCreateStaticLibrarySearchGeneratorForPath :: proc(Result : ^OrcDefinitionGeneratorRef, ObjLayer : OrcObjectLayerRef, FileName : cstring, TargetTriple : cstring) -> ErrorRef ---;

    @(link_name="LLVMOrcCreateNewThreadSafeContext")
    OrcCreateNewThreadSafeContext :: proc() -> OrcThreadSafeContextRef ---;

    @(link_name="LLVMOrcThreadSafeContextGetContext")
    OrcThreadSafeContextGetContext :: proc(TSCtx : OrcThreadSafeContextRef) -> ContextRef ---;

    @(link_name="LLVMOrcDisposeThreadSafeContext")
    OrcDisposeThreadSafeContext :: proc(TSCtx : OrcThreadSafeContextRef) ---;

    @(link_name="LLVMOrcCreateNewThreadSafeModule")
    OrcCreateNewThreadSafeModule :: proc(M : ModuleRef, TSCtx : OrcThreadSafeContextRef) -> OrcThreadSafeModuleRef ---;

    @(link_name="LLVMOrcDisposeThreadSafeModule")
    OrcDisposeThreadSafeModule :: proc(TSM : OrcThreadSafeModuleRef) ---;

    @(link_name="LLVMOrcThreadSafeModuleWithModuleDo")
    OrcThreadSafeModuleWithModuleDo :: proc(TSM : OrcThreadSafeModuleRef, F : OrcGenericIRModuleOperationFunction, Ctx : rawptr) -> ErrorRef ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderDetectHost")
    OrcJITTargetMachineBuilderDetectHost :: proc(Result : ^OrcJITTargetMachineBuilderRef) -> ErrorRef ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderCreateFromTargetMachine")
    OrcJITTargetMachineBuilderCreateFromTargetMachine :: proc(TM : TargetMachineRef) -> OrcJITTargetMachineBuilderRef ---;

    @(link_name="LLVMOrcDisposeJITTargetMachineBuilder")
    OrcDisposeJITTargetMachineBuilder :: proc(JTMB : OrcJITTargetMachineBuilderRef) ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderGetTargetTriple")
    OrcJITTargetMachineBuilderGetTargetTriple :: proc(JTMB : OrcJITTargetMachineBuilderRef) -> cstring ---;

    @(link_name="LLVMOrcJITTargetMachineBuilderSetTargetTriple")
    OrcJITTargetMachineBuilderSetTargetTriple :: proc(JTMB : OrcJITTargetMachineBuilderRef, TargetTriple : cstring) ---;

    @(link_name="LLVMOrcObjectLayerAddObjectFile")
    OrcObjectLayerAddObjectFile :: proc(ObjLayer : OrcObjectLayerRef, JD : OrcJITDylibRef, ObjBuffer : MemoryBufferRef) -> ErrorRef ---;

    @(link_name="LLVMOrcObjectLayerAddObjectFileWithRT")
    OrcObjectLayerAddObjectFileWithRT :: proc(ObjLayer : OrcObjectLayerRef, RT : OrcResourceTrackerRef, ObjBuffer : MemoryBufferRef) -> ErrorRef ---;

    @(link_name="LLVMOrcObjectLayerEmit")
    OrcObjectLayerEmit :: proc(ObjLayer : OrcObjectLayerRef, R : OrcMaterializationResponsibilityRef, ObjBuffer : MemoryBufferRef) ---;

    @(link_name="LLVMOrcDisposeObjectLayer")
    OrcDisposeObjectLayer :: proc(ObjLayer : OrcObjectLayerRef) ---;

    @(link_name="LLVMOrcIRTransformLayerEmit")
    OrcIRTransformLayerEmit :: proc(IRTransformLayer : OrcIRTransformLayerRef, MR : OrcMaterializationResponsibilityRef, TSM : OrcThreadSafeModuleRef) ---;

    @(link_name="LLVMOrcIRTransformLayerSetTransform")
    OrcIRTransformLayerSetTransform :: proc(IRTransformLayer : OrcIRTransformLayerRef, TransformFunction : OrcIRTransformLayerTransformFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcObjectTransformLayerSetTransform")
    OrcObjectTransformLayerSetTransform :: proc(ObjTransformLayer : OrcObjectTransformLayerRef, TransformFunction : OrcObjectTransformLayerTransformFunction, Ctx : rawptr) ---;

    @(link_name="LLVMOrcCreateLocalIndirectStubsManager")
    OrcCreateLocalIndirectStubsManager :: proc(TargetTriple : cstring) -> OrcIndirectStubsManagerRef ---;

    @(link_name="LLVMOrcDisposeIndirectStubsManager")
    OrcDisposeIndirectStubsManager :: proc(ISM : OrcIndirectStubsManagerRef) ---;

    @(link_name="LLVMOrcCreateLocalLazyCallThroughManager")
    OrcCreateLocalLazyCallThroughManager :: proc(TargetTriple : cstring, ES : OrcExecutionSessionRef, ErrorHandlerAddr : u64, LCTM : ^OrcLazyCallThroughManagerRef) -> ErrorRef ---;

    @(link_name="LLVMOrcDisposeLazyCallThroughManager")
    OrcDisposeLazyCallThroughManager :: proc(LCTM : OrcLazyCallThroughManagerRef) ---;

    @(link_name="LLVMOrcCreateDumpObjects")
    OrcCreateDumpObjects :: proc(DumpDir : cstring, IdentifierOverride : cstring) -> OrcDumpObjectsRef ---;

    @(link_name="LLVMOrcDisposeDumpObjects")
    OrcDisposeDumpObjects :: proc(DumpObjects : OrcDumpObjectsRef) ---;

    @(link_name="LLVMOrcDumpObjects_CallOperator")
    OrcDumpObjects_CallOperator :: proc(DumpObjects : OrcDumpObjectsRef, ObjBuffer : ^MemoryBufferRef) -> ErrorRef ---;

    @(link_name="LLVMOrcCreateRTDyldObjectLinkingLayerWithSectionMemoryManager")
    OrcCreateRTDyldObjectLinkingLayerWithSectionMemoryManager :: proc(ES : OrcExecutionSessionRef) -> OrcObjectLayerRef ---;

    @(link_name="LLVMOrcCreateRTDyldObjectLinkingLayerWithMCJITMemoryManagerLikeCallbacks")
    OrcCreateRTDyldObjectLinkingLayerWithMCJITMemoryManagerLikeCallbacks :: proc(ES : OrcExecutionSessionRef, CreateContextCtx : rawptr, CreateContext : MemoryManagerCreateContextCallback, NotifyTerminating : MemoryManagerNotifyTerminatingCallback, AllocateCodeSection : MemoryManagerAllocateCodeSectionCallback, AllocateDataSection : MemoryManagerAllocateDataSectionCallback, FinalizeMemory : MemoryManagerFinalizeMemoryCallback, Destroy : MemoryManagerDestroyCallback) -> OrcObjectLayerRef ---;

    @(link_name="LLVMOrcRTDyldObjectLinkingLayerRegisterJITEventListener")
    OrcRTDyldObjectLinkingLayerRegisterJITEventListener :: proc(RTDyldObjLinkingLayer : OrcObjectLayerRef, Listener : JITEventListenerRef) ---;

    @(link_name="LLVMRemarkStringGetData")
    RemarkStringGetData :: proc(String : RemarkStringRef) -> cstring ---;

    @(link_name="LLVMRemarkStringGetLen")
    RemarkStringGetLen :: proc(String : RemarkStringRef) -> u32 ---;

    @(link_name="LLVMRemarkDebugLocGetSourceFilePath")
    RemarkDebugLocGetSourceFilePath :: proc(DL : RemarkDebugLocRef) -> RemarkStringRef ---;

    @(link_name="LLVMRemarkDebugLocGetSourceLine")
    RemarkDebugLocGetSourceLine :: proc(DL : RemarkDebugLocRef) -> u32 ---;

    @(link_name="LLVMRemarkDebugLocGetSourceColumn")
    RemarkDebugLocGetSourceColumn :: proc(DL : RemarkDebugLocRef) -> u32 ---;

    @(link_name="LLVMRemarkArgGetKey")
    RemarkArgGetKey :: proc(Arg : RemarkArgRef) -> RemarkStringRef ---;

    @(link_name="LLVMRemarkArgGetValue")
    RemarkArgGetValue :: proc(Arg : RemarkArgRef) -> RemarkStringRef ---;

    @(link_name="LLVMRemarkArgGetDebugLoc")
    RemarkArgGetDebugLoc :: proc(Arg : RemarkArgRef) -> RemarkDebugLocRef ---;

    @(link_name="LLVMRemarkEntryDispose")
    RemarkEntryDispose :: proc(Remark : RemarkEntryRef) ---;

    @(link_name="LLVMRemarkEntryGetType")
    RemarkEntryGetType :: proc(Remark : RemarkEntryRef) -> RemarkType ---;

    @(link_name="LLVMRemarkEntryGetPassName")
    RemarkEntryGetPassName :: proc(Remark : RemarkEntryRef) -> RemarkStringRef ---;

    @(link_name="LLVMRemarkEntryGetRemarkName")
    RemarkEntryGetRemarkName :: proc(Remark : RemarkEntryRef) -> RemarkStringRef ---;

    @(link_name="LLVMRemarkEntryGetFunctionName")
    RemarkEntryGetFunctionName :: proc(Remark : RemarkEntryRef) -> RemarkStringRef ---;

    @(link_name="LLVMRemarkEntryGetDebugLoc")
    RemarkEntryGetDebugLoc :: proc(Remark : RemarkEntryRef) -> RemarkDebugLocRef ---;

    @(link_name="LLVMRemarkEntryGetHotness")
    RemarkEntryGetHotness :: proc(Remark : RemarkEntryRef) -> u64 ---;

    @(link_name="LLVMRemarkEntryGetNumArgs")
    RemarkEntryGetNumArgs :: proc(Remark : RemarkEntryRef) -> u32 ---;

    @(link_name="LLVMRemarkEntryGetFirstArg")
    RemarkEntryGetFirstArg :: proc(Remark : RemarkEntryRef) -> RemarkArgRef ---;

    @(link_name="LLVMRemarkEntryGetNextArg")
    RemarkEntryGetNextArg :: proc(It : RemarkArgRef, Remark : RemarkEntryRef) -> RemarkArgRef ---;

    @(link_name="LLVMRemarkParserCreateYAML")
    RemarkParserCreateYAML :: proc(Buf : rawptr, Size : u64) -> RemarkParserRef ---;

    @(link_name="LLVMRemarkParserCreateBitstream")
    RemarkParserCreateBitstream :: proc(Buf : rawptr, Size : u64) -> RemarkParserRef ---;

    @(link_name="LLVMRemarkParserGetNext")
    RemarkParserGetNext :: proc(Parser : RemarkParserRef) -> RemarkEntryRef ---;

    @(link_name="LLVMRemarkParserHasError")
    RemarkParserHasError :: proc(Parser : RemarkParserRef) -> Bool ---;

    @(link_name="LLVMRemarkParserGetErrorMessage")
    RemarkParserGetErrorMessage :: proc(Parser : RemarkParserRef) -> cstring ---;

    @(link_name="LLVMRemarkParserDispose")
    RemarkParserDispose :: proc(Parser : RemarkParserRef) ---;

    @(link_name="LLVMRemarkVersion")
    RemarkVersion :: proc() -> u32 ---;

    @(link_name="LLVMLoadLibraryPermanently")
    LoadLibraryPermanently :: proc(Filename : cstring) -> Bool ---;

    @(link_name="LLVMParseCommandLineOptions")
    ParseCommandLineOptions :: proc(argc : _c.int, argv : ^cstring, Overview : cstring) ---;

    @(link_name="LLVMSearchForAddressOfSymbol")
    SearchForAddressOfSymbol :: proc(symbolName : cstring) -> rawptr ---;

    @(link_name="LLVMAddSymbol")
    AddSymbol :: proc(symbolName : cstring, symbolValue : rawptr) ---;

    @(link_name="LLVMInitializeAllDisassemblers")
    InitializeAllDisassemblers :: proc() ---;

    @(link_name="LLVMInitializeNativeTarget")
    InitializeNativeTarget :: proc() -> Bool ---;

    @(link_name="LLVMInitializeNativeAsmParser")
    InitializeNativeAsmParser :: proc() -> Bool ---;

    @(link_name="LLVMInitializeNativeAsmPrinter")
    InitializeNativeAsmPrinter :: proc() -> Bool ---;

    @(link_name="LLVMInitializeNativeDisassembler")
    InitializeNativeDisassembler :: proc() -> Bool ---;

    @(link_name="LLVMGetModuleDataLayout")
    GetModuleDataLayout :: proc(M : ModuleRef) -> TargetDataRef ---;

    @(link_name="LLVMSetModuleDataLayout")
    SetModuleDataLayout :: proc(M : ModuleRef, DL : TargetDataRef) ---;

    @(link_name="LLVMCreateTargetData")
    CreateTargetData :: proc(StringRep : cstring) -> TargetDataRef ---;

    @(link_name="LLVMDisposeTargetData")
    DisposeTargetData :: proc(TD : TargetDataRef) ---;

    @(link_name="LLVMAddTargetLibraryInfo")
    AddTargetLibraryInfo :: proc(TLI : TargetLibraryInfoRef, PM : PassManagerRef) ---;

    @(link_name="LLVMCopyStringRepOfTargetData")
    CopyStringRepOfTargetData :: proc(TD : TargetDataRef) -> cstring ---;

    @(link_name="LLVMByteOrder")
    ByteOrder :: proc(TD : TargetDataRef) -> ByteOrdering ---;

    @(link_name="LLVMPointerSize")
    PointerSize :: proc(TD : TargetDataRef) -> _c.uint ---;

    @(link_name="LLVMPointerSizeForAS")
    PointerSizeForAS :: proc(TD : TargetDataRef, AS : _c.uint) -> _c.uint ---;

    @(link_name="LLVMIntPtrType")
    IntPtrType :: proc(TD : TargetDataRef) -> TypeRef ---;

    @(link_name="LLVMIntPtrTypeForAS")
    IntPtrTypeForAS :: proc(TD : TargetDataRef, AS : _c.uint) -> TypeRef ---;

    @(link_name="LLVMIntPtrTypeInContext")
    IntPtrTypeInContext :: proc(C : ContextRef, TD : TargetDataRef) -> TypeRef ---;

    @(link_name="LLVMIntPtrTypeForASInContext")
    IntPtrTypeForASInContext :: proc(C : ContextRef, TD : TargetDataRef, AS : _c.uint) -> TypeRef ---;

    @(link_name="LLVMSizeOfTypeInBits")
    SizeOfTypeInBits :: proc(TD : TargetDataRef, Ty : TypeRef) -> _c.ulonglong ---;

    @(link_name="LLVMStoreSizeOfType")
    StoreSizeOfType :: proc(TD : TargetDataRef, Ty : TypeRef) -> _c.ulonglong ---;

    @(link_name="LLVMABISizeOfType")
    ABISizeOfType :: proc(TD : TargetDataRef, Ty : TypeRef) -> _c.ulonglong ---;

    @(link_name="LLVMABIAlignmentOfType")
    ABIAlignmentOfType :: proc(TD : TargetDataRef, Ty : TypeRef) -> _c.uint ---;

    @(link_name="LLVMCallFrameAlignmentOfType")
    CallFrameAlignmentOfType :: proc(TD : TargetDataRef, Ty : TypeRef) -> _c.uint ---;

    @(link_name="LLVMPreferredAlignmentOfType")
    PreferredAlignmentOfType :: proc(TD : TargetDataRef, Ty : TypeRef) -> _c.uint ---;

    @(link_name="LLVMPreferredAlignmentOfGlobal")
    PreferredAlignmentOfGlobal :: proc(TD : TargetDataRef, GlobalVar : ValueRef) -> _c.uint ---;

    @(link_name="LLVMElementAtOffset")
    ElementAtOffset :: proc(TD : TargetDataRef, StructTy : TypeRef, Offset : _c.ulonglong) -> _c.uint ---;

    @(link_name="LLVMOffsetOfElement")
    OffsetOfElement :: proc(TD : TargetDataRef, StructTy : TypeRef, Element : _c.uint) -> _c.ulonglong ---;

    @(link_name="LLVMGetFirstTarget")
    GetFirstTarget :: proc() -> TargetRef ---;

    @(link_name="LLVMGetNextTarget")
    GetNextTarget :: proc(T : TargetRef) -> TargetRef ---;

    @(link_name="LLVMGetTargetFromName")
    GetTargetFromName :: proc(Name : cstring) -> TargetRef ---;

    @(link_name="LLVMGetTargetFromTriple")
    GetTargetFromTriple :: proc(Triple : cstring, T : ^TargetRef, ErrorMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMGetTargetName")
    GetTargetName :: proc(T : TargetRef) -> cstring ---;

    @(link_name="LLVMGetTargetDescription")
    GetTargetDescription :: proc(T : TargetRef) -> cstring ---;

    @(link_name="LLVMTargetHasJIT")
    TargetHasJIT :: proc(T : TargetRef) -> Bool ---;

    @(link_name="LLVMTargetHasTargetMachine")
    TargetHasTargetMachine :: proc(T : TargetRef) -> Bool ---;

    @(link_name="LLVMTargetHasAsmBackend")
    TargetHasAsmBackend :: proc(T : TargetRef) -> Bool ---;

    @(link_name="LLVMCreateTargetMachine")
    CreateTargetMachine :: proc(T : TargetRef, Triple : cstring, CPU : cstring, Features : cstring, Level : CodeGenOptLevel, Reloc : RelocMode, CodeModel : CodeModel) -> TargetMachineRef ---;

    @(link_name="LLVMDisposeTargetMachine")
    DisposeTargetMachine :: proc(T : TargetMachineRef) ---;

    @(link_name="LLVMGetTargetMachineTarget")
    GetTargetMachineTarget :: proc(T : TargetMachineRef) -> TargetRef ---;

    @(link_name="LLVMGetTargetMachineTriple")
    GetTargetMachineTriple :: proc(T : TargetMachineRef) -> cstring ---;

    @(link_name="LLVMGetTargetMachineCPU")
    GetTargetMachineCPU :: proc(T : TargetMachineRef) -> cstring ---;

    @(link_name="LLVMGetTargetMachineFeatureString")
    GetTargetMachineFeatureString :: proc(T : TargetMachineRef) -> cstring ---;

    @(link_name="LLVMCreateTargetDataLayout")
    CreateTargetDataLayout :: proc(T : TargetMachineRef) -> TargetDataRef ---;

    @(link_name="LLVMSetTargetMachineAsmVerbosity")
    SetTargetMachineAsmVerbosity :: proc(T : TargetMachineRef, VerboseAsm : Bool) ---;

    @(link_name="LLVMTargetMachineEmitToFile")
    TargetMachineEmitToFile :: proc(T : TargetMachineRef, M : ModuleRef, Filename : cstring, codegen : CodeGenFileType, ErrorMessage : ^cstring) -> Bool ---;

    @(link_name="LLVMTargetMachineEmitToMemoryBuffer")
    TargetMachineEmitToMemoryBuffer :: proc(T : TargetMachineRef, M : ModuleRef, codegen : CodeGenFileType, ErrorMessage : ^cstring, OutMemBuf : ^MemoryBufferRef) -> Bool ---;

    @(link_name="LLVMGetDefaultTargetTriple")
    GetDefaultTargetTriple :: proc() -> cstring ---;

    @(link_name="LLVMNormalizeTargetTriple")
    NormalizeTargetTriple :: proc(triple : cstring) -> cstring ---;

    @(link_name="LLVMGetHostCPUName")
    GetHostCPUName :: proc() -> cstring ---;

    @(link_name="LLVMGetHostCPUFeatures")
    GetHostCPUFeatures :: proc() -> cstring ---;

    @(link_name="LLVMAddAnalysisPasses")
    AddAnalysisPasses :: proc(T : TargetMachineRef, PM : PassManagerRef) ---;

}
