import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/widgets/email_form_field.dart';
import 'package:realtime_chat_app/features/authentication/presentation/reset_password/widgets/submit_reset_password_button.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 15),
          EmailFormField(emailController: _emailController),
          const SizedBox(height: 30),
          SubmitResetPasswordButton(formKey: _formKey, emailController: _emailController),
        ],
      ),
    );
  }
}
