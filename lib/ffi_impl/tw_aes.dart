part of trust_wallet_core;

/// trust wallet core
class TWAES extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_STRUCT = lookup<Int32>('TW_EXPORT_STRUCT');

  int get TW_EXPORT_STRUCT => _TW_EXPORT_STRUCT.value;

  set TW_EXPORT_STRUCT(int value) => _TW_EXPORT_STRUCT.value = value;

  /// Encrypts a block of data using AES in Cipher Block Chaining (CBC) mode.
  ///
  /// \param key encryption key, must be 16, 24, or 32 bytes long.
  /// \param data data to encrypt.
  /// \param iv initialization vector.
  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;
}
