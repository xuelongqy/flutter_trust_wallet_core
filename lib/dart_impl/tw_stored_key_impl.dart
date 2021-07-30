part of trust_wallet_core_ffi;

class TWStoredKeyImpl extends TWStoredKey {
  static Pointer<Void> importPrivateKey(Uint8List pk, String name, Uint8List password, int coin) {
    final _name = TWStringImpl.toTWString(name);
    final _password = TWData.TWDataCreateWithBytes(password.toPointerUint8(), password.length);
    final _pk = TWData.TWDataCreateWithBytes(pk.toPointerUint8(), pk.length);
    final _storedKey = TWStoredKey.TWStoredKeyImportPrivateKey(_pk, _name, _password, coin);
    TWStringImpl.delete(_name);
    TWData.TWDataDelete(_password);
    TWData.TWDataDelete(_pk);
    return _storedKey;
  }

  static Pointer<Void> importHDWallet(String mnemonic, String name, Uint8List password, int coin) {
    final _mnemonic = TWStringImpl.toTWString(mnemonic);
    final _name = TWStringImpl.toTWString(name);
    final _password = TWData.TWDataCreateWithBytes(password.toPointerUint8(), password.length);

    final _storedKey = TWStoredKey.TWStoredKeyImportHDWallet(_mnemonic, _name, _password, coin);
    TWStringImpl.delete(_mnemonic);
    TWStringImpl.delete(_name);
    TWData.TWDataDelete(_password);
    return _storedKey;
  }

  static Pointer<Void> importJson(Pointer<Void> json) {
    return TWStoredKey.TWStoredKeyImportJSON(json);
  }

  static Pointer<Void> decryptPrivateKey(Pointer<Void> storedKey, Uint8List password) {
    final _password = TWData.TWDataCreateWithBytes(password.toPointerUint8(), password.length);
    final _pivateKey = TWStoredKey.TWStoredKeyDecryptPrivateKey(storedKey, _password);
    TWData.TWDataDelete(_password);
    return _pivateKey;
  }

  static Pointer<Utf8> decryptMnemonic(Pointer<Void> storedKey, Uint8List password) {
    final _password = TWData.TWDataCreateWithBytes(password.toPointerUint8(), password.length);

    final _mnemonic = TWStoredKey.TWStoredKeyDecryptMnemonic(storedKey, _password);
    TWData.TWDataDelete(_password);

    return _mnemonic;
  }

  static Pointer<Void> privateKey(Pointer<Void> storedKey, int coinType, Uint8List password) {
    final _password = TWData.TWDataCreateWithBytes(password.toPointerUint8(), password.length);
    final _privateKey = TWStoredKey.TWStoredKeyPrivateKey(storedKey, coinType, _password);

    TWData.TWDataDelete(_password);
    return _privateKey;
  }

  static Pointer<Void> wallet(Pointer<Void> storedKey, Uint8List password) {
    final _password = TWData.TWDataCreateWithBytes(password.toPointerUint8(), password.length);
    final _wallet = TWStoredKey.TWStoredKeyWallet(storedKey, _password);
    TWData.TWDataDelete(_password);
    return _wallet;
  }

  static Pointer<Void> exportJSON(Pointer<Void> storedKey) {
    return TWStoredKey.TWStoredKeyExportJSON(storedKey);
  }
}
