import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/buttons/navigate_reset_password_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/buttons/navigate_sign_up_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/buttons/submit_login_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/inputs/email_input.dart';
import 'package:realtime_chat_app/features/authentication/presentation/login/widgets/inputs/password_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            EmailInput(emailTextEditingController: _emailController),
            const SizedBox(height: 15),
            PasswordInput(passwordTextEditingController: _passwordController),
            const SizedBox(height: 30),
            SubmitLoginButton(
              emailController: _emailController,
              passwordController: _passwordController,
              formKey: _formKey,
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
