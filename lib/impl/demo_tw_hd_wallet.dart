part of trust_wallet_core;

class DartTWHDWallet {
  Pointer? _twHDWallet;

  DartTWHDWallet._(Pointer pointer) {
    if (pointer.address == 0) {
      _twHDWallet = null;
    } else {
      _twHDWallet = pointer;
    }
  }

  static DartTWHDWallet create(int strength, {String passphrase = ""}) {
    final _passphrase = DartTWString.fromDartString(passphrase);
    final Pointer Function(int, Pointer<Utf8>) func = walletCoreLib.lookup<NativeFunction<Pointer Function(Int32, Pointer<Utf8>)>>('TWHDWalletCreate').asFunction();
    final result = func(strength, _passphrase._twString);
    _passphrase.delete();
    return DartTWHDWallet._(result);
  }

  static DartTWHDWallet? createWithMnemonic(String mnemonic, String passphrase) {
    final _passphrase = DartTWString.fromDartString(passphrase);
    final _mnemonic = DartTWString.fromDartString(mnemonic);
    final Pointer Function(Pointer<Utf8>, Pointer<Utf8>) func =
        walletCoreLib.lookup<NativeFunction<Pointer Function(Pointer<Utf8>, Pointer<Utf8>)>>('TWHDWalletCreateWithMnemonic').asFunction();
    final result = func(_mnemonic._twString, _passphrase._twString);
    _passphrase.delete();
    _mnemonic.delete();
    return DartTWHDWallet._(result);
  }

  static DartTWHDWallet? createWithData(Uint8List seed, String passphrase) {
    final _passphrase = DartTWString.fromDartString(passphrase);
    final _bytes = DartTWData().createWithBytes(seed);
    final Pointer Function(Pointer<Void>, Pointer<Utf8>) func =
        walletCoreLib.lookup<NativeFunction<Pointer Function(Pointer<Void>, Pointer<Utf8>)>>('TWHDWalletCreateWithData').asFunction();
    final result = func(_bytes._twData, _passphrase._twString);
    _passphrase.delete();
    _bytes.delete();
    return DartTWHDWallet._(result);
  }

  Uint8List seed() {
    final Pointer<Void> Function(Pointer) func = walletCoreLib.lookup<NativeFunction<Pointer<Void> Function(Pointer)>>('TWHDWalletSeed').asFunction();
    final result = DartTWData().createWithData(func(this._twHDWallet!));

    return result.bytes();
  }

  void delete() {
    final void Function(Pointer? wallet) func = walletCoreLib.lookup<NativeFunction<Void Function(Pointer? wallet)>>('TWHDWalletDelete').asFunction();
    return func(_twHDWallet);
  }

  String mnemonic() {
    final Pointer<Utf8> Function(Pointer) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer)>>('TWHDWalletMnemonic').asFunction();
    final _mnemonic = func(_twHDWallet!);
    return DartTWString(_mnemonic).toDartString();
  }

  String getAddressForCoin(int twCoinType) {
    final Pointer<Utf8> Function(Pointer, int) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer, Int32)>>('TWHDWalletGetAddressForCoin').asFunction();
    return DartTWString(func(_twHDWallet!, twCoinType)).toDartString();
  }

  String getKeyForCoin(int twCoinType) {
    final Pointer<Utf8> Function(Pointer, int) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer, Int32)>>('TWHDWalletGetKeyForCoin').asFunction();
    return DartTWString(func(_twHDWallet!, twCoinType)).toDartString();
  }
}
