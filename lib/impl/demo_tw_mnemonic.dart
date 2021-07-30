part of trust_wallet_core_ffi;

class DartTWMnemonic {
  static bool isValid(String mnemonic) {
    final _mnemonic = DartTWString.fromDartString(mnemonic);
    final int Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
            'TWMnemonicIsValid')
        .asFunction();
    final result = func(_mnemonic._twString) != 0;
    _mnemonic.delete();
    return result;
  }

  static bool isValidWord(String word) {
    DartTWString s = DartTWString.fromDartString(word);
    final int Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
            'TWMnemonicIsValidWord')
        .asFunction();

    final result = func(s._twString) != 0;
    s.delete();
    return result;
  }

  static String suggest(String mnemonicPrefix) {
    DartTWString s = DartTWString.fromDartString(mnemonicPrefix);
    final Pointer<Utf8> Function(Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>(
            'TWMnemonicSuggest')
        .asFunction();
    final result =  DartTWString(func(s._twString));
    s.delete();
    return result._dartString;
  }
}
