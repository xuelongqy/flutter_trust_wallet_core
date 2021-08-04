part of trust_wallet_core_ffi;

class TWPublicKeyImpl extends TWPublicKey {
  static bool isValid(Uint8List data, int publicKeyType) {
    final _data = TWData.TWDataCreateWithBytes(data.toPointerUint8(), data.length);

    final result = TWPublicKey.TWPublicKeyIsValid(_data, publicKeyType) >= 1;

    TWData.TWDataDelete(_data);
    return result;
  }


  static Pointer<Void> createWithData(Pointer<Void> data, int publicKeyType) {
    final publickey = TWPublicKey.TWPublicKeyCreateWithData(data, publicKeyType);

    return publickey;
  }

  static Uint8List data(Pointer<Void> publicKey) {
    final data = TWPublicKey.TWPublicKeyData(publicKey);

    return TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
  }
}
