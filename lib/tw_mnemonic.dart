part of trust_wallet_core;

class TWMnemonic {
  static bool isValid(String mnemonic) {
    final _mnemonic = TWString().createWithUTF8Bytes(mnemonic);
    final int Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
            'TWMnemonicIsValid')
        .asFunction();
    final result = func(_mnemonic._pointer) != 0;
    _mnemonic.delete();
    return result;
  }

  static bool isValidWord(String word) {
    final _word = TWString().createWithUTF8Bytes(word);
    final int Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
            'TWMnemonicIsValidWord')
        .asFunction();
    final result = func(_word._pointer) != 0;
    _word.delete();
    return result;
  }

  static String suggest(String mnemonicPrefix) {
    final _mnemonicPrefix = TWString().createWithUTF8Bytes(mnemonicPrefix);
    final Pointer<Utf8> Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
            'TWMnemonicSuggest')
        .asFunction();
    final result =  TWString().utf8Bytes(func(_mnemonicPrefix._pointer));
    _mnemonicPrefix.delete();
    return result;
  }
}
