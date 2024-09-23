import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/email_input.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/first_name_input.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/last_name_input.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/navigate_to_login_button.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/password_input.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/password_repeat_input.dart';
import 'package:flutter_application_1/features/authentication/sign_up/widgets/submit_sign_up_button.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';
import '../logic/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

  static const routeName = '/sign_up';
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signUpController = SignUpController();

  @override
  void dispose() {
    signUpController.disposeTextInputControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => signUpController,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(S.of(context).signUpScreenAppBarTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Consumer<SignUpController>(
            builder: (context, signUpController, child) => Form(
              key: signUpController.formKey,
              child: ListView(
                children: [
                  EmailInput(signUpController: signUpController),
                  const SizedBox(height: 20),
                  PasswordInput(signUpController: signUpController),
                  const SizedBox(height: 20),
                  PasswordRepeatInput(signUpController: signUpController),
                  const SizedBox(height: 20),
                  FirstNameInput(signUpController: signUpController),
                  const SizedBox(height: 20),
                  LastNameInput(signUpController: signUpController),
                  const SizedBox(height: 30),
                  SubmitSignUpButton(signUpController: signUpController),
                  const SizedBox(height: 20),
                  const NavigateToLoginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
