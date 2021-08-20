///
//  Generated code. Do not modify.
//  source: Algorand.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use transactionPayDescriptor instead')
const TransactionPay$json = const {
  '1': 'TransactionPay',
  '2': const [
    const {'1': 'to_address', '3': 1, '4': 1, '5': 9, '10': 'toAddress'},
    const {'1': 'fee', '3': 2, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 4, '10': 'amount'},
    const {'1': 'first_round', '3': 4, '4': 1, '5': 4, '10': 'firstRound'},
    const {'1': 'last_round', '3': 5, '4': 1, '5': 4, '10': 'lastRound'},
  ],
};

/// Descriptor for `TransactionPay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionPayDescriptor = $convert.base64Decode('Cg5UcmFuc2FjdGlvblBheRIdCgp0b19hZGRyZXNzGAEgASgJUgl0b0FkZHJlc3MSEAoDZmVlGAIgASgEUgNmZWUSFgoGYW1vdW50GAMgASgEUgZhbW91bnQSHwoLZmlyc3Rfcm91bmQYBCABKARSCmZpcnN0Um91bmQSHQoKbGFzdF9yb3VuZBgFIAEoBFIJbGFzdFJvdW5k');
@$core.Deprecated('Use signingInputDescriptor instead')
const SigningInput$json = const {
  '1': 'SigningInput',
  '2': const [
    const {'1': 'genesis_id', '3': 1, '4': 1, '5': 9, '10': 'genesisId'},
    const {'1': 'genesis_hash', '3': 2, '4': 1, '5': 12, '10': 'genesisHash'},
    const {'1': 'note', '3': 3, '4': 1, '5': 12, '10': 'note'},
    const {'1': 'private_key', '3': 4, '4': 1, '5': 12, '10': 'privateKey'},
    const {'1': 'transaction_pay', '3': 10, '4': 1, '5': 11, '6': '.TW.Algorand.Proto.TransactionPay', '9': 0, '10': 'transactionPay'},
  ],
  '8': const [
    const {'1': 'message_oneof'},
  ],
};

/// Descriptor for `SigningInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signingInputDescriptor = $convert.base64Decode('CgxTaWduaW5nSW5wdXQSHQoKZ2VuZXNpc19pZBgBIAEoCVIJZ2VuZXNpc0lkEiEKDGdlbmVzaXNfaGFzaBgCIAEoDFILZ2VuZXNpc0hhc2gSEgoEbm90ZRgDIAEoDFIEbm90ZRIfCgtwcml2YXRlX2tleRgEIAEoDFIKcHJpdmF0ZUtleRJMCg90cmFuc2FjdGlvbl9wYXkYCiABKAsyIS5UVy5BbGdvcmFuZC5Qcm90by5UcmFuc2FjdGlvblBheUgAUg50cmFuc2FjdGlvblBheUIPCg1tZXNzYWdlX29uZW9m');
@$core.Deprecated('Use signingOutputDescriptor instead')
const SigningOutput$json = const {
  '1': 'SigningOutput',
  '2': const [
    const {'1': 'encoded', '3': 1, '4': 1, '5': 12, '10': 'encoded'},
  ],
};

/// Descriptor for `SigningOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signingOutputDescriptor = $convert.base64Decode('Cg1TaWduaW5nT3V0cHV0EhgKB2VuY29kZWQYASABKAxSB2VuY29kZWQ=');
