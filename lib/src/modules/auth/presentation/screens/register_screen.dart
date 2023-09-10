import 'package:event_manager/src/modules/auth/enum/provide_events_enum.dart';
import 'package:event_manager/src/modules/auth/presentation/controllers/auth_controller.dart';
import 'package:event_manager/src/shared/themes/app_colors.dart';
import 'package:event_manager/src/shared/utils/constants/app_paddings_util.dart';
import 'package:event_manager/src/shared/utils/validator/email_validator_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  AuthController authController = Modular.get<AuthController>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _cnpjTextController = TextEditingController();
  final TextEditingController _addressTextController = TextEditingController();
  final TextEditingController _phoneNumberTextController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "eventManager",
          style: TextStyle(
              color: AppColors.lightPurple, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.white,
        actions: [
          Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPaddingsUtil.padding16,
                  vertical: AppPaddingsUtil.padding8),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightGrey),
                child: const Text(
                  "Ajuda",
                  style: TextStyle(color: AppColors.black),
                ),
              ))
        ],
      ),
      body: Observer(builder: (context) {
        return Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppPaddingsUtil.padding256),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppPaddingsUtil.padding128),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: AppPaddingsUtil.padding32),
                                child: const Text(
                                  "Cadastre-se",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30),
                                ),
                              ),
                              _textField(
                                  label: const Text("Nome de usuário"),
                                  controller: _userNameTextController,
                                  validator: (value) {
                                    if (_userNameTextController.text.isEmpty) {
                                      return 'Este campo é obrigatório.';
                                    }
                                    return null;
                                  }),
                              _textField(
                                  label: const Text("E-mail"),
                                  controller: _emailTextController,
                                  validator: (value) {
                                    if (_emailTextController.text.isEmpty) {
                                      return 'Este campo é obrigatório.';
                                    }
                                    if (!EmailValidatorUtil()
                                        .isEmail(_emailTextController.text)) {
                                      return "Esse email é inválido";
                                    }
                                    return null;
                                  }),
                              _textField(
                                  label: const Text("Senha"),
                                  controller: _passwordTextController,
                                  validator: (value) {
                                    if (_passwordTextController.text.isEmpty) {
                                      return 'Este campo é obrigatório.';
                                    }
                                    return null;
                                  }),
                              Container(
                                  padding: const EdgeInsets.only(
                                    left: AppPaddingsUtil.padding16,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Você irá fornecer eventos?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  )),
                              RadioListTile(
                                  title: const Text("Sim"),
                                  value: ProvideEvents.yes,
                                  groupValue: authController.provideEvents,
                                  onChanged: (value) {
                                    if (value == null) return;
                                    authController.toggleProvider(value);
                                  }),
                              RadioListTile(
                                  title: const Text("Não"),
                                  value: ProvideEvents.no,
                                  groupValue: authController.provideEvents,
                                  onChanged: (value) {
                                    if (value == null) return;
                                    authController.toggleProvider(value);
                                  }),
                              if (authController.isProvider)
                                Column(
                                  children: [
                                    _textField(
                                        label: const Text("CNPJ"),
                                        controller: _cnpjTextController,
                                        validator: (value) {
                                          if (_cnpjTextController
                                              .text.isEmpty) {
                                            return 'Este campo é obrigatório.';
                                          }
                                          return null;
                                        }),
                                    _textField(
                                        label: const Text("Endereço"),
                                        controller: _addressTextController,
                                        validator: (value) {
                                          if (_addressTextController
                                              .text.isEmpty) {
                                            return 'Este campo é obrigatório.';
                                          }
                                          return null;
                                        }),
                                    _textField(
                                        label: const Text("Telefone"),
                                        controller: _phoneNumberTextController,
                                        validator: (value) {
                                          if (_phoneNumberTextController
                                              .text.isEmpty) {
                                            return 'Este campo é obrigatório.';
                                          }
                                          return null;
                                        }),
                                  ],
                                ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: AppPaddingsUtil.padding16),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {}
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(
                                          AppPaddingsUtil.padding16),
                                      child: const Text("Realizar Cadastro")),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

Widget _textField(
    {required Widget label,
    required String? Function(String?) validator,
    required TextEditingController controller}) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(label: label),
    ),
  );
}
