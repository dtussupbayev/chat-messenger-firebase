import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/email_input.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/submit_login_button.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/password_input.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/navigate_reset_password_button.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/navigate_sign_up_button.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          EmailInput(emailTextEditingController: emailController),
          const SizedBox(height: 30),
          PasswordInput(passwordTextEditingController: passwordController),
          const SizedBox(height: 30),
          SubmitLoginButton(
            emailController: emailController,
            passwordController: passwordController,
            formKey: formKey,
          ),
          const SizedBox(height: 30),
          const NavigateSignUpButton(),
          const NavigateResetPasswordButton(),
        ],
      ),
    );
  }
}
