import 'package:flutter/material.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class NavigateSignUpButton extends StatelessWidget {
  const NavigateSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go('/auth/sign-up'),
      child: Text(
        S.of(context).signUp,
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
