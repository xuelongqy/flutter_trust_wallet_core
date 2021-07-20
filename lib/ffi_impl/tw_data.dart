part of trust_wallet_core;

/// trust wallet core
class TWData extends Opaque {
  /// Creates a block of data from a byte array.
  Pointer<Void> TWDataCreateWithBytes(
    Pointer<Int32> bytes,
    int size,
  ) {
    return _TWDataCreateWithBytes(
      bytes,
      size,
    );
  }

  late final _TWDataCreateWithBytes_ptr = lookup<NativeFunction<_c_TWDataCreateWithBytes>>('TWDataCreateWithBytes');
  late final _dart_TWDataCreateWithBytes _TWDataCreateWithBytes = _TWDataCreateWithBytes_ptr.asFunction<_dart_TWDataCreateWithBytes>();

  /// Creates an uninitialized block of data with the provided size.
  Pointer<Void> TWDataCreateWithSize(
    int size,
  ) {
    return _TWDataCreateWithSize(
      size,
    );
  }

  late final _TWDataCreateWithSize_ptr = lookup<NativeFunction<_c_TWDataCreateWithSize>>('TWDataCreateWithSize');
  late final _dart_TWDataCreateWithSize _TWDataCreateWithSize = _TWDataCreateWithSize_ptr.asFunction<_dart_TWDataCreateWithSize>();

  /// Creates a block of data by copying another block of data.
  Pointer<Void> TWDataCreateWithData(
    Pointer<Void> data,
  ) {
    return _TWDataCreateWithData(
      data,
    );
  }

  late final _TWDataCreateWithData_ptr = lookup<NativeFunction<_c_TWDataCreateWithData>>('TWDataCreateWithData');
  late final _dart_TWDataCreateWithData _TWDataCreateWithData = _TWDataCreateWithData_ptr.asFunction<_dart_TWDataCreateWithData>();

  /// Creates a block of data from a hexadecimal string.  Odd length is invalid (intended grouping to bytes is not obvious).
  Pointer<Void> TWDataCreateWithHexString(
    Pointer<Int32> hex,
  ) {
    return _TWDataCreateWithHexString(
      hex,
    );
  }

  late final _TWDataCreateWithHexString_ptr = lookup<NativeFunction<_c_TWDataCreateWithHexString>>('TWDataCreateWithHexString');
  late final _dart_TWDataCreateWithHexString _TWDataCreateWithHexString = _TWDataCreateWithHexString_ptr.asFunction<_dart_TWDataCreateWithHexString>();

  /// Returns the size in bytes.
  int TWDataSize(
    Pointer<Void> data,
  ) {
    return _TWDataSize(
      data,
    );
  }

  late final _TWDataSize_ptr = lookup<NativeFunction<_c_TWDataSize>>('TWDataSize');
  late final _dart_TWDataSize _TWDataSize = _TWDataSize_ptr.asFunction<_dart_TWDataSize>();

  /// Returns the raw pointer to the contents of data.
  Pointer<Int32> TWDataBytes(
    Pointer<Void> data,
  ) {
    return _TWDataBytes(
      data,
    );
  }

  late final _TWDataBytes_ptr = lookup<NativeFunction<_c_TWDataBytes>>('TWDataBytes');
  late final _dart_TWDataBytes _TWDataBytes = _TWDataBytes_ptr.asFunction<_dart_TWDataBytes>();

  /// Returns the byte at the provided index.
  int TWDataGet(
    Pointer<Void> data,
    int index,
  ) {
    return _TWDataGet(
      data,
      index,
    );
  }

  late final _TWDataGet_ptr = lookup<NativeFunction<_c_TWDataGet>>('TWDataGet');
  late final _dart_TWDataGet _TWDataGet = _TWDataGet_ptr.asFunction<_dart_TWDataGet>();

  /// Sets the byte at the provided index.
  void TWDataSet(
    Pointer<Void> data,
    int index,
    int byte,
  ) {
    return _TWDataSet(
      data,
      index,
      byte,
    );
  }

  late final _TWDataSet_ptr = lookup<NativeFunction<_c_TWDataSet>>('TWDataSet');
  late final _dart_TWDataSet _TWDataSet = _TWDataSet_ptr.asFunction<_dart_TWDataSet>();

