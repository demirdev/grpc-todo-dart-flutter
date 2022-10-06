import 'package:flutter_example/generated/realtime.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class RealtimeService {
  late RealtimeClient stub;

  final serverPort = 50051;
  final server = '192.168.1.79';

  RealtimeService() {
    final channel = ClientChannel(server,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    stub = RealtimeClient(channel);
  }
}
