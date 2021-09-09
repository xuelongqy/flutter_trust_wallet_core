
import 'package:flutter/material.dart';
import 'package:flutter_trust_wallet_core/flutter_trust_wallet_core.dart';
import 'package:flutter_trust_wallet_core/trust_wallet_core_ffi.dart';
import 'package:flutter_trust_wallet_core_example/base_example.dart';

class PrivateKeyIsValidExample extends BaseExample {
  final HDWallet wallet;
  const PrivateKeyIsValidExample(this.wallet, {Key? key}) : super('PrivateKeyIsValid', key: key);

  @override
  _PrivateKeyIsValidExampleState createState() => _PrivateKeyIsValidExampleState();
}

class _PrivateKeyIsValidExampleState extends BaseExampleState<PrivateKeyIsValidExample> {
  @override
  void initState() {
    super.initState();
    final ETHPk = widget.wallet.getKeyForCoin(TWCoinType.TWCoinTypeEthereum);
    print("ETHPk.data:${ETHPk.data()}");
    logger.d('-1：${PrivateKey.isValid(ETHPk.data(), -1)}、none：${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveNone)}、ed25519：${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveED25519)}、secp256k1：${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveSECP256k1)}、ed25519Blake2bNano：${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveED25519Blake2bNano)}、curve25519：${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveCurve25519)}、nist256p1:${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveNIST256p1)}、ed25519Extended:${PrivateKey.isValid(ETHPk.data(), TWCurve.TWCurveED25519Extended)}');
    final BITPk = widget.wallet.getKeyForCoin(TWCoinType.TWCoinTypeBitcoin);
    print("BITPk.data:${BITPk.data()}");
    logger.d('10000000000000000：${PrivateKey.isValid(ETHPk.data(), 10000000000000000)}、none：${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveNone)}、ed25519：${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveED25519)}、secp256k1：${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveSECP256k1)}、ed25519Blake2bNano：${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveED25519Blake2bNano)}、curve25519：${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveCurve25519)}、nist256p1:${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveNIST256p1)}、ed25519Extended:${PrivateKey.isValid(BITPk.data(), TWCurve.TWCurveED25519Extended)}');
    final AIONPk = widget.wallet.getKeyForCoin(TWCoinType.TWCoinTypeAion);
    print("AIONPk.data:${AIONPk.data()}");
    logger.d('0：${PrivateKey.isValid(AIONPk.data(), 0)}、none：${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveNone)}、ed25519：${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveED25519)}、secp256k1：${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveSECP256k1)}、ed25519Blake2bNano：${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveED25519Blake2bNano)}、curve25519：${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveCurve25519)}、nist256p1:${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveNIST256p1)}、ed25519Extended:${PrivateKey.isValid(AIONPk.data(), TWCurve.TWCurveED25519Extended)}');

  }

}
