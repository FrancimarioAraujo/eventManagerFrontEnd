import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Event Manager',
      theme: Themes().getTheme(),
      routerConfig: Modular.routerConfig,
    );
  }
}
