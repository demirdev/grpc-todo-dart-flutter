import 'package:flutter/material.dart';
import 'package:flutter_example/provider/todo_provider.dart';
import 'package:flutter_example/screens/home/home_screen.dart';
import 'package:flutter_example/screens/join/join_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter gRPC Realtime Demo',
      home:
          ref.watch(userNameProvider).isNotEmpty ? HomeScreen() : JoinScreen(),
    );
  }
}
