import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/reset_password/screens/reset_password_screen.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class NavigateResetPasswordButton extends StatelessWidget {
  const NavigateResetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.push(ResetPasswordScreen.routeName),
      child: Text(S.of(context).resetPassword),
    );
  }
}
