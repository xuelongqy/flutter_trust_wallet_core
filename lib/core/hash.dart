part of flutter_trust_wallet_core;

class Hash {


  static Uint8List hashSHA256(Uint8List bytes){
    return TWHashImpl.hashSHA256(bytes);
  }


}