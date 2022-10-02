## gRPC example with dart
### features
* listen todo stream
* add todo item
* remove todo item
* [TODO] write mobile client app in flutter
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
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/todo.proto
```

```bash
# run server
dart bin/server.dart

# run client
dart bin/client.dart
````