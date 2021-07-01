import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';

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
                              "Mnemonic:isValid [digital reward jar vehicle globe crunch quality cattle marble lawn rotate wil]= $isValid"),
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
                      });
                    },
                    child: Text("Gen info")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
