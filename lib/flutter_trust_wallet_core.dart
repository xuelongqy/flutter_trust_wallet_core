library trust_wallet_core;

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'extensions.dart';

part 'impl/demo_tw_hd_wallet.dart';

part 'impl/demo_tw_mnemonic.dart';

part 'impl/demo_tw_string.dart';

part 'impl/demo_tw_data.dart';

part 'impl/demo_tw_coin_type.dart';

part 'impl/demo_tw_blockchain.dart';

part 'impl/demo_tw_curve.dart';

part 'impl/demo_tw_purpose.dart';

part 'impl/demo_tw_hd_version.dart';

part 'ffi_impl/tw_account.dart';

part 'ffi_impl/tw_aes.dart';

part 'ffi_impl/tw_aes_padding_mode.dart';

part 'ffi_impl/tw_any_address.dart';

part 'ffi_impl/tw_any_signer.dart';

part 'ffi_impl/tw_base.dart';

part 'ffi_impl/tw_base_58.dart';

part 'ffi_impl/tw_bitcoin_address.dart';

part 'ffi_impl/tw_bitcoin_script.dart';

part 'ffi_impl/tw_bitcoin_sig_hash_type.dart';

part 'ffi_impl/tw_blockchain.dart';

part 'ffi_impl/tw_coin_type.dart';

part 'ffi_impl/tw_coin_type_configuration.dart';

part 'ffi_impl/tw_curve.dart';

part 'ffi_impl/tw_data.dart';

part 'ffi_impl/tw_ethereum_abi.dart';

part 'ffi_impl/tw_ethereum_abi_function.dart';

part 'ffi_impl/tw_ethereum_abi_value.dart';

part 'ffi_impl/tw_ethereum_chain_id.dart';

part 'ffi_impl/tw_fio_account.dart';

part 'ffi_impl/tw_groestlcoin_address.dart';

part 'ffi_impl/tw_hash.dart';

part 'ffi_impl/tw_hd_version.dart';

part 'ffi_impl/tw_hd_wallet.dart';

part 'ffi_impl/tw_mnemonic.dart';

part 'ffi_impl/tw_near_account.dart';

part 'ffi_impl/tw_private_key.dart';

part 'ffi_impl/tw_public_key.dart';

part 'ffi_impl/tw_public_key_type.dart';

part 'ffi_impl/tw_purpose.dart';

part 'ffi_impl/tw_ripple_x_address.dart';

part 'ffi_impl/tw_segwit_address.dart';

part 'ffi_impl/tw_solana_address.dart';

part 'ffi_impl/tw_ss_58_address_type.dart';

part 'ffi_impl/tw_stellar_memo_type.dart';

part 'ffi_impl/tw_stored_key.dart';

part 'ffi_impl/tw_string.dart';

late DynamicLibrary walletCoreLib;

final Pointer<T> Function<T extends NativeType>(String symbolName) _lookup = walletCoreLib.lookup;

class FlutterTrustWalletCore {
  static void init() {
    walletCoreLib = Platform.isAndroid ? DynamicLibrary.open("libTrustWalletCore.so") : DynamicLibrary.process();
  }
}
