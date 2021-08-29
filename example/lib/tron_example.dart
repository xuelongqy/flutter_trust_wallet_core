import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:flutter_trust_wallet_core/trust_wallet_core_ffi.dart';
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
    final now = DateTime.now();
    int coin = TWCoinType.TWCoinTypeTron;
    String nowBlock =
        '{"blockID":"00000000010ff32d2062e93b3e44eb83d1296fce4814a4e9c55be894dd201432","block_header":{"raw_data":{"number":17822509,"txTrieRoot":"0000000000000000000000000000000000000000000000000000000000000000","witness_address":"410765bed97bbd836f6e489265fd0d9ca1c888e606","parentHash":"00000000010ff32cbb9b69d95752971ba60a225b3a7ecb7fa1c743faf66746bc","version":22,"timestamp":1630032900000},"witness_signature":"1087d30e0e235ea7b6ca0e53dcb8c99abde15b302daeba83d02361b1f37c9c32236a0ee70d50f041e329792b665ff5921b34c728cc07faf81aa1909f5c6582dd00"}}';
    Map blockHeader = json.decode(nowBlock)['block_header']['raw_data'];
    print(blockHeader);
    logger.d(widget.wallet.getAddressForCoin(coin));
    final input = Tron.SigningInput(
        transaction: Tron.Transaction(
          transferAsset: Tron.TransferAssetContract(
            ownerAddress: widget.wallet.getAddressForCoin(coin),
            toAddress: 'TMc6UPXfZJEV1s8ki41JgbC1AnxKDqmeu4',
            amount: $fixnum.Int64.parseInt('4'),
            assetName: '1000959',
          ),
          timestamp: $fixnum.Int64.parseInt(now.millisecondsSinceEpoch.toString()),
          expiration: $fixnum.Int64.parseInt('${now.millisecondsSinceEpoch + 10 * 60 * 60 * 1000}'),
          blockHeader: Tron.BlockHeader(
            timestamp: $fixnum.Int64.parseInt(blockHeader['timestamp'].toString()),
            txTrieRoot: hex.decode(blockHeader['txTrieRoot']),
            parentHash: hex.decode(blockHeader['parentHash']),
            number: $fixnum.Int64.parseInt(blockHeader['number'].toString()),
            witnessAddress: hex.decode(blockHeader['witness_address']),
            version: blockHeader['version'],
          ),
        ),
        privateKey: widget.wallet.getKeyForCoin(coin).data().toList());
    final output = Tron.SigningOutput.fromBuffer(AnySigner.sign(input.writeToBuffer(), coin).toList());
    logger.d(hex.encode(output.writeToBuffer()));
    print(hex.encode(output.writeToBuffer()));
  }
}
