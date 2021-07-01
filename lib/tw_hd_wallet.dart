part of trust_wallet_core;

class TWHDWallet {
  late Pointer _pointer;

  TWHDWallet._(Pointer pointer) {
    _pointer = pointer;
  }

  static TWHDWallet create(int strength, String passphrase) {
    final _passphrase = TWString().createWithUTF8Bytes(passphrase);
    final Pointer Function(int, Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Pointer Function(Int32, Pointer<Utf8>)>>(
            'TWHDWalletCreate')
        .asFunction();
    final result = func(strength, _passphrase._pointer);
    _passphrase.delete();
    return TWHDWallet._(result);
  }

  static TWHDWallet createWithMnemonic(String mnemonic, String passphrase) {
    final _passphrase = TWString().createWithUTF8Bytes(passphrase);
    final _mnemonic = TWString().createWithUTF8Bytes(mnemonic);
    final Pointer Function(Pointer<Utf8>, Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Pointer Function(Pointer<Utf8>, Pointer<Utf8>)>>(
            'TWHDWalletCreateWithMnemonic')
        .asFunction();
    final result = func(_mnemonic._pointer, _passphrase._pointer);
    _passphrase.delete();
    _mnemonic.delete();
    return TWHDWallet._(result);
  }

  void delete() {
    final void Function(Pointer? wallet) func = walletCoreLib
        .lookup<NativeFunction<Void Function(Pointer? wallet)>>(
            'TWHDWalletDelete')
        .asFunction();
    return func(_pointer);
  }

  String mnemonic() {
    final Pointer<Utf8> Function(Pointer) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer)>>(
            'TWHDWalletMnemonic')
        .asFunction();
    final _mnemonic = func(_pointer);
    return TWString().utf8Bytes(_mnemonic);
  }

  String getAddressForCoin(int twCoinType) {
    final Pointer<Utf8> Function(Pointer, int) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer, Int32)>>(
            'TWHDWalletGetAddressForCoin')
        .asFunction();
    final _address = func(_pointer, twCoinType);
    return TWString().utf8Bytes(_address);
  }
}
