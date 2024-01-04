package main

import "LLVM"
import "core:fmt"

main :: proc() {
	module := LLVM.ModuleCreateWithName("MyModule")
	builder := LLVM.CreateBuilder()

	fmt.println("Created module and builder")

	param_types := make([^]LLVM.TypeRef, 2)
	param_types[0] = LLVM.Int32Type()
	param_types[1] = LLVM.Int32Type()

	addFuncType := LLVM.FunctionType(LLVM.Int32Type(), param_types, 2, 0)

	addFuncRef := LLVM.AddFunction(module, "add", addFuncType)

	entryBlock := LLVM.AppendBasicBlock(addFuncRef, "entry")

	LLVM.PositionBuilderAtEnd(builder, entryBlock)

	addExpr := LLVM.BuildAdd(
		builder,
		LLVM.GetParam(addFuncRef, 0),
		LLVM.GetParam(addFuncRef, 1),
		"addExpr",
	)
	LLVM.BuildRet(builder, addExpr)

	fmt.println("Verifying module")

	error: cstring = ""
	LLVM.VerifyModule(module, LLVM.VerifierFailureAction.AbortProcessAction, &error)
	fmt.println(error)
	LLVM.DisposeMessage(error)

	LLVM.WriteBitcodeToFile(module, "out.bc")
	LLVM.PrintModuleToFile(module, "out.ll", &error)
	fmt.println(LLVM.PrintModuleToString(module))
}
