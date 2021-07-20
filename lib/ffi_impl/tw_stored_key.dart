part of trust_wallet_core;

/// trust wallet core
class TWStoredKey extends Opaque {
  /// Represents a key stored as an encrypted file.
  late final Pointer<Int32> _TW_EXPORT_CLASS = lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  /// Loads a key from a file.  Returned object needs to be deleted.
  Pointer<Int32> TWStoredKeyLoad(
    Pointer<Int32> path,
  ) {
    return _TWStoredKeyLoad(
      path,
    );
  }

  late final _TWStoredKeyLoad_ptr = lookup<NativeFunction<_c_TWStoredKeyLoad>>('TWStoredKeyLoad');
  late final _dart_TWStoredKeyLoad _TWStoredKeyLoad = _TWStoredKeyLoad_ptr.asFunction<_dart_TWStoredKeyLoad>();

  /// Imports a private key.  Returned object needs to be deleted.
  Pointer<Int32> TWStoredKeyImportPrivateKey(
    Pointer<Int32> privateKey,
    Pointer<Int32> name,
    Pointer<Int32> password,
    int coin,
  ) {
    return _TWStoredKeyImportPrivateKey(
      privateKey,
      name,
      password,
      coin,
    );
  }

  late final _TWStoredKeyImportPrivateKey_ptr = lookup<NativeFunction<_c_TWStoredKeyImportPrivateKey>>('TWStoredKeyImportPrivateKey');
  late final _dart_TWStoredKeyImportPrivateKey _TWStoredKeyImportPrivateKey = _TWStoredKeyImportPrivateKey_ptr.asFunction<_dart_TWStoredKeyImportPrivateKey>();

  /// Imports an HD wallet.  Returned object needs to be deleted.
  Pointer<Int32> TWStoredKeyImportHDWallet(
    Pointer<Int32> mnemonic,
    Pointer<Int32> name,
    Pointer<Int32> password,
    int coin,
  ) {
    return _TWStoredKeyImportHDWallet(
      mnemonic,
      name,
      password,
      coin,
    );
  }

  late final _TWStoredKeyImportHDWallet_ptr = lookup<NativeFunction<_c_TWStoredKeyImportHDWallet>>('TWStoredKeyImportHDWallet');
  late final _dart_TWStoredKeyImportHDWallet _TWStoredKeyImportHDWallet = _TWStoredKeyImportHDWallet_ptr.asFunction<_dart_TWStoredKeyImportHDWallet>();

  /// Imports a key from JSON.  Returned object needs to be deleted.
  Pointer<Int32> TWStoredKeyImportJSON(
    Pointer<Int32> json,
  ) {
    return _TWStoredKeyImportJSON(
      json,
    );
  }

  late final _TWStoredKeyImportJSON_ptr = lookup<NativeFunction<_c_TWStoredKeyImportJSON>>('TWStoredKeyImportJSON');
  late final _dart_TWStoredKeyImportJSON _TWStoredKeyImportJSON = _TWStoredKeyImportJSON_ptr.asFunction<_dart_TWStoredKeyImportJSON>();

  /// Creates a new key.  Returned object needs to be deleted.
  Pointer<Int32> TWStoredKeyCreate(
    Pointer<Int32> name,
    Pointer<Int32> password,
  ) {
    return _TWStoredKeyCreate(
      name,
      password,
    );
  }

  late final _TWStoredKeyCreate_ptr = lookup<NativeFunction<_c_TWStoredKeyCreate>>('TWStoredKeyCreate');
  late final _dart_TWStoredKeyCreate _TWStoredKeyCreate = _TWStoredKeyCreate_ptr.asFunction<_dart_TWStoredKeyCreate>();

  int TWStoredKeyDelete(
    Pointer<TWStoredKey> key,
  ) {
    return _TWStoredKeyDelete(
      key,
    );
  }

  late final _TWStoredKeyDelete_ptr = lookup<NativeFunction<_c_TWStoredKeyDelete>>('TWStoredKeyDelete');
  late final _dart_TWStoredKeyDelete _TWStoredKeyDelete = _TWStoredKeyDelete_ptr.asFunction<_dart_TWStoredKeyDelete>();

