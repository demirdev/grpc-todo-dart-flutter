///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.TodoItem, $0.AddReply>(
      '/grpc_todo.Todo/add',
      ($0.TodoItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddReply.fromBuffer(value));
  static final _$fetchTodos =
      $grpc.ClientMethod<$0.FetchTodosRequest, $0.FetchTodosResponse>(
          '/grpc_todo.Todo/fetchTodos',
          ($0.FetchTodosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FetchTodosResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.TodoItem, $0.DeleteReply>(
      '/grpc_todo.Todo/delete',
      ($0.TodoItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteReply.fromBuffer(value));
  static final _$listenTodosStream =
      $grpc.ClientMethod<$0.ListenTodosRequest, $0.TodoStreamItems>(
          '/grpc_todo.Todo/listenTodosStream',
          ($0.ListenTodosRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TodoStreamItems.fromBuffer(value));

  TodoClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddReply> add($0.TodoItem request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchTodosResponse> fetchTodos(
      $0.FetchTodosRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTodos, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteReply> delete($0.TodoItem request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseStream<$0.TodoStreamItems> listenTodosStream(
      $0.ListenTodosRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenTodosStream, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc_todo.Todo';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoItem, $0.AddReply>(
        'add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value),
        ($0.AddReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchTodosRequest, $0.FetchTodosResponse>(
        'fetchTodos',
        fetchTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchTodosRequest.fromBuffer(value),
        ($0.FetchTodosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoItem, $0.DeleteReply>(
        'delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value),
        ($0.DeleteReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListenTodosRequest, $0.TodoStreamItems>(
        'listenTodosStream',
        listenTodosStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ListenTodosRequest.fromBuffer(value),
        ($0.TodoStreamItems value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddReply> add_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TodoItem> request) async {
    return add(call, await request);
  }

  $async.Future<$0.FetchTodosResponse> fetchTodos_Pre($grpc.ServiceCall call,
      $async.Future<$0.FetchTodosRequest> request) async {
    return fetchTodos(call, await request);
  }

  $async.Future<$0.DeleteReply> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TodoItem> request) async {
    return delete(call, await request);
  }

  $async.Stream<$0.TodoStreamItems> listenTodosStream_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListenTodosRequest> request) async* {
    yield* listenTodosStream(call, await request);
  }

  $async.Future<$0.AddReply> add($grpc.ServiceCall call, $0.TodoItem request);
  $async.Future<$0.FetchTodosResponse> fetchTodos(
      $grpc.ServiceCall call, $0.FetchTodosRequest request);
  $async.Future<$0.DeleteReply> delete(
      $grpc.ServiceCall call, $0.TodoItem request);
  $async.Stream<$0.TodoStreamItems> listenTodosStream(
      $grpc.ServiceCall call, $0.ListenTodosRequest request);
}
