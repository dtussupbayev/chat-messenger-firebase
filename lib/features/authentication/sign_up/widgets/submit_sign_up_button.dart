import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/sign_up/logic/sign_up_controller.dart';
import 'package:flutter_application_1/generated/l10n.dart';

class SubmitSignUpButton extends StatelessWidget {
  const SubmitSignUpButton({
    super.key,
    required this.signUpController,
  });
  final SignUpController signUpController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => signUpController.signUp(context),
      child: Center(child: Text(S.of(context).signUp)),
    );
  }
}
