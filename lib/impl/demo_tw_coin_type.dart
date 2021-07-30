part of trust_wallet_core_ffi;

class DartTWCoinType {
  final int coinType;

  DartTWCoinType(this.coinType);

  static const int TWCoinTypeAeternity = 457;
  static const int TWCoinTypeAion = 425;
  static const int TWCoinTypeBinance = 714;
  static const int TWCoinTypeBitcoin = 0;
  static const int TWCoinTypeBitcoinCash = 145;
  static const int TWCoinTypeBitcoinGold = 156;
  static const int TWCoinTypeCallisto = 820;
  static const int TWCoinTypeCardano = 1815;
  static const int TWCoinTypeCosmos = 118;
  static const int TWCoinTypeDash = 5;
  static const int TWCoinTypeDecred = 42;
  static const int TWCoinTypeDigiByte = 20;
  static const int TWCoinTypeDogecoin = 3;
  static const int TWCoinTypeEOS = 194;
  static const int TWCoinTypeEthereum = 60;
  static const int TWCoinTypeEthereumClassic = 61;
  static const int TWCoinTypeFIO = 235;
  static const int TWCoinTypeGoChain = 6060;
  static const int TWCoinTypeGroestlcoin = 17;
  static const int TWCoinTypeICON = 74;
  static const int TWCoinTypeIoTeX = 304;
  static const int TWCoinTypeKava = 459;
  static const int TWCoinTypeKin = 2017;
  static const int TWCoinTypeLitecoin = 2;
  static const int TWCoinTypeMonacoin = 22;
  static const int TWCoinTypeNebulas = 2718;
  static const int TWCoinTypeNULS = 8964;
  static const int TWCoinTypeNano = 165;
  static const int TWCoinTypeNEAR = 397;
  static const int TWCoinTypeNimiq = 242;
  static const int TWCoinTypeOntology = 1024;
  static const int TWCoinTypePOANetwork = 178;
  static const int TWCoinTypeQtum = 2301;
  static const int TWCoinTypeXRP = 144;
  static const int TWCoinTypeSolana = 501;
  static const int TWCoinTypeStellar = 148;
  static const int TWCoinTypeTON = 396;
  static const int TWCoinTypeTezos = 1729;
  static const int TWCoinTypeTheta = 500;
  static const int TWCoinTypeThunderToken = 1001;
  static const int TWCoinTypeNEO = 888;
  static const int TWCoinTypeTomoChain = 889;
  static const int TWCoinTypeTron = 195;
  static const int TWCoinTypeVeChain = 818;
  static const int TWCoinTypeViacoin = 14;
  static const int TWCoinTypeWanchain = 5718350;
  static const int TWCoinTypeZcash = 133;
  static const int TWCoinTypeZcoin = 136;
  static const int TWCoinTypeZilliqa = 313;
  static const int TWCoinTypeZelcash = 19167;
  static const int TWCoinTypeRavencoin = 175;
  static const int TWCoinTypeWaves = 5741564;
  static const int TWCoinTypeTerra = 330;
  static const int TWCoinTypeHarmony = 1023;
  static const int TWCoinTypeAlgorand = 283;
  static const int TWCoinTypeKusama = 434;
  static const int TWCoinTypePolkadot = 354;
  static const int TWCoinTypeFilecoin = 461;
  static const int TWCoinTypeElrond = 508;
  static const int TWCoinTypeBandChain = 494;
  static const int TWCoinTypeSmartChainLegacy = 10000714;
  static const int TWCoinTypeSmartChain = 20000714;
  static const int TWCoinTypeOasis = 474;
  static const int TWCoinTypePolygon = 966;
  static const int TWCoinTypeTHORChain = 931;
  static const int TWCoinTypeBluzelle = 483;

  DartTWBlockchain blockchain(DartTWCoinType tWCoinType) {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWCoinTypeBlockchain')
        .asFunction();
    return DartTWBlockchain(func(tWCoinType.coinType));
  }

  DartTWPurpose purpose(DartTWCoinType tWCoinType) {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWCoinTypePurpose')
        .asFunction();
    return DartTWPurpose(func(tWCoinType.coinType));
  }

  DartTWCurve curve(DartTWCoinType tWCoinType) {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWCoinTypeCurve')
        .asFunction();
    return DartTWCurve(func(tWCoinType.coinType));
  }

  DartTWHDVersion xpubVersion(DartTWCoinType tWCoinType) {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWCoinTypeXpubVersion')
        .asFunction();
    return DartTWHDVersion(func(tWCoinType.coinType));
  }

  DartTWHDVersion xprvVersion(DartTWCoinType tWCoinType) {
    final int Function(int) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32)>>('TWCoinTypeXprvVersion')
        .asFunction();
    return DartTWHDVersion(func(tWCoinType.coinType));
  }

  bool validate(DartTWCoinType twCoinType, String address) {
    final _address = DartTWString.fromDartString(address);
    final int Function(int, Pointer<Utf8>) func = walletCoreLib
        .lookup<NativeFunction<Int32 Function(Int32, Pointer<Utf8>)>>(
            'TWCoinTypeValidate')
        .asFunction();
    final result = func(twCoinType.coinType, _address._twString) != 0;
    _address.delete();
    return result;
  }
}
