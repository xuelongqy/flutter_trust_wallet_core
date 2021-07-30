part of trust_wallet_core_ffi;

class DartTWPurpose {
  final int purpose;

  DartTWPurpose(this.purpose);

  static const int TWPurposeBIP44 = 44;
  static const int TWPurposeBIP49 = 49;
  static const int TWPurposeBIP84 = 84;
  static const int TWPurposeBIP1852 = 1852;
}
