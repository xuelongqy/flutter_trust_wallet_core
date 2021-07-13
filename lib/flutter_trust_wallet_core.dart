library trust_wallet_core;

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'extensions.dart';

part 'impl/tw_hd_wallet.dart';

part 'impl/tw_mnemonic.dart';

part 'impl/tw_string.dart';

part 'impl/tw_data.dart';

part 'impl/tw_coin_type.dart';

part 'impl/tw_blockchain.dart';

part 'impl/tw_curve.dart';

part 'impl/tw_purpose.dart';

part 'impl/tw_hd_version.dart';

late DynamicLibrary walletCoreLib;

class FlutterTrustWalletCore {
  static void init() {
    walletCoreLib = Platform.isAndroid
        ? DynamicLibrary.open("libTrustWalletCore.so")
        : DynamicLibrary.process();
  }
}
