part of trust_wallet_core;

/// trust wallet core
abstract class TWString extends Opaque {
  /// Creates a string from a null-terminated UTF8 byte array. It must be deleted at the end.
  Pointer<Utf8> TWStringCreateWithUTF8Bytes(
    Pointer<Utf8> bytes,
  ) {
    return _TWStringCreateWithUTF8Bytes(
      bytes,
    );
  }

  late final _TWStringCreateWithUTF8Bytes_ptr = lookup<NativeFunction<_c_TWStringCreateWithUTF8Bytes>>('TWStringCreateWithUTF8Bytes');
  late final _dart_TWStringCreateWithUTF8Bytes _TWStringCreateWithUTF8Bytes = _TWStringCreateWithUTF8Bytes_ptr.asFunction<_dart_TWStringCreateWithUTF8Bytes>();

  /// Creates a string from a raw byte array and size.
  Pointer<Utf8> TWStringCreateWithRawBytes(
    Pointer<Uint8> bytes,
    int size,
  ) {
    return _TWStringCreateWithRawBytes(
      bytes,
      size,
    );
  }

  late final _TWStringCreateWithRawBytes_ptr = lookup<NativeFunction<_c_TWStringCreateWithRawBytes>>('TWStringCreateWithRawBytes');
  late final _dart_TWStringCreateWithRawBytes _TWStringCreateWithRawBytes = _TWStringCreateWithRawBytes_ptr.asFunction<_dart_TWStringCreateWithRawBytes>();

  /// Creates a hexadecimal string from a block of data. It must be deleted at the end.
  Pointer<Utf8> TWStringCreateWithHexData(
    Pointer<Void> data,
  ) {
    return _TWStringCreateWithHexData(
      data,
    );
  }

  late final _TWStringCreateWithHexData_ptr = lookup<NativeFunction<_c_TWStringCreateWithHexData>>('TWStringCreateWithHexData');
  late final _dart_TWStringCreateWithHexData _TWStringCreateWithHexData = _TWStringCreateWithHexData_ptr.asFunction<_dart_TWStringCreateWithHexData>();

  /// Returns the string size in bytes.
  int TWStringSize(
    Pointer<Utf8> string,
  ) {
    return _TWStringSize(
      string,
    );
  }

  late final _TWStringSize_ptr = lookup<NativeFunction<_c_TWStringSize>>('TWStringSize');
  late final _dart_TWStringSize _TWStringSize = _TWStringSize_ptr.asFunction<_dart_TWStringSize>();

  /// Returns the byte at the provided index.
  int TWStringGet(
    Pointer<Utf8> string,
    int index,
  ) {
    return _TWStringGet(
      string,
      index,
    );
  }

  late final _TWStringGet_ptr = lookup<NativeFunction<_c_TWStringGet>>('TWStringGet');
  late final _dart_TWStringGet _TWStringGet = _TWStringGet_ptr.asFunction<_dart_TWStringGet>();

  /// Returns the raw pointer to the string's UTF8 bytes (null-terminated).
  Pointer<Utf8> TWStringUTF8Bytes(
    Pointer<Utf8> string,
  ) {
    return _TWStringUTF8Bytes(
      string,
    );
  }

  late final _TWStringUTF8Bytes_ptr = lookup<NativeFunction<_c_TWStringUTF8Bytes>>('TWStringUTF8Bytes');
  late final _dart_TWStringUTF8Bytes _TWStringUTF8Bytes = _TWStringUTF8Bytes_ptr.asFunction<_dart_TWStringUTF8Bytes>();

  /// Deletes a string created with a `TWStringCreate*` method.  After delete it must not be used (can segfault)!
  void TWStringDelete(
    Pointer<Utf8> string,
  ) {
    return _TWStringDelete(
      string,
    );
  }

  late final _TWStringDelete_ptr = lookup<NativeFunction<_c_TWStringDelete>>('TWStringDelete');
  late final _dart_TWStringDelete _TWStringDelete = _TWStringDelete_ptr.asFunction<_dart_TWStringDelete>();

  /// Determines whether two string blocks are equal.
  int TWStringEqual(
    Pointer<Utf8> lhs,
    Pointer<Utf8> rhs,
  ) {
    return _TWStringEqual(
      lhs,
      rhs,
    );
  }

  late final _TWStringEqual_ptr = lookup<NativeFunction<_c_TWStringEqual>>('TWStringEqual');
  late final _dart_TWStringEqual _TWStringEqual = _TWStringEqual_ptr.asFunction<_dart_TWStringEqual>();
}

typedef _c_TWStringCreateWithUTF8Bytes = Pointer<Utf8> Function(
  Pointer<Utf8> bytes,
);

typedef _dart_TWStringCreateWithUTF8Bytes = Pointer<Utf8> Function(
  Pointer<Utf8> bytes,
);

typedef _c_TWStringCreateWithRawBytes = Pointer<Utf8> Function(
  Pointer<Uint8> bytes,
  Int32 size,
);

typedef _dart_TWStringCreateWithRawBytes = Pointer<Utf8> Function(
  Pointer<Uint8> bytes,
  int size,
);

typedef _c_TWStringCreateWithHexData = Pointer<Utf8> Function(
  Pointer<Void> data,
);

typedef _dart_TWStringCreateWithHexData = Pointer<Utf8> Function(
  Pointer<Void> data,
);

typedef _c_TWStringSize = Int32 Function(
  Pointer<Utf8> string,
);

typedef _dart_TWStringSize = int Function(
  Pointer<Utf8> string,
);

typedef _c_TWStringGet = Int8 Function(
  Pointer<Utf8> string,
  Int32 index,
);

typedef _dart_TWStringGet = int Function(
  Pointer<Utf8> string,
  int index,
);

typedef _c_TWStringUTF8Bytes = Pointer<Utf8> Function(
  Pointer<Utf8> string,
);

typedef _dart_TWStringUTF8Bytes = Pointer<Utf8> Function(
  Pointer<Utf8> string,
);

typedef _c_TWStringDelete = Void Function(
  Pointer<Utf8> string,
);

typedef _dart_TWStringDelete = void Function(
  Pointer<Utf8> string,
);

typedef _c_TWStringEqual = Int32 Function(
  Pointer<Utf8> lhs,
  Pointer<Utf8> rhs,
);

typedef _dart_TWStringEqual = int Function(
  Pointer<Utf8> lhs,
  Pointer<Utf8> rhs,
);
