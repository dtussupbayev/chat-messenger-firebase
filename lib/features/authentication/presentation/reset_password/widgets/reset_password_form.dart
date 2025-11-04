import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/widgets/email_form_field.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/widgets/submit_reset_password_button.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 15),
          EmailFormField(emailController: emailController),
          const SizedBox(height: 30),
          SubmitResetPasswordButton(formKey: formKey, emailController: emailController),
        ],
      ),
    );
  }
}