  /// Stored key uniqie identifier.  Returned object needs to be deleted.
  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  /// Whether this key is a mnemonic phrase for a HD wallet.
  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// The number of accounts.
  late final Pointer<Int32> _size_t = lookup<Int32>('size_t');

  int get size_t => _size_t.value;

  set size_t(int value) => _size_t.value = value;

  Pointer<Int32> TWStoredKeyAccount(
    Pointer<TWStoredKey> key,
    int index,
  ) {
    return _TWStoredKeyAccount(
      key,
      index,
    );
  }

  late final _TWStoredKeyAccount_ptr = lookup<NativeFunction<_c_TWStoredKeyAccount>>('TWStoredKeyAccount');
  late final _dart_TWStoredKeyAccount _TWStoredKeyAccount = _TWStoredKeyAccount_ptr.asFunction<_dart_TWStoredKeyAccount>();

  /// Returns the account for a specific coin, creating it if necessary.  Returned object needs to be deleted.
  Pointer<Int32> TWStoredKeyAccountForCoin(
    Pointer<TWStoredKey> key,
    int coin,
    Pointer<TWHDWallet> wallet,
  ) {
    return _TWStoredKeyAccountForCoin(
      key,
      coin,
      wallet,
    );
  }

  late final _TWStoredKeyAccountForCoin_ptr = lookup<NativeFunction<_c_TWStoredKeyAccountForCoin>>('TWStoredKeyAccountForCoin');
  late final _dart_TWStoredKeyAccountForCoin _TWStoredKeyAccountForCoin = _TWStoredKeyAccountForCoin_ptr.asFunction<_dart_TWStoredKeyAccountForCoin>();

  /// Remove the account for a specific coin
  int TWStoredKeyRemoveAccountForCoin(
    Pointer<TWStoredKey> key,
    int coin,
  ) {
    return _TWStoredKeyRemoveAccountForCoin(
      key,
      coin,
    );
  }

  late final _TWStoredKeyRemoveAccountForCoin_ptr = lookup<NativeFunction<_c_TWStoredKeyRemoveAccountForCoin>>('TWStoredKeyRemoveAccountForCoin');
  late final _dart_TWStoredKeyRemoveAccountForCoin _TWStoredKeyRemoveAccountForCoin = _TWStoredKeyRemoveAccountForCoin_ptr.asFunction<_dart_TWStoredKeyRemoveAccountForCoin>();

  /// Adds a new account.
  int TWStoredKeyAddAccount(
    Pointer<TWStoredKey> key,
    Pointer<Int32> address,
    int coin,
    Pointer<Int32> derivationPath,
    Pointer<Int32> extetndedPublicKey,
  ) {
    return _TWStoredKeyAddAccount(
      key,
      address,
      coin,
      derivationPath,
      extetndedPublicKey,
    );
  }

  late final _TWStoredKeyAddAccount_ptr = lookup<NativeFunction<_c_TWStoredKeyAddAccount>>('TWStoredKeyAddAccount');
  late final _dart_TWStoredKeyAddAccount _TWStoredKeyAddAccount = _TWStoredKeyAddAccount_ptr.asFunction<_dart_TWStoredKeyAddAccount>();

  /// Decrypts the private key.
  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  Pointer<Int32> TWStoredKeyPrivateKey(
    Pointer<TWStoredKey> key,
    int coin,
    Pointer<Int32> password,
  ) {
    return _TWStoredKeyPrivateKey(
      key,
      coin,
      password,
    );
  }

  late final _TWStoredKeyPrivateKey_ptr = lookup<NativeFunction<_c_TWStoredKeyPrivateKey>>('TWStoredKeyPrivateKey');
  late final _dart_TWStoredKeyPrivateKey _TWStoredKeyPrivateKey = _TWStoredKeyPrivateKey_ptr.asFunction<_dart_TWStoredKeyPrivateKey>();

