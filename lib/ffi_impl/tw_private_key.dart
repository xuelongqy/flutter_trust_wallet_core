part of trust_wallet_core;

/// trust wallet core
class TWPrivateKey extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_CLASS = lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  late final Pointer<Int32> _TWPrivateKeySize = lookup<Int32>('TWPrivateKeySize');

  int get TWPrivateKeySize => _TWPrivateKeySize.value;

  set TWPrivateKeySize(int value) => _TWPrivateKeySize.value = value;

  Pointer<Int32> TWPrivateKeyCreate() {
    return _TWPrivateKeyCreate();
  }

  late final _TWPrivateKeyCreate_ptr = lookup<NativeFunction<_c_TWPrivateKeyCreate>>('TWPrivateKeyCreate');
  late final _dart_TWPrivateKeyCreate _TWPrivateKeyCreate = _TWPrivateKeyCreate_ptr.asFunction<_dart_TWPrivateKeyCreate>();

  Pointer<Int32> TWPrivateKeyCreateWithData(
    Pointer<Int32> data,
  ) {
    return _TWPrivateKeyCreateWithData(
      data,
    );
  }

  late final _TWPrivateKeyCreateWithData_ptr = lookup<NativeFunction<_c_TWPrivateKeyCreateWithData>>('TWPrivateKeyCreateWithData');
  late final _dart_TWPrivateKeyCreateWithData _TWPrivateKeyCreateWithData = _TWPrivateKeyCreateWithData_ptr.asFunction<_dart_TWPrivateKeyCreateWithData>();

  Pointer<Int32> TWPrivateKeyCreateCopy(
    Pointer<TWPrivateKey> key,
  ) {
    return _TWPrivateKeyCreateCopy(
      key,
    );
  }

  late final _TWPrivateKeyCreateCopy_ptr = lookup<NativeFunction<_c_TWPrivateKeyCreateCopy>>('TWPrivateKeyCreateCopy');
  late final _dart_TWPrivateKeyCreateCopy _TWPrivateKeyCreateCopy = _TWPrivateKeyCreateCopy_ptr.asFunction<_dart_TWPrivateKeyCreateCopy>();

  int TWPrivateKeyDelete(
    Pointer<TWPrivateKey> pk,
  ) {
    return _TWPrivateKeyDelete(
      pk,
    );
  }

  late final _TWPrivateKeyDelete_ptr = lookup<NativeFunction<_c_TWPrivateKeyDelete>>('TWPrivateKeyDelete');
  late final _dart_TWPrivateKeyDelete _TWPrivateKeyDelete = _TWPrivateKeyDelete_ptr.asFunction<_dart_TWPrivateKeyDelete>();

  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  Pointer<Int32> TWPrivateKeyGetPublicKeySecp256k1(
    Pointer<TWPrivateKey> pk,
    int compressed,
  ) {
    return _TWPrivateKeyGetPublicKeySecp256k1(
      pk,
      compressed,
    );
  }

  late final _TWPrivateKeyGetPublicKeySecp256k1_ptr = lookup<NativeFunction<_c_TWPrivateKeyGetPublicKeySecp256k1>>('TWPrivateKeyGetPublicKeySecp256k1');
  late final _dart_TWPrivateKeyGetPublicKeySecp256k1 _TWPrivateKeyGetPublicKeySecp256k1 =
      _TWPrivateKeyGetPublicKeySecp256k1_ptr.asFunction<_dart_TWPrivateKeyGetPublicKeySecp256k1>();

  /// Returns the public key associated with this private key.
  Pointer<Int32> TWPrivateKeyGetPublicKeyNist256p1(
    Pointer<TWPrivateKey> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyNist256p1(
      pk,
    );
  }

  late final _TWPrivateKeyGetPublicKeyNist256p1_ptr = lookup<NativeFunction<_c_TWPrivateKeyGetPublicKeyNist256p1>>('TWPrivateKeyGetPublicKeyNist256p1');
  late final _dart_TWPrivateKeyGetPublicKeyNist256p1 _TWPrivateKeyGetPublicKeyNist256p1 =
      _TWPrivateKeyGetPublicKeyNist256p1_ptr.asFunction<_dart_TWPrivateKeyGetPublicKeyNist256p1>();

  /// Returns the public key associated with this private key.
  Pointer<Int32> TWPrivateKeyGetPublicKeyEd25519(
    Pointer<TWPrivateKey> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyEd25519(
      pk,
    );
  }

  late final _TWPrivateKeyGetPublicKeyEd25519_ptr = lookup<NativeFunction<_c_TWPrivateKeyGetPublicKeyEd25519>>('TWPrivateKeyGetPublicKeyEd25519');
  late final _dart_TWPrivateKeyGetPublicKeyEd25519 _TWPrivateKeyGetPublicKeyEd25519 = _TWPrivateKeyGetPublicKeyEd25519_ptr.asFunction<_dart_TWPrivateKeyGetPublicKeyEd25519>();

  /// Returns the public key associated with this private key.
  Pointer<Int32> TWPrivateKeyGetPublicKeyEd25519Blake2b(
    Pointer<TWPrivateKey> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyEd25519Blake2b(
      pk,
    );
  }

  late final _TWPrivateKeyGetPublicKeyEd25519Blake2b_ptr = lookup<NativeFunction<_c_TWPrivateKeyGetPublicKeyEd25519Blake2b>>('TWPrivateKeyGetPublicKeyEd25519Blake2b');
  late final _dart_TWPrivateKeyGetPublicKeyEd25519Blake2b _TWPrivateKeyGetPublicKeyEd25519Blake2b =
      _TWPrivateKeyGetPublicKeyEd25519Blake2b_ptr.asFunction<_dart_TWPrivateKeyGetPublicKeyEd25519Blake2b>();

  /// Returns the public key associated with this private key.
  Pointer<Int32> TWPrivateKeyGetPublicKeyEd25519Extended(
    Pointer<TWPrivateKey> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyEd25519Extended(
      pk,
    );
  }

  late final _TWPrivateKeyGetPublicKeyEd25519Extended_ptr = lookup<NativeFunction<_c_TWPrivateKeyGetPublicKeyEd25519Extended>>('TWPrivateKeyGetPublicKeyEd25519Extended');
  late final _dart_TWPrivateKeyGetPublicKeyEd25519Extended _TWPrivateKeyGetPublicKeyEd25519Extended =
      _TWPrivateKeyGetPublicKeyEd25519Extended_ptr.asFunction<_dart_TWPrivateKeyGetPublicKeyEd25519Extended>();

  /// Returns the public key associated with this private key.
  Pointer<Int32> TWPrivateKeyGetPublicKeyCurve25519(
    Pointer<TWPrivateKey> pk,
  ) {
    return _TWPrivateKeyGetPublicKeyCurve25519(
      pk,
    );
  }

  late final _TWPrivateKeyGetPublicKeyCurve25519_ptr = lookup<NativeFunction<_c_TWPrivateKeyGetPublicKeyCurve25519>>('TWPrivateKeyGetPublicKeyCurve25519');
  late final _dart_TWPrivateKeyGetPublicKeyCurve25519 _TWPrivateKeyGetPublicKeyCurve25519 =
      _TWPrivateKeyGetPublicKeyCurve25519_ptr.asFunction<_dart_TWPrivateKeyGetPublicKeyCurve25519>();
}

