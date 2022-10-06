import 'package:flutter/material.dart';
import 'package:flutter_example/generated/realtime.pb.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayerListTile extends ConsumerWidget {
  final Player todoItem;
  const PlayerListTile(
    this.todoItem, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(todoItem.userName),
      subtitle: Text(todoItem.position.toString()),
      // trailing: IconButton(
      //     icon: Icon(Icons.delete_forever),
      //     onPressed: () =>
      //         ref.read(realtimeServiceProvider).stub.delete(todoItem)),
    );
  }
}
