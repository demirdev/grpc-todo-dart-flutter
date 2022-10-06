import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_example/generated/realtime.pb.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_example/screens/home/app_header_text.dart';
import 'package:flutter_example/screens/widgets/header.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class JoinScreen extends HookConsumerWidget {
  JoinScreen({
    Key? key,
  }) : super(key: key);

  late TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    controller = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppHeaderText(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller,
                onFieldSubmitted: (val) => _addTodo(ref),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'name'),
              ),
            ),
            ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.navigate_next),
                  Text('Join'),
                ],
              ),
              onPressed: () {
                ref.read(userNameProvider.notifier).state = controller.text;
              },
            ),
          ],
        ),
      ),
    );
  }

  void _addTodo(WidgetRef ref) async {
    ref.read(roomRequestProvider).player.position =
        Position(x: Random().nextDouble(), y: Random().nextDouble());
    await ref
        .read(realtimeServiceProvider)
        .stub
        .updatePosition(UpdatePosition(request: ref.read(roomRequestProvider)));
    controller.clear();
  }
}
