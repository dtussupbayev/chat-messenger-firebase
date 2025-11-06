import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';

class NavigateResetPasswordButton extends StatelessWidget {
  const NavigateResetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go('/auth/reset-password'),
      child: Text(AppLocalizations.of(context).resetPassword),
    );
  }
}
