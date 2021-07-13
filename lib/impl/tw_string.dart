part of trust_wallet_core;


class TWString {
  late String _dartString;
  late Pointer<Utf8> _twString;

  TWString.fromDartString(this._dartString) {
    createWithUTF8Bytes(_dartString);
  }

  TWString(this._twString) {
    this._dartString = utf8Bytes(_twString);
  }

  String toDartString() {
    return this._twString.toDartString();
  }

  TWString createWithUTF8Bytes(String str) {
    final Pointer<Utf8> Function(Pointer<Utf8>) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>('TWStringCreateWithUTF8Bytes').asFunction();
    this._twString = func(str.toNativeUtf8());
    return this;
  }

  String utf8Bytes(Pointer<Utf8> bytes) {
    final Pointer<Utf8> Function(Pointer) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer)>>('TWStringUTF8Bytes').asFunction();
    this._twString = func(bytes);
    return this._twString.toDartString();
  }

  void delete() {
    final void Function(Pointer<Utf8>) func = walletCoreLib.lookup<NativeFunction<Void Function(Pointer<Utf8>)>>('TWStringDelete').asFunction();
    return func(this._twString);
  }
}
