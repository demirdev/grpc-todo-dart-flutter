import 'dart:async';

import 'package:grpc/src/server/call.dart';
import 'package:grpc_todo/grpc_todo.dart' as grpc_todo;
import 'package:grpc_todo/src/generated/realtime.pbgrpc.dart';

typedef TodoListStreamController = StreamController<RoomStream>;

class RealTimeService extends RealtimeServiceBase {
  /// Map stream controllers.
  /// key: uid or player id
  ///
  ///
  ///
  Map<String, TodoListStreamController> _todosStreamController = {};

  ///
  /// Map {uid, Player}
  Map<String, Player> _players = {};

  final broadcastController = StreamController<RoomStream>.broadcast();

  @override
  Stream<RoomStream> join(ServiceCall call, RoomRequest request) async* {
    _updateUserPosition(request);

    /// first, send all player positions.
    yield RoomStream(players: _players.values);

    /// wait for changes, then send all player positions to the user.
    await for (final roomStreamItem in broadcastController.stream) {
      yield roomStreamItem;

      // print(call.isCanceled);
      // print(call.isTimedOut);

      /// TODO: how to obtain client disconnected ?,
      /// use Bidirectional Stream ?
      // break;
    }
    // print(call.isCanceled);
    // print(call.isTimedOut);
    print('roomStreamListen ended for user ${request.player.userName}');
  }

  void _updateUserPosition(RoomRequest request) {
    _players[request.player.userName] = request.player;
  }

  @override
  Future<UpdatePosition> updatePosition(
      ServiceCall call, UpdatePosition request) async {
    _updateUserPosition(request.request);
    broadcastController.sink.add(RoomStream(players: _players.values));
    return UpdatePosition(request: request.request);
  }

  TodoListStreamController getUserStreamController(String uid) {
    if (_todosStreamController[uid] == null) {
      _todosStreamController[uid] = StreamController.broadcast();
    }
    return _todosStreamController[uid]!;
  }
}

void main(List<String> arguments) {
  print('Hello world: ${grpc_todo.calculate()}!');
}
