part of trust_wallet_core;

/// trust wallet core
class TWMnemonic extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_CLASS = lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  /// Determines whether a mnemonic phrase is valid.
  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Return BIP39 English words that match the given prefix.  A single string is returned, with space-separated list of words.
  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}
