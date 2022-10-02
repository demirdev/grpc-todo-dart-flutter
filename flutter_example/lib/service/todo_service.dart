import 'package:grpc/grpc.dart';

import '../generated/todo.pbgrpc.dart';

class TodoService {
  late TodoClient stub;

  final serverPort = 50051;
  final server = '192.168.1.67';

  TodoService() {
    final channel = ClientChannel(server,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    stub = TodoClient(channel);
  }
}
