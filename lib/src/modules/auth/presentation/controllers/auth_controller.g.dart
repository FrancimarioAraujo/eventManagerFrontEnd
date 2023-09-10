// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on _AuthControllerBase, Store {
  Computed<bool>? _$isProviderComputed;

  @override
  bool get isProvider =>
      (_$isProviderComputed ??= Computed<bool>(() => super.isProvider,
              name: '_AuthControllerBase.isProvider'))
          .value;

  late final _$provideEventsAtom =
      Atom(name: '_AuthControllerBase.provideEvents', context: context);

  @override
  ProvideEvents get provideEvents {
    _$provideEventsAtom.reportRead();
    return super.provideEvents;
  }

  @override
  set provideEvents(ProvideEvents value) {
    _$provideEventsAtom.reportWrite(value, super.provideEvents, () {
      super.provideEvents = value;
    });
  }

  late final _$_AuthControllerBaseActionController =
      ActionController(name: '_AuthControllerBase', context: context);

  @override
  void toggleProvider(ProvideEvents value) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.toggleProvider');
    try {
      return super.toggleProvider(value);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
provideEvents: ${provideEvents},
isProvider: ${isProvider}
    ''';
  }
}
