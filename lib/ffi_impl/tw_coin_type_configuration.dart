part of trust_wallet_core;

/// trust wallet core
class TWCoinTypeConfiguration extends Opaque {
  late final Pointer<Int32> _TW_EXPORT_STRUCT = _lookup<Int32>('TW_EXPORT_STRUCT');

  int get TW_EXPORT_STRUCT => _TW_EXPORT_STRUCT.value;

  set TW_EXPORT_STRUCT(int value) => _TW_EXPORT_STRUCT.value = value;

  /// Returns stock symbol of coin
  late final Pointer<Int32> _TWString = _lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;

  /// Returns max count decimal places for minimal coin unit
  int TWCoinTypeConfigurationGetDecimals(
    int type,
  ) {
    return _TWCoinTypeConfigurationGetDecimals(
      type,
    );
  }

  late final _TWCoinTypeConfigurationGetDecimals_ptr = _lookup<NativeFunction<_c_TWCoinTypeConfigurationGetDecimals>>('TWCoinTypeConfigurationGetDecimals');
  late final _dart_TWCoinTypeConfigurationGetDecimals _TWCoinTypeConfigurationGetDecimals =
      _TWCoinTypeConfigurationGetDecimals_ptr.asFunction<_dart_TWCoinTypeConfigurationGetDecimals>();
}

typedef _c_TWCoinTypeConfigurationGetDecimals = Int32 Function(
  Int32 type,
);

typedef _dart_TWCoinTypeConfigurationGetDecimals = int Function(
  int type,
);
