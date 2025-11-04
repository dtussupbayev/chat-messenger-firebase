import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:realtimechat_uikit/realtimechat_uikit.dart';

class NavigateToLoginButton extends StatelessWidget {
  const NavigateToLoginButton({super.key});

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
