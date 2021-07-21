part of trust_wallet_core;

/// trust wallet core
class TWPublicKey extends Opaque {
  late final Pointer<Int32> _size_t = _lookup<Int32>('size_t');

  int get size_t => _size_t.value;

  set size_t(int value) => _size_t.value = value;

  late final Pointer<Int32> _TWPublicKeyUncompressedSize = _lookup<Int32>('TWPublicKeyUncompressedSize');

  int get TWPublicKeyUncompressedSize => _TWPublicKeyUncompressedSize.value;

  set TWPublicKeyUncompressedSize(int value) => _TWPublicKeyUncompressedSize.value = value;

  Pointer<Int32> TWPublicKeyCreateWithData(
    Pointer<Int32> data,
    int type,
  ) {
    return _TWPublicKeyCreateWithData(
      data,
      type,
    );
  }

  late final _TWPublicKeyCreateWithData_ptr = _lookup<NativeFunction<_c_TWPublicKeyCreateWithData>>('TWPublicKeyCreateWithData');
  late final _dart_TWPublicKeyCreateWithData _TWPublicKeyCreateWithData = _TWPublicKeyCreateWithData_ptr.asFunction<_dart_TWPublicKeyCreateWithData>();

  int TWPublicKeyDelete(
    Pointer<TWPublicKey> pk,
  ) {
    return _TWPublicKeyDelete(
      pk,
    );
  }

  late final _TWPublicKeyDelete_ptr = _lookup<NativeFunction<_c_TWPublicKeyDelete>>('TWPublicKeyDelete');
  late final _dart_TWPublicKeyDelete _TWPublicKeyDelete = _TWPublicKeyDelete_ptr.asFunction<_dart_TWPublicKeyDelete>();

  late final Pointer<Int32> _bool = _lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  Pointer<Int32> TWPublicKeyCompressed(
    Pointer<TWPublicKey> from,
  ) {
    return _TWPublicKeyCompressed(
      from,
    );
  }

  late final _TWPublicKeyCompressed_ptr = _lookup<NativeFunction<_c_TWPublicKeyCompressed>>('TWPublicKeyCompressed');
  late final _dart_TWPublicKeyCompressed _TWPublicKeyCompressed = _TWPublicKeyCompressed_ptr.asFunction<_dart_TWPublicKeyCompressed>();

  Pointer<Int32> TWPublicKeyUncompressed(
    Pointer<TWPublicKey> from,
  ) {
    return _TWPublicKeyUncompressed(
      from,
    );
  }

  late final _TWPublicKeyUncompressed_ptr = _lookup<NativeFunction<_c_TWPublicKeyUncompressed>>('TWPublicKeyUncompressed');
  late final _dart_TWPublicKeyUncompressed _TWPublicKeyUncompressed = _TWPublicKeyUncompressed_ptr.asFunction<_dart_TWPublicKeyUncompressed>();

  late final Pointer<Int32> _TWData = _lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  int TWPublicKeyKeyType(
    Pointer<TWPublicKey> publicKey,
  ) {
    return _TWPublicKeyKeyType(
      publicKey,
    );
  }

  late final _TWPublicKeyKeyType_ptr = _lookup<NativeFunction<_c_TWPublicKeyKeyType>>('TWPublicKeyKeyType');
  late final _dart_TWPublicKeyKeyType _TWPublicKeyKeyType = _TWPublicKeyKeyType_ptr.asFunction<_dart_TWPublicKeyKeyType>();

  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  Pointer<Int32> TWPublicKeyRecover(
    Pointer<Int32> signature,
    Pointer<Int32> message,
  ) {
    return _TWPublicKeyRecover(
      signature,
      message,
    );
  }

  late final _TWPublicKeyRecover_ptr = _lookup<NativeFunction<_c_TWPublicKeyRecover>>('TWPublicKeyRecover');
  late final _dart_TWPublicKeyRecover _TWPublicKeyRecover = _TWPublicKeyRecover_ptr.asFunction<_dart_TWPublicKeyRecover>();
}

typedef _c_TWPublicKeyCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
  Int32 type,
);

typedef _dart_TWPublicKeyCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
  int type,
);

typedef _c_TWPublicKeyDelete = Int32 Function(
  Pointer<TWPublicKey> pk,
);

typedef _dart_TWPublicKeyDelete = int Function(
  Pointer<TWPublicKey> pk,
);

typedef _c_TWPublicKeyCompressed = Pointer<Int32> Function(
  Pointer<TWPublicKey> from,
);

typedef _dart_TWPublicKeyCompressed = Pointer<Int32> Function(
  Pointer<TWPublicKey> from,
);

typedef _c_TWPublicKeyUncompressed = Pointer<Int32> Function(
  Pointer<TWPublicKey> from,
);

typedef _dart_TWPublicKeyUncompressed = Pointer<Int32> Function(
  Pointer<TWPublicKey> from,
);

typedef _c_TWPublicKeyKeyType = Int32 Function(
  Pointer<TWPublicKey> publicKey,
);

typedef _dart_TWPublicKeyKeyType = int Function(
  Pointer<TWPublicKey> publicKey,
);

typedef _c_TWPublicKeyRecover = Pointer<Int32> Function(
  Pointer<Int32> signature,
  Pointer<Int32> message,
);

typedef _dart_TWPublicKeyRecover = Pointer<Int32> Function(
  Pointer<Int32> signature,
  Pointer<Int32> message,
);
