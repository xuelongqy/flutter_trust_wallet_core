part of trust_wallet_core;

/// trust wallet core
class TWAnySigner extends Opaque {
  /// Signs a transaction.
  Pointer<Int32> TWAnySignerSign(
    Pointer<Int32> input,
    int coin,
  ) {
    return _TWAnySignerSign(
      input,
      coin,
    );
  }

  late final _TWAnySignerSign_ptr = _lookup<NativeFunction<_c_TWAnySignerSign>>('TWAnySignerSign');
  late final _dart_TWAnySignerSign _TWAnySignerSign = _TWAnySignerSign_ptr.asFunction<_dart_TWAnySignerSign>();

  /// Signs a json transaction with private key.
  Pointer<Int32> TWAnySignerSignJSON(
    Pointer<Int32> json,
    Pointer<Int32> key,
    int coin,
  ) {
    return _TWAnySignerSignJSON(
      json,
      key,
      coin,
    );
  }

  late final _TWAnySignerSignJSON_ptr = _lookup<NativeFunction<_c_TWAnySignerSignJSON>>('TWAnySignerSignJSON');
  late final _dart_TWAnySignerSignJSON _TWAnySignerSignJSON = _TWAnySignerSignJSON_ptr.asFunction<_dart_TWAnySignerSignJSON>();

  int TWAnySignerSupportsJSON(
    int coin,
  ) {
    return _TWAnySignerSupportsJSON(
      coin,
    );
  }

  late final _TWAnySignerSupportsJSON_ptr = _lookup<NativeFunction<_c_TWAnySignerSupportsJSON>>('TWAnySignerSupportsJSON');
  late final _dart_TWAnySignerSupportsJSON _TWAnySignerSupportsJSON = _TWAnySignerSupportsJSON_ptr.asFunction<_dart_TWAnySignerSupportsJSON>();

  /// Plan a transaction (for UTXO chains).
  Pointer<Int32> TWAnySignerPlan(
    Pointer<Int32> input,
    int coin,
  ) {
    return _TWAnySignerPlan(
      input,
      coin,
    );
  }

  late final _TWAnySignerPlan_ptr = _lookup<NativeFunction<_c_TWAnySignerPlan>>('TWAnySignerPlan');
  late final _dart_TWAnySignerPlan _TWAnySignerPlan = _TWAnySignerPlan_ptr.asFunction<_dart_TWAnySignerPlan>();
}

typedef _c_TWAnySignerSign = Pointer<Int32> Function(
  Pointer<Int32> input,
  Int32 coin,
);

typedef _dart_TWAnySignerSign = Pointer<Int32> Function(
  Pointer<Int32> input,
  int coin,
);

typedef _c_TWAnySignerSignJSON = Pointer<Int32> Function(
  Pointer<Int32> json,
  Pointer<Int32> key,
  Int32 coin,
);

typedef _dart_TWAnySignerSignJSON = Pointer<Int32> Function(
  Pointer<Int32> json,
  Pointer<Int32> key,
  int coin,
);

typedef _c_TWAnySignerSupportsJSON = Int32 Function(
  Int32 coin,
);

typedef _dart_TWAnySignerSupportsJSON = int Function(
  int coin,
);

typedef _c_TWAnySignerPlan = Pointer<Int32> Function(
  Pointer<Int32> input,
  Int32 coin,
);

typedef _dart_TWAnySignerPlan = Pointer<Int32> Function(
  Pointer<Int32> input,
  int coin,
);
