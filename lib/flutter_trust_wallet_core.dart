library trust_wallet_core;

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

part 'tw_hd_wallet.dart';

part 'tw_mnemonic.dart';

part 'tw_string.dart';

late DynamicLibrary walletCoreLib;

class FlutterTrustWalletCore {
  static void init() {
    walletCoreLib = Platform.isAndroid
        ? DynamicLibrary.open("libTrustWalletCore.so")
        : DynamicLibrary.process();
  }
}
