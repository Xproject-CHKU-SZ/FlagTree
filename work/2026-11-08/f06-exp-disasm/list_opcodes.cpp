#include <llvm/MC/MCInstrInfo.h>
#include <llvm/MC/TargetRegistry.h>
#include <llvm/Support/TargetSelect.h>
#include <iostream>
#include <memory>
int main() {
  LLVMInitializeXPUTargetInfo();
  LLVMInitializeXPUTargetMC();
  std::string error;
  auto target = llvm::TargetRegistry::lookupTarget("xpu3-baidu-none-gnu", error);
  if (!target) { std::cerr << error; return 1; }
  std::unique_ptr<llvm::MCInstrInfo> info(target->createMCInstrInfo());
  for (unsigned i = 0; i < info->getNumOpcodes(); ++i)
    if (!info->get(i).isPseudo())
      std::cout << info->getName(i).str() << "\n";
}
