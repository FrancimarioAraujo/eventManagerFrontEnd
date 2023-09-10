import 'package:event_manager/src/modules/auth/auth_module.dart';
import 'package:event_manager/src/modules/auth/presentation/screens/login_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}
  @override
  void routes(r) {
    r.module('/', module: AuthModule());
  }
}
