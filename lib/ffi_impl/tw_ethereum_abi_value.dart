part of trust_wallet_core;

/// trust wallet core
class TWEthereumAbiValue extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_CLASS = _lookup<Int32>('TW_EXPORT_CLASS');

  int get TW_EXPORT_CLASS => _TW_EXPORT_CLASS.value;

  set TW_EXPORT_CLASS(int value) => _TW_EXPORT_CLASS.value = value;

  /// Returned data must be deleted (hint: use WRAPD() macro).
  /// Encode a type according to Ethereum ABI, into 32 bytes. Values are padded by 0 on the left, unless specified otherwise.
  late final Pointer<Int32> _TWData = _lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  /// Decodes input data (bytes longer than 32 will be truncated) as uint256
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}
