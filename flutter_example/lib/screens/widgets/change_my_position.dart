import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_example/generated/realtime.pb.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangeMyPosition extends HookConsumerWidget {
  ChangeMyPosition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ElevatedButton(
            child: Row(
              children: [
                Icon(Icons.refresh),
                Text('Change my position randomly'),
              ],
            ),
            onPressed: () => _changeMyPosition(ref),
          ),
        ],
      ),
    );
  }

  void _changeMyPosition(WidgetRef ref) async {
    ref.read(roomRequestProvider).player.position =
        Position(x: Random().nextDouble(), y: Random().nextDouble());
    await ref
        .read(realtimeServiceProvider)
        .stub
        .updatePosition(UpdatePosition(request: ref.read(roomRequestProvider)));
  }
}