  Pointer<Int32> TWStoredKeyWallet(
    Pointer<TWStoredKey> key,
    Pointer<Int32> password,
  ) {
    return _TWStoredKeyWallet(
      key,
      password,
    );
  }

  late final _TWStoredKeyWallet_ptr = lookup<NativeFunction<_c_TWStoredKeyWallet>>('TWStoredKeyWallet');
  late final _dart_TWStoredKeyWallet _TWStoredKeyWallet = _TWStoredKeyWallet_ptr.asFunction<_dart_TWStoredKeyWallet>();
}

typedef _c_TWStoredKeyLoad = Pointer<Int32> Function(
  Pointer<Int32> path,
);

typedef _dart_TWStoredKeyLoad = Pointer<Int32> Function(
  Pointer<Int32> path,
);

typedef _c_TWStoredKeyImportPrivateKey = Pointer<Int32> Function(
  Pointer<Int32> privateKey,
  Pointer<Int32> name,
  Pointer<Int32> password,
  Int32 coin,
);

typedef _dart_TWStoredKeyImportPrivateKey = Pointer<Int32> Function(
  Pointer<Int32> privateKey,
  Pointer<Int32> name,
  Pointer<Int32> password,
  int coin,
);

typedef _c_TWStoredKeyImportHDWallet = Pointer<Int32> Function(
  Pointer<Int32> mnemonic,
  Pointer<Int32> name,
  Pointer<Int32> password,
  Int32 coin,
);

typedef _dart_TWStoredKeyImportHDWallet = Pointer<Int32> Function(
  Pointer<Int32> mnemonic,
  Pointer<Int32> name,
  Pointer<Int32> password,
  int coin,
);

typedef _c_TWStoredKeyImportJSON = Pointer<Int32> Function(
  Pointer<Int32> json,
);

typedef _dart_TWStoredKeyImportJSON = Pointer<Int32> Function(
  Pointer<Int32> json,
);

typedef _c_TWStoredKeyCreate = Pointer<Int32> Function(
  Pointer<Int32> name,
  Pointer<Int32> password,
);

typedef _dart_TWStoredKeyCreate = Pointer<Int32> Function(
  Pointer<Int32> name,
  Pointer<Int32> password,
);

typedef _c_TWStoredKeyDelete = Int32 Function(
  Pointer<TWStoredKey> key,
);

typedef _dart_TWStoredKeyDelete = int Function(
  Pointer<TWStoredKey> key,
);

typedef _c_TWStoredKeyAccount = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  Int32 index,
);

typedef _dart_TWStoredKeyAccount = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  int index,
);

typedef _c_TWStoredKeyAccountForCoin = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  Int32 coin,
  Pointer<TWHDWallet> wallet,
);

typedef _dart_TWStoredKeyAccountForCoin = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  int coin,
  Pointer<TWHDWallet> wallet,
);

typedef _c_TWStoredKeyRemoveAccountForCoin = Int32 Function(
  Pointer<TWStoredKey> key,
  Int32 coin,
);

typedef _dart_TWStoredKeyRemoveAccountForCoin = int Function(
  Pointer<TWStoredKey> key,
  int coin,
);

typedef _c_TWStoredKeyAddAccount = Int32 Function(
  Pointer<TWStoredKey> key,
  Pointer<Int32> address,
  Int32 coin,
  Pointer<Int32> derivationPath,
  Pointer<Int32> extetndedPublicKey,
);

typedef _dart_TWStoredKeyAddAccount = int Function(
  Pointer<TWStoredKey> key,
  Pointer<Int32> address,
  int coin,
  Pointer<Int32> derivationPath,
  Pointer<Int32> extetndedPublicKey,
);

typedef _c_TWStoredKeyPrivateKey = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  Int32 coin,
  Pointer<Int32> password,
);

typedef _dart_TWStoredKeyPrivateKey = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  int coin,
  Pointer<Int32> password,
);

typedef _c_TWStoredKeyWallet = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  Pointer<Int32> password,
);

typedef _dart_TWStoredKeyWallet = Pointer<Int32> Function(
  Pointer<TWStoredKey> key,
  Pointer<Int32> password,
);
