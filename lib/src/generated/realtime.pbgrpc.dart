///
//  Generated code. Do not modify.
//  source: realtime.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'realtime.pb.dart' as $0;
export 'realtime.pb.dart';

class RealtimeClient extends $grpc.Client {
  static final _$join = $grpc.ClientMethod<$0.RoomRequest, $0.RoomStream>(
      '/grpc_todo.Realtime/join',
      ($0.RoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RoomStream.fromBuffer(value));
  static final _$updatePosition =
      $grpc.ClientMethod<$0.UpdatePosition, $0.UpdatePosition>(
          '/grpc_todo.Realtime/updatePosition',
          ($0.UpdatePosition value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UpdatePosition.fromBuffer(value));

  RealtimeClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.RoomStream> join($0.RoomRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$join, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.UpdatePosition> updatePosition(
      $0.UpdatePosition request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePosition, request, options: options);
  }
}

abstract class RealtimeServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc_todo.Realtime';

  RealtimeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RoomRequest, $0.RoomStream>(
        'join',
        join_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RoomRequest.fromBuffer(value),
        ($0.RoomStream value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdatePosition, $0.UpdatePosition>(
        'updatePosition',
        updatePosition_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdatePosition.fromBuffer(value),
        ($0.UpdatePosition value) => value.writeToBuffer()));
  }

  $async.Stream<$0.RoomStream> join_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RoomRequest> request) async* {
    yield* join(call, await request);
  }

  $async.Future<$0.UpdatePosition> updatePosition_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UpdatePosition> request) async {
    return updatePosition(call, await request);
  }

  $async.Stream<$0.RoomStream> join(
      $grpc.ServiceCall call, $0.RoomRequest request);
  $async.Future<$0.UpdatePosition> updatePosition(
      $grpc.ServiceCall call, $0.UpdatePosition request);
}
