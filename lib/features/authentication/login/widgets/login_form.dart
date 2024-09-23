import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/email_form_field.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/login_button.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/password_form_field.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/reset_password_button.dart';
import 'package:flutter_application_1/features/authentication/login/widgets/sign_up_button.dart';

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
          EmailFormField(emailTextEditingController: emailController),
          const SizedBox(height: 30),
          PasswordFormField(passwordTextEditingController: passwordController),
          const SizedBox(height: 30),
          LoginButton(
            emailController: emailController,
            passwordController: passwordController,
            formKey: formKey,
          ),
          const SizedBox(height: 30),
          const SignUpButton(),
          const ResetPasswordButton(),
        ],
      ),
    );
  }
}
