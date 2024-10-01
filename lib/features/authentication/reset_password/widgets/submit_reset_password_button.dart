import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/reset_password/logic/reset_password_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class SubmitResetPasswordButton extends StatelessWidget {

  const SubmitResetPasswordButton({
    super.key,
    required this.resetPasswordController,
  });
  final ResetPasswordController resetPasswordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => resetPasswordController.resetPassword(context),
      child: Center(child: Text(S.of(context).resetPasswordButtonText)),
    );
  }
}
