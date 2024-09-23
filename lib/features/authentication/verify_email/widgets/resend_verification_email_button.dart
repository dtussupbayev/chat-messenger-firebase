import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/verify_email/logic/verify_email_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class ResendVerificationEmailButton extends StatelessWidget {
  const ResendVerificationEmailButton({
    super.key,
    required this.verifyEmailController,
  });

  final VerifyEmailController verifyEmailController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: verifyEmailController.canResendEmail
          ? () => verifyEmailController.sendVerificationEmail(context)
          : null,
      icon: const Icon(Icons.email),
      label: Text(S.of(context).resend),
    );
  }
}
