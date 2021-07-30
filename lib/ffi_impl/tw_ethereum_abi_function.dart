part of trust_wallet_core_ffi;

/// trust wallet core
abstract class TWEthereumAbiFunction {
  /// Creates a function object, with the given name and empty parameter list.  It must be deleted at the end.
  static Pointer<Void> TWEthereumAbiFunctionCreateWithString(
    Pointer<Utf8> name,
  ) {
    return _TWEthereumAbiFunctionCreateWithString(
      name,
    );
  }

  static late final _TWEthereumAbiFunctionCreateWithString_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionCreateWithString>>('TWEthereumAbiFunctionCreateWithString');
  static late final _dart_TWEthereumAbiFunctionCreateWithString _TWEthereumAbiFunctionCreateWithString =
      _TWEthereumAbiFunctionCreateWithString_ptr.asFunction<_dart_TWEthereumAbiFunctionCreateWithString>();

  /// Deletes a function object created with a 'TWEthereumAbiFunctionCreateWithString' method.
  void TWEthereumAbiFunctionDelete(
    Pointer<Void> fn,
  ) {
    return _TWEthereumAbiFunctionDelete(
      fn,
    );
  }

  late final _TWEthereumAbiFunctionDelete_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionDelete>>('TWEthereumAbiFunctionDelete');
  late final _dart_TWEthereumAbiFunctionDelete _TWEthereumAbiFunctionDelete = _TWEthereumAbiFunctionDelete_ptr.asFunction<_dart_TWEthereumAbiFunctionDelete>();

  /// Return the function type signature, of the form "baz(int32,uint256)"
  Pointer<Utf8> TWEthereumAbiFunctionGetType(
    Pointer<Void> fn,
  ) {
    return _TWEthereumAbiFunctionGetType(
      fn,
    );
  }

  late final _TWEthereumAbiFunctionGetType_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetType>>('TWEthereumAbiFunctionGetType');
  late final _dart_TWEthereumAbiFunctionGetType _TWEthereumAbiFunctionGetType = _TWEthereumAbiFunctionGetType_ptr.asFunction<_dart_TWEthereumAbiFunctionGetType>();

