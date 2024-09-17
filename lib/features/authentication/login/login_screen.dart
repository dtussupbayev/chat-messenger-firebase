import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/generated/l10n.dart';

import '../reset_password/reset_password_screen.dart';
import '../sign_up/sign_up_screen.dart';
import 'login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = LoginController();

  @override
  void dispose() {
    loginController.disposeTextInputControllers();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => loginController,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(S.of(context).signInAppBarTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Consumer<LoginController>(
            builder: (context, loginController, child) => Form(
              key: loginController.formKey,
              child: Column(
                children: [
                  EmailFormField(loginController: loginController),
                  const SizedBox(height: 30),
                  PasswordFormField(loginController: loginController),
                  const SizedBox(height: 30),
                  LoginButton(loginController: loginController),
                  const SizedBox(height: 30),
                  const SignUpButton(),
                  const ResetPasswordButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.push(ResetPasswordScreen.routeName),
      child: Text(S.of(context).resetPassword),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.push(SignUpScreen.routeName),
      child: Text(
        S.of(context).signUp,
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final LoginController loginController;

  const LoginButton({
    super.key,
    required this.loginController,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => loginController.login(context),
      child: Center(child: Text(S.of(context).enter)),
    );
  }
}

class PasswordFormField extends StatelessWidget {
  final LoginController loginController;

  const PasswordFormField({
    super.key,
    required this.loginController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      controller: loginController.passwordTextEditingController,
      obscureText: loginController.isHiddenPassword,
      validator: (value) => value != null && value.length < 6
          ? S.of(context).passwordFormValidatorText
          : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: S.of(context).passwordFormHintText,
          suffix: InkWell(
            onTap: loginController.togglePasswordView,
            child: Icon(
              loginController.isHiddenPassword
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          )),
    );
  }
}

class EmailFormField extends StatelessWidget {
  final LoginController loginController;
  const EmailFormField({
    super.key,
    required this.loginController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: loginController.emailTextEditingController,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? S.of(context).emailFormValidatorText
          : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).emailFormHintText,
      ),
    );
  }
}
