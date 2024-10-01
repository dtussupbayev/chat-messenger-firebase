import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/reset_password/logic/reset_password_controller.dart';
import 'package:flutter_application_1/features/authentication/reset_password/widgets/email_form_field.dart';
import 'package:flutter_application_1/features/authentication/reset_password/widgets/submit_reset_password_button.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({
    super.key,
    required this.resetPasswordController,
  });
  final ResetPasswordController resetPasswordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: resetPasswordController.formKey,
      child: Column(
        children: [
          EmailFormField(
            resetPasswordController: resetPasswordController,
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 30),
          SubmitResetPasswordButton(
            resetPasswordController: resetPasswordController,
          ),
        ],
      ),
    );
  }
}
