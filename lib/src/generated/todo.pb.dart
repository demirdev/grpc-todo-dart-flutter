///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TodoItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  TodoItem._() : super();
  factory TodoItem({
    $core.String? uuid,
    $core.String? name,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory TodoItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoItem clone() => TodoItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoItem copyWith(void Function(TodoItem) updates) => super.copyWith((message) => updates(message as TodoItem)) as TodoItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoItem create() => TodoItem._();
  TodoItem createEmptyInstance() => create();
  static $pb.PbList<TodoItem> createRepeated() => $pb.PbList<TodoItem>();
  @$core.pragma('dart2js:noInline')
  static TodoItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoItem>(create);
  static TodoItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class TodoStreamItems extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TodoStreamItems', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..pc<TodoItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TodoItem.create)
    ..hasRequiredFields = false
  ;

  TodoStreamItems._() : super();
  factory TodoStreamItems({
    $core.Iterable<TodoItem>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory TodoStreamItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TodoStreamItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TodoStreamItems clone() => TodoStreamItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TodoStreamItems copyWith(void Function(TodoStreamItems) updates) => super.copyWith((message) => updates(message as TodoStreamItems)) as TodoStreamItems; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TodoStreamItems create() => TodoStreamItems._();
  TodoStreamItems createEmptyInstance() => create();
  static $pb.PbList<TodoStreamItems> createRepeated() => $pb.PbList<TodoStreamItems>();
  @$core.pragma('dart2js:noInline')
  static TodoStreamItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TodoStreamItems>(create);
  static TodoStreamItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TodoItem> get items => $_getList(0);
}

class AddReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AddReply._() : super();
  factory AddReply() => create();
  factory AddReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddReply clone() => AddReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddReply copyWith(void Function(AddReply) updates) => super.copyWith((message) => updates(message as AddReply)) as AddReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddReply create() => AddReply._();
  AddReply createEmptyInstance() => create();
  static $pb.PbList<AddReply> createRepeated() => $pb.PbList<AddReply>();
  @$core.pragma('dart2js:noInline')
  static AddReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddReply>(create);
  static AddReply? _defaultInstance;
}

class DeleteReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteReply._() : super();
  factory DeleteReply() => create();
  factory DeleteReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteReply clone() => DeleteReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteReply copyWith(void Function(DeleteReply) updates) => super.copyWith((message) => updates(message as DeleteReply)) as DeleteReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteReply create() => DeleteReply._();
  DeleteReply createEmptyInstance() => create();
  static $pb.PbList<DeleteReply> createRepeated() => $pb.PbList<DeleteReply>();
  @$core.pragma('dart2js:noInline')
  static DeleteReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReply>(create);
  static DeleteReply? _defaultInstance;
}

class FetchTodosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchTodosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FetchTodosRequest._() : super();
  factory FetchTodosRequest() => create();
  factory FetchTodosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTodosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchTodosRequest clone() => FetchTodosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchTodosRequest copyWith(void Function(FetchTodosRequest) updates) => super.copyWith((message) => updates(message as FetchTodosRequest)) as FetchTodosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTodosRequest create() => FetchTodosRequest._();
  FetchTodosRequest createEmptyInstance() => create();
  static $pb.PbList<FetchTodosRequest> createRepeated() => $pb.PbList<FetchTodosRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchTodosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTodosRequest>(create);
  static FetchTodosRequest? _defaultInstance;
}

class ListenTodosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListenTodosRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListenTodosRequest._() : super();
  factory ListenTodosRequest() => create();
  factory ListenTodosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListenTodosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListenTodosRequest clone() => ListenTodosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListenTodosRequest copyWith(void Function(ListenTodosRequest) updates) => super.copyWith((message) => updates(message as ListenTodosRequest)) as ListenTodosRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListenTodosRequest create() => ListenTodosRequest._();
  ListenTodosRequest createEmptyInstance() => create();
  static $pb.PbList<ListenTodosRequest> createRepeated() => $pb.PbList<ListenTodosRequest>();
  @$core.pragma('dart2js:noInline')
  static ListenTodosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListenTodosRequest>(create);
  static ListenTodosRequest? _defaultInstance;
}

class FetchTodosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchTodosResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc_todo'), createEmptyInstance: create)
    ..pc<TodoItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todos', $pb.PbFieldType.PM, subBuilder: TodoItem.create)
    ..hasRequiredFields = false
  ;

  FetchTodosResponse._() : super();
  factory FetchTodosResponse({
    $core.Iterable<TodoItem>? todos,
  }) {
    final _result = create();
    if (todos != null) {
      _result.todos.addAll(todos);
    }
    return _result;
  }
  factory FetchTodosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTodosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchTodosResponse clone() => FetchTodosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchTodosResponse copyWith(void Function(FetchTodosResponse) updates) => super.copyWith((message) => updates(message as FetchTodosResponse)) as FetchTodosResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTodosResponse create() => FetchTodosResponse._();
  FetchTodosResponse createEmptyInstance() => create();
  static $pb.PbList<FetchTodosResponse> createRepeated() => $pb.PbList<FetchTodosResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchTodosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTodosResponse>(create);
  static FetchTodosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TodoItem> get todos => $_getList(0);
}

