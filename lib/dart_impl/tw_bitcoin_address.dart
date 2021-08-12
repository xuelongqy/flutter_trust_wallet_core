part of trust_wallet_core_ffi;


class TWBitCoinAddressImpl extends TWBitcoinAddress {

  static Pointer<Void> create({String string = ""}) {
    final _stringString = TWStringImpl.toTWString(string);
    final address = TWBitcoinAddress.TWBitcoinAddressCreateWithString(_stringString);
    TWStringImpl.delete(_stringString);
    return address;
  }

  static Pointer<Void> createWithData(Uint8List bytes) {
    final _data = TWData.TWDataCreateWithBytes(bytes.toPointerUint8(), bytes.length);
    final address = TWBitcoinAddress.TWBitcoinAddressCreateWithData(_data);
    TWData.TWDataDelete(_data);
    return address;
  }

  static bool equal(Pointer<Void> lhs ,Pointer<Void> rhs) {
    final result = TWBitcoinAddress.TWBitcoinAddressEqual(lhs, rhs) >=1;
    return result;
  }

  static bool isValid(Uint8List data) {
    final _data = TWData.TWDataCreateWithBytes(data.toPointerUint8(), data.length);
    final result = TWBitcoinAddress.TWBitcoinAddressIsValid(_data) >= 1;
    TWData.TWDataDelete(_data);
    return result;
  }

  static bool isValidString(String string) {
    final _stringString = TWStringImpl.toTWString(string);
    final result = TWBitcoinAddress.TWBitcoinAddressIsValidString(_stringString) >= 1;
    TWStringImpl.delete(_stringString);
    return result;
  }

  // String description(Pointer<Void> address){
  //    return TWStringImpl.toDartString(TWHDWallet.TWHDWalletMnemonic(wallet));
  // }
  //
  // Uint8List keyhash(Uint8List data){
  //    final data = TWBitcoinAddress.TW;
  //   return TWData.TWDataBytes(data).asTypedList(TWData.TWDataSize(data));
  // }

}
