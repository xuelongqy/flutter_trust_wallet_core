part of trust_wallet_core;

/// trust wallet core
class TWSolanaAddress extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_CLASS = _lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  /// Creates an address from a string representaion.
  Pointer<Int32> TWSolanaAddressCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWSolanaAddressCreateWithString(
      string,
    );
  }

  late final _TWSolanaAddressCreateWithString_ptr = _lookup<NativeFunction<_c_TWSolanaAddressCreateWithString>>('TWSolanaAddressCreateWithString');
  late final _dart_TWSolanaAddressCreateWithString _TWSolanaAddressCreateWithString = _TWSolanaAddressCreateWithString_ptr.asFunction<_dart_TWSolanaAddressCreateWithString>();

  int TWSolanaAddressDelete(
    Pointer<TWSolanaAddress> address,
  ) {
    return _TWSolanaAddressDelete(
      address,
    );
  }

  late final _TWSolanaAddressDelete_ptr = _lookup<NativeFunction<_c_TWSolanaAddressDelete>>('TWSolanaAddressDelete');
  late final _dart_TWSolanaAddressDelete _TWSolanaAddressDelete = _TWSolanaAddressDelete_ptr.asFunction<_dart_TWSolanaAddressDelete>();

  /// Derive default token address for token
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}

typedef _c_TWSolanaAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWSolanaAddressCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWSolanaAddressDelete = Int32 Function(
  Pointer<TWSolanaAddress> address,
);

typedef _dart_TWSolanaAddressDelete = int Function(
  Pointer<TWSolanaAddress> address,
);
