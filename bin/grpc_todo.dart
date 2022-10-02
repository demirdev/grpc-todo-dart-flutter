import 'dart:async';

import 'package:grpc/src/server/call.dart';
import 'package:grpc_todo/grpc_todo.dart' as grpc_todo;
import 'package:grpc_todo/src/generated/todo.pbgrpc.dart';

typedef TodoList = List<TodoItem>;
typedef TodoListStreamController = StreamController<TodoStreamItems>;

class TodoService extends TodoServiceBase {
  Map<String, TodoListStreamController> _todosStreamController = {};
  Map<String, TodoList> _todos = {};

  TodoListStreamController getUserStreamController(String uid) {
    if (_todosStreamController[uid] == null) {
      _todosStreamController[uid] = StreamController.broadcast();
    }
    return _todosStreamController[uid]!;
  }

  TodoList getUserTodos(String uid) {
    if (_todos[uid] == null) {
      _todos[uid] = [];
    }
    return _todos[uid]!;
  }

  /// represent userid
  String uid = '001';

  @override
  Future<AddReply> add(ServiceCall call, TodoItem request) async {
    getUserTodos(uid).add(request);
    _notifyUser(uid);
    return AddReply();
  }

  @override
  Future<DeleteReply> delete(ServiceCall call, TodoItem request) async {
    getUserTodos(uid).removeWhere((e) => e.uuid == request.uuid);
    _notifyUser(uid);
    return DeleteReply();
  }

  @override
  Future<FetchTodosResponse> fetchTodos(
      ServiceCall call, FetchTodosRequest request) async {
    return FetchTodosResponse(todos: getUserTodos(uid));
  }

  void _notifyUser(String uid) async {
    final streamController = getUserStreamController(uid);
    streamController.sink.add(TodoStreamItems(items: getUserTodos(uid)));
  }

  @override
  Stream<TodoStreamItems> listenTodosStream(
      ServiceCall call, ListenTodosRequest request) async* {
    /// first, send all todos.
    yield TodoStreamItems(items: getUserTodos(uid));

    /// wait for changes, then send all todos to user.
    await for (final todoStreamItem in getUserStreamController(uid).stream) {
      yield todoStreamItem;
    }
    print('listenTodosStream ended');
  }
}

void main(List<String> arguments) {
  print('Hello world: ${grpc_todo.calculate()}!');
}
