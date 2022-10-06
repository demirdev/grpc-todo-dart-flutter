import 'package:grpc/grpc.dart';

import 'grpc_realtime.dart';
import 'shared_constants.dart';

Future<void> main(List<String> args) async {
  final server = Server(
    [RealTimeService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(address: serverAddress, port: serverPort);
  print('server running on $serverAddress:$serverPort');
}
