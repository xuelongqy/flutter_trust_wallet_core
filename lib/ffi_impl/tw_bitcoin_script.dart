part of trust_wallet_core;

/// trust wallet core
class TWBitcoinScript extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_CLASS = _lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  /// Creates an empty script.
  Pointer<Int32> TWBitcoinScriptCreate() {
    return _TWBitcoinScriptCreate();
  }

  late final _TWBitcoinScriptCreate_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptCreate>>('TWBitcoinScriptCreate');
  late final _dart_TWBitcoinScriptCreate _TWBitcoinScriptCreate = _TWBitcoinScriptCreate_ptr.asFunction<_dart_TWBitcoinScriptCreate>();

  /// Creates a script from a raw data representation.
  Pointer<Int32> TWBitcoinScriptCreateWithData(
    Pointer<Int32> data,
  ) {
    return _TWBitcoinScriptCreateWithData(
      data,
    );
  }

  late final _TWBitcoinScriptCreateWithData_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptCreateWithData>>('TWBitcoinScriptCreateWithData');
  late final _dart_TWBitcoinScriptCreateWithData _TWBitcoinScriptCreateWithData = _TWBitcoinScriptCreateWithData_ptr.asFunction<_dart_TWBitcoinScriptCreateWithData>();

  Pointer<TWBitcoinScript> TWBitcoinScriptCreateWithBytes(
    Pointer<Int32> bytes,
    int size,
  ) {
    return _TWBitcoinScriptCreateWithBytes(
      bytes,
      size,
    );
  }

  late final _TWBitcoinScriptCreateWithBytes_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptCreateWithBytes>>('TWBitcoinScriptCreateWithBytes');
  late final _dart_TWBitcoinScriptCreateWithBytes _TWBitcoinScriptCreateWithBytes = _TWBitcoinScriptCreateWithBytes_ptr.asFunction<_dart_TWBitcoinScriptCreateWithBytes>();

  /// Creates a script by copying an existring script.
  Pointer<Int32> TWBitcoinScriptCreateCopy(
    Pointer<TWBitcoinScript> script,
  ) {
    return _TWBitcoinScriptCreateCopy(
      script,
    );
  }

  late final _TWBitcoinScriptCreateCopy_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptCreateCopy>>('TWBitcoinScriptCreateCopy');
  late final _dart_TWBitcoinScriptCreateCopy _TWBitcoinScriptCreateCopy = _TWBitcoinScriptCreateCopy_ptr.asFunction<_dart_TWBitcoinScriptCreateCopy>();

  int TWBitcoinScriptDelete(
    Pointer<TWBitcoinScript> script,
  ) {
    return _TWBitcoinScriptDelete(
      script,
    );
  }

  late final _TWBitcoinScriptDelete_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptDelete>>('TWBitcoinScriptDelete');
  late final _dart_TWBitcoinScriptDelete _TWBitcoinScriptDelete = _TWBitcoinScriptDelete_ptr.asFunction<_dart_TWBitcoinScriptDelete>();

  late final Pointer<Int32> _size_t = _lookup<Int32>('size_t');

  int get size_t => _size_t.value;

  set size_t(int value) => _size_t.value = value;

  late final Pointer<Int32> _TWData = _lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  /// Determines whether this is a pay-to-script-hash (P2SH) script.
  late final Pointer<Int32> _bool = _lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Builds a standard 'pay to public key hash' script.
  Pointer<Int32> TWBitcoinScriptBuildPayToPublicKeyHash(
    Pointer<Int32> hash,
  ) {
    return _TWBitcoinScriptBuildPayToPublicKeyHash(
      hash,
    );
  }

  late final _TWBitcoinScriptBuildPayToPublicKeyHash_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptBuildPayToPublicKeyHash>>('TWBitcoinScriptBuildPayToPublicKeyHash');
  late final _dart_TWBitcoinScriptBuildPayToPublicKeyHash _TWBitcoinScriptBuildPayToPublicKeyHash =
      _TWBitcoinScriptBuildPayToPublicKeyHash_ptr.asFunction<_dart_TWBitcoinScriptBuildPayToPublicKeyHash>();

  /// Builds a standard 'pay to script hash' script.
  Pointer<Int32> TWBitcoinScriptBuildPayToScriptHash(
    Pointer<Int32> scriptHash,
  ) {
    return _TWBitcoinScriptBuildPayToScriptHash(
      scriptHash,
    );
  }

  late final _TWBitcoinScriptBuildPayToScriptHash_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptBuildPayToScriptHash>>('TWBitcoinScriptBuildPayToScriptHash');
  late final _dart_TWBitcoinScriptBuildPayToScriptHash _TWBitcoinScriptBuildPayToScriptHash =
      _TWBitcoinScriptBuildPayToScriptHash_ptr.asFunction<_dart_TWBitcoinScriptBuildPayToScriptHash>();

  /// Builds a pay-to-witness-public-key-hash (P2WPKH) script.
  Pointer<Int32> TWBitcoinScriptBuildPayToWitnessPubkeyHash(
    Pointer<Int32> hash,
  ) {
    return _TWBitcoinScriptBuildPayToWitnessPubkeyHash(
      hash,
    );
  }

  late final _TWBitcoinScriptBuildPayToWitnessPubkeyHash_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptBuildPayToWitnessPubkeyHash>>('TWBitcoinScriptBuildPayToWitnessPubkeyHash');
  late final _dart_TWBitcoinScriptBuildPayToWitnessPubkeyHash _TWBitcoinScriptBuildPayToWitnessPubkeyHash =
      _TWBitcoinScriptBuildPayToWitnessPubkeyHash_ptr.asFunction<_dart_TWBitcoinScriptBuildPayToWitnessPubkeyHash>();

  /// Builds a pay-to-witness-script-hash (P2WSH) script.
  Pointer<Int32> TWBitcoinScriptBuildPayToWitnessScriptHash(
    Pointer<Int32> scriptHash,
  ) {
    return _TWBitcoinScriptBuildPayToWitnessScriptHash(
      scriptHash,
    );
  }

  late final _TWBitcoinScriptBuildPayToWitnessScriptHash_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptBuildPayToWitnessScriptHash>>('TWBitcoinScriptBuildPayToWitnessScriptHash');
  late final _dart_TWBitcoinScriptBuildPayToWitnessScriptHash _TWBitcoinScriptBuildPayToWitnessScriptHash =
      _TWBitcoinScriptBuildPayToWitnessScriptHash_ptr.asFunction<_dart_TWBitcoinScriptBuildPayToWitnessScriptHash>();

  /// Builds a appropriate lock script for the given address.
  Pointer<Int32> TWBitcoinScriptLockScriptForAddress(
    Pointer<Int32> address,
    int coin,
  ) {
    return _TWBitcoinScriptLockScriptForAddress(
      address,
      coin,
    );
  }

  late final _TWBitcoinScriptLockScriptForAddress_ptr = _lookup<NativeFunction<_c_TWBitcoinScriptLockScriptForAddress>>('TWBitcoinScriptLockScriptForAddress');
  late final _dart_TWBitcoinScriptLockScriptForAddress _TWBitcoinScriptLockScriptForAddress =
      _TWBitcoinScriptLockScriptForAddress_ptr.asFunction<_dart_TWBitcoinScriptLockScriptForAddress>();

  late final Pointer<Int32> _uint32_t = _lookup<Int32>('uint32_t');

  int get uint32_t => _uint32_t.value;

  set uint32_t(int value) => _uint32_t.value = value;
}

