import 'package:flutter/material.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_example/screens/home/todo_list_tile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/todo.pb.dart';
import '../widgets/add_todo.dart';
import '../widgets/header.dart';
import '../widgets/loading.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosStream = ref.watch(todoStreamProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            AddTodo(),
            todosStream.when(
              data: (TodoStreamItems data) {
                print(data.items);
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        TodoListTile(data.items.elementAt(index)),
                    itemCount: data.items.length,
                  ),
                );
              },
              error: (Object error, StackTrace stackTrace) {
                return Text(error.toString());
              },
              loading: () => const Loading(),
            ),
          ],
        ),
      ),
    );
  }
}
