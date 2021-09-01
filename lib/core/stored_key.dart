part of flutter_trust_wallet_core;

class StoredKey {
  static late Pointer<Void> _nativehandle;
  static StoredKey importHDWallet(String mnemonic, String name, Uint8List password, int coin) {
    _nativehandle = TWStoredKeyImpl.importHDWallet(mnemonic, name, password, coin);

    return StoredKey();
  }

  static StoredKey importPrivateKey(Uint8List privateKeyData, String name, Uint8List password, int coin) {
    _nativehandle = TWStoredKeyImpl.importPrivateKey(privateKeyData, name, password, coin);

    return StoredKey();
  }

  String exportJson() {
    final _data = TWStoredKeyImpl.exportJSON(_nativehandle);

    final bytes = TWData.TWDataBytes(_data).asTypedList(TWData.TWDataSize(_data));
    return String.fromCharCodes(bytes);
  }

  static StoredKey load(String path){
    _nativehandle = TWStoredKeyImpl.load(path);

    return StoredKey();
  }

  static StoredKey importJson(Uint8List json) {
    _nativehandle = TWStoredKeyImpl.importJson(json);

    return StoredKey();
  }

  String identifier() {
   return TWStoredKeyImpl.identifier(_nativehandle);
  }

  String name() {
    return TWStoredKeyImpl.name(_nativehandle);
  }

  bool isMnemonic() {
    return TWStoredKeyImpl.isMnemonic(_nativehandle);
  }

  int accountCount() {
    return TWStoredKeyImpl.accountCount(_nativehandle);
  }

  void delete(){
    TWStoredKeyImpl.delete(_nativehandle);
  }

 //Account
  Pointer<Void> account(int index) {

    return TWStoredKeyImpl.account(_nativehandle, index);
  }

  //Account
  Pointer<Void> accountForCoin(int coin,HDWallet hdWallet) {

    return TWStoredKeyImpl.accountForCoin(_nativehandle, coin,hdWallet._nativehandle);
  }

  void removeAccountForCoin(int coin) {
    TWStoredKeyImpl.removeAccountForCoin(_nativehandle, coin);
  }

  void addAccount(String address, int coin,String derivationPath, String extetndedPublicKey){
    TWStoredKeyImpl.addAccount(_nativehandle, address, coin, derivationPath, extetndedPublicKey);
  }

  bool store(String path) {
    return TWStoredKeyImpl.store(_nativehandle, path);
  }

  Uint8List decryptPrivateKey(Uint8List password) {

    return TWStoredKeyImpl.decryptPrivateKey(_nativehandle, password);
  }

  String decryptMnemonic(Uint8List password) {

    return TWStoredKeyImpl.decryptMnemonic(_nativehandle, password);
  }

  PrivateKey privateKey(int coin,Uint8List password) {
    final pointer = TWStoredKeyImpl.privateKey(_nativehandle, coin, password);

    return PrivateKey._(pointer);
  }

   HDWallet wallet(Uint8List password) {
    final pointer = TWStoredKeyImpl.wallet(_nativehandle, password);

    return HDWallet._(pointer);
  }

  bool fixAddresses(Uint8List password) {
    return TWStoredKeyImpl.fixAddresses(_nativehandle, password);
  }
}
