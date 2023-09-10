import 'package:event_manager/src/modules/auth/enum/provide_events_enum.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  @observable
  ProvideEvents provideEvents = ProvideEvents.no;

  @computed
  bool get isProvider => provideEvents == ProvideEvents.yes;

  @action
  void toggleProvider(ProvideEvents value) {
    provideEvents = value;
  }
}
