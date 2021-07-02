library trust_wallet_core;

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'extensions.dart';

part 'tw_hd_wallet.dart';

part 'tw_mnemonic.dart';

part 'tw_string.dart';

part 'tw_data.dart';

part 'tw_coin_type.dart';

part 'tw_blockchain.dart';

part 'tw_curve.dart';

part 'tw_purpose.dart';

part 'tw_hd_version.dart';


late DynamicLibrary walletCoreLib;

class FlutterTrustWalletCore {
  static void init() {
    walletCoreLib = Platform.isAndroid
        ? DynamicLibrary.open("libTrustWalletCore.so")
        : DynamicLibrary.process();
  }
}
