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
    walletCoreLib = Platform.isAndroid ? DynamicLibrary.open("libTrustWalletCore.so") : DynamicLibrary.process();
  }

  static String genETHAddress() {
    final Pointer Function(Pointer<Utf8> bytes) twStringCreateWithUTF8Bytes =
        walletCoreLib.lookup<NativeFunction<Pointer Function(Pointer<Utf8>)>>('TWStringCreateWithUTF8Bytes').asFunction();

    final Pointer<Utf8> Function(Pointer bytes) twStringUTF8Bytes = walletCoreLib.lookup<NativeFunction<Pointer<Utf8> Function(Pointer)>>('TWStringUTF8Bytes').asFunction();
    final Pointer Function(int x, Pointer y) tWHDWalletCreate = walletCoreLib.lookup<NativeFunction<Pointer Function(Int32, Pointer)>>("TWHDWalletCreate").asFunction();
    final wallet = tWHDWalletCreate(256, twStringCreateWithUTF8Bytes("".toNativeUtf8()));
    final Pointer Function(Pointer x, int y) getAddress = walletCoreLib.lookup<NativeFunction<Pointer Function(Pointer, Int32)>>("TWHDWalletGetAddressForCoin").asFunction();

    final ethAddress = getAddress(wallet, 0); //ETH address

    final String? address = twStringUTF8Bytes(ethAddress).toDartString();

    return address ?? "";
  }
}