typedef _c_TWBitcoinScriptCreate = Pointer<Int32> Function();

typedef _dart_TWBitcoinScriptCreate = Pointer<Int32> Function();

typedef _c_TWBitcoinScriptCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
);

typedef _dart_TWBitcoinScriptCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
);

typedef _c_TWBitcoinScriptCreateWithBytes = Pointer<TWBitcoinScript> Function(
  Pointer<Int32> bytes,
  Int32 size,
);

typedef _dart_TWBitcoinScriptCreateWithBytes = Pointer<TWBitcoinScript> Function(
  Pointer<Int32> bytes,
  int size,
);

typedef _c_TWBitcoinScriptCreateCopy = Pointer<Int32> Function(
  Pointer<TWBitcoinScript> script,
);

typedef _dart_TWBitcoinScriptCreateCopy = Pointer<Int32> Function(
  Pointer<TWBitcoinScript> script,
);

typedef _c_TWBitcoinScriptDelete = Int32 Function(
  Pointer<TWBitcoinScript> script,
);

typedef _dart_TWBitcoinScriptDelete = int Function(
  Pointer<TWBitcoinScript> script,
);

typedef _c_TWBitcoinScriptBuildPayToPublicKeyHash = Pointer<Int32> Function(
  Pointer<Int32> hash,
);

typedef _dart_TWBitcoinScriptBuildPayToPublicKeyHash = Pointer<Int32> Function(
  Pointer<Int32> hash,
);

typedef _c_TWBitcoinScriptBuildPayToScriptHash = Pointer<Int32> Function(
  Pointer<Int32> scriptHash,
);

typedef _dart_TWBitcoinScriptBuildPayToScriptHash = Pointer<Int32> Function(
  Pointer<Int32> scriptHash,
);

typedef _c_TWBitcoinScriptBuildPayToWitnessPubkeyHash = Pointer<Int32> Function(
  Pointer<Int32> hash,
);

typedef _dart_TWBitcoinScriptBuildPayToWitnessPubkeyHash = Pointer<Int32> Function(
  Pointer<Int32> hash,
);

typedef _c_TWBitcoinScriptBuildPayToWitnessScriptHash = Pointer<Int32> Function(
  Pointer<Int32> scriptHash,
);

typedef _dart_TWBitcoinScriptBuildPayToWitnessScriptHash = Pointer<Int32> Function(
  Pointer<Int32> scriptHash,
);

typedef _c_TWBitcoinScriptLockScriptForAddress = Pointer<Int32> Function(
  Pointer<Int32> address,
  Int32 coin,
);

typedef _dart_TWBitcoinScriptLockScriptForAddress = Pointer<Int32> Function(
  Pointer<Int32> address,
  int coin,
);
