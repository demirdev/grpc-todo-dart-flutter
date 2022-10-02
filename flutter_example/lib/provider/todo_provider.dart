import 'package:flutter_example/generated/todo.pb.dart';
import 'package:flutter_example/service/todo_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoServiceProvider = Provider((ref) => TodoService());

final todoStreamProvider = AutoDisposeStreamProvider((ref) =>
    ref.read(todoServiceProvider).stub.listenTodosStream(ListenTodosRequest()));
