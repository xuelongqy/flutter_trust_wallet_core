part of trust_wallet_core;

/// trust wallet core
abstract class TWStoredKey  {

  /// Loads a key from a file.  Returned object needs to be deleted.
   static Pointer<Void> TWStoredKeyLoad(
    Pointer<Utf8> path,
  ) {
    return _TWStoredKeyLoad(
      path,
    );
  }

   static late final _TWStoredKeyLoad_ptr = _lookup<NativeFunction<_c_TWStoredKeyLoad>>('TWStoredKeyLoad');
   static late final _dart_TWStoredKeyLoad _TWStoredKeyLoad = _TWStoredKeyLoad_ptr.asFunction<_dart_TWStoredKeyLoad>();

  /// Imports a private key.  Returned object needs to be deleted.
   static Pointer<Void> TWStoredKeyImportPrivateKey(
    Pointer<Void> privateKey,
    Pointer<Utf8> name,
    Pointer<Void> password,
    int coin,
  ) {
    return _TWStoredKeyImportPrivateKey(
      privateKey,
      name,
      password,
      coin,
    );
  }

   static late final _TWStoredKeyImportPrivateKey_ptr = _lookup<NativeFunction<_c_TWStoredKeyImportPrivateKey>>('TWStoredKeyImportPrivateKey');
   static late final _dart_TWStoredKeyImportPrivateKey _TWStoredKeyImportPrivateKey = _TWStoredKeyImportPrivateKey_ptr.asFunction<_dart_TWStoredKeyImportPrivateKey>();

  /// Imports an HD wallet.  Returned object needs to be deleted.
   static Pointer<Void> TWStoredKeyImportHDWallet(
    Pointer<Utf8> mnemonic,
    Pointer<Utf8> name,
    Pointer<Void> password,
    int coin,
  ) {
    return _TWStoredKeyImportHDWallet(
      mnemonic,
      name,
      password,
      coin,
    );
  }

   static late final _TWStoredKeyImportHDWallet_ptr = _lookup<NativeFunction<_c_TWStoredKeyImportHDWallet>>('TWStoredKeyImportHDWallet');
   static late final _dart_TWStoredKeyImportHDWallet _TWStoredKeyImportHDWallet = _TWStoredKeyImportHDWallet_ptr.asFunction<_dart_TWStoredKeyImportHDWallet>();

  /// Imports a key from JSON.  Returned object needs to be deleted.
   static Pointer<Void> TWStoredKeyImportJSON(
    Pointer<Void> json,
  ) {
    return _TWStoredKeyImportJSON(
      json,
    );
  }

   static late final _TWStoredKeyImportJSON_ptr = _lookup<NativeFunction<_c_TWStoredKeyImportJSON>>('TWStoredKeyImportJSON');
   static late final _dart_TWStoredKeyImportJSON _TWStoredKeyImportJSON = _TWStoredKeyImportJSON_ptr.asFunction<_dart_TWStoredKeyImportJSON>();

  /// Creates a new key.  Returned object needs to be deleted.
   static Pointer<Void> TWStoredKeyCreate(
    Pointer<Utf8> name,
    Pointer<Void> password,
  ) {
    return _TWStoredKeyCreate(
      name,
      password,
    );
  }

   static late final _TWStoredKeyCreate_ptr = _lookup<NativeFunction<_c_TWStoredKeyCreate>>('TWStoredKeyCreate');
   static late final _dart_TWStoredKeyCreate _TWStoredKeyCreate = _TWStoredKeyCreate_ptr.asFunction<_dart_TWStoredKeyCreate>();

  void TWStoredKeyDelete(
    Pointer<Void> key,
  ) {
    return _TWStoredKeyDelete(
      key,
    );
  }

  late final _TWStoredKeyDelete_ptr = _lookup<NativeFunction<_c_TWStoredKeyDelete>>('TWStoredKeyDelete');
  late final _dart_TWStoredKeyDelete _TWStoredKeyDelete = _TWStoredKeyDelete_ptr.asFunction<_dart_TWStoredKeyDelete>();


