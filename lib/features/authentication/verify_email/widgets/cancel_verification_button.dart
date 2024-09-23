import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/verify_email/logic/verify_email_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class CancelVerificationButton extends StatelessWidget {
  const CancelVerificationButton({
    super.key,
    required this.verifyEmailController,
  });

  final VerifyEmailController verifyEmailController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        verifyEmailController.timer?.cancel();
        await FirebaseAuth.instance.signOut();
      },
      child: Text(
        S.of(context).cancel,
        style: const TextStyle(),
      ),
    );
  }
}
