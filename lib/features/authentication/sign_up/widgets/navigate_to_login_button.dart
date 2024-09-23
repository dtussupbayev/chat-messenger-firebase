import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/login/screen/login_screen.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class NavigateToLoginButton extends StatelessWidget {
  const NavigateToLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pushReplacement(LoginScreen.routeName),
      child: Text(
        S.of(context).enter,
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
