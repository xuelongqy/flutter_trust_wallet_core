import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:flutter_trust_wallet_core_example/bitcoin_address_example.dart';
import 'package:flutter_trust_wallet_core_example/bitcoin_transaction_example.dart';
import 'package:flutter_trust_wallet_core_example/ethereum_example.dart';
import 'package:flutter_trust_wallet_core_example/tron_example.dart';

List<String> logs = [];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  late HDWallet wallet;

  @override
  void initState() {
    FlutterTrustWalletCore.init();
    super.initState();
    String tronHasTRX = "horror select baby exile convince sunset outside vehicle write decade powder energy"; // 有测试币的 tron地址
    wallet = HDWallet.createWithMnemonic(tronHasTRX);
  }

  Widget _exampleItem({
    required String name,
    required WidgetBuilder builder,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: builder));
      },
      child: Text(name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wallet core example app'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(wallet.mnemonic()),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _exampleItem(
                    name: 'Ethereum',
                    builder: (_) {
                      return EthereumExample(wallet);
                    },
                  ),
                  _exampleItem(
                    name: 'Bitcoin Address',
                    builder: (_) {
                      return BitcoinAddressExample(wallet);
                    },
                  ),
                  _exampleItem(
                    name: 'Bitcoin Transaction',
                    builder: (_) {
                      return BitcoinTransactionExample(wallet);
                    },
                  ),
                  _exampleItem(
                    name: 'Tron',
                    builder: (_) {
                      return TronExample(wallet);
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                wallet.delete();
                wallet = HDWallet();
                setState(() {});
              },
              child: Text("gen"),
            ),
          ],
        ),
      ),
    );
  }
}
