import 'package:flutter/material.dart';

import '../widgets/header.dart';

class AppHeaderText extends StatelessWidget {
  const AppHeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Header(
        title:
            'gRPC-Dart-Server\nFlutter-mobile-app\n\nRealtime Player Positions');
  }
}
