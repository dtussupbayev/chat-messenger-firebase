import 'package:flutter/material.dart';

import 'buttons/navigate_to_login_button.dart';
import 'buttons/submit_sign_up_button.dart';
import 'inputs/email_input.dart';
import 'inputs/first_name_input.dart';
import 'inputs/last_name_input.dart';
import 'inputs/password_input.dart';
import 'inputs/password_repeat_input.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController repeatPasswordController =
        TextEditingController();
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
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
            const SizedBox(height: 15),
            PasswordRepeatInput(
              repeatPasswordTextEditingController: repeatPasswordController,
            ),
            const SizedBox(height: 15),
            FirstNameInput(firstNameTextEditingController: firstNameController),
            const SizedBox(height: 15),
            LastNameInput(lastNameTextEditingController: lastNameController),
            const SizedBox(height: 30),
            SubmitSignUpButton(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              repeatPasswordController: repeatPasswordController,
              firstNameController: firstNameController,
              lastNameController: lastNameController,
            ),
            const SizedBox(height: 15),
            const NavigateToLoginButton(),
          ],
        ),
      ),
    );
  }
}
