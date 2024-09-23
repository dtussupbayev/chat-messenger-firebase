import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/sign_up/sign_up_screen.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.push(SignUpScreen.routeName),
      child: Text(
        S.of(context).signUp,
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
