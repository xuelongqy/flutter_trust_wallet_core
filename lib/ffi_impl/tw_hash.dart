part of trust_wallet_core;

/// trust wallet core
class TWHash extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_STRUCT = _lookup<Int32>('TW_EXPORT_STRUCT');

  int get TW_EXPORT_STRUCT => _TW_EXPORT_STRUCT.value;

  set TW_EXPORT_STRUCT(int value) => _TW_EXPORT_STRUCT.value = value;

  late final Pointer<Int32> _TWHashSHA1Length = _lookup<Int32>('TWHashSHA1Length');

  int get TWHashSHA1Length => _TWHashSHA1Length.value;

  set TWHashSHA1Length(int value) => _TWHashSHA1Length.value = value;

  late final Pointer<Int32> _TWHashSHA256Length = _lookup<Int32>('TWHashSHA256Length');

  int get TWHashSHA256Length => _TWHashSHA256Length.value;

  set TWHashSHA256Length(int value) => _TWHashSHA256Length.value = value;

  late final Pointer<Int32> _TWHashSHA512Length = _lookup<Int32>('TWHashSHA512Length');

  int get TWHashSHA512Length => _TWHashSHA512Length.value;

  set TWHashSHA512Length(int value) => _TWHashSHA512Length.value = value;

  late final Pointer<Int32> _TWHashRipemdLength = _lookup<Int32>('TWHashRipemdLength');

  int get TWHashRipemdLength => _TWHashRipemdLength.value;

  set TWHashRipemdLength(int value) => _TWHashRipemdLength.value = value;

  /// Computes the SHA1 of a block of data.
  late final Pointer<Int32> _TWData = _lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;
}