   /// Stored key uniqie identifier.  Returned object needs to be deleted.
   Pointer<Utf8> TWStoredKeyIdentifier(
       Pointer<Void> key,
       ) {
     return _TWStoredKeyIdentifier(
       key,
     );
   }

   late final _TWStoredKeyIdentifier_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyIdentifier>>(
       'TWStoredKeyIdentifier');
   late final _dart_TWStoredKeyIdentifier _TWStoredKeyIdentifier =
   _TWStoredKeyIdentifier_ptr.asFunction<_dart_TWStoredKeyIdentifier>();

   /// Stored key namer.  Returned object needs to be deleted.
   Pointer<Utf8> TWStoredKeyName(
       Pointer<Void> key,
       ) {
     return _TWStoredKeyName(
       key,
     );
   }

   late final _TWStoredKeyName_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyName>>('TWStoredKeyName');
   late final _dart_TWStoredKeyName _TWStoredKeyName =
   _TWStoredKeyName_ptr.asFunction<_dart_TWStoredKeyName>();

   /// Whether this key is a mnemonic phrase for a HD wallet.
   int TWStoredKeyIsMnemonic(
       Pointer<Void> key,
       ) {
     return _TWStoredKeyIsMnemonic(
       key,
     );
   }

   late final _TWStoredKeyIsMnemonic_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyIsMnemonic>>(
       'TWStoredKeyIsMnemonic');
   late final _dart_TWStoredKeyIsMnemonic _TWStoredKeyIsMnemonic =
   _TWStoredKeyIsMnemonic_ptr.asFunction<_dart_TWStoredKeyIsMnemonic>();

   /// The number of accounts.
   int TWStoredKeyAccountCount(
       Pointer<Void> key,
       ) {
     return _TWStoredKeyAccountCount(
       key,
     );
   }

   late final _TWStoredKeyAccountCount_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyAccountCount>>(
       'TWStoredKeyAccountCount');
   late final _dart_TWStoredKeyAccountCount _TWStoredKeyAccountCount =
   _TWStoredKeyAccountCount_ptr.asFunction<_dart_TWStoredKeyAccountCount>();


   /// Returns the account at a given index.  Returned object needs to be deleted.
  Pointer<Void> TWStoredKeyAccount(
    Pointer<Void> key,
    int index,
  ) {
    return _TWStoredKeyAccount(
      key,
      index,
    );
  }

  late final _TWStoredKeyAccount_ptr = _lookup<NativeFunction<_c_TWStoredKeyAccount>>('TWStoredKeyAccount');
  late final _dart_TWStoredKeyAccount _TWStoredKeyAccount = _TWStoredKeyAccount_ptr.asFunction<_dart_TWStoredKeyAccount>();

  /// Returns the account for a specific coin, creating it if necessary.  Returned object needs to be deleted.
  Pointer<Void> TWStoredKeyAccountForCoin(
    Pointer<Void> key,
    int coin,
    Pointer<Void> wallet,
  ) {
    return _TWStoredKeyAccountForCoin(
      key,
      coin,
      wallet,
    );
  }

  late final _TWStoredKeyAccountForCoin_ptr = _lookup<NativeFunction<_c_TWStoredKeyAccountForCoin>>('TWStoredKeyAccountForCoin');
  late final _dart_TWStoredKeyAccountForCoin _TWStoredKeyAccountForCoin = _TWStoredKeyAccountForCoin_ptr.asFunction<_dart_TWStoredKeyAccountForCoin>();

  /// Remove the account for a specific coin
  void TWStoredKeyRemoveAccountForCoin(
    Pointer<Void> key,
    int coin,
  ) {
    return _TWStoredKeyRemoveAccountForCoin(
      key,
      coin,
    );
  }

