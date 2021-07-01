part of trust_wallet_core;

class TWMnemonic {
  static bool isValid(String mnemonic) {
    final int Function(Pointer<Utf8> bytes) func = walletCoreLib.lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>('TWMnemonicIsValid').asFunction();

    return func(mnemonic.toNativeUtf8()) != 0;
  }

  static bool isValidWord(String mnemonic) {
    final int Function(Pointer<Utf8> bytes) func = walletCoreLib.lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>('TWMnemonicIsValidWord').asFunction();

    return func(mnemonic.toNativeUtf8()) != 0;
  }

  static String suggest(String mnemonicPrefix) {
    final Pointer<Utf8> Function(Pointer<Utf8> bytes) func = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>('TWMnemonicSuggest').asFunction();


    return func(mnemonicPrefix.toNativeUtf8()).toDartString();
  }
}
