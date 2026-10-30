// Preserve conversion semantics before P800 SDNN folds FP32->BF16 into DMA.
// Pre-rounding makes the final conversion exact, including overflow/subnormals;
// for both RTNE and RTZ, quiet NaNs so dropping payload cannot produce infinity.
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Pass/Pass.h"
#include "triton/Dialect/Triton/IR/Dialect.h"
#include "triton/Dialect/TritonXPU/Transforms/Passes.h"

using namespace mlir;

namespace {
bool supportedInput(Type type) {
  auto tensorType = dyn_cast<RankedTensorType>(type);
  return isa<FloatType>(type) ||
         (tensorType && tensorType.hasStaticShape());
}

struct PreserveBF16Rounding
    : PassWrapper<PreserveBF16Rounding, OperationPass<ModuleOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(PreserveBF16Rounding)
  StringRef getArgument() const final { return "xpu-preserve-bf16-rounding"; }
  StringRef getDescription() const final {
    return "Preserve FP32 to BF16 RTNE/RTZ semantics before P800 SDNN lowering";
  }
  void getDependentDialects(DialectRegistry &registry) const override {
    registry.insert<arith::ArithDialect>();
  }
  void runOnOperation() override {
    // The frontend represents explicit RTZ as tt.fp_to_fp, whereas its default
    // RTNE conversion is arith.truncf. Normalize only the standard F32->BF16
    // cases so the same semantic preparation covers both frontend paths.
    SmallVector<triton::FpToFpOp> customConversions;
    getOperation().walk([&](triton::FpToFpOp op) {
      auto rounding = op.getRounding();
      if (supportedInput(op.getSrc().getType()) &&
          getElementTypeOrSelf(op.getSrc().getType()).isF32() &&
          getElementTypeOrSelf(op.getType()).isBF16() && rounding &&
          (*rounding == triton::RoundingMode::RTZ ||
           *rounding == triton::RoundingMode::RTNE))
        customConversions.push_back(op);
    });
    for (auto op : customConversions) {
      OpBuilder b(op);
      auto trunc =
          b.create<arith::TruncFOp>(op.getLoc(), op.getType(), op.getSrc());
      auto mode = *op.getRounding() == triton::RoundingMode::RTZ
                      ? arith::RoundingMode::toward_zero
                      : arith::RoundingMode::to_nearest_even;
      trunc.setRoundingmodeAttr(arith::RoundingModeAttr::get(&getContext(), mode));
      op.replaceAllUsesWith(trunc.getResult());
      op.erase();
    }
    SmallVector<arith::TruncFOp> conversions;
    getOperation().walk([&](arith::TruncFOp op) {
      // This pass runs on TTIR, before tensor-to-buffer lowering. Do not
      // manufacture dense constants for dynamic tensors or vector encodings.
      if (!supportedInput(op.getIn().getType()))
        return;
      Type src = getElementTypeOrSelf(op.getIn().getType());
      Type dst = getElementTypeOrSelf(op.getType());
      auto rounding = op.getRoundingmodeAttr();
      if (src.isF32() && dst.isBF16() &&
          (!rounding || rounding.getValue() ==
                            arith::RoundingMode::to_nearest_even ||
           rounding.getValue() == arith::RoundingMode::toward_zero) &&
          !op->hasAttr("flagtree.bf16_rtne_prepared") &&
          !op->hasAttr("flagtree.bf16_rtz_prepared"))
        conversions.push_back(op);
    });
    for (auto op : conversions) {
      OpBuilder b(op);
      Location loc = op.getLoc();
      Type intTy = b.getI32Type();
      if (auto shaped = dyn_cast<RankedTensorType>(op.getIn().getType()))
        intTy = shaped.clone(b.getI32Type());
      auto constant = [&](uint32_t value) -> Value {
        Attribute attr = b.getIntegerAttr(b.getI32Type(), value);
        if (auto shaped = dyn_cast<ShapedType>(intTy))
          attr = DenseElementsAttr::get(shaped, attr);
        return b.create<arith::ConstantOp>(loc, intTy, cast<TypedAttr>(attr));
      };
      Value bits = b.create<arith::BitcastOp>(loc, intTy, op.getIn());
      auto rounding = op.getRoundingmodeAttr();
      bool isRTZ = rounding &&
                   rounding.getValue() == arith::RoundingMode::toward_zero;
      Value rounded = bits;
      if (!isRTZ) {
        Value upper = b.create<arith::ShRUIOp>(loc, bits, constant(16));
        Value lsb = b.create<arith::AndIOp>(loc, upper, constant(1));
        Value bias = b.create<arith::AddIOp>(loc, constant(0x7fff), lsb);
        rounded = b.create<arith::AddIOp>(loc, bits, bias);
      }
      rounded = b.create<arith::AndIOp>(loc, rounded, constant(0xffff0000));
      Value exponent =
          b.create<arith::AndIOp>(loc, bits, constant(0x7f800000));
      Value special = b.create<arith::CmpIOp>(
          loc, arith::CmpIPredicate::eq, exponent, constant(0x7f800000));
      Value mantissa =
          b.create<arith::AndIOp>(loc, bits, constant(0x007fffff));
      Value nan = b.create<arith::CmpIOp>(loc, arith::CmpIPredicate::ne,
                                       mantissa, constant(0));
      Value quiet = b.create<arith::OrIOp>(loc, bits, constant(0x00400000));
      Value specialBits = b.create<arith::SelectOp>(loc, nan, quiet, bits);
      specialBits =
          b.create<arith::AndIOp>(loc, specialBits, constant(0xffff0000));
      Value result =
          b.create<arith::SelectOp>(loc, special, specialBits, rounded);
      Value value = b.create<arith::BitcastOp>(loc, op.getIn().getType(), result);
      op.getInMutable().assign(value);
      op->setAttr(isRTZ ? "flagtree.bf16_rtz_prepared"
                        : "flagtree.bf16_rtne_prepared",
                  b.getUnitAttr());
    }
  }
};
} // namespace

std::unique_ptr<Pass> mlir::triton::xpu::createPreserveBF16RoundingPass() {
  return std::make_unique<PreserveBF16Rounding>();
}
