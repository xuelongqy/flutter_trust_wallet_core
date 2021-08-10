part of trust_wallet_core_ffi;

class TWHashImpl extends TWHash {
  static Uint8List hashSHA256(Uint8List bytes) {
    final data = TWData.TWDataCreateWithBytes(bytes.toPointerUint8(), bytes.length);
    final hash = TWHash.TWHashSHA256(data);
    return TWData.TWDataBytes(hash).asTypedList(TWData.TWDataSize(hash));
  }
}