  /// Methods for adding parameters of the given type (input or output).
  /// For output parameters (isOutput=true) a value has to be specified, although usually not needd.
  /// Returns the index of the parameter (0-based).
  int TWEthereumAbiFunctionAddParamUInt8(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamUInt8(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamUInt8_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamUInt8>>('TWEthereumAbiFunctionAddParamUInt8');
  late final _dart_TWEthereumAbiFunctionAddParamUInt8 _TWEthereumAbiFunctionAddParamUInt8 =
      _TWEthereumAbiFunctionAddParamUInt8_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamUInt8>();

  int TWEthereumAbiFunctionAddParamUInt16(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamUInt16(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamUInt16_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamUInt16>>('TWEthereumAbiFunctionAddParamUInt16');
  late final _dart_TWEthereumAbiFunctionAddParamUInt16 _TWEthereumAbiFunctionAddParamUInt16 =
      _TWEthereumAbiFunctionAddParamUInt16_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamUInt16>();

  int TWEthereumAbiFunctionAddParamUInt32(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamUInt32(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamUInt32_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamUInt32>>('TWEthereumAbiFunctionAddParamUInt32');
  late final _dart_TWEthereumAbiFunctionAddParamUInt32 _TWEthereumAbiFunctionAddParamUInt32 =
      _TWEthereumAbiFunctionAddParamUInt32_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamUInt32>();

  int TWEthereumAbiFunctionAddParamUInt64(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamUInt64(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamUInt64_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamUInt64>>('TWEthereumAbiFunctionAddParamUInt64');
  late final _dart_TWEthereumAbiFunctionAddParamUInt64 _TWEthereumAbiFunctionAddParamUInt64 =
      _TWEthereumAbiFunctionAddParamUInt64_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamUInt64>();

  int TWEthereumAbiFunctionAddParamUInt256(
    Pointer<Void> fn,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamUInt256(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamUInt256_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamUInt256>>('TWEthereumAbiFunctionAddParamUInt256');
  late final _dart_TWEthereumAbiFunctionAddParamUInt256 _TWEthereumAbiFunctionAddParamUInt256 =
      _TWEthereumAbiFunctionAddParamUInt256_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamUInt256>();

  int TWEthereumAbiFunctionAddParamUIntN(
    Pointer<Void> fn,
    int bits,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamUIntN(
      fn,
      bits,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamUIntN_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamUIntN>>('TWEthereumAbiFunctionAddParamUIntN');
  late final _dart_TWEthereumAbiFunctionAddParamUIntN _TWEthereumAbiFunctionAddParamUIntN =
      _TWEthereumAbiFunctionAddParamUIntN_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamUIntN>();

  int TWEthereumAbiFunctionAddParamInt8(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamInt8(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamInt8_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamInt8>>('TWEthereumAbiFunctionAddParamInt8');
  late final _dart_TWEthereumAbiFunctionAddParamInt8 _TWEthereumAbiFunctionAddParamInt8 =
      _TWEthereumAbiFunctionAddParamInt8_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamInt8>();

  int TWEthereumAbiFunctionAddParamInt16(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamInt16(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamInt16_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamInt16>>('TWEthereumAbiFunctionAddParamInt16');
  late final _dart_TWEthereumAbiFunctionAddParamInt16 _TWEthereumAbiFunctionAddParamInt16 =
      _TWEthereumAbiFunctionAddParamInt16_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamInt16>();

  int TWEthereumAbiFunctionAddParamInt32(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamInt32(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamInt32_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamInt32>>('TWEthereumAbiFunctionAddParamInt32');
  late final _dart_TWEthereumAbiFunctionAddParamInt32 _TWEthereumAbiFunctionAddParamInt32 =
      _TWEthereumAbiFunctionAddParamInt32_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamInt32>();

  int TWEthereumAbiFunctionAddParamInt64(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamInt64(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamInt64_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamInt64>>('TWEthereumAbiFunctionAddParamInt64');
  late final _dart_TWEthereumAbiFunctionAddParamInt64 _TWEthereumAbiFunctionAddParamInt64 =
      _TWEthereumAbiFunctionAddParamInt64_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamInt64>();

  int TWEthereumAbiFunctionAddParamInt256(
    Pointer<Void> fn,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamInt256(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamInt256_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamInt256>>('TWEthereumAbiFunctionAddParamInt256');
  late final _dart_TWEthereumAbiFunctionAddParamInt256 _TWEthereumAbiFunctionAddParamInt256 =
      _TWEthereumAbiFunctionAddParamInt256_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamInt256>();

  int TWEthereumAbiFunctionAddParamIntN(
    Pointer<Void> fn,
    int bits,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamIntN(
      fn,
      bits,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamIntN_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamIntN>>('TWEthereumAbiFunctionAddParamIntN');
  late final _dart_TWEthereumAbiFunctionAddParamIntN _TWEthereumAbiFunctionAddParamIntN =
      _TWEthereumAbiFunctionAddParamIntN_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamIntN>();

  int TWEthereumAbiFunctionAddParamBool(
    Pointer<Void> fn,
    int val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamBool(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamBool_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamBool>>('TWEthereumAbiFunctionAddParamBool');
  late final _dart_TWEthereumAbiFunctionAddParamBool _TWEthereumAbiFunctionAddParamBool =
      _TWEthereumAbiFunctionAddParamBool_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamBool>();

  int TWEthereumAbiFunctionAddParamString(
    Pointer<Void> fn,
    Pointer<Utf8> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamString(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamString_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamString>>('TWEthereumAbiFunctionAddParamString');
  late final _dart_TWEthereumAbiFunctionAddParamString _TWEthereumAbiFunctionAddParamString =
      _TWEthereumAbiFunctionAddParamString_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamString>();

  int TWEthereumAbiFunctionAddParamAddress(
    Pointer<Void> fn,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamAddress(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamAddress_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamAddress>>('TWEthereumAbiFunctionAddParamAddress');
  late final _dart_TWEthereumAbiFunctionAddParamAddress _TWEthereumAbiFunctionAddParamAddress =
      _TWEthereumAbiFunctionAddParamAddress_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamAddress>();

  int TWEthereumAbiFunctionAddParamBytes(
    Pointer<Void> fn,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamBytes(
      fn,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamBytes_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamBytes>>('TWEthereumAbiFunctionAddParamBytes');
  late final _dart_TWEthereumAbiFunctionAddParamBytes _TWEthereumAbiFunctionAddParamBytes =
      _TWEthereumAbiFunctionAddParamBytes_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamBytes>();

  int TWEthereumAbiFunctionAddParamBytesFix(
    Pointer<Void> fn,
    int size,
    Pointer<Void> val,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamBytesFix(
      fn,
      size,
      val,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamBytesFix_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamBytesFix>>('TWEthereumAbiFunctionAddParamBytesFix');
  late final _dart_TWEthereumAbiFunctionAddParamBytesFix _TWEthereumAbiFunctionAddParamBytesFix =
      _TWEthereumAbiFunctionAddParamBytesFix_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamBytesFix>();

  int TWEthereumAbiFunctionAddParamArray(
    Pointer<Void> fn,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionAddParamArray(
      fn,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionAddParamArray_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddParamArray>>('TWEthereumAbiFunctionAddParamArray');
  late final _dart_TWEthereumAbiFunctionAddParamArray _TWEthereumAbiFunctionAddParamArray =
      _TWEthereumAbiFunctionAddParamArray_ptr.asFunction<_dart_TWEthereumAbiFunctionAddParamArray>();

  /// Methods for accessing the value of an output or input parameter, of different types.
  int TWEthereumAbiFunctionGetParamUInt8(
    Pointer<Void> fn,
    int idx,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionGetParamUInt8(
      fn,
      idx,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionGetParamUInt8_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetParamUInt8>>('TWEthereumAbiFunctionGetParamUInt8');
  late final _dart_TWEthereumAbiFunctionGetParamUInt8 _TWEthereumAbiFunctionGetParamUInt8 =
      _TWEthereumAbiFunctionGetParamUInt8_ptr.asFunction<_dart_TWEthereumAbiFunctionGetParamUInt8>();

  int TWEthereumAbiFunctionGetParamUInt64(
    Pointer<Void> fn,
    int idx,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionGetParamUInt64(
      fn,
      idx,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionGetParamUInt64_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetParamUInt64>>('TWEthereumAbiFunctionGetParamUInt64');
  late final _dart_TWEthereumAbiFunctionGetParamUInt64 _TWEthereumAbiFunctionGetParamUInt64 =
      _TWEthereumAbiFunctionGetParamUInt64_ptr.asFunction<_dart_TWEthereumAbiFunctionGetParamUInt64>();

  Pointer<Int32> TWEthereumAbiFunctionGetParamUInt256(
    Pointer<Void> fn,
    int idx,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionGetParamUInt256(
      fn,
      idx,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionGetParamUInt256_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetParamUInt256>>('TWEthereumAbiFunctionGetParamUInt256');
  late final _dart_TWEthereumAbiFunctionGetParamUInt256 _TWEthereumAbiFunctionGetParamUInt256 =
      _TWEthereumAbiFunctionGetParamUInt256_ptr.asFunction<_dart_TWEthereumAbiFunctionGetParamUInt256>();

  int TWEthereumAbiFunctionGetParamBool(
    Pointer<Void> fn,
    int idx,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionGetParamBool(
      fn,
      idx,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionGetParamBool_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetParamBool>>('TWEthereumAbiFunctionGetParamBool');
  late final _dart_TWEthereumAbiFunctionGetParamBool _TWEthereumAbiFunctionGetParamBool =
      _TWEthereumAbiFunctionGetParamBool_ptr.asFunction<_dart_TWEthereumAbiFunctionGetParamBool>();

  Pointer<Int32> TWEthereumAbiFunctionGetParamString(
    Pointer<Void> fn,
    int idx,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionGetParamString(
      fn,
      idx,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionGetParamString_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetParamString>>('TWEthereumAbiFunctionGetParamString');
  late final _dart_TWEthereumAbiFunctionGetParamString _TWEthereumAbiFunctionGetParamString =
      _TWEthereumAbiFunctionGetParamString_ptr.asFunction<_dart_TWEthereumAbiFunctionGetParamString>();

  Pointer<Int32> TWEthereumAbiFunctionGetParamAddress(
    Pointer<Void> fn,
    int idx,
    int isOutput,
  ) {
    return _TWEthereumAbiFunctionGetParamAddress(
      fn,
      idx,
      isOutput,
    );
  }

  late final _TWEthereumAbiFunctionGetParamAddress_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionGetParamAddress>>('TWEthereumAbiFunctionGetParamAddress');
  late final _dart_TWEthereumAbiFunctionGetParamAddress _TWEthereumAbiFunctionGetParamAddress =
      _TWEthereumAbiFunctionGetParamAddress_ptr.asFunction<_dart_TWEthereumAbiFunctionGetParamAddress>();

  /// Methods for adding a parameter of the given type to a top-level input parameter array.  Returns the index of the parameter (0-based).
  /// Note that nested ParamArrays are not possible through this API, could be done by using index paths like "1/0"
  int TWEthereumAbiFunctionAddInArrayParamUInt8(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamUInt8(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamUInt8_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamUInt8>>('TWEthereumAbiFunctionAddInArrayParamUInt8');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamUInt8 _TWEthereumAbiFunctionAddInArrayParamUInt8 =
      _TWEthereumAbiFunctionAddInArrayParamUInt8_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamUInt8>();

  int TWEthereumAbiFunctionAddInArrayParamUInt16(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamUInt16(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamUInt16_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamUInt16>>('TWEthereumAbiFunctionAddInArrayParamUInt16');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamUInt16 _TWEthereumAbiFunctionAddInArrayParamUInt16 =
      _TWEthereumAbiFunctionAddInArrayParamUInt16_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamUInt16>();

  int TWEthereumAbiFunctionAddInArrayParamUInt32(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamUInt32(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamUInt32_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamUInt32>>('TWEthereumAbiFunctionAddInArrayParamUInt32');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamUInt32 _TWEthereumAbiFunctionAddInArrayParamUInt32 =
      _TWEthereumAbiFunctionAddInArrayParamUInt32_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamUInt32>();

  int TWEthereumAbiFunctionAddInArrayParamUInt64(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamUInt64(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamUInt64_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamUInt64>>('TWEthereumAbiFunctionAddInArrayParamUInt64');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamUInt64 _TWEthereumAbiFunctionAddInArrayParamUInt64 =
      _TWEthereumAbiFunctionAddInArrayParamUInt64_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamUInt64>();

  int TWEthereumAbiFunctionAddInArrayParamUInt256(
    Pointer<Void> fn,
    int arrayIdx,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamUInt256(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamUInt256_ptr =
      _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamUInt256>>('TWEthereumAbiFunctionAddInArrayParamUInt256');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamUInt256 _TWEthereumAbiFunctionAddInArrayParamUInt256 =
      _TWEthereumAbiFunctionAddInArrayParamUInt256_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamUInt256>();

  int TWEthereumAbiFunctionAddInArrayParamUIntN(
    Pointer<Void> fn,
    int arrayIdx,
    int bits,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamUIntN(
      fn,
      arrayIdx,
      bits,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamUIntN_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamUIntN>>('TWEthereumAbiFunctionAddInArrayParamUIntN');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamUIntN _TWEthereumAbiFunctionAddInArrayParamUIntN =
      _TWEthereumAbiFunctionAddInArrayParamUIntN_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamUIntN>();

  int TWEthereumAbiFunctionAddInArrayParamInt8(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamInt8(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamInt8_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamInt8>>('TWEthereumAbiFunctionAddInArrayParamInt8');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamInt8 _TWEthereumAbiFunctionAddInArrayParamInt8 =
      _TWEthereumAbiFunctionAddInArrayParamInt8_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamInt8>();

  int TWEthereumAbiFunctionAddInArrayParamInt16(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamInt16(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamInt16_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamInt16>>('TWEthereumAbiFunctionAddInArrayParamInt16');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamInt16 _TWEthereumAbiFunctionAddInArrayParamInt16 =
      _TWEthereumAbiFunctionAddInArrayParamInt16_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamInt16>();

  int TWEthereumAbiFunctionAddInArrayParamInt32(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamInt32(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamInt32_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamInt32>>('TWEthereumAbiFunctionAddInArrayParamInt32');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamInt32 _TWEthereumAbiFunctionAddInArrayParamInt32 =
      _TWEthereumAbiFunctionAddInArrayParamInt32_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamInt32>();

  int TWEthereumAbiFunctionAddInArrayParamInt64(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamInt64(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamInt64_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamInt64>>('TWEthereumAbiFunctionAddInArrayParamInt64');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamInt64 _TWEthereumAbiFunctionAddInArrayParamInt64 =
      _TWEthereumAbiFunctionAddInArrayParamInt64_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamInt64>();

  int TWEthereumAbiFunctionAddInArrayParamInt256(
    Pointer<Void> fn,
    int arrayIdx,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamInt256(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamInt256_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamInt256>>('TWEthereumAbiFunctionAddInArrayParamInt256');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamInt256 _TWEthereumAbiFunctionAddInArrayParamInt256 =
      _TWEthereumAbiFunctionAddInArrayParamInt256_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamInt256>();

  int TWEthereumAbiFunctionAddInArrayParamIntN(
    Pointer<Void> fn,
    int arrayIdx,
    int bits,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamIntN(
      fn,
      arrayIdx,
      bits,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamIntN_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamIntN>>('TWEthereumAbiFunctionAddInArrayParamIntN');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamIntN _TWEthereumAbiFunctionAddInArrayParamIntN =
      _TWEthereumAbiFunctionAddInArrayParamIntN_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamIntN>();

  int TWEthereumAbiFunctionAddInArrayParamBool(
    Pointer<Void> fn,
    int arrayIdx,
    int val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamBool(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamBool_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamBool>>('TWEthereumAbiFunctionAddInArrayParamBool');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamBool _TWEthereumAbiFunctionAddInArrayParamBool =
      _TWEthereumAbiFunctionAddInArrayParamBool_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamBool>();

  int TWEthereumAbiFunctionAddInArrayParamString(
    Pointer<Void> fn,
    int arrayIdx,
    Pointer<Utf8> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamString(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamString_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamString>>('TWEthereumAbiFunctionAddInArrayParamString');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamString _TWEthereumAbiFunctionAddInArrayParamString =
      _TWEthereumAbiFunctionAddInArrayParamString_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamString>();

  int TWEthereumAbiFunctionAddInArrayParamAddress(
    Pointer<Void> fn,
    int arrayIdx,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamAddress(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamAddress_ptr =
      _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamAddress>>('TWEthereumAbiFunctionAddInArrayParamAddress');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamAddress _TWEthereumAbiFunctionAddInArrayParamAddress =
      _TWEthereumAbiFunctionAddInArrayParamAddress_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamAddress>();

  int TWEthereumAbiFunctionAddInArrayParamBytes(
    Pointer<Void> fn,
    int arrayIdx,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamBytes(
      fn,
      arrayIdx,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamBytes_ptr = _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamBytes>>('TWEthereumAbiFunctionAddInArrayParamBytes');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamBytes _TWEthereumAbiFunctionAddInArrayParamBytes =
      _TWEthereumAbiFunctionAddInArrayParamBytes_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamBytes>();

  int TWEthereumAbiFunctionAddInArrayParamBytesFix(
    Pointer<Void> fn,
    int arrayIdx,
    int size,
    Pointer<Void> val,
  ) {
    return _TWEthereumAbiFunctionAddInArrayParamBytesFix(
      fn,
      arrayIdx,
      size,
      val,
    );
  }

  late final _TWEthereumAbiFunctionAddInArrayParamBytesFix_ptr =
      _lookup<NativeFunction<_c_TWEthereumAbiFunctionAddInArrayParamBytesFix>>('TWEthereumAbiFunctionAddInArrayParamBytesFix');
  late final _dart_TWEthereumAbiFunctionAddInArrayParamBytesFix _TWEthereumAbiFunctionAddInArrayParamBytesFix =
      _TWEthereumAbiFunctionAddInArrayParamBytesFix_ptr.asFunction<_dart_TWEthereumAbiFunctionAddInArrayParamBytesFix>();
}

typedef _c_TWEthereumAbiFunctionCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> name,
);

typedef _dart_TWEthereumAbiFunctionCreateWithString = Pointer<Void> Function(
  Pointer<Utf8> name,
);

typedef _c_TWEthereumAbiFunctionDelete = Void Function(
  Pointer<Void> fn,
);

typedef _dart_TWEthereumAbiFunctionDelete = void Function(
  Pointer<Void> fn,
);

typedef _c_TWEthereumAbiFunctionGetType = Pointer<Utf8> Function(
  Pointer<Void> fn,
);

typedef _dart_TWEthereumAbiFunctionGetType = Pointer<Utf8> Function(
  Pointer<Void> fn,
);

typedef _c_TWEthereumAbiFunctionAddParamUInt8 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamUInt8 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamUInt16 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamUInt16 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamUInt32 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamUInt32 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamUInt64 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamUInt64 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamUInt256 = Int32 Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamUInt256 = int Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamUIntN = Int32 Function(
  Pointer<Void> fn,
  Int32 bits,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamUIntN = int Function(
  Pointer<Void> fn,
  int bits,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamInt8 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamInt8 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamInt16 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamInt16 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamInt32 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamInt32 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamInt64 = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamInt64 = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamInt256 = Int32 Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamInt256 = int Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamIntN = Int32 Function(
  Pointer<Void> fn,
  Int32 bits,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamIntN = int Function(
  Pointer<Void> fn,
  int bits,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamBool = Int32 Function(
  Pointer<Void> fn,
  Int32 val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamBool = int Function(
  Pointer<Void> fn,
  int val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamString = Int32 Function(
  Pointer<Void> fn,
  Pointer<Utf8> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamString = int Function(
  Pointer<Void> fn,
  Pointer<Utf8> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamAddress = Int32 Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamAddress = int Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamBytes = Int32 Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamBytes = int Function(
  Pointer<Void> fn,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamBytesFix = Int32 Function(
  Pointer<Void> fn,
  Int32 size,
  Pointer<Void> val,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamBytesFix = int Function(
  Pointer<Void> fn,
  int size,
  Pointer<Void> val,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddParamArray = Int32 Function(
  Pointer<Void> fn,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionAddParamArray = int Function(
  Pointer<Void> fn,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionGetParamUInt8 = Int32 Function(
  Pointer<Void> fn,
  Int32 idx,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionGetParamUInt8 = int Function(
  Pointer<Void> fn,
  int idx,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionGetParamUInt64 = Int32 Function(
  Pointer<Void> fn,
  Int32 idx,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionGetParamUInt64 = int Function(
  Pointer<Void> fn,
  int idx,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionGetParamUInt256 = Pointer<Int32> Function(
  Pointer<Void> fn,
  Int32 idx,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionGetParamUInt256 = Pointer<Int32> Function(
  Pointer<Void> fn,
  int idx,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionGetParamBool = Int32 Function(
  Pointer<Void> fn,
  Int32 idx,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionGetParamBool = int Function(
  Pointer<Void> fn,
  int idx,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionGetParamString = Pointer<Int32> Function(
  Pointer<Void> fn,
  Int32 idx,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionGetParamString = Pointer<Int32> Function(
  Pointer<Void> fn,
  int idx,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionGetParamAddress = Pointer<Int32> Function(
  Pointer<Void> fn,
  Int32 idx,
  Int32 isOutput,
);

typedef _dart_TWEthereumAbiFunctionGetParamAddress = Pointer<Int32> Function(
  Pointer<Void> fn,
  int idx,
  int isOutput,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamUInt8 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamUInt8 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamUInt16 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamUInt16 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamUInt32 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamUInt32 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamUInt64 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamUInt64 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamUInt256 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamUInt256 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  Pointer<Void> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamUIntN = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 bits,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamUIntN = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int bits,
  Pointer<Void> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamInt8 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamInt8 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamInt16 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamInt16 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamInt32 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamInt32 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamInt64 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamInt64 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamInt256 = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamInt256 = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  Pointer<Void> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamIntN = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 bits,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamIntN = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int bits,
  Pointer<Void> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamBool = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamBool = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamString = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Pointer<Utf8> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamString = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  Pointer<Utf8> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamAddress = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamAddress = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  Pointer<Void> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamBytes = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamBytes = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  Pointer<Void> val,
);

typedef _c_TWEthereumAbiFunctionAddInArrayParamBytesFix = Int32 Function(
  Pointer<Void> fn,
  Int32 arrayIdx,
  Int32 size,
  Pointer<Void> val,
);

typedef _dart_TWEthereumAbiFunctionAddInArrayParamBytesFix = int Function(
  Pointer<Void> fn,
  int arrayIdx,
  int size,
  Pointer<Void> val,
);
