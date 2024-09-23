import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/settings/settings_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../account/screens/account_screen.dart';
import '../../authentication/login/screen/login_screen.dart';
import '../../settings/settings_screen.dart';

class CMenuButton extends StatelessWidget {
  const CMenuButton({
    super.key,
    required this.user,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'settings') {
          context.goNamed(SettingsScreen.routeName,
              extra: context.read<SettingsController>());
        } else if (value == 'account') {
          if ((user == null)) {
            context.push(LoginScreen.routeName);
          } else {
            context.goNamed(AccountScreen.routeName);
          }
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'account',
            child: Text(S.of(context).account),
          ),
          PopupMenuItem<String>(
            value: 'settings',
            child: Text(S.of(context).settings),
          ),
        ];
      },
      offset: const Offset(0, kToolbarHeight - 10),
      elevation: 5,
    );
  }
}
