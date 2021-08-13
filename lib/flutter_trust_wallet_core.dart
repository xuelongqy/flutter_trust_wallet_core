library flutter_trust_wallet_core;

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'trust_wallet_core_ffi.dart';
import 'extensions.dart';



part 'core/mnemonic.dart';
part 'core/hd_wallet.dart';
part 'core/private_key.dart';
part 'core/public_key.dart';
part 'core/stored_key.dart';
part 'core/any_address.dart';
part 'core/base58.dart';
part 'core/hash.dart';
part 'core/bitcoin_address.dart';




class FlutterTrustWalletCore {
  static void init() {
    walletCoreLib = Platform.isAndroid ? DynamicLibrary.open("libTrustWalletCore.so") : DynamicLibrary.process();
  }
}
