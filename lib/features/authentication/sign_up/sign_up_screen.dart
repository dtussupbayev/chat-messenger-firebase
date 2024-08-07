import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../login/login_screen.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

  static const routeName = 'sign_up';
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
                  EmailFormField(signUpController: signUpController),
                  const SizedBox(height: 20),
                  PasswordFormField(signUpController: signUpController),
                  const SizedBox(height: 20),
                  PasswordRepeatFormField(signUpController: signUpController),
                  const SizedBox(height: 20),
                  FirstNameFormField(signUpController: signUpController),
                  const SizedBox(height: 20),
                  LastNameFormField(signUpController: signUpController),
                  const SizedBox(height: 30),
                  SignUpButton(signUpController: signUpController),
                  const SizedBox(height: 20),
                  const LoginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.restorablePushReplacementNamed(context, LoginScreen.routeName),
      child: Text(
        S.of(context).enter,
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  final SignUpController signUpController;
  const SignUpButton({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => signUpController.signUp(context),
      child: Center(child: Text(S.of(context).signUp)),
    );
  }
}

class LastNameFormField extends StatelessWidget {
  final SignUpController signUpController;
  const LastNameFormField({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: signUpController.lastNameTextEditingController,
      validator: (value) => value!.isEmpty
          ? 'Enter your second name'
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? 'Enter a Valid Name'
              : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).lastNameFormHintText,
      ),
    );
  }
}

class FirstNameFormField extends StatelessWidget {
  final SignUpController signUpController;
  const FirstNameFormField({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: signUpController.firstNameTextEditingController,
      validator: (value) => value!.isEmpty
          ? 'Enter your first name'
          : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
              ? 'Enter a Valid Name'
              : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).firstNameFormHintText,
      ),
    );
  }
}

class PasswordRepeatFormField extends StatelessWidget {
  final SignUpController signUpController;
  const PasswordRepeatFormField({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      controller: signUpController.passwordRepeatTextEditingController,
      obscureText: signUpController.isHiddenPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) =>
          value != null && value.length < 6 ? S.of(context).passwordFormValidatorText : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).passwordRepeatFormHintText,
        suffix: InkWell(
          onTap: signUpController.togglePasswordView,
          child: Icon(
            signUpController.isHiddenPassword ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }
}

class PasswordFormField extends StatelessWidget {
  final SignUpController signUpController;
  const PasswordFormField({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      controller: signUpController.passwordTextEditingController,
      obscureText: signUpController.isHiddenPassword,
      validator: (value) =>
          value != null && value.length < 6 ? S.of(context).passwordFormValidatorText : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: S.of(context).passwordFormHintText,
          suffix: InkWell(
            onTap: signUpController.togglePasswordView,
            child: Icon(
              signUpController.isHiddenPassword ? Icons.visibility_off : Icons.visibility,
            ),
          )),
    );
  }
}

class EmailFormField extends StatelessWidget {
  final SignUpController signUpController;
  const EmailFormField({
    super.key,
    required this.signUpController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: signUpController.emailTextEditingController,
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
