part of trust_wallet_core;


class TWString{


  static Pointer<Utf8> createWithUTF8Bytes(String str){
    final Pointer<Utf8> Function(Pointer<Utf8> bytes) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>('TWStringCreateWithUTF8Bytes').asFunction();
    return func(str.toNativeUtf8());
  }


}