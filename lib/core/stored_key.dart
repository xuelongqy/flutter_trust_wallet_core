part of flutter_trust_wallet_core;

class StoredKey {
  static late Pointer<Void> _nativehandle;

  static StoredKey importHDWallet(String mnemonic, String name, Uint8List password, int coin) {
    _nativehandle = TWStoredKeyImpl.importHDWallet(mnemonic, name, password, coin);

    return StoredKey();
  }

  static StoredKey importPrivateKey(Uint8List privateKeyData, String name, Uint8List password, int coin) {
    _nativehandle = TWStoredKeyImpl.importPrivateKey(privateKeyData, name, password, coin);

    return StoredKey();
  }

  String exportJson() {
    final _data = TWStoredKeyImpl.exportJSON(_nativehandle);

    print(TWData.TWDataSize(_data));
    final bytes = TWData.TWDataBytes(_data).asTypedList(TWData.TWDataSize(_data));
    return String.fromCharCodes(bytes);
  }
}
