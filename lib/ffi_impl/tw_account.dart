part of trust_wallet_core;

/// trust wallet core
class TWAccount extends Opaque {
  /// Account for a particular coin within a wallet.
  late final Pointer<Int32> _TW_EXPORT_CLASS = lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  Pointer<Int32> TWAccountCreate(
    Pointer<Int32> address,
    int coin,
    Pointer<Int32> derivationPath,
    Pointer<Int32> extendedPublicKey,
  ) {
    return _TWAccountCreate(
      address,
      coin,
      derivationPath,
      extendedPublicKey,
    );
  }

  late final _TWAccountCreate_ptr = lookup<NativeFunction<_c_TWAccountCreate>>('TWAccountCreate');
  late final _dart_TWAccountCreate _TWAccountCreate = _TWAccountCreate_ptr.asFunction<_dart_TWAccountCreate>();

  int TWAccountDelete(
    Pointer<TWAccount> account,
  ) {
    return _TWAccountDelete(
      account,
    );
  }

  late final _TWAccountDelete_ptr = lookup<NativeFunction<_c_TWAccountDelete>>('TWAccountDelete');
  late final _dart_TWAccountDelete _TWAccountDelete = _TWAccountDelete_ptr.asFunction<_dart_TWAccountDelete>();

  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  int TWAccountCoin(
    Pointer<TWAccount> account,
  ) {
    return _TWAccountCoin(
      account,
    );
  }

  late final _TWAccountCoin_ptr = lookup<NativeFunction<_c_TWAccountCoin>>('TWAccountCoin');
  late final _dart_TWAccountCoin _TWAccountCoin = _TWAccountCoin_ptr.asFunction<_dart_TWAccountCoin>();
}

typedef _c_TWAccountCreate = Pointer<Int32> Function(
  Pointer<Int32> address,
  Int32 coin,
  Pointer<Int32> derivationPath,
  Pointer<Int32> extendedPublicKey,
);

typedef _dart_TWAccountCreate = Pointer<Int32> Function(
  Pointer<Int32> address,
  int coin,
  Pointer<Int32> derivationPath,
  Pointer<Int32> extendedPublicKey,
);

typedef _c_TWAccountDelete = Int32 Function(
  Pointer<TWAccount> account,
);

typedef _dart_TWAccountDelete = int Function(
  Pointer<TWAccount> account,
);

typedef _c_TWAccountCoin = Int32 Function(
  Pointer<TWAccount> account,
);

typedef _dart_TWAccountCoin = int Function(
  Pointer<TWAccount> account,
);
