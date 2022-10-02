import 'package:grpc/grpc.dart';

import 'grpc_todo.dart';
import 'shared_constants.dart';

Future<void> main(List<String> args) async {
  final server = Server(
    [TodoService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(address: serverAddress, port: serverPort);
  print('server running on $serverAddress:$serverPort');
}
