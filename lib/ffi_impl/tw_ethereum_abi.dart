part of trust_wallet_core;

/// trust wallet core
class TWEthereumAbi extends Opaque {
  /// Encode function to Eth ABI binary
  late final Pointer<Int32> _TWData = lookup<Int32>('TWData');

  int get TWData => _TWData.value;

  set TWData(int value) => _TWData.value = value;

  /// Decode function output from Eth ABI binary, fill output parameters
  late final Pointer<Int32> _bool = lookup<Int32>('bool');

  int get bool => _bool.value;

  set bool(int value) => _bool.value = value;

  /// Decode function call data to human readable json format, according to input abi json
  late final Pointer<Int32> _TWString = lookup<Int32>('TWString');

  int get TWString => _TWString.value;

  set TWString(int value) => _TWString.value = value;
}
