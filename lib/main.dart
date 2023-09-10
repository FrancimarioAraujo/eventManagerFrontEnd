import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_module.dart';
import 'app_widget.dart';

Future<void> main() async {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
