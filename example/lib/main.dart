import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:logger/logger.dart';

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

class MylogFilter extends LogFilter{
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
                          return Text(logs[index],style: TextStyle(fontSize: 10),);
                        },
                        itemCount: logs.length),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        logs.clear();

                        HDWallet wallet  = HDWallet();
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
                        final a  = StoredKey.importPrivateKey(wallet.getKeyForCoin(60).data(), "", Uint8List.fromList("123aaa".codeUnits),60);

                        logger.d("keystore = ${a.exportJson()}");

                        setState(() {});
                      },
                      child: Text("gen")),
                ],
              ),
            )));
  }
}
