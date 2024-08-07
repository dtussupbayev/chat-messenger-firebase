import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../account/account_screen.dart';
import '../authentication/login/login_screen.dart';
import '../settings/settings_screen.dart';

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
          Navigator.restorablePushNamed(context, SettingsScreen.routeName);
        } else if (value == 'account') {
          if ((user == null)) {
            Navigator.restorablePushNamed(context, LoginScreen.routeName);
          } else {
            Navigator.restorablePushNamed(context, AccountScreen.routeName);
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