  /// Copies a range of bytes into the provided buffer.
  void TWDataCopyBytes(
    Pointer<Void> data,
    int start,
    int size,
    Pointer<Int32> output,
  ) {
    return _TWDataCopyBytes(
      data,
      start,
      size,
      output,
    );
  }

  late final _TWDataCopyBytes_ptr = lookup<NativeFunction<_c_TWDataCopyBytes>>('TWDataCopyBytes');
  late final _dart_TWDataCopyBytes _TWDataCopyBytes = _TWDataCopyBytes_ptr.asFunction<_dart_TWDataCopyBytes>();

  /// Replaces a range of bytes with the contents of the provided buffer.
  void TWDataReplaceBytes(
    Pointer<Void> data,
    int start,
    int size,
    Pointer<Int32> bytes,
  ) {
    return _TWDataReplaceBytes(
      data,
      start,
      size,
      bytes,
    );
  }

  late final _TWDataReplaceBytes_ptr = lookup<NativeFunction<_c_TWDataReplaceBytes>>('TWDataReplaceBytes');
  late final _dart_TWDataReplaceBytes _TWDataReplaceBytes = _TWDataReplaceBytes_ptr.asFunction<_dart_TWDataReplaceBytes>();

  /// Appends data from a byte array.
  void TWDataAppendBytes(
    Pointer<Void> data,
    Pointer<Int32> bytes,
    int size,
  ) {
    return _TWDataAppendBytes(
      data,
      bytes,
      size,
    );
  }

  late final _TWDataAppendBytes_ptr = lookup<NativeFunction<_c_TWDataAppendBytes>>('TWDataAppendBytes');
  late final _dart_TWDataAppendBytes _TWDataAppendBytes = _TWDataAppendBytes_ptr.asFunction<_dart_TWDataAppendBytes>();

  /// Appends a single byte.
  void TWDataAppendByte(
    Pointer<Void> data,
    int byte,
  ) {
    return _TWDataAppendByte(
      data,
      byte,
    );
  }

  late final _TWDataAppendByte_ptr = lookup<NativeFunction<_c_TWDataAppendByte>>('TWDataAppendByte');
  late final _dart_TWDataAppendByte _TWDataAppendByte = _TWDataAppendByte_ptr.asFunction<_dart_TWDataAppendByte>();

  /// Appends a block of data.
  void TWDataAppendData(
    Pointer<Void> data,
    Pointer<Void> append,
  ) {
    return _TWDataAppendData(
      data,
      append,
    );
  }

  late final _TWDataAppendData_ptr = lookup<NativeFunction<_c_TWDataAppendData>>('TWDataAppendData');
  late final _dart_TWDataAppendData _TWDataAppendData = _TWDataAppendData_ptr.asFunction<_dart_TWDataAppendData>();

  /// Revereses the bytes.
  void TWDataReverse(
    Pointer<Void> data,
  ) {
    return _TWDataReverse(
      data,
    );
  }

  late final _TWDataReverse_ptr = lookup<NativeFunction<_c_TWDataReverse>>('TWDataReverse');
  late final _dart_TWDataReverse _TWDataReverse = _TWDataReverse_ptr.asFunction<_dart_TWDataReverse>();

  /// Sets all bytes to the given value.
  void TWDataReset(
    Pointer<Void> data,
  ) {
    return _TWDataReset(
      data,
    );
  }

  late final _TWDataReset_ptr = lookup<NativeFunction<_c_TWDataReset>>('TWDataReset');
  late final _dart_TWDataReset _TWDataReset = _TWDataReset_ptr.asFunction<_dart_TWDataReset>();

  /// Deletes a block of data created with a `TWDataCreate*` method.
  void TWDataDelete(
    Pointer<Void> data,
  ) {
    return _TWDataDelete(
      data,
    );
  }

  late final _TWDataDelete_ptr = lookup<NativeFunction<_c_TWDataDelete>>('TWDataDelete');
  late final _dart_TWDataDelete _TWDataDelete = _TWDataDelete_ptr.asFunction<_dart_TWDataDelete>();

  /// Determines whether two data blocks are equal.
  int TWDataEqual(
    Pointer<Void> lhs,
    Pointer<Void> rhs,
  ) {
    return _TWDataEqual(
      lhs,
      rhs,
    );
  }

