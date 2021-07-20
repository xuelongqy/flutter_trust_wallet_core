part of trust_wallet_core;

/// trust wallet core
class TWRippleXAddress extends Opaque {
  /// Compares two addresses for equality.
  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Creates an address from a string representaion.
  Pointer<Int32> TWRippleXAddressCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWRippleXAddressCreateWithString(
      string,
    );
  }

  late final _TWRippleXAddressCreateWithString_ptr = lookup<NativeFunction<_c_TWRippleXAddressCreateWithString>>('TWRippleXAddressCreateWithString');
  late final _dart_TWRippleXAddressCreateWithString _TWRippleXAddressCreateWithString = _TWRippleXAddressCreateWithString_ptr.asFunction<_dart_TWRippleXAddressCreateWithString>();

  /// Creates an address from a public key and destination tag.
  Pointer<Int32> TWRippleXAddressCreateWithPublicKey(
    Pointer<TWPublicKey> publicKey,
    int tag,
  ) {
    return _TWRippleXAddressCreateWithPublicKey(
      publicKey,
      tag,
    );
  }

  late final _TWRippleXAddressCreateWithPublicKey_ptr = lookup<NativeFunction<_c_TWRippleXAddressCreateWithPublicKey>>('TWRippleXAddressCreateWithPublicKey');
  late final _dart_TWRippleXAddressCreateWithPublicKey _TWRippleXAddressCreateWithPublicKey =
      _TWRippleXAddressCreateWithPublicKey_ptr.asFunction<_dart_TWRippleXAddressCreateWithPublicKey>();

  int TWRippleXAddressDelete(
    Pointer<TWRippleXAddress> address,
  ) {
    return _TWRippleXAddressDelete(
      address,
    );
  }

  late final _TWRippleXAddressDelete_ptr = lookup<NativeFunction<_c_TWRippleXAddressDelete>>('TWRippleXAddressDelete');
  late final _dart_TWRippleXAddressDelete _TWRippleXAddressDelete = _TWRippleXAddressDelete_ptr.asFunction<_dart_TWRippleXAddressDelete>();

  /// Returns the address string representation.
  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  /// Returns the destination tag.
  late final Pointer<Int32> _uint32_t = lookup<Int32>('uint32_t');

  int get uint32_t => _uint32_t.value;

  set uint32_t(int value) => _uint32_t.value = value;
}

typedef _c_TWRippleXAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWRippleXAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWRippleXAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  Int32 tag,
);

typedef _dart_TWRippleXAddressCreateWithPublicKey = Pointer<Int32> Function(
  Pointer<TWPublicKey> publicKey,
  int tag,
);

typedef _c_TWRippleXAddressDelete = Int32 Function(
  Pointer<TWRippleXAddress> address,
);

typedef _dart_TWRippleXAddressDelete = int Function(
  Pointer<TWRippleXAddress> address,
);
