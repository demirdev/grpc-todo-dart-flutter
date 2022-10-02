import 'package:flutter/material.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../generated/todo.pb.dart';

const uuid = Uuid();

class AddTodo extends HookConsumerWidget {
  AddTodo({
    Key? key,
  }) : super(key: key);

  late TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              onFieldSubmitted: (val) => _addTodo(ref),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            child: Row(
              children: [
                Icon(Icons.save),
                Text('Add Todo'),
              ],
            ),
            onPressed: () => _addTodo(ref),
          ),
        ],
      ),
    );
  }

  void _addTodo(WidgetRef ref) async {
    await ref
        .read(todoServiceProvider)
        .stub
        .add(TodoItem(name: controller.text, uuid: uuid.v4()));
    controller.clear();
  }
}
