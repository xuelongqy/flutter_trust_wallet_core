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
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 2,
      lineLength: 20,
      colors: true,
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
                          return Text(logs[index]);
                        },
                        itemCount: logs.length),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        logs.clear();

                        logger.log(Level.debug, "TWMnemonic.isValid('digital reward jar vehicle globe crunch quality cattle marble lawn rotate will)");
                        logger.log(Level.debug, TWMnemonic.isValid('digital reward jar vehicle globe crunch quality cattle marble lawn rotate will'));

                        logger.log(Level.debug, "TWMnemonic.isValidWord('glob')");
                        logger.log(Level.debug, TWMnemonic.isValidWord('glob'));

                        logger.log(Level.debug, "TWMnemonic.suggest('ja')");
                        logger.log(Level.debug, TWMnemonic.suggest('ja'));

                        logger.log(Level.debug, " TWHDWallet.create(128)");
                        logger.log(Level.debug, TWHDWallet.create(128).mnemonic());

                        setState(() {});
                      },
                      child: Text("gen")),
                ],
              ),
            )));
  }
}
