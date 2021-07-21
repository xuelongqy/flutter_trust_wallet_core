part of trust_wallet_core;

/// trust wallet core
class TWBitcoinAddress extends Opaque {
  /// Compares two addresses for equality.
  late final Pointer<Int32> _bool = _lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Initializes an address from a base58 sring representaion.
  Pointer<Int32> TWBitcoinAddressCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWBitcoinAddressCreateWithString(
      string,
    );
  }

  late final _TWBitcoinAddressCreateWithString_ptr = _lookup<NativeFunction<_c_TWBitcoinAddressCreateWithString>>('TWBitcoinAddressCreateWithString');
  late final _dart_TWBitcoinAddressCreateWithString _TWBitcoinAddressCreateWithString = _TWBitcoinAddressCreateWithString_ptr.asFunction<_dart_TWBitcoinAddressCreateWithString>();

  /// Initializes an address from raw data.
  Pointer<Int32> TWBitcoinAddressCreateWithData(
    Pointer<Int32> data,
  ) {
    return _TWBitcoinAddressCreateWithData(
      data,
    );
  }

  late final _TWBitcoinAddressCreateWithData_ptr = _lookup<NativeFunction<_c_TWBitcoinAddressCreateWithData>>('TWBitcoinAddressCreateWithData');
  late final _dart_TWBitcoinAddressCreateWithData _TWBitcoinAddressCreateWithData = _TWBitcoinAddressCreateWithData_ptr.asFunction<_dart_TWBitcoinAddressCreateWithData>();

  /// Initializes an address from a public key and a prefix byte.
  Pointer<Int32> TWBitcoinAddressCreateWithPublicKey(
    Pointer<TWPublicKey> publicKey,
    int prefix,
  ) {
    return _TWBitcoinAddressCreateWithPublicKey(
      publicKey,
      prefix,
    );
  }

  late final _TWBitcoinAddressCreateWithPublicKey_ptr = _lookup<NativeFunction<_c_TWBitcoinAddressCreateWithPublicKey>>('TWBitcoinAddressCreateWithPublicKey');
  late final _dart_TWBitcoinAddressCreateWithPublicKey _TWBitcoinAddressCreateWithPublicKey =
      _TWBitcoinAddressCreateWithPublicKey_ptr.asFunction<_dart_TWBitcoinAddressCreateWithPublicKey>();

  int TWBitcoinAddressDelete(
    Pointer<TWBitcoinAddress> address,
  ) {
    return _TWBitcoinAddressDelete(
      address,
    );
  }

  late final _TWBitcoinAddressDelete_ptr = _lookup<NativeFunction<_c_TWBitcoinAddressDelete>>('TWBitcoinAddressDelete');
  late final _dart_TWBitcoinAddressDelete _TWBitcoinAddressDelete = _TWBitcoinAddressDelete_ptr.asFunction<_dart_TWBitcoinAddressDelete>();

  /// Returns the address base58 string representation.
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  /// Returns the address prefix.
  late final Pointer<Int32> _uint8_t = _lookup<Int32>('uint8_t');

  int get uint8_t => _uint8_t.value;

  set uint8_t(int value) => _uint8_t.value = value;

  /// Returns the keyhash data.
  late final Pointer<Int32> _TWData = _lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;
}

typedef _c_TWBitcoinAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWBitcoinAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWBitcoinAddressCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
);

typedef _dart_TWBitcoinAddressCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
);

typedef _c_TWBitcoinAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  Int32 prefix,
);

typedef _dart_TWBitcoinAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  int prefix,
);

typedef _c_TWBitcoinAddressDelete = Int32 Function(
  Pointer<TWBitcoinAddress> address,
);

typedef _dart_TWBitcoinAddressDelete = int Function(
  Pointer<TWBitcoinAddress> address,
);
