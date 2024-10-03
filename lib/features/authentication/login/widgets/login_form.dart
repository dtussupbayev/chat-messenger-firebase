import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/inputs/email_input.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/buttons/submit_login_button.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/inputs/password_input.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/buttons/navigate_reset_password_button.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/buttons/navigate_sign_up_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          EmailInput(emailTextEditingController: emailController),
          const SizedBox(height: 15),
          PasswordInput(passwordTextEditingController: passwordController),
          const SizedBox(height: 30),
          SubmitLoginButton(
            emailController: emailController,
            passwordController: passwordController,
            formKey: formKey,
          ),
          const SizedBox(height: 15),
          const NavigateSignUpButton(),
          const NavigateResetPasswordButton(),
        ],
      ),
    );
  }
}
