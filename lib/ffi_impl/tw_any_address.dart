part of trust_wallet_core;

/// trust wallet core
class TWAnyAddress extends Opaque {
  /// Compares two addresses for equality.
  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Creates an address from a string representaion.
  Pointer<Int32> TWAnyAddressCreateWithString(
    Pointer<Int32> string,
    int coin,
  ) {
    return _TWAnyAddressCreateWithString(
      string,
      coin,
    );
  }

  late final _TWAnyAddressCreateWithString_ptr = lookup<NativeFunction<_c_TWAnyAddressCreateWithString>>('TWAnyAddressCreateWithString');
  late final _dart_TWAnyAddressCreateWithString _TWAnyAddressCreateWithString = _TWAnyAddressCreateWithString_ptr.asFunction<_dart_TWAnyAddressCreateWithString>();

  /// Creates an address from a public key.
  Pointer<Int32> TWAnyAddressCreateWithPublicKey(
    Pointer<TWPublicKey> publicKey,
    int coin,
  ) {
    return _TWAnyAddressCreateWithPublicKey(
      publicKey,
      coin,
    );
  }

  late final _TWAnyAddressCreateWithPublicKey_ptr = lookup<NativeFunction<_c_TWAnyAddressCreateWithPublicKey>>('TWAnyAddressCreateWithPublicKey');
  late final _dart_TWAnyAddressCreateWithPublicKey _TWAnyAddressCreateWithPublicKey = _TWAnyAddressCreateWithPublicKey_ptr.asFunction<_dart_TWAnyAddressCreateWithPublicKey>();

  int TWAnyAddressDelete(
    Pointer<TWAnyAddress> address,
  ) {
    return _TWAnyAddressDelete(
      address,
    );
  }

  late final _TWAnyAddressDelete_ptr = lookup<NativeFunction<_c_TWAnyAddressDelete>>('TWAnyAddressDelete');
  late final _dart_TWAnyAddressDelete _TWAnyAddressDelete = _TWAnyAddressDelete_ptr.asFunction<_dart_TWAnyAddressDelete>();

  /// Returns the address string representation.
  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  int TWAnyAddressCoin(
    Pointer<TWAnyAddress> address,
  ) {
    return _TWAnyAddressCoin(
      address,
    );
  }

  late final _TWAnyAddressCoin_ptr = lookup<NativeFunction<_c_TWAnyAddressCoin>>('TWAnyAddressCoin');
  late final _dart_TWAnyAddressCoin _TWAnyAddressCoin = _TWAnyAddressCoin_ptr.asFunction<_dart_TWAnyAddressCoin>();

  /// Returns underlaying data (public key or key hash)
  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;
}

typedef _c_TWAnyAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
  Int32 coin,
);

typedef _dart_TWAnyAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
  int coin,
);

typedef _c_TWAnyAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  Int32 coin,
);

typedef _dart_TWAnyAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  int coin,
);

typedef _c_TWAnyAddressDelete = Int32 Function(
  Pointer<TWAnyAddress> address,
);

typedef _dart_TWAnyAddressDelete = int Function(
  Pointer<TWAnyAddress> address,
);

typedef _c_TWAnyAddressCoin = Int32 Function(
  Pointer<TWAnyAddress> address,
);

typedef _dart_TWAnyAddressCoin = int Function(
  Pointer<TWAnyAddress> address,
);