  late final _TWDataEqual_ptr = lookup<NativeFunction<_c_TWDataEqual>>('TWDataEqual');
  late final _dart_TWDataEqual _TWDataEqual = _TWDataEqual_ptr.asFunction<_dart_TWDataEqual>();
}

typedef _c_TWDataCreateWithBytes = Pointer<Void> Function(
  Pointer<Int32> bytes,
  Int32 size,
);

typedef _dart_TWDataCreateWithBytes = Pointer<Void> Function(
  Pointer<Int32> bytes,
  int size,
);

typedef _c_TWDataCreateWithSize = Pointer<Void> Function(
  Int32 size,
);

typedef _dart_TWDataCreateWithSize = Pointer<Void> Function(
  int size,
);

typedef _c_TWDataCreateWithData = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _dart_TWDataCreateWithData = Pointer<Void> Function(
  Pointer<Void> data,
);

typedef _c_TWDataCreateWithHexString = Pointer<Void> Function(
  Pointer<Int32> hex,
);

typedef _dart_TWDataCreateWithHexString = Pointer<Void> Function(
  Pointer<Int32> hex,
);

typedef _c_TWDataSize = Int32 Function(
  Pointer<Void> data,
);

typedef _dart_TWDataSize = int Function(
  Pointer<Void> data,
);

typedef _c_TWDataBytes = Pointer<Int32> Function(
  Pointer<Void> data,
);

typedef _dart_TWDataBytes = Pointer<Int32> Function(
  Pointer<Void> data,
);

typedef _c_TWDataGet = Int32 Function(
  Pointer<Void> data,
  Int32 index,
);

typedef _dart_TWDataGet = int Function(
  Pointer<Void> data,
  int index,
);

typedef _c_TWDataSet = Void Function(
  Pointer<Void> data,
  Int32 index,
  Int32 byte,
);

typedef _dart_TWDataSet = void Function(
  Pointer<Void> data,
  int index,
  int byte,
);

typedef _c_TWDataCopyBytes = Void Function(
  Pointer<Void> data,
  Int32 start,
  Int32 size,
  Pointer<Int32> output,
);

typedef _dart_TWDataCopyBytes = void Function(
  Pointer<Void> data,
  int start,
  int size,
  Pointer<Int32> output,
);

typedef _c_TWDataReplaceBytes = Void Function(
  Pointer<Void> data,
  Int32 start,
  Int32 size,
  Pointer<Int32> bytes,
);

typedef _dart_TWDataReplaceBytes = void Function(
  Pointer<Void> data,
  int start,
  int size,
  Pointer<Int32> bytes,
);

typedef _c_TWDataAppendBytes = Void Function(
  Pointer<Void> data,
  Pointer<Int32> bytes,
  Int32 size,
);

typedef _dart_TWDataAppendBytes = void Function(
  Pointer<Void> data,
  Pointer<Int32> bytes,
  int size,
);

typedef _c_TWDataAppendByte = Void Function(
  Pointer<Void> data,
  Int32 byte,
);

typedef _dart_TWDataAppendByte = void Function(
  Pointer<Void> data,
  int byte,
);

typedef _c_TWDataAppendData = Void Function(
  Pointer<Void> data,
  Pointer<Void> append,
);

typedef _dart_TWDataAppendData = void Function(
  Pointer<Void> data,
  Pointer<Void> append,
);

typedef _c_TWDataReverse = Void Function(
  Pointer<Void> data,
);

typedef _dart_TWDataReverse = void Function(
  Pointer<Void> data,
);

typedef _c_TWDataReset = Void Function(
  Pointer<Void> data,
);

typedef _dart_TWDataReset = void Function(
  Pointer<Void> data,
);

typedef _c_TWDataDelete = Void Function(
  Pointer<Void> data,
);

typedef _dart_TWDataDelete = void Function(
  Pointer<Void> data,
);

typedef _c_TWDataEqual = Int32 Function(
  Pointer<Void> lhs,
  Pointer<Void> rhs,
);

typedef _dart_TWDataEqual = int Function(
  Pointer<Void> lhs,
  Pointer<Void> rhs,
);