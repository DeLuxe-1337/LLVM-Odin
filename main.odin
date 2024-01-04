package main

import "LLVM"
import "core:fmt"

main :: proc() {
	using LLVM

	module := LLVMModuleCreateWithName("MyModule")
	builder := LLVMCreateBuilder()

	fmt.println("Created module and builder")

	param_types := make([^]LLVMTypeRef, 2)
	param_types[0] = LLVMInt32Type()
	param_types[1] = LLVMInt32Type()

	addFuncType := LLVMFunctionType(LLVMInt32Type(), param_types, 2, 0)

	addFuncRef := LLVMAddFunction(module, "add", addFuncType)

	entryBlock := LLVMAppendBasicBlock(addFuncRef, "entry")

	LLVMPositionBuilderAtEnd(builder, entryBlock)

	addExpr := LLVMBuildAdd(
		builder,
		LLVMGetParam(addFuncRef, 0),
		LLVMGetParam(addFuncRef, 1),
		"addExpr",
	)
	LLVMBuildRet(builder, addExpr)

	fmt.println("Verifying module")

	error: cstring = ""
	LLVMVerifyModule(module, LLVMVerifierFailureAction.LLVMAbortProcessAction, &error)
	fmt.println(error)
	LLVMDisposeMessage(error)

	LLVMWriteBitcodeToFile(module, "out.bc")
	LLVMPrintModuleToFile(module, "out.ll", &error)
	fmt.println(LLVMPrintModuleToString(module))
}
