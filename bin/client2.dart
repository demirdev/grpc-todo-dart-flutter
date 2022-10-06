import 'dart:math';

import 'package:grpc/grpc.dart';
import 'package:grpc_todo/src/generated/realtime.pbgrpc.dart';

import 'shared_constants.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(serverAddress,
      port: serverPort,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));

  final stub = RealtimeClient(channel);

  final initialPosition = RoomRequest(
      player: Player(userName: 'B', position: Position(x: 0.8, y: 0.8)),
      roomName: 'FirstRoom');

  try {
    await listenPlayersStream(stub, initialPosition);
    // while (true) {
    //   await _updateRandomPosition(stub, initialPosition);
    // }
  } catch (e) {
    print(e);
  }
  await channel.shutdown();
  print('client shutdowned for ${initialPosition.player.userName}');
}

Future<void> _updateRandomPosition(
    RealtimeClient stub, RoomRequest initialPosition) async {
  await Future.delayed(Duration(seconds: 2), () async {
    final updatePosition = await stub.updatePosition(UpdatePosition(
        request: initialPosition
          ..player.position =
              Position(x: Random().nextDouble(), y: Random().nextDouble())));
  });
}

Future<void> listenPlayersStream(
    RealtimeClient stub, RoomRequest initialPosition) async {
  await for (final roomStream in stub.join(initialPosition)) {
    print('Received from stream: ${roomStream.toString()}');
  }
}