typedef _c_TWPrivateKeyCreate = Pointer<Int32> Function();

typedef _dart_TWPrivateKeyCreate = Pointer<Int32> Function();

typedef _c_TWPrivateKeyCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
);

typedef _dart_TWPrivateKeyCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
);

typedef _c_TWPrivateKeyCreateCopy = Pointer<Int32> Function(
  Pointer<TWPrivateKey> key,
);

typedef _dart_TWPrivateKeyCreateCopy = Pointer<Int32> Function(
  Pointer<TWPrivateKey> key,
);

typedef _c_TWPrivateKeyDelete = Int32 Function(
  Pointer<TWPrivateKey> pk,
);

typedef _dart_TWPrivateKeyDelete = int Function(
  Pointer<TWPrivateKey> pk,
);

typedef _c_TWPrivateKeyGetPublicKeySecp256k1 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
  Int32 compressed,
);

typedef _dart_TWPrivateKeyGetPublicKeySecp256k1 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
  int compressed,
);

typedef _c_TWPrivateKeyGetPublicKeyNist256p1 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyNist256p1 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _c_TWPrivateKeyGetPublicKeyEd25519 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyEd25519 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _c_TWPrivateKeyGetPublicKeyEd25519Blake2b = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyEd25519Blake2b = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _c_TWPrivateKeyGetPublicKeyEd25519Extended = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyEd25519Extended = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _c_TWPrivateKeyGetPublicKeyCurve25519 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);

typedef _dart_TWPrivateKeyGetPublicKeyCurve25519 = Pointer<Int32> Function(
  Pointer<TWPrivateKey> pk,
);
