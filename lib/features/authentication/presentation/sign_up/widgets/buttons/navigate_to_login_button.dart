import 'package:flutter/material.dart';
import 'package:realtime_chat_app/core/themes/app_theme_extension.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class NavigateToLoginButton extends StatelessWidget {
  const NavigateToLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: Text(
        S.of(context).enter,
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: context.theme.primaryColor,
        ),
      ),
    );
  }
}
