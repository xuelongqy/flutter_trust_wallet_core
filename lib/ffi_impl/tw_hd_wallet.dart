part of trust_wallet_core;

/// trust wallet core
class TWHDWallet extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_CLASS = lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  /// Deprecated; use TWMnemonicIsValid().  Determines if a mnemonic phrase is valid.
  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Creates a new random HDWallet with the provided strength in bits.  Returned object needs to be deleted.
  Pointer<Int32> TWHDWalletCreate(
    int strength,
    Pointer<Int32> passphrase,
  ) {
    return _TWHDWalletCreate(
      strength,
      passphrase,
    );
  }

  late final _TWHDWalletCreate_ptr = lookup<NativeFunction<_c_TWHDWalletCreate>>('TWHDWalletCreate');
  late final _dart_TWHDWalletCreate _TWHDWalletCreate = _TWHDWalletCreate_ptr.asFunction<_dart_TWHDWalletCreate>();

  /// Creates an HDWallet from a mnemonic seed.  Returned object needs to be deleted.
  Pointer<Int32> TWHDWalletCreateWithMnemonic(
    Pointer<Int32> mnemonic,
    Pointer<Int32> passphrase,
  ) {
    return _TWHDWalletCreateWithMnemonic(
      mnemonic,
      passphrase,
    );
  }

  late final _TWHDWalletCreateWithMnemonic_ptr = lookup<NativeFunction<_c_TWHDWalletCreateWithMnemonic>>('TWHDWalletCreateWithMnemonic');
  late final _dart_TWHDWalletCreateWithMnemonic _TWHDWalletCreateWithMnemonic = _TWHDWalletCreateWithMnemonic_ptr.asFunction<_dart_TWHDWalletCreateWithMnemonic>();

  /// Creates an HDWallet from a seed.  Returned object needs to be deleted.
  Pointer<Int32> TWHDWalletCreateWithData(
    Pointer<Int32> data,
    Pointer<Int32> passphrase,
  ) {
    return _TWHDWalletCreateWithData(
      data,
      passphrase,
    );
  }

  late final _TWHDWalletCreateWithData_ptr = lookup<NativeFunction<_c_TWHDWalletCreateWithData>>('TWHDWalletCreateWithData');
  late final _dart_TWHDWalletCreateWithData _TWHDWalletCreateWithData = _TWHDWalletCreateWithData_ptr.asFunction<_dart_TWHDWalletCreateWithData>();

  /// Deletes a wallet.
  int TWHDWalletDelete(
    Pointer<TWHDWallet> wallet,
  ) {
    return _TWHDWalletDelete(
      wallet,
    );
  }

  late final _TWHDWalletDelete_ptr = lookup<NativeFunction<_c_TWHDWalletDelete>>('TWHDWalletDelete');
  late final _dart_TWHDWalletDelete _TWHDWalletDelete = _TWHDWalletDelete_ptr.asFunction<_dart_TWHDWalletDelete>();

  /// Wallet seed.
  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  Pointer<Int32> TWHDWalletGetMasterKey(
    Pointer<TWHDWallet> wallet,
    int curve,
  ) {
    return _TWHDWalletGetMasterKey(
      wallet,
      curve,
    );
  }

  late final _TWHDWalletGetMasterKey_ptr = lookup<NativeFunction<_c_TWHDWalletGetMasterKey>>('TWHDWalletGetMasterKey');
  late final _dart_TWHDWalletGetMasterKey _TWHDWalletGetMasterKey = _TWHDWalletGetMasterKey_ptr.asFunction<_dart_TWHDWalletGetMasterKey>();

  /// Generates the default private key for the specified coin.  Returned object needs to be deleted.
  Pointer<Int32> TWHDWalletGetKeyForCoin(
    Pointer<TWHDWallet> wallet,
    int coin,
  ) {
    return _TWHDWalletGetKeyForCoin(
      wallet,
      coin,
    );
  }

  late final _TWHDWalletGetKeyForCoin_ptr = lookup<NativeFunction<_c_TWHDWalletGetKeyForCoin>>('TWHDWalletGetKeyForCoin');
  late final _dart_TWHDWalletGetKeyForCoin _TWHDWalletGetKeyForCoin = _TWHDWalletGetKeyForCoin_ptr.asFunction<_dart_TWHDWalletGetKeyForCoin>();

  /// Generates the private key for the specified derivation path.  Returned object needs to be deleted.
  Pointer<Int32> TWHDWalletGetKey(
    Pointer<TWHDWallet> wallet,
    int coin,
    Pointer<Int32> derivationPath,
  ) {
    return _TWHDWalletGetKey(
      wallet,
      coin,
      derivationPath,
    );
  }

  late final _TWHDWalletGetKey_ptr = lookup<NativeFunction<_c_TWHDWalletGetKey>>('TWHDWalletGetKey');
  late final _dart_TWHDWalletGetKey _TWHDWalletGetKey = _TWHDWalletGetKey_ptr.asFunction<_dart_TWHDWalletGetKey>();

  /// Shortcut method to generate private key with the specified account/change/address (bip44 standard). Returned object needs to be deleted.
  ///
  /// @see https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki
  Pointer<Int32> TWHDWalletGetDerivedKey(
    Pointer<TWHDWallet> wallet,
    int coin,
    int account,
    int change,
    int address,
  ) {
    return _TWHDWalletGetDerivedKey(
      wallet,
      coin,
      account,
      change,
      address,
    );
  }

  late final _TWHDWalletGetDerivedKey_ptr = lookup<NativeFunction<_c_TWHDWalletGetDerivedKey>>('TWHDWalletGetDerivedKey');
  late final _dart_TWHDWalletGetDerivedKey _TWHDWalletGetDerivedKey = _TWHDWalletGetDerivedKey_ptr.asFunction<_dart_TWHDWalletGetDerivedKey>();

  Pointer<Int32> TWHDWalletGetPublicKeyFromExtended(
    Pointer<Int32> extended,
    int coin,
    Pointer<Int32> derivationPath,
  ) {
    return _TWHDWalletGetPublicKeyFromExtended(
      extended,
      coin,
      derivationPath,
    );
  }

  late final _TWHDWalletGetPublicKeyFromExtended_ptr = lookup<NativeFunction<_c_TWHDWalletGetPublicKeyFromExtended>>('TWHDWalletGetPublicKeyFromExtended');
  late final _dart_TWHDWalletGetPublicKeyFromExtended _TWHDWalletGetPublicKeyFromExtended =
      _TWHDWalletGetPublicKeyFromExtended_ptr.asFunction<_dart_TWHDWalletGetPublicKeyFromExtended>();
}

