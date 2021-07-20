part of trust_wallet_core;

/// trust wallet core
abstract class TWBitcoinSigHashType {
  static const int TWBitcoinSigHashTypeAll = 1;
  static const int TWBitcoinSigHashTypeNone = 2;
  static const int TWBitcoinSigHashTypeSingle = 3;
  static const int TWBitcoinSigHashTypeFork = 64;
  static const int TWBitcoinSigHashTypeForkBTG = 20288;
  static const int TWBitcoinSigHashTypeAnyoneCanPay = 128;
}
