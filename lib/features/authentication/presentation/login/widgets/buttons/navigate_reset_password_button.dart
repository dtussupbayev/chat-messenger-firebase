import 'package:flutter/material.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class NavigateResetPasswordButton extends StatelessWidget {
  const NavigateResetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go('/auth/reset-password'),
      child: Text(S.of(context).resetPassword),
    );
  }
}
