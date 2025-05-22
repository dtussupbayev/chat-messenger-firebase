import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/buttons/navigate_reset_password_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/buttons/navigate_sign_up_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/buttons/submit_login_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/inputs/email_input.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/inputs/password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    formKey.currentState?.reset();

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
      ),
    );
  }
}
