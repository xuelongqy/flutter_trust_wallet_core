part of trust_wallet_core;

/// Registered HD version bytes
///
/// - SeeAlso: https://github.com/satoshilabs/slips/blob/master/slip-0132.md
abstract class TWHDVersion {
  static const int TWHDVersionNone = 0;
  static const int TWHDVersionXPUB = 76067358;
  static const int TWHDVersionXPRV = 76066276;
  static const int TWHDVersionYPUB = 77429938;
  static const int TWHDVersionYPRV = 77428856;
  static const int TWHDVersionZPUB = 78792518;
  static const int TWHDVersionZPRV = 78791436;
  static const int TWHDVersionLTUB = 27108450;
  static const int TWHDVersionLTPV = 27106558;
  static const int TWHDVersionMTUB = 28471030;
  static const int TWHDVersionMTPV = 28469138;
  static const int TWHDVersionDPUB = 50178342;
  static const int TWHDVersionDPRV = 50177256;
  static const int TWHDVersionDGUB = 49990397;
  static const int TWHDVersionDGPV = 49988504;
}
