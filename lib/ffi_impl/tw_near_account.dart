part of trust_wallet_core;

/// trust wallet core
class TWNEARAccount extends Opaque {
  /// Represents a NEAR Account name
  late final Pointer<Int32> _TW_EXPORT_CLASS = _lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  Pointer<Int32> TWNEARAccountCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWNEARAccountCreateWithString(
      string,
    );
  }

  late final _TWNEARAccountCreateWithString_ptr = _lookup<NativeFunction<_c_TWNEARAccountCreateWithString>>('TWNEARAccountCreateWithString');
  late final _dart_TWNEARAccountCreateWithString _TWNEARAccountCreateWithString = _TWNEARAccountCreateWithString_ptr.asFunction<_dart_TWNEARAccountCreateWithString>();

  int TWNEARAccountDelete(
    Pointer<TWNEARAccount> account,
  ) {
    return _TWNEARAccountDelete(
      account,
    );
  }

  late final _TWNEARAccountDelete_ptr = _lookup<NativeFunction<_c_TWNEARAccountDelete>>('TWNEARAccountDelete');
  late final _dart_TWNEARAccountDelete _TWNEARAccountDelete = _TWNEARAccountDelete_ptr.asFunction<_dart_TWNEARAccountDelete>();

  /// Returns the user friendly string representation.
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}

typedef _c_TWNEARAccountCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWNEARAccountCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWNEARAccountDelete = Int32 Function(
  Pointer<TWNEARAccount> account,
);

typedef _dart_TWNEARAccountDelete = int Function(
  Pointer<TWNEARAccount> account,
);
