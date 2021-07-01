part of trust_wallet_core;

class TWHDWallet {
  @Deprecated("Deprecated; use TWMnemonicIsValid().  Determines if a mnemonic phrase is valid.")
  static bool isValid(String mnemonic) {
    final int Function(Pointer<Utf8> bytes) func = walletCoreLib.lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>('TWHDWalletIsValid').asFunction();

    return func(mnemonic.toNativeUtf8()) != 0;
  }
}
