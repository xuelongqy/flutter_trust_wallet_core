part of trust_wallet_core;

class DartTWCurve {

  final int curve;

  DartTWCurve(this.curve);

  /// "secp256k1"
  static const int TWCurveSECP256k1 = 0;

  /// "ed25519"
  static const int TWCurveED25519 = 1;

  /// "ed25519-blake2b-nano"
  static const int TWCurveED25519Blake2bNano = 2;

  /// "curve25519"
  static const int TWCurveCurve25519 = 3;

  /// "nist256p1"
  static const int TWCurveNIST256p1 = 4;

  /// "ed25519-cardano-seed"
  static const int TWCurveED25519Extended = 5;

  /// none
  static const int TWCurveNone = 6;
}
