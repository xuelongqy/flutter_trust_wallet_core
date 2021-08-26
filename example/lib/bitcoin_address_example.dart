import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:flutter_trust_wallet_core_example/base_example.dart';

class BitcoinAddressExample extends BaseExample {
  final HDWallet wallet;

  const BitcoinAddressExample(this.wallet, {Key? key}) : super('Bitcoin Address', key: key);

  @override
  _BitcoinAddressExampleState createState() => _BitcoinAddressExampleState();
}

class _BitcoinAddressExampleState extends BaseExampleState<BitcoinAddressExample> {
  @override
  void initState() {
    super.initState();
    int coin = CoinType.BitcoinTestnet;
    final privakye2 = widget.wallet.getKey(coin, "m/44'/0'/0'/0/0");
    logger.d(hex.encode(privakye2.data()));
    final publicKey2 = privakye2.getPublicKeySecp256k1(true);
    final bitcoinAddress = BitcoinAddress.createWithPublicKey(publicKey2, coin);
    logger.d(bitcoinAddress.description());
    final segwitAddress = SegwitAddress.createWithPublicKey(HRP.Bitcoin, publicKey2);
    logger.d(segwitAddress.description());
    final address2 = AnyAddress.createWithPublicKey(publicKey2, 0);
    logger.d("keystore a = ${address2.description()}");

    final pubKeyHash = Hash.hashSHA256RIPEMD(publicKey2.data());
    final bitcoinScript = BitcoinScript.buildPayToWitnessPubkeyHash(pubKeyHash);
    final scriptHash = Hash.hashSHA256RIPEMD(bitcoinScript.data());
    final data = Uint8List.fromList([5]..addAll(scriptHash.toList()));
    final bitcoinAddress2 = BitcoinAddress.createWithData(data);
    logger.d(bitcoinAddress2.description());
  }
}