  late final _TWStoredKeyRemoveAccountForCoin_ptr = _lookup<NativeFunction<_c_TWStoredKeyRemoveAccountForCoin>>('TWStoredKeyRemoveAccountForCoin');
  late final _dart_TWStoredKeyRemoveAccountForCoin _TWStoredKeyRemoveAccountForCoin = _TWStoredKeyRemoveAccountForCoin_ptr.asFunction<_dart_TWStoredKeyRemoveAccountForCoin>();

  /// Adds a new account.
  void TWStoredKeyAddAccount(
    Pointer<Void> key,
    Pointer<Utf8> address,
    int coin,
    Pointer<Utf8> derivationPath,
    Pointer<Utf8> extetndedPublicKey,
  ) {
    return _TWStoredKeyAddAccount(
      key,
      address,
      coin,
      derivationPath,
      extetndedPublicKey,
    );
  }

  late final _TWStoredKeyAddAccount_ptr = _lookup<NativeFunction<_c_TWStoredKeyAddAccount>>('TWStoredKeyAddAccount');
  late final _dart_TWStoredKeyAddAccount _TWStoredKeyAddAccount = _TWStoredKeyAddAccount_ptr.asFunction<_dart_TWStoredKeyAddAccount>();


   /// Saves the key to a file.
   int TWStoredKeyStore(
       Pointer<Void> key,
       Pointer<Utf8> path,
       ) {
     return _TWStoredKeyStore(
       key,
       path,
     );
   }

   late final _TWStoredKeyStore_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyStore>>('TWStoredKeyStore');
   late final _dart_TWStoredKeyStore _TWStoredKeyStore =
   _TWStoredKeyStore_ptr.asFunction<_dart_TWStoredKeyStore>();

   /// Decrypts the private key.
   Pointer<Void> TWStoredKeyDecryptPrivateKey(
       Pointer<Void> key,
       Pointer<Void> password,
       ) {
     return _TWStoredKeyDecryptPrivateKey(
       key,
       password,
     );
   }

   late final _TWStoredKeyDecryptPrivateKey_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyDecryptPrivateKey>>(
       'TWStoredKeyDecryptPrivateKey');
   late final _dart_TWStoredKeyDecryptPrivateKey _TWStoredKeyDecryptPrivateKey =
   _TWStoredKeyDecryptPrivateKey_ptr.asFunction<
       _dart_TWStoredKeyDecryptPrivateKey>();

   /// Decrypts the mnemonic phrase.
   Pointer<Utf8> TWStoredKeyDecryptMnemonic(
       Pointer<Void> key,
       Pointer<Void> password,
       ) {
     return _TWStoredKeyDecryptMnemonic(
       key,
       password,
     );
   }

   late final _TWStoredKeyDecryptMnemonic_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyDecryptMnemonic>>(
       'TWStoredKeyDecryptMnemonic');
   late final _dart_TWStoredKeyDecryptMnemonic _TWStoredKeyDecryptMnemonic =
   _TWStoredKeyDecryptMnemonic_ptr.asFunction<
       _dart_TWStoredKeyDecryptMnemonic>();


  Pointer<Void> TWStoredKeyPrivateKey(
    Pointer<Void> key,
    int coin,
    Pointer<Void> password,
  ) {
    return _TWStoredKeyPrivateKey(
      key,
      coin,
      password,
    );
  }

  late final _TWStoredKeyPrivateKey_ptr = _lookup<NativeFunction<_c_TWStoredKeyPrivateKey>>('TWStoredKeyPrivateKey');
  late final _dart_TWStoredKeyPrivateKey _TWStoredKeyPrivateKey = _TWStoredKeyPrivateKey_ptr.asFunction<_dart_TWStoredKeyPrivateKey>();

  Pointer<Void> TWStoredKeyWallet(
    Pointer<Void> key,
    Pointer<Void> password,
  ) {
    return _TWStoredKeyWallet(
      key,
      password,
    );
  }

