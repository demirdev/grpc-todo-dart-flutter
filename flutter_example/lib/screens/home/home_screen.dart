import 'package:flutter/material.dart';
import 'package:flutter_example/generated/realtime.pb.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_example/screens/home/app_header_text.dart';
import 'package:flutter_example/screens/home/player_list_tile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/change_my_position.dart';
import '../widgets/loading.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realtimeStream = ref.watch(realtimeStreamProvider);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    final mapMaxHeight = height * 0.2;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppHeaderText(),
            ChangeMyPosition(),
            realtimeStream.when(
              data: (RoomStream data) {
                print(data.players);
                return Column(
                  children: [
                    Container(
                        height: mapMaxHeight,
                        child: Stack(
                          children: data.players
                              .map((p) => Positioned(
                                    left:
                                        (p.position.x * width).clamp(0, width),
                                    top: (p.position.y * mapMaxHeight)
                                        .clamp(0, mapMaxHeight),
                                    child:
                                        CircleAvatar(child: Text(p.userName)),
                                  ))
                              .toList(),
                        )),
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          PlayerListTile(data.players.elementAt(index)),
                      itemCount: data.players.length,
                    ),
                  ],
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
