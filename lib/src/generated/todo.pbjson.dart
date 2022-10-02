///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoItemDescriptor instead')
const TodoItem$json = const {
  '1': 'TodoItem',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TodoItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoItemDescriptor = $convert.base64Decode('CghUb2RvSXRlbRISCgR1dWlkGAEgASgJUgR1dWlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use todoStreamItemsDescriptor instead')
const TodoStreamItems$json = const {
  '1': 'TodoStreamItems',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.grpc_todo.TodoItem', '10': 'items'},
  ],
};

/// Descriptor for `TodoStreamItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoStreamItemsDescriptor = $convert.base64Decode('Cg9Ub2RvU3RyZWFtSXRlbXMSKQoFaXRlbXMYASADKAsyEy5ncnBjX3RvZG8uVG9kb0l0ZW1SBWl0ZW1z');
@$core.Deprecated('Use addReplyDescriptor instead')
const AddReply$json = const {
  '1': 'AddReply',
};

/// Descriptor for `AddReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addReplyDescriptor = $convert.base64Decode('CghBZGRSZXBseQ==');
@$core.Deprecated('Use deleteReplyDescriptor instead')
const DeleteReply$json = const {
  '1': 'DeleteReply',
};

/// Descriptor for `DeleteReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteReplyDescriptor = $convert.base64Decode('CgtEZWxldGVSZXBseQ==');
@$core.Deprecated('Use fetchTodosRequestDescriptor instead')
const FetchTodosRequest$json = const {
  '1': 'FetchTodosRequest',
};

/// Descriptor for `FetchTodosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchTodosRequestDescriptor = $convert.base64Decode('ChFGZXRjaFRvZG9zUmVxdWVzdA==');
@$core.Deprecated('Use listenTodosRequestDescriptor instead')
const ListenTodosRequest$json = const {
  '1': 'ListenTodosRequest',
};

/// Descriptor for `ListenTodosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenTodosRequestDescriptor = $convert.base64Decode('ChJMaXN0ZW5Ub2Rvc1JlcXVlc3Q=');
@$core.Deprecated('Use fetchTodosResponseDescriptor instead')
const FetchTodosResponse$json = const {
  '1': 'FetchTodosResponse',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.grpc_todo.TodoItem', '10': 'todos'},
  ],
};

/// Descriptor for `FetchTodosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchTodosResponseDescriptor = $convert.base64Decode('ChJGZXRjaFRvZG9zUmVzcG9uc2USKQoFdG9kb3MYASADKAsyEy5ncnBjX3RvZG8uVG9kb0l0ZW1SBXRvZG9z');
