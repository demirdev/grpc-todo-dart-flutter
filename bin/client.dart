import 'package:grpc/grpc.dart';
import 'package:grpc_todo/src/generated/todo.pbgrpc.dart';

import 'shared_constants.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(serverAddress,
      port: serverPort,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));

  final stub = TodoClient(channel);

  final firstTodoItem = TodoItem(name: 'first todo', uuid: '1');

  try {
    listenTodosStream(stub);

    final firstTodoReply = await stub.add(firstTodoItem);
    await _fetchTodos(stub);

    final secondTodoReply =
        await stub.add(TodoItem(name: 'second todo', uuid: '2'));

    await _fetchTodos(stub);

    await stub.delete(firstTodoItem);
    await _fetchTodos(stub);
  } catch (e) {
    print(e);
  }
  await channel.shutdown();
  print('client shutdowned');
}

void listenTodosStream(TodoClient stub) async {
  await for (final todosStreamItem
      in stub.listenTodosStream(ListenTodosRequest())) {
    print('Received from stream: ${todosStreamItem.items}');
  }
}

Future<void> _fetchTodos(TodoClient stub) async {
  final fetchTodosReply = await stub.fetchTodos(FetchTodosRequest());
  print(fetchTodosReply.todos.toString());
  print('****' * 5);
}
