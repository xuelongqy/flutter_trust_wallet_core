
import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/services.dart';

class FlutterTrustWalletCore {
  static late DynamicLibrary _walletCoreLib;
  static const MethodChannel _channel =
      const MethodChannel('flutter_trust_wallet_core');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void init() {
    _walletCoreLib = Platform.isAndroid
        ? DynamicLibrary.open("libTrustWalletCore.so")
        : DynamicLibrary.process();
  }

  static String genETHAddress() {
    final Pointer Function(Pointer<Utf8> bytes) twStringCreateWithUTF8Bytes =
    _walletCoreLib
        .lookup<NativeFunction<Pointer Function(Pointer<Utf8>)>>(
        'TWStringCreateWithUTF8Bytes')
        .asFunction();

    final Pointer<Utf8> Function(Pointer bytes) twStringUTF8Bytes =
    _walletCoreLib
        .lookup<NativeFunction<Pointer<Utf8> Function(Pointer)>>(
        'TWStringUTF8Bytes')
        .asFunction();
    final Pointer Function(int x, Pointer y) tWHDWalletCreate = _walletCoreLib
        .lookup<NativeFunction<Pointer Function(Int32, Pointer)>>(
        "TWHDWalletCreate")
        .asFunction();
    final wallet =
    tWHDWalletCreate(128, twStringCreateWithUTF8Bytes("".toNativeUtf8()));
    final Pointer Function(Pointer x, int y) getAddress = _walletCoreLib
        .lookup<NativeFunction<Pointer Function(Pointer, Int32)>>(
        "TWHDWalletGetAddressForCoin")
        .asFunction();

    final ethAddress = getAddress(wallet, 60); //ETH address

    final String? address = twStringUTF8Bytes(ethAddress).toDartString();

    return address ?? "";
  }
}
