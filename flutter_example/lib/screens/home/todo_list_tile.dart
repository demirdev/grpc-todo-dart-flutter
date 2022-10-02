import 'package:flutter/material.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/todo.pb.dart';
import '../widgets/add_todo.dart';
import '../widgets/header.dart';
import '../widgets/loading.dart';

class TodoListTile extends ConsumerWidget {
  final TodoItem todoItem;
  const TodoListTile(
    this.todoItem, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(todoItem.name),
      trailing: IconButton(
          icon: Icon(Icons.delete_forever),
          onPressed: () => ref.read(todoServiceProvider).stub.delete(todoItem)),
    );
  }
}
