part of trust_wallet_core;

class TWString {
  late Pointer<Utf8> _pointer;

  TWString createWithUTF8Bytes(String str) {
    final Pointer<Utf8> Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
            'TWStringCreateWithUTF8Bytes')
        .asFunction();
    this._pointer = func(str.toNativeUtf8());
    return this;
  }

  String utf8Bytes(Pointer<Utf8> str) {
    final Pointer<Utf8> Function(Pointer) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer)>>(
            'TWStringUTF8Bytes')
        .asFunction();
    this._pointer = func(str);
    return this._pointer.toDartString();
  }

  void delete() {
    final void Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Void Function(Pointer<Utf8>)>>('TWStringDelete')
        .asFunction();
    return func(this._pointer);
  }
}
