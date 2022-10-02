## gRPC example with dart and flutter

<img width="200" src="https://raw.githubusercontent.com/demirdev/grpc-todo-dart-flutter/master/flutter_example/doc/assets/demo.gif" alt="Example Project" />

### features
* listen todo stream
* add todo item
* remove todo item
* write mobile client app in flutter
* 

```bash
# run server
dart bin/server.dart
```
```dart
# run client
dart bin/client.dart
````



# Notes for me

- brew install protobuf
- dart pub global activate protoc_plugin
- export PATH="$PATH:$HOME/.pub-cache/bin"\

- 
- dart pub add grpc
- dart pub add async
- dart pub add protobuf

## Generate gRPC Code

```
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/todo.proto
```


