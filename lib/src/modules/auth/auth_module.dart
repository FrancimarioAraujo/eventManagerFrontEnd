import 'package:event_manager/src/modules/auth/presentation/controllers/auth_controller.dart';
import 'package:event_manager/src/modules/auth/presentation/screens/register_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(AuthController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const RegisterScreen());
  }
}