  late final _TWStoredKeyWallet_ptr = _lookup<NativeFunction<_c_TWStoredKeyWallet>>('TWStoredKeyWallet');
  late final _dart_TWStoredKeyWallet _TWStoredKeyWallet = _TWStoredKeyWallet_ptr.asFunction<_dart_TWStoredKeyWallet>();

   /// Exports the key as JSON
   Pointer<Void> TWStoredKeyExportJSON(
       Pointer<Void> key,
       ) {
     return _TWStoredKeyExportJSON(
       key,
     );
   }

   late final _TWStoredKeyExportJSON_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyExportJSON>>(
       'TWStoredKeyExportJSON');
   late final _dart_TWStoredKeyExportJSON _TWStoredKeyExportJSON =
   _TWStoredKeyExportJSON_ptr.asFunction<_dart_TWStoredKeyExportJSON>();

   /// Fills in empty and invalid addresses.
   ///
   /// This method needs the encryption password to re-derive addresses from private keys.
   /// @returns `false` if the password is incorrect.
   int TWStoredKeyFixAddresses(
       Pointer<Void> key,
       Pointer<Void> password,
       ) {
     return _TWStoredKeyFixAddresses(
       key,
       password,
     );
   }

   late final _TWStoredKeyFixAddresses_ptr =
   _lookup<NativeFunction<_c_TWStoredKeyFixAddresses>>(
       'TWStoredKeyFixAddresses');
   late final _dart_TWStoredKeyFixAddresses _TWStoredKeyFixAddresses =
   _TWStoredKeyFixAddresses_ptr.asFunction<_dart_TWStoredKeyFixAddresses>();
}

typedef _c_TWStoredKeyLoad = Pointer<Void> Function(
  Pointer<Utf8> path,
);

typedef _dart_TWStoredKeyLoad = Pointer<Void> Function(
  Pointer<Utf8> path,
);

typedef _c_TWStoredKeyImportPrivateKey = Pointer<Void> Function(
  Pointer<Void> privateKey,
  Pointer<Utf8> name,
  Pointer<Void> password,
  Int32 coin,
);

typedef _dart_TWStoredKeyImportPrivateKey = Pointer<Void> Function(
  Pointer<Void> privateKey,
  Pointer<Utf8> name,
  Pointer<Void> password,
  int coin,
);

typedef _c_TWStoredKeyImportHDWallet = Pointer<Void> Function(
  Pointer<Utf8> mnemonic,
  Pointer<Utf8> name,
  Pointer<Void> password,
  Int32 coin,
);

typedef _dart_TWStoredKeyImportHDWallet = Pointer<Void> Function(
  Pointer<Utf8> mnemonic,
  Pointer<Utf8> name,
  Pointer<Void> password,
  int coin,
);

typedef _c_TWStoredKeyImportJSON = Pointer<Void> Function(
  Pointer<Void> json,
);

typedef _dart_TWStoredKeyImportJSON = Pointer<Void> Function(
  Pointer<Void> json,
);

typedef _c_TWStoredKeyCreate = Pointer<Void> Function(
  Pointer<Utf8> name,
  Pointer<Void> password,
);

typedef _dart_TWStoredKeyCreate = Pointer<Void> Function(
  Pointer<Utf8> name,
  Pointer<Void> password,
);

typedef _c_TWStoredKeyDelete = Void Function(
  Pointer<Void> key,
);

typedef _dart_TWStoredKeyDelete = void Function(
  Pointer<Void> key,
);

typedef _c_TWStoredKeyIdentifier = Pointer<Utf8> Function(
    Pointer<Void> key,
    );

typedef _dart_TWStoredKeyIdentifier = Pointer<Utf8> Function(
    Pointer<Void> key,
    );

typedef _c_TWStoredKeyName = Pointer<Utf8> Function(
    Pointer<Void> key,
    );

typedef _dart_TWStoredKeyName = Pointer<Utf8> Function(
    Pointer<Void> key,
    );

