import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:flutter_trust_wallet_core/trust_wallet_core_ffi.dart';
import 'package:logger/logger.dart';
import 'package:flutter_trust_wallet_core/protobuf/bitcoin.pb.dart' as Bitcoin;
import 'package:fixnum/fixnum.dart' as $fixnum;

List<String> logs = [];

void main() {
  runApp(MyApp());
}

class MyConsoleOutput extends LogOutput {
  final Function(String) myPrint;

  MyConsoleOutput(this.myPrint);

  @override
  void output(OutputEvent event) {
    event.lines.forEach(myPrint);
  }
}

class MylogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

void showLog(String log) {
  logs.add(log);
}

class _MyAppState extends State<MyApp> {
  var logger = Logger(
    output: MyConsoleOutput(showLog),
    filter: MylogFilter(),
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 0,
      lineLength: 30,
      printEmojis: true,
      printTime: false,
    ),
  );

  @override
  void initState() {
    FlutterTrustWalletCore.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('wallet core example app'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        logs[index],
                        style: TextStyle(fontSize: 12),
                      );
                    },
                    itemCount: logs.length),
              ),
              ElevatedButton(
                  onPressed: () async {
                    logs.clear();
                    TWStellarMemoType.TWStellarMemoTypeHash;
                    HDWallet wallet = HDWallet();
                    logger.d("address ${wallet.getAddressForCoin(60)}");
                    logger.d("mnemonic = ${wallet.mnemonic()}");
                    print(wallet.mnemonic());
                    String privateKeyhex = hex.encode(wallet.getKeyForCoin(60).data());
                    // String privateKey0 = hex.encode(wallet.getDerivedKey(60,0,0,0).data());
                    // String privateKey1 = hex.encode(wallet.getDerivedKey(60,0,0,1).data());
                    logger.d("privateKeyhex = $privateKeyhex");
                    // logger.d("privateKeyhex0 = $privateKey0");
                    // logger.d("privateKeyhex1 = $privateKey1");
                    logger.d("seed = ${hex.encode(wallet.seed())}");
                    final a = StoredKey.importPrivateKey(wallet.getKeyForCoin(60).data(), "", Uint8List.fromList("123aaa".codeUnits), 60);
                    logger.d("keystore a = ${a.exportJson()}");

                    final publicKey = wallet.getKeyForCoin(60).getPublicKeySecp256k1(false);
                    final anyAddress = AnyAddress.createWithPublicKey(publicKey, 60);

                    // logger.d("1 = ${AnyAddress.isValid("0xfaC5482fffe86d33c3b8ADB24F839F5e60aF99d4", DartTWCoinType.TWCoinTypeEthereum)}");
                    // logger.d("2 = ${AnyAddress.isValid("0xfaC5482fffe86d33c3b8ADB24F839F5e60af99d4", DartTWCoinType.TWCoinTypeEthereum)}");
                    // logger.d("3 = ${AnyAddress.isValid("faC5482fffe86d33c3b8ADB24F839F5e60af99d4", DartTWCoinType.TWCoinTypeEthereum)}");
                    final privakye = wallet.getKey(60, "m/49'/60'/0'/0/0");
                    final publicKey1 = privakye.getPublicKeySecp256k1(true);
                    final address = AnyAddress.createWithPublicKey(publicKey1, 0);

                    logger.d("keystore a = ${address.description()}");

                    // btc testnet
                    final privakye2 = wallet.getKey(0, "m/44'/1'/0'/0/0");
                    logger.d(hex.encode(privakye2.data()));
                    final publicKey2 = privakye2.getPublicKeySecp256k1(true);
                    final bitcoinAddress = BitcoinAddress.createWithPublicKey(publicKey2, 111);
                    logger.d(bitcoinAddress.description());
                    final segwitAddress = SegwitAddress.createWithPublicKey(2, publicKey2);
                    logger.d(segwitAddress.description());
                    final address2 = AnyAddress.createWithPublicKey(publicKey2, 1);
                    logger.d("keystore a = ${address2.description()}");

                    final pubKeyHash = Hash.hashSHA256RIPEMD(publicKey2.data());
                    final bitcoinScript = BitcoinScript.buildPayToWitnessPubkeyHash(pubKeyHash);
                    final scriptHash = Hash.hashSHA256RIPEMD(bitcoinScript.data());
                    final data = Uint8List.fromList([196]..addAll(scriptHash.toList()));
                    final bitcoinAddress2 = BitcoinAddress.createWithData(data);
                    logger.d(bitcoinAddress2.description());

                    // Transaction
                    int coin = 1;
                    final addressBtc = wallet.getAddressForCoin(coin);
                    final toAddress = "tb1qks8l9haxjszn9r6yf2dm65ed3w6wmz85r379ms";
                    final changeAddress = "mvcJcHN3ZhELVVhncfjARUMtfRELwhGXgL";
                    final secretPrivateKeyBtc = wallet.getKeyForCoin(coin);
                    final signingInput = Bitcoin.SigningInput(
                      amount: $fixnum.Int64.parseInt('37000'),
                      hashType: BitcoinScript.hashTypeForCoin(coin),
                      toAddress: toAddress,
                      changeAddress: changeAddress,
                      byteFee: $fixnum.Int64.parseInt('10'),
                      coinType: coin,
                      utxo: [
                        Bitcoin.UnspentTransaction(
                          amount: $fixnum.Int64.parseInt('20000'),
                          outPoint: Bitcoin.OutPoint(
                            hash: hex.decode('1b23757cdc023b3ac9f033522abb9f845815b65cce1e25411e8ad950899c0e71').reversed.toList(),
                            index: 0,
                            sequence: 4294967295,
                          ),
                          script: BitcoinScript.lockScriptForAddress(addressBtc, coin).data().toList(),
                        ),
                        Bitcoin.UnspentTransaction(
                          amount: $fixnum.Int64.parseInt('20000'),
                          outPoint: Bitcoin.OutPoint(
                            hash: hex.decode('7611002ff116fad20ef12ad30010a07d5b25edf37209504dd42a6a4c5c27aa75').reversed.toList(),
                            index: 0,
                            sequence: 4294967295,
                          ),
                          script: BitcoinScript.lockScriptForAddress(addressBtc, coin).data().toList(),
                        ),
                      ],
                      privateKey: [
                        secretPrivateKeyBtc.data().toList(),
                      ],
                    );
                    final transactionPlan = Bitcoin.TransactionPlan.fromBuffer(AnySigner.signerPlan(signingInput.writeToBuffer(), coin).toList());
                    print('availableAmount: ${transactionPlan.availableAmount} amount: ${transactionPlan.amount} fee: ${transactionPlan.fee} change: ${transactionPlan.change}');
                    signingInput.plan = transactionPlan;
                    signingInput.amount = transactionPlan.amount;
                    final sign = AnySigner.sign(signingInput.writeToBuffer(), coin);
                    final signingOutput = Bitcoin.SigningOutput.fromBuffer(sign);
                    print(hex.encode(signingOutput.encoded));
                    logger.d(hex.encode(signingOutput.encoded));

                    setState(() {});
                  },
                  child: Text("gen")),
            ],
          ),
        ),
      ),
    );
  }
}
