import 'package:flutter_example/generated/realtime.pb.dart';
import 'package:flutter_example/service/todo_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userNameProvider = StateProvider<String>((ref) => '');

final roomRequestProvider = StateProvider<RoomRequest>((ref) {
  return RoomRequest(
      roomName: 'FirstRoom',
      player: Player(
        userName: ref.watch(userNameProvider),
        position: Position(x: 0.4, y: 0.4),
      ));
});

joinToRoom({required RoomRequest roomRequest, required WidgetRef ref}) {
  ref.read(roomRequestProvider.notifier).state = roomRequest;
}

final realtimeServiceProvider = Provider.autoDispose((ref) {
  return RealtimeService();
});

final realtimeStreamProvider = AutoDisposeStreamProvider<RoomStream>((ref) {
  ref.watch(userNameProvider);
  final roomRequest = ref.read(roomRequestProvider);
  if (roomRequest.player.userName.isNotEmpty == true) {
    return ref.read(realtimeServiceProvider).stub.join(roomRequest);
  }
  return Stream.empty();
});
