part of flutter_trust_wallet_core;

class BitcoinScript {
  static late Pointer<Void> _pointer;

  BitcoinScript._(Pointer<Void> pointer) {
    _pointer = pointer;
  }

  BitcoinScript() {
    _pointer =  TWBitcoinScriptImpl.create();
    if (_pointer.hashCode == 0) throw Exception(["BitcoinScript nativehandle is null"]);
  }

  BitcoinScript.createWithData(Uint8List bytes) {
    _pointer =  TWBitcoinScriptImpl.createWithData(bytes);
    if (_pointer.hashCode == 0) throw Exception(["BitcoinScript nativehandle is null"]);
  }

  BitcoinScript.createWithScript(Pointer<Void> script) {
    _pointer =  TWBitcoinScriptImpl.createWithScript(script);
    if (_pointer.hashCode == 0) throw Exception(["BitcoinScript nativehandle is null"]);
  }

  static bool equal(Pointer<Void> lhs ,Pointer<Void> rhs) {
    return TWBitcoinScriptImpl.equal(lhs, rhs);
  }

  static Pointer<Void> buildPayToPublicKey(Uint8List bytes) {
    return TWBitcoinScriptImpl.buildPayToPublicKey(bytes);
  }

  static Pointer<Void> buildPayToPublicKeyHash(Uint8List bytes) {
    return TWBitcoinScriptImpl.buildPayToPublicKeyHash(bytes);
  }

  static Pointer<Void> buildPayToScriptHash(Uint8List bytes) {
    return TWBitcoinScriptImpl.buildPayToScriptHash(bytes);
  }

  static Pointer<Void> buildPayToWitnessPubkeyHash(Uint8List bytes) {
    return TWBitcoinScriptImpl.buildPayToWitnessPubkeyHash(bytes);
  }

  static Pointer<Void> buildPayToWitnessScriptHash(Uint8List bytes) {
    return TWBitcoinScriptImpl.buildPayToWitnessScriptHash(bytes);
  }

  static Pointer<Void> lockScriptForAddress(String string, int coin) {
    return TWBitcoinScriptImpl.lockScriptForAddress(string,coin);
  }

  static int hashTypeForCoin(int coin) {
    return TWBitcoinScriptImpl.hashTypeForCoin(coin);
  }

  int size() {
    return TWBitcoinScriptImpl.size(_pointer);
  }

  Uint8List data() {
    return TWBitcoinScriptImpl.data(_pointer);
  }

  Uint8List scriptHash() {
    return TWBitcoinScriptImpl.scriptHash(_pointer);
  }

  bool isPayToScriptHash() {
    return TWBitcoinScriptImpl.isPayToScriptHash(_pointer);
  }

  bool isPayToWitnessScriptHash() {
    return TWBitcoinScriptImpl.isPayToWitnessScriptHash(_pointer);
  }

   bool isPayToWitnessPublicKeyHash(Pointer<Void> script) {
    return TWBitcoinScriptImpl.isPayToWitnessPublicKeyHash(_pointer);
  }

   bool isWitnessProgram() {
    return TWBitcoinScriptImpl.isWitnessProgram(_pointer);
  }

   void delete(){
     TWBitcoinScriptImpl.delete(_pointer);
  }

  static Uint8List? matchPayToPubkey() {
    return TWBitcoinScriptImpl.matchPayToPubkey(_pointer);
  }

  static Uint8List? matchPayToPubkeyHash() {
    return TWBitcoinScriptImpl.matchPayToPubkeyHash(_pointer);
  }

  static Uint8List? matchPayToScriptHash() {
    return TWBitcoinScriptImpl.matchPayToScriptHash(_pointer);
  }

  static Uint8List? matchPayToWitnessPublicKeyHash() {
    return TWBitcoinScriptImpl.matchPayToWitnessPublicKeyHash(_pointer);
  }

  static Uint8List? matchPayToWitnessScriptHash() {
    return TWBitcoinScriptImpl.matchPayToWitnessScriptHash(_pointer);
  }

  static Uint8List encode() {
    return TWBitcoinScriptImpl.encode(_pointer);
  }

}