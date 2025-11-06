import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/l10n/app_localizations.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';

class NavigateSignUpButton extends StatelessWidget {
  const NavigateSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go('/auth/sign-up'),
      child: Text(
        AppLocalizations.of(context).signUp,
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: context.theme.primaryColor,
        ),
      ),
    );
  }
}
