part of trust_wallet_core;

class TWMnemonic {
  static bool isValid(String mnemonic) {
    final _mnemonic = TWString.fromDartString(mnemonic);
    final int Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
            'TWMnemonicIsValid')
        .asFunction();
    final result = func(_mnemonic._twString) != 0;
    _mnemonic.delete();
    return result;
  }

  static bool isValidWord(String word) {
    TWString s = TWString.fromDartString(word);
    final int Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
            'TWMnemonicIsValidWord')
        .asFunction();

    final result = func(s._twString) != 0;
    s.delete();
    return result;
  }

  static String suggest(String mnemonicPrefix) {
    TWString s = TWString.fromDartString(mnemonicPrefix);
    final Pointer<Utf8> Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
            'TWMnemonicSuggest')
        .asFunction();
    final result =  TWString(func(s._twString));
    s.delete();
    return result._dartString;
  }
}
