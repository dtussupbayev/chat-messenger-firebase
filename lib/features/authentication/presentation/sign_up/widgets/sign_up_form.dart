import 'package:flutter/material.dart';

import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/buttons/navigate_to_login_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/buttons/submit_sign_up_button.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/inputs/email_input.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/inputs/first_name_input.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/inputs/last_name_input.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/inputs/password_input.dart';
import 'package:realtime_chat_app/features/authentication/presentation/sign_up/widgets/inputs/password_repeat_input.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
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
            const SizedBox(height: 15),
            PasswordRepeatInput(repeatPasswordTextEditingController: _repeatPasswordController),
            const SizedBox(height: 15),
            FirstNameInput(firstNameTextEditingController: _firstNameController),
            const SizedBox(height: 15),
            LastNameInput(lastNameTextEditingController: _lastNameController),
            const SizedBox(height: 30),
            SubmitSignUpButton(
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController,
              repeatPasswordController: _repeatPasswordController,
              firstNameController: _firstNameController,
              lastNameController: _lastNameController,
            ),
            const SizedBox(height: 15),
            const NavigateToLoginButton(),
          ],
        ),
      ),
    );
  }
}
