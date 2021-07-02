import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
// bc1qpsp72plnsqe6e2dvtsetxtww2cz36ztmfxghpd
var list =  [53,76,34,-82,-37,-102,55,64,122,-36,97,-10,87,-90,-16,13,16,-19,18,94,-6,54,2,21,-13,108,105,25,-85,-39,77,109,-68,25,58,95,-100,73,94,33,-18,116,17,-122,97,-29,39,-24,74,95,95,17,-6,55,62,-61,59,-128,-119,125,70,-105,85,125];
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _address = "none";
  bool isValid = false;
  bool isValidWord = false;
  String suggest = "";

  TWHDWallet? twhdWallet;
  Uint8List? seed;

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: StreamBuilder<Object>(
                    stream: null,
                    builder: (context, snapshot) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                              "Mnemonic:isValid [gossip reward jar vehicle globe crunch quality cattle marble lawn rotate wil]= $isValid"),
                          Divider(),
                          Text("Mnemonic:isValidWord [dig]= $isValidWord"),
                          Divider(),
                          Text("Mnemonic:suggest [ja]= $suggest"),
                          Divider(),
                          Text(
                              "TWHDWallet:mnemonic = ${twhdWallet?.mnemonic()}"),
                          Divider(),
                          Text(
                              "TWHDWallet:addressForCoin  ETH= ${twhdWallet?.getAddressForCoin(60)}"),
                          Divider(),
                          Text(
                              "TWHDWallet:addressForCoin  BTC= ${twhdWallet?.getAddressForCoin(0)}"),
                          Divider(),
                          Text("TWHDWallet:seed  $seed"),
                          Divider(),
                          Divider(),
                          if (seed != null)
                          Text(
                              "TWHDWallet:createWithData  ${TWHDWallet.createWithData(seed!, "").getAddressForCoin(60)} "),
                          Divider(),
                        ],
                      );
                    }),
              ),
            ),
            Center(
              child: SafeArea(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isValid = TWMnemonic.isValid(
                            "digital reward jar vehicle globe crunch quality cattle marble lawn rotate will");
                        isValidWord = TWMnemonic.isValidWord("dig");
                        suggest = TWMnemonic.suggest("ja");

                        twhdWallet = TWHDWallet.create(128, "");
                        seed = twhdWallet?.seed();
                      });
                    },
                    child: Text("Gen")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
