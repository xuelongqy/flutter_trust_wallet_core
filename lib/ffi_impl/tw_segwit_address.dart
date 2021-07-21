part of trust_wallet_core;

/// trust wallet core
class TWSegwitAddress extends Opaque {
  /// Compares two addresses for equality.
  late final Pointer<Int32> _bool = _lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Creates an address from a string representaion.
  Pointer<Int32> TWSegwitAddressCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWSegwitAddressCreateWithString(
      string,
    );
  }

  late final _TWSegwitAddressCreateWithString_ptr = _lookup<NativeFunction<_c_TWSegwitAddressCreateWithString>>('TWSegwitAddressCreateWithString');
  late final _dart_TWSegwitAddressCreateWithString _TWSegwitAddressCreateWithString = _TWSegwitAddressCreateWithString_ptr.asFunction<_dart_TWSegwitAddressCreateWithString>();

  /// Creates an address from a public key.
  Pointer<Int32> TWSegwitAddressCreateWithPublicKey(
    int hrp,
    Pointer<TWPublicKey> publicKey,
  ) {
    return _TWSegwitAddressCreateWithPublicKey(
      hrp,
      publicKey,
    );
  }

  late final _TWSegwitAddressCreateWithPublicKey_ptr = _lookup<NativeFunction<_c_TWSegwitAddressCreateWithPublicKey>>('TWSegwitAddressCreateWithPublicKey');
  late final _dart_TWSegwitAddressCreateWithPublicKey _TWSegwitAddressCreateWithPublicKey =
      _TWSegwitAddressCreateWithPublicKey_ptr.asFunction<_dart_TWSegwitAddressCreateWithPublicKey>();

  int TWSegwitAddressDelete(
    Pointer<TWSegwitAddress> address,
  ) {
    return _TWSegwitAddressDelete(
      address,
    );
  }

  late final _TWSegwitAddressDelete_ptr = _lookup<NativeFunction<_c_TWSegwitAddressDelete>>('TWSegwitAddressDelete');
  late final _dart_TWSegwitAddressDelete _TWSegwitAddressDelete = _TWSegwitAddressDelete_ptr.asFunction<_dart_TWSegwitAddressDelete>();

  /// Returns the address string representation.
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  int TWSegwitAddressHRP(
    Pointer<TWSegwitAddress> address,
  ) {
    return _TWSegwitAddressHRP(
      address,
    );
  }

  late final _TWSegwitAddressHRP_ptr = _lookup<NativeFunction<_c_TWSegwitAddressHRP>>('TWSegwitAddressHRP');
  late final _dart_TWSegwitAddressHRP _TWSegwitAddressHRP = _TWSegwitAddressHRP_ptr.asFunction<_dart_TWSegwitAddressHRP>();

  /// Returns the witness program
  late final Pointer<Int32> _TWData = _lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;
}

typedef _c_TWSegwitAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWSegwitAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWSegwitAddressCreateWithPublicKey = Pointer<Int32> Function(
  Int32 hrp,
  Pointer<TWPublicKey> publicKey,
);

typedef _dart_TWSegwitAddressCreateWithPublicKey = Pointer<Int32> Function(
  int hrp,
  Pointer<TWPublicKey> publicKey,
);

typedef _c_TWSegwitAddressDelete = Int32 Function(
  Pointer<TWSegwitAddress> address,
);

typedef _dart_TWSegwitAddressDelete = int Function(
  Pointer<TWSegwitAddress> address,
);

typedef _c_TWSegwitAddressHRP = Int32 Function(
  Pointer<TWSegwitAddress> address,
);

typedef _dart_TWSegwitAddressHRP = int Function(
  Pointer<TWSegwitAddress> address,
);
