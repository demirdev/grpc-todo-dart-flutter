## gRPC example with dart and flutter

<img width="200" src="https://raw.githubusercontent.com/demirdev/grpc-todo-dart-flutter/multiplayer/flutter_example/doc/assets/demo.gif" alt="Example Project" />

### features
* listen realtime stream
* change player position
* mobile client app in flutter
* 

- brew install protobuf
- dart pub global activate protoc_plugin
- export PATH="$PATH:$HOME/.pub-cache/bin"\

- 
- dart pub add grpc
- dart pub add async
- dart pub add protobuf

## Generate gRPC Code

```
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/realtime.proto
```

```bash
# run server
dart bin/server.dart

# run client
dart bin/client.dart

# run client 2
dart bin/client2.dart

# run flutter app to join room
````