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
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Mnemonic:isValid = $isValid"),
                    Text("Mnemonic:isValidWord = $isValidWord"),
                    Text("Mnemonic:suggest = $suggest"),
                  ],
                ),
              ),
            ),
            Center(
              child: SafeArea(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {

                        isValid = TWMnemonic.isValid("digital reward jar vehicle globe crunch quality cattle marble lawn rotate will");
                        isValidWord = TWMnemonic.isValidWord("abandon");
                        suggest = TWMnemonic.suggest("cal");
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
