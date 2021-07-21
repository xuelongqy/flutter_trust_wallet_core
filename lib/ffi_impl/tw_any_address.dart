part of trust_wallet_core;


/// trust wallet core
class TWAnyAddress {
  /// Holds the symbol lookup function.
  final Pointer<T> Function<T extends NativeType>(String symbolName)
  lookup;

  /// The symbols are looked up in [dynamicLibrary].
  TWAnyAddress(DynamicLibrary dynamicLibrary)
      : lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  TWAnyAddress.fromLookup(
      Pointer<T> Function<T extends NativeType>(String symbolName)
      lookup)
      : lookup = lookup;

  /// Compares two addresses for equality.
  int TWAnyAddressEqual(
      Pointer<Void> lhs,
      Pointer<Void> rhs,
      ) {
    return _TWAnyAddressEqual(
      lhs,
      rhs,
    );
  }

  late final _TWAnyAddressEqual_ptr =
  lookup<NativeFunction<_c_TWAnyAddressEqual>>('TWAnyAddressEqual');
  late final _dart_TWAnyAddressEqual _TWAnyAddressEqual =
  _TWAnyAddressEqual_ptr.asFunction<_dart_TWAnyAddressEqual>();

  /// Determines if the string is a valid Any address.
  int TWAnyAddressIsValid(
      Pointer<Int32> string,
      int coin,
      ) {
    return _TWAnyAddressIsValid(
      string,
      coin,
    );
  }

  late final _TWAnyAddressIsValid_ptr =
  lookup<NativeFunction<_c_TWAnyAddressIsValid>>(
      'TWAnyAddressIsValid');
  late final _dart_TWAnyAddressIsValid _TWAnyAddressIsValid =
  _TWAnyAddressIsValid_ptr.asFunction<_dart_TWAnyAddressIsValid>();

  /// Creates an address from a string representaion.
  Pointer<Void> TWAnyAddressCreateWithString(
      Pointer<Int32> string,
      int coin,
      ) {
    return _TWAnyAddressCreateWithString(
      string,
      coin,
    );
  }

  late final _TWAnyAddressCreateWithString_ptr =
  lookup<NativeFunction<_c_TWAnyAddressCreateWithString>>(
      'TWAnyAddressCreateWithString');
  late final _dart_TWAnyAddressCreateWithString _TWAnyAddressCreateWithString =
  _TWAnyAddressCreateWithString_ptr.asFunction<
      _dart_TWAnyAddressCreateWithString>();

  /// Creates an address from a public key.
  Pointer<Void> TWAnyAddressCreateWithPublicKey(
      Pointer<TWPublicKey> publicKey,
      int coin,
      ) {
    return _TWAnyAddressCreateWithPublicKey(
      publicKey,
      coin,
    );
  }

  late final _TWAnyAddressCreateWithPublicKey_ptr =
  lookup<NativeFunction<_c_TWAnyAddressCreateWithPublicKey>>(
      'TWAnyAddressCreateWithPublicKey');
  late final _dart_TWAnyAddressCreateWithPublicKey
  _TWAnyAddressCreateWithPublicKey = _TWAnyAddressCreateWithPublicKey_ptr
      .asFunction<_dart_TWAnyAddressCreateWithPublicKey>();

  void TWAnyAddressDelete(
      Pointer<Void> address,
      ) {
    return _TWAnyAddressDelete(
      address,
    );
  }

  late final _TWAnyAddressDelete_ptr =
  lookup<NativeFunction<_c_TWAnyAddressDelete>>('TWAnyAddressDelete');
  late final _dart_TWAnyAddressDelete _TWAnyAddressDelete =
  _TWAnyAddressDelete_ptr.asFunction<_dart_TWAnyAddressDelete>();

  /// Returns the address string representation.
  Pointer<Int32> TWAnyAddressDescription(
      Pointer<Void> address,
      ) {
    return _TWAnyAddressDescription(
      address,
    );
  }

  late final _TWAnyAddressDescription_ptr =
  lookup<NativeFunction<_c_TWAnyAddressDescription>>(
      'TWAnyAddressDescription');
  late final _dart_TWAnyAddressDescription _TWAnyAddressDescription =
  _TWAnyAddressDescription_ptr.asFunction<_dart_TWAnyAddressDescription>();

  /// Returns coin type of address.
  int TWAnyAddressCoin(
      Pointer<Void> address,
      ) {
    return _TWAnyAddressCoin(
      address,
    );
  }

  late final _TWAnyAddressCoin_ptr =
  lookup<NativeFunction<_c_TWAnyAddressCoin>>('TWAnyAddressCoin');
  late final _dart_TWAnyAddressCoin _TWAnyAddressCoin =
  _TWAnyAddressCoin_ptr.asFunction<_dart_TWAnyAddressCoin>();

  /// Returns underlaying data (public key or key hash)
  Pointer<Int32> TWAnyAddressData(
      Pointer<Void> address,
      ) {
    return _TWAnyAddressData(
      address,
    );
  }

  late final _TWAnyAddressData_ptr =
  lookup<NativeFunction<_c_TWAnyAddressData>>('TWAnyAddressData');
  late final _dart_TWAnyAddressData _TWAnyAddressData =
  _TWAnyAddressData_ptr.asFunction<_dart_TWAnyAddressData>();
}


typedef _c_TWAnyAddressEqual = Int32 Function(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
    );

typedef _dart_TWAnyAddressEqual = int Function(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
    );

typedef _c_TWAnyAddressIsValid = Int32 Function(
    Pointer<Int32> string,
    Int32 coin,
    );

typedef _dart_TWAnyAddressIsValid = int Function(
    Pointer<Int32> string,
    int coin,
    );

typedef _c_TWAnyAddressCreateWithString = Pointer<Void> Function(
    Pointer<Int32> string,
    Int32 coin,
    );

typedef _dart_TWAnyAddressCreateWithString = Pointer<Void>
Function(
    Pointer<Int32> string,
    int coin,
    );

typedef _c_TWAnyAddressCreateWithPublicKey = Pointer<Void>
Function(
    Pointer<TWPublicKey> publicKey,
    Int32 coin,
    );

typedef _dart_TWAnyAddressCreateWithPublicKey = Pointer<Void>
Function(
    Pointer<TWPublicKey> publicKey,
    int coin,
    );

typedef _c_TWAnyAddressDelete = Void Function(
    Pointer<Void> address,
    );

typedef _dart_TWAnyAddressDelete = void Function(
    Pointer<Void> address,
    );

typedef _c_TWAnyAddressDescription = Pointer<Int32> Function(
    Pointer<Void> address,
    );

typedef _dart_TWAnyAddressDescription = Pointer<Int32> Function(
    Pointer<Void> address,
    );

typedef _c_TWAnyAddressCoin = Int32 Function(
    Pointer<Void> address,
    );

typedef _dart_TWAnyAddressCoin = int Function(
    Pointer<Void> address,
    );

typedef _c_TWAnyAddressData = Pointer<Int32> Function(
    Pointer<Void> address,
    );

typedef _dart_TWAnyAddressData = Pointer<Int32> Function(
    Pointer<Void> address,
    );