typedef _c_TWHDWalletCreate = Pointer<Int32> Function(
  Int32 strength,
  Pointer<Int32> passphrase,
);

typedef _dart_TWHDWalletCreate = Pointer<Int32> Function(
  int strength,
  Pointer<Int32> passphrase,
);

typedef _c_TWHDWalletCreateWithMnemonic = Pointer<Int32> Function(
  Pointer<Int32> mnemonic,
  Pointer<Int32> passphrase,
);

typedef _dart_TWHDWalletCreateWithMnemonic = Pointer<Int32> Function(
  Pointer<Int32> mnemonic,
  Pointer<Int32> passphrase,
);

typedef _c_TWHDWalletCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
  Pointer<Int32> passphrase,
);

typedef _dart_TWHDWalletCreateWithData = Pointer<Int32> Function(
  Pointer<Int32> data,
  Pointer<Int32> passphrase,
);

typedef _c_TWHDWalletDelete = Int32 Function(
  Pointer<TWHDWallet> wallet,
);

typedef _dart_TWHDWalletDelete = int Function(
  Pointer<TWHDWallet> wallet,
);

typedef _c_TWHDWalletGetMasterKey = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  Int32 curve,
);

typedef _dart_TWHDWalletGetMasterKey = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  int curve,
);

typedef _c_TWHDWalletGetKeyForCoin = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  Int32 coin,
);

typedef _dart_TWHDWalletGetKeyForCoin = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  int coin,
);

typedef _c_TWHDWalletGetKey = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  Int32 coin,
  Pointer<Int32> derivationPath,
);

typedef _dart_TWHDWalletGetKey = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  int coin,
  Pointer<Int32> derivationPath,
);

typedef _c_TWHDWalletGetDerivedKey = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  Int32 coin,
  Int32 account,
  Int32 change,
  Int32 address,
);

typedef _dart_TWHDWalletGetDerivedKey = Pointer<Int32> Function(
  Pointer<TWHDWallet> wallet,
  int coin,
  int account,
  int change,
  int address,
);

typedef _c_TWHDWalletGetPublicKeyFromExtended = Pointer<Int32> Function(
  Pointer<Int32> extended,
  Int32 coin,
  Pointer<Int32> derivationPath,
);

typedef _dart_TWHDWalletGetPublicKeyFromExtended = Pointer<Int32> Function(
  Pointer<Int32> extended,
  int coin,
  Pointer<Int32> derivationPath,
);
