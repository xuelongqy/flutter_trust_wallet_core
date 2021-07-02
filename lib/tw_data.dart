part of trust_wallet_core;

class TWData {
  late Pointer<Void> _twData;

  TWData createWithBytes(Uint8List bytes) {
    final Pointer<Void> Function(Pointer<Uint8>, int) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Void> Function(Pointer<Uint8>, Int32)>>(
        'TWDataCreateWithBytes')
        .asFunction();

    this._twData = func(bytes.allocatePointer(), bytes.length);
    return this;
  }

  TWData createWithSize(int size) {
    final Pointer<Void> Function(int) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Void> Function(Int32)>>(
        'TWDataCreateWithSize')
        .asFunction();

    this._twData = func(size);
    return this;
  }

  TWData createWithData(Pointer<Void> data) {
    final Pointer<Void> Function(Pointer<Void>) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
        'TWDataCreateWithData')
        .asFunction();

    this._twData = func(data);
    return this;
  }


  int size() {
    final int Function(Pointer<Void>) func = walletCoreLib
        .lookup<NativeFunction<Int8 Function(Pointer<Void>)>>(
        'TWDataSize')
        .asFunction();

    return func(_twData);
  }

  Uint8List bytes() {
    final Pointer<Uint8> Function(Pointer<Void>) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Uint8> Function(Pointer<Void>)>>(
        'TWDataBytes')
        .asFunction();

    return func(_twData).asTypedList(size());
  }


  void delete() {
    final void Function(Pointer<Void>) func = walletCoreLib
        .lookup<NativeFunction<Void Function(Pointer<Void>)>>('TWDataDelete')
        .asFunction();
    return func(this._twData);
  }
}