typedef _c_TWStoredKeyIsMnemonic = Int32 Function(
    Pointer<Void> key,
    );

typedef _dart_TWStoredKeyIsMnemonic = int Function(
    Pointer<Void> key,
    );

typedef _c_TWStoredKeyAccountCount = Int32 Function(
    Pointer<Void> key,
    );

typedef _dart_TWStoredKeyAccountCount = int Function(
    Pointer<Void> key,
    );

typedef _c_TWStoredKeyAccount = Pointer<Void> Function(
  Pointer<Void> key,
  Int32 index,
);

typedef _dart_TWStoredKeyAccount = Pointer<Void> Function(
  Pointer<Void> key,
  int index,
);

typedef _c_TWStoredKeyAccountForCoin = Pointer<Void> Function(
  Pointer<Void> key,
  Int32 coin,
  Pointer<Void> wallet,
);

typedef _dart_TWStoredKeyAccountForCoin = Pointer<Void> Function(
  Pointer<Void> key,
  int coin,
  Pointer<Void> wallet,
);

typedef _c_TWStoredKeyRemoveAccountForCoin = Void Function(
  Pointer<Void> key,
  Int32 coin,
);

typedef _dart_TWStoredKeyRemoveAccountForCoin = void Function(
  Pointer<Void> key,
  int coin,
);

typedef _c_TWStoredKeyAddAccount = Void Function(
  Pointer<Void> key,
  Pointer<Utf8> address,
  Int32 coin,
  Pointer<Utf8> derivationPath,
  Pointer<Utf8> extetndedPublicKey,
);

typedef _dart_TWStoredKeyAddAccount = void Function(
  Pointer<Void> key,
  Pointer<Utf8> address,
  int coin,
  Pointer<Utf8> derivationPath,
  Pointer<Utf8> extetndedPublicKey,
);

typedef _c_TWStoredKeyStore = Int32 Function(
    Pointer<Void> key,
    Pointer<Utf8> path,
    );

typedef _dart_TWStoredKeyStore = int Function(
    Pointer<Void> key,
    Pointer<Utf8> path,
    );

typedef _c_TWStoredKeyDecryptPrivateKey = Pointer<Void> Function(
    Pointer<Void> key,
    Pointer<Void> password,
    );

typedef _dart_TWStoredKeyDecryptPrivateKey = Pointer<Void> Function(
    Pointer<Void> key,
    Pointer<Void> password,
    );

typedef _c_TWStoredKeyDecryptMnemonic = Pointer<Utf8> Function(
    Pointer<Void> key,
    Pointer<Void> password,
    );

typedef _dart_TWStoredKeyDecryptMnemonic = Pointer<Utf8> Function(
    Pointer<Void> key,
    Pointer<Void> password,
    );

typedef _c_TWStoredKeyPrivateKey = Pointer<Void> Function(
  Pointer<Void> key,
  Int32 coin,
  Pointer<Void> password,
);

typedef _dart_TWStoredKeyPrivateKey = Pointer<Void> Function(
  Pointer<Void> key,
  int coin,
  Pointer<Void> password,
);

typedef _c_TWStoredKeyWallet = Pointer<Void> Function(
  Pointer<Void> key,
  Pointer<Void> password,
);

typedef _dart_TWStoredKeyWallet = Pointer<Void> Function(
  Pointer<Void> key,
  Pointer<Void> password,
);


typedef _c_TWStoredKeyExportJSON = Pointer<Void> Function(
    Pointer<Void> key,
    );

typedef _dart_TWStoredKeyExportJSON = Pointer<Void> Function(
    Pointer<Void> key,
    );

typedef _c_TWStoredKeyFixAddresses = Int32 Function(
    Pointer<Void> key,
    Pointer<Void> password,
    );

typedef _dart_TWStoredKeyFixAddresses = int Function(
    Pointer<Void> key,
    Pointer<Void> password,
    );