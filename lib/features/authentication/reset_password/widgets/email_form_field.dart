import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/reset_password/logic/reset_password_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class EmailFormField extends StatelessWidget {
  final ResetPasswordController resetPasswordController;
  const EmailFormField({
    super.key,
    required this.resetPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: resetPasswordController.emailTextEditingController,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? S.of(context).emailFormValidatorText
          : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).emailFormHintText,
      ),
    );
  }
}
