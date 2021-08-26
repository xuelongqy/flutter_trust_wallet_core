import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:flutter_trust_wallet_core_example/base_example.dart';
import 'package:flutter_trust_wallet_core/protobuf/Tron.pb.dart' as Tron;
import 'package:fixnum/fixnum.dart' as $fixnum;

class TronExample extends BaseExample {
  final HDWallet wallet;

  const TronExample(this.wallet, {Key? key}) : super('Tron', key: key);

  @override
  _TronExampleState createState() => _TronExampleState();
}

class _TronExampleState extends BaseExampleState<TronExample> {
  @override
  void initState() {
    super.initState();
    int coin = CoinType.Tron;
    logger.d(widget.wallet.getAddressForCoin(coin));
    final input = Tron.SigningInput(
      transaction: Tron.Transaction(
        transferAsset: Tron.TransferAssetContract(
          ownerAddress: 'TJRyWwFs9wTFGZg3JbrVriFbNfCug5tDeC',
          toAddress: 'THTR75o8xXAgCTQqpiot2AFRAjvW1tSbVV',
          amount: $fixnum.Int64.parseInt('4'),
          assetName: '1000959',
        ),
        timestamp: $fixnum.Int64.parseInt('1539295479000'),
        expiration: $fixnum.Int64.parseInt('${1541890116000 + 10 * 60 * 60 * 1000}'),
        blockHeader: Tron.BlockHeader(
          timestamp: $fixnum.Int64.parseInt('1541890116000'),
          txTrieRoot: hex.decode('845ab51bf63c2c21ee71a4dc0ac3781619f07a7cd05e1e0bd8ba828979332ffa'),
          parentHash: hex.decode('00000000003cb800a7e69e9144e3d16f0cf33f33a95c7ce274097822c67243c1'),
          number: $fixnum.Int64.parseInt('3979265'),
          witnessAddress: hex.decode('41b487cdc02de90f15ac89a68c82f44cbfe3d915ea'),
          version: 3,
        ),
      ),
      privateKey: hex.decode('2d8f68944bdbfbc0769542fba8fc2d2a3de67393334471624364c7006da2aa54')
    );
    final output = Tron.SigningOutput.fromBuffer(AnySigner.sign(input.writeToBuffer(), coin).toList());
    logger.d(hex.encode(output.signature));
  }
}