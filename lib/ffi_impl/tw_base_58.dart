part of trust_wallet_core;

/// trust wallet core
class TWBase58 extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_STRUCT = lookup<Int32>('TW_EXPORT_STRUCT');

  int get TW_EXPORT_STRUCT => _TW_EXPORT_STRUCT.value;

  set TW_EXPORT_STRUCT(int value) => _TW_EXPORT_STRUCT.value = value;

  /// Encodes data as a Base58 string, including the checksum.
  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  /// Decodes a Base58 string checking the checksum.
  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;
}
