part of trust_wallet_core_ffi;

class DartTWHDVersion {
  final int hDVersion;
  DartTWHDVersion(this.hDVersion);
  static const int TWHDVersionNone = 0;

  // Bitcoin
  static const int TWHDVersionXPUB = 0x0488b21e;
  static const int TWHDVersionXPRV = 0x0488ade4;
  static const int TWHDVersionYPUB = 0x049d7cb2;
  static const int TWHDVersionYPRV = 0x049d7878;
  static const int TWHDVersionZPUB = 0x04b24746;
  static const int TWHDVersionZPRV = 0x04b2430c;

  // Litecoin
  static const int TWHDVersionLTUB = 0x019da462;
  static const int TWHDVersionLTPV = 0x019d9cfe;
  static const int TWHDVersionMTUB = 0x01b26ef6;
  static const int TWHDVersionMTPV = 0x01b26792;

  // Decred
  static const int TWHDVersionDPUB = 0x2fda926;
  static const int TWHDVersionDPRV = 0x2fda4e8;

  // Dogecoin
  static const int TWHDVersionDGUB = 0x02facafd;
  static const int TWHDVersionDGPV = 0x02fac398;

  bool isPublic() {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWHDVersionIsPublic')
        .asFunction();
    return func(hDVersion) != 0;
  }

  bool isPrivate() {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWHDVersionIsPrivate')
        .asFunction();
    return func(hDVersion) != 0;
  }
}
