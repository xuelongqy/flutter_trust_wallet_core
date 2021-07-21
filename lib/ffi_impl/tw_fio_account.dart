part of trust_wallet_core;

/// trust wallet core
class TWFIOAccount extends Opaque {
  /// Represents a FIO Account name
  late final Pointer<Int32> _TW_EXPORT_CLASS = _lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  Pointer<Int32> TWFIOAccountCreateWithString(
    Pointer<Int32> string,
  ) {
    return _TWFIOAccountCreateWithString(
      string,
    );
  }

  late final _TWFIOAccountCreateWithString_ptr = _lookup<NativeFunction<_c_TWFIOAccountCreateWithString>>('TWFIOAccountCreateWithString');
  late final _dart_TWFIOAccountCreateWithString _TWFIOAccountCreateWithString = _TWFIOAccountCreateWithString_ptr.asFunction<_dart_TWFIOAccountCreateWithString>();

  int TWFIOAccountDelete(
    Pointer<TWFIOAccount> account,
  ) {
    return _TWFIOAccountDelete(
      account,
    );
  }

  late final _TWFIOAccountDelete_ptr = _lookup<NativeFunction<_c_TWFIOAccountDelete>>('TWFIOAccountDelete');
  late final _dart_TWFIOAccountDelete _TWFIOAccountDelete = _TWFIOAccountDelete_ptr.asFunction<_dart_TWFIOAccountDelete>();

  /// Returns the short account string representation.
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}

typedef _c_TWFIOAccountCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _dart_TWFIOAccountCreateWithString = Pointer<Int32> Function(
  Pointer<Int32> string,
);

typedef _c_TWFIOAccountDelete = Int32 Function(
  Pointer<TWFIOAccount> account,
);

typedef _dart_TWFIOAccountDelete = int Function(
  Pointer<TWFIOAccount> account,
);
