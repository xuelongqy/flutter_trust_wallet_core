part of trust_wallet_core;

/// trust wallet core
class TWGroestlcoinAddress extends Opaque {
  /// Compares two addresses for equality.
  late final Pointer<Int32> _bool = _lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Create an address from a base58 sring representaion.
  Pointer<Int32> TWGroestlcoinAddressCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWGroestlcoinAddressCreateWithString(
      string,
    );
  }

  late final _TWGroestlcoinAddressCreateWithString_ptr = _lookup<NativeFunction<_c_TWGroestlcoinAddressCreateWithString>>('TWGroestlcoinAddressCreateWithString');
  late final _dart_TWGroestlcoinAddressCreateWithString _TWGroestlcoinAddressCreateWithString =
      _TWGroestlcoinAddressCreateWithString_ptr.asFunction<_dart_TWGroestlcoinAddressCreateWithString>();

  /// Create an address from a public key and a prefix byte.
  Pointer<Int32> TWGroestlcoinAddressCreateWithPublicKey(
    Pointer<TWPublicKey> publicKey,
    int prefix,
  ) {
    return _TWGroestlcoinAddressCreateWithPublicKey(
      publicKey,
      prefix,
    );
  }

  late final _TWGroestlcoinAddressCreateWithPublicKey_ptr = _lookup<NativeFunction<_c_TWGroestlcoinAddressCreateWithPublicKey>>('TWGroestlcoinAddressCreateWithPublicKey');
  late final _dart_TWGroestlcoinAddressCreateWithPublicKey _TWGroestlcoinAddressCreateWithPublicKey =
      _TWGroestlcoinAddressCreateWithPublicKey_ptr.asFunction<_dart_TWGroestlcoinAddressCreateWithPublicKey>();

  int TWGroestlcoinAddressDelete(
    Pointer<TWGroestlcoinAddress> address,
  ) {
    return _TWGroestlcoinAddressDelete(
      address,
    );
  }

  late final _TWGroestlcoinAddressDelete_ptr = _lookup<NativeFunction<_c_TWGroestlcoinAddressDelete>>('TWGroestlcoinAddressDelete');
  late final _dart_TWGroestlcoinAddressDelete _TWGroestlcoinAddressDelete = _TWGroestlcoinAddressDelete_ptr.asFunction<_dart_TWGroestlcoinAddressDelete>();

  /// Returns the address base58 string representation.
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}

typedef _c_TWGroestlcoinAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWGroestlcoinAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWGroestlcoinAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  Int32 prefix,
);

typedef _dart_TWGroestlcoinAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  int prefix,
);

typedef _c_TWGroestlcoinAddressDelete = Int32 Function(
  Pointer<TWGroestlcoinAddress> address,
);

typedef _dart_TWGroestlcoinAddressDelete = int Function(
  Pointer<TWGroestlcoinAddress> address,
);
