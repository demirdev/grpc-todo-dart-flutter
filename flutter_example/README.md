# flutter_example

grpc-todo-dart-flutter mobile client app.

<img width="200" src="https://raw.githubusercontent.com/demirdev/grpc-todo-dart-flutter/master/flutter_example/doc/assets/demo.gif" alt="Example Project" />

## 1. Change server ip and start server
```bash
# change server ip to yours in grpc-todo-dart-flutter/bin/shared_constants.dart
const serverPort = 50051;
const serverAddress = '192.168.1.67';

# run the server app in terminal
dart bin/server.dart
```

## 2. Change server ip in flutter app.
```dart
  /// change server ip to yours in lib/service/todo_service.dart, before running app.
  final serverPort = 50051;
  final server = '192.168.1.67';
```

## 3. run flutter app
```bash
flutter run
```
