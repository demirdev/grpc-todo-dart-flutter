///
//  Generated code. Do not modify.
//  source: realtime.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use updatePositionDescriptor instead')
const UpdatePosition$json = const {
  '1': 'UpdatePosition',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.grpc_todo.RoomRequest', '10': 'request'},
  ],
};

/// Descriptor for `UpdatePosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePositionDescriptor = $convert.base64Decode('Cg5VcGRhdGVQb3NpdGlvbhIwCgdyZXF1ZXN0GAEgASgLMhYuZ3JwY190b2RvLlJvb21SZXF1ZXN0UgdyZXF1ZXN0');
@$core.Deprecated('Use roomRequestDescriptor instead')
const RoomRequest$json = const {
  '1': 'RoomRequest',
  '2': const [
    const {'1': 'roomName', '3': 1, '4': 1, '5': 9, '10': 'roomName'},
    const {'1': 'player', '3': 2, '4': 1, '5': 11, '6': '.grpc_todo.Player', '10': 'player'},
  ],
};

/// Descriptor for `RoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomRequestDescriptor = $convert.base64Decode('CgtSb29tUmVxdWVzdBIaCghyb29tTmFtZRgBIAEoCVIIcm9vbU5hbWUSKQoGcGxheWVyGAIgASgLMhEuZ3JwY190b2RvLlBsYXllclIGcGxheWVy');
@$core.Deprecated('Use playerDescriptor instead')
const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.grpc_todo.Position', '10': 'position'},
  ],
};

/// Descriptor for `Player`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerDescriptor = $convert.base64Decode('CgZQbGF5ZXISGgoIdXNlck5hbWUYASABKAlSCHVzZXJOYW1lEi8KCHBvc2l0aW9uGAIgASgLMhMuZ3JwY190b2RvLlBvc2l0aW9uUghwb3NpdGlvbg==');
@$core.Deprecated('Use positionDescriptor instead')
const Position$json = const {
  '1': 'Position',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode('CghQb3NpdGlvbhIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');
@$core.Deprecated('Use roomStreamDescriptor instead')
const RoomStream$json = const {
  '1': 'RoomStream',
  '2': const [
    const {'1': 'players', '3': 1, '4': 3, '5': 11, '6': '.grpc_todo.Player', '10': 'players'},
  ],
};

/// Descriptor for `RoomStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomStreamDescriptor = $convert.base64Decode('CgpSb29tU3RyZWFtEisKB3BsYXllcnMYASADKAsyES5ncnBjX3RvZG8uUGxheWVyUgdwbGF5ZXJz');
