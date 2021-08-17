part of flutter_trust_wallet_core;

class PublicKey {
  static const int PublicKeyCompressedSize = 33;
  static const int PublicKeyUncompressedSize = 65;

  late Pointer<Void> _nativehandle;

  PublicKey._(Pointer<Void> pointer) {
    _nativehandle = pointer;
  }

  PublicKey.createWithData(Pointer<Void> data, int publicKeyType) {
    _nativehandle = TWPublicKey.TWPublicKeyCreateWithData(data, publicKeyType);
  }

  static bool isValid(Uint8List data, int publivKeyType) {
    return TWPublicKeyImpl.isValid(data, publivKeyType);
  }

  Uint8List data() {
    return TWPublicKeyImpl.data(_nativehandle);
  }
}
